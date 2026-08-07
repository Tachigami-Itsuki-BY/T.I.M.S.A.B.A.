-- GROUPS
is_potassium = "is-potassium"
is_potassium_fluid = "is-potassium-fluid"
TIMSABA.functions.create_subgroups(ig_smelting,
{
    {name = is_potassium,       order = v},
    {name = is_potassium_fluid, order = v_a}
})

-- ITEM
carnallite = "carnallite"
potassium_chloride = "potassium-chloride"
potassium_hydroxide = "potassium-hydroxide"
potassium_chlorate = "potassium-chlorate"
potassium = "potassium"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "KCl*MgCl[font=default-tiny-bold]2[/font]*6H[font=default-tiny-bold]2[/font]O"} or nil,
        name = carnallite,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/carnallite.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/carnallite-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/carnallite-2.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/carnallite-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "KCl"} or nil,
        name = potassium_chloride,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-chloride.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "KOH"} or nil,
        name = potassium_hydroxide,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-hydroxide.png",
        order = c
    },
    -- d potassium_hypochlorite
    {
        localised_description = show_formula and {chemical_formula, "KClO[font=default-tiny-bold]3[/font]"} or nil,
        name = potassium_chlorate,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-chlorate.png",
        order = e
    },
    -- f potassium_perchlorate
    -- g potassium_sulfate
    {
        localised_description = show_formula and {chemical_formula, "K"} or nil,
        name = potassium,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium.png",
        order = z
    }
})

-- FLUID
potassium_chloride_solution = "potassium-chloride-solution"
potassium_hydroxide_solution = "potassium-hydroxide-solution"
potassium_hypochlorite_solution = "potassium-hypochlorite-solution"
potassium_chlorate_solution = "potassium-chlorate-solution"
potassium_sulfate_solution = "potassium-sulfate-solution"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "KCl[font=default-tiny-bold](aq)[/font]"} or nil,
        name = potassium_chloride_solution,
        subgroup = is_potassium_fluid,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-chloride-solution.png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("KClWp"),
        flow_color = TIMSABA.functions.flow_color("KClWp")
    },
    {
        localised_description = show_formula and {chemical_formula, "KOH[font=default-tiny-bold](aq)[/font]"} or nil,
        name = potassium_hydroxide_solution,
        subgroup = is_potassium_fluid,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-hydroxide-solution.png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("KOHWp"),
        flow_color = TIMSABA.functions.flow_color("KOHWp")
    },
    {
        localised_description = show_formula and {chemical_formula, "KClO[font=default-tiny-bold](aq)[/font]"} or nil,
        name = potassium_hypochlorite_solution,
        subgroup = is_potassium_fluid,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-hypochlorite-solution.png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("KClOWp"),
        flow_color = TIMSABA.functions.flow_color("KClOWp")
    },
    {
        localised_description = show_formula and {chemical_formula, "KClO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = potassium_chlorate_solution,
        subgroup = is_potassium_fluid,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-chlorate-solution.png",
        order = e,
        base_color = angelsmods.functions.fluid_color("KClO3Wp"),
        flow_color = angelsmods.functions.flow_color("KClO3Wp")
    },
    -- f potassium_perchlorate_solution
    {
        localised_description = show_formula and {chemical_formula, "K[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = potassium_sulfate_solution,
        subgroup = is_potassium_fluid,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-sulfate-solution.png",
        order = g,
        base_color = TIMSABA.functions.fluid_color("K2SO4Wp"),
        flow_color = TIMSABA.functions.flow_color("K2SO4Wp")
    }
})
TIMSABA.barreling.add_dangerous_fluid(potassium_chloride_solution)
TIMSABA.barreling.add_dangerous_fluid(potassium_hydroxide_solution)
TIMSABA.barreling.add_dangerous_fluid(potassium_hypochlorite_solution)
TIMSABA.barreling.add_dangerous_fluid(potassium_chlorate_solution)
TIMSABA.barreling.add_dangerous_fluid(potassium_sulfate_solution)

