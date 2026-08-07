-- AQUILO AIR
aquilo_air = "aquilo-air"
tetrafluorohydrazine_gas = "tetrafluorohydrazine-gas"
nitrogen_trifluoride_gas = "nitrogen-trifluoride-gas"
nitrogen_trifluoride_liquefied = "nitrogen-trifluoride-liquefied"
TIMSABA.functions.create_fluids
({
    {
        name = aquilo_air,
        subgroup = is_aquilo_air,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/aquilo-air.png",
        order = a,
        base_color = {r = 94 / 255, g = 115 / 255, b = 126 / 255},
        flow_color = {r = 113 / 255, g = 132 / 255, b = 142 / 255}
    },
    {
        localised_description = show_formula and {chemical_formula, "N[font=default-tiny-bold]2[/font]F[font=default-tiny-bold]4[/font]"} or nil,
        name = tetrafluorohydrazine_gas,
        subgroup = is_aquilo_air,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/tetrafluorohydrazine-gas.png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("N2F4"),
        flow_color = TIMSABA.functions.flow_color("N2F4")
    },
    {
        localised_description = show_formula and {chemical_formula, "NF[font=default-tiny-bold]3[/font]"} or nil,
        name = nitrogen_trifluoride_gas,
        subgroup = is_aquilo_air,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/nitrogen-trifluoride-gas.png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("NF3"),
        flow_color = TIMSABA.functions.flow_color("NF3"),
        default_temperature = -129,
        max_temperature = 200
    },
    {
        localised_description = show_formula and {chemical_formula, "NF[font=default-tiny-bold]3(liquefied)[/font]"} or nil,
        name = nitrogen_trifluoride_liquefied,
        subgroup = is_aquilo_air,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/nitrogen-trifluoride-liquefied.png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("NF3"),
        flow_color = TIMSABA.functions.flow_color("NF3"),
        default_temperature = -207,
        max_temperature = -129
    }
})
TIMSABA.barreling.add_gas(aquilo_air)
TIMSABA.barreling.add_gas(tetrafluorohydrazine_gas)
TIMSABA.barreling.add_gas(nitrogen_trifluoride_gas)
TIMSABA.barreling.add_gas(nitrogen_trifluoride_liquefied)

-- FLUORINE
chloroform_liquid = "chloroform-liquid"
difluorochloromethane_gas = "difluorochloromethane-gas"
tetrafluoroethylene_gas = "tetrafluoroethylene-gas"
hexafluoropropylene_gas = "hexafluoropropylene-gas"
hexafluoropropylene_oxide_gas = "hexafluoropropylene-oxide-gas"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "CHCl[font=default-tiny-bold]3[/font]"} or nil,
        name = chloroform_liquid,
        subgroup = is_aquilo_fluorine,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/chloroform-luiqd.png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("CHCl3"),
        flow_color = TIMSABA.functions.flow_color("CHCl3")
    },
    {
        localised_description = show_formula and {chemical_formula, "CHClF[font=default-tiny-bold]2[/font]"} or nil,
        name = difluorochloromethane_gas,
        subgroup = is_aquilo_fluorine,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/difluorochloromethane-gas.png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("CHClF2"),
        flow_color = TIMSABA.functions.flow_color("CHClF2")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]F[font=default-tiny-bold]4[/font]"} or nil,
        name = tetrafluoroethylene_gas,
        subgroup = is_aquilo_fluorine,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/tetrafluoroethylene-gas.png",
        order = e,
        base_color = TIMSABA.functions.fluid_color("C2F4"),
        flow_color = TIMSABA.functions.flow_color("C2F4")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]F[font=default-tiny-bold]6[/font]"} or nil,
        name = hexafluoropropylene_gas,
        subgroup = is_aquilo_fluorine,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/hexafluoropropylene-gas.png",
        order = f,
        base_color = TIMSABA.functions.fluid_color("C3F6"),
        flow_color = TIMSABA.functions.flow_color("C3F6")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]F[font=default-tiny-bold]6[/font]O"} or nil,
        name = hexafluoropropylene_oxide_gas,
        subgroup = is_aquilo_fluorine,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/hexafluoropropylene-oxide-gas.png",
        order = g,
        base_color = TIMSABA.functions.fluid_color("C3F6O"),
        flow_color = TIMSABA.functions.flow_color("C3F6O")
    }
})
TIMSABA.barreling.add_dangerous_fluid(chloroform_liquid)
TIMSABA.barreling.add_gas(difluorochloromethane_gas)
TIMSABA.barreling.add_gas(tetrafluoroethylene_gas)
TIMSABA.barreling.add_gas(hexafluoropropylene_gas)
TIMSABA.barreling.add_gas(hexafluoropropylene_oxide_gas)

