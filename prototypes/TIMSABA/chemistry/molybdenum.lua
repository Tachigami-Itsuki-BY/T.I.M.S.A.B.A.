-- GROUPS
is_molybdenum = "is-molybdenum"
local is_molybdenum_chemistry = "is-molybdenum-chemistry"
TIMSABA.functions.create_subgroups(ig_smelting,
{
    {name = is_molybdenum,           order = r},
    {name = is_molybdenum_chemistry, order = r_a}
})

-- ITEM
molybdenum_ore = "timsaba-molybdenum-ore"
molybdenum_processed = "timsaba-molybdenum-processed"
molybdenum_pellet = "timsaba-molybdenum-pellet"
molybdenum_powder = "timsaba-molybdenum-powder"
molybdenum_oxide_VI = "timsaba-molybdenum-oxide-VI"
potassium_molybdate = "potassium-molybdate"
molybdic_acid = "molybdic-acid"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Mo"} or nil,
        name = molybdenum_ore,
        subgroup = is_molybdenum,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-ore.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-ore-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-ore-2.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-ore-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Mo"} or nil,
        name = molybdenum_processed,
        subgroup = is_molybdenum,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-processed.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Mo"} or nil,
        name = molybdenum_pellet,
        subgroup = is_molybdenum,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-pellet.png",
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "Mo"} or nil,
        name = molybdenum_powder,
        subgroup = is_molybdenum,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-powder.png",
        order = d
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "MoO[font=default-tiny-bold]3[/font]"} or nil,
        name = molybdenum_oxide_VI,
        subgroup = is_molybdenum_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-oxide-VI.png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "K[font=default-tiny-bold]2[/font]MoO[font=default-tiny-bold]4[/font]"} or nil,
        name = potassium_molybdate,
        subgroup = is_molybdenum_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/potassium-molybdate.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]MoO[font=default-tiny-bold]4[/font]"} or nil,
        name = molybdic_acid,
        subgroup = is_molybdenum_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdic-acid.png",
        order = d
    }
})

-- FLUID
molybdenum_chloride_III_solution = "timsaba-molybdenum-chloride-III-solution"
molybdenum_fluoride_IV = "timsaba-molybdenum-fluoride-IV-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "MoCl[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = molybdenum_chloride_III_solution,
        subgroup = is_molybdenum_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-chloride-III-solution.png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("MoF6"),
        flow_color = TIMSABA.functions.flow_color("MoF6")
    },
    {
        localised_description = show_formula and {chemical_formula, "MoF[font=default-tiny-bold]6[/font]"} or nil,
        name = molybdenum_fluoride_IV,
        subgroup = is_molybdenum_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-fluoride-IV-liquid.png",
        order = e,
        base_color = TIMSABA.functions.fluid_color("MoF6"),
        flow_color = TIMSABA.functions.flow_color("MoF6")
    }
})
TIMSABA.barreling.add_dangerous_fluid(molybdenum_chloride_III_solution)
TIMSABA.barreling.add_dangerous_fluid(molybdenum_fluoride_IV)

