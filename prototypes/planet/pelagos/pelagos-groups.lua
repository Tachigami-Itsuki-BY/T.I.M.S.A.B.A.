if mods[pelagos_mods] then
    local ig_pelagos = "pelagos"
    data:extend
    ({
        {
            type = item_group,
            name = ig_pelagos,
            order = data_planet[planet_pelagos].order,
            icon = "__TIMSABA__/graphics/icons/pelagos/pelagos-planet.png",
            icon_size = 128
        }
    })

    is_coconut = "is-coconut"
    is_pelagos_titanium = "is-pelagos-titanium"
    is_pelagos_coal = "is-pelagos-coal"
    is_pelagos_recipe = "is-pelagos-recipe"
    is_pelagos_logistic = "is-pelagos-logistic"
    is_pelagos_building = "is-pelagos-building"
    is_water_vechicles = "is-water-vechicles"
    is_water_rails = "is-water-rails"
    is_pelagos_war = "is-pelagos-war"
    is_excavator = "is-excavator"
    is_excavator_rp = "is-excavator-resource-planets"
    is_excavator_rm = "is-excavator-resource-moons"
    TIMSABA.functions.create_subgroups(ig_pelagos,
    {
        {name = is_coconut,          order = a},
        {name = is_pelagos_titanium, order = b},
        {name = is_pelagos_coal,     order = c},
        {name = is_pelagos_recipe,   order = d},
        {name = is_pelagos_logistic, order = e},
        {name = is_pelagos_building, order = f},
        {name = is_water_vechicles,  order = g},
        {name = is_water_rails,      order = h},
        {name = is_pelagos_war,      order = i},
        {name = is_excavator,        order = j},
        {name = is_excavator_rp,     order = j_a},
        {name = is_excavator_rm,     order = j_b}
    })
end