local graphics_petrochem_basics = "__TIMSABA__/graphics/icons/angels/petrochem/basics/"
-- BASIC PETROCHEN FLUIDS
tritium_gas = "tritium-gas"
argon_gas = "argon-gas"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "T[font=default-tiny-bold]2[/font]"} or nil,
        name = tritium_gas,
        subgroup = is_basic_fluids,
        icon = graphics_petrochem_basics .. tritium_gas .. ".png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("TTT"),
        flow_color = TIMSABA.functions.flow_color("TTT")
    },
    {
        localised_description = show_formula and {chemical_formula, "Ar"} or nil,
        name = argon_gas,
        subgroup = is_basic_fluids,
        icon = graphics_petrochem_basics .. argon_gas .. ".png",
        order = h,
        base_color = TIMSABA.functions.fluid_color("ArArAr"),
        flow_color = TIMSABA.functions.flow_color("ArArAr")
    }
})
TIMSABA.barreling.add_gas(tritium_gas)
TIMSABA.barreling.add_gas(argon_gas)

-- COAL ITEM
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
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]a[/font]H[font=default-tiny-bold]b[/font]O[font=default-tiny-bold]c[/font]N[font=default-tiny-bold]d[/font]S[font=default-tiny-bold]e[/font]"} or nil,
        name = coke_processed,
        subgroup = is_coal,
        icon = graphics_petrochem_basics .. coke_processed .. ".png",
        order = e,
        fuel_category = base_fuel,
        fuel_value = 7200 .. kJ
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        name = pitch,
        subgroup = is_coal,
        icon = graphics_petrochem_basics .. pitch .. ".png",
        order = g
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        name = raw_graphite_block,
        subgroup = is_coal,
        icon = graphics_petrochem_basics .. raw_graphite_block .. ".png",
        order = h
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        name = graphite_block,
        subgroup = is_coal,
        icon = graphics_petrochem_basics .. graphite_block .. ".png",
        order = i
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        name = graphite_plate,
        subgroup = is_coal,
        icon = graphics_petrochem_basics .. graphite_plate .. ".png",
        order = j
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        name = graphite_chips,
        subgroup = is_coal,
        icon = graphics_petrochem_basics .. graphite_chips .. ".png",
        order = k
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        name = graphite_electrode,
        subgroup = is_coal,
        icon = graphics_petrochem_basics .. graphite_electrode .. ".png",
        order = l
    },
    {
        localised_description = show_formula and {chemical_formula, "С"} or nil,
        name = carbon_nanotube,
        subgroup = is_coal,
        icon = graphics_petrochem_basics .. carbon_nanotube .. ".png",
        order = m
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]a[/font]H[font=default-tiny-bold]b[/font]O[font=default-tiny-bold]c[/font]"} or nil,
        name = graphene_oxide,
        subgroup = is_coal,
        icon = graphics_petrochem_basics .. graphene_oxide .. ".png",
        order = n
    },
    {
        localised_description = show_formula and {chemical_formula, "C"} or nil,
        name = graphene,
        subgroup = is_coal,
        icon = graphics_petrochem_basics .. graphene .. ".png",
        order = o
    }
})

-- COAL FLUID
coal_tar_liquid = "coal-tar-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]10[/font]H[font=default-tiny-bold]8[/font]"} or nil,
        name = coal_tar_liquid,
        subgroup = is_carbon_fluid_1,
        icon = graphics_petrochem_basics .. coal_tar_liquid .. ".png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("CCC"),
        flow_color = TIMSABA.functions.flow_color("CCC")
    }
})
TIMSABA.barreling.add_simple_fluid(coal_tar_liquid)

