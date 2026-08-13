if mods[muluna_mods] then
    lumber_mill = "lumber-mill-muluna"
    data:extend
    ({
        {
            type = item,
            name = lumber_mill,
            subgroup = is_muluna_recipe_tree,
            icon = "__TIMSABA__/graphics/icons/muluna/lumber-mill.png",
            order = z_a,
            place_result = lumber_mill,
            stack_size = 32,
            weight = 31250,
            drop_sound = data_item[assembling_machine_1].drop_sound,
            inventory_move_sound = data_item[assembling_machine_1].inventory_move_sound,
            pick_sound = data_item[assembling_machine_1].pick_sound
        },
        {
            type = recipe,
            name = lumber_mill,
            category = crafting,
            subgroup = is_muluna_recipe_tree,
            icon = "__TIMSABA__/graphics/icons/muluna/lumber-mill.png",
            order = z_a,
            enabled = false,
            auto_recycle = true,
            allow_show = true,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = true,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = saw, amount = 8},
                {type = item, name = basic_circuit_board, amount = 4},
                {type = item, name = steel_plate, amount = 16},
                {type = item, name = stone_brick, amount = 32}
            },
            results = {{type = item, name = lumber_mill, amount = 1}},
            main_product = lumber_mill
        },
        {
            type = assembling_machine,
            name = lumber_mill,
            subgroup = is_muluna_recipe_tree,
            icon = "__TIMSABA__/graphics/icons/muluna/lumber-mill.png",
            order = z_a,
            minable = {mining_time = 1, result = lumber_mill},
            flags = {"placeable-neutral", "placeable-player", "player-creation"},
            max_health = 1000,
            corpse = "assembling-machine-1-remnants",
            dying_explosion = "assembling-machine-1-explosion",
            icon_draw_specification = {shift = {0, -0.3}},
            resistances = {{type = "fire", percent = 70}},
            collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
            selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
            alert_icon_shift = util.by_pixel(0, -12),
            graphics_set =
            {
                animation =
                {
                    layers =
                    {
                        {
                            filename = "__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-shadow.png",
                            priority = high,
                            width = 660,
                            height = 700,
                            frame_count = 1,
                            repeat_count = 80,
                            shift = util.by_pixel(15, 2),
                            scale = 0.3125,
                            draw_as_shadow = false
                        },
                        {
                            filenames = {"__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-animation-1.png", "__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-animation-2.png"},
                            priority = high,
                            width = 525,
                            height = 557,
                            frame_count = 80,
                            line_length = 8,
                            lines_per_file = 8,
                            shift = util.by_pixel(0, 2),
                            scale = 0.3125
                        },
                        {
                            filenames = {"__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-emission-1.png", "__TIMSABA__/graphics/entity/lumber-mill/lumber-mill-hr-emission-2.png"},
                            priority = high,
                            width = 525,
                            height = 557,
                            frame_count = 80,
                            line_length = 8,
                            lines_per_file = 8,
                            shift = util.by_pixel(0, 2),
                            scale = 0.3125,
                            draw_as_glow = true
                        }
                    }
                }
            },
            crafting_categories = {lumber_mill_recipe_category},
            crafting_speed = 4,
            module_slots = 4,
            energy_usage = (240 - 15) .. kW,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 0},
                drain = 15 .. kW
            },
            allowed_effects = {"speed", "consumption", "pollution", "productivity", "quality"},
            effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
            impact_category = "metal",
            working_sound =
            {
                sound = {filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.5, audible_distance_modifier = 0.5},
                fade_in_ticks = 4,
                fade_out_ticks = 20
            }
        }
    })
end