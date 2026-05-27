function bobmods.logistics.pipe_distance(level)
    local range = ((level - 1) * settings.startup["bobmods-logistics-pipeperlevel"].value)
        + settings.startup["bobmods-logistics-pipestarting"].value
    return range
end

bobmods.logistics.maxPipeTier = 4

function bobmods.logistics.set_pipe_distance(pipe, level)
    if data.raw["pipe-to-ground"][pipe] then
        for index, connection in pairs(data.raw["pipe-to-ground"][pipe].fluid_box.pipe_connections) do
            if connection.max_underground_distance then
                data.raw["pipe-to-ground"][pipe].fluid_box.pipe_connections[index].max_underground_distance =
                bobmods.logistics.pipe_distance(level)
            end
        end
    end
end

--- @param i integer
local function make_visualization(i)
    return
    {
        filename = "__base__/graphics/entity/pipe/visualization.png",
        priority = extra_high,
        x = i * 64,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
    }
end

--- @param i integer
local function make_disabled_visualization(i)
    return
    {
        filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
        priority = extra_high,
        x = i * 64,
        size = 64,
        scale = 0.5,
        flags = {"icon"}
    }
end

local function TIMSABA_pipepictures(pipe_type)
    local pipepictures =
    {
        straight_vertical_single =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-straight-vertical-single.png",
            priority = extra_high,
            width = 160,
            height = 160,
            scale = 0.5
        },
        straight_vertical =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-straight-vertical.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_vertical_window =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-straight-vertical-window.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_horizontal_window =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-straight-horizontal-window.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_horizontal =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-straight-horizontal.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_up_right =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-corner-up-right.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_up_left =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-corner-up-left.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_down_right =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-corner-down-right.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_down_left =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-corner-down-left.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_up =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-t-up.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_down =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-t-down.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_right =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-t-right.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_left =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-t-left.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        cross =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-cross.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_up =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-ending-up.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_down =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-ending-down.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_right =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-ending-right.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_left =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-ending-left.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        horizontal_window_background =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-horizontal-window-background.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        vertical_window_background =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-vertical-window-background.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        fluid_background =
        {
            filename = "__base__/graphics/entity/pipe/fluid-background.png",
            priority = extra_high,
            width = 64,
            height = 40,
            scale = 0.5
        },
        low_temperature_flow =
        {
            filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
            priority = extra_high,
            width = 160,
            height = 18
        },
        middle_temperature_flow =
        {
            filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
            priority = extra_high,
            width = 160,
            height = 18
        },
        high_temperature_flow =
        {
            filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
            priority = extra_high,
            width = 160,
            height = 18
        },
        gas_flow =
        {
            filename = "__base__/graphics/entity/pipe/steam.png",
            priority = extra_high,
            line_length = 10,
            width = 48,
            height = 30,
            frame_count = 60
        },
        straight_vertical_single_visualization = make_visualization(0),
        straight_vertical_visualization = make_visualization(5),
        straight_vertical_window_visualization = make_visualization(5),
        straight_horizontal_window_visualization = make_visualization(10),
        straight_horizontal_visualization = make_visualization(10),
        corner_up_right_visualization = make_visualization(3),
        corner_up_left_visualization = make_visualization(9),
        corner_down_right_visualization = make_visualization(6),
        corner_down_left_visualization = make_visualization(12),
        t_up_visualization = make_visualization(11),
        t_down_visualization = make_visualization(14),
        t_right_visualization = make_visualization(7),
        t_left_visualization = make_visualization(13),
        cross_visualization = make_visualization(15),
        ending_up_visualization = make_visualization(1),
        ending_down_visualization = make_visualization(4),
        ending_right_visualization = make_visualization(2),
        ending_left_visualization = make_visualization(8),
        straight_vertical_single_disabled_visualization = make_disabled_visualization(0),
        straight_vertical_disabled_visualization = make_disabled_visualization(5),
        straight_vertical_window_disabled_visualization = make_disabled_visualization(5),
        straight_horizontal_window_disabled_visualization = make_disabled_visualization(10),
        straight_horizontal_disabled_visualization = make_disabled_visualization(10),
        corner_up_right_disabled_visualization = make_disabled_visualization(3),
        corner_up_left_disabled_visualization = make_disabled_visualization(9),
        corner_down_right_disabled_visualization = make_disabled_visualization(6),
        corner_down_left_disabled_visualization = make_disabled_visualization(12),
        t_up_disabled_visualization = make_disabled_visualization(11),
        t_down_disabled_visualization = make_disabled_visualization(14),
        t_right_disabled_visualization = make_disabled_visualization(7),
        t_left_disabled_visualization = make_disabled_visualization(13),
        cross_disabled_visualization = make_disabled_visualization(15),
        ending_up_disabled_visualization = make_disabled_visualization(1),
        ending_down_disabled_visualization = make_disabled_visualization(4),
        ending_right_disabled_visualization = make_disabled_visualization(2),
        ending_left_disabled_visualization = make_disabled_visualization(8),
    }

    if feature_flags["freezing"] and mods["space-age"] then
        pipepictures.corner_down_left_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-corner-down-left.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.corner_down_right_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-corner-down-right.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.corner_up_left_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-corner-up-left.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.corner_up_right_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-corner-up-right.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.cross_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-cross.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.ending_down_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-ending-down.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.ending_left_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-ending-left.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.ending_right_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-ending-right.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.ending_up_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-ending-up.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.straight_horizontal_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-horizontal.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.straight_horizontal_window_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-horizontal-window.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.straight_vertical_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-vertical.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.straight_vertical_single_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-vertical-single.png",
            width = 160,
            height = 160,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.straight_vertical_window_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-vertical-window.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.t_down_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-t-down.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.t_left_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-t-left.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.t_right_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-t-right.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
        pipepictures.t_up_frozen =
        {
            filename = "__space-age__/graphics/entity/frozen/pipe/pipe-t-up.png",
            width = 128,
            height = 128,
            priority = extra_high,
            scale = 0.5
        }
    end

  return pipepictures