-- CARBON FLUIDS 1
carbonic_acid = "carbonic-acid-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]CO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = carbonic_acid,
        subgroup = is_carbon_fluid_1,
        icon = graphics_petrochem_basics .. carbonic_acid .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("H2CO3Wp"),
        flow_color = TIMSABA.functions.flow_color("H2CO3Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(carbonic_acid)

local graphics_petrochem_nitrogen = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/"
-- NITROGEN ITEM
local is_nitrogen = "angels-petrochem-nitrogen"
ammonium_sulfate = "ammonium-sulfate"
ammonium_chloride = "ammonium-chloride"
ammonium_hydrosulfate = "ammonium-hydrosulfate"
hexamethylenediamine = "hexamethylenediamine"
imidazole = "imidazole"
imidazolium_salt = "imidazolium-salt"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4[/font]"} or nil,
        name = ammonium_sulfate,
        subgroup = is_nitrogen,
        icon = graphics_petrochem_nitrogen .. ammonium_sulfate .. ".png",
        order = d
    },
    {
        localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]Cl"} or nil,
        name = ammonium_chloride,
        subgroup = is_nitrogen,
        icon = graphics_petrochem_nitrogen .. ammonium_chloride .. ".png",
        order = e
    },
    {
        localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]HSO[font=default-tiny-bold]4[/font]"} or nil,
        name = ammonium_hydrosulfate,
        subgroup = is_nitrogen,
        icon = graphics_petrochem_nitrogen .. ammonium_hydrosulfate .. ".png",
        order = f
    },
    {
        localised_description = show_formula and {chemical_formula, "С[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]16[/font]N[font=default-tiny-bold]2[/font]"} or nil,
        name = hexamethylenediamine,
        subgroup = is_nitrogen,
        icon = graphics_petrochem_nitrogen .. hexamethylenediamine .. ".png",
        order = g
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]4[/font]N[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = imidazole,
        subgroup = is_nitrogen,
        icon = graphics_petrochem_nitrogen .. imidazole .. ".png",
        order = h
    },
    {
        localised_description = show_formula and {chemical_formula, "[C[font=default-tiny-bold]7[/font]H[font=default-tiny-bold]13[/font]N[font=default-tiny-bold]2[/font]]Cl"} or nil,
        name = imidazolium_salt,
        subgroup = is_nitrogen,
        icon = graphics_petrochem_nitrogen .. imidazolium_salt .. ".png",
        order = i
    }
})

-- NITROGEN FLUID
cyanamide_solution = "cyanamide-solution"
dicyandiamide_solution = "dicyandiamide-solution"
ammonium_sulfate_solution = "ammonium-sulfate-solution"
acrylonitrile = "acrylonitrile-liquid"
acetone_cyanohydrin = "acetone-cyanohydrin-liquid"
nitrogen_oxide = "nitrogen-oxide-gas"
adiponitrile_liquid = "adiponitrile-liquid"
imidazole_solution = "imidazole-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]2[/font]CN[font=default-tiny-bold](aq)[/font]"} or nil,
        name = cyanamide_solution,
        subgroup = is_nitrogen_fluids,
        icon = graphics_petrochem_nitrogen .. cyanamide_solution .. ".png",
        order = p,
        base_color = TIMSABA.functions.fluid_color("NH2CNWp"),
        flow_color = TIMSABA.functions.flow_color("NH2CNWp")
    },
    {
        localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]2[/font])[font=default-tiny-bold]2[/font](CN)[font=default-tiny-bold]2(aq)[/font]"} or nil,
        name = dicyandiamide_solution,
        subgroup = is_nitrogen_fluids,
        icon = graphics_petrochem_nitrogen .. dicyandiamide_solution .. ".png",
        order = q,
        base_color = TIMSABA.functions.fluid_color("C2H4N4Wp"),
        flow_color = TIMSABA.functions.flow_color("C2H4N4Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = ammonium_sulfate_solution,
        subgroup = is_nitrogen_fluids,
        icon = graphics_petrochem_nitrogen .. ammonium_sulfate_solution .. ".png",
        order = r,
        base_color = TIMSABA.functions.fluid_color("N4H8SO4Wp"),
        flow_color = TIMSABA.functions.flow_color("N4H8SO4Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]3[/font]N"} or nil,
        name = acrylonitrile,
        subgroup = is_nitrogen_fluids,
        icon = graphics_petrochem_nitrogen .. acrylonitrile .. ".png",
        order = s,
        base_color = TIMSABA.functions.fluid_color("C3H3N"),
        flow_color = TIMSABA.functions.flow_color("C3H3N")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]7[/font]NO"} or nil,
        name = acetone_cyanohydrin,
        subgroup = is_nitrogen_fluids,
        icon = graphics_petrochem_nitrogen .. acetone_cyanohydrin .. ".png",
        order = t,
        base_color = TIMSABA.functions.fluid_color("C4H7NO"),
        flow_color = TIMSABA.functions.flow_color("C4H7NO")
    },
    {
        localised_description = show_formula and {chemical_formula, "N[font=default-tiny-bold]2[/font]O"} or nil,
        name = nitrogen_oxide,
        subgroup = is_nitrogen_fluids,
        icon = graphics_petrochem_nitrogen .. nitrogen_oxide .. ".png",
        order = u,
        base_color = TIMSABA.functions.fluid_color("N2O"),
        flow_color = TIMSABA.functions.flow_color("N2O")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]8[/font]N[font=default-tiny-bold]2[/font]"} or nil,
        name = adiponitrile_liquid,
        subgroup = is_nitrogen_fluids,
        icon = graphics_petrochem_nitrogen .. adiponitrile_liquid .. ".png",
        order = w,
        base_color = TIMSABA.functions.fluid_color("C6H8N2"),
        flow_color = TIMSABA.functions.flow_color("C6H8N2")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]4[/font]N[font=default-tiny-bold]2(aq)[/font]"} or nil,
        name = imidazole_solution,
        subgroup = is_nitrogen_fluids,
        icon = graphics_petrochem_nitrogen .. imidazole_solution .. ".png",
        order = x,
        base_color = TIMSABA.functions.fluid_color("C3H4O2Wp"),
        flow_color = TIMSABA.functions.flow_color("C3H4O2Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(cyanamide_solution)
TIMSABA.barreling.add_dangerous_fluid(dicyandiamide_solution)
TIMSABA.barreling.add_dangerous_fluid(ammonium_sulfate_solution)
TIMSABA.barreling.add_dangerous_fluid(acrylonitrile)
TIMSABA.barreling.add_dangerous_fluid(acetone_cyanohydrin)
TIMSABA.barreling.add_gas(nitrogen_oxide)
TIMSABA.barreling.add_dangerous_fluid(adiponitrile_liquid)
TIMSABA.barreling.add_dangerous_fluid(imidazole_solution)

-- FLUORINE FLUID
hydrogen_fluoride_liquefied = "hydrogen-fluoride-liquefied"
oxygen_fluoride_gas = "oxygen-fluoride-gas"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "HF"} or nil,
        name = hydrogen_fluoride_liquefied,
        subgroup = is_fluorine_fluid,
        icon = graphics_petrochem_basics .. hydrogen_fluoride_liquefied .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("HF"),
        flow_color = TIMSABA.functions.flow_color("HF")
    },
    {
        localised_description = show_formula and {chemical_formula, "OF[font=default-tiny-bold]2[/font]"} or nil,
        name = oxygen_fluoride_gas,
        subgroup = is_fluorine_fluid,
        icon = graphics_petrochem_basics .. oxygen_fluoride_gas .. ".png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("OF2"),
        flow_color = TIMSABA.functions.flow_color("OF2")
    }
})
TIMSABA.barreling.add_gas(hydrogen_fluoride_liquefied)
TIMSABA.barreling.add_gas(oxygen_fluoride_gas)

