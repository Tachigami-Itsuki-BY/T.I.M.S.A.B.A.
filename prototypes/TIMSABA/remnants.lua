local is_energy_pipe_distribution_remnants = "energy-pipe-distribution-remnants"

require("util")

function make_rotated_animation_variations_from_sheet(variation_count, sheet)
    local result = {}

    local function set_y_offset(variation, i)
        local frame_count = variation.frame_count or 1
        local line_length = variation.line_length or frame_count
        if (line_length < 1) then
        line_length = frame_count
        end

        local height_in_frames = math.floor((frame_count * variation.direction_count + line_length - 1) / line_length)

        variation.y = variation.height * (i - 1) * height_in_frames
    end

    for i = 1,variation_count do
        local variation = util.table.deepcopy(sheet)

        if variation.layers then
        for _, layer in pairs(variation.layers) do
            set_y_offset(layer, i)
        end
        else
        set_y_offset(variation, i)
        end

        table.insert(result, variation)
    end
    return result
end

-- NAUVIS
data:extend
({
    {
        type = corpse,
        name = stone_pipe .. _remnants,
        icon = "__boblogistics__/graphics/icons/pipe/stone-pipe.png",
        flags = {flag_placeable_neutral, flag_not_on_map},
        hidden_in_factoriopedia = true,
        subgroup = is_energy_pipe_distribution_remnants,
        order = "a-d-a",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = remnants,
        remove_on_tile_placement = false,
        animation = make_rotated_animation_variations_from_sheet(2,
        {
            filename = "__TIMSABA__/graphics/entity/pipes/stone/" .. pipe .. "/" .. remnants .. "/" .. pipe .. _remnants .. ".png",
            width = 122,
            height = 120,
            line_length = 1,
            direction_count = 2,
            shift = util.by_pixel(1.5, 2.5),
            scale = 0.5
        })
    },
    {
        type = corpse,
        name = stone_pipe_to_ground .. _remnants,
        icon = "__boblogistics__/graphics/icons/pipe/stone-pipe-to-ground.png",
        flags = {flag_placeable_neutral, flag_not_on_map},
        hidden_in_factoriopedia = true,
        subgroup = is_energy_pipe_distribution_remnants,
        order = "a-d-a",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = remnants,
        remove_on_tile_placement = false,
        animation =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/stone/" .. pipe_to_ground .. "/" .. remnants .. "/" .. pipe_to_ground .. _remnants .. ".png",
            width = 90,
            height = 80,
            line_length = 1,
            direction_count = 1,
            shift = util.by_pixel(0.5, -3),
            scale = 0.5
        }
    },
    {
        type = corpse,
        name = nitinol_pipe .. _remnants,
        icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe.png",
        flags = {flag_placeable_neutral, flag_not_on_map},
        hidden_in_factoriopedia = true,
        subgroup = is_energy_pipe_distribution_remnants,
        order = "a-d-a",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = remnants,
        remove_on_tile_placement = false,
        animation = make_rotated_animation_variations_from_sheet(2,
        {
            filename = "__TIMSABA__/graphics/entity/pipes/nitinol/" .. pipe .. "/" .. remnants .. "/" .. pipe .. _remnants .. ".png",
            width = 122,
            height = 120,
            line_length = 1,
            direction_count = 2,
            shift = util.by_pixel(1.5, 2.5),
            scale = 0.5
        })
    },
    {
        type = corpse,
        name = nitinol_pipe_to_ground .. _remnants,
        icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe-to-ground.png",
        flags = {flag_placeable_neutral, flag_not_on_map},
        hidden_in_factoriopedia = true,
        subgroup = is_energy_pipe_distribution_remnants,
        order = "a-d-a",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = remnants,
        remove_on_tile_placement = false,
        animation =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/nitinol/" .. pipe_to_ground .. "/" .. remnants .. "/" .. pipe_to_ground .. _remnants .. ".png",
            width = 90,
            height = 80,
            line_length = 1,
            direction_count = 1,
            shift = util.by_pixel(0.5, -3),
            scale = 0.5
        }
    },
    {
        type = corpse,
        name = molybdenum_rhenium_pipe .. _remnants,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/" .. molybdenum_rhenium_pipe .. ".png",
        flags = {flag_placeable_neutral, flag_not_on_map},
        hidden_in_factoriopedia = true,
        subgroup = is_energy_pipe_distribution_remnants,
        order = "a-d-a",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = remnants,
        remove_on_tile_placement = false,
        animation = make_rotated_animation_variations_from_sheet(2,
        {
            filename = "__TIMSABA__/graphics/entity/pipes/molybdenum-rhenium/" .. pipe .. "/" .. remnants .. "/" .. pipe .. _remnants .. ".png",
            width = 122,
            height = 120,
            line_length = 1,
            direction_count = 2,
            shift = util.by_pixel(1.5, 2.5),
            scale = 0.5
        })
    },
    {
        type = corpse,
        name = molybdenum_rhenium_pipe_to_ground .. _remnants,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/" .. molybdenum_rhenium_pipe_to_ground .. ".png",
        flags = {flag_placeable_neutral, flag_not_on_map},
        hidden_in_factoriopedia = true,
        subgroup = is_energy_pipe_distribution_remnants,
        order = "a-d-a",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        expires = false,
        final_render_layer = remnants,
        remove_on_tile_placement = false,
        animation =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/molybdenum-rhenium/" .. pipe_to_ground .. "/" .. remnants .. "/" .. pipe_to_ground .. _remnants .. ".png",
            width = 90,
            height = 80,
            line_length = 1,
            direction_count = 1,
            shift = util.by_pixel(0.5, -3),
            scale = 0.5
        }
    }
})

