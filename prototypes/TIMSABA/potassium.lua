-- GROUPS
local smelting = "angels-smelting"
local is_potassium = "is-potassium"
local is_potassium_fluid = "is-potassium-fluid"
data:extend
({
    {
        type = item_subgroup,
        name = is_potassium,
        group = smelting,
        order = v
    },
    {
        type = item_subgroup,
        name = is_potassium_fluid,
        group = smelting,
        order = v_a
    }
})

-- ITEM
carnallite = "carnallite"
potassium_chloride = "potassium-chloride"
potassium_hydroxide = "potassium-hydroxide"
potassium_chlorate = "potassium-chlorate"
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
        localised_description = show_formula and {chemical_formula, "KCl"} or nil,
        type = item,
        name = potassium_chloride,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-chloride.png",
        order = b,
        stack_size = 200,
        weight = 5000
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
    -- d potassium_hypochlorite
    {
        localised_description = show_formula and {chemical_formula, "KClO[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = potassium_chlorate,
        subgroup = is_potassium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-chlorate.png",
        order = e,
        stack_size = 200,
        weight = 5000
    }
    -- f potassium_perchlorate
    -- g potassium_sulfate
})

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
potassium_chloride_solution = "potassium-chloride-solution"
potassium_hydroxide_solution = "potassium-hydroxide-solution"
potassium_hypochlorite_solution = "potassium-hypochlorite-solution"
potassium_chlorate_solution = "potassium-chlorate-solution"
potassium_sulfate_solution = "potassium-sulfate-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "KCl[font=default-tiny-bold](aq)[/font]"} or nil,
        type = fluid,
        name = potassium_chloride_solution,
        subgroup = is_potassium_fluid,
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
        subgroup = is_potassium_fluid,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-hydroxide-solution.png",
        order = c,
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
        subgroup = is_potassium_fluid,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-hypochlorite-solution.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("KClOWp"),
        flow_color = TIMSABA.functions.flow_color("KClOWp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "KClO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = potassium_chlorate_solution,
        subgroup = is_potassium_fluid,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/potassium-chlorate-solution.png",
        order = e,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = angelsmods.functions.fluid_color("KClO3Wp"),
        flow_color = angelsmods.functions.flow_color("KClO3Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    -- f potassium_perchlorate_solution
    {
        localised_description = show_formula and {chemical_formula, "K[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = potassium_sulfate_solution,
        subgroup = is_potassium_fluid,
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

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/potassium/.png",
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
carnallite_reprocessing = "carnallite-reprocessing"
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
        name = potassium_chlorate,
        category = chemistry,
        subgroup = is_potassium,
        icons = THREE_R_I(potassium_chlorate_solution, potassium_chlorate, steam),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- KClO₃(aq) --> KClO₃ + H₂O(g)
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
        type = recipe,
        name = carnallite_reprocessing,
        category = angels_advanced_chemistry,
        subgroup = is_potassium_fluid,
        icons = THREE_D_I(carnallite, nil, water_purified_angels, potassium_chloride_solution, magnesium_chloride_solution, water),
        order = a,
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
        name = potassium_chloride_solution,
        category = angels_liquifying,
        subgroup = is_potassium_fluid,
        icons = THREE_I(potassium_chloride, water_purified_angels, potassium_chloride_solution),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- KCl(s) + H₂O(l) --> KCl(aq)
        ingredients =
        {
            {type = item, name = potassium_chloride, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = potassium_chloride_solution, amount = 60}},
        main_product = potassium_chloride_solution
    },
    {
        type = recipe,
        name = potassium_hydroxide_solution,
        category = angels_liquifying,
        subgroup = is_potassium_fluid,
        icons = THREE_I(potassium_hydroxide, water_purified_angels, potassium_hydroxide_solution),
        order = c,
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
        subgroup = is_potassium_fluid,
        icons = TWO_D_I(potassium_sulfate_solution, water_purified_angels, potassium_hydroxide_solution, sulfuric_acid_angels),
        order = c_a,
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
    {
        type = recipe,
        name = potassium_hypochlorite_solution,
        category = angels_advanced_chemistry,
        subgroup = is_potassium_fluid,
        icons = TWO_D_I(potassium_hydroxide_solution, chlorine_angels, potassium_hypochlorite_solution, potassium_chloride_solution),
        order = d,
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
    },
    {
        type = recipe,
        name = potassium_chlorate_solution,
        category = chemistry,
        subgroup = is_potassium_fluid,
        icons = THREE_R_I(potassium_hypochlorite_solution, potassium_chlorate_solution, potassium_chloride_solution),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 3KClO(aq) --> KClO₃(aq) + 2KCl(aq)
        ingredients = {{type = fluid, name = potassium_hypochlorite_solution, amount = 90}},
        results =
        {
            {type = fluid, name = potassium_chlorate_solution, amount = 30},
            {type = fluid, name = potassium_chloride_solution, amount = 30} -- 60
        },
        main_product = potassium_chlorate_solution
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