local graphics_petrochem_sodium = "__TIMSABA__/graphics/icons/angels/petrochem/sodium/"
-- SODIUM ITEM
sodium_peroxide = "sodium-peroxide"
sodium_oxide = "sodium-oxide"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        name = sodium_peroxide,
        subgroup = is_sodium,
        icon = graphics_petrochem_sodium .. sodium_peroxide .. ".png",
        order = l
    },
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]O"} or nil,
        name = sodium_oxide,
        subgroup = is_sodium,
        icon = graphics_petrochem_sodium .. sodium_oxide .. ".png",
        order = m
    }
})

-- SODIUM FLUID
sodium_chloride_solution = "sodium-chloride-solution"
sodium_sulfate_solution = "sodium-sulfate-solution"
sodium_carbonate_solution = "sodium-carbonate-solution"
sodium_nitrate_solution = "sodium-nitrate-solution"
sodium_hypochlorite_solution = "sodium-hypochlorite-solution"
sodium_chlorate_solution = "sodium-chlorate-solution"
sodium_perchlorate_solution = "sodium-perchlorate-solution"
sodium_bicarbonate_solution = "sodium-bicarbonate-solution"
sodium_cyanide_solution = "sodium-cyanide-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "NaCl[font=default-tiny-bold](aq)[/font]"} or nil,
        name = sodium_chloride_solution,
        subgroup = is_sodium_fluid,
        icon = graphics_petrochem_sodium .. sodium_chloride_solution .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("NaClWp"),
        flow_color = TIMSABA.functions.flow_color("NaClWp")
    },
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = sodium_sulfate_solution,
        subgroup = is_sodium_fluid,
        icon = graphics_petrochem_sodium .. sodium_sulfate_solution .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("Na2SO4Wp"),
        flow_color = TIMSABA.functions.flow_color("Na2SO4Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]CO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = sodium_carbonate_solution,
        subgroup = is_sodium_fluid,
        icon = graphics_petrochem_sodium .. sodium_carbonate_solution .. ".png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("Na2CO3Wp"),
        flow_color = TIMSABA.functions.flow_color("Na2CO3Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "NaNO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = sodium_nitrate_solution,
        subgroup = is_sodium_fluid,
        icon = graphics_petrochem_sodium .. sodium_nitrate_solution .. ".png",
        order = e,
        base_color = TIMSABA.functions.fluid_color("NaNO3Wp"),
        flow_color = TIMSABA.functions.flow_color("NaNO3Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "NaClO[font=default-tiny-bold](aq)[/font]"} or nil,
        name = sodium_hypochlorite_solution,
        subgroup = is_sodium_fluid,
        icon = graphics_petrochem_sodium .. sodium_hypochlorite_solution .. ".png",
        order = f,
        base_color = TIMSABA.functions.fluid_color("NaClOWp"),
        flow_color = TIMSABA.functions.flow_color("NaClOWp")
    },
    {
        localised_description = show_formula and {chemical_formula, "NaClO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = sodium_chlorate_solution,
        subgroup = is_sodium_fluid,
        icon = graphics_petrochem_sodium .. sodium_chlorate_solution .. ".png",
        order = g,
        base_color = TIMSABA.functions.fluid_color("NaClO3Wp"),
        flow_color = TIMSABA.functions.flow_color("NaClO3Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "NaClO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = sodium_perchlorate_solution,
        subgroup = is_sodium_fluid,
        icon = graphics_petrochem_sodium .. sodium_perchlorate_solution .. ".png",
        order = h,
        base_color = TIMSABA.functions.fluid_color("NaClO4Wp"),
        flow_color = TIMSABA.functions.flow_color("NaClO4Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "NaHCO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = sodium_bicarbonate_solution,
        subgroup = is_sodium_fluid,
        icon = graphics_petrochem_sodium .. sodium_bicarbonate_solution .. ".png",
        order = i,
        base_color = TIMSABA.functions.fluid_color("NaHCO3Wp"),
        flow_color = TIMSABA.functions.flow_color("NaHCO3Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "NaCN[font=default-tiny-bold](aq)[/font]"} or nil,
        name = sodium_cyanide_solution,
        subgroup = is_sodium_fluid,
        icon = graphics_petrochem_sodium .. sodium_cyanide_solution .. ".png",
        order = j,
        base_color = TIMSABA.functions.fluid_color("NaCNWp"),
        flow_color = TIMSABA.functions.flow_color("NaCNWp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(sodium_chloride_solution)
TIMSABA.barreling.add_dangerous_fluid(sodium_sulfate_solution)
TIMSABA.barreling.add_dangerous_fluid(sodium_carbonate_solution)
TIMSABA.barreling.add_dangerous_fluid(sodium_nitrate_solution)
TIMSABA.barreling.add_dangerous_fluid(sodium_hypochlorite_solution)
TIMSABA.barreling.add_dangerous_fluid(sodium_chlorate_solution)
TIMSABA.barreling.add_dangerous_fluid(sodium_perchlorate_solution)
TIMSABA.barreling.add_dangerous_fluid(sodium_bicarbonate_solution)
TIMSABA.barreling.add_dangerous_fluid(sodium_cyanide_solution)

local graphics_petrochem_sulfur = "__TIMSABA__/graphics/icons/angels/petrochem/sulfur/"
-- SULFUR ITEM
peroxydisulfuric_acid = "peroxydisulfuric-acid"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]S[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]8[/font]"} or nil,
        name = peroxydisulfuric_acid,
        subgroup = is_sulfur_fluids,
        icon = graphics_petrochem_sulfur .. peroxydisulfuric_acid .. ".png",
        order = g
    }
})

-- SULFUR FLUID
sulfur_trioxide_gas = "sulfur-trioxide-gas"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "SO[font=default-tiny-bold]3[/font]"} or nil,
        name = sulfur_trioxide_gas,
        subgroup = is_sulfur_fluids,
        icon = graphics_petrochem_sulfur .. sulfur_trioxide_gas .. ".png",
        order = e,
        base_color = TIMSABA.functions.fluid_color("SO3"),
        flow_color = TIMSABA.functions.flow_color("SO3")
    }
})
TIMSABA.barreling.add_gas(sulfur_trioxide_gas)

