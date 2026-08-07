-- GROUPS
is_phosphorus = "is-phosphorus"
TIMSABA.functions.create_subgroups(ig_smelting,
{
    {name = is_phosphorus, order = w}
})

-- ITEM
fluorapatite = "fluorapatite"
white_phosphorus = "white-phosphorus"
phosphorus_chloride_V = "phosphorus-chloride-V"
calcium_silicate = "calcium-silicate"
metasilicic_acid = "metasilicic-acid"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Ca[font=default-tiny-bold]5[/font](PO[font=default-tiny-bold]4[/font])[font=default-tiny-bold]3[/font]F"} or nil,
        name = fluorapatite,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/fluorapatite.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/fluorapatite-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/fluorapatite-2.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/fluorapatite-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "P[font=default-tiny-bold]4[/font]"} or nil,
        name = white_phosphorus,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/white-phosphorus.png",
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "PCl[font=default-tiny-bold]5[/font]"} or nil,
        name = phosphorus_chloride_V,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/phosphorus-chloride-V.png",
        order = e
    },
    -- SILICON
    {
        localised_description = show_formula and {chemical_formula, "CaSiO[font=default-tiny-bold]3[/font]"} or nil,
        name = calcium_silicate,
        subgroup = is_silicon_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/calcium-silicate.png",
        order = i
    },
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]SiO[font=default-tiny-bold]3[/font]"} or nil,
        name = metasilicic_acid,
        subgroup = is_silicon_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/metasilicic-acid.png",
        order = j
    }
})

