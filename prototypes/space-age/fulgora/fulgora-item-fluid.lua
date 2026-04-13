-- HOLMIM SMELTING
holmium_processed = "holmium-processed"
holmium_pellet = "holmium-pellet"
holmium_ingot = "holmium-ingot"
holmium_powder = "holmium-powder"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_processed,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-processed.png",
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_pellet,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-pellet.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_ingot,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot.png",
        order = d,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-4.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-5.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-6.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-7.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-8.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_powder,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-powder.png",
        order = e,
        stack_size = 200,
        weight = 5000
    }
})

-- HOLMIUM CHEMISTRY
holmium_chloride_solution = "holmium-chloride-solution"
holmium_fluoride = "holmium-fluoride"
holmium_cathode = "holmium-cathode"
holmium_oxide = "holmium-oxide"
holmium_nitrate_solution = "holmium-nitrate-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "HoF[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = holmium_fluoride,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-fluoride.png",
        icon_size = 64,
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_cathode,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-cathode.png",
        icon_size = 32,
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = holmium_oxide,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-oxide.png",
        icon_size = 64,
        order = e,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "HoCl[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = holmium_chloride_solution,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-chloride-solution.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("HoCl3Wp"),
        flow_color = TIMSABA.functions.flow_color("HoCl3Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho(NO[font=default-tiny-bold]3[/font])[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = holmium_nitrate_solution,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-nitrate-solution.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("HoN2O6Wp"),
        flow_color = TIMSABA.functions.flow_color("HoN2O6Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- HOLMIUM CASTING
holmium_molten = "holmium-molten"
holmium_roll = "holmium-roll"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_roll,
        subgroup = is_holmium_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/roll-holmium.png",
        order = b,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = fluid,
        name = holmium_molten,
        subgroup = is_holmium_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-molten.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("HoHoHo"),
        flow_color = TIMSABA.functions.flow_color("HoHoHo"),
        max_temperature = 0,
        auto_barrel = false
    }
})

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

--[[
data:extend
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
})
]]