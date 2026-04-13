local is_gears = "bob-gears"
local is_bearing_ball = "bob-bearings"
ceramic_gear_wheel = "ceramic-gear-wheel"
copper_tungsten_gear_wheel = "copper-tungsten-gear-wheel"
brass_bearing_ball = "brass-bearing-ball"
copper_tungsten_bearing_ball = "copper-tungsten-bearing-ball"
brass_bearing = "brass-bearing"
copper_tungsten_bearing = "copper-tungsten-bearing"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Si[font=default-tiny-bold]3[/font]N[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = ceramic_gear_wheel,
        subgroup = is_gears,
        icon = "__TIMSABA__/graphics/icons/bobs/ceramic-gear-wheel.png",
        order = d,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "WCu"} or nil,
        type = item,
        name = copper_tungsten_gear_wheel,
        subgroup = is_gears,
        icon = "__TIMSABA__/graphics/icons/bobs/copper-tungsten-gear-wheel.png",
        order = h,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "CuZn"} or nil,
        type = item,
        name = brass_bearing_ball,
        subgroup = is_bearing_ball,
        icon = "__TIMSABA__/graphics/icons/bobs/brass-bearing-ball.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "WCu"} or nil,
        type = item,
        name = copper_tungsten_bearing_ball,
        subgroup = is_bearing_ball,
        icon = "__TIMSABA__/graphics/icons/bobs/copper-tungsten-bearing-ball.png",
        order = h,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "CuZn"} or nil,
        type = item,
        name = brass_bearing,
        subgroup = is_bearing,
        icon = "__TIMSABA__/graphics/icons/bobs/brass-bearing.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "WCu"} or nil,
        type = item,
        name = copper_tungsten_bearing,
        subgroup = is_bearing,
        icon = "__TIMSABA__/graphics/icons/bobs/copper-tungsten-bearing.png",
        order = h,
        stack_size = 200,
        weight = 5000
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
        icon = "__TIMSABA__/graphics/icons/bobs/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/bobs/.png",
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