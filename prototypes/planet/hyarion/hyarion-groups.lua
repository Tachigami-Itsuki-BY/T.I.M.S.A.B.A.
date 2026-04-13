if mods [hyarion_mods] then
    local hyarion = "hyarion"
    is_hyarion_ore = "hyarion-ore"
    is_hyarion_new_recipe = "hyarion-new-recipe"
    is_hyarion_logistics = "hyarion-logistics"
    is_hyarion_building = "hyarion-building"
    is_hyarion_mining = "hyarion-mining"
    is_hyarion_war = "hyarion-war"
    is_hyarion_recipe_a = "hyarion-recipe-a"
    is_hyarion_recipe_b = "hyarion-recipe-b"
    is_hyarion_recipe_c = "hyarion-recipe-c"
    is_hyarion_recipe_particle = "hyarion-recipe-particle"
    is_hyarion_recipe_space = "hyarion-recipe-space"
    data:extend
    ({
        {
            type = item_group,
            name = hyarion,
            order = y,
            icon = "__TIMSABA__/graphics/icons/hyarion/hyarion-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_hyarion_ore,
            group = hyarion,
            order = a
        },
        {
            type = item_subgroup,
            name = is_hyarion_new_recipe,
            group = hyarion,
            order = b
        },
        {
            type = item_subgroup,
            name = is_hyarion_logistics,
            group = hyarion,
            order = c
        },
        {
            type = item_subgroup,
            name = is_hyarion_building,
            group = hyarion,
            order = c_a
        },
        {
            type = item_subgroup,
            name = is_hyarion_mining,
            group = hyarion,
            order = c_b
        },
        {
            type = item_subgroup,
            name = is_hyarion_war,
            group = hyarion,
            order = c_c
        },
        {
            type = item_subgroup,
            name = is_hyarion_recipe_a,
            group = hyarion,
            order = d
        },
        {
            type = item_subgroup,
            name = is_hyarion_recipe_b,
            group = hyarion,
            order = d_a
        },
        {
            type = item_subgroup,
            name = is_hyarion_recipe_c,
            group = hyarion,
            order = d_b
        },
        {
            type = item_subgroup,
            name = is_hyarion_recipe_particle,
            group = hyarion,
            order = d_c
        },
        {
            type = item_subgroup,
            name = is_hyarion_recipe_space,
            group = hyarion,
            order = e
        }
    })
end