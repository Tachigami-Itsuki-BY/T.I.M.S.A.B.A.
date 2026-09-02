if mods[lignumis_mods] then
    local ig_lignumis = "lignumis"
    data:extend
    ({
        {
            type = item_group,
            name = ig_lignumis,
            order = data_planet[planet_lignumis].order,
            icon = "__TIMSABA__/graphics/icons/lignumis/lignumis-planet.png",
            icon_size = 128
        }
    })

    is_lignumis_recipe = "is-lignumis-recipe"
    is_lignumis_logistic = "is-lignumis-logistic"
    is_lignumis_mining = "is-lignumis-mining"
    is_lignumis_building = "is-lignumis-building"
    is_lignumis_war = "is-lignumis-war"
    TIMSABA.functions.create_subgroups(ig_lignumis,
    {
        {name = is_lignumis_recipe,   order = a},
        {name = is_lignumis_logistic, order = b},
        {name = is_lignumis_mining,   order = c},
        {name = is_lignumis_building, order = d},
        {name = is_lignumis_war,      order = e}
    })
end