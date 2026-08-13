if mods[castra_mods] then
    local ig_castra = "castra"
    data:extend
    ({
        {
            type = item_group,
            name = ig_castra,
            order = data_planet[planet_castra].order,
            icon = "__TIMSABA__/graphics/icons/castra/castra-planet.png",
            icon_size = 128
        }
    })

    is_castra_air = "is-castra-air"
    is_gunpowder = "is-gunpowder"
    is_millerite = "is-millerite"
    is_castra_recipe = "castra-recipe"
    is_castra_logistics = "castra-logistics"
    is_castra_building = "castra-building"
    is_castra_war = "castra-war"
    TIMSABA.functions.create_subgroups(ig_castra,
    {
        {name = is_castra_air,       order = a},
        {name = is_gunpowder,        order = b},
        {name = is_millerite,        order = c},
        {name = is_castra_recipe,    order = d},
        {name = is_castra_logistics, order = e},
        {name = is_castra_building,  order = f},
        {name = is_castra_war,       order = g}
    })
end