local vulcanus = "vulcanus"
is_vulcanus_air = "is-vulcanus-air"
is_calcite = "is-calcite"
is_vulcanus_wolframite = "is-vulcanus-wolframite"
is_lava = "is-lava"
is_vulcanus_molten = "is-vulcanus-molten"
is_vulcanus_plate = "is-vulcanus-plate"
is_vulcanus_rod = "is-vulcanus-rod"
is_vulcanus_gear_wheel = "is-vulcanus-gear-wheel"
is_vulcanus_bearing_ball = "is-vulcanus-bearing-ball"
is_vulcanus_bearing = "is-vulcanus-bearing"
is_vulcanus_cable = "is-vulcanus-cable"
is_vulcanus_pipe = "is-vulcanus-pipe"
is_vulcanus_pipe_to_ground = "is-vulcanus-pipe-to-ground"
is_vulcanus_tungsten = "is-vulcanus-tungsten"
is_vulcanus_logistics = "is-vulcanus-logistics"
is_vulcanus_building = "is-vulcanus-building"
data:extend
({
    {
        type = item_group,
        name = vulcanus,
        order = x_a,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/vulcanus-planet.png",
        icon_size = 128,
    },
    {
        type = item_subgroup,
        name = is_vulcanus_air,
        group = vulcanus,
        order = a
    },
    {
        type = item_subgroup,
        name = is_calcite,
        group = vulcanus,
        order = b
    },
    {
        type = item_subgroup,
        name = is_vulcanus_wolframite,
        group = vulcanus,
        order = c
    },
    {
        type = item_subgroup,
        name = is_lava,
        group = vulcanus,
        order = d
    },
    {
        type = item_subgroup,
        name = is_vulcanus_molten,
        group = vulcanus,
        order = d_a
    },
    {
        type = item_subgroup,
        name = is_vulcanus_plate,
        group = vulcanus,
        order = d_b
    },
    {
        type = item_subgroup,
        name = is_vulcanus_rod,
        group = vulcanus,
        order = d_c
    },
    {
        type = item_subgroup,
        name = is_vulcanus_gear_wheel,
        group = vulcanus,
        order = d_d
    },
    {
        type = item_subgroup,
        name = is_vulcanus_bearing_ball,
        group = vulcanus,
        order = d_e
    },
    {
        type = item_subgroup,
        name = is_vulcanus_bearing,
        group = vulcanus,
        order = d_f
    },
    {
        type = item_subgroup,
        name = is_vulcanus_cable,
        group = vulcanus,
        order = d_g
    },
    {
        type = item_subgroup,
        name = is_vulcanus_pipe,
        group = vulcanus,
        order = d_h
    },
    {
        type = item_subgroup,
        name = is_vulcanus_pipe_to_ground,
        group = vulcanus,
        order = d_i
    },
    {
        type = item_subgroup,
        name = is_vulcanus_tungsten,
        group = vulcanus,
        order = e
    },
    {
        type = item_subgroup,
        name = is_vulcanus_logistics,
        group = vulcanus,
        order = f
    },
    {
        type = item_subgroup,
        name = is_vulcanus_building,
        group = vulcanus,
        order = g
    }
})