-- SEMICONDUCTOR ITEM
sodium_nitrite = "sodium-nitrite"
semiconductor = "semiconductor"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "NaNO[font=default-tiny-bold]2[/font]"} or nil,
        name = sodium_nitrite,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/sodium-nitrite.png",
        order = i
    },
    {
        name = semiconductor,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/semiconductor.png",
        order = n
    }
})

-- SEMICONDUCTOR FLUID
nitrobenzene_liquid = "nitrobenzene-liquid"
aniline_liquid = "aniline-liquid"
benzenediazonium_chloride_solution = "benzenediazonium-chloride-solution"
lactic_acid = "lactic-acid"
ethyl_lactate_liquid = "ethyl-lactate-liquid"
photoresist_liquid = "photoresist-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]5[/font]NO[font=default-tiny-bold]2[/font]"} or nil,
        name = nitrobenzene_liquid,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/nitrobenzene-liquid.png",
        order = g,
        base_color = TIMSABA.functions.fluid_color("C6H5NO2"),
        flow_color = TIMSABA.functions.flow_color("C6H5NO2")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]7[/font]N"} or nil,
        name = aniline_liquid,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/aniline-liquid.png",
        order = h,
        base_color = TIMSABA.functions.fluid_color("C6H7N"),
        flow_color = TIMSABA.functions.flow_color("C6H7N")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]5[/font]N[font=default-tiny-bold]2[/font]Cl[font=default-tiny-bold](aq)[/font]"} or nil,
        name = benzenediazonium_chloride_solution,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/benzenediazonium-chloride-solution.png",
        order = j,
        base_color = TIMSABA.functions.fluid_color("C6H5N2ClWp"),
        flow_color = TIMSABA.functions.flow_color("C6H5N2ClWp")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        name = lactic_acid,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/lactic-acid.png",
        order = k,
        base_color = TIMSABA.functions.fluid_color("C3H6O3"),
        flow_color = TIMSABA.functions.flow_color("C3H6O3")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]5[/font]H[font=default-tiny-bold]10[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        name = ethyl_lactate_liquid,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/ethyl-lactate-liquid.png",
        order = l,
        base_color = TIMSABA.functions.fluid_color("C5H10O3"),
        flow_color = TIMSABA.functions.flow_color("C5H10O3")
    },
    {
        name = photoresist_liquid,
        subgroup = is_aquilo_recipe,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/photoresist-liquid.png",
        order = m,
        base_color = {r = 0.95, g = 0.90, b = 0.50},
        flow_color = {r = 1.0, g = 0.95, b = 0.70}
    }
})
TIMSABA.barreling.add_dangerous_fluid(nitrobenzene_liquid)
TIMSABA.barreling.add_dangerous_fluid(aniline_liquid)
TIMSABA.barreling.add_dangerous_fluid(benzenediazonium_chloride_solution)
TIMSABA.barreling.add_dangerous_fluid(lactic_acid)
TIMSABA.barreling.add_dangerous_fluid(ethyl_lactate_liquid)
TIMSABA.barreling.add_dangerous_fluid(photoresist_liquid)