-- RECIPE
molybdenum_powder_2 = "timsaba-molybdenum-powder-2"
molybdenum_oxide_VI_2 = "timsaba-molybdenum-oxide-VI-2"
TIMSABA.functions.create_recipes
({
    {
        name = molybdenum_processed,
        category = angels_processed_pressing_4,
        subgroup = is_molybdenum,
        icons = TWO_I(molybdenum_ore, molybdenum_processed),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = molybdenum_ore, amount = 4}},
        results = {{type = item, name = molybdenum_processed, amount = 4}},
        main_product = molybdenum_processed
    },
    {
        name = molybdenum_pellet,
        category = angels_pellet_pressing_4,
        subgroup = is_molybdenum,
        icons = TWO_I(molybdenum_processed, molybdenum_pellet),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = molybdenum_processed, amount = 4}},
        results = {{type = item, name = molybdenum_pellet, amount = 4}},
        main_product = molybdenum_pellet
    },
    {
        name = molybdenum_powder,
        category = angels_chemical_smelting_4,
        subgroup = is_molybdenum,
        icons = TWO_D_I(molybdenum_oxide_VI, hydrogen_angels, molybdenum_powder, steam),
        order = d,
        energy_required = 8, -- MoO₃(s) + 3H₂(g) --> Mo(s) + 3H₂O(g)
        ingredients =
        {
            {type = item, name = molybdenum_oxide_VI, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 720}
        },
        results =
        {
            {type = item, name = molybdenum_powder, amount = 16},
            {type = fluid, name = steam, amount = 240} -- 720
        },
        main_product = molybdenum_powder
    },
    {
        name = molybdenum_powder_2,
        category = angels_chemical_smelting_4,
        subgroup = is_molybdenum,
        icons = TWO_D_I(molybdenum_fluoride_IV, hydrogen_angels, molybdenum_powder, hydrogen_fluoride_angels),
        order = d_a,
        energy_required = 8, -- MoF₆(l) + 3H₂(g) --> Mo(s) + 6HF(g)
        ingredients =
        {
            {type = fluid, name = molybdenum_fluoride_IV, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 720}
        },
        results =
        {
            {type = item, name = molybdenum_powder, amount = 16},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 480} -- 1440
        },
        main_product = molybdenum_powder
    },
    -- CHEMISTRY
    {
        name = molybdenum_oxide_VI,
        category = angels_blast_smelting_4,
        subgroup = is_molybdenum_chemistry,
        icons = THREE_I(molybdenum_ore, oxygen_angels, molybdenum_oxide_VI),
        order = a,
        energy_required = 8, -- 2Mo(s) + 3O₂(g) --> 2MoO₃(s)
        ingredients =
        {
            {type = item, name = molybdenum_ore, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 360}
        },
        results = {{type = item, name = molybdenum_oxide_VI, amount = 16}},
        main_product = molybdenum_oxide_VI
    },
    {
        name = molybdenum_oxide_VI_2,
        category = angels_blast_smelting_4,
        subgroup = is_molybdenum_chemistry,
        icons = THREE_R_I(molybdic_acid, molybdenum_oxide_VI, steam),
        order = a_a,
        energy_required = 8, -- H₂MoO₄(s) --> MoO₃(s) + H₂O(g)
        ingredients = {{type = item, name = molybdic_acid, amount = 16}},
        results =
        {
            {type = item, name = molybdenum_oxide_VI, amount = 16},
            {type = fluid, name = steam, amount = 120} -- 240
        },
        main_product = molybdenum_oxide_VI
    },
    {
        name = potassium_molybdate,
        category = angels_blast_smelting_4,
        subgroup = is_molybdenum_chemistry,
        icons = THREE_D_I(molybdenum_processed, potassium_hydroxide, potassium_chlorate, potassium_molybdate, potassium_chloride, steam),
        order = b,
        energy_required = 8, -- Mo(s) + 2KOH(s) + KClO₃(s) --> K₂MoO₄(s) + KCl(s) + H₂O(g)
        ingredients =
        {
            {type = item, name = molybdenum_processed, amount = 16},
            {type = item, name = potassium_hydroxide, amount = 32},
            {type = item, name = potassium_chlorate, amount = 16}
        },
        results =
        {
            {type = item, name = potassium_molybdate, amount = 16},
            {type = item, name = potassium_chloride, amount = 8}, -- 16
            {type = fluid, name = steam, amount = 120} -- 240
        },
        main_product = potassium_molybdate
    },
    {
        name = molybdenum_chloride_III_solution,
        category = angels_advanced_chemistry,
        subgroup = is_molybdenum_chemistry,
        icons = FOUR_THREE_R_I(potassium_molybdate, zinc_ingot, hydrochloric_acid_angels, molybdenum_chloride_III_solution, potassium_chloride_solution, zinc_chloride, water_purified_angels),
        order = c,
        -- 2K₂MoO₄(s) + 3Zn(s) + 16HCl(aq) --> 2MoCl₃(aq) + 3ZnCl₂(s) + 4KCl(aq) + 8H₂O(l) + 10H₂O(l)
        ingredients =
        {
            {type = item, name = potassium_molybdate, amount = 8},
            {type = item, name = zinc_ingot, amount = 12},
            {type = fluid, name = hydrochloric_acid_angels, amount = 960}
        },
        results =
        {
            {type = fluid, name = molybdenum_chloride_III_solution, amount = 120},
            {type = item, name = zinc_chloride, amount = 4}, -- 12
            {type = fluid, name = potassium_chloride_solution, amount = 120}, -- 240
            {type = fluid, name = water_purified_angels, amount = 480} -- 1080
        },
        main_product = molybdenum_chloride_III_solution
    },
    {
        name = molybdic_acid,
        category = angels_advanced_chemistry,
        subgroup = is_molybdenum_chemistry,
        icons = THREE_D_I(molybdenum_chloride_III_solution, nitrogen_monoxide_angels, water_purified_angels, molybdic_acid, ammonium_chloride_solution_angels, hydrochloric_acid_angels),
        order = d,
        -- 5MoCl₃(aq) + 3NO(g) + 17H₂O(l) + 10H₂O(l) --> 5H₂MoO₄(s) + 3NH₄Cl(aq) + 12HCl(aq)
        ingredients =
        {
            {type = fluid, name = molybdenum_chloride_III_solution, amount = 120}, -- 75
            {type = fluid, name = nitrogen_monoxide_angels, amount = 120}, -- 45
            {type = fluid, name = water_purified_angels, amount = 960} -- 405
        },
        results =
        {
            {type = item, name = molybdic_acid, amount = 8}, -- 5
            {type = fluid, name = ammonium_chloride_solution_angels, amount = 60}, -- 45 / 120
            {type = fluid, name = hydrochloric_acid_angels, amount = 120} -- 180 / 360
        },
        main_product = molybdic_acid
    },
    {
        name = molybdenum_fluoride_IV,
        category = angels_chemical_smelting_4,
        subgroup = is_molybdenum_chemistry,
        icons = THREE_I(molybdenum_pellet, fluorine, molybdenum_fluoride_IV),
        order = e,
        energy_required = 8, -- Mo(s) + 3F₂(g) --> MoF₆(l)
        ingredients =
        {
            {type = item, name = molybdenum_pellet, amount = 8},
            {type = fluid, name = fluorine, amount = 720}
        },
        results = {{type = fluid, name = molybdenum_fluoride_IV, amount = 240}},
        main_product = molybdenum_fluoride_IV
    }
})