end

local function TIMSABA_pipetogroundpictures(pipe_type)
    return
    {
        north =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe-to-ground/pipe-to-ground-up.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        south =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe-to-ground/pipe-to-ground-down.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        east =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe-to-ground/pipe-to-ground-right.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        west =
        {
            filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe-to-ground/pipe-to-ground-left.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        }
    }
end

local function TIMSABA_pipecoverspictures(pipe_type)
    return
    {
        north =
        {
            layers =
            {
                {
                    filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-cover-north.png",
                    priority = extra_high,
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
                    priority = extra_high,
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        },
        east =
        {
            layers =
            {
                {
                    filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-cover-east.png",
                    priority = extra_high,
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
                    priority = extra_high,
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        },
        south =
        {
            layers =
            {
                {
                    filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-cover-south.png",
                    priority = extra_high,
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
                    priority = extra_high,
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        },
        west =
        {
            layers =
            {
                {
                    filename = "__TIMSABA__/graphics/icons/angels/metallurgy/" .. pipe_type .. "/pipe/pipe-cover-west.png",
                    priority = extra_high,
                    width = 128,
                    height = 128,
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
                    priority = extra_high,
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                }
            }
        }
    }
end

local function TIMSABA_pipetoground_visualization()
    return
    {
        north =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = extra_high,
            x = 64,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        south =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = extra_high,
            x = 192,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        west =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = extra_high,
            x = 256,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        east =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
            priority = extra_high,
            x = 128,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        }
    }
end

local function TIMSABA_pipetoground_disabled_visualizaton()
    return
    {
        north =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
            priority = extra_high,
            x = 64,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        south =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
            priority = extra_high,
            x = 192,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        west =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
            priority = extra_high,
            x = 256,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        },
        east =
        {
            filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
            priority = extra_high,
            x = 128,
            size = 64,
            scale = 0.5,
            flags = {"icon"}
        }
    }
end

local simulations = require("__TIMSABA__.prototypes.factoriopedia-simulations")
local pipe = "pipe"
local pipe_to_ground = "pipe-to-ground"
data:extend
({
    {
        type = pipe,
        name = molybdenum_rhenium_pipe,
        subgroup = is_pipe,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe.png",
        icon_size = 64,
        order = m,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = molybdenum_rhenium_pipe},
        max_health = 350,
        corpse = "small-remnants",
        icon_draw_specification = {scale = 0.5},
        resistances = {{type = "fire", percent = 90}},
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
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
        pictures = TIMSABA_pipepictures("molybdenum-rhenium"),
        impact_category = "metal",
        working_sound =
        {
            sound =
            {
                {
                    filename = "__base__/sound/pipe.ogg",
                    volume = 0.65
                }
            },
            match_volume_to_activity = true,
            max_sounds_per_prototype = 3
        },
        horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
        vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}},
    },
    {
        type = pipe_to_ground,
        name = molybdenum_rhenium_pipe_to_ground,
        subgroup = is_pipe_to_ground,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe-to-ground.png",
        icon_size = 64,
        order = m,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = molybdenum_rhenium_pipe_to_ground},
        max_health = 400,
        corpse = "small-remnants",
        icon_draw_specification = {scale = 0.5},
        resistances = {{type = "fire", percent = 80}},
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fluid_box =
        {
            volume = 100,
            pipe_covers = TIMSABA_pipecoverspictures("molybdenum-rhenium"),
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
                    max_underground_distance = 35
                }
            },
            hide_connection_info = true
        },
        pictures = TIMSABA_pipetogroundpictures("molybdenum-rhenium"),
        visualization = TIMSABA_pipetoground_visualization(),
        disabled_visualization = TIMSABA_pipetoground_disabled_visualizaton(),
        impact_category = "metal",
        factoriopedia_simulation = simulations.factoriopedia_molybdenum_rhenium_pipe_to_ground
    }
})

