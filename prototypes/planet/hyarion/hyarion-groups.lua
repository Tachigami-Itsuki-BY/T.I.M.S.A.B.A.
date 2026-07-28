if mods [hyarion_mods] then
    local ig_hyarion = "hyarion"
    data:extend
    ({
        {
            type = item_group,
            name = ig_hyarion,
            order = x_g,
            icon = "__TIMSABA__/graphics/icons/hyarion/hyarion-planet.png",
            icon_size = 128
        }
    })

    is_hyarion_air = "is-hyarion-air"
    is_hyarion_recipe_ore = "is-hyarion-recipe-ore"
    is_hyarion_recipe_polished = "is-hyarion-recipe-polished"
    is_hyarion_recipe_other = "is-hyarion-recipe-other"
    is_hyarion_recipe_particle = "is-hyarion-recipe-particle"
    is_hyarion_logistics = "is-hyarion-logistics"
    is_hyarion_mining = "is-hyarion-mining"
    is_hyarion_building = "is-hyarion-building"
    is_hyarion_war = "is-hyarion-war"
    TIMSABA.functions.create_subgroups(ig_hyarion,
    {
        {name = is_hyarion_air,                order = a},
        {name = is_hyarion_recipe_ore,         order = b},
        {name = is_hyarion_recipe_polished,    order = b_a},
        {name = is_hyarion_recipe_other,       order = b_b},
        {name = is_hyarion_recipe_particle,    order = b_c},
        {name = is_hyarion_logistics,          order = c},
        {name = is_hyarion_mining,             order = d},
        {name = is_hyarion_building,           order = e},
        {name = is_hyarion_war,                order = f}
    })
end