-- FLUID
white_phosphorus_gas = "white-phosphorus-gas"
phosphorus_chloride_III_liquid = "phosphorus-chloride-III-liquid"
phosphorus_fluoride_V_gas = "phosphorus-fluoride-V-gas"
hexafluorophosphoric_acid = "hexafluorophosphoric-acid-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "P[font=default-tiny-bold]4[/font]"} or nil,
        name = white_phosphorus_gas,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/white-phosphorus-gas.png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("PPP"),
        flow_color = TIMSABA.functions.flow_color("PPP")
    },
    {
        localised_description = show_formula and {chemical_formula, "PCl[font=default-tiny-bold]3[/font]"} or nil,
        name = phosphorus_chloride_III_liquid,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/phosphorus-chloride-III-liquid.png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("PCl3"),
        flow_color = TIMSABA.functions.flow_color("PCl3")
    },
    {
        localised_description = show_formula and {chemical_formula, "PF[font=default-tiny-bold]5[/font]"} or nil,
        name = phosphorus_fluoride_V_gas,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/phosphorus-fluoride-V-gas.png",
        order = f,
        base_color = TIMSABA.functions.fluid_color("PF5"),
        flow_color = TIMSABA.functions.flow_color("PF5")
    },
    {
        localised_description = show_formula and {chemical_formula, "HPF[font=default-tiny-bold]6(aq)[/font]"} or nil,
        name = hexafluorophosphoric_acid,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/hexafluorophosphoric-acid-solution.png",
        order = g,
        base_color = angelsmods.functions.fluid_color("HPF6Wp"),
        flow_color = angelsmods.functions.flow_color("HPF6Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(phosphorus_chloride_III_liquid)
TIMSABA.barreling.add_gas(phosphorus_fluoride_V_gas)
TIMSABA.barreling.add_dangerous_fluid(hexafluorophosphoric_acid)

-- RECIPE
fluorapatite_recipe = "phosphate-ore-crystal-mix-processing"
silicon_oxide_IV_from_metasilicic_acid = "silicon-oxide-IV-from-metasilicic-acid"
TIMSABA.functions.create_recipes
({
    {
        name = fluorapatite_recipe,
        category = angels_ore_sorting_4,
        subgroup = is_ore_sorting_advanced_3,
        icons = AR_FOUR_I(hybride_catalyst, crystal_saphirite, crystal_jivolite, fluorapatite),
        order = a_e,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 1},
            {type = item, name = crystal_saphirite, amount = 2},
            {type = item, name = crystal_jivolite, amount = 2}
        },
        results = {{type = item, name = fluorapatite, amount = 4}},
        main_product = fluorapatite
    },
    -- SMELTING
    {
        name = white_phosphorus_gas,
        category = chemistry,
        subgroup = is_phosphorus,
        icons = FOUR_THREE_R_I(fluorapatite, sand_angels, coke_angels, white_phosphorus_gas, slag_angels, calcium_silicate, carbon_dioxide_angels),
        order = b,
        energy_required = 16, -- 4Ca₅(PO₄)₃F(ore) + 18SiO₂(sand) + 30C(coke) --> 3P₄(g) + 18CaSiO₃(s) + 2CaF₂(s) + 30CO(g)
        ingredients =
        {
            {type = item, name = fluorapatite, amount = 8},
            {type = item, name = sand_angels, amount = 36},
            {type = item, name = coke_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = white_phosphorus_gas, amount = 90},
            {type = item, name = calcium_silicate, amount = 72},
            {type = item, name = fluorite_angels, amount = 8},
            {type = fluid, name = carbon_dioxide_angels, amount = 900}
        },
        main_product = white_phosphorus_gas
    },
    {
        name = white_phosphorus,
        category = chemistry,
        subgroup = is_phosphorus,
        icons = TWO_I(white_phosphorus_gas, white_phosphorus),
        order = c,
        -- P₄(g) -H₂O-> P₄(s)
        ingredients =
        {
            {type = fluid, name = white_phosphorus_gas, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = white_phosphorus, amount = 4},
            {type = fluid, name = steam, amount = 30} -- 60
        },
        main_product = white_phosphorus
    },
    {
        name = phosphorus_chloride_III_liquid,
        category = chemistry,
        subgroup = is_phosphorus,
        icons = THREE_I(white_phosphorus, chlorine_angels, phosphorus_chloride_III_liquid),
        order = d,
        -- P₄ + 6Cl₂ --> 4PCl₃
        ingredients =
        {
            {type = item, name = white_phosphorus, amount = 1},
            {type = fluid, name = chlorine_angels, amount = 90}
        },
        results = {{type = fluid, name = phosphorus_chloride_III_liquid, amount = 60}},
        main_product = phosphorus_chloride_III_liquid
    },
    {
        name = phosphorus_chloride_V,
        category = chemistry,
        subgroup = is_phosphorus,
        icons = THREE_I(phosphorus_chloride_III_liquid, chlorine_angels, phosphorus_chloride_V),
        order = e,
        -- PCl₃ + Cl₂ --> PCl₅
        ingredients =
        {
            {type = fluid, name = phosphorus_chloride_III_liquid, amount = 60},
            {type = fluid, name = chlorine_angels, amount = 60}
        },
        results = {{type = item, name = phosphorus_chloride_V, amount = 4}},
        main_product = phosphorus_chloride_V
    },
    {
        name = phosphorus_fluoride_V_gas,
        category = chemistry,
        subgroup = is_phosphorus,
        icons = TWO_D_I(phosphorus_chloride_V, hydrogen_fluoride_angels, phosphorus_fluoride_V_gas, hydrogen_chloride_angels),
        order = f,
        -- PCl₅ + 5HF --> PF₅ + 5HCl
        ingredients =
        {
            {type = item, name = phosphorus_chloride_V, amount = 4},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 300}
        },
        results =
        {
            {type = fluid, name = phosphorus_fluoride_V_gas, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 120} -- 300
        },
        main_product = phosphorus_fluoride_V_gas
    },
    {
        name = hexafluorophosphoric_acid,
        category = chemistry,
        subgroup = is_phosphorus,
        icons = THREE_I(phosphorus_fluoride_V_gas, hydrofluoric_acid_angels, hexafluorophosphoric_acid),
        order = g,
        -- PF₅(g) + HF(aq) --> HPF₆(aq)
        ingredients =
        {
            {type = fluid, name = phosphorus_fluoride_V_gas, amount = 60},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 60}
        },
        results = {{type = fluid, name = hexafluorophosphoric_acid, amount = 60}},
        main_product = hexafluorophosphoric_acid
    },
    -- SILICON
    {
        name = metasilicic_acid,
        category = angels_chemical_smelting_3,
        subgroup = is_silicon_chemistry,
        icons = THREE_D_I(calcium_silicate, nil, hydrochloric_acid_angels, metasilicic_acid, calcium_chloride_solution, water_purified_angels),
        order = j,
        energy_required = 8, -- CaSiO₃(s) + 2HCl(aq) --> H₂SiO₃(s) + CaCl₂(aq) + H₂O(l)
        ingredients =
        {
            {type = item, name = calcium_silicate, amount = 16},
            {type = fluid, name = hydrochloric_acid_angels, amount = 480}
        },
        results =
        {
            {type = item, name = metasilicic_acid, amount = 16},
            {type = fluid, name = calcium_chloride_solution, amount = 120}, -- 240
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        },
        main_product = metasilicic_acid
    },
    {
        name = silicon_oxide_IV_from_metasilicic_acid,
        category = angels_blast_smelting_4,
        subgroup = is_silicon_chemistry,
        icons = THREE_R_I(metasilicic_acid, silicon_oxide_IV, steam),
        order = a_c,
        energy_required = 8, -- H₂SiO₃(s) --> SiO₂(s) + H₂O(l)
        ingredients = {{type = item, name = metasilicic_acid, amount = 16}},
        results =
        {
            {type = item, name = silicon_oxide_IV, amount = 16},
            {type = fluid, name = steam, amount = 120} -- 240
        },
        main_product = silicon_oxide_IV
    }
})