-- ANGELS METALLURGY SMELTING
-- IRON and STEEL
iron_sulfate_II = "iron-sulfate-II"
iron_cathode = "iron-cathode"
iron_hydroxide_III = "iron-hydroxide-III"
iron_oxide_III = "iron-oxide-III"
iron_sulfate_II_solution = "iron-sulfate-II-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "FeSO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = iron_sulfate_II,
        subgroup = is_iron_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/iron/iron-sulfate-II.png",
        icon_size = 64,
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Fe"} or nil,
        type = item,
        name = iron_cathode,
        subgroup = is_iron_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/iron/iron-cathode.png",
        icon_size = 32,
        order = d,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Fe(OH)[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = iron_hydroxide_III,
        subgroup = is_iron_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/iron/iron-hydroxide-III.png",
        icon_size = 64,
        order = e,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Fe[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = iron_oxide_III,
        subgroup = is_iron_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/iron/iron-oxide-III.png",
        icon_size = 64,
        order = f,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "FeSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = iron_sulfate_II_solution,
        subgroup = is_iron_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/iron/iron-sulfate-II-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("FeSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("FeSO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- COPPER
copper_hydroxide_II = "copper-hydroxide-II"
copper_sulfate_II = "copper-sulfate-II"
copper_sulfate_II_solution = "copper-sulfate-II-solution"
copper_chloride_I = "copper-chloride-I"
copper_oxide_I = "copper-oxide-I"
ammonium_dichlorocuprate_I_solution = "ammonium-dichlorocuprate-I-solution"
copper_nitrate_II_solution = "copper-nitrate-II-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Cu(OH)[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = copper_hydroxide_II,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/copper-hydroxide-II.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "CuSO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = copper_sulfate_II,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/copper-sulfate-II.png",
        icon_size = 64,
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "CuCl"} or nil,
        type = item,
        name = copper_chloride_I,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/copper-chloride-I.png",
        icon_size = 64,
        order = e,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Cu[font=default-tiny-bold]2[/font]O"} or nil,
        type = item,
        name = copper_oxide_I,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/copper-oxide-II.png",
        icon_size = 64,
        order = g,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "CuSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = copper_sulfate_II_solution,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/copper-sulfate-II-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("CuSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("CuSO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]CuCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = ammonium_dichlorocuprate_I_solution,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/ammonium-dichlorocuprate-I-solution.png",
        order = f,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NH4CuCl2Wp"),
        flow_color = TIMSABA.functions.flow_color("NH4CuCl2Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Cu(NO[font=default-tiny-bold]3[/font])[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = copper_nitrate_II_solution,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/copper-nitrate-II-solution.png",
        order = h,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("CuN2O6Wp"),
        flow_color = TIMSABA.functions.flow_color("CuN2O6Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
})

-- LEAD
lead_oxide_IV = "lead-oxide-IV"
lead_sponge = "lead-sponge"
hexafluorosilicate_lead_II_solution = "hexafluorosilicate-lead-II-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "PbO[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = lead_oxide_IV,
        subgroup = is_lead_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lead/lead-oxide-IV.png",
        icon_size = 64,
        order = e,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Pb"} or nil,
        type = item,
        name = lead_sponge,
        subgroup = is_lead_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lead/lead-sponge.png",
        icon_size = 32,
        order = f,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "PbSiF[font=default-tiny-bold]6(aq)[/font]"} or nil,
        type = fluid,
        name = hexafluorosilicate_lead_II_solution,
        subgroup = is_lead_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lead/hexafluorosilicate-lead-II-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("PbSiF6Wp"),
        flow_color = TIMSABA.functions.flow_color("PbSiF6Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- TIN
tin_cathode = "tin-cathode"
tin_chloride_IV = "tin-chloride-IV-liquid"
hexafluorosilicate_tin_II_solution = "hexafluorosilicate-tin-II-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Sn"} or nil,
        type = item,
        name = tin_cathode,
        subgroup = is_tin_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/tin/tin-cathode.png",
        icon_size = 32,
        order = d,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "SnCl[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = tin_chloride_IV,
        subgroup = is_tin_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/tin/tin-chloride-IV-liquid.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("SnCl4"),
        flow_color = TIMSABA.functions.flow_color("SnCl4"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "SnSiF[font=default-tiny-bold]6(aq)[/font]"} or nil,
        type = fluid,
        name = hexafluorosilicate_tin_II_solution,
        subgroup = is_tin_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/tin/hexafluorosilicate-tin-II-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("SnSiF6Wp"),
        flow_color = TIMSABA.functions.flow_color("SnSiF6Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- MANGANESE
manganese_oxide_IV = "manganese-oxide-IV"
manganese_sulfate_II = "manganese-sulfate-II"
manganese_sulfate_II_solution = "manganese-sulfate-II-solution"
potassium_permanganate = "potassium-permanganate"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "MnO[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = manganese_oxide_IV,
        subgroup = is_manganese_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/manganese/manganese-oxide-IV.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "MnSO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = manganese_sulfate_II,
        subgroup = is_manganese_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/manganese/manganese-sulfate-II.png",
        icon_size = 64,
        order = b,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "MnSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = manganese_sulfate_II_solution,
        subgroup = is_manganese_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/manganese/manganese-sulfate-II-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("MnSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("MnSO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    --[[{
        localised_description = show_formula and {chemical_formula, "KMnO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = potassium_permanganate,
        subgroup = is_manganese_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/manganese/potassium-permanganate.png",
        order = f,
        stack_size = 200,
        weight = 5000
    }]]
})

-- SILICON
silicon_oxide_IV = "silicon-oxide-IV"
silicon_chloride_IV_gas = "silicon-chloride-IV-gas"
silicon_fluoride_IV_gas = "silicon-fluoride-IV-gas"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "SiO[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = silicon_oxide_IV,
        subgroup = is_silicon_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/silicon-oxide-IV.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "SiCl[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = silicon_chloride_IV_gas,
        subgroup = is_silicon_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/silicon-chloride-IV-gas.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("SiCl4"),
        flow_color = TIMSABA.functions.flow_color("SiCl4"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "SiF[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = silicon_fluoride_IV_gas,
        subgroup = is_silicon_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/silicon-fluoride-IV-gas.png",
        order = g,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("SiF4"),
        flow_color = TIMSABA.functions.flow_color("SiF4"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- NICKEL
--nickel_sulfate_II = "nickel-sulfate-II"
nickel_sulfate_II_solution = "nickel-sulfate-II-solution"
tetracarbonyl_nickel = "tetracarbonyl-nickel"
data:extend
({
    --[[{
        localised_description = show_formula and {chemical_formula, "NiSO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = nickel_sulfate_II,
        subgroup = is_nickel_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/nickel/nickel-sulfate-II.png",
        order = a,
        stack_size = 200,
        weight = 5000
    },]]
    {
        localised_description = show_formula and {chemical_formula, "NiSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = nickel_sulfate_II_solution,
        subgroup = is_nickel_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/nickel/nickel-sulfate-II-solution.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NiSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("NiSO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Ni(CO)[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = tetracarbonyl_nickel,
        subgroup = is_nickel_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/nickel/tetracarbonyl-nickel-liquid.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NiC4O4"),
        flow_color = TIMSABA.functions.flow_color("NiC4O4"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- ALUMINIUM
aluminium_chloride = "aluminium-chloride"
aluminium_chloride_solution = "aluminium-chloride-solution"
aluminium_chloride_solution_ether = "aluminium-chloride-solution-ether"
lithium_aluminium_hydride_solution_ether = "lithium-aluminium-hydride-solution-ether"
lithium_tetraethoxy_aluminate_solution_ether = "lithium-tetraethoxy-aluminate-solution-ether"
data:extend
({
    -- ITEM
    {
        localised_description = show_formula and {chemical_formula, "AlCl[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = aluminium_chloride,
        subgroup = is_aluminium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/aluminium/aluminium-chloride.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "AlCl[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = aluminium_chloride_solution,
        subgroup = is_aluminium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/aluminium/aluminium-chloride-solution.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("AlCl3Wp"),
        flow_color = TIMSABA.functions.flow_color("AlCl3Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "AlCl[font=default-tiny-bold]3(ether)[/font]"} or nil,
        type = fluid,
        name = aluminium_chloride_solution_ether,
        subgroup = is_aluminium_chemistry_ether,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/aluminium/aluminium-chloride-solution-ether.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("AlCl3De"),
        flow_color = TIMSABA.functions.flow_color("AlCl3De"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "LiAlH[font=default-tiny-bold]4(ether)[/font]"} or nil,
        type = fluid,
        name = lithium_aluminium_hydride_solution_ether,
        subgroup = is_aluminium_chemistry_ether,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/aluminium/lithium-aluminium-hydride-solution-ether.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("LiAlH4De"),
        flow_color = TIMSABA.functions.flow_color("LiAlH4De"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "LiAl(C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]5[/font]O)[font=default-tiny-bold]4(ether)[/font]"} or nil,
        type = fluid,
        name = lithium_tetraethoxy_aluminate_solution_ether,
        subgroup = is_aluminium_chemistry_ether,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/aluminium/lithium-tetraethoxy-aluminate-solution-ether.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("LiAlC8H20O4De"),
        flow_color = TIMSABA.functions.flow_color("LiAlC8H20O4De"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- ZINC
zinc_chloride = "zinc-chloride"
zinc_chloride_solution = "zinc-chloride-solution"
zinc_gas = "zinc-gas"
zinc_sulfate_solution = "zinc-sulfate-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "ZnCl[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = zinc_chloride,
        subgroup = is_zinc_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/zinc/zinc-chloride.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "ZnCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = zinc_chloride_solution,
        subgroup = is_zinc_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/zinc/zinc-chloride-solution.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("ZnCl2Wp"),
        flow_color = TIMSABA.functions.flow_color("ZnCl2Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Zn"} or nil,
        type = fluid,
        name = zinc_gas,
        subgroup = is_zinc_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/zinc/zinc-gas.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("ZnZnZn"),
        flow_color = TIMSABA.functions.flow_color("ZnZnZn"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "ZnSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = zinc_sulfate_solution,
        subgroup = is_zinc_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/zinc/zinc-sulfate-solution.png",
        order = e,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("ZnSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("ZnSO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- SILVER
sodium_dicyanoargentate_I_solution = "sodium-dicyanoargentate-I-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "NaAg(CN)[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_dicyanoargentate_I_solution,
        subgroup = is_silver_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silver/sodium-dicyanoargentate-I-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NaAgC2N2Wp"),
        flow_color = TIMSABA.functions.flow_color("NaAgC2N2Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- TITANIUM
titanium_oxide_IV = "titanium-oxide-IV"
titanium_iodide_IV_gas = "titanium-iodide-IV-gas"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "TiO[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = titanium_oxide_IV,
        subgroup = is_titanium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/titanium/titanium-oxide-IV.png",
        order = d,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "TiI[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = titanium_iodide_IV_gas,
        subgroup = is_titanium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/titanium/titanium-iodide-IV-gas.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("TiI4"),
        flow_color = TIMSABA.functions.flow_color("TiI4"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- GOLD
sodium_dicyanoaurate_I_solution = "sodium-dicyanoaurate-I-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "NaAu(CN)[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_dicyanoaurate_I_solution,
        subgroup = is_gold_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/gold/sodium-dicyanoaurate-I-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("NaAuC2N2Wp"),
        flow_color = TIMSABA.functions.flow_color("NaAuC2N2Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- COBALT
cobalt_chloride_II_solution = "cobalt-chloride-II-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "CoCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = cobalt_chloride_II_solution,
        subgroup = is_cobalt_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/cobalt/cobalt-chloride-II-solution.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("CoCl2Wp"),
        flow_color = TIMSABA.functions.flow_color("CoCl2Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- CHROMIUM
chromium_oxide_VI = "chromium-oxide-VI"
chromic_acid = "chromic-acid-solution"
chromium_cathode = "chromium-cathode"
chromium_sulfate_II_solution = "chromium-sulfate-II-solution"
--chromium_sulfate_III = "chromium-sulfate-III"
potassium_chromate_solution = "potassium-chromate-solution"
potassium_dichromate_solution = "potassium-dichromate-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "CrO[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = chromium_oxide_VI,
        subgroup = is_chromium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chromium/chromium-oxide-VI.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Cr"} or nil,
        type = item,
        name = chromium_cathode,
        subgroup = is_chromium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chromium/chromium-cathode.png",
        icon_size = 32, -- 64!!!
        order = c,
        stack_size = 200,
        weight = 5000
    },
    --[[{
        localised_description = show_formula and {chemical_formula, "Cr[font=default-tiny-bold]2[/font](SO[font=default-tiny-bold]4[/font])[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = chromium_sulfate_III,
        subgroup = is_chromium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chromium/chromium-sulfate-III.png",
        order = f,
        stack_size = 200,
        weight = 5000
    },]]
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]CrO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = chromic_acid,
        subgroup = is_chromium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chromium/chromic-acid-solution.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("H2CrO4Wp"),
        flow_color = TIMSABA.functions.flow_color("H2CrO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "CrSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = chromium_sulfate_II_solution,
        subgroup = is_chromium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chromium/chromium-sulfate-II-solution.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("CrSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("CrSO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "K[font=default-tiny-bold]2[/font]CrO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = potassium_chromate_solution,
        subgroup = is_chromium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chromium/potassium-chromate-solution.png",
        order = f,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("K2CrO4Wp"),
        flow_color = TIMSABA.functions.flow_color("K2CrO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "K[font=default-tiny-bold]2[/font]Cr[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]7(aq)[/font]"} or nil,
        type = fluid,
        name = potassium_dichromate_solution,
        subgroup = is_chromium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chromium/potassium-dichromate-solution.png",
        order = g,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("K2Cr2O7Wp"),
        flow_color = TIMSABA.functions.flow_color("K2Cr2O7Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- TUNGSTEN
copper_tungsten_powder = "copper-tungsten-powder"
peroxo_tungstic_acid = "peroxo-tungstic-acid-solution"
tungstic_acid = "tungstic-acid"
--ammonium_tungstate_solution = "ammonium-tungstate-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "WCu"} or nil,
        type = item,
        name = copper_tungsten_powder,
        subgroup = is_tungsten,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/tungsten/copper-tungsten-powder.png",
        order = f,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]WO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = tungstic_acid,
        subgroup = is_tungsten_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/tungsten/tungstic-acid.png",
        order = e,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]WO[font=default-tiny-bold]6(aq)[/font]"} or nil,
        type = fluid,
        name = peroxo_tungstic_acid,
        subgroup = is_tungsten_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/tungsten/peroxo-tungstic-acid-solution.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("H2WO6Wp"),
        flow_color = TIMSABA.functions.flow_color("H2WO6Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- PLATINUM
platinum_chloride_II = "platinum-chloride-II"
platinum_fluoride_IV = "platinum-fluoride-IV"
platinum_hydroxide_IV = "platinum-hydroxide-IV"
sodium_hexachloroplatinate_IV_solution = "sodium-hexachloroplatinate-IV-solution"
sodium_hexahydroxoplatinate_IV_solution = "sodium-hexahydroxoplatinate-IV-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "PtCl[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = platinum_chloride_II,
        subgroup = is_platinum_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/platinum/platinum-chloride.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "PtF[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = platinum_fluoride_IV,
        subgroup = is_platinum_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/platinum/platinum-fluoride.png",
        icon_size = 64,
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Pt(OH)[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = platinum_hydroxide_IV,
        subgroup = is_platinum_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/platinum/platinum-hydroxide.png",
        icon_size = 64,
        order = f,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]PtCl[font=default-tiny-bold]6(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_hexachloroplatinate_IV_solution,
        subgroup = is_platinum_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/platinum/sodium-hexachloroplatinate-solution.png",
        order = e,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("Na2PtCl6Wp"),
        flow_color = TIMSABA.functions.flow_color("Na2PtCl6Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]Pt(OH)[font=default-tiny-bold]6(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_hexahydroxoplatinate_IV_solution,
        subgroup = is_platinum_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/platinum/sodium-hexahydroxoplatinate-solution.png",
        order = g,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("Na2PtO6H6Wp"),
        flow_color = TIMSABA.functions.flow_color("Na2PtO6H6Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- LITHIUM
lithium_chloride_solution = "lithium-chloride-solution"
lithium_perchlorate_solution = "lithium-perchlorate-solution"
lithium_hydride = "lithium-hydride"
lithium_hydroxide = "lithium-hydroxide"
lithium_oxide = "lithium-oxide"
lithium_fluoride = "lithium-fluoride"
lithium_hexafluorophosphate = "lithium-hexafluorophosphate"
lithium_hexafluorophosphate_solution_carbonate = "lithium-hexafluorophosphate-solution-carbonate"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "LiH"} or nil,
        type = item,
        name = lithium_hydride,
        subgroup = is_alloys,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lithium/lithium-hydride.png",
        icon_size = 64,
        order = g,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "LiOH"} or nil,
        type = item,
        name = lithium_hydroxide,
        subgroup = is_alloys,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lithium/lithium-hydroxide.png",
        icon_size = 64,
        order = h,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Li[font=default-tiny-bold]2[/font]O"} or nil,
        type = item,
        name = lithium_oxide,
        subgroup = is_alloys,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lithium/lithium-oxide.png",
        icon_size = 64,
        order = i,
        stack_size = 200,
        weight = 5000
    },
    --[[{
        localised_description = show_formula and {chemical_formula, "LiF"} or nil,
        type = item,
        name = lithium_fluoride,
        subgroup = is_alloys,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lithium/lithium-fluoride.png",
        order = j,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "LiPF[font=default-tiny-bold]6[/font]"} or nil,
        type = item,
        name = lithium_hexafluorophosphate,
        subgroup = is_alloys,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lithium/lithium-hexafluorophosphate.png",
        order = k,
        stack_size = 200,
        weight = 5000
    },]]
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "LiCl[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = lithium_chloride_solution,
        subgroup = is_alloys,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lithium/lithium-chloride-solution.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("LiClWp"),
        flow_color = TIMSABA.functions.flow_color("LiClWp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "LiClO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = lithium_perchlorate_solution,
        subgroup = is_alloys,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lithium/lithium-perchlorate-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("LiClO4Wp"),
        flow_color = TIMSABA.functions.flow_color("LiClO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    --[[{
        localised_description = show_formula and {chemical_formula, "LiOH[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = lithium_hydroxide_solution,
        subgroup = is_alloys,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lithium/lithium-hydroxide-solution.png",
        order = g,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("LiOHWp"),
        flow_color = TIMSABA.functions.flow_color("LiOHWp"),
        max_temperature = 0,
        auto_barrel = false
    },]]
    --[[{
        localised_description = show_formula and {chemical_formula, "LiPF[font=default-tiny-bold]6(carbonate)[/font]"} or nil,
        type = fluid,
        name = lithium_hexafluorophosphate_solution_carbonate,
        subgroup = is_alloys,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lithium/lithium-hexafluorophosphate-solution-carbonate.png",
        order = l,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("LiPF6Ec"),
        flow_color = TIMSABA.functions.flow_color("LiPF6Ec"),
        max_temperature = 0,
        auto_barrel = false
    }]]
})

--[[
data:extend
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
    },
    -- FLUID
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
})
]]