local graphics_petrochem_chlorine = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/"
-- CHLORINE FLUID
phosgene_gas = "phosgene-gas"
chlorine_oxide_gas = "chlorine-oxide-gas"
hypochlorous_acid = "hypochlorous-acid-solution"
chloroethane_gas = "chloroethane-gas"
chlorobutane_liquid = "chlorobutane-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "COCl[font=default-tiny-bold]2[/font]"} or nil,
        name = phosgene_gas,
        subgroup = is_chlorine_fluids,
        icon = graphics_petrochem_chlorine .. phosgene_gas .. ".png",
        order = g,
        base_color = TIMSABA.functions.fluid_color("COCl2"),
        flow_color = TIMSABA.functions.flow_color("COCl2")
    },
    {
        localised_description = show_formula and {chemical_formula, "Cl[font=default-tiny-bold]2[/font]O"} or nil,
        name = chlorine_oxide_gas,
        subgroup = is_chlorine_fluids,
        icon = graphics_petrochem_chlorine .. chlorine_oxide_gas .. ".png",
        order = h,
        base_color = TIMSABA.functions.fluid_color("Cl2O"),
        flow_color = TIMSABA.functions.flow_color("Cl2O")
    },
    {
        localised_description = show_formula and {chemical_formula, "HClO[font=default-tiny-bold](aq)[/font]"} or nil,
        name = hypochlorous_acid,
        subgroup = is_chlorine_fluids,
        icon = graphics_petrochem_chlorine .. hypochlorous_acid .. ".png",
        order = i,
        base_color = TIMSABA.functions.fluid_color("HClOWp"),
        flow_color = TIMSABA.functions.flow_color("HClOWp")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]5[/font]Cl"} or nil,
        name = chloroethane_gas,
        subgroup = is_chlorine_fluids,
        icon = graphics_petrochem_chlorine .. chloroethane_gas .. ".png",
        order = j,
        base_color = TIMSABA.functions.fluid_color("C2H5Cl"),
        flow_color = TIMSABA.functions.flow_color("C2H5Cl")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]9[/font]Cl"} or nil,
        name = chlorobutane_liquid,
        subgroup = is_chlorine_fluids,
        icon = graphics_petrochem_chlorine .. chlorobutane_liquid .. ".png",
        order = k,
        base_color = TIMSABA.functions.fluid_color("C4H9Cl"),
        flow_color = TIMSABA.functions.flow_color("C4H9Cl")
    }
})
TIMSABA.barreling.add_gas(phosgene_gas)
TIMSABA.barreling.add_gas(chlorine_oxide_gas)
TIMSABA.barreling.add_dangerous_fluid(hypochlorous_acid)
TIMSABA.barreling.add_gas(chloroethane_gas)
TIMSABA.barreling.add_dangerous_fluid(chlorobutane_liquid)

