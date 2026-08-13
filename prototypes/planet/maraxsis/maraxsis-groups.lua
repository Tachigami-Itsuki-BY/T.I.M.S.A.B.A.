if mods[maraxsis_mods] then
    local ig_maraxsis = "maraxsis"
    data:extend
    ({
        {
            type = item_group,
            name = ig_maraxsis,
            order = data_planet[planet_maraxsis].order,
            icon = "__TIMSABA__/graphics/icons/maraxsis/maraxsis-planet.png",
            icon_size = 128,
        }
    })

    is_maraxsis_air = "is-maraxsis-air"
    is_maraxsis_recipe = "is-maraxsis-recipe"
    is_maraxsis_science = "is-maraxsis-science"
    is_maraxsis_logistics = "is-maraxsis-logistics"
    is_maraxsis_building_energy = "maraxsis-building-energy"
    is_maraxsis_building = "maraxsis-building"
    is_maraxsis_war = "maraxsis-war"
    TIMSABA.functions.create_subgroups(ig_maraxsis,
    {
        {name = is_maraxsis_air,             order = a},
        {name = is_maraxsis_recipe,          order = b},
        {name = is_maraxsis_science,         order = c},
        {name = is_maraxsis_logistics,       order = d},
        {name = is_maraxsis_building_energy, order = e},
        {name = is_maraxsis_building,        order = f},
        {name = is_maraxsis_war,             order = g}
    })
end