local surface_to_recipe =
{
    ["nauvis"]   = "extract-ground-water",
    ["gleba"]    = "extract-ground-water",
    ["vulcanus"] = "extract-ground-lava",
    ["fulgora"]  = "extract-ground-angels-liquid-multi-phase-oil",
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
            player.create_local_flying_text{text="You can't drill in space!", position=position}
            player.insert{name="angels-ground-water-pump", count=1}
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