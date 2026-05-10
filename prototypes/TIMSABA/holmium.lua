-- GROUPS
local fulgora = "fulgora"
local is_holmium = "is-holmium"
local is_holmium_chemistry = "is-holmium-chemistry"
local is_holmium_casting = "is-holmium-casting"
data:extend
({
    {
        type = item_subgroup,
        name = is_holmium,
        group = fulgora,
        order = d
    },
    {
        type = item_subgroup,
        name = is_holmium_chemistry,
        group = fulgora,
        order = d_a
    },
    {
        type = item_subgroup,
        name = is_holmium_casting,
        group = fulgora,
        order = d_b
    }
})

-- ITEM
holmium_processed = "holmium-processed"
holmium_pellet = "holmium-pellet"
holmium_ingot = "holmium-ingot"
holmium_powder = "holmium-powder"
holmium_fluoride_III = "holmium-fluoride-III"
holmium_cathode = "holmium-cathode"
holmium_oxide_III = "holmium-oxide-III"
holmium_roll = "holmium-roll"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_processed,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-processed.png",
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_pellet,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-pellet.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_ingot,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot.png",
        order = d,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-4.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-5.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-6.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-7.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-8.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_powder,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-powder.png",
        order = e,
        stack_size = 200,
        weight = 5000
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "HoF[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = holmium_fluoride_III,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-fluoride-III.png",
        icon_size = 64,
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_cathode,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-cathode.png",
        icon_size = 32,
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = holmium_oxide_III,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-oxide-III.png",
        icon_size = 64,
        order = e,
        stack_size = 200,
        weight = 5000
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = item,
        name = holmium_roll,
        subgroup = is_holmium_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/roll-holmium.png",
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
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
holmium_chloride_III_solution = "holmium-chloride-III-solution"
holmium_nitrate_III_solution = "holmium-nitrate-III-solution"
holmium_molten = "holmium-molten"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "HoCl[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = holmium_chloride_III_solution,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-chloride-III-solution.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("HoCl3Wp"),
        flow_color = TIMSABA.functions.flow_color("HoCl3Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho(NO[font=default-tiny-bold]3[/font])[font=default-tiny-bold]3(aq)[/font]"} or nil,
        type = fluid,
        name = holmium_nitrate_III_solution,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-nitrate-III-solution.png",
        order = d,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("HoN2O6Wp"),
        flow_color = TIMSABA.functions.flow_color("HoN2O6Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        type = fluid,
        name = holmium_molten,
        subgroup = is_holmium_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-molten.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("HoHoHo"),
        flow_color = TIMSABA.functions.flow_color("HoHoHo"),
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
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/.png",
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
holmium_fluoride_III_2 = "holmium-fluoride-III-2"
holmium_fluoride_III_3 = "holmium-fluoride-III-3"
holmium_roll_2 = "holmium-roll-2"
holmium_plate_2 = "holmium-plate-2"
molten_holmium = "molten-holmium"
casting_holmium = "casting-holmium"
data:extend
({
    {
        type = recipe,
        name = holmium_processed,
        category = angels_processed_pressing_4,
        subgroup = is_holmium,
        icons = TWO_I(holmium_ore, holmium_processed),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = holmium_ore, amount = 4}},
        results = {{type = item, name = holmium_processed, amount = 4}},
        main_product = holmium_processed
    },
    {
        type = recipe,
        name = holmium_pellet,
        category = angels_pellet_pressing_4,
        subgroup = is_holmium,
        icons = TWO_I(holmium_processed, holmium_pellet),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = holmium_processed, amount = 2}},
        results = {{type = item, name = holmium_pellet, amount = 2}},
        main_product = holmium_pellet
    },
    {
        type = recipe,
        name = holmium_ingot,
        category = angels_blast_smelting_4,
        subgroup = is_holmium,
        icons = FOUR_THREE_I(holmium_cathode, lime_angels, carbon_angels, oxygen_angels, holmium_ingot, nil, limestone_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Ho + CaO + C + O₂  --> Ho + CaCO₃
        ingredients =
        {
            {type = item, name = holmium_cathode, amount = 16},
            {type = item, name = lime_angels, amount = 8},
            {type = item, name = carbon_angels, amount = 8},
            {type = fluid, name = oxygen_angels, amount = 120}
        },
        results =
        {
            {type = item, name = holmium_ingot, amount = 16},
            {type = item, name = limestone_angels, amount = 4} -- 8
        },
        main_product = holmium_ingot
    },
    {
        type = recipe,
        name = holmium_powder,
        category = powderizing_4,
        subgroup = is_holmium,
        icons = TWO_I(holmium_ingot, holmium_powder),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 0.5,
        ingredients = {{type = item, name = holmium_ingot, amount = 1}},
        results = {{type = item, name = holmium_powder, amount = 1}},
        main_product = holmium_powder
    },
    -- CHEMISTRY
    {
        type = recipe,
        name = holmium_chloride_III_solution,
        category = angels_advanced_chemistry,
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_ore, nil, hydrochloric_acid_angels, holmium_chloride_III_solution, hydrogen_angels, water_purified_angels),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Ho + 6HCl(aq) --> 2HoCl₃(aq) + 3H₂ + 4H₂O
        ingredients =
        {
            {type = item, name = holmium_ore, amount = 32},
            {type = fluid, name = hydrochloric_acid_angels, amount = 720}
        },
        results =
        {
            {type = fluid, name = holmium_chloride_III_solution, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 120}, -- 360
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = holmium_chloride_III_solution
    },
    {
        type = recipe,
        name = holmium_fluoride_III,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_chloride_III_solution, nil, hydrofluoric_acid_angels, holmium_fluoride_III, hydrochloric_acid_angels, water_purified_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- HoCl₃(aq) + 3HF(aq) --> HoF₃ + 3HCl(aq) + H₂O
        ingredients =
        {
            {type = fluid, name = holmium_chloride_III_solution, amount = 240},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 720}
        },
        results =
        {
            {type = item, name = holmium_fluoride_III, amount = 16},
            {type = fluid, name = hydrochloric_acid_angels, amount = 240}, -- 720
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        main_product = holmium_fluoride_III
    },
    {
        type = recipe,
        name = holmium_fluoride_III_2,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = TWO_D_I(holmium_oxide_III, hydrogen_fluoride_angels, holmium_fluoride_III, water_purified_angels),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Ho₂O₃ + 6HF --> 2HoF₃ + 3H₂O
        ingredients =
        {
            {type = item, name = holmium_oxide_III, amount = 8},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 720}
        },
        results =
        {
            {type = item, name = holmium_fluoride_III, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 120} -- 360
        },
        main_product = holmium_fluoride_III
    },
    {
        type = recipe,
        name = holmium_fluoride_III_3,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = THREE_I(holmium_pellet, fluorine, holmium_fluoride_III),
        order = b_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Ho + 3F₂ --> 2HoF₃
        ingredients =
        {
            {type = item, name = holmium_pellet, amount = 8},
            {type = fluid, name = fluorine, amount = 360}
        },
        results = {{type = item, name = holmium_fluoride_III, amount = 16}},
        main_product = holmium_fluoride_III
    },
    {
        type = recipe,
        name = holmium_cathode,
        category = angels_petrochem_electrolyser,
        subgroup = is_holmium_chemistry,
        icons = TWO_D_I(holmium_fluoride_III, calcium, holmium_cathode, fluorite_angels),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2HoF₃ + 3Ca -electrode/electrolyser-> 2Ho + 3CaF₂
        ingredients =
        {
            {type = item, name = holmium_fluoride_III, amount = 16},
            {type = item, name = calcium, amount = 24},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = item, name = holmium_cathode, amount = 16},
            {type = item, name = fluorite_angels, amount = 8}, -- 24
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = holmium_cathode
    },
    {
        type = recipe,
        name = holmium_nitrate_III_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_processed, dinitrogen_tetroxide_angels, water_purified_angels, holmium_nitrate_III_solution, nil, nitrogen_monoxide_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Ho + 3N₂O₄ + H₂O --> Ho(NO₃)₃(aq) + 3NO
        ingredients =
        {
            {type = item, name = holmium_processed, amount = 16},
            {type = fluid, name = dinitrogen_tetroxide_angels, amount = 720},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = holmium_nitrate_III_solution, amount = 240},
            {type = fluid, name = nitrogen_monoxide_angels, amount = 240} -- 720
        },
        main_product = holmium_nitrate_III_solution
    },
    {
        type = recipe,
        name = holmium_oxide_III,
        category = angels_advanced_chemistry,
        subgroup = is_holmium_chemistry,
        icons = FOUR_D_I(holmium_nitrate_III_solution, nil, nil, nil, holmium_oxide_III, nitrogen_dioxide_angels, oxygen_angels, steam),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 4Ho(NO₃)₃(aq) --> 2Ho₂O₃ + 12NO₂ + 3O₂ + 4H₂O(g)
        ingredients = {{type = fluid, name = holmium_nitrate_III_solution, amount = 240}},
        results =
        {
            {type = item, name = holmium_oxide_III, amount = 8},
            {type = fluid, name = nitrogen_dioxide_angels, amount = 240}, -- 720
            {type = fluid, name = oxygen_angels, amount = 60}, -- 180
            {type = fluid, name = steam, amount = 120} -- 240
        },
        main_product = holmium_oxide_III
    },
    -- CASTING
    {
        type = recipe,
        name = holmium_molten,
        category = angels_induction_smelting_4,
        subgroup = is_holmium_casting,
        icons = TWO_I(holmium_ingot, holmium_molten),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients = {{type = item, name = holmium_ingot, amount = 16}},
        results = {{type = fluid, name = holmium_molten, amount = 240}},
        main_product = holmium_molten
    },
    {
        type = recipe,
        name = holmium_roll,
        category = angels_strand_casting_4,
        subgroup = is_holmium_casting,
        icons = TWO_I(holmium_molten, holmium_roll, number_1),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = fluid, name = holmium_molten, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = item, name = holmium_roll, amount = 4},
            {type = fluid, name = steam, amount = 120} -- 120
        },
        main_product = holmium_roll
    },
    {
        type = recipe,
        name = holmium_roll_2,
        category = angels_strand_casting_4,
        subgroup = is_holmium_casting,
        icons = TWO_I(holmium_molten, holmium_roll, number_2),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = fluid, name = holmium_molten, amount = 240},
            {type = fluid, name = coolant, amount = 120}
        },
        results =
        {
            {type = item, name = holmium_roll, amount = 8},
            {type = fluid, name = coolant_used, amount = 60, temperature = 300} -- 120
        },
        main_product = holmium_roll
    },
    {
        type = recipe,
        name = holmium_plate_2,
        category = advanced_crafting,
        subgroup = is_holmium_casting,
        icons = TWO_I(holmium_roll, holmium_plate),
        order = c_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = holmium_roll, amount = 1}},
        results = {{type = item, name = holmium_plate, amount = 4}},
        main_product = holmium_plate
    },
    -- VULCANUS RECIPE
    {
        type = recipe,
        name = molten_holmium,
        category = metallurgy,
        subgroup = is_vulcanus_molten,
        icons = TWO_I(holmium_ingot, holmium_molten),
        order = y,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients = {{type = item, name = holmium_ingot, amount = 16}},
        results = {{type = fluid, name = holmium_molten, amount = 240}},
        main_product = holmium_molten
    },
    {
        type = recipe,
        name = casting_holmium,
        category = metallurgy,
        subgroup = is_vulcanus_plate,
        icons = TWO_I(holmium_molten, holmium_plate),
        order = y,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = holmium_molten, amount = 60}},
        results = {{type = item, name = holmium_plate, amount = 4}},
        main_product = holmium_plate
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