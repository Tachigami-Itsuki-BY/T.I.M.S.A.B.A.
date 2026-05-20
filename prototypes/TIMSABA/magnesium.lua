-- GROUPS
local smelting = "angels-smelting"
local casting = "angels-casting"
local is_magnesium = "is-magnesium"
local is_magnesium_chemistry = "is-magnesium-chemistry"
local is_magnesium_casting = "is-magnesium-casting"
data:extend
({
    {
        type = item_subgroup,
        name = is_magnesium,
        group = smelting,
        order = f
    },
    {
        type = item_subgroup,
        name = is_magnesium_chemistry,
        group = smelting,
        order = f_a
    },
    {
        type = item_subgroup,
        name = is_magnesium_casting,
        group = casting,
        order = f
    }
})

-- ITEM
magnesium_ore = "magnesium-ore"
magnesium_processed = "magnesium-processed"
magnesium_pellet = "magnesium-pellet"
magnesium_ingot = "magnesium-ingot"
magnesium_powder = "magnesium-powder"
magnesium_silicide_ingot = "magnesium-silicide-ingot"
magnesium_oxide = "magnesium-oxide"
magnesium_chloride = "magnesium-chloride"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        type = item,
        name = magnesium_ore,
        subgroup = is_magnesium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ore.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ore-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ore-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ore-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        type = item,
        name = magnesium_processed,
        subgroup = is_magnesium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-processed.png",
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        type = item,
        name = magnesium_pellet,
        subgroup = is_magnesium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-pellet.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        type = item,
        name = magnesium_ingot,
        subgroup = is_magnesium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ingot.png",
        order = d,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ingot-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ingot-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ingot-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ingot-4.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ingot-5.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ingot-6.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ingot-7.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-ingot-8.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        type = item,
        name = magnesium_powder,
        subgroup = is_magnesium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-powder.png",
        order = e,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Mg[font=default-tiny-bold]2[/font]Si"} or nil,
        type = item,
        name = magnesium_silicide_ingot,
        subgroup = is_magnesium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-silicide-ingot.png",
        order = f,
        stack_size = 200,
        weight = 5000
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "MgO"} or nil,
        type = item,
        name = magnesium_oxide,
        subgroup = is_magnesium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-oxide.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "MgCl[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = magnesium_chloride,
        subgroup = is_magnesium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-chloride.png",
        icon_size = 64,
        order = c,
        stack_size = 200,
        weight = 5000
    }
})

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
magnesium_gas = "magnesium-gas"
magnesium_chloride_gas = "magnesium-chloride-gas"
magnesium_chloride_solution = "magnesium-chloride-solution"
magnesium_molten = "magnesium-molten"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        type = fluid,
        name = magnesium_gas,
        subgroup = is_magnesium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-gas.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("MgMgMg"),
        flow_color = TIMSABA.functions.flow_color("MgMgMg"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "MgCl[font=default-tiny-bold]2[/font]"} or nil,
        type = fluid,
        name = magnesium_chloride_gas,
        subgroup = is_magnesium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-chloride-gas.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("MgCl2"),
        flow_color = TIMSABA.functions.flow_color("MgCl2"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "MgCl[font=default-tiny-bold]2(aq)[/font]"} or nil,
        type = fluid,
        name = magnesium_chloride_solution,
        subgroup = is_magnesium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-chloride-solution.png",
        order = e,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("MgCl2Wd"),
        flow_color = TIMSABA.functions.flow_color("MgCl2Wd"),
        max_temperature = 0,
        auto_barrel = false
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Mg"} or nil,
        type = fluid,
        name = magnesium_molten,
        subgroup = is_magnesium_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/magnesium-molten.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("MgMgMg"),
        flow_color = TIMSABA.functions.flow_color("MgMgMg"),
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
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/.png",
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
magnesium_ore_recipe = "magnesium-ore-crushed-mix-processing"
magnesium_oxide_2 = "magnesium-oxide-2"
magnesium_gas_from_magnesium_chloride_gas = "magnesium-gas-from-magnesium-chloride-gas"
magnesium_chloride_from_magnesium_chloride_solution = "magnesium-chloride-from-magnesium-chloride-solution"
data:extend
({
    {
        type = recipe,
        name = magnesium_ore_recipe,
        category = angels_ore_sorting_2,
        subgroup = is_ore_sorting_advanced_1,
        icons = AR_FOUR_I(mineral_catalyst, crushed_cupric, crushed_bobmonium, magnesium_ore),
        order = a_f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = mineral_catalyst, amount = 1},
            {type = item, name = crushed_cupric, amount = 2},
            {type = item, name = crushed_bobmonium, amount = 2}
        },
        results = {{type = item, name = magnesium_ore, amount = 4}},
    },
    -- SMELTING
    {
        type = recipe,
        name = magnesium_processed,
        category = angels_processed_pressing_1,
        subgroup = is_magnesium,
        icons = TWO_I(magnesium_ore, magnesium_processed),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = magnesium_ore, amount = 4}},
        results = {{type = item, name = magnesium_processed, amount = 4}},
        main_product = magnesium_processed
    },
    {
        type = recipe,
        name = magnesium_pellet,
        category = angels_pellet_pressing_1,
        subgroup = is_magnesium,
        icons = TWO_I(magnesium_processed, magnesium_pellet),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = magnesium_processed, amount = 4}},
        results = {{type = item, name = magnesium_pellet, amount = 4}},
        main_product = magnesium_pellet
    },
    {
        type = recipe,
        name = magnesium_ingot,
        category = angels_chemical_smelting_1,
        subgroup = is_magnesium,
        icons = TWO_I(magnesium_gas, magnesium_ingot),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Mg(g) -H₂O-> Mg
        ingredients =
        {
            {type = fluid, name = magnesium_gas, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = item, name = magnesium_ingot, amount = 16},
            {type = fluid, name = steam, amount = 120} -- 240
        },
        main_product = magnesium_ingot
    },
    {
        type = recipe,
        name = magnesium_powder,
        category = angels_powderizing_1,
        subgroup = is_magnesium,
        icons = TWO_I(magnesium_ingot, magnesium_powder),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 0.5, -- Mg --> Mg
        ingredients = {{type = item, name = magnesium_ingot, amount = 1}},
        results = {{type = item, name = magnesium_powder, amount = 1}},
        main_product = magnesium_powder
    },
    {
        type = recipe,
        name = magnesium_silicide_ingot,
        category = angels_blast_smelting_4,
        subgroup = is_magnesium,
        icons = THREE_I(magnesium_powder, silicon_powder, magnesium_silicide_ingot),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Mg + Si --> Mg₂Si
        ingredients =
        {
            {type = item, name = magnesium_powder, amount = 32},
            {type = item, name = silicon_powder, amount = 16}
        },
        results = {{type = item, name = magnesium_silicide_ingot, amount = 16}},
        main_product = magnesium_silicide_ingot
    },
    -- CHEMISTRY
    {
        type = recipe,
        name = magnesium_oxide,
        category = angels_blast_smelting_2,
        subgroup = is_magnesium_chemistry,
        icons = THREE_I(magnesium_ore, oxygen_angels, magnesium_oxide),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Mg + O₂ --> 2MgO
        ingredients =
        {
            {type = item, name = magnesium_ore, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 120}
        },
        results = {{type = item, name = magnesium_oxide, amount = 16}},
        main_product = magnesium_oxide
    },
    {
        type = recipe,
        name = magnesium_oxide_2,
        category = angels_blast_smelting_3,
        subgroup = is_magnesium_chemistry,
        icons = THREE_I(magnesium_processed, oxygen_angels, magnesium_oxide),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Mg + O₂ --> 2MgO
        ingredients =
        {
            {type = item, name = magnesium_processed, amount = 16},
            {type = fluid, name = oxygen_angels, amount = 120}
        },
        results = {{type = item, name = magnesium_oxide, amount = 16}},
        main_product = magnesium_oxide
    },
    {
        type = recipe,
        name = magnesium_gas,
        category = angels_blast_smelting_1,
        subgroup = is_magnesium_chemistry,
        icons = TWO_D_I(magnesium_oxide, calcium, magnesium_gas, lime_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- MgO + Ca --> Mg(g) + CaO
        ingredients =
        {
            {type = item, name = magnesium_oxide, amount = 16},
            {type = item, name = calcium, amount = 16}
        },
        results =
        {
            {type = fluid, name = magnesium_gas, amount = 240},
            {type = item, name = lime_angels, amount = 8} -- 16
        },
        main_product = magnesium_gas
    },
    {
        type = recipe,
        name = magnesium_gas_from_magnesium_chloride_gas,
        category = angels_petrochem_electrolyser,
        subgroup = is_magnesium_chemistry,
        icons = FOUR_R_I(magnesium_chloride_gas, magnesium_gas, nil, chlorine_angels),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- MgCl₂(g) -electrode/electrolys-> Mg(g) + Cl₂
        ingredients =
        {
            {type = fluid, name = magnesium_chloride_gas, amount = 240},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = fluid, name = magnesium_gas, amount = 240},
            {type = fluid, name = chlorine_angels, amount = 120}, -- 240
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = magnesium_gas
    },
    {
        type = recipe,
        name = magnesium_chloride,
        category = angels_chemical_smelting_2,
        subgroup = is_magnesium_chemistry,
        icons = THREE_I(magnesium_pellet, chlorine_angels, magnesium_chloride),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Mg + Cl₂ --> MgCl₂
        ingredients =
        {
            {type = item, name = magnesium_pellet, amount = 8},
            {type = fluid, name = chlorine_angels, amount = 240}
        },
        results = {{type = item, name = magnesium_chloride, amount = 16}},
        main_product = magnesium_chloride
    },
    {
        type = recipe,
        name = magnesium_chloride_from_magnesium_chloride_solution,
        category = angels_blast_smelting_2,
        subgroup = is_magnesium_chemistry,
        icons = THREE_R_I(magnesium_chloride_solution, magnesium_chloride, steam),
        order = c_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- MgCl₂(aq) --> MgCl₂ + H₂O
        ingredients = {{type = fluid, name = magnesium_chloride_solution, amount = 240}},
        results =
        {
            {type = item, name = magnesium_chloride, amount = 16},
            {type = fluid, name = steam, amount = 120} -- 240
        },
        main_product = magnesium_chloride
    },
    {
        type = recipe,
        name = magnesium_chloride_gas,
        category = angels_blast_smelting_3,
        subgroup = is_magnesium_chemistry,
        icons = TWO_I(magnesium_chloride, magnesium_chloride_gas),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- MgCl₂ -electrolys-> MgCl₂(g)
        ingredients = {{type = item, name = magnesium_chloride, amount = 16}},
        results = {{type = fluid, name = magnesium_chloride_gas, amount = 240}},
        main_product = magnesium_chloride_gas
    },
    -- CASTING
    {
        type = recipe,
        name = magnesium_molten,
        category = angels_induction_smelting_1,
        subgroup = is_magnesium_casting,
        icons = TWO_I(magnesium_ingot, magnesium_molten),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Mg --> Mg(molten)
        ingredients = {{type = item, name = magnesium_ingot, amount = 16}},
        results = {{type = fluid, name = magnesium_molten, amount = 240}},
        main_product = magnesium_molten
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
        energy_required = , -- 
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
    }
})]]

data_recipe[magnesium_molten].hidden = true
data_recipe[magnesium_molten].hidden_in_factoriopedia = true