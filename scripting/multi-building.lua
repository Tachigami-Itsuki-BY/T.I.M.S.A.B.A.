local settings_enabled = settings.startup["setting-multi-building"] and settings.startup["setting-multi-building"].value

local baseNames =
{
    "steam-engine",          "bob-steam-engine-2",      "bob-steam-engine-3",      "bob-steam-engine-4", "bob-steam-engine-5", "steam-engine-6",
    "steam-turbine",         "bob-steam-turbine-2",     "bob-steam-turbine-3",     "steam-turbine-4",
    "bob-solar-panel-small", "bob-solar-panel-small-2", "bob-solar-panel-small-3", "solar-panel-small-4",
    "solar-panel",           "bob-solar-panel-2",       "bob-solar-panel-3",       "solar-panel-4",
    "bob-solar-panel-large", "bob-solar-panel-large-2", "bob-solar-panel-large-3", "solar-panel-large-4",
    "accumulator",           "bob-large-accumulator-2", "bob-large-accumulator-3", "accumulator-4"
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

local combineEntities

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
        offsets =
        {
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

combineEntities = function(entity, neighbour, player)
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
                merged_fluid =
                {
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

local function on_entity_built(event)
    if not settings_enabled then return end

    local entity = event.entity or event.created_entity
    if not entity or not entity.valid then return end

    if allowedPairs[entity.name] then
        local player = event.player_index and game.players[event.player_index] or nil
        checkForCombinations(entity, player)
    end
end

return {on_entity_built = on_entity_built}