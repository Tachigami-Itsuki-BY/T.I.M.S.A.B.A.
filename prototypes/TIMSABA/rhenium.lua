-- GROUPS
local smelting = "angels-smelting"
local is_rhenium = "is-rhenium"
local is_rhenium_chemistry = "is-rhenium-chemistry"
data:extend
({
    {
        type = item_subgroup,
        name = is_rhenium,
        group = smelting,
        order = s
    },
    {
        type = item_subgroup,
        name = is_rhenium_chemistry,
        group = smelting,
        order = s_a
    }
})

-- ITEM
rhenium_ore = "rhenium-ore"
rhenium_processed = "rhenium-processed"
rhenium_pellet = "rhenium-pellet"
rhenium_powder = "rhenium-powder"
rhenium_oxide_VI = "rhenium-oxide-VI"
rhenium_chloride_V = "rhenium-chloride-V"
rhenium_oxide_IV = "rhenium-oxide-IV"
potassium_perrhenate = "potassium-perrhenate"
ammonium_perrhenate = "ammonium-perrhenate"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Re"} or nil,
        type = item,
        name = rhenium_ore,
        subgroup = is_rhenium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-ore.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-ore-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-ore-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-ore-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Re"} or nil,
        type = item,
        name = rhenium_processed,
        subgroup = is_rhenium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-processed.png",
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Re"} or nil,
        type = item,
        name = rhenium_pellet,
        subgroup = is_rhenium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-pellet.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Re"} or nil,
        type = item,
        name = rhenium_powder,
        subgroup = is_rhenium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-powder.png",
        order = e,
        stack_size = 200,
        weight = 5000
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "ReO[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = rhenium_oxide_VI,
        subgroup = is_rhenium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-oxide-VI.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "ReCl[font=default-tiny-bold]5[/font]"} or nil,
        type = item,
        name = rhenium_chloride_V,
        subgroup = is_rhenium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-chloride-V.png",
        icon_size = 64,
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "ReO[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = rhenium_oxide_IV,
        subgroup = is_rhenium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-oxide-IV.png",
        icon_size = 64,
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "KReO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = potassium_perrhenate,
        subgroup = is_rhenium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/potassium-perrhenate.png",
        order = e,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]ReO[font=default-tiny-bold]4[/font]"} or nil,
        type = item,
        name = ammonium_perrhenate,
        subgroup = is_rhenium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/ammonium-perrhenate.png",
        order = g,
        stack_size = 200,
        weight = 5000
    }
    -- CASTING
})

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
potassium_perrhenate_solution = "potassium-perrhenate-solution"
rhenium_acid = "rhenium-acid-solution"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "KReO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = potassium_perrhenate_solution,
        subgroup = is_rhenium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/potassium-perrhenate-solution.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = angelsmods.functions.fluid_color("KReO4Wp"),
        flow_color = angelsmods.functions.flow_color("KReO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "HReO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = rhenium_acid,
        subgroup = is_rhenium_chemistry,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-acid-solution.png",
        order = f,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = angelsmods.functions.fluid_color("HReO4Wp"),
        flow_color = angelsmods.functions.flow_color("HReO4Wp"),
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
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/.png",
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
rhenium_powder_2 = "rhenium-powder-2"
rhenium_powder_3 = "rhenium-powder-3"
rhenium_oxide_VI_2 = "rhenium-oxide-VI-2"
data:extend
({
    {
        type = recipe,
        name = rhenium_processed,
        category = angels_processed_pressing_4,
        subgroup = is_rhenium,
        icons = TWO_I(rhenium_ore, rhenium_processed),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = rhenium_ore, amount = 4}},
        results = {{type = item, name = rhenium_processed, amount = 4}},
        main_product = rhenium_processed
    },
    {
        type = recipe,
        name = rhenium_pellet,
        category = angels_pellet_pressing_4,
        subgroup = is_rhenium,
        icons = TWO_I(rhenium_processed, rhenium_pellet),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = rhenium_processed, amount = 4}},
        results = {{type = item, name = rhenium_pellet, amount = 4}},
        main_product = rhenium_pellet
    },
    {
        type = recipe,
        name = rhenium_powder,
        category = angels_chemical_smelting_4,
        subgroup = is_rhenium,
        icons = TWO_D_I(rhenium_oxide_VI, hydrogen_angels, rhenium_powder, steam),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- ReO₃(s) + 3H₂(g) --> Re(s) + 3H₂O(g)
        ingredients =
        {
            {type = item, name = rhenium_oxide_VI, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 720}
        },
        results =
        {
            {type = item, name = rhenium_powder, amount = 16},
            {type = fluid, name = steam, amount = 240} -- 720
        },
        main_product = rhenium_powder
    },
    {
        type = recipe,
        name = rhenium_powder_2,
        category = angels_chemical_smelting_4,
        subgroup = is_rhenium,
        icons = THREE_D_I(potassium_perrhenate, nil, hydrogen_angels, rhenium_powder, potassium_hydroxide, steam),
        order = d_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2KReO₄(s) + 7H₂(g) --> 2Re(s) + 2KOH(s) + 6H₂O(g)
        ingredients =
        {
            {type = item, name = potassium_perrhenate, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 840}
        },
        results =
        {
            {type = item, name = rhenium_powder, amount = 16},
            {type = item, name = potassium_hydroxide, amount = 8}, -- 16
            {type = fluid, name = steam, amount = 360} -- 720
        },
        main_product = rhenium_powder
    },
    {
        type = recipe,
        name = rhenium_powder_3,
        category = angels_chemical_smelting_4,
        subgroup = is_rhenium,
        icons = THREE_D_I(ammonium_perrhenate, nil, hydrogen_angels, rhenium_powder, nitrogen_angels, steam),
        order = d_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2NH₄ReO₄(s) + 4H₂(g) --> 2Re(s) + N₂(g) + 8H₂O(g)
        ingredients =
        {
            {type = item, name = ammonium_perrhenate, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 480}
        },
        results =
        {
            {type = item, name = rhenium_powder, amount = 16},
            {type = fluid, name = nitrogen_angels, amount = 60}, -- 120
            {type = fluid, name = steam, amount = 480} -- 960
        },
        main_product = rhenium_powder
    },
    -- CHEMISTRY
    {
        type = recipe,
        name = rhenium_oxide_VI,
        category = angels_blast_smelting_4,
        subgroup = is_rhenium_chemistry,
        icons = THREE_I(rhenium_ore, oxygen_angels, rhenium_oxide_VI),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Re(s) + O₂(g) --> ReO₃(s)
        ingredients =
        {
            {type = item, name = rhenium_ore, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 240}
        },
        results = {{type = item, name = rhenium_oxide_VI, amount = 16}},
        main_product = rhenium_oxide_VI
    },
    {
        type = recipe,
        name = rhenium_oxide_VI_2,
        category = angels_blast_smelting_4,
        subgroup = is_rhenium_chemistry,
        icons = THREE_I(rhenium_oxide_IV, oxygen_angels, rhenium_oxide_VI),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2ReO₂(s) + O₂(g) --> 2ReO₃(s)
        ingredients =
        {
            {type = item, name = rhenium_oxide_IV, amount = 16},
            {type = fluid, name = oxygen_angels, amount = 120}
        },
        results = {{type = item, name = rhenium_oxide_VI, amount = 16}},
        main_product = rhenium_oxide_VI
    },
    {
        type = recipe,
        name = rhenium_chloride_V,
        category = angels_chemical_smelting_4,
        subgroup = is_rhenium_chemistry,
        icons = THREE_I(rhenium_processed, chlorine_angels, rhenium_oxide_VI),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Re(s) + 5Cl₂(g) --> 2ReCl₅(s)
        ingredients =
        {
            {type = item, name = rhenium_processed, amount = 16},
            {type = fluid, name = chlorine_angels, amount = 600}
        },
        results = {{type = item, name = rhenium_chloride_V, amount = 16}},
        main_product = rhenium_chloride_V
    },
    {
        type = recipe,
        name = rhenium_oxide_IV,
        category = angels_advanced_chemistry,
        subgroup = is_rhenium_chemistry,
        icons = FOUR_THREE_R_I(rhenium_chloride_V, nil, potassium_hydroxide_solution, rhenium_oxide_IV, potassium_perrhenate_solution, potassium_chloride_solution, water_purified_angels),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 3ReCl₅(s) + 16KOH(aq) --> ReO₂(s) + 2KReO₄(aq) + 15KCl(aq) + 8H₂O(l)
        ingredients =
        {
            {type = item, name = rhenium_chloride_V, amount = 12},
            {type = fluid, name = potassium_hydroxide_solution, amount = 960}
        },
        results =
        {
            {type = item, name = rhenium_oxide_IV, amount = 4},
            {type = fluid, name = potassium_perrhenate_solution, amount = 120},
            {type = fluid, name = potassium_chloride_solution, amount = 480}, -- 900
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = rhenium_oxide_IV
    },
    {
        type = recipe,
        name = potassium_perrhenate,
        category = angels_blast_smelting_4,
        subgroup = is_rhenium_chemistry,
        icons = THREE_R_I(potassium_perrhenate_solution, potassium_perrhenate, steam),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- KReO₄(aq) --> KReO₄(s) + H₂O(g)
        ingredients = {{type = fluid, name = potassium_perrhenate_solution, amount = 240}},
        results =
        {
            {type = item, name = potassium_perrhenate, amount = 16},
            {type = fluid, name = steam, amount = 120} -- 240
        },
        main_product = potassium_perrhenate
    },
    {
        type = recipe,
        name = rhenium_acid,
        category = angels_advanced_chemistry,
        subgroup = is_rhenium_chemistry,
        icons = THREE_D_I(rhenium_pellet, nil, nitric_acid_angels, rhenium_acid, nitrogen_dioxide_angels, water_purified_angels),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Re(s) + 7HNO₃(l) --> HReO₄(aq) + 7NO₂(g) + 3H₂O(l)
        ingredients =
        {
            {type = item, name = rhenium_pellet, amount = 4},
            {type = fluid, name = nitric_acid_angels, amount = 840}
        },
        results =
        {
            {type = fluid, name = rhenium_acid, amount = 120},
            {type = fluid, name = nitrogen_dioxide_angels, amount = 360}, -- 840
            {type = fluid, name = water_purified_angels, amount = 120} -- 360
        },
        main_product = rhenium_acid
    },
    {
        type = recipe,
        name = ammonium_perrhenate,
        category = angels_chemical_smelting_4,
        subgroup = is_rhenium_chemistry,
        icons = TWO_D_I(rhenium_acid, ammonia_angels, ammonium_perrhenate, water_purified_angels),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- HReO₄(aq) + NH₃(g) --> NH₄ReO₄(s) + H₂O(l)
        ingredients =
        {
            {type = fluid, name = rhenium_acid, amount = 240},
            {type = fluid, name = ammonia_angels, amount = 240}
        },
        results =
        {
            {type = item, name = ammonium_perrhenate, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        },
        main_product = ammonium_perrhenate
    },
    -- CASTING
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