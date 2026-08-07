if mods[tellus_mods] then
    if settings.startup[setting_dye_secondary_color].value then
        -- PIPES
        if settings.startup[setting_dye_pipes].value then
            local TIMSABA_pipepictures = require("lib.pipes").TIMSABA_pipepictures
            local TIMSABA_pipecoverspictures = require("lib.pipes").TIMSABA_pipecoverspictures
            local TIMSABA_pipetogroundpictures = require("lib.pipes").TIMSABA_pipetogroundpictures
            local TIMSABA_pipetoground_visualization = require("lib.pipes").TIMSABA_pipetoground_visualization
            local TIMSABA_pipetoground_disabled_visualizaton = require("lib.pipes").TIMSABA_pipetoground_disabled_visualizaton

            local hit_effects = require("__base__.prototypes.entity.hit-effects")
            local sounds = require("__base__.prototypes.entity.sounds")

            local simulations = require("prototypes.factoriopedia-simulations")

            local function make_pipe_and_to_ground(color, order, simulation)
                return
                data.extend
                ({
                    {
                        type = pipe,
                        name = color .. "-pipe",
                        subgroup = is_tellus_pipe,
                        icon = "__TIMSABA__/graphics/icons/tellus/" .. color .. "-pipe.png",
                        icon_size = 64,
                        order = order,
                        flags = {"placeable-neutral", "player-creation"},
                        minable = {mining_time = 0.1, result = color .. "-pipe"},
                        max_health = 100,
                        corpse = "pipe-remnants",
                        dying_explosion = "pipe-explosion",
                        icon_draw_specification = {scale = 0.5},
                        resistances =
                        {
                            {
                                type = "fire",
                                percent = 80
                            },
                            {
                                type = "impact",
                                percent = 30
                            }
                        },
                        fast_replaceable_group = pipe,
                        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
                        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
                        damaged_trigger_effect = hit_effects.entity(),
                        fluid_box =
                        {
                            volume = 100,
                            pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
                            pipe_connections =
                            {
                                {direction = defines.direction.north, position = {0, 0}, connection_category = color .. "-pipe"},
                                {direction = defines.direction.east, position = {0, 0}, connection_category = color .. "-pipe"},
                                {direction = defines.direction.south, position = {0, 0}, connection_category = color .. "-pipe"},
                                {direction = defines.direction.west, position = {0, 0}, connection_category = color .. "-pipe"},
                            },
                            hide_connection_info = true
                        },
                        pictures = TIMSABA_pipepictures(color),
                        impact_category = "metal",
                        working_sound = sounds.pipe,
                        open_sound = sounds.metal_small_open,
                        close_sound = sounds.metal_small_close,
                        horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
                        vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
                    },
                    {
                        type = pipe_to_ground,
                        name = color .. "-pipe-to-ground",
                        subgroup = is_tellus_pipe_to_ground,
                        icon = "__TIMSABA__/graphics/icons/tellus/" .. color .. "-pipe-to-ground.png",
                        icon_size = 64,
                        order = order,
                        flags = {"placeable-neutral", "player-creation"},
                        minable = {mining_time = 0.1, result = color .. "-pipe-to-ground"},
                        max_health = 150,
                        corpse = "pipe-to-ground-remnants",
                        dying_explosion = "pipe-to-ground-explosion",
                        icon_draw_specification = {scale = 0.5},
                        resistances =
                        {
                            {
                                type = "fire",
                                percent = 80
                            },
                            {
                                type = "impact",
                                percent = 40
                            }
                        },
                        fast_replaceable_group = pipe,
                        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
                        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
                        damaged_trigger_effect = hit_effects.entity(),
                        fluid_box =
                        {
                            volume = 100,
                            pipe_covers = pipecoverspictures(),
                            pipe_connections =
                            {
                                {
                                    position = {0, 0},
                                    direction = defines.direction.north,
                                    connection_category = {"default", color .. "-pipe"}
                                },
                                {
                                    position = {0, 0},
                                    direction = defines.direction.south,
                                    connection_type = "underground",
                                    max_underground_distance = 8,
                                    connection_category = color .. "-pipe",
                                }
                            },
                            hide_connection_info = true
                        },
                        working_sound = sounds.pipe,
                        open_sound = sounds.metal_small_open,
                        close_sound = sounds.metal_small_close,
                        pictures = TIMSABA_pipetogroundpictures(color),
                        visualization = TIMSABA_pipetoground_visualization(),
                        disabled_visualization = TIMSABA_pipetoground_disabled_visualizaton(),
                        impact_category = "metal",
                        factoriopedia_simulation = simulation
                    }
                })
            end
            make_pipe_and_to_ground("orange", a, simulations.factoriopedia_orange_pipe_to_ground)
            make_pipe_and_to_ground("black", z, simulations.factoriopedia_black_pipe_to_ground)
        end

        if settings.startup[setting_rebalance_belts_and_pipes].value == false then
            data_pipe_to_ground[orange_pipe_to_ground].fluid_box.pipe_connections[2].max_underground_distance = 11
            data_pipe_to_ground[black_pipe_to_ground].fluid_box.pipe_connections[2].max_underground_distance = 11
        end

        -- STONE PATH
        if settings.startup[setting_dye_stone_path].value then
            local sounds = require("__base__/prototypes/entity/sounds")
            local tile_sounds = require("__base__/prototypes/tile/tile-sounds")
            local tile_trigger_effects = require("__base__/prototypes/tile/tile-trigger-effects")
            local tile_graphics = require("__base__/prototypes/tile/tile-graphics")
            local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout

            local stone_path_vehicle_speed_modifier = 1.1

            local stone_path_transitions =
            {
                {
                    to_tiles = water_tile_type_names,
                    transition_group = water_transition_group_id,

                    spritesheet = "__base__/graphics/terrain/water-transitions/stone-path.png",
                    layout = tile_spritesheet_layout.transition_8_8_8_4_4,
                    background_enabled = false,
                    effect_map_layout =
                    {
                        spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-mask.png",
                        inner_corner_count = 1,
                        outer_corner_count = 1,
                        side_count = 1,
                        u_transition_count = 1,
                        o_transition_count = 1
                    }
                },
                stone_path_to_out_of_map_transition
            }

            local stone_path_transitions_between_transitions =
            {
                {
                    transition_group1 = default_transition_group_id,
                    transition_group2 = water_transition_group_id,

                    spritesheet = "__base__/graphics/terrain/water-transitions/stone-path-transitions.png",
                    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
                    background_enabled = false,
                    effect_map_layout =
                    {
                        spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-to-land-mask.png",
                        o_transition_count = 0
                    }
                },
                {
                    transition_group1 = default_transition_group_id,
                    transition_group2 = out_of_map_transition_group_id,

                    background_layer_offset = 1,
                    background_layer_group = "zero",
                    offset_background_layer_by_tile_layer = true,

                    spritesheet = "__base__/graphics/terrain/out-of-map-transition/stone-path-out-of-map-transition-b.png",
                    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
                    mask_enabled = false
                },
                {
                    transition_group1 = water_transition_group_id,
                    transition_group2 = out_of_map_transition_group_id,

                    background_layer_offset = 1,
                    background_layer_group = "zero",
                    offset_background_layer_by_tile_layer = true,

                    spritesheet = "__base__/graphics/terrain/out-of-map-transition/stone-path-shore-out-of-map-transition.png",
                    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
                    mask_enabled = false,
                    effect_map_layout =
                    {
                        spritesheet = "__base__/graphics/terrain/effect-maps/water-stone-to-out-of-map-mask.png",
                        u_transition_count = 0,
                        o_transition_count = 0
                    }
                }
            }

            local function make_stone_path(color, order, color_code)
                return
                data.extend
                ({
                    {
                        type = tile,
                        name = color .. "-stone-path",
                        subgroup = is_tellus_stone_brick,
                        order = order,
                        needs_correction = false,
                        minable = {mining_time = 0.1, result = color .. "-stone-brick"},
                        transition_merges_with_tile = "stone-path",
                        mined_sound = sounds.deconstruct_bricks(0.8),
                        collision_mask = {layers = {ground_tile = true}},
                        walking_speed_modifier = 1.3,
                        layer = 11,
                        layer_group = "ground-artificial",
                        decorative_removal_probability = 0.15,
                        variants =
                        {
                            main =
                            {
                                {
                                    picture = "__TIMSABA__/graphics/terrain/stone-path/" .. color .. "-stone-path/stone-path-1.png",
                                    count = 16,
                                    size = 1,
                                    scale = 0.5
                                },
                                {
                                    picture = "__TIMSABA__/graphics/terrain/stone-path/" .. color .. "-stone-path/stone-path-2.png",
                                    count = 16,
                                    size = 2,
                                    probability = 0.39,
                                    scale = 0.5
                                },
                                {
                                    picture = "__TIMSABA__/graphics/terrain/stone-path/" .. color .. "-stone-path/stone-path-4.png",
                                    count = 16,
                                    size = 4,
                                    probability = 1,
                                    scale = 0.5
                                }
                            },
                            transition =
                            {
                                overlay_layout =
                                {
                                    inner_corner =
                                    {
                                        spritesheet = "__TIMSABA__/graphics/terrain/stone-path/" .. color .. "-stone-path/stone-path-inner-corner.png",
                                        count = 16,
                                        tile_height = 2,
                                        scale = 0.5
                                    },
                                    outer_corner =
                                    {
                                        spritesheet = "__TIMSABA__/graphics/terrain/stone-path/" .. color .. "-stone-path/stone-path-outer-corner.png",
                                        count = 8,
                                        tile_height = 2,
                                        scale = 0.5
                                    },
                                    side =
                                    {
                                        spritesheet = "__TIMSABA__/graphics/terrain/stone-path/" .. color .. "-stone-path/stone-path-side.png",
                                        count = 16,
                                        tile_height = 2,
                                        scale = 0.5
                                    },
                                    u_transition =
                                    {
                                        spritesheet = "__TIMSABA__/graphics/terrain/stone-path/" .. color .. "-stone-path/stone-path-u.png",
                                        count = 8,
                                        tile_height = 2,
                                        scale = 0.5
                                    },
                                    o_transition =
                                    {
                                        spritesheet = "__TIMSABA__/graphics/terrain/stone-path/" .. color .. "-stone-path/stone-path-o.png",
                                        count = 4,
                                        scale = 0.5
                                    }
                                }
                            }
                        },
                        transitions = stone_path_transitions,
                        transitions_between_transitions = stone_path_transitions_between_transitions,
                        walking_sound = tile_sounds.walking.concrete,
                        driving_sound = tile_sounds.driving.stone,
                        build_sound = tile_sounds.building.concrete,
                        map_color = color_code,
                        scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
                        vehicle_friction_modifier = stone_path_vehicle_speed_modifier,
                        trigger_effect = tile_trigger_effects.stone_path_trigger_effect()
                    }
                })
            end

            make_stone_path("orange", a, {086, 079, 074})
            make_stone_path("black", z, {082, 082, 082})
        end

        -- CONCRETE
        if settings.startup[setting_dye_concrete].value then
            local sounds = require("__base__/prototypes/entity/sounds")
            local tile_sounds = require("__base__/prototypes/tile/tile-sounds")
            local tile_trigger_effects = require("__base__/prototypes/tile/tile-trigger-effects")

            local concrete_vehicle_speed_modifier = 0.8

            local function make_concrete(color, order, color_code)
                return
                data.extend
                ({
                    {
                        type = tile,
                        name = color .. "-concrete",
                        subgroup = is_tellus_concrete,
                        order = order,
                        needs_correction = false,
                        next_direction = color .. "-concrete",
                        transition_merges_with_tile = "concrete",
                        minable = {mining_time = 0.1, result = color .. "-concrete"},
                        mined_sound = sounds.deconstruct_bricks(0.8),
                        collision_mask = {layers = {ground_tile = true}},
                        walking_speed_modifier = 1.4,
                        layer = 13,
                        layer_group = "ground-artificial",
                        transition_overlay_layer_offset = 2, -- need to render border overlay on top of hazard-concrete
                        decorative_removal_probability = 0.25,
                        placeable_by = {item = color .. "-concrete", count = 1},
                        variants =
                        {
                            transition =
                            {
                                overlay_layout =
                                {
                                    inner_corner =
                                    {
                                        spritesheet = "__TIMSABA__/graphics/terrain/concrete/" .. color .. "/concrete-inner-corner.png",
                                        count = 16,
                                        scale = 0.5
                                    },
                                    outer_corner =
                                    {
                                        spritesheet = "__TIMSABA__/graphics/terrain/concrete/" .. color .. "/concrete-outer-corner.png",
                                        count = 8,
                                        scale = 0.5
                                    },
                                    side =
                                    {
                                        spritesheet = "__TIMSABA__/graphics/terrain/concrete/" .. color .. "/concrete-side.png",
                                        count = 16,
                                        scale = 0.5
                                    },
                                    u_transition =
                                    {
                                        spritesheet = "__TIMSABA__/graphics/terrain/concrete/" .. color .. "/concrete-u.png",
                                        count = 8,
                                        scale = 0.5
                                    },
                                    o_transition =
                                    {
                                        spritesheet = "__TIMSABA__/graphics/terrain/concrete/" .. color .. "/concrete-o.png",
                                        count = 4,
                                        scale = 0.5
                                    }
                                },
                                mask_layout =
                                {
                                    inner_corner =
                                    {
                                        spritesheet = "__base__/graphics/terrain/concrete/concrete-inner-corner-mask.png",
                                        count = 16,
                                        scale = 0.5
                                    },
                                    outer_corner =
                                    {
                                        spritesheet = "__base__/graphics/terrain/concrete/concrete-outer-corner-mask.png",
                                        count = 8,
                                        scale = 0.5
                                    },
                                    side =
                                    {
                                        spritesheet = "__base__/graphics/terrain/concrete/concrete-side-mask.png",
                                        count = 16,
                                        scale = 0.5
                                    },
                                    u_transition =
                                    {
                                        spritesheet = "__base__/graphics/terrain/concrete/concrete-u-mask.png",
                                        count = 8,
                                        scale = 0.5
                                    },
                                    o_transition =
                                    {
                                        spritesheet = "__base__/graphics/terrain/concrete/concrete-o-mask.png",
                                        count = 4,
                                        scale = 0.5
                                    }
                                }
                            },
                            material_background =
                            {
                                picture = "__TIMSABA__/graphics/terrain/concrete/" .. color .. "/concrete.png",
                                count = 8,
                                scale = 0.5
                            }
                        },
                        walking_sound = tile_sounds.walking.concrete,
                        driving_sound = tile_sounds.driving.concrete,
                        build_sound = tile_sounds.building.concrete,
                        map_color = color_code,
                        scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
                        vehicle_friction_modifier = concrete_vehicle_speed_modifier,
                        trigger_effect = tile_trigger_effects.hazard_concrete_right_trigger_effect()
                    }
                })
            end
            make_concrete("orange", a, {159, 106, 065})
            make_concrete("black", z, {160, 160, 160})
        end
        if settings.startup[setting_dye_hazard_concrete].value then
            local sounds = require("__base__/prototypes/entity/sounds")
            local tile_sounds = require("__base__/prototypes/tile/tile-sounds")
            local tile_trigger_effects = require("__base__/prototypes/tile/tile-trigger-effects")

            local concrete_vehicle_speed_modifier = 0.8

            local tile_graphics = require("__base__/prototypes/tile/tile-graphics")

            local function make_hazard_concrete(color, order, color_code)
                return
                data.extend
                ({
                    {
                        type = tile,
                        name = color .. "-hazard-concrete-left",
                        subgroup = is_tellus_hazard_concrete,
                        order = color,
                        needs_correction = false,
                        next_direction = color .. "-hazard-concrete-right",
                        transition_merges_with_tile = concrete,
                        minable = {mining_time = 0.1, result = color .. "-hazard-concrete"},
                        mined_sound = sounds.deconstruct_bricks(0.8),
                        collision_mask = {layers = {ground_tile = true}},
                        walking_speed_modifier = 1.4,
                        layer = 15,
                        layer_group = "ground-artificial",
                        decorative_removal_probability = 0.25,
                        placeable_by = {item = color .. "-hazard-concrete", count = 1},
                        variants =
                        {
                            transition = tile_graphics.generic_texture_on_concrete_transition,
                            material_background =
                            {
                                picture = "__TIMSABA__/graphics/terrain/hazard/" .. color .. "/hazard-concrete-left.png",
                                count = 8,
                                scale = 0.5
                            }
                        },
                        walking_sound = tile_sounds.walking.concrete,
                        driving_sound = tile_sounds.driving.concrete,
                        build_sound = tile_sounds.building.concrete,
                        map_color = color_code,
                        scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
                        vehicle_friction_modifier = concrete_vehicle_speed_modifier,
                        trigger_effect = tile_trigger_effects.hazard_concrete_left_trigger_effect(),

                    },
                    {
                        type = tile,
                        name = color .. "-hazard-concrete-right",
                        subgroup = is_tellus_hazard_concrete,
                        order = order,
                        needs_correction = false,
                        next_direction = color .. "-hazard-concrete-left",
                        transition_merges_with_tile = concrete,
                        minable = {mining_time = 0.1, result = color .. "-hazard-concrete"},
                        mined_sound = sounds.deconstruct_bricks(0.8),
                        collision_mask = {layers = {ground_tile = true}},
                        walking_speed_modifier = 1.4,
                        layer = 15,
                        layer_group = "ground-artificial",
                        decorative_removal_probability = 0.25,
                        placeable_by = {item = color .. "-hazard-concrete", count = 1},
                        variants =
                        {
                            transition = tile_graphics.generic_texture_on_concrete_transition,
                            material_background =
                            {
                                picture = "__TIMSABA__/graphics/terrain/hazard/" .. color .. "/hazard-concrete-right.png",
                                count = 8,
                                scale = 0.5
                            }
                        },
                        walking_sound = tile_sounds.walking.concrete,
                        driving_sound = tile_sounds.driving.concrete,
                        build_sound = tile_sounds.building.concrete,
                        map_color = color_code,
                        scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
                        vehicle_friction_modifier = concrete_vehicle_speed_modifier,
                        trigger_effect = tile_trigger_effects.hazard_concrete_right_trigger_effect()
                    }
                })
            end
            make_hazard_concrete("orange", a, {176, 100, 039})
        end

        if settings.startup[setting_dye_reinforced_hazard_concrete].value then
            local sounds = require("__base__/prototypes/entity/sounds")
            local tile_sounds = require("__base__/prototypes/tile/tile-sounds")
            local tile_trigger_effects = require("__base__/prototypes/tile/tile-trigger-effects")
            local tile_graphics = require("__base__/prototypes/tile/tile-graphics")
            local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout

            local concrete_vehicle_speed_modifier = 0.8

            local function make_reinforced_hazard_concrete(color, order, color_code)
                return
                data.extend
                ({
                    {
                        type = tile,
                        name = color .. "-refined-hazard-concrete-left",
                        subgroup = is_tellus_reinforced_hazard_concrete,
                        order = order,
                        needs_correction = false,
                        next_direction = color .. "-refined-hazard-concrete-right",
                        transition_merges_with_tile = reinforced_concrete,
                        minable = {mining_time = 0.1, result = color .. "-refined-hazard-concrete"},
                        mined_sound = sounds.deconstruct_bricks(0.8),
                        collision_mask = {layers = {ground_tile = true}},
                        walking_speed_modifier = 1.5,
                        layer = 19,
                        layer_group = "ground-artificial",
                        decorative_removal_probability = 0.25,
                        placeable_by = {item = color .. "-refined-hazard-concrete", count = 1},
                        variants =
                        {
                            transition = tile_graphics.generic_texture_on_concrete_transition,
                            material_background =
                            {
                                picture = "__TIMSABA__/graphics/terrain/hazard/" .. color .. "/reinforced-hazard-concrete-left.png",
                                count = 8,
                                scale = 0.5
                            }
                        },
                        walking_sound = tile_sounds.walking.refined_concrete,
                        driving_sound = tile_sounds.driving.concrete,
                        build_sound = tile_sounds.building.concrete,
                        map_color = color_code,
                        scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
                        vehicle_friction_modifier = concrete_vehicle_speed_modifier,

                        trigger_effect = tile_trigger_effects.hazard_concrete_left_trigger_effect()
                    },
                    {
                        type = tile,
                        name = color .. "-refined-hazard-concrete-right",
                        subgroup = is_tellus_reinforced_hazard_concrete,
                        order = order,
                        needs_correction = false,
                        next_direction = color .. "-refined-hazard-concrete-left",
                        transition_merges_with_tile = reinforced_concrete,
                        minable = {mining_time = 0.1, result = color .. "-refined-hazard-concrete"},
                        mined_sound = sounds.deconstruct_bricks(0.8),
                        collision_mask = {layers = {ground_tile = true}},
                        walking_speed_modifier = 1.5,
                        layer = 19,
                        layer_group = "ground-artificial",
                        decorative_removal_probability = 0.25,
                        placeable_by = {item = color .. "-refined-hazard-concrete", count = 1},
                        variants =
                        {
                            transition = tile_graphics.generic_texture_on_concrete_transition,

                            material_background =
                            {
                                picture = "__TIMSABA__/graphics/terrain/hazard/" .. color .. "/reinforced-hazard-concrete-right.png",
                                count = 8,
                                scale = 0.5
                            }
                        },
                        walking_sound = tile_sounds.walking.refined_concrete,
                        driving_sound = tile_sounds.driving.concrete,
                        build_sound = tile_sounds.building.concrete,
                        map_color = color_code,
                        scorch_mark_color = {r = 0.373, g = 0.307, b = 0.243, a = 1.000},
                        vehicle_friction_modifier = concrete_vehicle_speed_modifier,
                        trigger_effect = tile_trigger_effects.hazard_concrete_right_trigger_effect()
                    }
                })
            end
            make_reinforced_hazard_concrete("orange", a, {176, 100, 039})
        end
        if settings.startup[setting_dye_stone_wall].value then
            local hit_effects = require("__base__.prototypes.entity.hit-effects")
            local sounds = require("__base__.prototypes.entity.sounds")

            local function make_wall(color, order)
                return
                data.extend
                ({
                    {
                        type = wall,
                        name = color .. "-stone-wall",
                        icon = "__TIMSABA__/graphics/icons/tellus/" .. color .. "-stone-wall.png",
                        flags = {"placeable-neutral", "player-creation"},
                        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
                        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
                        damaged_trigger_effect = hit_effects.wall(),
                        minable = {mining_time = 0.2, result = color .. "-stone-wall"},
                        fast_replaceable_group = wall,
                        max_health = 350,
                        repair_speed_modifier = 2,
                        corpse = "wall-remnants",
                        dying_explosion = "wall-explosion",
                        repair_sound = sounds.manual_repair,
                        mined_sound = sounds.deconstruct_bricks(0.8),
                        open_sound = sounds.machine_open,
                        close_sound = sounds.machine_close,
                        impact_category = stone,
                        connected_gate_visualization =
                        {
                            filename = "__core__/graphics/arrows/underground-lines.png",
                            priority = high,
                            width = 64,
                            height = 64,
                            scale = 0.5
                        },
                        resistances =
                        {
                            {type = "physical", decrease = 3, percent = 20},
                            {type = "impact", decrease = 45, percent = 60},
                            {type = "explosion", decrease = 10, percent = 30},
                            {type = "fire", percent = 100},
                            {type = "acid", percent = 80},
                            {type = "laser", percent = 70}
                        },
                        visual_merge_group = 0, -- different walls will visually connect to each other if their merge group is same (defaults to 0)
                        pictures =
                        {
                            single =
                            {
                                layers =
                                {
                                    {
                                        filename = "__TIMSABA__/graphics/entity/wall/" .. color .. "/wall-single.png",
                                        priority = extra_high,
                                        width = 64,
                                        height = 86,
                                        variation_count = 2,
                                        line_length = 2,
                                        shift = util.by_pixel(0, -5),
                                        scale = 0.5
                                    },
                                    {
                                        filename = "__base__/graphics/entity/wall/wall-single-shadow.png",
                                        priority = extra_high,
                                        width = 98,
                                        height = 60,
                                        repeat_count = 2,
                                        shift = util.by_pixel(10, 17),
                                        draw_as_shadow = true,
                                        scale = 0.5
                                    }
                                }
                            },
                            straight_vertical =
                            {
                                layers =
                                {
                                    {
                                        filename = "__TIMSABA__/graphics/entity/wall/" .. color .. "/wall-vertical.png",
                                        priority = extra_high,
                                        width = 64,
                                        height = 134,
                                        variation_count = 5,
                                        line_length = 5,
                                        shift = util.by_pixel(0, 8),
                                        scale = 0.5
                                    },
                                    {
                                        filename = "__base__/graphics/entity/wall/wall-vertical-shadow.png",
                                        priority = extra_high,
                                        width = 98,
                                        height = 110,
                                        repeat_count = 5,
                                        shift = util.by_pixel(10, 29),
                                        draw_as_shadow = true,
                                        scale = 0.5
                                    }
                                }
                            },
                            straight_horizontal =
                            {
                                layers =
                                {
                                    {
                                        filename = "__TIMSABA__/graphics/entity/wall/" .. color .. "/wall-horizontal.png",
                                        priority = extra_high,
                                        width = 64,
                                        height = 92,
                                        variation_count = 6,
                                        line_length = 6,
                                        shift = util.by_pixel(0, -2),
                                        scale = 0.5
                                    },
                                    {
                                        filename = "__base__/graphics/entity/wall/wall-horizontal-shadow.png",
                                        priority = extra_high,
                                        width = 124,
                                        height = 68,
                                        repeat_count = 6,
                                        shift = util.by_pixel(14, 15),
                                        draw_as_shadow = true,
                                        scale = 0.5
                                    }
                                }
                            },
                            corner_right_down =
                            {
                                layers =
                                {
                                    {
                                        filename = "__TIMSABA__/graphics/entity/wall/" .. color .. "/wall-corner-right.png",
                                        priority = extra_high,
                                        width = 64,
                                        height = 128,
                                        variation_count = 2,
                                        line_length = 2,
                                        shift = util.by_pixel(0, 7),
                                        scale = 0.5
                                    },
                                    {
                                        filename = "__base__/graphics/entity/wall/wall-corner-right-shadow.png",
                                        priority = extra_high,
                                        width = 124,
                                        height = 120,
                                        repeat_count = 2,
                                        shift = util.by_pixel(17, 28),
                                        draw_as_shadow = true,
                                        scale = 0.5
                                    }
                                }
                            },
                            corner_left_down =
                            {
                                layers =
                                {
                                    {
                                        filename = "__TIMSABA__/graphics/entity/wall/" .. color .. "/wall-corner-left.png",
                                        priority = extra_high,
                                        width = 64,
                                        height = 134,
                                        variation_count = 2,
                                        line_length = 2,
                                        shift = util.by_pixel(0, 7),
                                        scale = 0.5
                                    },
                                    {
                                        filename = "__base__/graphics/entity/wall/wall-corner-left-shadow.png",
                                        priority = extra_high,
                                        width = 102,
                                        height = 120,
                                        repeat_count = 2,
                                        shift = util.by_pixel(9, 28),
                                        draw_as_shadow = true,
                                        scale = 0.5
                                    }
                                }
                            },
                            t_up =
                            {
                                layers =
                                {
                                    {
                                        filename = "__TIMSABA__/graphics/entity/wall/" .. color .. "/wall-t.png",
                                        priority = extra_high,
                                        width = 64,
                                        height = 134,
                                        variation_count = 4,
                                        line_length = 4,
                                        shift = util.by_pixel(0, 7),
                                        scale = 0.5
                                    },
                                    {
                                        filename = "__base__/graphics/entity/wall/wall-t-shadow.png",
                                        priority = extra_high,
                                        width = 124,
                                        height = 120,
                                        repeat_count = 4,
                                        shift = util.by_pixel(14, 28),
                                        draw_as_shadow = true,
                                        scale = 0.5
                                    }
                                }
                            },
                            ending_right =
                            {
                                layers =
                                {
                                    {
                                        filename = "__TIMSABA__/graphics/entity/wall/" .. color .. "/wall-ending-right.png",
                                        priority = extra_high,
                                        width = 64,
                                        height = 92,
                                        variation_count = 2,
                                        line_length = 2,
                                        shift = util.by_pixel(0, -3),
                                        scale = 0.5
                                    },
                                    {
                                        filename = "__base__/graphics/entity/wall/wall-ending-right-shadow.png",
                                        priority = extra_high,
                                        width = 124,
                                        height = 68,
                                        repeat_count = 2,
                                        shift = util.by_pixel(17, 15),
                                        draw_as_shadow = true,
                                        scale = 0.5
                                    }
                                }
                            },
                            ending_left =
                            {
                                layers =
                                {
                                    {
                                        filename = "__TIMSABA__/graphics/entity/wall/" .. color .. "/wall-ending-left.png",
                                        priority = extra_high,
                                        width = 64,
                                        height = 92,
                                        variation_count = 2,
                                        line_length = 2,
                                        shift = util.by_pixel(0, -3),
                                        scale = 0.5
                                    },
                                    {
                                        filename = "__base__/graphics/entity/wall/wall-ending-left-shadow.png",
                                        priority = extra_high,
                                        width = 102,
                                        height = 68,
                                        repeat_count = 2,
                                        shift = util.by_pixel(9, 15),
                                        draw_as_shadow = true,
                                        scale = 0.5
                                    }
                                }
                            },
                            filling =
                            {
                                filename = "__TIMSABA__/graphics/entity/wall/" .. color .. "/wall-filling.png",
                                priority = extra_high,
                                width = 48,
                                height = 56,
                                variation_count = 8,
                                line_length = 8,
                                shift = util.by_pixel(0, -1),
                                scale = 0.5
                            },
                            water_connection_patch =
                            {
                                sheets =
                                {
                                    {
                                        filename = "__TIMSABA__/graphics/entity/wall/" .. color .. "/wall-patch.png",
                                        priority = extra_high,
                                        width = 116,
                                        height = 128,
                                        shift = util.by_pixel(0, -2),
                                        scale = 0.5
                                    },
                                    {
                                        filename = "__base__/graphics/entity/wall/wall-patch-shadow.png",
                                        priority = extra_high,
                                        width = 144,
                                        height = 100,
                                        shift = util.by_pixel(9, 15),
                                        draw_as_shadow = true,
                                        scale = 0.5
                                    }
                                }
                            },
                            gate_connection_patch =
                            {
                                sheets =
                                {
                                    {
                                        filename = "__base__/graphics/entity/wall/wall-gate.png",
                                        priority = extra_high,
                                        width = 82,
                                        height = 108,
                                        shift = util.by_pixel(0, -7),
                                        scale = 0.5
                                    },
                                    {
                                        filename = "__base__/graphics/entity/wall/wall-gate-shadow.png",
                                        priority = extra_high,
                                        width = 130,
                                        height = 78,
                                        shift = util.by_pixel(14, 18),
                                        draw_as_shadow = true,
                                        scale = 0.5
                                    }
                                }
                            }
                        },
                        wall_diode_green =
                        {
                            sheet =
                            {
                                filename = "__base__/graphics/entity/wall/wall-diode-green.png",
                                priority = extra_high,
                                width = 72,
                                height = 44,
                                draw_as_glow = true,
                                shift = util.by_pixel(-1, -23),
                                scale = 0.5
                            }
                        },
                        wall_diode_green_light_top =
                        {
                            minimum_darkness = 0.3,
                            color = {g = 1},
                            shift = util.by_pixel(0, -30),
                            size = 1,
                            intensity = 0.2
                        },
                        wall_diode_green_light_right =
                        {
                            minimum_darkness = 0.3,
                            color = {g = 1},
                            shift = util.by_pixel(12, -23),
                            size = 1,
                            intensity = 0.2
                        },
                        wall_diode_green_light_bottom =
                        {
                            minimum_darkness = 0.3,
                            color = {g = 1},
                            shift = util.by_pixel(0, -17),
                            size = 1,
                            intensity = 0.2
                        },
                        wall_diode_green_light_left =
                        {
                            minimum_darkness = 0.3,
                            color = {g = 1},
                            shift = util.by_pixel(-12, -23),
                            size = 1,
                            intensity = 0.2
                        },
                        wall_diode_red =
                        {
                            sheet =
                            {
                                filename = "__base__/graphics/entity/wall/wall-diode-red.png",
                                priority = extra_high,
                                width = 72,
                                height = 44,
                                draw_as_glow = true,
                                shift = util.by_pixel(-1, -23),
                                scale = 0.5
                            }
                        },
                        wall_diode_red_light_top =
                        {
                            minimum_darkness = 0.3,
                            color = {r = 1},
                            shift = util.by_pixel(0, -30),
                            size = 1,
                            intensity = 0.2
                        },
                        wall_diode_red_light_right =
                        {
                            minimum_darkness = 0.3,
                            color = {r = 1},
                            shift = util.by_pixel(12, -23),
                            size = 1,
                            intensity = 0.2
                        },
                        wall_diode_red_light_bottom =
                        {
                            minimum_darkness = 0.3,
                            color = {r = 1},
                            shift = util.by_pixel(0, -17),
                            size = 1,
                            intensity = 0.2
                        },
                        wall_diode_red_light_left =
                        {
                            minimum_darkness = 0.3,
                            color = {r = 1},
                            shift = util.by_pixel(-12, -23),
                            size = 1,
                            intensity = 0.2
                        },
                        circuit_connector = circuit_connector_definitions["wall"],
                        circuit_wire_max_distance = default_circuit_wire_max_distance,
                        default_output_signal = {type = "virtual", name = "signal-G"}
                    }
                })
            end
            make_wall("orange", a)
            make_wall("black", z)
        end
    end

    local function copyGrid(name, tile_data, colored_concrete)
        local grid = table.deepcopy(data_tile["tutorial-grid"])
        grid.name = name .. "-tile"
        grid.needs_correction = false
        grid.minable = {mining_time = 0.1, result = name}

        local concrete = data_tile[concrete]
        grid.build_sound = table.deepcopy(concrete.build_sound)
        grid.mined_sound = table.deepcopy(concrete.mined_sound)

        local map_color_source = data_tile[colored_concrete]
        grid.map_color = table.deepcopy(map_color_source.map_color)

        -- ПОДСТАНОВКА ВАШИХ РУЧНЫХ ТЕКСТУР
        -- Предположим, вы назвали папки с графикой по именам цветов плитки (например, "blue", "orange")
        -- Вырезаем имя цвета из названия (из "planetaris-blue-concrete-brick" получим "blue")
        local color_name = name:match("([^%-]+)%-concrete%-brick") or name
        if name:find("planetaris-") then
            color_name = name:match("planetaris%-([^%-]+)%-concrete%-brick")
        end

        -- 1. Подставляем основные текстуры пола
        grid.variants.main[1].picture = "__TIMSABA__/graphics/terrain/tutorial-grid/" .. color_name .. "/tutorial-grid1.png"
        grid.variants.main[2].picture = "__TIMSABA__/graphics/terrain/tutorial-grid/" .. color_name .. "/tutorial-grid2.png"

        -- 2. Подставляем текстуры переходов/краев
        local overlay = grid.variants.transition.overlay_layout
        overlay.inner_corner.spritesheet = "__TIMSABA__/graphics/terrain/tutorial-grid/" .. color_name .. "/tutorial-grid-inner-corner.png"
        overlay.outer_corner.spritesheet = "__TIMSABA__/graphics/terrain/tutorial-grid/" .. color_name .. "/tutorial-grid-outer-corner.png"
        overlay.side.spritesheet = "__TIMSABA__/graphics/terrain/tutorial-grid/" .. color_name .. "/tutorial-grid-side.png"
        overlay.u_transition.spritesheet = "__TIMSABA__/graphics/terrain/tutorial-grid/" .. color_name .. "/tutorial-grid-u.png"
        overlay.o_transition.spritesheet = "__TIMSABA__/graphics/terrain/tutorial-grid/" .. color_name .. "/tutorial-grid-o.png"

        for k, v in pairs(tile_data or {}) do
            grid[k] = v
        end

        return grid
    end

    if settings.startup[setting_dye_secondary_color].value then
        if settings.startup[setting_dye_concrete_brick].value then
            data:extend
            ({
                copyGrid(orange_concrete_brick, {walking_speed_modifier = 1.50, decorative_removal_probability = 0.33, layer = 61}, orange_concrete),
                copyGrid(yellow_concrete_brick, {walking_speed_modifier = 1.50, decorative_removal_probability = 0.33, layer = 61}, yellow_concrete),
                copyGrid(magenta_concrete_brick, {walking_speed_modifier = 1.50, decorative_removal_probability = 0.33, layer = 61}, magenta_concrete),
                copyGrid(cyan_concrete_brick, {walking_speed_modifier = 1.50, decorative_removal_probability = 0.33, layer = 61}, cyan_concrete),
                copyGrid(black_concrete_brick, {walking_speed_modifier = 1.50, decorative_removal_probability = 0.33, layer = 61}, black_concrete)
            })
        end
    end

    if settings.startup[setting_dye_concrete_brick].value then
        data:extend
        ({
            copyGrid(blue_concrete_brick, {walking_speed_modifier = 1.50, decorative_removal_probability = 0.33, layer = 61}, blue_concrete),
            copyGrid(green_concrete_brick, {walking_speed_modifier = 1.50, decorative_removal_probability = 0.33, layer = 61}, green_concrete),
            copyGrid(red_concrete_brick, {walking_speed_modifier = 1.50, decorative_removal_probability = 0.33, layer = 61}, red_concrete)
        })
    end
end