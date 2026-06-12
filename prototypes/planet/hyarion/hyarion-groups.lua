if mods [hyarion_mods] then
    local hyarion = "hyarion"
    is_hyarion_air = "is-hyarion-air"
    is_hyarion_recipe_ore = "is-hyarion-recipe-ore"
    is_hyarion_recipe_polished = "is-hyarion-recipe-polished"
    is_hyarion_recipe_other = "is-hyarion-recipe-other"
    is_hyarion_recipe_particle = "is-hyarion-recipe-particle"
    is_hyarion_logistics = "is-hyarion-logistics"
    is_hyarion_mining = "is-hyarion-mining"
    is_hyarion_building = "is-hyarion-building"
    is_hyarion_war = "is-hyarion-war"
    data:extend
    ({
        {
            type = item_group,
            name = hyarion,
            order = x_g,
            icon = "__TIMSABA__/graphics/icons/hyarion/hyarion-planet.png",
            icon_size = 128
        },
        {
            type = item_subgroup,
            name = is_hyarion_air,
            group = hyarion,
            order = a
        },
        {
            type = item_subgroup,
            name = is_hyarion_recipe_ore,
            group = hyarion,
            order = b
        },
        {
            type = item_subgroup,
            name = is_hyarion_recipe_polished,
            group = hyarion,
            order = b_a
        },
        {
            type = item_subgroup,
            name = is_hyarion_recipe_other,
            group = hyarion,
            order = b_b
        },
        {
            type = item_subgroup,
            name = is_hyarion_recipe_particle,
            group = hyarion,
            order = b_c
        },
        {
            type = item_subgroup,
            name = is_hyarion_logistics,
            group = hyarion,
            order = c
        },
        {
            type = item_subgroup,
            name = is_hyarion_mining,
            group = hyarion,
            order = d
        },
        {
            type = item_subgroup,
            name = is_hyarion_building,
            group = hyarion,
            order = e
        },
        {
            type = item_subgroup,
            name = is_hyarion_war,
            group = hyarion,
            order = f
        }
    })
end