local graphics_petrochem_calcium = "__TIMSABA__/graphics/icons/angels/petrochem/calcium/"
-- CALCIUM ITEM
calcium = "timsaba-calcium"
calcium_carbide = "calcium-carbide"
calcium_cyanamide = "calcium-cyanamide"
calcium_hydroxide = "calcium-hydroxide"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Ca"} or nil,
        name = calcium,
        subgroup = is_calcium,
        icon = graphics_petrochem_calcium .. calcium .. ".png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "CaC[font=default-tiny-bold]2[/font]"} or nil,
        name = calcium_carbide,
        subgroup = is_calcium,
        icon = graphics_petrochem_calcium .. calcium_carbide .. ".png",
        order = f
    },
    {
        localised_description = show_formula and {chemical_formula, "CaCN[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = calcium_cyanamide,
        subgroup = is_calcium,
        icon = graphics_petrochem_calcium .. calcium_cyanamide .. ".png",
        order = g
    },
    {
        localised_description = show_formula and {chemical_formula, "Ca(OH)[font=default-tiny-bold]2[/font]"} or nil,
        name = calcium_hydroxide,
        subgroup = is_calcium,
        icon = graphics_petrochem_calcium .. calcium_hydroxide .. ".png",
        order = h
    }
})

-- CALCIUM FLUID
calcium_chloride_solution = "calcium-chloride-solution"
calcium_hydroxide_solution = "calcium-hydroxide-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "CaCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        name = calcium_chloride_solution,
        subgroup = is_calcium_fluid,
        icon = graphics_petrochem_calcium .. calcium_chloride_solution .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("CaCl2Wp"),
        flow_color = TIMSABA.functions.flow_color("CaCl2Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "Ca(OH)[font=default-tiny-bold]2(aq)[/font]"} or nil,
        name = calcium_hydroxide_solution,
        subgroup = is_calcium_fluid,
        icon = graphics_petrochem_calcium .. calcium_hydroxide_solution .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("CaOH2Wp"),
        flow_color = TIMSABA.functions.flow_color("CaOH2Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(calcium_chloride_solution)
TIMSABA.barreling.add_dangerous_fluid(calcium_hydroxide_solution)

local graphics_petrochem_lithium = "__TIMSABA__/graphics/icons/angels/petrochem/lithium/"
-- LITHIUM ITEM
lithium_hydride = "lithium-hydride"
lithium_hydroxide = "lithium-hydroxide"
lithium_oxide = "lithium-oxide"
lithium_fluoride = "lithium-fluoride"
lithium_hexafluorophosphate = "lithium-hexafluorophosphate"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "LiH"} or nil,
        name = lithium_hydride,
        subgroup = is_alloys, -- is_lithium,
        icon = graphics_petrochem_lithium .. lithium_hydride .. ".png",
        order = g -- e
    },
    {
        localised_description = show_formula and {chemical_formula, "LiOH"} or nil,
        name = lithium_hydroxide,
        subgroup = is_alloys, -- is_lithium,
        icon = graphics_petrochem_lithium .. lithium_hydroxide .. ".png",
        order = h -- f
    },
    {
        localised_description = show_formula and {chemical_formula, "Li[font=default-tiny-bold]2[/font]O"} or nil,
        name = lithium_oxide,
        subgroup = is_alloys, -- is_lithium,
        icon = graphics_petrochem_lithium .. lithium_oxide .. ".png",
        order = i -- g
    },
    {
        localised_description = show_formula and {chemical_formula, "LiF"} or nil,
        name = lithium_fluoride,
        subgroup = is_alloys, -- is_lithium,
        icon = graphics_petrochem_lithium .. lithium_fluoride .. ".png",
        order = j -- h
    },
    {
        localised_description = show_formula and {chemical_formula, "LiPF[font=default-tiny-bold]6[/font]"} or nil,
        name = lithium_hexafluorophosphate,
        subgroup = is_alloys, -- is_lithium,
        icon = graphics_petrochem_lithium ..  lithium_hexafluorophosphate.. ".png",
        order = k -- i
    }
})

