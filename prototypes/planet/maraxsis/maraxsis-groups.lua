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
    is_maraxsis_logistic = "is-maraxsis-logistic"
    is_maraxsis_building_energy = "maraxsis-building-energy"
    is_maraxsis_building = "maraxsis-building"
    is_maraxsis_war = "maraxsis-war"
    is_maraxsis_science = "is-maraxsis-science"
    is_research_vessel = "is-research-vessel"
    is_research_vessel_fill = "is-research-vessel-fill"
    is_research_vessel_empty = "is-research-vessel-empty"
    TIMSABA.functions.create_subgroups(ig_maraxsis,
    {
        {name = is_maraxsis_air,             order = a},
        {name = is_maraxsis_recipe,          order = b},
        {name = is_maraxsis_logistic,        order = c},
        {name = is_maraxsis_building_energy, order = d},
        {name = is_maraxsis_building,        order = e},
        {name = is_maraxsis_war,             order = f},
        {name = is_maraxsis_science,         order = g},
        {name = is_research_vessel,          order = h},
        {name = is_research_vessel_fill,     order = h_a},
        {name = is_research_vessel_empty,    order = h_b}
    })
end