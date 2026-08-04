if mods[cubium_mods] then
    data:extend
    ({
        {
            type = "item-group",
            name = "cubium",
            order = z,
            icon = "__TIMSABA__/graphics/icons/cubium/cubium-planet.png",
            icon_size = 128,
        },
        {
            type = "item-subgroup",
            name = "cubium-ore",
            group = "cubium",
            order = a
        },
        {
            type = "item-subgroup",
            name = "cubium-new-recipe",
            group = "cubium",
            order = b
        },
        {
            type = "item-subgroup",
            name = "cubium-logistics",
            group = "cubium",
            order = c
        },
        {
            type = "item-subgroup",
            name = "cubium-building",
            group = "cubium",
            order = c_a
        },
        {
            type = "item-subgroup",
            name = "cubium-war",
            group = "cubium",
            order = c_b
        },
        {
            type = "item-subgroup",
            name = "cubium-energized",
            group = "cubium",
            order = d
        },
        {
            type = "item-subgroup",
            name = "cubium-energized-shards",
            group = "cubium",
            order = d_a
        },
        {
            type = "item-subgroup",
            name = "cubium-inverted",
            group = "cubium",
            order = d_b
        }
    })
end