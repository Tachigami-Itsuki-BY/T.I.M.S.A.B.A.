-- ANGELS BIOPROCESSING NAUVIS
-- FLUID
iodine_gas = "iodine-gas"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "I[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = iodine_gas,
        subgroup = "angels-bio-processing-brown",
        icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/iodine/iodine-gas.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("III"),
        flow_color = TIMSABA.functions.flow_color("III"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- ANGELS BIOPROCESSING VEGETABLES
-- ITEM
cellulose_triacetate = "cellulose-triacetate"
cellulose_diacetate = "cellulose-diacetate"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "(C[font=default-tiny-bold]12[/font]H[font=default-tiny-bold]16[/font]O[font=default-tiny-bold]8[/font])[font=default-tiny-bold]n[/font]"} or nil,
        type = item,
        name = cellulose_triacetate,
        subgroup = is_bio_plastic,
        icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/cellulose-triacetate.png",
        icon_size = 32, -- 64!!!
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "(C[font=default-tiny-bold]10[/font]H[font=default-tiny-bold]14[/font]O[font=default-tiny-bold]7[/font])[font=default-tiny-bold]n[/font]"} or nil,
        type = item,
        name = cellulose_diacetate,
        subgroup = is_bio_plastic,
        icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/cellulose-diacetate.png",
        icon_size = 32, -- 64!!!
        order = b,
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
        icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/.png",
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