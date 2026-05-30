-- GROUPS
local aquilo = "aquilo"
local is_germanium = "is-germanium"
local is_germanium_chemistry = "is-germanium-chemistry"
local is_germanium_casting = "is-germanium-casting"
data:extend
({
    {
        type = item_subgroup,
        name = is_germanium,
        group = aquilo,
        order = f
    },
    {
        type = item_subgroup,
        name = is_germanium_chemistry,
        group = aquilo,
        order = f_a
    },
    {
        type = item_subgroup,
        name = is_germanium_casting,
        group = aquilo,
        order = f_b
    }
})

-- ITEM
germanium_ore = "germanium-ore"
germanium_processed = "germanium-processed"
germanium_pellet = "germanium-pellet"
germanium_ingot = "germanium-ingot"
germanium_powder = "germanium-powder"
germanium_oxide_IV = "germanium-oxide-IV"
sodium_hexachlorogermanate_IV = "sodium-hexachlorogermanate-IV"
germanium_plate = "germanium-plate"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Ge"} or nil,
        type = item,
        name = germanium_ore,
        subgroup = is_germanium,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ore.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ore-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ore-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ore-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Ge"} or nil,
        type = item,
        name = germanium_processed,
        subgroup = is_germanium,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-processed.png",
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Ge"} or nil,
        type = item,
        name = germanium_pellet,
        subgroup = is_germanium,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-pellet.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Ge"} or nil,
        type = item,
        name = germanium_ingot,
        subgroup = is_germanium,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ingot.png",
        order = d,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ingot-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ingot-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ingot-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ingot-4.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ingot-5.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ingot-6.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ingot-7.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-ingot-8.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Ge"} or nil,
        type = item,
        name = germanium_powder,
        subgroup = is_germanium,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-powder.png",
        order = e,
        stack_size = 200,
        weight = 5000
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "GeO[font=default-tiny-bold]2[/font]"} or nil,
        type = item,
        name = germanium_oxide_IV,
        subgroup = is_germanium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-oxide-IV.png",
        icon_size = 64,
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]GeCl[font=default-tiny-bold]6[/font]"} or nil,
        type = item,
        name = sodium_hexachlorogermanate_IV,
        subgroup = is_germanium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/sodium-hexachlorogermanate-IV.png",
        icon_size = 64,
        order = e,
        stack_size = 200,
        weight = 5000
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Ge"} or nil,
        type = item,
        name = germanium_plate,
        subgroup = is_germanium_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-plate.png",
        order = b,
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
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
potassium_metagermanate_solution = "potassium-metagermanate-solution"
germanium_chloride_IV = "germanium-chloride-IV-liquid"
sodium_metagermanate_solution = "sodium-metagermanate-solution"
germanium_molten = "germanium-molten"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "K[font=default-tiny-bold]2[/font]GeO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = potassium_metagermanate_solution,
        subgroup = is_germanium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/potassium-metagermanate-solution.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("K2GeO3Wp"),
        flow_color = TIMSABA.functions.flow_color("K2GeO3Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "GeCl[font=default-tiny-bold]4[/font]"} or nil,
        type = fluid,
        name = germanium_chloride_IV,
        subgroup = is_germanium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-chloride-IV-liquid.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("GeCl4"),
        flow_color = TIMSABA.functions.flow_color("GeCl4"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]GeO[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = sodium_metagermanate_solution,
        subgroup = is_germanium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/sodium-metagermanate-solution.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("Na2GeO3Wp"),
        flow_color = TIMSABA.functions.flow_color("Na2GeO3Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Ge"} or nil,
        type = fluid,
        name = germanium_molten,
        subgroup = is_germanium_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/germanium-molten.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("GeGeGe"),
        flow_color = TIMSABA.functions.flow_color("GeGeGe"),
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
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanium/.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- RECIPE
germanium_oxide_IV_2 = "germanium-oxide-IV-2"
germanium_oxide_IV_3 = "germanium-oxide-IV-3"
data:extend
({
    {
        type = recipe,
        name = germanium_processed,
        category = angels_processed_pressing_4,
        subgroup = is_germanium,
        icons = TWO_I(germanium_ore, germanium_processed),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = germanium_ore, amount = 4}},
        results = {{type = item, name = germanium_processed, amount = 4}},
        main_product = germanium_processed
    },
    {
        type = recipe,
        name = germanium_pellet,
        category = angels_pellet_pressing_4,
        subgroup = is_germanium,
        icons = TWO_I(germanium_processed, germanium_pellet),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = germanium_processed, amount = 4}},
        results = {{type = item, name = germanium_pellet, amount = 4}},
        main_product = germanium_pellet
    },
    {
        type = recipe,
        name = germanium_ingot,
        category = angels_chemical_smelting_4,
        subgroup = is_germanium,
        icons = TWO_D_I(germanium_oxide_IV, hydrogen_angels, germanium_ingot, steam),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- GeO₂(s) + 2H₂(g) --> Ge(s) + 2H₂O(g)
        ingredients =
        {
            {type = item, name = germanium_oxide_IV, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 480}
        },
        results =
        {
            {type = item, name = germanium_ingot, amount = 16},
            {type = fluid, name = steam, amount = 240} -- 480
        },
        main_product = germanium_ingot
    },
    {
        type = recipe,
        name = germanium_powder,
        category = powderizing_4,
        subgroup = is_germanium,
        icons = TWO_I(germanium_ingot, germanium_powder),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 0.5,
        ingredients = {{type = item, name = germanium_ingot, amount = 1}},
        results = {{type = item, name = germanium_powder, amount = 1}},
        main_product = germanium_powder
    },
    -- CHEMISTRY
    {
        type = recipe,
        name = potassium_metagermanate_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_germanium_chemistry,
        icons = THREE_D_I(germanium_ore, potassium_hydroxide_solution, hydrogen_peroxide, potassium_metagermanate_solution, nil, water_purified_angels),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Ge(s) + 2KOH(aq) + 2H₂O₂(l) --> K₂GeO₃(aq) + 4H₂O(l)
        ingredients =
        {
            {type = item, name = germanium_ore, amount = 32},
            {type = fluid, name = potassium_hydroxide_solution, amount = 480},
            {type = fluid, name = hydrogen_peroxide, amount = 480}
        },
        results =
        {
            {type = fluid, name = potassium_metagermanate_solution, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 480} -- 960
        },
        main_product = potassium_metagermanate_solution
    },
    {
        type = recipe,
        name = germanium_oxide_IV,
        category = angels_chemical_smelting_4,
        subgroup = is_germanium_chemistry,
        icons = THREE_D_I(potassium_metagermanate_solution, nil, hydrochloric_acid_angels, germanium_oxide_IV, potassium_chloride_solution, water_purified_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- K₂GeO₃(aq) + 2HCl(aq) --> GeO₂(s) + 2KCl(aq) + 2H₂O(l)
        ingredients =
        {
            {type = fluid, name = potassium_metagermanate_solution, amount = 240},
            {type = fluid, name = hydrochloric_acid_angels, amount = 480}
        },
        results =
        {
            {type = item, name = germanium_oxide_IV, amount = 16},
            {type = fluid, name = potassium_chloride_solution, amount = 240}, -- 480
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = germanium_oxide_IV
    },
    {
        type = recipe,
        name = germanium_oxide_IV_2,
        category = angels_chemical_smelting_4,
        subgroup = is_germanium_chemistry,
        icons = TWO_D_I(germanium_chloride_IV, water_purified_angels, germanium_oxide_IV, hydrogen_chloride_angels),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- GeCl₄(l) + 2H₂O(l) --> GeO₂(s) + 4HCl(g)
        ingredients =
        {
            {type = fluid, name = germanium_chloride_IV, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 480}
        },
        results =
        {
            {type = item, name = germanium_oxide_IV, amount = 16},
            {type = fluid, name = hydrogen_chloride_angels, amount = 480} -- 960
        },
        main_product = germanium_oxide_IV
    },
    {
        type = recipe,
        name = germanium_oxide_IV_3,
        category = angels_chemical_smelting_4,
        subgroup = is_germanium_chemistry,
        icons = THREE_D_I(sodium_hexachlorogermanate_IV, nil, water_purified_angels, germanium_oxide_IV, salt_angels, hydrogen_chloride_angels),
        order = b_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Na₂GeCl₆(s) + 2H₂O(l) --> GeO₂(s) + 2NaCl(s) + 4HCl(g)
        ingredients =
        {
            {type = item, name = sodium_hexachlorogermanate_IV, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 480}
        },
        results =
        {
            {type = item, name = germanium_oxide_IV, amount = 16},
            {type = item, name = salt_angels, amount = 16}, -- 32
            {type = fluid, name = hydrogen_chloride_angels, amount = 480} -- 960
        },
        main_product = germanium_oxide_IV
    },
    {
        type = recipe,
        name = germanium_chloride_IV,
        category = angels_advanced_chemistry,
        subgroup = is_germanium_chemistry,
        icons = THREE_D_I(germanium_processed, nitric_acid_angels, hydrochloric_acid_angels, germanium_chloride_IV, nitrogen_monoxide_angels, water_purified_angels),
        order = c, -- 3Ge(s) + 4HNO₃(l) + 12HCl(sq) --> 3GeCl₄(l) + 4NO(g) + 8H₂O(l)
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients =
        {
            {type = item, name = germanium_processed, amount = 12},
            {type = fluid, name = nitric_acid_angels, amount = 240},
            {type = fluid, name = hydrochloric_acid_angels, amount = 720}
        },
        results =
        {
            {type = fluid, name = germanium_chloride_IV, amount = 180},
            {type = fluid, name = nitrogen_monoxide_angels, amount = 120}, -- 240
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = germanium_chloride_IV
    },
    {
        type = recipe,
        name = sodium_metagermanate_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_germanium_chemistry,
        icons = THREE_D_I(germanium_pellet, sodium_hydroxide_solution_angels, hydrogen_peroxide, sodium_metagermanate_solution, nil, water_purified_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Ge(s) + 2NaOH(aq) + 2H₂O₂(l) --> Na₂GeO₃(aq) + 4H₂O(l)
        ingredients =
        {
            {type = item, name = germanium_pellet, amount = 8},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 480},
            {type = fluid, name = hydrogen_peroxide, amount = 480}
        },
        results =
        {
            {type = fluid, name = sodium_metagermanate_solution, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = sodium_metagermanate_solution
    },
    {
        type = recipe,
        name = sodium_hexachlorogermanate_IV,
        category = angels_chemical_smelting_4,
        subgroup = is_germanium_chemistry,
        icons = TWO_D_I(sodium_metagermanate_solution, hydrogen_chloride_angels, sodium_hexachlorogermanate_IV, steam),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Na₂GeO₃(aq) + 6HCl(g) --> Na₂GeCl₆(s) + 4H₂O(g)
        ingredients =
        {
            {type = fluid, name = sodium_metagermanate_solution, amount = 120},
            {type = fluid, name = hydrogen_chloride_angels, amount = 720}
        },
        results =
        {
            {type = item, name = sodium_hexachlorogermanate_IV, amount = 8},
            {type = fluid, name = steam, amount = 240} -- 480
        },
        main_product = sodium_hexachlorogermanate_IV
    },
    -- CASTING
    {
        type = recipe,
        name = germanium_molten,
        category = metallurgy,
        subgroup = is_germanium_casting,
        icons = TWO_I(germanium_ingot, germanium_molten),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients = {{type = item, name = germanium_ingot, amount = 16}},
        results = {{type = fluid, name = germanium_molten, amount = 240}},
        main_product = germanium_molten
    },
    {
        type = recipe,
        name = germanium_plate,
        category = metallurgy,
        subgroup = is_germanium_casting,
        icons = TWO_I(germanium_molten, germanium_plate),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = germanium_molten, amount = 60}},
        results = {{type = item, name = germanium_plate, amount = 4}},
        main_product = germanium_plate
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

data_item[germanium_powder].hidden = true
data_item[germanium_powder].hidden_in_factoriopedia = true
data_recipe[germanium_powder].hidden = true
data_recipe[germanium_powder].hidden_in_factoriopedia = true