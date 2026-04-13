if mods [vesta_mods] then
    local vesta = "vesta"
    is_vesta_ore = "vesta-ore"
    is_vesta_new_recipe = "vesta-new-recipe"
    is_vesta_logistics = "vesta-logistics"
    is_vesta_building = "vesta-building"
    is_vesta_recipe = "vesta-recipe"
    is_vesta_war = "vesta-war"
    is_vesta_recipe_space = "vesta-reicpe-space"
    data:extend
    ({
        {
            type = item_group,
            name = vesta,
            order = y,
            icon = "__TIMSABA__/graphics/icons/vesta/vesta-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_vesta_ore,
            group = vesta,
            order = a
        },
        {
            type = item_subgroup,
            name = is_vesta_new_recipe,
            group = vesta,
            order = b
        },
        {
            type = item_subgroup,
            name = is_vesta_logistics,
            group = vesta,
            order = c
        },
        {
            type = item_subgroup,
            name = is_vesta_building,
            group = vesta,
            order = d
        },
        {
            type = item_subgroup,
            name = is_vesta_recipe,
            group = vesta,
            order = e
        },
        {
            type = item_subgroup,
            name = is_vesta_war,
            group = vesta,
            order = f
        },
        {
            type = item_subgroup,
            name = is_vesta_recipe_space,
            group = vesta,
            order = g
        }
    })
end