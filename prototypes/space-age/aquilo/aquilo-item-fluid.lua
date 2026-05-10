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

--[[data:extend
({
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
})]]

-- FLUORINE
chloroform_liquid = "chloroform-liquid"
difluorochloromethane_gas = "difluorochloromethane-gas"
tetrafluoroethylene_gas = "tetrafluoroethylene-gas"
hexafluoropropylene_gas = "hexafluoropropylene-gas"
hexafluoropropylene_oxide_gas = "hexafluoropropylene-oxide-gas"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "CHCl[font=default-tiny-bold]3[/font]"} or nil,
        type = fluid,
        name = chloroform_liquid,
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

--[[data:extend
({
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
})]]

-- SEMICONDUCTOR ITEM
sodium_nitrite = "sodium-nitrite"
semiconductor = "semiconductor"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "NaNO[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = sodium_nitrite,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/sodium-nitrite.png",
        order = i,
        stack_size = 200,
        weight = 5000
    },
    {
        type = item,
        name = semiconductor,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/semiconductor.png",
        order = n,
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
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- SEMICONDUCTOR FLUID
nitrobenzene_liquid = "nitrobenzene-liquid"
aniline_liquid = "aniline-liquid"
benzenediazonium_chloride_solution = "benzenediazonium-chloride-solution"
lactic_acid = "lactic-acid"
ethyl_lactate_liquid = "ethyl-lactate-liquid"
photoresist_liquid = "photoresist-liquid"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]5[/font]NO[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = nitrobenzene_liquid,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/nitrobenzene-liquid.png",
        order = g,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C6H5NO2"),
        flow_color = TIMSABA.functions.flow_color("C6H5NO2"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]7[/font]N"} or nil,
        type = fluid,
        name = aniline_liquid,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/aniline-liquid.png",
        order = h,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C6H7N"),
        flow_color = TIMSABA.functions.flow_color("C6H7N"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]5[/font]N[font=default-tiny-bold]2[/font]Cl[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = benzenediazonium_chloride_solution,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/benzenediazonium-chloride-solution.png",
        order = j,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C6H5N2ClWp"),
        flow_color = TIMSABA.functions.flow_color("C6H5N2ClWp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        type = fluid,
        name = lactic_acid,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/lactic-acid.png",
        order = k,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C3H6O3"),
        flow_color = TIMSABA.functions.flow_color("C3H6O3"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]5[/font]H[font=default-tiny-bold]10[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        type = fluid,
        name = ethyl_lactate_liquid,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/ethyl-lactate-liquid.png",
        order = l,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C5H10O3"),
        flow_color = TIMSABA.functions.flow_color("C5H10O3"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        type = fluid,
        name = photoresist_liquid,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/photoresist-liquid.png",
        order = m,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = {r = 0.95, g = 0.90, b = 0.50},
        flow_color = {r = 1.0, g = 0.95, b = 0.70},
        max_temperature = 0,
        auto_barrel = false
    }
})

--[[data:extend
({
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
})]]