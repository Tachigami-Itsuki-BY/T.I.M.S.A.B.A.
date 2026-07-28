-- GROUPS
local is_holmium = "is-holmium"
local is_holmium_chemistry = "is-holmium-chemistry"
local is_holmium_casting = "is-holmium-casting"
TIMSABA.functions.create_subgroups(ig_fulgora,
{
    {name = is_holmium,           order = d},
    {name = is_holmium_chemistry, order = d_a},
    {name = is_holmium_casting,   order = d_b}
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
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_processed,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-processed.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_pellet,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-pellet.png",
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_ingot,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-2.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-3.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-4.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-5.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-6.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-7.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-ingot-8.png", width = 64, height = 64, scale = 0.5}
        },
        order = d
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_powder,
        subgroup = is_holmium,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-powder.png",
        order = e
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "HoF[font=default-tiny-bold]3[/font]"} or nil,
        name = holmium_fluoride_III,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-fluoride-III.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_cathode,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-cathode.png",
        icon_size = 32,
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        name = holmium_oxide_III,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-oxide-III.png",
        order = e
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_roll,
        subgroup = is_holmium_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/roll-holmium.png",
        order = b
    }
})

-- FLUID
holmium_chloride_III_solution = "holmium-chloride-III-solution"
holmium_nitrate_III_solution = "holmium-nitrate-III-solution"
holmium_molten = "holmium-molten"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "HoCl[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = holmium_chloride_III_solution,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-chloride-III-solution.png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("HoCl3Wp"),
        flow_color = TIMSABA.functions.flow_color("HoCl3Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "Ho(NO[font=default-tiny-bold]3[/font])[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = holmium_nitrate_III_solution,
        subgroup = is_holmium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-nitrate-III-solution.png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("HoN2O6Wp"),
        flow_color = TIMSABA.functions.flow_color("HoN2O6Wp")
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Ho"} or nil,
        name = holmium_molten,
        subgroup = is_holmium_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/holmium-molten.png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("HoHoHo"),
        flow_color = TIMSABA.functions.flow_color("HoHoHo")
    }
})

-- RECIPE
holmium_fluoride_III_2 = "holmium-fluoride-III-2"
holmium_fluoride_III_3 = "holmium-fluoride-III-3"
holmium_roll_2 = "holmium-roll-2"
holmium_plate_2 = "holmium-plate-2"
molten_holmium = "molten-holmium"
casting_holmium = "casting-holmium"
TIMSABA.functions.create_recipes
({
    {
        name = holmium_processed,
        category = angels_processed_pressing_4,
        subgroup = is_holmium,
        icons = TWO_I(holmium_ore, holmium_processed),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = holmium_ore, amount = 4}},
        results = {{type = item, name = holmium_processed, amount = 4}},
        main_product = holmium_processed
    },
    {
        name = holmium_pellet,
        category = angels_pellet_pressing_4,
        subgroup = is_holmium,
        icons = TWO_I(holmium_processed, holmium_pellet),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = holmium_processed, amount = 2}},
        results = {{type = item, name = holmium_pellet, amount = 2}},
        main_product = holmium_pellet
    },
    {
        name = holmium_ingot,
        category = angels_blast_smelting_4,
        subgroup = is_holmium,
        icons = FOUR_THREE_I(holmium_cathode, lime_angels, carbon_angels, oxygen_angels, holmium_ingot, nil, limestone_angels),
        order = d,
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
        name = holmium_powder,
        category = powderizing_4,
        subgroup = is_holmium,
        icons = TWO_I(holmium_ingot, holmium_powder),
        order = e,
        energy_required = 0.5,
        ingredients = {{type = item, name = holmium_ingot, amount = 1}},
        results = {{type = item, name = holmium_powder, amount = 1}},
        main_product = holmium_powder
    },
    -- CHEMISTRY
    {
        name = holmium_chloride_III_solution,
        category = angels_advanced_chemistry,
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_ore, nil, hydrochloric_acid_angels, holmium_chloride_III_solution, hydrogen_angels, water_purified_angels),
        order = a,
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
        name = holmium_fluoride_III,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_chloride_III_solution, nil, hydrofluoric_acid_angels, holmium_fluoride_III, hydrochloric_acid_angels, water_purified_angels),
        order = b,
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
        name = holmium_fluoride_III_2,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = TWO_D_I(holmium_oxide_III, hydrogen_fluoride_angels, holmium_fluoride_III, water_purified_angels),
        order = b_a,
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
        name = holmium_fluoride_III_3,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = THREE_I(holmium_pellet, fluorine, holmium_fluoride_III),
        order = b_b,
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
        name = holmium_cathode,
        category = angels_petrochem_electrolyser,
        subgroup = is_holmium_chemistry,
        icons = TWO_D_I(holmium_fluoride_III, calcium, holmium_cathode, fluorite_angels),
        order = c,
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
        name = holmium_nitrate_III_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_holmium_chemistry,
        icons = THREE_D_I(holmium_processed, dinitrogen_tetroxide_angels, water_purified_angels, holmium_nitrate_III_solution, nil, nitrogen_monoxide_angels),
        order = d,
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
        name = holmium_oxide_III,
        category = angels_advanced_chemistry,
        subgroup = is_holmium_chemistry,
        icons = FOUR_D_I(holmium_nitrate_III_solution, nil, nil, nil, holmium_oxide_III, nitrogen_dioxide_angels, oxygen_angels, steam),
        order = e,
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
        name = holmium_molten,
        category = angels_induction_smelting_4,
        subgroup = is_holmium_casting,
        icons = TWO_I(holmium_ingot, holmium_molten),
        order = a,
        energy_required = 8,
        ingredients = {{type = item, name = holmium_ingot, amount = 16}},
        results = {{type = fluid, name = holmium_molten, amount = 240}},
        main_product = holmium_molten
    },
    {
        name = holmium_roll,
        category = angels_strand_casting_4,
        subgroup = is_holmium_casting,
        icons = TWO_I(holmium_molten, holmium_roll, number_1),
        order = b,
        energy_required = 8,
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
        name = holmium_roll_2,
        category = angels_strand_casting_4,
        subgroup = is_holmium_casting,
        icons = TWO_I(holmium_molten, holmium_roll, number_2),
        order = b_a,
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
        name = holmium_plate_2,
        category = advanced_crafting,
        subgroup = is_holmium_casting,
        icons = TWO_I(holmium_roll, holmium_plate),
        order = c_a,
        allow_productivity = true,
        allow_quality = true,
        ingredients = {{type = item, name = holmium_roll, amount = 1}},
        results = {{type = item, name = holmium_plate, amount = 4}},
        main_product = holmium_plate
    },
    -- VULCANUS RECIPE
    {
        name = molten_holmium,
        category = metallurgy,
        subgroup = is_vulcanus_molten,
        icons = TWO_I(holmium_ingot, holmium_molten),
        order = y,
        allow_productivity = true,
        energy_required = 8,
        ingredients = {{type = item, name = holmium_ingot, amount = 16}},
        results = {{type = fluid, name = holmium_molten, amount = 240}},
        main_product = holmium_molten
    },
    {
        name = casting_holmium,
        category = metallurgy,
        subgroup = is_vulcanus_plate,
        icons = TWO_I(holmium_molten, holmium_plate),
        order = y,
        allow_productivity = true,
        allow_quality = true,
        ingredients = {{type = fluid, name = holmium_molten, amount = 60}},
        results = {{type = item, name = holmium_plate, amount = 4}},
        main_product = holmium_plate
    }
})