local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local graphics_gleba = "__TIMSABA__/graphics/icons/space-age/gleba/"
jivolite_bacteria = "jivolite-bacteria"
crotinnium_bacteria = "crotinnium-bacteria"
rubyte_bacteria = "rubyte-bacteria"
bobmonium_bacteria = "bobmonium-bacteria"
data:extend
({
    {
        type = item,
        name = jivolite_bacteria,
        subgroup = is_bacteria_ore,
        icon = graphics_gleba .. jivolite_bacteria .. ".png",
        order = b,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {size = 64, filename = graphics_gleba .. jivolite_bacteria .. ".png",   scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. jivolite_bacteria .. "-1.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. jivolite_bacteria .. "-2.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. jivolite_bacteria .. "-3.png", scale = 0.5, mipmap_count = 4}
        },
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        default_import_location = planet_gleba,
        spoil_ticks = 1 * minute,
        spoil_result = ore_jivolite
    },
    {
        type = item,
        name = crotinnium_bacteria,
        subgroup = is_bacteria_ore,
        icon = graphics_gleba .. crotinnium_bacteria .. ".png",
        order = d,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {size = 64, filename = graphics_gleba .. crotinnium_bacteria .. ".png",   scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. crotinnium_bacteria .. "-1.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. crotinnium_bacteria .. "-2.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. crotinnium_bacteria .. "-3.png", scale = 0.5, mipmap_count = 4}
        },
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        default_import_location = planet_gleba,
        spoil_ticks = 1 * minute,
        spoil_result = ore_crotinnium
    },
    {
        type = item,
        name = rubyte_bacteria,
        subgroup = is_bacteria_ore,
        icon = graphics_gleba .. rubyte_bacteria .. ".png",
        order = e,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {size = 64, filename = graphics_gleba .. rubyte_bacteria .. ".png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. rubyte_bacteria .. "-1.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. rubyte_bacteria .. "-2.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. rubyte_bacteria .. "-3.png", scale = 0.5, mipmap_count = 4}
        },
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        default_import_location = planet_gleba,
        spoil_ticks = 1 * minute,
        spoil_result = ore_rubyte
    },
    {
        type = item,
        name = bobmonium_bacteria,
        subgroup = is_bacteria_ore,
        icon = graphics_gleba .. bobmonium_bacteria .. ".png",
        order = f,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {size = 64, filename = graphics_gleba .. bobmonium_bacteria .. ".png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. bobmonium_bacteria .. "-1.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. bobmonium_bacteria .. "-2.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = graphics_gleba .. bobmonium_bacteria .. "-3.png", scale = 0.5, mipmap_count = 4}
        },
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        default_import_location = planet_gleba,
        spoil_ticks = 1 * minute,
        spoil_result = ore_bobmonium
    }
})
TIMSABA.void.freezing_organics(jivolite_bacteria)
TIMSABA.void.freezing_organics(crotinnium_bacteria)
TIMSABA.void.freezing_organics(rubyte_bacteria)
TIMSABA.void.freezing_organics(bobmonium_bacteria)