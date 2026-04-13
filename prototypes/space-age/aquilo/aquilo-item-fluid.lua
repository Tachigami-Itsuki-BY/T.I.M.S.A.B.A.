-- ANTIMONY SMELTING
antimony_ore = "antimony-ore"
antimony_processed = "antimony-processed"
antimony_pellet = "antimony-pellet"
antimony_ingot = "antimony-ingot"
antimony_powder = "antimony-powder"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = item,
        name = antimony_ore,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ore.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ore-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ore-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ore-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = item,
        name = antimony_processed,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-processed.png",
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = item,
        name = antimony_pellet,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-pellet.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = item,
        name = antimony_ingot,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ingot.png",
        order = d,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ingot-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ingot-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ingot-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ingot-4.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ingot-5.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ingot-6.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ingot-7.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-ingot-8.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = item,
        name = antimony_powder,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-powder.png",
        order = e,
        stack_size = 200,
        weight = 5000
    }
})

-- ANTIMONY CHEMISTRY
antimony_chloride_III = "antimony-chloride-III"
antimony_chloride_V_liquid = "antimony-chloride-V-liquid"
antimony_acid = "antimony-acid-solution"
antimony_oxide = "antimony-oxide"
hexachloroantimonic_acid = "hexachloroantimonic-acid-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "SbCl[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = antimony_chloride_III,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-chloride-III.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]5[/font]"} or nil,
        type = item,
        name = antimony_oxide,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-oxide.png",
        icon_size = 64,
        order = d,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "SbCl[font=default-tiny-bold]5[/font]"} or nil,
        type = fluid,
        name = antimony_chloride_V_liquid,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-chloride-V-liquid.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("SbCl5"),
        flow_color = TIMSABA.functions.flow_color("SbCl5"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]3[/font]SbO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = antimony_acid,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-acid-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("H3SbO4Wp"),
        flow_color = TIMSABA.functions.flow_color("H3SbO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "HSbCl[font=default-tiny-bold]6(aq)[/font]"} or nil,
        type = fluid,
        name = hexachloroantimonic_acid,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/hexachloroantimonic-acid-solution.png",
        order = e,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("HSbCl6Wp"),
        flow_color = TIMSABA.functions.flow_color("HSbCl6Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- ANTIMONY CASTING
antimony_molten = "antimony-molten"
data:extend
({
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = fluid,
        name = antimony_molten,
        subgroup = is_antimony_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony-molten.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("SbSbSb"),
        flow_color = TIMSABA.functions.flow_color("SbSbSb"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- AQUILO AIR
aquilo_air = "aquilo-air"
tetrafluorohydrazine_gas = "tetrafluorohydrazine-gas"
nitrogen_trifluoride_gas = "nitrogen-trifluoride-gas"
nitrogen_trifluoride_liquefied = "nitrogen-trifluoride-liquefied"
data:extend
({
    {
        type = fluid,
        name = aquilo_air,
        subgroup = is_aquilo_air,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/aquilo-air.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = {r = 94 / 255, g = 115 / 255, b = 126 / 255},
        flow_color = {r = 113 / 255, g = 132 / 255, b = 142 / 255},
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "N[font=default-tiny-bold]2[/font]F[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = tetrafluorohydrazine_gas,
        subgroup = is_aquilo_air,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/tetrafluorohydrazine-gas.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("N2F4"),
        flow_color = TIMSABA.functions.flow_color("N2F4"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "NF[font=default-tiny-bold]3[/font]"} or nil,
        type = fluid,
        name = nitrogen_trifluoride_gas,
        subgroup = is_aquilo_air,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/nitrogen-trifluoride-gas.png",
        order = c,
        default_temperature = -129,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NF3"),
        flow_color = TIMSABA.functions.flow_color("NF3"),
        max_temperature = 200,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "NF[font=default-tiny-bold]3(liquefied)[/font]"} or nil,
        type = fluid,
        name = nitrogen_trifluoride_liquefied,
        subgroup = is_aquilo_air,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/nitrogen-trifluoride-liquefied.png",
        order = d,
        default_temperature = -207,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NF3"),
        flow_color = TIMSABA.functions.flow_color("NF3"),
        max_temperature = -129,
        auto_barrel = false
    }
})

-- FLUORINE
chloroform_luiqd = "chloroform-luiqd"
difluorochloromethane_gas = "difluorochloromethane-gas"
tetrafluoroethylene_gas = "tetrafluoroethylene-gas"
hexafluoropropylene_gas = "hexafluoropropylene-gas"
hexafluoropropylene_oxide_gas = "hexafluoropropylene-oxide-gas"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "CHCl[font=default-tiny-bold]3[/font]"} or nil,
        type = fluid,
        name = chloroform_luiqd,
        subgroup = is_aquilo_fluorine,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/chloroform-luiqd.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("CHCl3"),
        flow_color = TIMSABA.functions.flow_color("CHCl3"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "CHClF[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = difluorochloromethane_gas,
        subgroup = is_aquilo_fluorine,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/difluorochloromethane-gas.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("CHClF2"),
        flow_color = TIMSABA.functions.flow_color("CHClF2"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]F[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = tetrafluoroethylene_gas,
        subgroup = is_aquilo_fluorine,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/tetrafluoroethylene-gas.png",
        order = e,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C2F4"),
        flow_color = TIMSABA.functions.flow_color("C2F4"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]F[font=default-tiny-bold]6[/font]"} or nil,
        type = fluid,
        name = hexafluoropropylene_gas,
        subgroup = is_aquilo_fluorine,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/hexafluoropropylene-gas.png",
        order = f,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C3F6"),
        flow_color = TIMSABA.functions.flow_color("C3F6"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]F[font=default-tiny-bold]6[/font]O"} or nil,
        type = fluid,
        name = hexafluoropropylene_oxide_gas,
        subgroup = is_aquilo_fluorine,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/hexafluoropropylene-oxide-gas.png",
        order = g,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C3F6O"),
        flow_color = TIMSABA.functions.flow_color("C3F6O"),
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
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/.png",
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