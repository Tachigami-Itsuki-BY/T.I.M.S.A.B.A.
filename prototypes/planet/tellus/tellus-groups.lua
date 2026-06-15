if mods [tellus_mods] then
    local tellus = "tellus"
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
    data:extend
    ({
        {
            type = item_group,
            name = tellus,
            order = x_h,
            icon = "__TIMSABA__/graphics/icons/tellus/tellus-planet.png",
            icon_size = 128
        },
        {
            type = item_subgroup,
            name = is_chloroplast,
            group = tellus,
            order = a
        },
        {
            type = item_subgroup,
            name = is_tellus_magnesium,
            group = tellus,
            order = b
        },
        {
            type = item_subgroup,
            name = is_mycelia,
            group = tellus,
            order = c
        },
        {
            type = item_subgroup,
            name = is_carbolyte,
            group = tellus,
            order = d
        },
        {
            type = item_subgroup,
            name = is_holmiumnite,
            group = tellus,
            order = e
        },
        {
            type = item_subgroup,
            name = is_parasite,
            group = tellus,
            order = f
        },
        {
            type = item_subgroup,
            name = is_tellus_recipe,
            group = tellus,
            order = g
        },
        {
            type = item_subgroup,
            name = is_tellus_logistics,
            group = tellus,
            order = h
        },
        {
            type = item_subgroup,
            name = is_tellus_building,
            group = tellus,
            order = i
        },
        {
            type = item_subgroup,
            name = is_dyes,
            group = tellus,
            order = j
        },
        {
            type = item_subgroup,
            name = is_tellus_pipe,
            group = tellus,
            order = j_a
        },
        {
            type = item_subgroup,
            name = is_tellus_pipe_to_ground,
            group = tellus,
            order = j_b
        },
        {
            type = item_subgroup,
            name = is_tellus_stone_brick,
            group = tellus,
            order = j_c
        },
        {
            type = item_subgroup,
            name = is_tellus_concrete,
            group = tellus,
            order = j_d
        },
        {
            type = item_subgroup,
            name = is_tellus_hazard_concrete,
            group = tellus,
            order = j_e
        },
        {
            type = item_subgroup,
            name = is_tellus_reinforced_concrete,
            group = tellus,
            order = j_f
        },
        {
            type = item_subgroup,
            name = is_tellus_reinforced_hazard_concrete,
            group = tellus,
            order = j_g
        },
        {
            type = item_subgroup,
            name = is_tellus_stone_wall,
            group = tellus,
            order = j_h
        },
        {
            type = item_subgroup,
            name = is_tellus_concrete_brick,
            group = tellus,
            order = j_i
        }
    })
end