-- LITHIUM FLUID
lithium_chloride_solution = "lithium-chloride-solution"
lithium_perchlorate_solution = "lithium-perchlorate-solution"
lithium_hexafluorophosphate_solution_carbonate = "lithium-hexafluorophosphate-solution-carbonate"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "LiCl[font=default-tiny-bold](aq)[/font]"} or nil,
        name = lithium_chloride_solution,
        subgroup = is_alloys, -- is_lithium_fluid,
        icon = graphics_petrochem_lithium .. lithium_chloride_solution .. ".png",
        order = b, -- a
        base_color = TIMSABA.functions.fluid_color("LiClWp"),
        flow_color = TIMSABA.functions.flow_color("LiClWp")
    },
    {
        localised_description = show_formula and {chemical_formula, "LiClO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = lithium_perchlorate_solution,
        subgroup = is_alloys, -- is_lithium_fluid,
        icon = graphics_petrochem_lithium .. lithium_perchlorate_solution .. ".png",
        order = c, -- b
        base_color = TIMSABA.functions.fluid_color("LiClO4Wp"),
        flow_color = TIMSABA.functions.flow_color("LiClO4Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "LiPF[font=default-tiny-bold]6(carbonate)[/font]"} or nil,
        name = lithium_hexafluorophosphate_solution_carbonate,
        subgroup = is_alloys, -- is_lithium_fluid,
        icon = graphics_petrochem_lithium .. lithium_hexafluorophosphate_solution_carbonate .. ".png",
        order = l, -- i
        base_color = TIMSABA.functions.fluid_color("LiPF6Ec"),
        flow_color = TIMSABA.functions.flow_color("LiPF6Ec")
    }
})
TIMSABA.barreling.add_dangerous_fluid(lithium_chloride_solution)
TIMSABA.barreling.add_dangerous_fluid(lithium_perchlorate_solution)
TIMSABA.barreling.add_dangerous_fluid(lithium_hexafluorophosphate_solution_carbonate)