-- TELLUS
if mods[tellus_mods] then
    if settings.startup[setting_dye_secondary_color].value then
        if settings.startup[setting_dye_pipes].value then
            local function make_color_pipes_remnants_TIMSABA(color)
                return
                data:extend
                ({
                    {
                        type = corpse,
                        name = color .. "-" .. pipe .. _remnants,
                        icon = "__TIMSABA__/graphics/icons/tellus/" .. color .. "-" .. pipe .. ".png",
                        flags = {flag_placeable_neutral, flag_not_on_map},
                        hidden_in_factoriopedia = true,
                        subgroup = is_energy_pipe_distribution_remnants,
                        order = "a-d-a",
                        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
                        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
                        selectable_in_game = false,
                        time_before_removed = 60 * 60 * 15, -- 15 minutes
                        expires = false,
                        final_render_layer = remnants,
                        remove_on_tile_placement = false,
                        animation = make_rotated_animation_variations_from_sheet(2,
                        {
                            filename = "__TIMSABA__/graphics/entity/pipes/" .. color .. "/" .. pipe .. "/" .. remnants .. "/" .. pipe .. _remnants .. ".png",
                            width = 122,
                            height = 120,
                            line_length = 1,
                            direction_count = 2,
                            shift = util.by_pixel(1.5, 2.5),
                            scale = 0.5
                        })
                    },
                    {
                        type = corpse,
                        name = color .. "-" .. pipe_to_ground .. _remnants,
                        icon = "__TIMSABA__/graphics/icons/tellus/" .. color .. "-" .. pipe_to_ground .. ".png",
                        flags = {flag_placeable_neutral, flag_not_on_map},
                        hidden_in_factoriopedia = true,
                        subgroup = is_energy_pipe_distribution_remnants,
                        order = "a-d-a",
                        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
                        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
                        selectable_in_game = false,
                        time_before_removed = 60 * 60 * 15, -- 15 minutes
                        expires = false,
                        final_render_layer = remnants,
                        remove_on_tile_placement = false,
                        animation =
                        {
                            filename = "__TIMSABA__/graphics/entity/pipes/" .. color .. "/" .. pipe_to_ground .. "/" .. remnants .. "/" .. pipe_to_ground .. _remnants .. ".png",
                            width = 90,
                            height = 80,
                            line_length = 1,
                            direction_count = 1,
                            shift = util.by_pixel(0.5, -3),
                            scale = 0.5
                        }
                    }
                })
            end
            make_color_pipes_remnants_TIMSABA("orange")
            make_color_pipes_remnants_TIMSABA("black")

            local function make_color_pipes_remnants_tellus(color)
                return
                data:extend
                ({
                    {
                        type = corpse,
                        name = color .. "-" .. pipe .. _remnants,
                        icon = "__planetaris-dyes__/graphics/icons/" .. pipe .. "-" .. color .. ".png",
                        flags = {flag_placeable_neutral, flag_not_on_map},
                        hidden_in_factoriopedia = true,
                        subgroup = is_energy_pipe_distribution_remnants,
                        order = "a-d-a",
                        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
                        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
                        selectable_in_game = false,
                        time_before_removed = 60 * 60 * 15, -- 15 minutes
                        expires = false,
                        final_render_layer = remnants,
                        remove_on_tile_placement = false,
                        animation = make_rotated_animation_variations_from_sheet(2,
                        {
                            filename = "__TIMSABA__/graphics/entity/pipes/" .. color .. "/" .. pipe .. "/" .. remnants .. "/" .. pipe .. _remnants .. ".png",
                            width = 122,
                            height = 120,
                            line_length = 1,
                            direction_count = 2,
                            shift = util.by_pixel(1.5, 2.5),
                            scale = 0.5
                        })
                    },
                    {
                        type = corpse,
                        name = color .. "-" .. pipe_to_ground .. _remnants,
                        icon = "__planetaris-dyes__/graphics/icons/" .. pipe_to_ground .. "-" .. color .. ".png",
                        flags = {flag_placeable_neutral, flag_not_on_map},
                        hidden_in_factoriopedia = true,
                        subgroup = is_energy_pipe_distribution_remnants,
                        order = "a-d-a",
                        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
                        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
                        selectable_in_game = false,
                        time_before_removed = 60 * 60 * 15, -- 15 minutes
                        expires = false,
                        final_render_layer = remnants,
                        remove_on_tile_placement = false,
                        animation =
                        {
                            filename = "__TIMSABA__/graphics/entity/pipes/" .. color .. "/" .. pipe_to_ground .. "/" .. remnants .. "/" .. pipe_to_ground .. _remnants .. ".png",
                            width = 90,
                            height = 80,
                            line_length = 1,
                            direction_count = 1,
                            shift = util.by_pixel(0.5, -3),
                            scale = 0.5
                        }
                    }
                })
            end
            make_color_pipes_remnants_tellus("blue")
            make_color_pipes_remnants_tellus("yellow")
            make_color_pipes_remnants_tellus("magenta")
            make_color_pipes_remnants_tellus("green")
            make_color_pipes_remnants_tellus("red")
            make_color_pipes_remnants_tellus("cyan")
        end
    end
