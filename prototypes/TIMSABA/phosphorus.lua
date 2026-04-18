-- GROUPS
local smelting = "angels-smelting"
local is_phosphorus = "is-phosphorus"
data:extend
({
    {
        type = item_subgroup,
        name = is_phosphorus,
        group = smelting,
        order = t
    }
})

-- ITEM
phosphate_ore = "phosphate-ore"
white_phosphorus = "white-phosphorus"
phosphorus_pentachloride = "phosphorus-pentachloride"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Ca[font=default-tiny-bold]5[/font](PO[font=default-tiny-bold]4[/font])[font=default-tiny-bold]3[/font]F"} or nil,
        type = item,
        name = phosphate_ore,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/phosphate-ore.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        --[[pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/phosphate-ore-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/phosphate-ore-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/phosphate-ore-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }]]
    },
    {
        localised_description = show_formula and {chemical_formula, "P[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = white_phosphorus,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/white-phosphorus.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "PCl[font=default-tiny-bold]5[/font]"} or nil,
        type = item,
        name = phosphorus_pentachloride,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/phosphorus-pentachloride.png",
        icon_size = 64,
        order = e,
        stack_size = 200,
        weight = 5000
    }
})

-- FLUID
white_phosphorus_gas = "white-phosphorus-gas"
phosphorus_trichloride_liquid = "phosphorus-trichloride-liquid"
phosphorus_pentafluoride_gas = "phosphorus-pentafluoride-gas"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "P[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = white_phosphorus_gas,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/white-phosphorus-gas.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("PPP"),
        flow_color = TIMSABA.functions.flow_color("PPP"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "PCl[font=default-tiny-bold]3[/font]"} or nil,
        type = fluid,
        name = phosphorus_trichloride_liquid,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/phosphorus-trichloride-liquid.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("PCl3"),
        flow_color = TIMSABA.functions.flow_color("PCl3"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "PF[font=default-tiny-bold]5[/font]"} or nil,
        type = fluid,
        name = phosphorus_pentafluoride_gas,
        subgroup = is_phosphorus,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/phosphorus/phosphorus-pentafluoride-gas.png",
        order = f,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("PF5"),
        flow_color = TIMSABA.functions.flow_color("PF5"),
        max_temperature = 0,
        auto_barrel = false
    }
})

-- RECIPE
local recipe = "recipe"
phosphate_ore_recipe = "ore-crystal-mix8-processing"
data:extend
({
    -- ANGELS RESOURCE REFINING
    {
        type = recipe,
        name = phosphate_ore,
        category = angels_ore_sorting_4,
        subgroup = is_ore_sorting_advanced_3,
        icons = AR_FOUR_I(hybride_catalyst, crystal_saphirite, crystal_jivolite, phosphate_ore),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 1},
            {type = item, name = crystal_saphirite, amount = 2},
            {type = item, name = crystal_jivolite, amount = 2}
        },
        results = {{type = item, name = phosphate_ore, amount = 4}},
        main_product = phosphate_ore
    },
    -- ANGELS METALLURGY SMELTING
    {
        type = recipe,
        name = white_phosphorus_gas,
        category = chemistry,
        subgroup = is_phosphorus,
        icons = FOUR_THREE_R_I(phosphate_ore, sand_angels, coke_angels, white_phosphorus_gas, slag_angels, fluorite_ore_angels, carbon_dioxide_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 4Ca₅(PO₄)₃F + 18SiO₂(sand) + 30C(coke) --> 3P₄(g) + 18CaSiO₃(s) + 2CaF₂(s) + 30CO(g)
        ingredients =
        {
            {type = item, name = phosphate_ore, amount = 16},
            {type = item, name = sand_angels, amount = 72},
            {type = item, name = coke_angels, amount = 120}
        },
        results =
        {
            {type = fluid, name = white_phosphorus_gas, amount = 12},
            {type = item, name = slag_angels, amount = 32}, -- 72
            {type = item, name = fluorite_ore_angels, amount = 4}, -- 8
            {type = fluid, name = carbon_dioxide_angels, amount = 960} -- 1800
        },
        main_product = white_phosphorus_gas
    },
    {
        type = recipe,
        name = white_phosphorus,
        category = angels_cooling,
        subgroup = is_phosphorus,
        icons = TWO_I(white_phosphorus_gas, white_phosphorus),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- P₄(g) -H₂O-> P₄(s)
        ingredients =
        {
            {type = fluid, name = white_phosphorus_gas, amount = 240},
            {type = fluid, name = coolant, amount = 240}
        },
        results =
        {
            {type = item, name = white_phosphorus, amount = 16},
            {type = fluid, name = coolant_used, amount = 120, temperature = 300}
        },
        main_product = white_phosphorus
    },
    {
        type = recipe,
        name = phosphorus_trichloride_liquid,
        category = chemistry,
        subgroup = is_phosphorus,
        icons = THREE_I(white_phosphorus, chlorine_angels, phosphorus_trichloride_liquid),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- P₄ + 6Cl₂ --> 4PCl₃
        ingredients =
        {
            {type = item, name = white_phosphorus, amount = 4},
            {type = fluid, name = chlorine_angels, amount = 360}
        },
        results = {{type = fluid, name = phosphorus_trichloride_liquid, amount = 240}},
        main_product = phosphorus_trichloride_liquid
    },
    {
        type = recipe,
        name = phosphorus_pentachloride,
        category = chemistry,
        subgroup = is_phosphorus,
        icons = THREE_I(phosphorus_trichloride_liquid, chlorine_angels, phosphorus_pentachloride),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- PCl₃ + Cl₂ --> PCl₅
        ingredients =
        {
            {type = fluid, name = phosphorus_trichloride_liquid, amount = 240},
            {type = fluid, name = chlorine_angels, amount = 240}
        },
        results = {{type = item, name = phosphorus_pentachloride, amount = 16}},
        main_product = phosphorus_pentachloride
    },
    {
        type = recipe,
        name = phosphorus_pentafluoride_gas,
        category = chemistry,
        subgroup = is_phosphorus,
        icons = TWO_D_I(phosphorus_pentachloride, hydrogen_fluoride_angels, phosphorus_pentafluoride_gas, hydrogen_chloride_angels),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- PCl₅ + 5HF --> PF₅ + 5HCl
        ingredients =
        {
            {type = item, name = phosphorus_pentachloride, amount = 16},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 1200}
        },
        results =
        {
            {type = fluid, name = phosphorus_pentafluoride_gas, amount = 16},
            {type = fluid, name = hydrogen_chloride_angels, amount = 480} -- 1200
        },
        main_product = phosphorus_pentafluoride_gas
    }
})

-- TECHNOLOGY
local technology = "technology"
phosphorus_processing = "phosphorus-processing"
data:extend
({
    {
        type = technology,
        name = phosphorus_processing,
        icons = TIMSABA.functions.create_gas_tech_icon("PPP"),
        prerequisites = {tech_advanced_ore_refining_3},
        effects =
        {
            {type = unlock_recipe, recipe = white_phosphorus_gas},
            {type = unlock_recipe, recipe = white_phosphorus},
            {type = unlock_recipe, recipe = phosphorus_trichloride_liquid},
            {type = unlock_recipe, recipe = phosphorus_pentachloride},
            {type = unlock_recipe, recipe = phosphorus_pentafluoride_gas}
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

--[[
data:extend
({
    {
        type = ,
        name = ,
        icon = ,
        icon_size = 256,
        prerequisites = {},
        effects = {{type = unlock_recipe, recipe = }},
        unit =
        {
            count = ,
            ingredients = {{, }},
            time = 
        }
    }
})
]]