-- RECIPE
carnallite_reprocessing = "carnallite-reprocessing"
potassium_hydroxide_solution_from_potassium_sulfate_solution = "potassium-hydroxide-solution-from-potassium-sulfate-solution"
potassium_chloride_solution_2 = "potassium-chloride-solution-2"
TIMSABA.functions.create_recipes
({
    {
        name = carnallite,
        category = angels_salination_plant,
        subgroup = is_potassium,
        icons = TWO_I(water_saline_angels, carnallite),
        order = a,
        ingredients = {{type = fluid, name = water_saline_angels, amount = 960}},
        results = {{type = item, name = carnallite, amount = 16}},
    },
    {
        name = potassium_hydroxide,
        category = angels_petrochem_electrolyser,
        subgroup = is_potassium,
        icons = FOUR_R_I(potassium_chloride_solution, hydrogen_angels, potassium_hydroxide, chlorine_angels),
        order = c,
        energy_required = 8, -- 2KCl(aq) -electrode/electrolys-> 2KOH + Cl₂ + H₂
        ingredients =
        {
            {type = fluid, name = potassium_chloride_solution, amount = 240},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = item, name = potassium_hydroxide, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 60}, -- 120
            {type = fluid, name = chlorine_angels, amount = 60}, -- 120
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = potassium_hydroxide
    },
    {
        name = potassium_chlorate,
        category = chemistry,
        subgroup = is_potassium,
        icons = THREE_R_I(potassium_chlorate_solution, potassium_chlorate, steam),
        order = e,
        -- KClO₃(aq) --> KClO₃ + H₂O(g)
        ingredients = {{type = fluid, name = potassium_chlorate_solution, amount = 4}},
        results =
        {
            {type = item, name = potassium_chlorate, amount = 4},
            {type = fluid, name = steam, amount = 30} -- 60
        },
        main_product = potassium_chlorate
    },
    -- FLUID
    {
        name = carnallite_reprocessing,
        category = angels_advanced_chemistry,
        subgroup = is_potassium_fluid,
        icons = THREE_D_I(carnallite, nil, water_purified_angels, potassium_chloride_solution, magnesium_chloride_solution, water),
        order = a,
        -- KCl * MgCl₂ * 6H₂O + 2H₂O --> KCl(aq) + MgCl₂(aq) + 6H₂O
        ingredients =
        {
            {type = item, name = carnallite, amount = 8},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = potassium_chloride_solution, amount = 120},
            {type = fluid, name = magnesium_chloride_solution, amount = 120},
            {type = fluid, name = water, amount = 720}
        },
        main_product = potassium_chloride_solution
    },
    {
        name = potassium_chloride_solution,
        category = angels_liquifying,
        subgroup = is_potassium_fluid,
        icons = THREE_I(potassium_chloride, water_purified_angels, potassium_chloride_solution),
        order = b,
        -- KCl(s) + H₂O(l) --> KCl(aq)
        ingredients =
        {
            {type = item, name = potassium_chloride, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = potassium_chloride_solution, amount = 60}},
        main_product = potassium_chloride_solution
    },
    {
        name = potassium_chloride_solution_2,
        category = chemistry,
        subgroup = is_potassium_fluid,
        icons = TWO_D_I(potassium, hydrochloric_acid_angels, potassium_chloride_solution, hydrogen_angels),
        order = b_a,
        -- 2K(s) + 2HCl(aq) --> 2KCl(aq) + H₂(g)
        ingredients =
        {
            {type = item, name = potassium, amount = 4},
            {type = fluid, name = hydrochloric_acid_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = potassium_chloride_solution, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 15} -- 30
        },
        main_product = potassium_chloride_solution
    },
    {
        name = potassium_hydroxide_solution,
        category = angels_liquifying,
        subgroup = is_potassium_fluid,
        icons = THREE_I(potassium_hydroxide, water_purified_angels, potassium_hydroxide_solution),
        order = c,
        ingredients =
        {
            {type = item, name = potassium_hydroxide, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = potassium_hydroxide_solution, amount = 60}},
        main_product = potassium_hydroxide_solution
    },
    {
        name = potassium_hydroxide_solution_from_potassium_sulfate_solution,
        category = angels_petrochem_electrolyser,
        subgroup = is_potassium_fluid,
        icons = FOUR_R_I(potassium_sulfate_solution, potassium_hydroxide_solution, nil, sulfuric_acid_angels),
        order = c_a,
        energy_required = 8, -- K₂SO₄(aq) + 2H₂O -electrode/electrolys-> 2KOH(aq) + H₂SO₄
        ingredients =
        {
            {type = fluid, name = potassium_sulfate_solution, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 480},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = fluid, name = potassium_hydroxide_solution, amount = 480},
            {type = fluid, name = sulfuric_acid_angels, amount = 120}, -- 240
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = potassium_hydroxide_solution
    },
    {
        name = potassium_hypochlorite_solution,
        category = angels_advanced_chemistry,
        subgroup = is_potassium_fluid,
        icons = TWO_D_I(potassium_hydroxide_solution, chlorine_angels, potassium_hypochlorite_solution, potassium_chloride_solution),
        order = d,
        energy_required = 8, -- 2KOH(aq) + Cl₂ --> KClO(aq) + KCl(aq) + H₂O
        ingredients =
        {
            {type = fluid, name = potassium_hydroxide_solution, amount = 240},
            {type = fluid, name = chlorine_angels, amount = 120},
        },
        results =
        {
            {type = fluid, name = potassium_hypochlorite_solution, amount = 120},
            {type = fluid, name = potassium_chloride_solution, amount = 120},
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = potassium_hypochlorite_solution
    },
    {
        name = potassium_chlorate_solution,
        category = chemistry,
        subgroup = is_potassium_fluid,
        icons = THREE_R_I(potassium_hypochlorite_solution, potassium_chlorate_solution, potassium_chloride_solution),
        order = e,
        -- 3KClO(aq) --> KClO₃(aq) + 2KCl(aq)
        ingredients = {{type = fluid, name = potassium_hypochlorite_solution, amount = 90}},
        results =
        {
            {type = fluid, name = potassium_chlorate_solution, amount = 30},
            {type = fluid, name = potassium_chloride_solution, amount = 30} -- 60
        },
        main_product = potassium_chlorate_solution
    }
})