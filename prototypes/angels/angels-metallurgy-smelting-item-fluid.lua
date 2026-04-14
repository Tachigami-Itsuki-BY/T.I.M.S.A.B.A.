-- ANGELS METALLURGY SMELTING
-- IRON and STEEL
iron_sulfate = "iron-sulfate"
iron_cathode = "iron-cathode"
iron_hydroxide_III = "iron-hydroxide-III"
iron_oxide = "iron-oxide"
iron_sulfate_solution = "iron-sulfate-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "FeSO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = iron_sulfate,
        subgroup = is_iron_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/iron/iron-sulfate.png",
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
        name = iron_oxide,
        subgroup = is_iron_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/iron/iron-oxide.png",
        icon_size = 64,
        order = f,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "FeSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = iron_sulfate_solution,
        subgroup = is_iron_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/iron/iron-sulfate-solution.png",
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
copper_hydroxide = "copper-hydroxide"
copper_sulfate = "copper-sulfate"
copper_sulfate_solution = "copper-sulfate-solution"
copper_chloride_I = "copper-chloride-I"
copper_oxide = "copper-oxide"
ammonium_dichlorocuprate_solution = "ammonium-dichlorocuprate-solution"
copper_nitrate_solution = "copper-nitrate-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Cu(OH)[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = copper_hydroxide,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/copper-hydroxide.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "CuSO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = copper_sulfate,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/copper-sulfate.png",
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
        name = copper_oxide,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/copper-oxide.png",
        icon_size = 64,
        order = g,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "CuSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = copper_sulfate_solution,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/copper-sulfate-solution.png",
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
        name = ammonium_dichlorocuprate_solution,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/ammonium-dichlorocuprate-solution.png",
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
        name = copper_nitrate_solution,
        subgroup = is_copper_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/copper/copper-nitrate-solution.png",
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
lead_dioxide = "lead-dioxide"
lead_sponge = "lead-sponge"
hexafluorosilicate_lead_solution = "hexafluorosilicate-lead-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "PbO[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = lead_dioxide,
        subgroup = is_lead_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lead/lead-dioxide.png",
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
        name = hexafluorosilicate_lead_solution,
        subgroup = is_lead_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/lead/hexafluorosilicate-lead-solution.png",
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
tin_tetrachloride = "tin-tetrachloride-liquid"
hexafluorosilicate_tin_solution = "hexafluorosilicate-tin-solution"
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
        name = tin_tetrachloride,
        subgroup = is_tin_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/tin/tin-chloride-liquid.png",
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
        name = hexafluorosilicate_tin_solution,
        subgroup = is_tin_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/tin/hexachlorosilicate-tin-solution.png",
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
manganese_sulfate = "manganese-sulfate"
manganese_dioxide = "manganese-dioxide"
manganese_sulfate_solution = "manganese-sulfate-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "MnO[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = manganese_dioxide,
        subgroup = is_manganese_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/manganese/manganese-dioxide.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "MnSO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = manganese_sulfate,
        subgroup = is_manganese_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/manganese/manganese-sulfate.png",
        icon_size = 64,
        order = b,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "MnSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = manganese_sulfate_solution,
        subgroup = is_manganese_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/manganese/manganese-sulfate-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("MnSO4Wp"),
        flow_color = TIMSABA.functions.flow_color("MnSO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- SILICON
silicon_dioxide = "silicon-dioxide"
silicon_tetrachloride_gas = "silicon-tetrachloride-gas"
silicon_tetrafluoride_gas = "silicon-tetrafluoride-gas"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "SiO[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = silicon_dioxide,
        subgroup = is_silicon_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/silicon-dioxide.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "SiCl[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = silicon_tetrachloride_gas,
        subgroup = is_silicon_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/silicon-tetrachloride-gas.png",
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
        name = silicon_tetrafluoride_gas,
        subgroup = is_silicon_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/silicon-tetrafluoride-gas.png",
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
--nickel_sulfate = "nickel-sulfate"
nickel_sulfate_solution = "nickel-sulfate-solution"
tetracarbonyl_nickel = "tetracarbonyl-nickel"
data:extend
({
    --[[{
        localised_description = show_formula and {chemical_formula, "NiSO4"} or nil,
        type = item,
        name = nickel_sulfate,
        subgroup = is_nickel_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/nickel/nickel-sulfate.png",
        order = a,
        stack_size = 200,
        weight = 5000
    },]]
    {
        localised_description = show_formula and {chemical_formula, "NiSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = nickel_sulfate_solution,
        subgroup = is_nickel_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/nickel/nickel-sulfate-solution.png",
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
silver_nitrate_solution = "silver-nitrate-solution"
sodium_silver_cyanide_solution = "sodium-silver-cyanide-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "NaAg(CN)[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_silver_cyanide_solution,
        subgroup = is_silver_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silver/sodium-silver-cyanide-solution.png",
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
titanium_tetraiodide_gas = "titanium-tetraiodide-gas"
titanium_dioxide = "titanium-dioxide"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "TiO[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = titanium_dioxide,
        subgroup = is_titanium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/titanium/titanium-dioxide.png",
        order = d,
        stack_size = 200,
        weight = 5000
    },
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "TiI[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = titanium_tetraiodide_gas,
        subgroup = is_titanium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/titanium/titanium-tetraiodide-gas.png",
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
sodium_gold_cyanide_solution = "sodium-gold-cyanide-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "NaAu(CN)[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_gold_cyanide_solution,
        subgroup = is_gold_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/gold/sodium-gold-cyanide-solution.png",
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
cobalt_chloride_solution = "cobalt-chloride-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "CoCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = cobalt_chloride_solution,
        subgroup = is_cobalt_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/cobalt/cobalt-chloride-solution.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("CoCl2Wp"),
        flow_color = TIMSABA.functions.flow_color("CoCl2Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- CHROME
chrome_oxide_VI = "chrome-oxide-VI"
chromic_acid = "chromic-acid-solution"
chrome_cathode = "chrome-cathode"
chrome_sulfate_II_solution = "chrome-sulfate-II-solution"
--chrome_sulfate_III = "chrome-sulfate-III"
potassium_chromate_solution = "potassium-chromate-solution"
potassium_dichromate_solution = "potassium-dichromate-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "CrO[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = chrome_oxide_VI,
        subgroup = is_chrome_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chrome/chrome-oxide-VI.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Cr"} or nil,
        type = item,
        name = chrome_cathode,
        subgroup = is_chrome_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chrome/chrome-cathode.png",
        icon_size = 32, -- 64!!!
        order = c,
        stack_size = 200,
        weight = 5000
    },
    --[[{
        localised_description = show_formula and {chemical_formula, "Cr[font=default-tiny-bold]2[/font](SO[font=default-tiny-bold]4[/font])[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = chrome_sulfate_III,
        subgroup = is_chrome_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chrome/chrome-sulfate-III.png",
        order = f,
        stack_size = 200,
        weight = 5000
    },]]
    -- FLUID
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]CrO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = chromic_acid,
        subgroup = is_chrome_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chrome/chromic-acid-solution.png",
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
        name = chrome_sulfate_II_solution,
        subgroup = is_chrome_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chrome/chrome-sulfate-II-solution.png",
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
        subgroup = is_chrome_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chrome/potassium-chromate-solution.png",
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
        subgroup = is_chrome_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/chrome/potassium-dichromate-solution.png",
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
peroxo_tungstic_acid = "peroxo-tungstic-acid-solution"
tungstic_acid = "tungstic-acid"
--ammonium_tungstate_solution = "ammonium-tungstate-solution"
data:extend
({
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
platinum_chloride = "platinum-chloride"
platinum_fluoride = "platinum-fluoride"
sodium_hexachloroplatinate_solution = "sodium-hexachloroplatinate-solution"
platinum_hydroxide = "platinum-hydroxide"
sodium_hexahydroxoplatinate_solution = "sodium-hexahydroxoplatinate-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "PtCl[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = platinum_chloride,
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
        name = platinum_fluoride,
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
        name = platinum_hydroxide,
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
        name = sodium_hexachloroplatinate_solution,
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
        name = sodium_hexahydroxoplatinate_solution,
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