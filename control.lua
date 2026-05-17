local surface_to_recipe =
{
    ["nauvis"] = "extract-ground-water",
    ["gleba"] = "extract-ground-water",
    ["vulcanus"] = "extract-ground-lava",
    ["fulgora"] = "extract-ground-angels-liquid-multi-phase-oil",
    ["aquilo"] = "extract-ground-ammoniacal-solution",
    -- new planet
}
script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity, defines.events.on_space_platform_built_entity}, function(event)
    local entity = event.created_entity or event.entity
    if not (entity and entity.valid and entity.name == "angels-ground-water-pump") then return end
    if entity.surface.platform then
        local position = entity.position
        local player_index = event.player_index
        entity.destroy()
        if player_index and game.players[player_index] then
            local player = game.players[player_index]
            player.create_local_flying_text{text = {"mod-messages.cant-drill-in-space"}, position = position}
            player.insert{name = "angels-ground-water-pump", count = 1}
        end
        return
    end
    local surface_name = entity.surface.name
    local recipe_name = surface_to_recipe[surface_name] or "extract-ground-water"
    if prototypes.recipe[recipe_name] then
        entity.set_recipe(recipe_name)
        entity.recipe_locked = true
    elseif prototypes.recipe["extract-ground-water"] then
        entity.set_recipe("extract-ground-water")
        entity.recipe_locked = true
    end
    entity.active = true
end)

script.on_configuration_changed(function(data)
    local changes = data.mod_changes["TIMSABA"]
    if changes then
        local old = changes.old_version
        if old and old < "0.1.0" then
            local nauvis = game.surfaces["nauvis"]
            if nauvis then
                local mgs = nauvis.map_gen_settings
                mgs.autoplace_controls["molybdenite-ore"] = {}
                mgs.autoplace_controls["powellite-ore"] = {}
                if not mgs.autoplace_settings.entity then
                    mgs.autoplace_settings.entity = {settings = {}}
                end
                mgs.autoplace_settings.entity.settings["molybdenite-ore"] = {}
                mgs.autoplace_settings.entity.settings["powellite-ore"] = {}
                nauvis.map_gen_settings = mgs
                nauvis.regenerate_entity("molybdenite-ore")
                nauvis.regenerate_entity("powellite-ore")

                game.print({"mod-messages.ores-regenerated"})
            end
        end
    end
end)

-- MULTI BUILDING
if settings.startup["setting-multi-building"].value then
    local baseNames =
    {
        "steam-engine", "bob-steam-engine-2", "bob-steam-engine-3", "bob-steam-engine-4", "bob-steam-engine-5", "steam-engine-6",
        "steam-turbine", "bob-steam-turbine-2", "bob-steam-turbine-3", "steam-turbine-4",
        "bob-solar-panel-small", "bob-solar-panel-small-2", "bob-solar-panel-small-3", "solar-panel-small-4",
        "solar-panel", "bob-solar-panel-2", "bob-solar-panel-3", "solar-panel-4",
        "bob-solar-panel-large", "bob-solar-panel-large-2", "bob-solar-panel-large-3", "solar-panel-large-4",
        "accumulator", "bob-large-accumulator-2", "bob-large-accumulator-3", "accumulator-4"
    }

    local pairTable = {}
    for _, basename in ipairs(baseNames) do
        pairTable[basename] = "double-" .. basename
        pairTable["double-" .. basename] = "quad-" .. basename
    end

    local allowedPairs = {}
    for k, v in pairs(pairTable) do
        allowedPairs[k] = true
    end

    local function checkForCombinations(entity, player)
        if not entity or not entity.valid then return end

        local surface = entity.surface
        local name = entity.name
        local quality_name = entity.quality.name
        local direction = entity.direction

        local base_size = 3

        if name:find("engine") or name:find("turbine") then
            base_size = 5
        else
            local c_box = entity.prototype.collision_box
            base_size = math.ceil(c_box.right_bottom.x * 2)
        end

        if name:find("quad") then return end

        local offsets = {}

        if name:find("double") and (name:find("solar") or name:find("accumulator")) then
            offsets = {
                {x = base_size, y = 0}, 
                {x = -base_size, y = 0},
                {x = 0, y = base_size},
                {x = 0, y = -base_size}
            }
        else
            local search_distance = name:find("double") and (base_size * 2) or base_size
            if direction == defines.direction.north or direction == defines.direction.south then
                offsets = {{x = 0, y = search_distance}, {x = 0, y = -search_distance}}
            else
                offsets = {{x = search_distance, y = 0}, {x = -search_distance, y = 0}}
            end
        end

        for _, offset in ipairs(offsets) do
            local target_pos = {x = entity.position.x + offset.x, y = entity.position.y + offset.y}
            local neighbours = surface.find_entities_filtered{
                position = target_pos,
                radius = 0.5,
                name = name,
                quality = quality_name
            }

            for _, neighbour in pairs(neighbours) do
                if neighbour and neighbour.valid and neighbour.direction == direction then
                    if pairTable[name] then
                        combineEntities(entity, neighbour, player)
                        return
                    end
                end
            end
        end
    end

    function combineEntities(entity, neighbour, player)
        local surface = entity.surface
        local entity_name = entity.name
        local target_name = pairTable[entity_name]

        if not prototypes.entity[target_name] then return end

        local new_position =
        {
            x = (entity.position.x + neighbour.position.x) / 2,
            y = (entity.position.y + neighbour.position.y) / 2
        }

        local fbox1 = entity.fluidbox
        local fbox2 = neighbour.fluidbox
        local merged_fluid = nil

        if fbox1 and fbox2 and #fbox1 > 0 and #fbox2 > 0 then
            if fbox1[1] and fbox2[1] then
                if fbox1[1].name ~= fbox2[1].name then
                    if player and player.valid then
                        player.create_local_flying_text{
                            position = new_position,
                            text = {"mod-messages.modbuild-fluid-error"},
                            color = {r = 1, g = 0, b = 0}
                        }
                    end
                    return
                end

                local total_amount = fbox1[1].amount + fbox2[1].amount
                if total_amount > 0 then
                    merged_fluid = {
                        name = fbox1[1].name,
                        amount = total_amount,
                        temperature = ((fbox1[1].amount * fbox1[1].temperature) + (fbox2[1].amount * fbox2[1].temperature)) / total_amount
                    }
                end
            end
        end

        local spawn_properties =
        {
            name = target_name,
            position = new_position,
            direction = entity.direction,
            force = entity.force,
            quality = entity.quality,
            spill = false,
            snap_to_grid = false
        }

        entity.destroy()
        neighbour.destroy()

        local new_building = surface.create_entity(spawn_properties)

        if new_building and new_building.valid then
            if merged_fluid and new_building.fluidbox and #new_building.fluidbox > 0 then
                new_building.fluidbox[1] = merged_fluid
            end

            if player and player.valid then
                player.create_local_flying_text{
                    position = new_position,
                    text = {"mod-messages.modbuild-combined"},
                    color = {g = 1}
                }
            end

            script.raise_script_built({
                entity = new_building,
                spawn_by_blueprint = false
            })
        end
    end

    script.on_event(defines.events.on_built_entity, function(event)
        if allowedPairs[event.entity.name] then
            checkForCombinations(event.entity, game.players[event.player_index])
        end
    end)

    script.on_event(defines.events.on_robot_built_entity, function(event)
        if allowedPairs[event.entity.name] then
            checkForCombinations(event.entity, nil)
        end
    end)

    script.on_event(defines.events.script_raised_built, function(event)
        if allowedPairs[event.entity.name] then
            checkForCombinations(event.entity, nil)
        end
    end)
end