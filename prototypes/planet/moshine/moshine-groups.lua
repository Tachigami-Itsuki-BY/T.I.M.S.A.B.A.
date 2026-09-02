if mods[moshine_mods] then
    local ig_moshine = "moshine"
    data:extend
    ({
        {
            type = item_group,
            name = ig_moshine,
            order = data_planet[planet_moshine].order,
            icon = "__TIMSABA__/graphics/icons/moshine/moshine-planet.png",
            icon_size = 128
        }
    })

    is_moshine_air = "is-moshine-air"
    is_moshine_recipe = "is-moshine-recipe"
    is_monazite = "is-monazite"
    is_neodymium = "is-neodymium"
    is_neodymium_chemistry = "is-neodymium-chemistry"
    is_neodymium_casting = "is-neodymium-casting"
    is_cerium = "is-cerium"
    is_cerium_chemistry = "is-cerium-chemistry"
    is_cerium_casting = "is-cerium-casting"
    is_promethium = "is-promethium"
    is_promethium_chemistry = "is-promethium-chemistry"
    is_promethium_casting = "is-promethium-casting"
    is_barium = "is-barium"
    is_biotite_mica = "is-biotite-mica"
    is_moshine_datacell = "is-moshine-datacell"
    is_moshine_core = "is-moshine-core"
    is_moshine_ai_core = "is-moshine-ai-core"
    is_moshine_logistic = "is-moshine-logistic"
    is_moshine_logistic_battery = "is-moshine-logistic-battery"
    is_moshine_building_energy = "is-moshine-building-energy"
    is_moshine_building = "is-moshine-building"
    TIMSABA.functions.create_subgroups(ig_moshine,
    {
        {name = is_moshine_air,              order = a},
        {name = is_moshine_recipe,           order = b},
        {name = is_monazite,                 order = c},
        {name = is_neodymium,                order = d},
        {name = is_neodymium_chemistry,      order = d_a},
        {name = is_neodymium_casting,        order = d_b},
        {name = is_cerium,                   order = e},
        {name = is_cerium_chemistry,         order = e_a},
        {name = is_cerium_casting,           order = e_b},
        {name = is_promethium,               order = f},
        {name = is_promethium_chemistry,     order = f_a},
        {name = is_promethium_casting,       order = f_b},
        {name = is_barium,                   order = g},
        {name = is_biotite_mica,             order = h},
        {name = is_moshine_datacell,         order = i},
        {name = is_moshine_core,             order = i_a},
        {name = is_moshine_ai_core,          order = i_b},
        {name = is_moshine_logistic,         order = j},
        {name = is_moshine_logistic_battery, order = j_a},
        {name = is_moshine_building_energy,  order = k},
        {name = is_moshine_building,         order = l}
    })
end