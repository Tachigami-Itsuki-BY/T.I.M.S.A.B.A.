-- ANGELS PETROCHEM REFINING
-- BASIC PETROCHEN FLUIDS
tritium_gas = "tritium-gas"
argon_gas = "argon-gas"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "T[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = tritium_gas,
        subgroup = is_basic_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/tritium-gas.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("TTT"),
        flow_color = TIMSABA.functions.flow_color("TTT"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Ar"} or nil,
        type = fluid,
        name = argon_gas,
        subgroup = is_basic_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/argon-gas.png",
        order = h,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("ArArAr"),
        flow_color = TIMSABA.functions.flow_color("ArArAr"),
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- COAL
coke_processed = "coke-processed"
pitch = "pitch"
raw_graphite_block = "raw-graphite-block"
graphite_block = "graphite-block"
graphite_plate = "graphite-plate"
graphite_electrode = "graphite-electrode"
graphite_chips = "graphite-chips"
carbon_nanotube = "carbon-nanotube"
graphene_oxide = "graphene-oxide"
graphene = "graphene"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]a[/font]H[font=default-tiny-bold]b[/font]O[font=default-tiny-bold]c[/font]N[font=default-tiny-bold]d[/font]S[font=default-tiny-bold]e[/font]"} or nil,
        type = item,
        name = coke_processed,
        subgroup = is_coal,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/coke-processed.png",
        order = e,
        stack_size = 200,
        weight = 5000,
        fuel_category = base_fuel,
        fuel_value = 7200 .. kJ
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        type = item,
        name = pitch,
        subgroup = is_coal,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/pitch.png",
        order = g,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        type = item,
        name = raw_graphite_block,
        subgroup = is_coal,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/raw-graphite-block.png",
        order = h,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        type = item,
        name = graphite_block,
        subgroup = is_coal,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/graphite-block.png",
        order = i,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        type = item,
        name = graphite_plate,
        subgroup = is_coal,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/graphite-plate.png",
        order = j,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        type = item,
        name = graphite_chips,
        subgroup = is_coal,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/graphite-chips.png",
        order = k,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        type = item,
        name = graphite_electrode,
        subgroup = is_coal,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/graphite-electrode.png",
        order = l,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "С"} or nil,
        type = item,
        name = carbon_nanotube,
        subgroup = is_coal,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/carbon-nanotube.png",
        order = m,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]a[/font]H[font=default-tiny-bold]b[/font]O[font=default-tiny-bold]c[/font]"} or nil,
        type = item,
        name = graphene_oxide,
        subgroup = is_coal,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/graphene-oxide.png",
        order = n,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        type = item,
        name = graphene,
        subgroup = is_coal,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/graphene.png",
        order = o,
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
coal_tar_liquid = "coal-tar-liquid"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]10[/font]H[font=default-tiny-bold]8[/font]"} or nil,
        type = fluid,
        name = coal_tar_liquid,
        subgroup = is_carbon_fluids_1,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/coal-tar-liquid.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("CCC"),
        flow_color = TIMSABA.functions.flow_color("CCC"),
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- CARBON FLUIDS 1
carbonic_acid = "carbonic-acid"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]CO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = carbonic_acid,
        subgroup = is_carbon_fluids_1,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/carbonic-acid-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("H2CO3Wp"),
        flow_color = TIMSABA.functions.flow_color("H2CO3Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- NITROGEN
local is_nitrogen = "angels-petrochem-nitrogen"
ammonium_sulfate = "ammonium-sulfate"
ammonium_chloride = "ammonium-chloride"
ammonium_hydrosulfate = "ammonium-hydrosulfate"
hexamethylenediamine = "hexamethylenediamine"
imidazole = "imidazole"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = ammonium_sulfate,
        subgroup = is_nitrogen,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/ammonium-sulfate.png",
        order = d,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]Cl"} or nil,
        type = item,
        name = ammonium_chloride,
        subgroup = is_nitrogen,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/ammonium-chloride.png",
        order = e,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]HSO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = ammonium_hydrosulfate,
        subgroup = is_nitrogen,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/ammonium-hydrosulfate.png",
        order = f,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "С[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]16[/font]N[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = hexamethylenediamine,
        subgroup = is_nitrogen,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/hexamethylenediamine.png",
        icon_size = 64,
        order = g,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]4[/font]N[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = imidazole,
        subgroup = is_nitrogen,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/imidazole.png",
        order = h,
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
cyanamide_solution = "cyanamide-solution"
dicyandiamide_solution = "dicyandiamide-solution"
ammonium_sulfate_solution = "ammonium-sulfate-solution"
acrylonitrile = "acrylonitrile-liquid"
acetone_cyanohydrin = "acetone-cyanohydrin-liquid"
nitrogen_oxide = "nitrogen-oxide-gas"
adiponitrile_liquid = "adiponitrile-liquid"
imidazole_solution = "imidazole-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]2[/font]CN[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = cyanamide_solution,
        subgroup = is_nitrogen_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/cyanamide-solution.png",
        order = p,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NH2CNWp"),
        flow_color = TIMSABA.functions.flow_color("NH2CNWp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]2[/font])[font=default-tiny-bold]2[/font](CN)[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = dicyandiamide_solution,
        subgroup = is_nitrogen_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/dicyandiamide-solution.png",
        order = q,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C2H4N4Wp"),
        flow_color = TIMSABA.functions.flow_color("C2H4N4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = ammonium_sulfate_solution,
        subgroup = is_nitrogen_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/ammonium-sulfate-solution.png",
        order = r,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("N4H8SO4Wp"),
        flow_color = TIMSABA.functions.flow_color("N4H8SO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]3[/font]N"} or nil,
        type = fluid,
        name = acrylonitrile,
        subgroup = is_nitrogen_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/acrylonitrile-liquid.png",
        order = s,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C3H3N"),
        flow_color = TIMSABA.functions.flow_color("C3H3N"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]7[/font]NO"} or nil,
        type = fluid,
        name = acetone_cyanohydrin,
        subgroup = is_nitrogen_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/acetone-cyanohydrin-liquid.png",
        order = t,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C4H7NO"),
        flow_color = TIMSABA.functions.flow_color("C4H7NO"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "N[font=default-tiny-bold]2[/font]O"} or nil,
        type = fluid,
        name = nitrogen_oxide,
        subgroup = is_nitrogen_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/nitrogen-oxide-gas.png",
        order = u,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("N2O"),
        flow_color = TIMSABA.functions.flow_color("N2O"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]8[/font]N[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = adiponitrile_liquid,
        subgroup = is_nitrogen_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/adiponitrile-liquid.png",
        order = w,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C6H8N2"),
        flow_color = TIMSABA.functions.flow_color("C6H8N2"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]4[/font]N[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = imidazole_solution,
        subgroup = is_nitrogen_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/imidazole-solution.png",
        order = x,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C3H4O2Wp"),
        flow_color = TIMSABA.functions.flow_color("C3H4O2Wp"),
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
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
hydrogen_fluoride_liquefied = "hydrogen-fluoride-liquefied"
oxygen_fluoride_gas = "oxygen-fluoride-gas"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "HF"} or nil,
        type = fluid,
        name = hydrogen_fluoride_liquefied,
        subgroup = is_fluorine_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/hydrogen-fluoride-liquefied.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("HF"),
        flow_color = TIMSABA.functions.flow_color("HF"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "OF[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = oxygen_fluoride_gas,
        subgroup = is_fluorine_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/oxygen-fluoride-gas.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("OF2"),
        flow_color = TIMSABA.functions.flow_color("OF2"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- SODIUM
sodium_peroxide = "sodium-peroxide"
sodium_oxide = "sodium-oxide"
sodium_chloride_solution = "sodium-chloride-solution"
sodium_sulfate_solution = "sodium-sulfate-solution"
sodium_carbonate_solution = "sodium-carbonate-solution"
sodium_nitrate_solution = "sodium-nitrate-solution"
sodium_hypochlorite_solution = "sodium-hypochlorite-solution"
sodium_chlorate_solution = "sodium-chlorate-solution"
sodium_perchlorate_solution = "sodium-perchlorate-solution"
sodium_bicarbonate_solution = "sodium-bicarbonate-solution"
sodium_cyanide_solution = "sodium-cyanide-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = sodium_peroxide,
        subgroup = is_sodium,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/sodium-peroxide.png",
        icon_size = 64,
        order = l,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]O"} or nil,
        type = item,
        name = sodium_oxide,
        subgroup = is_sodium,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/sodium-oxide.png",
        icon_size = 64,
        order = m,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "NaCl[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = sodium_chloride_solution,
        subgroup = is_sodium_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/sodium-chloride-solution.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NaClWp"),
        flow_color = TIMSABA.functions.flow_color("NaClWp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_sulfate_solution,
        subgroup = is_sodium_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/sodium-sulfate-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("Na2SO4Wp"),
        flow_color = TIMSABA.functions.flow_color("Na2SO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]CO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_carbonate_solution,
        subgroup = is_sodium_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/sodium-carbonate-solution.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("Na2CO3Wp"),
        flow_color = TIMSABA.functions.flow_color("Na2CO3Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "NaNO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_nitrate_solution,
        subgroup = is_sodium_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/sodium-nitrate-solution.png",
        order = e,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NaNO3Wp"),
        flow_color = TIMSABA.functions.flow_color("NaNO3Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "NaClO[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = sodium_hypochlorite_solution,
        subgroup = is_sodium_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/sodium-hypochlorite-solution.png",
        order = f,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NaClOWp"),
        flow_color = TIMSABA.functions.flow_color("NaClOWp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "NaClO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_chlorate_solution,
        subgroup = is_sodium_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/sodium-chlorate-solution.png",
        order = g,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NaClO3Wp"),
        flow_color = TIMSABA.functions.flow_color("NaClO3Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "NaClO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_perchlorate_solution,
        subgroup = is_sodium_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/sodium-perchlorate-solution.png",
        order = h,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NaClO4Wp"),
        flow_color = TIMSABA.functions.flow_color("NaClO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "NaHCO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_bicarbonate_solution,
        subgroup = is_sodium_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/sodium-bicarbonate-solution.png",
        order = i,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NaHCO3Wp"),
        flow_color = TIMSABA.functions.flow_color("NaHCO3Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "NaCN[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = sodium_cyanide_solution,
        subgroup = is_sodium_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/sodium-cyanide-solution.png",
        order = j,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NaCNWp"),
        flow_color = TIMSABA.functions.flow_color("NaCNWp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- SULFUR
sulfur_trioxide_gas = "sulfur-trioxide-gas"
peroxydisulfuric_acid = "peroxydisulfuric-acid"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]S[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]8[/font]"} or nil,
        type = item,
        name = peroxydisulfuric_acid,
        subgroup = is_sulfur_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sulfur/peroxydisulfuric-acid.png",
        order = g,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "SO[font=default-tiny-bold]3[/font]"} or nil,
        type = fluid,
        name = sulfur_trioxide_gas,
        subgroup = is_sulfur_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/sulfur/sulfur-trioxide-gas.png",
        order = e,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("SO3"),
        flow_color = TIMSABA.functions.flow_color("SO3"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- CHLORINE
-- FLUID
phosgene_gas = "phosgene-gas"
chlorine_oxide_gas = "chlorine-oxide-gas"
hypochlorous_acid = "hypochlorous-acid-solution"
chloroethane_gas = "chloroethane-gas"
chlorobutane_liquid = "chlorobutane-liquid"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "COCl[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = phosgene_gas,
        subgroup = is_chlorine_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/phosgene-gas.png",
        order = g,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("COCl2"),
        flow_color = TIMSABA.functions.flow_color("COCl2"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Cl[font=default-tiny-bold]2[/font]O"} or nil,
        type = fluid,
        name = chlorine_oxide_gas,
        subgroup = is_chlorine_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/chlorine-oxide-gas.png",
        order = h,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("Cl2O"),
        flow_color = TIMSABA.functions.flow_color("Cl2O"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "HClO[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = hypochlorous_acid,
        subgroup = is_chlorine_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/hypochlorous-acid-solution.png",
        order = i,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("HClOWp"),
        flow_color = TIMSABA.functions.flow_color("HClOWp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]5[/font]Cl"} or nil,
        type = fluid,
        name = chloroethane_gas,
        subgroup = is_chlorine_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/chloroethane-gas.png",
        order = j,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C2H5Cl"),
        flow_color = TIMSABA.functions.flow_color("C2H5Cl"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]9[/font]Cl"} or nil,
        type = fluid,
        name = chlorobutane_liquid,
        subgroup = is_chlorine_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/chlorobutane-liquid.png",
        order = k,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C4H9Cl"),
        flow_color = TIMSABA.functions.flow_color("C4H9Cl"),
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- CALCIUM
calcium = "calcium"
calcium_carbide = "calcium-carbide"
calcium_cyanamide = "calcium-cyanamide"
calcium_hydroxide = "calcium-hydroxide"
calcium_hydroxide_solution = "calcium-hydroxide-solution"
calcium_chloride_solution = "calcium-chloride-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Ca"} or nil,
        type = item,
        name = calcium,
        subgroup = is_calcium,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/calcium/calcium.png",
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "CaC[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = calcium_carbide,
        subgroup = is_calcium,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/calcium/calcium-carbide.png",
        order = f,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "CaCN[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = calcium_cyanamide,
        subgroup = is_calcium,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/calcium/calcium-cyanamide.png",
        order = g,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Ca(OH)[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = calcium_hydroxide,
        subgroup = is_calcium,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/calcium/calcium-hydroxide.png",
        order = h,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "CaCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = calcium_chloride_solution,
        subgroup = is_calcium_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/calcium/calcium-chloride-solution.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("CaCl2Wp"),
        flow_color = TIMSABA.functions.flow_color("CaCl2Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Ca(OH)[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = calcium_hydroxide_solution,
        subgroup = is_calcium_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/calcium/calcium-hydroxide-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("CaOH2Wp"),
        flow_color = TIMSABA.functions.flow_color("CaOH2Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- OTHERS
imidazolium_salt = "imidazolium-salt"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "[C[font=default-tiny-bold]7[/font]H[font=default-tiny-bold]13[/font]N[font=default-tiny-bold]2[/font]]Cl"} or nil,
        type = item,
        name = imidazolium_salt,
        subgroup = is_others,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/imidazolium-salt.png",
        order = a,
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
hydrogen_peroxide = "hydrogen-peroxide-liquid"
hydrocyanic_acid = "hydrocyanic-acid"
ionic_liquid = "ionic-liquid"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = hydrogen_peroxide,
        subgroup = is_others_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/hydrogen-peroxide-liquid.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("H2O2"),
        flow_color = TIMSABA.functions.flow_color("H2O2"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "HCN"} or nil,
        type = fluid,
        name = hydrocyanic_acid,
        subgroup = is_others_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/hydrocyanic-acid-liquid.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("HCN"),
        flow_color = TIMSABA.functions.flow_color("HCN"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "[C[font=default-tiny-bold]7[/font]H[font=default-tiny-bold]13[/font]N[font=default-tiny-bold]2[/font]]PF[font=default-tiny-bold]6[/font]"} or nil,
        type = fluid,
        name = ionic_liquid,
        subgroup = is_others_fluids,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/ionic-liquid.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = {r = 0.537, g = 0.675, b = 0.706},
        flow_color = {r = 0.537, g = 0.675, b = 0.706},
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- CARBON FLUIDS 2
acetylene_gas = "acetylene-gas"
diethyl_ether = "diethyl-ether-liquid"
methyl_methacrylate = "methyl-methacrylate-liquid"
acetaldehyde = "acetaldehyde-liquid"
formic_acid = "formic-acid-liquid"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = acetylene_gas,
        subgroup = is_carbon_fluids_2,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/acetylene-gas.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C2H2"),
        flow_color = TIMSABA.functions.flow_color("C2H2"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "(C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]5[/font])[font=default-tiny-bold]2[/font]O"} or nil,
        type = fluid,
        name = diethyl_ether,
        subgroup = is_carbon_fluids_2,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/diethyl-ether-liquid.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C4H10O"),
        flow_color = TIMSABA.functions.flow_color("C4H10O"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]5[/font]H[font=default-tiny-bold]8[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = methyl_methacrylate,
        subgroup = is_carbon_fluids_2,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/methyl-methacrylate-liquid.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C5H8O2"),
        flow_color = TIMSABA.functions.flow_color("C5H8O2"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font]O"} or nil,
        type = fluid,
        name = acetaldehyde,
        subgroup = is_carbon_fluids_2,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/acetaldehyde-liquid.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C2H4O"),
        flow_color = TIMSABA.functions.flow_color("C2H4O"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "CH[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = formic_acid,
        subgroup = is_carbon_fluids_2,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/formic-acid-liquid.png",
        order = e,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("CH2O2"),
        flow_color = TIMSABA.functions.flow_color("CH2O2"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- METHANE
dimethyl_carbonate = "dimethyl-carbonate-liquid"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        type = fluid,
        name = dimethyl_carbonate,
        subgroup = is_methane,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/dimethyl-carbonate-liquid.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C3H6O3"),
        flow_color = TIMSABA.functions.flow_color("C3H6O3"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- ETHANE
polyethylene = "polyethylene"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "(C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font])[font=default-tiny-bold]n[/font]"} or nil,
        type = item,
        name = polyethylene,
        subgroup = is_ethane,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/polyethylene.png",
        order = d,
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
ethylene_oxide = "ethylene-oxide-gas"
ethylene_carbonate = "ethylene-carbonate-liquid"
ethylene_glycol_liquid = "ethylene-glycol-liquid"
glyoxal_liquid = "glyoxal-liquid"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font]O"} or nil,
        type = fluid,
        name = ethylene_oxide,
        subgroup = is_ethane,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/ethylene-oxide-gas.png",
        order = e,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C2H4O"),
        flow_color = TIMSABA.functions.flow_color("C2H4O"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]4[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        type = fluid,
        name = ethylene_carbonate,
        subgroup = is_ethane,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/ethylene-carbonate-liquid.png",
        order = f,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C3H4O3"),
        flow_color = TIMSABA.functions.flow_color("C3H4O3"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = ethylene_glycol_liquid,
        subgroup = is_ethane,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/ethylene-glycol-liquid.png",
        order = g,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C2H6O2"),
        flow_color = TIMSABA.functions.flow_color("C2H6O2"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = glyoxal_liquid,
        subgroup = is_ethane,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/glyoxal-liquid.png",
        order = h,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C2H2O2"),
        flow_color = TIMSABA.functions.flow_color("C2H2O2"),
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- BUTANE
phenol = "phenol"
bisphenol_a = "bisphenol-a"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]5[/font]OH"} or nil,
        type = item,
        name = phenol,
        subgroup = is_butane,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/phenol.png",
        order = g,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]15[/font]H[font=default-tiny-bold]16[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = bisphenol_a,
        subgroup = is_butane,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/bisphenol-a.png",
        order = i,
        stack_size = 200,
        weight = 5000
    }
})

-- FLUID
butene_gas = "butene-gas"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]8[/font]"} or nil,
        type = fluid,
        name = butene_gas,
        subgroup = is_butane,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/butene-gas.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C4H8"),
        flow_color = TIMSABA.functions.flow_color("C4H8"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- RESINE
epoxy_resin_liquid = "epoxy-resin-liquid"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]21[/font]H[font=default-tiny-bold]24[/font]O[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = epoxy_resin_liquid,
        subgroup = is_resin,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/solids/epoxy-resine-liquid.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = {r = 0.812, g = 0.686, b = 0.635, a = 1.000},
        flow_color = {r = 0.812, g = 0.686, b = 0.635, a = 0.500},
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- EXPLOSIVES
glycerol_dichlorohydrin = "glycerol-dichlorohydrin-liquid"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]Cl[font=default-tiny-bold]2[/font]O"} or nil,
        type = fluid,
        name = glycerol_dichlorohydrin,
        subgroup = is_explosives,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/explosives/glycerol-dichlorohydrin-liquid.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("C3H6Cl2O"),
        flow_color = TIMSABA.functions.flow_color("C3H6Cl2O"),
        max_temperature = 0,
        auto_barrel = false
    }
})

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/angels///.png",
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]