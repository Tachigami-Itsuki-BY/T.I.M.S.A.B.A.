-- GROUPS
local smelting = "angels-smelting"
local is_potassium = "is-potassium"
data:extend
({
    {
        type = item_subgroup,
        name = is_potassium,
        group = smelting,
        order = s
    }
})
-- ITEM
carnallite = "carnallite"
potassium_hydroxide = "potassium-hydroxide"
potassium_permanganate = "potassium-permanganate"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "KCl*MgCl[font=default-tiny-bold]2[/font]*6H[font=default-tiny-bold]2[/font]O"} or nil,
        type = item,
        name = carnallite,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/carnallite.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/carnallite-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/carnallite-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/carnallite-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "KOH"} or nil,
        type = item,
        name = potassium_hydroxide,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-hydroxide.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    --[[{
        localised_description = show_formula and {chemical_formula, "KMnO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = potassium_permanganate,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-permanganate.png",
        order = e,
        stack_size = 200,
        weight = 5000
    }]]
})

-- FLUID
potassium_chloride_solution = "potassium-chloride-solution"
potassium_hydroxide_solution = "potassium-hydroxide-solution"
potassium_hypochlorite_solution = "potassium-hypochlorite-solution"
potassium_sulfate_solution = "potassium-sulfate-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "KCl[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = potassium_chloride_solution,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-chloride-solution.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("KClWp"),
        flow_color = TIMSABA.functions.flow_color("KClWp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "KOH[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = potassium_hydroxide_solution,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-hydroxide-solution.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("KOHWp"),
        flow_color = TIMSABA.functions.flow_color("KOHWp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "KClO[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = potassium_hypochlorite_solution,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-hypochlorite-solution.png",
        order = f,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("KClOWp"),
        flow_color = TIMSABA.functions.flow_color("KClOWp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "K[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = potassium_sulfate_solution,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-sulfate-solution.png",
        order = g,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("K2SO4Wp"),
        flow_color = TIMSABA.functions.flow_color("K2SO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- RECIPE
local recipe = "recipe"
potassium_hydroxide_solution_from_potassium_sulfate_solution = "potassium-hydroxide-solution-from-potassium-sulfate-solution"
data:extend
({
    {
        type = recipe,
        name = carnallite,
        category = angels_salination_plant,
        subgroup = is_potassium,
        icons = TWO_I(water_saline_angels, carnallite),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = water_saline_angels, amount = 960}},
        results = {{type = item, name = carnallite, amount = 16}},
    },
    {
        type = recipe,
        name = potassium_chloride_solution,
        category = angels_advanced_chemistry,
        subgroup = is_potassium,
        icons = THREE_D_I(carnallite, nil, water_purified_angels, potassium_chloride_solution, magnesium_chloride_solution, water),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- KCl * MgCl₂ * 6H₂O + 2H₂O --> KCl(aq) + MgCl₂(aq) + 6H₂O
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
        type = recipe,
        name = potassium_hydroxide,
        category = angels_petrochem_electrolyser,
        subgroup = is_potassium,
        icons = FOUR_R_I(potassium_chloride_solution, hydrogen_angels, potassium_hydroxide, chlorine_angels),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = potassium_hydroxide_solution,
        category = angels_liquifying,
        subgroup = is_potassium,
        icons = THREE_I(potassium_hydroxide, water_purified_angels, potassium_hydroxide_solution),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = potassium_hydroxide, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = potassium_hydroxide_solution, amount = 60}},
        main_product = potassium_hydroxide_solution
    },
    {
        type = recipe,
        name = potassium_hydroxide_solution_from_potassium_sulfate_solution,
        category = angels_petrochem_electrolyser,
        subgroup = is_potassium,
        icons = TWO_D_I(potassium_sulfate_solution, water_purified_angels, potassium_hydroxide_solution, sulfuric_acid_angels),
        order = d_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
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
    --[[{
        type = recipe,
        name = potassium_permanganate,
        category = angels_advanced_chemistry,
        subgroup = is_potassium,
        icons = FOUR_THREE_I(manganese_oxide, potassium_hydroxide_solution, oxygen_angels, chlorine_angels, potassium_permanganate, potassium_chloride_solution, water_purified_angels),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2MnO₂ + 4KOH(aq) + O₂ + Cl₂ --> 2KMnO₄(s) + 2KCl(aq) + 4H₂O
        ingredients =
        {
            {type = item, name = manganese_oxide, amount = 16},
            {type = fluid, name = potassium_hydroxide_solution, amount = 480},
            {type = fluid, name = oxygen_angels, amount = 120},
            {type = fluid, name = chlorine_angels, amount = 120}
        },
        results =
        {
            {type = item, name = potassium_permanganate, amount = 16},
            {type = fluid, name = potassium_chloride_solution, amount = 120}, -- 240
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = potassium_permanganate
    },]]
    {
        type = recipe,
        name = potassium_hypochlorite_solution,
        category = angels_advanced_chemistry,
        subgroup = is_potassium,
        icons = TWO_D_I(potassium_hydroxide_solution, chlorine_angels, potassium_hypochlorite_solution, potassium_chloride_solution),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
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
    }
})

-- TECHNOLOGY
local technology = "technology"
potassium_processing = "potassium-processing"
data:extend
({
    {
        type = technology,
        name = potassium_processing,
        icons = TIMSABA.functions.create_gas_tech_icon("KKK"),
        prerequisites = {tech_water_treatment_4},
        effects =
        {
            {type = unlock_recipe, recipe = carnallite},
            {type = unlock_recipe, recipe = potassium_chloride_solution},
            {type = unlock_recipe, recipe = potassium_hydroxide},
            {type = unlock_recipe, recipe = potassium_hydroxide_solution},
            --{type = unlock_recipe, recipe = potassium_permanganate},
            {type = unlock_recipe, recipe = potassium_hypochlorite_solution}
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    }
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
        stack_size = ,
        weight = 
    }
})

data:extend
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
        base_color = angelsmods.functions.fluid_color(""),
        flow_color = angelsmods.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})

data:extend
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
        energy_required = , -- 
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})
]]