data_item[molybdenum_rhenium_pipe].place_result = molybdenum_rhenium_pipe
data_item[molybdenum_rhenium_pipe_to_ground].place_result = molybdenum_rhenium_pipe_to_ground

if feature_flags["freezing"] and mods["space-age"] then
    data_pipe[molybdenum_rhenium_pipe].heating_energy = "1kW"
    data_pipe_to_ground[molybdenum_rhenium_pipe_to_ground].heating_energy = "350kW"
    local ptgfrozenpatch = data.raw["pipe-to-ground"]["pipe-to-ground"].frozen_patch
    data_pipe_to_ground[molybdenum_rhenium_pipe_to_ground].frozen_patch = ptgfrozenpatch
    local pcfrozenpatch = data.raw.pipe.pipe.fluid_box.pipe_covers_frozen
    data_pipe[molybdenum_rhenium_pipe].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data_pipe_to_ground[molybdenum_rhenium_pipe_to_ground].fluid_box.pipe_covers_frozen = pcfrozenpatch
end

if settings.startup["bobmods-logistics-ugdistanceoverhaul"].value == true then
    bobmods.logistics.set_pipe_distance(molybdenum_rhenium_pipe_to_ground, 6)
end

if not reskins or not reskins.lib then
    return
end

local icons_pipe =
{
    {name = molybdenum_rhenium_pipe, type = item},
    {name = molybdenum_rhenium_pipe, type = recipe},
    {name = molybdenum_rhenium_pipe, type = pipe},
    {name = molybdenum_rhenium_pipe_to_ground, type = item},
    {name = molybdenum_rhenium_pipe_to_ground, type = recipe},
    {name = molybdenum_rhenium_pipe_to_ground, type = pipe_to_ground}
}
for _, info in ipairs(icons_pipe) do
    local proto = data.raw[info.type][info.name]
    if proto then
        proto.icon = nil
        proto.icons =
        {
            {
                icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/" .. info.name .. ".png",
                icon_size = 64
            }
        }
        reskins.lib.tiers.add_tier_labels_to_prototype_by_name(6, info.name, info.type)
        if info.type == pipe or info.type == pipe_to_ground then
            reskins.lib.create_particle(info.name, info.type, reskins.lib.particle_index["medium"], 1, util.color("#3e3166"))
        end
    end
end