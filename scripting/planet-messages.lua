local function on_player_changed_surface(event)
    local player = game.get_player(event.player_index)
    if not player or not player.valid or not player.surface then return end

    local planet = player.surface.planet
    if planet then

        storage.visited_planets = storage.visited_planets or {}

        if not storage.visited_planets[planet.name] then
            storage.visited_planets[planet.name] = true
            player.print({"mod-messages.planet-" .. planet.name})
        end
    end
end

return {on_player_changed_surface = on_player_changed_surface}