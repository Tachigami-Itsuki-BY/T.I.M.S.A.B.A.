if mods[bellicos_aegis_mods] then
    local ig_bellicos = "bellicos"
    data:extend
    ({
        {
            type = item_group,
            name = ig_bellicos,
            order = data_space_location[bellicos_orbit].order,
            icon = "__TIMSABA__/graphics/icons/bellicos-and-aegis/bellicos-orbit.png",
            icon_size = 128
        }
    })

    is_beryllium = "is-beryllium"
    is_beryllium_chemistry = "is-beryllium-chemistry"
    is_beryllium_casting = "is-beryllium-casting"
    is_beryllium_bronze = "is-beryllium-bronze"
    is_bellicos_recipe = "is-bellicos-recipe"
    is_bellicos_logistic = "is-bellicos-logistic"
    is_bellicos_building = "is-bellicos-building"
    TIMSABA.functions.create_subgroups(ig_bellicos,
    {
        {name = is_beryllium,           order = a},
        {name = is_beryllium_chemistry, order = a_a},
        {name = is_beryllium_casting,   order = a_b},
        {name = is_beryllium_bronze,    order = b},
        {name = is_bellicos_recipe,     order = c},
        {name = is_bellicos_logistic,   order = d},
        {name = is_bellicos_building,   order = e}
    })
end