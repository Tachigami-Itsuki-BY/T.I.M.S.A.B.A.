-- GROUPS
is_boron = "is-boron"
TIMSABA.functions.create_subgroups(ig_smelting,
{
    {name = is_boron, order = u}
})

-- ITEM
borax = "borax"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]B[font=default-tiny-bold]4[/font]O[font=default-tiny-bold]7[/font] * 10H[font=default-tiny-bold]2[/font]O"} or nil,
        name = borax,
        subgroup = is_boron,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/boron/borax.png",
        order = a
    }
})

-- FLUID
boric_acid_solution = "boric-acid-solution"
diborane_gas = "diborane-gas"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]3[/font]BO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = boric_acid_solution,
        subgroup = is_boron,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/boron/boric-acid-solution.png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("H3BO3Wp"),
        flow_color = TIMSABA.functions.flow_color("H3BO3Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "B[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]6[/font]"} or nil,
        name = diborane_gas,
        subgroup = is_boron,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/boron/diborane-gas.png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("B2H6"),
        flow_color = TIMSABA.functions.flow_color("B2H6")
    }
})

-- RECIPE
borax_recipe = "borax-ore-chunk-mix-processing"
boric_acid_from_diborane_gas = "boric-acid-from-diborane-gas"
boric_acid_from_hydrochloric_acid = "boric-acid-from-hydrochloric-acid"
TIMSABA.functions.create_recipes
({
    {
        name = borax_recipe,
        category = angels_ore_sorting_3,
        subgroup = is_ore_sorting_advanced_2,
        icons = AR_FOUR_I(crystal_catalyst, chunk_saphirite, chunk_jivolite, borax),
        order = a_g,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = crystal_catalyst, amount = 1},
            {type = item, name = chunk_saphirite, amount = 2},
            {type = item, name = chunk_jivolite, amount = 2}
        },
        results = {{type = item, name = borax, amount = 4}},
        main_product = borax
    },
    -- SMELTING
    {
        name = boric_acid_solution,
        category = chemistry,
        subgroup = is_boron,
        icons = TWO_D_I(borax, sulfuric_acid_angels, boric_acid_solution, sodium_sulfate_solution),
        order = b,
        energy_required = 8, -- Na₂B₄O₇ * 10H₂O + H₂SO₄ --> 4H₃BO₃(aq) + Na₂SO₄(aq)
        ingredients =
        {
            {type = item, name = borax, amount = 16},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = boric_acid_solution, amount = 960},
            {type = fluid, name = sodium_sulfate_solution, amount = 120} -- 240
        },
        main_product = boric_acid_solution
    },
    {
        name = boric_acid_from_hydrochloric_acid,
        category = angels_advanced_chemistry,
        subgroup = is_boron,
        icons = THREE_D_I(borax, nil, hydrochloric_acid_angels, boric_acid_solution, sodium_chloride_solution, water_purified_angels),
        order = b_a,
        energy_required = 8, -- Na₂B₄O₇ * 10H₂O + 2HCl(aq) --> 4H₃BO₃(aq) + 2NaCl(aq) + H₂O
        ingredients =
        {
            {type = item, name = borax, amount = 16},
            {type = fluid, name = hydrochloric_acid_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = boric_acid_solution, amount = 960},
            {type = fluid, name = sodium_chloride_solution, amount = 240}, -- 480
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        }
    },
    {
        name = boric_acid_from_diborane_gas,
        category = chemistry,
        subgroup = is_boron,
        icons = TWO_D_I(diborane_gas, water_purified_angels, boric_acid_solution, hydrogen_angels),
        order = b_b,
        -- B₂H₆ + 8H₂O --> 2H₃BO₃(aq) + 6H₂
        ingredients =
        {
            {type = fluid, name = diborane_gas, amount = 120},
            {type = fluid, name = water_purified_angels, amount = 960}
        },
        results =
        {
            {type = fluid, name = boric_acid_solution, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 240} -- 720
        }
    }
})