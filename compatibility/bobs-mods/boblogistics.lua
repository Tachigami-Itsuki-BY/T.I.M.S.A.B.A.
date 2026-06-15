if mods [boblogistics] >= "2.1.0" then
    local TIMSABA_pipepictures = require("lib.pipes").TIMSABA_pipepictures
    local TIMSABA_pipecoverspictures = require("lib.pipes").TIMSABA_pipecoverspictures
    local TIMSABA_pipetogroundpictures = require("lib.pipes").TIMSABA_pipetogroundpictures
    local TIMSABA_pipetoground_visualization = require("lib.pipes").TIMSABA_pipetoground_visualization
    local TIMSABA_pipetoground_disabled_visualizaton = require("lib.pipes").TIMSABA_pipetoground_disabled_visualizaton

    local is_logistic_T4 = "bob-logistic-tier-4"
    local localised_name_T4_transport_belt = "entity-name.bob-turbo-transport-belt"
    local localised_name_T4_underground_belt = "entity-name.bob-turbo-underground-belt"
    local localised_name_T4_splitter = "entity-name.bob-turbo-splitter"
    local belt_drop_move = {filename = "__base__/sound/item/transport-belt-inventory-move.ogg", volume = 0.7}
    local belt_pick = {filename = "__base__/sound/item/transport-belt-inventory-pickup.ogg", volume = 0.7}
    local mechanical_drop_move = {filename = "__base__/sound/item/mechanical-inventory-move.ogg", volume = 0.7}
    local mechanical_pick = {filename = "__base__/sound/item/mechanical-inventory-pickup.ogg", volume = 0.8}
    local hit_effects = require("__base__.prototypes.entity.hit-effects")
    local sounds = require("__base__.prototypes.entity.sounds")
    require("__boblogistics__.prototypes.transport-belt-pictures")
    -- BELT
    data:extend
    ({
        {
            localised_name = {localised_name_T4_transport_belt},
            type = item,
            name = T4_transport_belt,
            subgroup = is_logistic_T4,
            icon = "__boblogistics__/graphics/icons/purple-transport-belt.png",
            icon_size = 32,
            order = a,
            stack_size = 200,
            weight = 5000,
            place_result = T4_transport_belt,
            drop_sound = belt_drop_move,
            inventory_move_sound = belt_drop_move,
            pick_sound = belt_pick
        },
        {
            localised_name = {localised_name_T4_underground_belt},
            type = item,
            name = T4_underground_belt,
            subgroup = is_logistic_T4,
            icon = "__boblogistics__/graphics/icons/purple-transport-belt-to-ground.png",
            icon_size = 32,
            order = b,
            stack_size = 32,
            weight = 31250,
            place_result = T4_underground_belt,
            drop_sound = mechanical_drop_move,
            inventory_move_sound = mechanical_drop_move,
            pick_sound = mechanical_pick
        },
        {
            localised_name = {localised_name_T4_splitter},
            type = item,
            name = T4_splitter,
            subgroup = is_logistic_T4,
            icon = "__boblogistics__/graphics/icons/purple-splitter.png",
            icon_size = 32,
            order = c,
            stack_size = 16,
            weight = 62500,
            place_result = T4_splitter,
            drop_sound = mechanical_drop_move,
            inventory_move_sound = mechanical_drop_move,
            pick_sound = mechanical_pick
        },
        -- RECIPE
        {
            localised_name = {localised_name_T4_transport_belt},
            type = recipe,
            name = T4_transport_belt,
            category = pressing,
            subgroup = is_logistic_T4,
            order = a,
            enabled = false,
            energy_required = 0.5,
            ingredients =
            {
                {type = item, name = titanium_gear_wheel, amount = 4},
                {type = item, name = titanium_bearing, amount = 4},
                {type = item, name = T3_transport_belt, amount = 2},
                {type = item, name = titanium_plate_bob, amount = 2}
            },
            results = {{type = item, name = T4_transport_belt, amount = 2}},
            main_product = T4_transport_belt
        },
        {
            localised_name = {localised_name_T4_underground_belt},
            type = recipe,
            name = T4_underground_belt,
            category = pressing,
            subgroup = is_logistic_T4,
            order = b,
            enabled = false,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = titanium_gear_wheel, amount = 16},
                {type = item, name = titanium_bearing, amount = 16},
                {type = item, name = T3_underground_belt, amount = 2},
                {type = item, name = titanium_plate_bob, amount = 8}
            },
            results = {{type = item, name = T4_underground_belt, amount = 2}},
            main_product = T4_underground_belt
        },
        {
            localised_name = {localised_name_T4_splitter},
            type = recipe,
            name = T4_splitter,
            category = pressing,
            subgroup = is_logistic_T4,
            order = c,
            enabled = false,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = titanium_gear_wheel, amount = 8},
                {type = item, name = titanium_bearing, amount = 8},
                {type = item, name = processing_unit, amount = 1},
                {type = item, name = T3_splitter, amount = 1},
                {type = item, name = titanium_plate_bob, amount = 2}
            },
            results = {{type = item, name = T4_splitter, amount = 1}},
            main_product = T4_splitter
        },
        -- ENTITY
        {
            localised_name = {localised_name_T4_transport_belt},
            type = transport_belt,
            name = T4_transport_belt,
            icon = "__boblogistics__/graphics/icons/purple-transport-belt.png",
            icon_size = 32,
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 0.1, result = T4_transport_belt},
            max_health = 180,
            corpse = "small-remnants",
            damaged_trigger_effect = hit_effects.entity(),
            resistances = {{type = "fire", percent = 50}},
            collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            open_sound = sounds.transport_belt_open,
            close_sound = sounds.transport_belt_close,
            working_sound = {sound = {filename = "__base__/sound/express-transport-belt.ogg", volume = 0.4}, persistent = true},
            animation_speed_coefficient = 32,
            belt_animation_set = bobmods.logistics.purple_belt_animation_set,
            fast_replaceable_group = transport_belt,
            related_underground_belt = T4_underground_belt,
            next_upgrade = T5_transport_belt,
            speed = 0.125,
            connector_frame_sprites = transport_belt_connector_frame_sprites,
            circuit_connector = circuit_connector_definitions["belt"],
            circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
        },
        {
            localised_name = {localised_name_T4_underground_belt},
            type = underground_belt,
            name = T4_underground_belt,
            icon = "__boblogistics__/graphics/icons/purple-transport-belt-to-ground.png",
            icon_size = 32,
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 0.1, result = T4_underground_belt},
            max_health = 180,
            corpse = "small-remnants",
            damaged_trigger_effect = hit_effects.entity(),
            factoriopedia_simulation = {},
            underground_sprite =
            {
                filename = "__core__/graphics/arrows/underground-lines.png",
                priority = high,
                width = 64,
                height = 64,
                x = 64,
                scale = 0.5
            },
            underground_remove_belts_sprite =
            {
                filename = "__core__/graphics/arrows/underground-lines-remove.png",
                priority = high,
                width = 64,
                height = 64,
                x = 64,
                scale = 0.5
            },
            resistances = {{type = "fire", percent = 60}, {type = "impact", percent = 30}},
            collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            open_sound = sounds.machine_open,
            close_sound = sounds.machine_close,
            animation_speed_coefficient = 32,
            belt_animation_set = bobmods.logistics.purple_belt_animation_set,
            fast_replaceable_group = transport_belt,
            next_upgrade = T5_underground_belt,
            speed = 0.125,
            max_distance = 20,
            structure =
            {
                direction_in =
                {
                    sheet =
                    {
                        filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
                        priority = extra_high,
                        width = 192,
                        height = 192,
                        y = 192,
                        scale = 0.5
                    }
                },
                direction_out =
                {
                    sheet =
                    {
                        filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
                        priority = extra_high,
                        width = 192,
                        height = 192,
                        scale = 0.5
                    }
                },
                direction_in_side_loading =
                {
                    sheet =
                    {
                        filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
                        priority = extra_high,
                        width = 192,
                        height = 192,
                        y = 192 * 3,
                        scale = 0.5
                    }
                },
                direction_out_side_loading =
                {
                    sheet =
                    {
                        filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
                        priority = extra_high,
                        width = 192,
                        height = 192,
                        y = 192 * 2,
                        scale = 0.5
                    }
                },
                back_patch =
                {
                    sheet =
                    {
                        filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
                        priority = extra_high,
                        width = 192,
                        height = 192,
                        scale = 0.5
                    }
                },
                front_patch =
                {
                    sheet =
                    {
                        filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
                        priority = extra_high,
                        width = 192,
                        height = 192,
                        scale = 0.5
                    }
                }
            }
        },
        {
            localised_name = {localised_name_T4_splitter},
            type = splitter,
            name = T4_splitter,
            icon = "__boblogistics__/graphics/icons/purple-splitter.png",
            icon_size = 32,
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 0.1, result = T4_splitter},
            max_health = 200,
            corpse = "medium-remnants",
            damaged_trigger_effect = hit_effects.entity(),
            resistances = {{ type = "fire", percent = 60}},
            collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
            selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
            open_sound = sounds.machine_open,
            close_sound = sounds.machine_close,
            animation_speed_coefficient = 32,
            structure_animation_speed_coefficient = 1.2,
            structure_animation_movement_cooldown = 10,
            icon_draw_specification = {scale = 0.5},
            belt_animation_set = bobmods.logistics.purple_belt_animation_set,
            fast_replaceable_group = transport_belt,
            next_upgrade = T5_splitter,
            speed = 0.125,
            structure =
            {
                north =
                {
                    filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-north.png",
                    frame_count = 32,
                    line_length = 8,
                    priority = extra_high,
                    width = 160,
                    height = 70,
                    shift = util.by_pixel(7, 0),
                    scale = 0.5
                },
                east =
                {
                    filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-east.png",
                    frame_count = 32,
                    line_length = 8,
                    priority = extra_high,
                    width = 90,
                    height = 160,
                    shift = util.by_pixel(4, -6),
                    scale = 0.5
                },
                south =
                {
                    filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-south.png",
                    frame_count = 32,
                    line_length = 8,
                    priority = extra_high,
                    width = 164,
                    height = 64,
                    shift = util.by_pixel(4, 0),
                    scale = 0.5
                },
                west =
                {
                    filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-west.png",
                    frame_count = 32,
                    line_length = 8,
                    priority = extra_high,
                    width = 90,
                    height = 150,
                    shift = util.by_pixel(6, -4),
                    scale = 0.5
                }
            },
            circuit_wire_max_distance = splitter_circuit_wire_max_distance,
            circuit_connector = circuit_connector_definitions["splitter"],
            default_input_left_condition = {first = {type = "virtual", name = "signal-I"}, comparator = "<", second = 0},
            default_input_right_condition = {first = {type = "virtual", name = "signal-I"}, comparator = ">", second = 0},
            default_output_left_condition = {first = {type = "virtual", name = "signal-O"}, comparator = "<", second = 0},
            default_output_right_condition = {first = {type = "virtual", name = "signal-O"}, comparator = ">", second = 0}
        }
    })

    local pipe_drop_move = {filename = "__base__/sound/item/metal-small-inventory-move.ogg", volume = 0.8}
    local pipe_pick = {filename = "__base__/sound/item/metal-small-inventory-pickup.ogg", volume = 0.8}
    -- PIPE
    data:extend
    ({
        {
            type = item,
            name = stone_pipe,
            subgroup = is_pipe,
            icon = "__boblogistics__/graphics/icons/pipe/stone-pipe.png",
            order = c,
            stack_size = 200,
            weight = 5000,
            place_result = stone_pipe,
            drop_sound = pipe_drop_move,
            inventory_move_sound = pipe_drop_move,
            pick_sound = pipe_pick
        },
        {
            type = item,
            name = stone_pipe_to_ground,
            subgroup = is_pipe_to_ground,
            icon = "__boblogistics__/graphics/icons/pipe/stone-pipe-to-ground.png",
            order = c,
            stack_size = 32,
            weight = 31250,
            place_result = stone_pipe_to_ground,
            drop_sound = pipe_drop_move,
            inventory_move_sound = pipe_drop_move,
            pick_sound = pipe_pick
        },
        --[[{
            type = item,
            name = ceramic_pipe,
            subgroup = is_pipe,
            icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe.png",
            order = i,
            stack_size = 200,
            weight = 5000,
            place_result = ceramic_pipe,
            drop_sound = pipe_drop_move,
            inventory_move_sound = pipe_drop_move,
            pick_sound = pipe_pick
        },
        {
            type = item,
            name = ceramic_pipe_to_ground,
            subgroup = is_pipe_to_ground,
            icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe-to-ground.png",
            order = i,
            stack_size = 32,
            weight = 31250,
            place_result = ceramic_pipe_to_ground,
            drop_sound = pipe_drop_move,
            inventory_move_sound = pipe_drop_move,
            pick_sound = pipe_pick
        },]]
        {
            type = item,
            name = nitinol_pipe,
            subgroup = is_pipe,
            icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe.png",
            order = k,
            stack_size = 200,
            weight = 5000,
            place_result = nitinol_pipe,
            drop_sound = pipe_drop_move,
            inventory_move_sound = pipe_drop_move,
            pick_sound = pipe_pick
        },
        {
            type = item,
            name = nitinol_pipe_to_ground,
            subgroup = is_pipe_to_ground,
            icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe-to-ground.png",
            order = k,
            stack_size = 32,
            weight = 31250,
            place_result = nitinol_pipe_to_ground,
            drop_sound = pipe_drop_move,
            inventory_move_sound = pipe_drop_move,
            pick_sound = pipe_pick
        },
        -- RECIPE
        {
            type = recipe,
            name = stone_pipe,
            category = crafting,
            subgroup = is_pipe,
            order = c,
            enabled = false,
            energy_required = 0.5,
            ingredients = {{type = item, name = stone_brick, amount = 1}},
            results = {{type = item, name = stone_pipe, amount = 1}},
            main_product = stone_pipe
        },
        {
            type = recipe,
            name = stone_pipe_to_ground,
            category = crafting,
            subgroup = is_pipe_to_ground,
            order = c,
            enabled = false,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = stone_pipe, amount = 8},
                {type = item, name = stone_brick, amount = 4}
            },
            results = {{type = item, name = stone_pipe_to_ground, amount = 2}},
            main_product = stone_pipe_to_ground
        },
        --[[{
            type = recipe,
            name = ceramic_pipe,
            category = crafting,
            subgroup = is_pipe,
            order = i,
            enabled = false,
            energy_required = 0.5,
            ingredients = {{type = item, name = silicon_nitride_bob, amount = 1}},
            results = {{type = item, name = ceramic_pipe, amount = 1}},
            main_product = ceramic_pipe
        },
        {
            type = recipe,
            name = ceramic_pipe_to_ground,
            category = crafting,
            subgroup = is_pipe_to_ground,
            order = i,
            enabled = false,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = ceramic_pipe, amount = 32},
                {type = item, name = silicon_nitride_bob, amount = 4}
            },
            results = {{type = item, name = ceramic_pipe_to_ground, amount = 2}},
            main_product = ceramic_pipe_to_ground
        },]]
        {
            type = recipe,
            name = nitinol_pipe,
            category = crafting,
            subgroup = is_pipe,
            order = k,
            enabled = false,
            energy_required = 0.5,
            ingredients = {{type = item, name = nitinol_plate_bob, amount = 1}},
            results = {{type = item, name = nitinol_pipe, amount = 1}},
            main_product = nitinol_pipe
        },
        {
            type = recipe,
            name = nitinol_pipe_to_ground,
            category = crafting,
            subgroup = is_pipe_to_ground,
            order = k,
            enabled = false,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = nitinol_pipe, amount = 40},
                {type = item, name = nitinol_plate_bob, amount = 4}
            },
            results = {{type = item, name = nitinol_pipe_to_ground, amount = 2}},
            main_product = nitinol_pipe_to_ground
        },
        -- ENTITY
        {
            type = pipe,
            name = stone_pipe,
            subgroup = is_pipe,
            icon = "__boblogistics__/graphics/icons/pipe/stone-pipe.png",
            icon_size = 64,
            order = c,
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 0.5, result = stone_pipe},
            max_health = 100,
            corpse = "pipe-remnants",
            dying_explosion = "pipe-explosion",
            icon_draw_specification = {scale = 0.5},
            resistances = {{type = "fire", percent = 90}},
            fast_replaceable_group = pipe,
            collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            damaged_trigger_effect = hit_effects.entity(),
            fluid_box =
            {
                volume = 100,
                pipe_connections =
                {
                    {position = {0, 0}, direction = defines.direction.north},
                    {position = {0, 0}, direction = defines.direction.east},
                    {position = {0, 0}, direction = defines.direction.south},
                    {position = {0, 0}, direction = defines.direction.west}
                },
                hide_connection_info = true
            },
            pictures = TIMSABA_pipepictures("stone"),
            impact_category = "metal",
            working_sound = sounds.pipe,
            open_sound = sounds.metal_small_open,
            close_sound = sounds.metal_small_close,
            horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
            vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
        },
        {
            type = pipe_to_ground,
            name = stone_pipe_to_ground,
            subgroup = is_pipe_to_ground,
            icon = "__boblogistics__/graphics/icons/pipe/stone-pipe-to-ground.png",
            icon_size = 64,
            order = c,
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 0.5, result = stone_pipe_to_ground},
            max_health = 150,
            corpse = "pipe-to-ground-remnants",
            dying_explosion = "pipe-to-ground-explosion",
            icon_draw_specification = {scale = 0.5},
            resistances = {{type = "fire", percent = 80}},
            fast_replaceable_group = pipe,
            collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            fluid_box =
            {
                volume = 100,
                pipe_covers = TIMSABA_pipecoverspictures("stone"),
                pipe_connections =
                {
                    {
                        position = {0, 0},
                        direction = defines.direction.north
                    },
                    {
                        position = {0, 0},
                        direction = defines.direction.south,
                        connection_type = "underground",
                        max_underground_distance = 8
                    }
                },
                hide_connection_info = true
            },
            working_sound = sounds.pipe,
            open_sound = sounds.metal_small_open,
            close_sound = sounds.metal_small_close,
            pictures = TIMSABA_pipetogroundpictures("stone"),
            visualization = TIMSABA_pipetoground_visualization(),
            disabled_visualization = TIMSABA_pipetoground_disabled_visualizaton(),
            impact_category = "metal",
            factoriopedia_simulation = {}
        },
        --[[{
            type = pipe,
            name = ceramic_pipe,
            subgroup = is_pipe,
            icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe.png",
            icon_size = 64,
            order = i,
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 0.5, result = ceramic_pipe},
            max_health = 250,
            corpse = "pipe-remnants",
            dying_explosion = "pipe-explosion",
            icon_draw_specification = {scale = 0.5},
            resistances = {{type = "fire", percent = 90}},
            fast_replaceable_group = pipe,
            collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            damaged_trigger_effect = hit_effects.entity(),
            fluid_box =
            {
                volume = 100,
                pipe_connections =
                {
                    {position = {0, 0}, direction = defines.direction.north},
                    {position = {0, 0}, direction = defines.direction.east},
                    {position = {0, 0}, direction = defines.direction.south},
                    {position = {0, 0}, direction = defines.direction.west}
                },
                hide_connection_info = true
            },
            pictures = TIMSABA_pipepictures("ceramic"),
            impact_category = "metal",
            working_sound = sounds.pipe,
            open_sound = sounds.metal_small_open,
            close_sound = sounds.metal_small_close,
            horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
            vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
        },
        {
            type = pipe_to_ground,
            name = ceramic_pipe_to_ground,
            subgroup = is_pipe_to_ground,
            icon = ".png",
            icon_size = 64,
            order = i,
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 0.5, result = ceramic_pipe_to_ground},
            max_health = 300,
            corpse = "pipe-to-ground-remnants",
            dying_explosion = "pipe-to-ground-explosion",
            icon_draw_specification = {scale = 0.5},
            resistances = {{type = "fire", percent = 80}},
            fast_replaceable_group = pipe,
            collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            fluid_box =
            {
                volume = 100,
                pipe_covers = TIMSABA_pipecoverspictures("ceramic"),
                pipe_connections =
                {
                    {
                        position = {0, 0},
                        direction = defines.direction.north
                    },
                    {
                        position = {0, 0},
                        direction = defines.direction.south,
                        connection_type = "underground",
                        max_underground_distance = 32
                    }
                },
                hide_connection_info = true
            },
            working_sound = sounds.pipe,
            open_sound = sounds.metal_small_open,
            close_sound = sounds.metal_small_close,
            pictures = TIMSABA_pipetogroundpictures("ceramic"),
            visualization = TIMSABA_pipetoground_visualization(),
            disabled_visualization = TIMSABA_pipetoground_disabled_visualizaton(),
            impact_category = "metal",
            factoriopedia_simulation = {}
        },]]
        {
            type = pipe,
            name = nitinol_pipe,
            subgroup = is_pipe,
            icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe.png",
            icon_size = 64,
            order = k,
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 0.5, result = nitinol_pipe},
            max_health = 300,
            corpse = "pipe-remnants",
            dying_explosion = "pipe-explosion",
            icon_draw_specification = {scale = 0.5},
            resistances = {{type = "fire", percent = 90}},
            fast_replaceable_group = pipe,
            collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            damaged_trigger_effect = hit_effects.entity(),
            fluid_box =
            {
                volume = 100,
                pipe_connections =
                {
                    {position = {0, 0}, direction = defines.direction.north},
                    {position = {0, 0}, direction = defines.direction.east},
                    {position = {0, 0}, direction = defines.direction.south},
                    {position = {0, 0}, direction = defines.direction.west}
                },
                hide_connection_info = true
            },
            pictures = TIMSABA_pipepictures("nitinol"),
            impact_category = "metal",
            working_sound = sounds.pipe,
            open_sound = sounds.metal_small_open,
            close_sound = sounds.metal_small_close,
            horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
            vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
        },
        {
            type = pipe_to_ground,
            name = nitinol_pipe_to_ground,
            subgroup = is_pipe_to_ground,
            icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe-to-ground.png",
            icon_size = 64,
            order = k,
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 0.5, result = nitinol_pipe_to_ground},
            max_health = 350,
            corpse = "pipe-to-ground-remnants",
            dying_explosion = "pipe-to-ground-explosion",
            icon_draw_specification = {scale = 0.5},
            resistances = {{type = "fire", percent = 80}},
            fast_replaceable_group = pipe,
            collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            fluid_box =
            {
                volume = 100,
                pipe_covers = TIMSABA_pipecoverspictures("nitinol"),
                pipe_connections =
                {
                    {
                        position = {0, 0},
                        direction = defines.direction.north
                    },
                    {
                        position = {0, 0},
                        direction = defines.direction.south,
                        connection_type = "underground",
                        max_underground_distance = 40
                    }
                },
                hide_connection_info = true
            },
            working_sound = sounds.pipe,
            open_sound = sounds.metal_small_open,
            close_sound = sounds.metal_small_close,
            pictures = TIMSABA_pipetogroundpictures("nitinol"),
            visualization = TIMSABA_pipetoground_visualization(),
            disabled_visualization = TIMSABA_pipetoground_disabled_visualizaton(),
            impact_category = "metal",
            factoriopedia_simulation = {}
        }
    })
    if feature_flags["freezing"] then
        data_pipe[stone_pipe].heating_energy = 1 .. kW
        --data_pipe[ceramic_pipe].heating_energy = 1 .. kW
        data_pipe[nitinol_pipe].heating_energy = 1 .. kW
        data_pipe_to_ground[stone_pipe_to_ground].heating_energy = 100 .. kW
        --data_pipe_to_ground[ceramic_pipe_to_ground].heating_energy = 250 .. kW
        data_pipe_to_ground[nitinol_pipe_to_ground].heating_energy = 300 .. kW
        if mods[space_age] then
            local function frozenpatch()
                local result = util.table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"].frozen_patch)
                return result
            end
            data_pipe_to_ground[stone_pipe_to_ground].frozen_patch = frozenpatch()
            --data_pipe_to_ground[ceramic_pipe_to_ground].frozen_patch = frozenpatch()
            data_pipe_to_ground[nitinol_pipe_to_ground].frozen_patch = frozenpatch()
            local function frozenpatch2()
                local result = util.table.deepcopy(data.raw.pipe.pipe.fluid_box.pipe_covers_frozen)
                return result
            end
            data_pipe[stone_pipe].fluid_box.pipe_covers_frozen = frozenpatch2()
            --data_pipe[ceramic_pipe].fluid_box.pipe_covers_frozen = frozenpatch2()
            data_pipe[nitinol_pipe].fluid_box.pipe_covers_frozen = frozenpatch2()
            data_pipe_to_ground[stone_pipe_to_ground].fluid_box.pipe_covers_frozen = frozenpatch2()
            --data_pipe_to_ground[ceramic_pipe_to_ground].fluid_box.pipe_covers_frozen = frozenpatch2()
            data_pipe_to_ground[nitinol_pipe_to_ground].fluid_box.pipe_covers_frozen = frozenpatch2()
        end
    end

    if settings.startup["bobmods-logistics-ugdistanceoverhaul"].value == true then
        bobmods.logistics.set_pipe_distance(stone_pipe_to_ground, 1)
        --bobmods.logistics.set_pipe_distance(ceramic_pipe_to_ground, 4)
        bobmods.logistics.set_pipe_distance(nitinol_pipe_to_ground, 5)
    end

    if not reskins or not reskins.lib then
        return
    end

    local icons_pipe =
    {
        {name = stone_pipe,    type = item,   color = util.color("#cfcfcf"), number = 1},
        {name = stone_pipe,    type = recipe, color = util.color("#cfcfcf"), number = 1},
        {name = stone_pipe,    type = pipe,   color = util.color("#cfcfcf"), number = 1},
        {name = brass_pipe,    type = item,   color = util.color("#f9c854"), number = 3},
        {name = brass_pipe,    type = recipe, color = util.color("#f9c854"), number = 3},
        {name = brass_pipe,    type = pipe,   color = util.color("#f9c854"), number = 3},
        {name = ceramic_pipe,  type = item,   color = util.color("#8f7967"), number = 4},
        {name = ceramic_pipe,  type = recipe, color = util.color("#8f7967"), number = 4},
        {name = ceramic_pipe,  type = pipe,   color = util.color("#8f7967"), number = 4},
        {name = tungsten_pipe, type = item,   color = util.color("#3b3b3b"), number = 4},
        {name = tungsten_pipe, type = recipe, color = util.color("#3b3b3b"), number = 4},
        {name = tungsten_pipe, type = pipe,   color = util.color("#3b3b3b"), number = 4},
        {name = nitinol_pipe,  type = item,   color = util.color("#706f6b"), number = 5},
        {name = nitinol_pipe,  type = recipe, color = util.color("#706f6b"), number = 5},
        {name = nitinol_pipe,  type = pipe,   color = util.color("#706f6b"), number = 5},

        {name = stone_pipe_to_ground,    type = item,           color = util.color("#cfcfcf"), number = 1},
        {name = stone_pipe_to_ground,    type = recipe,         color = util.color("#cfcfcf"), number = 1},
        {name = stone_pipe_to_ground,    type = pipe_to_ground, color = util.color("#cfcfcf"), number = 1},
        {name = brass_pipe_to_ground,    type = item,           color = util.color("#f9c854"), number = 3},
        {name = brass_pipe_to_ground,    type = recipe,         color = util.color("#f9c854"), number = 3},
        {name = brass_pipe_to_ground,    type = pipe_to_ground, color = util.color("#f9c854"), number = 3},
        {name = ceramic_pipe_to_ground,  type = item,           color = util.color("#8f7967"), number = 4},
        {name = ceramic_pipe_to_ground,  type = recipe,         color = util.color("#8f7967"), number = 4},
        {name = ceramic_pipe_to_ground,  type = pipe_to_ground, color = util.color("#8f7967"), number = 4},
        {name = tungsten_pipe_to_ground, type = item,           color = util.color("#3b3b3b"), number = 4},
        {name = tungsten_pipe_to_ground, type = recipe,         color = util.color("#3b3b3b"), number = 4},
        {name = tungsten_pipe_to_ground, type = pipe,           color = util.color("#3b3b3b"), number = 4},
        {name = nitinol_pipe_to_ground,  type = item,           color = util.color("#706f6b"), number = 5},
        {name = nitinol_pipe_to_ground,  type = recipe,         color = util.color("#706f6b"), number = 5},
        {name = nitinol_pipe_to_ground,  type = pipe_to_ground, color = util.color("#706f6b"), number = 5}
    }
    for _, info in ipairs(icons_pipe) do
        local proto_type = data.raw[info.type]
        if proto_type[info.name] then
            local prototype = proto_type[info.name]
            local clean_name = info.name
            clean_name = string.gsub(clean_name, "bob%-", "")
            clean_name = string.gsub(clean_name, "timsaba%-", "")

            -- Определяем подпапку графики в зависимости от того, относится ли объект к pipe_to_ground
            local folder = pipe
            if info.type == pipe_to_ground or string.find(info.name, "to%-ground") then
                folder = pipe_to_ground
            end

            -- Сбрасываем старую иконку и ставим новую
            prototype.icon = nil
            prototype.icons =
            {
                {
                    icon = "__reskins-bobs__/graphics/icons/logistics/" .. folder .. "/" .. clean_name .. "-icon.png",
                    icon_size = 64
                }
            }

            reskins.lib.tiers.add_tier_labels_to_prototype_by_name(info.number, info.name, info.type)

            -- Создаем частицы только для физических труб на земле
            if info.type == pipe or info.type == pipe_to_ground then
                reskins.lib.create_particle(info.name, info.type, reskins.lib.particle_index["medium"], 1, info.color)
            end
        end
    end

    data_item[ceramic_pipe].drop_sound = pipe_drop_move
    data_item[ceramic_pipe].inventory_move_sound = pipe_drop_move
    data_item[ceramic_pipe].pick_sound = pipe_pick
    data_pipe[ceramic_pipe].pictures = TIMSABA_pipepictures("ceramic")

    data_item[ceramic_pipe_to_ground].drop_sound = pipe_drop_move
    data_item[ceramic_pipe_to_ground].inventory_move_sound = pipe_drop_move
    data_item[ceramic_pipe_to_ground].pick_sound = pipe_pick
    data_pipe_to_ground[ceramic_pipe_to_ground].fluid_box.pipe_covers = TIMSABA_pipecoverspictures("ceramic")
    data_pipe_to_ground[ceramic_pipe_to_ground].pictures = TIMSABA_pipetogroundpictures("ceramic")
    data_pipe_to_ground[ceramic_pipe_to_ground].visualization = TIMSABA_pipetoground_visualization()
    data_pipe_to_ground[ceramic_pipe_to_ground].disabled_visualization = TIMSABA_pipetoground_disabled_visualizaton()
    --[[-- TECHNOLOGY
    if not data_technology[tech_logistics_4] then
        data:extend
        ({
            {
                localised_name = {"technology-name.logistics-4"},
                localised_description = {"technology-description.logistics"},
                type = technology,
                name = tech_logistics_4,
                icon = "__boblogistics__/graphics/icons/technology/logistics-4.png",
                icon_size = 128,
                prerequisites = {tech_logistics_3, tech_titanium_processing, processing_unit},
                effects =
                {
                    {type = unlock_recipe, recipe = T4_transport_belt},
                    {type = unlock_recipe, recipe = T4_underground_belt},
                    {type = unlock_recipe, recipe = T4_splitter}
                },
                unit =
                {
                    count = 64,
                    ingredients =
                    {
                        {automation_science_pack, 1},
                        {logistic_science_pack, 1},
                        {chemical_science_pack, 1}
                    },
                    time = 16
                }
            }
        })
        if mods [bobtech] then
            table.insert(data_technology[tech_logistics_4].prerequisites, transport_science_pack)
            table.insert(data_technology[tech_logistics_4].unit.ingredients, {transport_science_pack, 1})
        end
        if mods [loaders_modernized_integrations] then
            table.insert(data_technology[tech_logistics_4].effects, {type = unlock_recipe, recipe = T4_loader})
        end
    else
        data_technology[tech_logistics_4].effects =
        {
            {type = unlock_recipe, recipe = T4_transport_belt},
            {type = unlock_recipe, recipe = T4_underground_belt},
            {type = unlock_recipe, recipe = T4_splitter}
        }
        if mods [loaders_modernized_integrations] then
            table.insert(data_technology[tech_logistics_4].effects, {type = unlock_recipe, recipe = T4_loader})
        end
    end]]
end