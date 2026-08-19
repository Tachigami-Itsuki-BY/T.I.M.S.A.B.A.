if mods[corrundum_mods] then
    ig_corrundum = "corrundum"
    data:extend
    ({
        {
            type = item_group,
            name = ig_corrundum,
            order = data_planet[planet_corrundum].order,
            icon = "__TIMSABA__/graphics/icons/corrundum/corrundum-planet.png",
            icon_size = 128
        }
    })

    is_corrundum_air = "is-corrundum-air"
    is_corrundum_platinum = "is-corrundum-platinum"
    is_chalcopyrite = "is-chalcopyrite"
    is_corrundum_sulfur = "is-corrundum-sulfur"
    is_corrundum_calcium = "is-corrundum-calcium"
    is_corrundum_recipe = "is-corrundum-recipe"
    is_corrundum_building = "is-corrundum-building"
    is_corrundum_war = "is-corrundum-war"
    TIMSABA.functions.create_subgroups(ig_corrundum,
    {
        {name = is_corrundum_air,      order = a},
        {name = is_corrundum_platinum, order = b},
        {name = is_chalcopyrite,       order = c},
        {name = is_corrundum_sulfur,   order = d},
        {name = is_corrundum_calcium,  order = e},
        {name = is_corrundum_recipe,   order = f},
        {name = is_corrundum_building, order = g},
        {name = is_corrundum_war,      order = h}
    })
end