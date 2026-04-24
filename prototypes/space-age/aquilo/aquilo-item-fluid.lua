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