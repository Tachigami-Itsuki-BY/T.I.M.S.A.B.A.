local recipe = "recipe"
-- HOLMIUM ORE
holmium_ore_recipe = "ore-pure-mix3-processing"
data:extend
({
    {
        type = recipe,
        name = holmium_ore_recipe,
        category = angels_ore_sorting_5,
        subgroup = is_ore_sorting_advanced_4,
        icons = AR_FOUR_I(hybride_catalyst, pure_stiratite, pure_crotinnium, holmium_ore),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 1},
            {type = item, name = pure_stiratite, amount = 2},
            {type = item, name = pure_crotinnium, amount = 2}
        },
        results = {{type = item, name = holmium_ore, amount = 4}},
        main_product = holmium_ore
    }
})

-- HOLMIUM SMELTING
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
    }
})

-- HOLMIUM CHEMISTRY
holmium_fluoride_from_holmium_oxide = "holmium-fluoride-from-holmium-oxide"
holmium_fluoride_2 = "holmium-fluoride-2"
data:extend
({
    {
        type = recipe,
        name = holmium_chloride_solution,
        category = angels_advanced_chemistry,
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_ore, nil, hydrochloric_acid_angels, holmium_chloride_solution, hydrogen_angels, water_purified_angels),
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
            {type = fluid, name = holmium_chloride_solution, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 120}, -- 360
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = holmium_chloride_solution
    },
    {
        type = recipe,
        name = holmium_fluoride,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_chloride_solution, nil, hydrofluoric_acid_angels, holmium_fluoride, hydrochloric_acid_angels, water_purified_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- HoCl₃(aq) + 3HF(aq) --> HoF₃ + 3HCl(aq) + H₂O
        ingredients =
        {
            {type = fluid, name = holmium_chloride_solution, amount = 240},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 720}
        },
        results =
        {
            {type = item, name = holmium_fluoride, amount = 16},
            {type = fluid, name = hydrochloric_acid_angels, amount = 240}, -- 720
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        main_product = holmium_fluoride
    },
    {
        type = recipe,
        name = holmium_fluoride_from_holmium_oxide,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = TWO_D_I(holmium_oxide, hydrogen_fluoride_angels, holmium_fluoride, water_purified_angels),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Ho₂O₃ + 6HF --> 2HoF₃ + 3H₂O
        ingredients =
        {
            {type = item, name = holmium_oxide, amount = 8},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 720}
        },
        results =
        {
            {type = item, name = holmium_fluoride, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 120} -- 360
        },
        main_product = holmium_fluoride
    },
    {
        type = recipe,
        name = holmium_fluoride_2,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = THREE_I(holmium_pellet, fluorine, holmium_fluoride),
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
        results = {{type = item, name = holmium_fluoride, amount = 16}},
        main_product = holmium_fluoride
    },
    {
        type = recipe,
        name = holmium_cathode,
        category = angels_petrochem_electrolyser,
        subgroup = is_holmium_chemistry,
        icons = TWO_D_I(holmium_fluoride, calcium, holmium_cathode, fluorite_ore_angels),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2HoF₃ + 3Ca -electrode/electrolyser-> 2Ho + 3CaF₂
        ingredients =
        {
            {type = item, name = holmium_fluoride, amount = 16},
            {type = item, name = calcium, amount = 24},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = item, name = holmium_cathode, amount = 16},
            {type = item, name = fluorite_ore_angels, amount = 8}, -- 24
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = holmium_cathode
    },
    {
        type = recipe,
        name = holmium_nitrate_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_processed, dinitrogen_tetroxide_angels, water_purified_angels, holmium_nitrate_solution, nil, nitrogen_monoxide_angels),
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
            {type = fluid, name = holmium_nitrate_solution, amount = 240},
            {type = fluid, name = nitrogen_monoxide_angels, amount = 240} -- 720
        },
        main_product = holmium_nitrate_solution
    },
    {
        type = recipe,
        name = holmium_oxide,
        category = angels_advanced_chemistry,
        subgroup = is_holmium_chemistry,
        icons = FOUR_D_I(holmium_nitrate_solution, nil, nil, nil, holmium_oxide, nitrogen_dioxide_angels, oxygen_angels, steam),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 4Ho(NO₃)₃(aq) --> 2Ho₂O₃ + 12NO₂ + 3O₂ + 4H₂O(g)
        ingredients = {{type = fluid, name = holmium_nitrate_solution, amount = 240}},
        results =
        {
            {type = item, name = holmium_oxide, amount = 8},
            {type = fluid, name = nitrogen_dioxide_angels, amount = 240}, -- 720
            {type = fluid, name = oxygen_angels, amount = 60}, -- 180
            {type = fluid, name = steam, amount = 120} -- 240
        },
        main_product = holmium_oxide
    }
})

