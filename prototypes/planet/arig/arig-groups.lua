if mods [arig_mods] then
    local ig_arig = "arig"
    data:extend
    ({
        {
            type = item_group,
            name = ig_arig,
            order = x_f,
            icon = "__TIMSABA__/graphics/icons/arig/arig-planet.png",
            icon_size = 128
        }
    })

    is_arig_ore = "is-arig-ore"
    is_cactus = "is-cactus"
    is_arig_recipe = "is-arig-recipe"
    is_arig_logistics = "is-arig-logistics"
    is_arig_power = "is-arig-power"
    is_arig_building = "is-arig-building"
    is_arig_water = "is-arig-water"
    TIMSABA.functions.create_subgroups(ig_arig,
    {
        {name = is_arig_ore,       order = a},
        {name = is_cactus,         order = b},
        {name = is_arig_recipe,    order = c},
        {name = is_arig_logistics, order = d},
        {name = is_arig_power,     order = e},
        {name = is_arig_building,  order = f},
        {name = is_arig_water,     order = g}
    })
end