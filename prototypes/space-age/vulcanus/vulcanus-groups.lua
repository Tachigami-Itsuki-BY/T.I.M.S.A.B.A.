local vulcanus = "vulcanus"
is_lava = "is-lava"
is_molten = "is-molten"
is_plate = "is-plate"
is_intermediates = "is-intermediates"
is_pipe = "is-pipe"
is_pipe_to_ground = "is-pipe-to-ground"
is_vulcanus_air = "is-vulcanus-air"
is_calcite = "is-calcite"
is_tungsten = "is-tungsten"
is_vulcanus_logistics = "is-vulcanus-logistics"
is_vulcanus_building = "vulcanus-building"
data:extend
({
    {
        type = item_group,
        name = vulcanus,
        order = y,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/vulcanus-planet.png",
        icon_size = 128,
    },
    {
        type = item_subgroup,
        name = is_lava,
        group = vulcanus,
        order = a
    },
    {
        type = item_subgroup,
        name = is_molten,
        group = vulcanus,
        order = b
    },
    {
        type = item_subgroup,
        name = is_plate,
        group = vulcanus,
        order = c
    },
    {
        type = item_subgroup,
        name = is_intermediates,
        group = vulcanus,
        order = d
    },
    {
        type = item_subgroup,
        name = is_pipe,
        group = vulcanus,
        order = e
    },
    {
        type = item_subgroup,
        name = is_pipe_to_ground,
        group = vulcanus,
        order = f
    },
    {
        type = item_subgroup,
        name = is_vulcanus_air,
        group = vulcanus,
        order = g
    },
    {
        type = item_subgroup,
        name = is_calcite,
        group = vulcanus,
        order = h
    },
    {
        type = item_subgroup,
        name = is_tungsten,
        group = vulcanus,
        order = i
    },
    {
        type = item_subgroup,
        name = is_vulcanus_logistics,
        group = vulcanus,
        order = j
    },
    {
        type = item_subgroup,
        name = is_vulcanus_building,
        group = vulcanus,
        order = k
    }
})