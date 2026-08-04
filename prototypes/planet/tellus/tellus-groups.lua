if mods[tellus_mods] then
    local ig_tellus = "tellus"
    data:extend
    ({
        {
            type = item_group,
            name = ig_tellus,
            order = x_i,
            icon = "__TIMSABA__/graphics/icons/tellus/tellus-planet.png",
            icon_size = 128
        }
    })

    is_chloroplast = "is-chloroplast"
    is_tellus_magnesium = "is-tellus-magnesium"
    is_mycelia = "is-mycelia"
    is_carbolyte = "is-carbolyte"
    is_holmiumnite = "is-holmiumnite"
    is_parasite = "is-parasite"
    is_tellus_recipe = "is-tellus-recipe"
    is_tellus_logistics = "is-tellus-logistics"
    is_tellus_building = "is-tellus-building"
    is_dyes = "is-dyes"
    is_tellus_pipe = "is-tellus-pipe"
    is_tellus_pipe_to_ground = "is-tellus-pipe-to-ground"
    is_tellus_stone_brick = "is-tellus-stone-brick"
    is_tellus_concrete = "is-tellus-concrete"
    is_tellus_hazard_concrete = "is-tellus-hazard-concrete"
    is_tellus_reinforced_concrete = "is-tellus-reinforced-concrete"
    is_tellus_reinforced_hazard_concrete = "is-tellus-reinforced-hazard-concrete"
    is_tellus_stone_wall = "is-tellus-stone-wall"
    is_tellus_concrete_brick = "is-tellus-concrete-brick"
    TIMSABA.functions.create_subgroups(ig_tellus,
    {
        {name = is_chloroplast, order = a},
        {name = is_tellus_magnesium, order = b},
        {name = is_mycelia, order = c},
        {name = is_carbolyte, order = d},
        {name = is_holmiumnite, order = e},
        {name = is_parasite, order = f},
        {name = is_tellus_recipe, order = g},
        {name = is_tellus_logistics, order = h},
        {name = is_tellus_building, order = i},
        {name = is_dyes, order = j},
        {name = is_tellus_pipe, order = j_a},
        {name = is_tellus_pipe_to_ground, order = j_b},
        {name = is_tellus_stone_brick, order = j_c},
        {name = is_tellus_concrete, order = j_d},
        {name = is_tellus_hazard_concrete, order = j_e},
        {name = is_tellus_reinforced_concrete, order = j_f},
        {name = is_tellus_reinforced_hazard_concrete, order = j_g},
        {name = is_tellus_stone_wall, order = j_h},
        {name = is_tellus_concrete_brick, order = j_i}
    })
end