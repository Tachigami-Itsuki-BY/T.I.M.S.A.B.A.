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