-- OTHERS

-- OTHERS FLUID
hydrogen_peroxide = "hydrogen-peroxide-liquid"
hydrocyanic_acid = "hydrocyanic-acid"
ionic_liquid = "ionic-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        name = hydrogen_peroxide,
        subgroup = is_others_fluid,
        icon = graphics_petrochem_basics .. hydrogen_peroxide .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("H2O2"),
        flow_color = TIMSABA.functions.flow_color("H2O2")
    },
    {
        localised_description = show_formula and {chemical_formula, "HCN"} or nil,
        name = hydrocyanic_acid,
        subgroup = is_others_fluid,
        icon = graphics_petrochem_basics .. hydrocyanic_acid .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("HCN"),
        flow_color = TIMSABA.functions.flow_color("HCN")
    },
    {
        localised_description = show_formula and {chemical_formula, "[C[font=default-tiny-bold]7[/font]H[font=default-tiny-bold]13[/font]N[font=default-tiny-bold]2[/font]]PF[font=default-tiny-bold]6[/font]"} or nil,
        name = ionic_liquid,
        subgroup = is_others_fluid,
        icon = graphics_petrochem_basics .. ionic_liquid .. ".png",
        order = c,
        base_color = {r = 0.537, g = 0.675, b = 0.706},
        flow_color = {r = 0.537, g = 0.675, b = 0.706}
    }
})
TIMSABA.barreling.add_dangerous_fluid(hydrogen_peroxide)
TIMSABA.barreling.add_dangerous_fluid(hydrocyanic_acid)
TIMSABA.barreling.add_dangerous_fluid(ionic_liquid)

local graphics_petrochem_carbons = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/"
-- CARBON FLUIDS 2
acetylene_gas = "acetylene-gas"
diethyl_ether = "diethyl-ether-liquid"
methyl_methacrylate = "methyl-methacrylate-liquid"
acetaldehyde = "acetaldehyde-liquid"
formic_acid = "formic-acid-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]2[/font]"} or nil,
        name = acetylene_gas,
        subgroup = is_carbon_fluids_2,
        icon = graphics_petrochem_carbons .. acetylene_gas .. ".png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("C2H2"),
        flow_color = TIMSABA.functions.flow_color("C2H2")
    },
    {
        localised_description = show_formula and {chemical_formula, "(C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]5[/font])[font=default-tiny-bold]2[/font]O"} or nil,
        name = diethyl_ether,
        subgroup = is_carbon_fluids_2,
        icon = graphics_petrochem_carbons .. diethyl_ether .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("C4H10O"),
        flow_color = TIMSABA.functions.flow_color("C4H10O")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]5[/font]H[font=default-tiny-bold]8[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        name = methyl_methacrylate,
        subgroup = is_carbon_fluids_2,
        icon = graphics_petrochem_carbons .. methyl_methacrylate .. ".png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("C5H8O2"),
        flow_color = TIMSABA.functions.flow_color("C5H8O2")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font]O"} or nil,
        name = acetaldehyde,
        subgroup = is_carbon_fluids_2,
        icon = graphics_petrochem_carbons .. acetaldehyde .. ".png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("C2H4O"),
        flow_color = TIMSABA.functions.flow_color("C2H4O")
    },
    {
        localised_description = show_formula and {chemical_formula, "CH[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        name = formic_acid,
        subgroup = is_carbon_fluids_2,
        icon = graphics_petrochem_carbons .. formic_acid .. ".png",
        order = e,
        base_color = TIMSABA.functions.fluid_color("CH2O2"),
        flow_color = TIMSABA.functions.flow_color("CH2O2")
    }
})
TIMSABA.barreling.add_gas(acetylene_gas)
TIMSABA.barreling.add_dangerous_fluid(diethyl_ether)
TIMSABA.barreling.add_dangerous_fluid(methyl_methacrylate)
TIMSABA.barreling.add_dangerous_fluid(acetaldehyde)
TIMSABA.barreling.add_dangerous_fluid(formic_acid)

-- METHANE FLUID
dimethyl_carbonate = "dimethyl-carbonate-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        name = dimethyl_carbonate,
        subgroup = is_methane,
        icon = graphics_petrochem_carbons .. dimethyl_carbonate .. ".png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("C3H6O3"),
        flow_color = TIMSABA.functions.flow_color("C3H6O3")
    }
})
TIMSABA.barreling.add_dangerous_fluid(dimethyl_carbonate)

