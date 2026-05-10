-- GROUPS
local smelting = "angels-smelting"
local is_boron = "is-boron"
data:extend
({
    {
        type = item_subgroup,
        name = is_boron,
        group = smelting,
        order = u
    }
})

-- ITEM
borax = "borax"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]B[font=default-tiny-bold]4[/font]O[font=default-tiny-bold]7[/font] * 10H[font=default-tiny-bold]2[/font]O"} or nil,
        type = item,
        name = borax,
        subgroup = is_boron,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/boron/borax.png",
        order = a,
        stack_size = 200,
        weight = 500
    }
})

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/boron/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
boric_acid = "boric-acid"
diborane_gas = "diborane-gas"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]3[/font]BO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = boric_acid,
        subgroup = is_boron,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/boron/boric-acid-solution.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("H3BO3Wp"),
        flow_color = TIMSABA.functions.flow_color("H3BO3Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "B[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]6[/font]"} or nil,
        type = fluid,
        name = diborane_gas,
        subgroup = is_boron,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/boron/diborane-gas.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("B2H6"),
        flow_color = TIMSABA.functions.flow_color("B2H6"),
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
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/boron/.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = angelsmods.functions.fluid_color(""),
        flow_color = angelsmods.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- RECIPE
borax_recipe = "borax-ore-chunk-mix-processing"
boric_acid_from_diborane_gas = "boric-acid-from-diborane-gas"
boric_acid_from_hydrochloric_acid = "boric-acid-from-hydrochloric-acid"
data:extend
({
    {
        type = recipe,
        name = borax_recipe,
        category = angels_ore_sorting_3,
        subgroup = is_ore_sorting_advanced_2,
        icons = AR_FOUR_I(crystal_catalyst, chunk_saphirite, chunk_jivolite, borax),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = boric_acid,
        category = chemistry,
        subgroup = is_boron,
        icons = TWO_D_I(borax, sulfuric_acid_angels, boric_acid, sodium_sulfate_solution),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Na₂B₄O₇ * 10H₂O + H₂SO₄ --> 4H₃BO₃(aq) + Na₂SO₄(aq)
        ingredients =
        {
            {type = item, name = borax, amount = 16},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = boric_acid, amount = 960},
            {type = fluid, name = sodium_sulfate_solution, amount = 120} -- 240
        },
        main_product = boric_acid
    },
    {
        type = recipe,
        name = boric_acid_from_hydrochloric_acid,
        category = angels_advanced_chemistry,
        subgroup = is_boron,
        icons = THREE_D_I(borax, nil, hydrochloric_acid_angels, boric_acid, sodium_chloride_solution, water_purified_angels),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Na₂B₄O₇ * 10H₂O + 2HCl(aq) --> 4H₃BO₃(aq) + 2NaCl(aq) + H₂O
        ingredients =
        {
            {type = item, name = borax, amount = 16},
            {type = fluid, name = hydrochloric_acid_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = boric_acid, amount = 960},
            {type = fluid, name = sodium_chloride_solution, amount = 240}, -- 480
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        }
    },
    {
        type = recipe,
        name = boric_acid_from_diborane_gas,
        category = chemistry,
        subgroup = is_boron,
        icons = TWO_D_I(diborane_gas, water_purified_angels, boric_acid, hydrogen_angels),
        order = b_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- B₂H₆ + 8H₂O --> 2H₃BO₃(aq) + 6H₂
        ingredients =
        {
            {type = fluid, name = diborane_gas, amount = 120},
            {type = fluid, name = water_purified_angels, amount = 960}
        },
        results =
        {
            {type = fluid, name = boric_acid, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 240} -- 720
        }
    }
})

--[[data:extend
({
    {
        type = recipe,
        name = ,
        category = ,
        subgroup = ,
        icons = ,
        order = ,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = ,
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]