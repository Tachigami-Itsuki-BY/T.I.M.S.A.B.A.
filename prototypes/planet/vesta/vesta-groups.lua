if mods [vesta_mods] then
    local ig_vesta = "vesta"
    data:extend
    ({
        {
            type = item_group,
            name = ig_vesta,
            order = data_planet[planet_vesta].order,
            icon = "__TIMSABA__/graphics/icons/vesta/vesta-planet.png",
            icon_size = 128
        }
    })

    is_vesta_air = "is-vesta-air"
    is_vesta_recipe = "is-vesta-recipe"
    is_ore_to_plate = "is-ore-to-plate"
    is_iridium = "is-iridium"
    is_iridium_chemistry = "is-iridium-chemistry"
    is_iridium_casting = "is-iridium-casting"
    is_vesta_logistic = "is-vesta-logistic"
    is_vesta_building = "is-vesta-building"
    is_vesta_recipe_space = "is-vesta-reicpe-space"
    TIMSABA.functions.create_subgroups(ig_vesta,
    {
        {name = is_vesta_air,          order = a},
        {name = is_vesta_recipe,       order = b},
        {name = is_ore_to_plate,       order = c},
        {name = is_iridium,            order = d},
        {name = is_iridium_chemistry,  order = d_a},
        {name = is_iridium_casting,    order = d_b},
        {name = is_vesta_logistic,     order = e},
        {name = is_vesta_building,     order = f},
        {name = is_vesta_recipe_space, order = g}
    })
end