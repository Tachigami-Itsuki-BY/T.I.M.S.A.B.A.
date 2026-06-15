if mods [arig_mods] then
    local arig = "arig"
    is_arig_ore = "is-arig-ore"
    is_cactus = "is-cactus"
    is_arig_recipe = "is-arig-recipe"
    is_arig_logistics = "is-arig-logistics"
    is_arig_power = "is-arig-power"
    is_arig_building = "is-arig-building"
    is_arig_water = "is-arig-water"
    data:extend
    ({
        {
            type = item_group,
            name = arig,
            order = x_f,
            icon = "__TIMSABA__/graphics/icons/arig/arig-planet.png",
            icon_size = 128
        },
        {
            type = item_subgroup,
            name = is_arig_ore,
            group = arig,
            order = a
        },
        {
            type = item_subgroup,
            name = is_cactus,
            group = arig,
            order = b
        },
        {
            type = item_subgroup,
            name = is_arig_recipe,
            group = arig,
            order = c
        },
        {
            type = item_subgroup,
            name = is_arig_logistics,
            group = arig,
            order = d
        },
        {
            type = item_subgroup,
            name = is_arig_power,
            group = arig,
            order = e
        },
        {
            type = item_subgroup,
            name = is_arig_building,
            group = arig,
            order = f
        },
        {
            type = item_subgroup,
            name = is_arig_water,
            group = arig,
            order = g
        }
    })
end