-- HOLMIUM CASTING
holmium_roll_2 = "holmium-roll-2"
holmium_plate_2 = "holmium-plate-2"
data:extend
({
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
    }
})

-- FULGORA AIR
fulgora_air_separation = "fulgora-air-separation"
data:extend
({
    {
        type = recipe,
        name = fulgora_air,
        category = angels_petrochem_air_filtering,
        subgroup = is_fulgora_air,
        icon = data_fluid[fulgora_air].icon,
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        always_show_products = true,
        energy_required = 8,
        ingredients = {},
        results = {{type = fluid, name = fulgora_air, amount = 240}},
        main_product = fulgora_air,
        surface_conditions = {{property = "pressure", min = 800, max = 800}}
    },
    {
        type = recipe,
        name = fulgora_air_separation,
        category = angels_advanced_chemistry,
        subgroup = is_fulgora_air,
        icons = FOUR_R_I(fulgora_air, nitrogen_angels, condensates_angels, hydrogen_sulfide_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = fluid, name = fulgora_air, amount = 120}},
        results =
        {
            {type = fluid, name = nitrogen_angels, amount = 60},
            {type = fluid, name = condensates_angels, amount = 30},
            {type = fluid, name = hydrogen_sulfide_angels, amount = 30}
        },
        main_product = nitrogen_angels
    }
})

-- CALCIUM
calcium_chloride_solution_from_lime = "calcium-chloride-solution-from-lime"
data:extend
({
    {
        type = recipe,
        name = calcium,
        category = angels_petrochem_electrolyser,
        subgroup = is_calcium,
        icons = FOUR_R_I(calcium_chloride_solution, hydrogen_chloride_angels, calcium, oxygen_angels),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- (CaCl₂ + H₂O) -electrode/electrolyser-> Ca + 2HCl + O₂
        ingredients =
        {
            {type = fluid, name = calcium_chloride_solution, amount = 240},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = item, name = calcium, amount = 16},
            {type = fluid, name = hydrogen_chloride_angels, amount = 240}, -- 480
            {type = fluid, name = oxygen_angels, amount = 120}, -- 240
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = calcium
    },
    {
        type = recipe,
        name = calcium_chloride_solution_from_lime,
        category = chemistry,
        subgroup = is_calcium_fluids,
        icons = TWO_D_I(lime_angels, hydrochloric_acid_angels, calcium_chloride_solution, water_purified_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- CaO + 2HCl(aq) --> CaCl₂(aq) + 2H₂O
        ingredients =
        {
            {type = item, name = lime_angels, amount = 4},
            {type = fluid, name = hydrochloric_acid_angels, amount = 120}
        },
        results =
        {
            {type = fluid, name = calcium_chloride_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = calcium_chloride_solution
    }
})

-- VULCANUS RECIPE
molten_holmium = "molten-holmium"
casting_holmium = "casting-holmium"
data:extend
({
    {
        type = recipe,
        name = molten_holmium,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(holmium_ingot, holmium_molten),
        order = y,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = holmium_ingot, amount = 32}},
        results = {{type = fluid, name = holmium_molten, amount = 480}},
        main_product = holmium_molten
    },
    {
        type = recipe,
        name = casting_holmium,
        category = metallurgy,
        subgroup = is_plate,
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

--[[
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
        energy_required = ,
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})
]]