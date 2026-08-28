if mods[apia_carnova_mods] then
    local ig_apia_carnova = "apia-carnova"
    data:extend
    ({
        {
            type = item_group,
            name = ig_apia_carnova,
            order = data_planet[planet_apia].order,
            icon = "__TIMSABA__/graphics/icons/apia-and-carnova/apia-and-carnova-planet.png",
            icon_size = 128
        }
    })

    is_apia_carnova_air = "is-apia-carnova-air"
    is_apia_recipe = "is-apia-recipe"
    is_carnova_recipe = "is-carnova-recipe"
    is_apia_carnova_recipe = "is-apia-carnova-recipe"
    is_apia_carnova_building = "is-apia-carnova-building"
    is_refresh = "is-refresh"
    TIMSABA.functions.create_subgroups(ig_apia_carnova,
    {
        {name = is_apia_carnova_air,      order = a},
        {name = is_apia_recipe,           order = b},
        {name = is_carnova_recipe,        order = c},
        {name = is_apia_carnova_recipe,   order = d},
        {name = is_apia_carnova_building, order = e},
        {name = is_refresh,               order = f}
    })
end