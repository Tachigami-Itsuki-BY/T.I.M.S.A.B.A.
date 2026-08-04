if mods[shchierbin_mods] then
    local shchierbin = "shchierbin"
    is_shchierbin_ore = "shchierbin-ore"
    is_shchierbin_new_recipe = "shchierbin-new-recipe"
    is_shchierbin_building_energy = "shchierbin-building-energy"
    is_shchierbin_building = "shchierbin-building"
    is_shchierbin_recipe = "shchierbin-recipe"
    is_shchierbin_recipe_vanadium = "shchierbin-recipe-vanadium"
    is_shchierbin_recipe_sulfur = "shchierbin-recipe-sulfur"
    is_shchierbin_gas_ballon = "shchierbin-gas-ballon"
    is_shchierbin_recipe_space = "shchierbin-recipe-space"
    is_shchierbin_unsorted = "shchierbin-unsorted"
    data:extend
    ({
        {
            type = item_group,
            name = shchierbin,
            order = y,
            icon = "__TIMSABA__/graphics/icons/shchierbin/shchierbin-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_shchierbin_ore,
            group = shchierbin,
            order = a
        },
        {
            type = item_subgroup,
            name = is_shchierbin_new_recipe,
            group = shchierbin,
            order = b
        },
        {
            type = item_subgroup,
            name = is_shchierbin_building_energy,
            group = shchierbin,
            order = c
        },
        {
            type = item_subgroup,
            name = is_shchierbin_building,
            group = shchierbin,
            order = d
        },
        {
            type = item_subgroup,
            name = is_shchierbin_recipe,
            group = shchierbin,
            order = e
        },
        {
            type = item_subgroup,
            name = is_shchierbin_recipe_vanadium,
            group = shchierbin,
            order = e_a
        },
        {
            type = item_subgroup,
            name = is_shchierbin_recipe_sulfur,
            group = shchierbin,
            order = e_b
        },
        {
            type = item_subgroup,
            name = is_shchierbin_gas_ballon,
            group = shchierbin,
            order = f
        },
        {
            type = item_subgroup,
            name = is_shchierbin_recipe_space,
            group = shchierbin,
            order = g
        },
        {
            type = item_subgroup,
            name = is_shchierbin_unsorted,
            group = shchierbin,
            order = z
        },
    })
end