end

-- PARACELSIN
if mods[paracelsin_mods] then
    data:extend
    ({
        {
            type = corpse,
            name = galvanized_pipe .. _remnants,
            icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_pipe .. ".png",
            flags = {flag_placeable_neutral, flag_not_on_map},
            hidden_in_factoriopedia = true,
            subgroup = is_energy_pipe_distribution_remnants,
            order = "a-d-a",
            collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            selectable_in_game = false,
            time_before_removed = 60 * 60 * 15, -- 15 minutes
            expires = false,
            final_render_layer = remnants,
            remove_on_tile_placement = false,
            animation = make_rotated_animation_variations_from_sheet(2,
            {
                filename = "__TIMSABA__/graphics/entity/pipes/galvanized/" .. pipe .. "/" .. remnants .. "/" .. pipe .. _remnants .. ".png",
                width = 122,
                height = 120,
                line_length = 1,
                direction_count = 2,
                shift = util.by_pixel(1.5, 2.5),
                scale = 0.5
            })
        },
        {
            type = corpse,
            name = galvanized_pipe_to_ground .. _remnants,
            icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_pipe_to_ground .. ".png",
            flags = {flag_placeable_neutral, flag_not_on_map},
            hidden_in_factoriopedia = true,
            subgroup = is_energy_pipe_distribution_remnants,
            order = "a-d-a",
            collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            selectable_in_game = false,
            time_before_removed = 60 * 60 * 15, -- 15 minutes
            expires = false,
            final_render_layer = remnants,
            remove_on_tile_placement = false,
            animation =
            {
                filename = "__TIMSABA__/graphics/entity/pipes/galvanized/" .. pipe_to_ground .. "/" .. remnants .. "/" .. pipe_to_ground .. _remnants .. ".png",
                width = 90,
                height = 80,
                line_length = 1,
                direction_count = 1,
                shift = util.by_pixel(0.5, -3),
                scale = 0.5
            }
        },
        {
            type = corpse,
            name = galvanized_storage_tank .. _remnants,
            icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_storage_tank .. ".png",
            flags = {flag_placeable_neutral, "building-direction-8-way", flag_not_on_map},
            hidden_in_factoriopedia = true,
            subgroup = "storage-remnants",
            order = "a-d-a",
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            tile_width = 3,
            tile_height = 3,
            selectable_in_game = false,
            time_before_removed = 60 * 60 * 15, -- 15 minutes
            expires = false,
            final_render_layer = remnants,
            remove_on_tile_placement = false,
            animation = make_rotated_animation_variations_from_sheet(1,
            {
                filename = "__TIMSABA__/graphics/entity/" .. storage_tank .. "/galvanized/" .. remnants .. "/" .. storage_tank .. _remnants .. ".png",
                line_length = 1,
                width = 426,
                height = 282,
                direction_count = 1,
                shift = util.by_pixel(27, 21), --shift = util.by_pixel(-2.5, 10.5),
                scale = 0.5
            })
        },
        {
            type = corpse,
            name = galvanized_pump .. _remnants,
            icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_pump .. ".png",
            flags = {flag_placeable_neutral, flag_not_on_map},
            hidden_in_factoriopedia = true,
            subgroup = is_energy_pipe_distribution_remnants,
            order = "a-d-a",
            selection_box = {{-0.5, -1}, {0.5, 1}},
            tile_width = 1,
            tile_height = 2,
            selectable_in_game = false,
            time_before_removed = 60 * 60 * 15, -- 15 minutes
            expires = false,
            final_render_layer = remnants,
            remove_on_tile_placement = false,
            animation = make_rotated_animation_variations_from_sheet (1,
            {
                filename = "__TIMSABA__/graphics/entity/" .. pump .. "/galvanized/" .. remnants .. "/" .. pump .. _remnants .. ".png",
                line_length = 1,
                width = 188,
                height = 186,
                direction_count = 4,
                shift = util.by_pixel(2, 2),
                scale = 0.5
            })
        }
    })
end