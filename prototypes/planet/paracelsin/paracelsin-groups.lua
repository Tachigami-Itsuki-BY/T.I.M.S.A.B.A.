if mods [paracelsin_mods] then
    local ig_paracelsin = "paracelsin"
    data:extend
    ({
        {
            type = item_group,
            name = ig_paracelsin,
            order = x_i,
            icon = "__TIMSABA__/graphics/icons/paracelsin/paracelsin-planet.png",
            icon_size = 128,
        }
    })

    is_paracelsin_air = "is-paracelsin-air"
    is_vaterite_zinc = "is-vaterite-zinc"
    is_sphalerite = "is-sphalerite"
    is_tetrahedrite = "is-tetrahedrite"
    is_paracelsin_recipe = "is-paracelsin-recipe"
    is_paracelsin_logistics = "is-paracelsin-logistics"
    is_paracelsin_energy = "is-paracelsin-energy"
    is_paracelsin_mining = "is-paracelsin-mining"
    is_paracelsin_building = "is-paracelsin-building"
    TIMSABA.functions.create_subgroups(ig_paracelsin,
    {
        {name = is_paracelsin_air,       order = a},
        {name = is_vaterite_zinc,        order = b},
        {name = is_sphalerite,           order = c},
        {name = is_tetrahedrite,         order = d},
        {name = is_paracelsin_recipe,    order = e},
        {name = is_paracelsin_logistics, order = f},
        {name = is_paracelsin_energy,    order = g},
        {name = is_paracelsin_mining,    order = h},
        {name = is_paracelsin_building,  order = i}
    })
end