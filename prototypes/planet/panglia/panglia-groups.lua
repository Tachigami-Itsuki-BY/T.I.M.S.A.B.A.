if mods [panglia_mods] then
    local panglia = "panglia"
    is_panglia_ore = "panglia-ore"
    is_panglia_new_recipe = "panglia-new-recipe"
    is_panglia_building = "panglia-building"
    is_panglia_war = "panglia-war"
    is_panglia_recipe = "panglia-recipe"
    is_panglia_universe = "panglia-universe"
    data:extend
    ({
        {
            type = item_group,
            name = panglia,
            order = y,
            icon = "__TIMSABA__/graphics/icons/panglia/panglia-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_panglia_ore,
            group = panglia,
            order = a
        },
        {
            type = item_subgroup,
            name = is_panglia_new_recipe,
            group = panglia,
            order = b
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
        },
        {
            type = item_subgroup,
            name = is_panglia_recipe,
            group = panglia,
            order = e
        },
        {
            type = item_subgroup,
            name = is_panglia_universe,
            group = panglia,
            order = f
        }
    })
end