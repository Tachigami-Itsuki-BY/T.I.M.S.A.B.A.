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

local Public = {}

function Public.TIMSABA_pipepictures(pipe_type)
    local pipepictures =
    {
        straight_vertical_single =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-straight-vertical-single.png",
            priority = extra_high,
            width = 160,
            height = 160,
            scale = 0.5
        },
        straight_vertical =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-straight-vertical.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_vertical_window =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-straight-vertical-window.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_horizontal_window =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-straight-horizontal-window.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        straight_horizontal =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-straight-horizontal.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_up_right =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-corner-up-right.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_up_left =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-corner-up-left.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_down_right =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-corner-down-right.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        corner_down_left =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-corner-down-left.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_up =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-t-up.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_down =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-t-down.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_right =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-t-right.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        t_left =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-t-left.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        cross =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-cross.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_up =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-ending-up.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_down =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-ending-down.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_right =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-ending-right.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        ending_left =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-ending-left.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        horizontal_window_background =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-horizontal-window-background.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        vertical_window_background =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-vertical-window-background.png",
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

function Public.TIMSABA_pipetogroundpictures(pipe_type)
    return
    {
        north =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe-to-ground/pipe-to-ground-up.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        south =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe-to-ground/pipe-to-ground-down.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        east =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe-to-ground/pipe-to-ground-right.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        },
        west =
        {
            filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe-to-ground/pipe-to-ground-left.png",
            priority = extra_high,
            width = 128,
            height = 128,
            scale = 0.5
        }
    }
end

function Public.TIMSABA_pipecoverspictures(pipe_type)
    return
    {
        north =
        {
            layers =
            {
                {
                    filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-cover-north.png",
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
                    filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-cover-east.png",
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
                    filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-cover-south.png",
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
                    filename = "__TIMSABA__/graphics/entity/pipes/" .. pipe_type .. "/pipe/pipe-cover-west.png",
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

function Public.TIMSABA_pipetoground_visualization()
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

function Public.TIMSABA_pipetoground_disabled_visualizaton()
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

return Public