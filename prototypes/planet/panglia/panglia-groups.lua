if mods[panglia_mods] then
    local ig_panglia = "panglia"
    data:extend
    ({
        {
            type = item_group,
            name = ig_panglia,
            order = y_b,
            icon = "__TIMSABA__/graphics/icons/panglia/panglia-planet.png",
            icon_size = 128
        }
    })

    is_panglia_recipe = "is-panglia-recipe"
    is_panglia_universe_volcanic = "is-panglia-universe-volcanic"
    is_panglia_universe_planets = "is-panglia-universe-planets"
    is_panglia_universe_moons = "is-panglia-universe-moons"
    is_panglia_building = "is-panglia-building"
    is_panglia_war = "is-panglia-war"
    TIMSABA.functions.create_subgroups(ig_panglia,
    {
        {name = is_panglia_recipe,            order = a},
        {name = is_panglia_universe_volcanic, order = b},
        {name = is_panglia_universe_planets,  order = b_a},
        {name = is_panglia_universe_moons,    order = b_b},
        {name = is_panglia_building,          order = c},
        {name = is_panglia_war,               order = d}
    })
end