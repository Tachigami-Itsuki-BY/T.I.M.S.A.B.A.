vulcanus_air = "vulcanus-air"
data:extend
({
    {
        type = fluid,
        name = vulcanus_air,
        subgroup = is_vulcanus_air,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/vulcanus-air.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = {r = 140 / 255, g = 60 / 255, b = 30 / 255},
        flow_color = {r = 150 / 255, g = 65 / 255, b = 40 / 255},
        max_temperature = 0,
        auto_barrel = false
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
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/.png",
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