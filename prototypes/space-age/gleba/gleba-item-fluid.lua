local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
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
        icon = "__TIMSABA__/graphics/icons/space-age/gleba/jivolite-bacteria.png",
        order = b,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/jivolite-bacteria.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/jivolite-bacteria-1.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/jivolite-bacteria-2.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/jivolite-bacteria-3.png", scale = 0.5, mipmap_count = 4}
        },
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        default_import_location = planet_gleba,
        spoil_ticks = 1 * minute,
        spoil_result = jivolite
    },
    {
        type = item,
        name = crotinnium_bacteria,
        subgroup = is_bacteria_ore,
        icon = "__TIMSABA__/graphics/icons/space-age/gleba/crotinnium-bacteria.png",
        order = d,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/crotinnium-bacteria.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/crotinnium-bacteria-1.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/crotinnium-bacteria-2.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/crotinnium-bacteria-3.png", scale = 0.5, mipmap_count = 4}
        },
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        default_import_location = planet_gleba,
        spoil_ticks = 1 * minute,
        spoil_result = crotinnium
    },
    {
        type = item,
        name = rubyte_bacteria,
        subgroup = is_bacteria_ore,
        icon = "__TIMSABA__/graphics/icons/space-age/gleba/rubyte-bacteria.png",
        order = e,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/rubyte-bacteria.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/rubyte-bacteria-1.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/rubyte-bacteria-2.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/rubyte-bacteria-3.png", scale = 0.5, mipmap_count = 4}
        },
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        default_import_location = planet_gleba,
        spoil_ticks = 1 * minute,
        spoil_result = rubyte
    },
    {
        type = item,
        name = bobmonium_bacteria,
        subgroup = is_bacteria_ore,
        icon = "__TIMSABA__/graphics/icons/space-age/gleba/bobmonium-bacteria.png",
        order = f,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/bobmonium-bacteria.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/bobmonium-bacteria-1.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/bobmonium-bacteria-2.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__TIMSABA__/graphics/icons/space-age/gleba/bobmonium-bacteria-3.png", scale = 0.5, mipmap_count = 4}
        },
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        default_import_location = planet_gleba,
        spoil_ticks = 1 * minute,
        spoil_result = bobmonium
    }
})

--[[
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/gleba/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/gleba/.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})
]]