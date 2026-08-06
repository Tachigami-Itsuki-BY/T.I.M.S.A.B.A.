local surface_to_recipe =
{
    ["nauvis"] = "extract-ground-water",
    ["gleba"] = "extract-ground-water",
    ["vulcanus"] = "extract-ground-lava",
    ["fulgora"] = "extract-ground-angels-liquid-multi-phase-oil",
    ["aquilo"] = "extract-ground-ammoniacal-solution"
}

if script.active_mods["Moshine"] then surface_to_recipe["moshine"] = "extract-ground-lava" end
if script.active_mods["planetaris-arig"] then surface_to_recipe["arig"] = "extract-ground-planetaris-sand" end
if script.active_mods["planetaris-hyarion"] then surface_to_recipe["hyarion"] = "extract-ground-lava" end
if script.active_mods["planetaris-tellus"] then surface_to_recipe["tellus"] = "extract-ground-planetaris-infected-water" end
if script.active_mods["Paracelsin"] then surface_to_recipe["paracelsin"] = "extract-ground-nitrogen-liquid" end
if script.active_mods["corrundum"] then surface_to_recipe["corrundum"] = "extract-ground-angels-liquid-multi-phase-oil" end
if script.active_mods["castra-prime"] then surface_to_recipe["castra"] = "extract-ground-angels-liquid-fuel-oil" end

if script.active_mods["panglia_planet"] then surface_to_recipe["panglia"] = "extract-ground-water" end
if script.active_mods["secretas"] then surface_to_recipe["panglia"] = "extract-ground-ammoniacal-solution" end
if script.active_mods["terrapalus"] then surface_to_recipe["panglia"] = "extract-ground-water" end

local function on_entity_built(event)
    local entity = event.created_entity or event.entity
    if not (entity and entity.valid and (entity.name == "angels-ground-water-pump" or (entity.type == "entity-ghost" and entity.ghost_name == "angels-ground-water-pump"))) then
        return
    end

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
end

return {on_entity_built = on_entity_built}