-- ETHANE ITEM
polyethylene = "polyethylene"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "(C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font])[font=default-tiny-bold]n[/font]"} or nil,
        name = polyethylene,
        subgroup = is_ethane,
        icon = graphics_petrochem_carbons .. polyethylene .. ".png",
        order = d
    }
})

-- ETHANE FLUID
ethylene_oxide = "ethylene-oxide-gas"
ethylene_carbonate = "ethylene-carbonate-liquid"
ethylene_glycol_liquid = "ethylene-glycol-liquid"
glyoxal_liquid = "glyoxal-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font]O"} or nil,
        name = ethylene_oxide,
        subgroup = is_ethane,
        icon = graphics_petrochem_carbons .. ethylene_oxide .. ".png",
        order = e,
        base_color = TIMSABA.functions.fluid_color("C2H4O"),
        flow_color = TIMSABA.functions.flow_color("C2H4O")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]4[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        name = ethylene_carbonate,
        subgroup = is_ethane,
        icon = graphics_petrochem_carbons .. ethylene_carbonate .. ".png",
        order = f,
        base_color = TIMSABA.functions.fluid_color("C3H4O3"),
        flow_color = TIMSABA.functions.flow_color("C3H4O3")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        name = ethylene_glycol_liquid,
        subgroup = is_ethane,
        icon = graphics_petrochem_carbons .. ethylene_glycol_liquid .. ".png",
        order = g,
        base_color = TIMSABA.functions.fluid_color("C2H6O2"),
        flow_color = TIMSABA.functions.flow_color("C2H6O2")
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        name = glyoxal_liquid,
        subgroup = is_ethane,
        icon = graphics_petrochem_carbons .. glyoxal_liquid .. ".png",
        order = h,
        base_color = TIMSABA.functions.fluid_color("C2H2O2"),
        flow_color = TIMSABA.functions.flow_color("C2H2O2")
    }
})
TIMSABA.barreling.add_gas(ethylene_oxide)
TIMSABA.barreling.add_dangerous_fluid(ethylene_carbonate)
TIMSABA.barreling.add_dangerous_fluid(ethylene_glycol_liquid)
TIMSABA.barreling.add_dangerous_fluid(glyoxal_liquid)

-- BUTANE ITEM
phenol = "phenol"
bisphenol_a = "bisphenol-a"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]5[/font]OH"} or nil,
        name = phenol,
        subgroup = is_butane,
        icon = graphics_petrochem_carbons .. phenol .. ".png",
        order = g
    },
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]15[/font]H[font=default-tiny-bold]16[/font]O[font=default-tiny-bold]2[/font]"} or nil,
        name = bisphenol_a,
        subgroup = is_butane,
        icon = graphics_petrochem_carbons .. bisphenol_a .. ".png",
        order = i
    }
})

-- BUTANE FLUID
butene_gas = "butene-gas"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]4[/font]H[font=default-tiny-bold]8[/font]"} or nil,
        name = butene_gas,
        subgroup = is_butane,
        icon = graphics_petrochem_carbons .. butene_gas .. ".png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("C4H8"),
        flow_color = TIMSABA.functions.flow_color("C4H8")
    }
})
TIMSABA.barreling.add_gas(butene_gas)

-- RESINE FLUID
epoxy_resin_liquid = "epoxy-resin-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]21[/font]H[font=default-tiny-bold]24[/font]O[font=default-tiny-bold]4[/font]"} or nil,
        name = epoxy_resin_liquid,
        subgroup = is_resin,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/solids/epoxy-resine-liquid.png",
        order = c,
        base_color = {r = 0.812, g = 0.686, b = 0.635, a = 1.000},
        flow_color = {r = 0.812, g = 0.686, b = 0.635, a = 0.500}
    }
})
TIMSABA.barreling.add_simple_fluid(epoxy_resin_liquid)

-- EXPLOSIVES FLUID
glycerol_dichlorohydrin = "glycerol-dichlorohydrin-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]Cl[font=default-tiny-bold]2[/font]O"} or nil,
        name = glycerol_dichlorohydrin,
        subgroup = is_explosives,
        icon = "__TIMSABA__/graphics/icons/angels/petrochem/explosives/glycerol-dichlorohydrin-liquid.png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("C3H6Cl2O"),
        flow_color = TIMSABA.functions.flow_color("C3H6Cl2O")
    }
})
TIMSABA.barreling.add_dangerous_fluid(glycerol_dichlorohydrin)