require("__base__/prototypes/factoriopedia-util");
local simulations = {}
local make_asteroid_simulation = function(name, wait)
    return
    [[
        require("__core__/lualib/story")
        game.simulation.camera_position = {0, 0}

        for x = -8, 8, 1 do
            for y = -3, 3 do
                game.surfaces[1].set_tiles{{position = {x, y}, name = "empty-space"}}
            end
        end

        for x = -1, 0, 1 do
            for y = -1, 0 do
                game.surfaces[1].set_chunk_generated_status({x, y}, defines.chunk_generated_status.entities)
            end
        end

        local story_table =
        {
            {
                {
                    name = "start",
                    action = function() game.surfaces[1].create_entity{name="]]..name..[[", position = {0, 0}, velocity = {0, 0.011}} end
                },
                {
                    condition = story_elapsed_check(]]..wait..[[),
                    action = function() story_jump_to(storage.story, "start") end
                }
            }
        }
        tip_story_init(story_table)
    ]]
end
simulations.factoriopedia_small_antimonite_asteroid = {hide_factoriopedia_gradient = true, init = make_asteroid_simulation("small-antimonite-asteroid", "7")}
simulations.factoriopedia_medium_antimonite_asteroid = {hide_factoriopedia_gradient = true, init = make_asteroid_simulation("medium-antimonite-asteroid", "9")}
simulations.factoriopedia_big_antimonite_asteroid = {hide_factoriopedia_gradient = true, init = make_asteroid_simulation("big-antimonite-asteroid", "11")}
simulations.factoriopedia_huge_antimonite_asteroid = {hide_factoriopedia_gradient = true, init = make_asteroid_simulation("huge-antimonite-asteroid", "18")}
simulations.factoriopedia_small_germanite_asteroid = {hide_factoriopedia_gradient = true, init = make_asteroid_simulation("small-germanite-asteroid", "7")}
simulations.factoriopedia_medium_germanite_asteroid = {hide_factoriopedia_gradient = true, init = make_asteroid_simulation("medium-germanite-asteroid", "9")}
simulations.factoriopedia_big_germanite_asteroid = {hide_factoriopedia_gradient = true, init = make_asteroid_simulation("big-germanite-asteroid", "11")}
simulations.factoriopedia_huge_germanite_asteroid = {hide_factoriopedia_gradient = true, init = make_asteroid_simulation("huge-germanite-asteroid", "18")}
return simulations