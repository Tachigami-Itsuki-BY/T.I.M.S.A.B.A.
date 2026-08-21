if mods[muria_mods] then
    local ig_muria = "muria"
    data:extend
    ({
        {
            type = item_group,
            name = ig_muria,
            order = data_planet[planet_muria].order,
            icon = "__TIMSABA__/graphics/icons/muria/muria-planet.png",
            icon_size = 128
        }
    })

    is_muria_air = "is-muria-air"
    is_muria_recipe = "is-muria-recipe"
    is_eschatotaxite = "is-eschatotaxite"
    is_acidophile = "is-acidophile"
    is_muria_lead = "is-muria-lead"
    is_muria_building = "is-muria-building"
    is_muria_war = "is-muria-war"
    TIMSABA.functions.create_subgroups(ig_muria,
    {
        {name = is_muria_air,      order = a},
        {name = is_muria_recipe,   order = b},
        {name = is_eschatotaxite,  order = c},
        {name = is_acidophile,     order = d},
        {name = is_muria_lead,     order = e},
        {name = is_muria_building, order = f},
        {name = is_muria_war,      order = g}
    })
end