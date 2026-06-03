if mods [panglia_mods] then
    local panglia = "panglia"
    is_panglia_recipe = "is-panglia-recipe"
    is_panglia_universe_volcanic = "is-panglia-universe-volcanic"
    is_panglia_universe = "is-panglia-universe"
    is_panglia_building = "is-panglia-building"
    is_panglia_war = "is-panglia-war"
    data:extend
    ({
        {
            type = item_group,
            name = panglia,
            order = y_b,
            icon = "__TIMSABA__/graphics/icons/panglia/panglia-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_panglia_recipe,
            group = panglia,
            order = a
        },
        {
            type = item_subgroup,
            name = is_panglia_universe_volcanic,
            group = panglia,
            order = b
        },
        {
            type = item_subgroup,
            name = is_panglia_universe,
            group = panglia,
            order = b_a
        },
        {
            type = item_subgroup,
            name = is_panglia_building,
            group = panglia,
            order = c
        },
        {
            type = item_subgroup,
            name = is_panglia_war,
            group = panglia,
            order = d
        }
    })
end