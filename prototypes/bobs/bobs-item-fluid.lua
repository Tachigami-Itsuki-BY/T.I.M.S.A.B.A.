ceramic_gear_wheel = "ceramic-gear-wheel"
copper_tungsten_gear_wheel = "copper-tungsten-gear-wheel"
iron_bearing_ball = "iron-bearing-ball"
brass_bearing_ball = "brass-bearing-ball"
tungsten_bearing_ball = "tungsten-bearing-ball"
copper_tungsten_bearing_ball = "copper-tungsten-bearing-ball"
iron_bearing = "iron-bearing"
brass_bearing = "brass-bearing"
tungsten_bearing = "tungsten-bearing"
copper_tungsten_bearing = "copper-tungsten-bearing"
battery_graphene = "graphene-battery"
tritium_fuel_cell = "tritium-fuel-cell"
depleted_tritium_fuel_cell = "depleted-tritium-fuel-cell"
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
        order = i,
        stack_size = 200,
        weight = 5000
    },
    -- BEARING BALL
    {
        localised_description = show_formula and {chemical_formula, "Fe"} or nil,
        type = item,
        name = iron_bearing_ball,
        subgroup = is_bearing_ball,
        icon = "__TIMSABA__/graphics/icons/bobs/iron-bearing-ball.png",
        order = a,
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
        localised_description = show_formula and {chemical_formula, "W"} or nil,
        type = item,
        name = tungsten_bearing_ball,
        subgroup = is_bearing_ball,
        icon = "__TIMSABA__/graphics/icons/bobs/tungsten-bearing-ball.png",
        order = g,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "WCu"} or nil,
        type = item,
        name = copper_tungsten_bearing_ball,
        subgroup = is_bearing_ball,
        icon = "__TIMSABA__/graphics/icons/bobs/copper-tungsten-bearing-ball.png",
        order = i,
        stack_size = 200,
        weight = 5000
    },
    -- BEARING
    {
        localised_description = show_formula and {chemical_formula, "Fe"} or nil,
        type = item,
        name = iron_bearing,
        subgroup = is_bearing,
        icon = "__TIMSABA__/graphics/icons/bobs/iron-bearing.png",
        order = a,
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
        localised_description = show_formula and {chemical_formula, "W"} or nil,
        type = item,
        name = tungsten_bearing,
        subgroup = is_bearing,
        icon = "__TIMSABA__/graphics/icons/bobs/tungsten-bearing.png",
        order = g,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "WCu"} or nil,
        type = item,
        name = copper_tungsten_bearing,
        subgroup = is_bearing,
        icon = "__TIMSABA__/graphics/icons/bobs/copper-tungsten-bearing.png",
        order = i,
        stack_size = 200,
        weight = 5000
    },
    -- BATTERY
    {
        type = item,
        name = battery_graphene,
        subgroup = "intermediate-product",
        icon = "__TIMSABA__/graphics/icons/bobs/graphene-battery.png",
        order = d,
        stack_size = 200,
        weight = 5000
    },
    -- FUEL CELL
    {
        type = item,
        name = tritium_fuel_cell,
        subgroup = is_nuclear_cell,
        icon = "__TIMSABA__/graphics/icons/bobs/tritium-fuel-cell.png",
        order = j,
        stack_size = 64,
        weight = 15625,
        fuel_category = nuclear_fuel_T4,
        fuel_value = (1382400 * 4 * 2) .. kJ,
        consumption_glow_alternative_tint = {r = 0.72, g = 0.05, b = 1.0, a = 1.0},
        fuel_glow_color = {r = 0.72, g = 0.05, b = 1.0, a = 1.0}
    },
    {
        type = item,
        name = depleted_tritium_fuel_cell,
        subgroup = is_nuclear_cell,
        icon = "__TIMSABA__/graphics/icons/bobs/used-up-tritium-fuel-cell.png",
        order = k,
        stack_size = 64,
        weight = 15625
    }
})

--[[data:extend
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
    }
})]]
--[[data:extend
({
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
})]]

data_item[tritium_fuel_cell].burnt_result = depleted_tritium_fuel_cell