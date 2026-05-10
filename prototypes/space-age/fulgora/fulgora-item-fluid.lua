-- AIR
fulgora_air = "fulgora-air"
data:extend
({
    {
        type = fluid,
        name = fulgora_air,
        subgroup = is_fulgora_air,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/fulgora-air.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = {r = 86 / 255, g = 32 / 255, b = 56 / 255},
        flow_color = {r = 96 / 255, g = 42 / 255, b = 66 / 255},
        max_temperature = 0,
        auto_barrel = false
    }
})

-- SCRAP
construction_scrap = "construction-scrap"
machinery_scrap = "machinery-scrap"
data:extend
({
    {
        type = item,
        name = construction_scrap,
        subgroup = is_scrap,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/construction-scrap.png",
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        type = item,
        name = machinery_scrap,
        subgroup = is_scrap,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/machinery-scrap.png",
        order = c,
        stack_size = 200,
        weight = 5000
    }
})

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]