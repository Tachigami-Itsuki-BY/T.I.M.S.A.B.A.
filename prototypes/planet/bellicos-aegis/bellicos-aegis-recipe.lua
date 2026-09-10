if mods[bellicos_aegis_mods] then
    -- BERYLLIUM
    beryllium_oxide_2 = "beryllium-oxide-2"
    beryllium_ingot_2 = "beryllium-ingot-2"
    beryllium_bronze_molten_2 = "beryllium-bronze-molten-2"
    TIMSABA.functions.create_recipes
    ({
        {
            name = beryllium_processed,
            category = angels_processed_pressing_4,
            subgroup = is_beryllium,
            icons = TWO_I(beryllium_ore, beryllium_processed),
            order = b,
            energy_required = 2,
            ingredients = {{type = item, name = beryllium_ore, amount = 4}},
            results = {{type = item, name = beryllium_processed, amount = 4}},
            main_product = beryllium_processed,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            name = beryllium_pellet,
            category = angels_pellet_pressing_4,
            subgroup = is_beryllium,
            icons = TWO_I(beryllium_processed, beryllium_pellet),
            order = c,
            energy_required = 2,
            ingredients = {{type = item, name = beryllium_processed, amount = 4}},
            results = {{type = item, name = beryllium_pellet, amount = 4}},
            main_product = beryllium_pellet,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            name = beryllium_ingot,
            category = angels_chemical_smelting_4,
            subgroup = is_beryllium,
            icons = TWO_D_I(beryllium_chloride_gas, magnesium_ingot, beryllium_ingot, magnesium_chloride),
            order = d,
            energy_required = 8, -- BeCl₂(g) + Mg(s) --> Be(s) + MgCl₂(s)
            ingredients =
            {
                {type = fluid, name = beryllium_chloride_gas, amount = 240},
                {type = item, name = magnesium_ingot, amount = 16}
            },
            results =
            {
                {type = item, name = beryllium_ingot, amount = 16},
                {type = item, name = magnesium_chloride, amount = 8} -- 16
            },
            main_product = beryllium_ingot,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            localised_name = {"item-name." .. beryllium_ingot},
            name = beryllium_ingot_2,
            category = angels_blast_smelting_4,
            subgroup = is_beryllium,
            icons = TWO_D_I(beryllium_fluoride, magnesium_ingot, beryllium_ingot, magnesium_fluoride),
            order = d_a,
            energy_required = 8, -- BeF₂(s) + Mg(s) --> Be(s) + MgF₂(s) 
            ingredients =
            {
                {type = item, name = beryllium_fluoride, amount = 16},
                {type = item, name = magnesium_ingot, amount = 16}
            },
            results =
            {
                {type = item, name = beryllium_ingot, amount = 16},
                {type = item, name = magnesium_fluoride, amount = 16}
            },
            main_product = beryllium_ingot,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        -- CHEMISTRY
        {
            name = beryllium_oxide,
            category = angels_blast_smelting_4,
            subgroup = is_beryllium_chemistry,
            icons = THREE_I(beryllium_ore, oxygen_angels, beryllium_oxide),
            order = a,
            energy_required = 8, -- 2Be(ore) + O₂(g) --> 2BeO(s)
            ingredients =
            {
                {type = item, name = beryllium_ore, amount = 32},
                {type = fluid, name = oxygen_angels, amount = 120}
            },
            results = {{type = item, name = beryllium_oxide, amount = 16}},
            main_product = beryllium_oxide,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            localised_name = {"item-name." .. beryllium_oxide},
            name = beryllium_oxide_2,
            category = angels_blast_smelting_4,
            subgroup = is_beryllium_chemistry,
            icons = THREE_R_I(beryllium_hydroxide, beryllium_oxide, steam),
            order = a_a,
            energy_required = 8, -- Be(OH)₂(s) --> BeO(s) + H₂O(g)
            ingredients = {{type = item, name = beryllium_hydroxide, amount = 16}},
            results =
            {
                {type = item, name = beryllium_oxide, amount = 16},
                {type = fluid, name = steam, amount = 120} -- 240
            },
            main_product = beryllium_oxide,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            name = beryllium_chloride_gas,
            category = angels_chemical_smelting_4,
            subgroup = is_beryllium_chemistry,
            icons = THREE_D_I(beryllium_oxide, carbon_angels, chlorine_angels, beryllium_chloride_gas, nil, carbon_monoxide_angels),
            order = b,
            energy_required = 8, -- BeO(s) + C(s) + Cl₂(g) --> BeCl₂(g) + CO(g)
            ingredients =
            {
                {type = item, name = beryllium_oxide, amount = 16},
                {type = item, name = carbon_angels, amount = 16},
                {type = fluid, name = chlorine_angels, amount = 240}
            },
            results =
            {
                {type = fluid, name = beryllium_chloride_gas, amount = 240},
                {type = fluid, name = carbon_monoxide_angels, amount = 120} -- 240
            },
            main_product = beryllium_chloride_gas,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            name = beryllium_sulfate_solution,
            category = angels_chemical_smelting_4,
            subgroup = is_beryllium_chemistry,
            icons = THREE_D_I(beryllium_processed, oxygen_angels, sulfuric_acid_angels, beryllium_sulfate_solution),
            order = c,
            energy_required = 8, -- 2Be(processed) + O₂(g) + 2H₂SO₄(l) --> 2BeSO₄(aq)
            ingredients =
            {
                {type = item, name = beryllium_processed, amount = 16},
                {type = fluid, name = oxygen_angels, amount = 120},
                {type = fluid, name = sulfuric_acid_angels, amount = 240}
            },
            results = {{type = fluid, name = beryllium_sulfate_solution, amount = 240}},
            main_product = beryllium_sulfate_solution,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            name = beryllium_hydroxide,
            category = angels_chemical_smelting_4,
            subgroup = is_beryllium_chemistry,
            icons = TWO_D_I(beryllium_sulfate_solution, sodium_hydroxide_angels, beryllium_hydroxide, sodium_sulfate_solution),
            order = d,
            energy_required = 8, -- BeSO₄(aq) + 2NaOH(s) --> Be(OH)₂(s) + Na₂SO₄(aq)
            ingredients =
            {
                {type = fluid, name = beryllium_sulfate_solution, amount = 480},
                {type = item, name = sodium_hydroxide_angels, amount = 32}
            },
            results =
            {
                {type = item, name = beryllium_hydroxide, amount = 16},
                {type = fluid, name = sodium_sulfate_solution, amount = 120} -- 240
            },
            main_product = beryllium_hydroxide,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            name = ammonium_fluoroberyllate,
            category = angels_chemical_smelting_4,
            subgroup = is_beryllium_chemistry,
            icons = THREE_D_I(beryllium_pellet, ammonium_hydrofluoride, oxygen_angels, ammonium_fluoroberyllate, nil, steam),
            order = e,
            energy_required = 8, -- 2Be(pellet) + 4NH₄HF₂(s) + O₂(g) --> 2(NH₄)₂BeF₄(s) + 2H₂O(g)
            ingredients =
            {
                {type = item, name = beryllium_pellet, amount = 8},
                {type = item, name = ammonium_hydrofluoride, amount = 32},
                {type = fluid, name = oxygen_angels, amount = 120}
            },
            results =
            {
                {type = item, name = ammonium_fluoroberyllate, amount = 16},
                {type = fluid, name = steam, amount = 120} -- 240
            },
            main_product = ammonium_fluoroberyllate,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            name = beryllium_fluoride,
            category = angels_blast_smelting_4,
            subgroup = is_beryllium_chemistry,
            icons = THREE_R_I(ammonium_fluoroberyllate, beryllium_fluoride, ammonium_fluoride_gas),
            order = f,
            energy_required = 8, -- (NH₄)₂BeF₄(s) --> BeF₂(s) + 2NH₄F(g)
            ingredients = {{type = item, name = ammonium_fluoroberyllate, amount = 16}},
            results =
            {
                {type = item, name = beryllium_fluoride, amount = 16},
                {type = fluid, name = ammonium_fluoride_gas, amount = 240} -- 480
            },
            main_product = beryllium_fluoride,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        -- CASTING
        {
            name = beryllium_molten,
            category = angels_induction_smelting_4,
            subgroup = is_beryllium_casting,
            icons = TWO_I(beryllium_ingot, beryllium_molten),
            order = a,
            energy_required = 8,
            ingredients = {{type = item, name = beryllium_ingot, amount = 16}},
            results = {{type = fluid, name = beryllium_molten, amount = 240}},
            main_product = beryllium_molten,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        -- CASTING Cu-Be-Ni
        {
            name = beryllium_bronze_molten,
            category = angels_induction_smelting_4,
            subgroup = is_beryllium_bronze,
            icons = B_F_L(copper_ingot, beryllium_ingot, nickel_ingot, beryllium_bronze_molten, number_1),
            order = a,
            energy_required = 8, -- CuBeNi
            ingredients =
            {
                {type = item, name = copper_ingot, amount = 16},
                {type = item, name = beryllium_ingot, amount = 16},
                {type = item, name = nickel_ingot, amount = 16}
            },
            results = {{type = fluid, name = beryllium_bronze_molten, amount = 240}},
            main_product = beryllium_bronze_molten,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            localised_name = {"fluid-name." .. beryllium_bronze_molten},
            name = beryllium_bronze_molten_2,
            category = angels_induction_smelting_4,
            subgroup = is_beryllium_bronze,
            icons = B_F_L(copper_ingot, beryllium_ingot, nickel_ingot, beryllium_bronze_molten, number_2),
            order = a_a,
            energy_required = 8, -- CuBe(Ni/Co)Ti
            ingredients =
            {
                {type = item, name = copper_ingot, amount = 16},
                {type = item, name = beryllium_ingot, amount = 16},
                {type = item, name = nickel_ingot, amount = 8},
                {type = item, name = cobalt_ingot, amount = 8},
                {type = item, name = titanium_ingot, amount = 16}
            },
            results = {{type = fluid, name = beryllium_bronze_molten, amount = 480}},
            main_product = beryllium_bronze_molten,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            name = beryllium_bronze_plate,
            category = angels_casting_4,
            subgroup = is_beryllium_bronze,
            icons = TWO_I(beryllium_bronze_molten, beryllium_bronze_plate),
            order = b,
            allow_productivity = true,
            allow_quality = true,
            ingredients = {{type = fluid, name = beryllium_bronze_molten, amount = 60}},
            results = {{type = item, name = beryllium_bronze_plate, amount = 4}},
            main_product = beryllium_bronze_plate,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            name = beryllium_bronze_gear_wheel,
            category = crafting,
            subgroup = is_beryllium_bronze,
            icons = TWO_I(beryllium_bronze_plate, beryllium_bronze_gear_wheel),
            order = c,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients = {{type = item, name = beryllium_bronze_plate, amount = 1}},
            results = {{type = item, name = beryllium_bronze_gear_wheel, amount = 1}},
            main_product = beryllium_bronze_gear_wheel,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            name = beryllium_bronze_bearing_ball,
            category = crafting,
            subgroup = is_beryllium_bronze,
            icons = TWO_I(beryllium_bronze_plate, beryllium_bronze_bearing_ball),
            order = d,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients = {{type = item, name = beryllium_bronze_plate, amount = 1}},
            results = {{type = item, name = beryllium_bronze_bearing_ball, amount = 8}},
            main_product = beryllium_bronze_bearing_ball,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        },
        {
            name = beryllium_bronze_bearing,
            category = crafting_fluid,
            subgroup = is_beryllium_bronze,
            icons = B_F_L(lubricant, beryllium_bronze_bearing_ball, beryllium_bronze_plate, beryllium_bronze_bearing),
            order = e,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = beryllium_bronze_bearing_ball, amount = 16},
                {type = item, name = beryllium_bronze_plate, amount = 2},
                {type = fluid, name = lubricant, amount = 15}
            },
            results = {{type = item, name = beryllium_bronze_bearing, amount = 2}},
            main_product = beryllium_bronze_bearing,
            surface_conditions = {{property = gravity, max = 0.1, min = 0}}
        }
    })

    -- OTHER CHEMISTRY
    magnesium_ingot_2 = "magnesium-ingot-2"
    magnesium_ingot_3 = "magnesium-ingot-3"
    sodium_sulfate_solution_2 = "sodium-sulfate-solution-2"
    TIMSABA.functions.create_recipes
    ({
        -- MAGNESIUM
        {
            localised_name = {"item-name." .. magnesium_ingot},
            name = magnesium_ingot_2,
            category = angels_chemical_smelting_4,
            subgroup = is_magnesium,
            icons = TWO_D_I(magnesium_fluoride, potassium, magnesium_ingot, potassium_fluoride),
            order = d_a,
            energy_required = 8, -- MgF₂(s) + 2K(s) --> Mg(s) + 2KF(s)
            ingredients =
            {
                {type = item, name = magnesium_fluoride, amount = 16},
                {type = item, name = potassium, amount = 32}
            },
            results =
            {
                {type = item, name = magnesium_ingot, amount = 16},
                {type = item, name = potassium_fluoride, amount = 16} -- 32
            },
            main_product = magnesium_ingot
        },
        {
            localised_name = {"item-name." .. magnesium_ingot},
            name = magnesium_ingot_3,
            category = angels_chemical_smelting_4,
            subgroup = is_magnesium,
            icons = TWO_D_I(magnesium_fluoride, sodium_angels, magnesium_ingot, sodium_fluoride),
            order = d_b,
            energy_required = 8, -- MgF₂(s) + 2Na(s) --> Mg(s) + 2NaF(s)
            ingredients =
            {
                {type = item, name = magnesium_fluoride, amount = 16},
                {type = item, name = sodium_angels, amount = 32}
            },
            results =
            {
                {type = item, name = magnesium_ingot, amount = 16},
                {type = item, name = sodium_fluoride, amount = 16} -- 32
            },
            main_product = magnesium_ingot
        },
        -- POTASSIUM
        {
            name = potassium_sulfate_solution,
            category = chemistry,
            subgroup = is_potassium_fluid,
            icons = THREE_D_I(potassium_fluoride, water_purified_angels, sulfuric_acid_angels, potassium_sulfate_solution, hydrogen_fluoride_angels),
            order = g_a,
            -- 2KF(s) + H₂O(l) + H₂SO₄(l) --> K₂SO₄(aq) + HF(g)
            ingredients =
            {
                {type = item, name = potassium_fluoride, amount = 8},
                {type = fluid, name = water_purified_angels, amount = 60},
                {type = fluid, name = sulfuric_acid_angels, amount = 60}
            },
            results =
            {
                {type = fluid, name = potassium_sulfate_solution, amount = 60},
                {type = fluid, name = hydrogen_fluoride_angels, amount = 60}
            },
            main_product = potassium_sulfate_solution
        },
        -- NITROGEN
        {
            name = ammonium_fluoride_solution,
            category = chemistry,
            subgroup = is_nitrogen,
            icons = THREE_I(ammonium_fluoride_gas, water_purified_angels, ammonium_fluoride_solution),
            order = v,
            energy_required = 2, -- NH₄F(g) + H₂O(l) -H₂O-> NH₄F(aq)
            ingredients =
            {
                {type = fluid, name = ammonium_fluoride_gas, amount = 60},
                {type = fluid, name = water_purified_angels, amount = 120}
            },
            results =
            {
                {type = fluid, name = ammonium_fluoride_solution, amount = 60},
                {type = fluid, name = steam, amount = 60}
            },
            main_product = ammonium_fluoride_solution
        },
        {
            name = ammonium_hydrosulfate,
            category = chemistry,
            subgroup = is_nitrogen,
            icons = TWO_D_I(ammonium_fluoride_solution, sulfuric_acid_angels, ammonium_hydrosulfate, hydrofluoric_acid_angels),
            order = f,
            energy_required = 2, -- NH₄F(aq) + H₂SO₄(l) --> NH₄HSO₄(s) + HF(aq)
            ingredients =
            {
                {type = fluid, name = ammonium_fluoride_solution, amount = 60},
                {type = fluid, name = sulfuric_acid_angels, amount = 60}
            },
            results =
            {
                {type = item, name = ammonium_hydrosulfate, amount = 4},
                {type = fluid, name = hydrofluoric_acid_angels, amount = 60}
            },
            main_product = ammonium_hydrosulfate
        },
        {
            name = ammonium_hydrofluoride,
            category = chemistry,
            subgroup = is_nitrogen,
            icons = THREE_I(ammonia_angels, hydrogen_fluoride_angels, ammonium_hydrofluoride),
            order = j,
            energy_required = 2, -- NH₃(g) + 2HF(g) --> NH₄HF₂(s)
            ingredients =
            {
                {type = fluid, name = ammonia_angels, amount = 60},
                {type = fluid, name = hydrogen_fluoride_angels, amount = 120}
            },
            results = {{type = item, name = ammonium_hydrofluoride, amount = 4}},
            main_product = ammonium_hydrofluoride
        },
        -- SODIUM
        {
            localised_name = {"fluid-name." .. sodium_sulfate_solution},
            name = sodium_sulfate_solution_2,
            category = chemistry,
            subgroup = is_sodium_fluid,
            icons = THREE_D_I(sodium_fluoride, water_purified_angels, sulfuric_acid_angels, sodium_sulfate_solution, hydrogen_fluoride_angels),
            order = g_a,
            -- 2NaF(s) + H₂O(l) + H₂SO₄(l) --> Na₂SO₄(aq) + HF(g)
            ingredients =
            {
                {type = item, name = sodium_fluoride, amount = 8},
                {type = fluid, name = water_purified_angels, amount = 60},
                {type = fluid, name = sulfuric_acid_angels, amount = 60}
            },
            results =
            {
                {type = fluid, name = sodium_sulfate_solution, amount = 60},
                {type = fluid, name = hydrogen_fluoride_angels, amount = 60}
            },
            main_product = sodium_sulfate_solution
        }
    })

    -- RECIPE
    helium_advanced_processing_unit = "helium-advanced-processing-unit"
    TIMSABA.functions.create_recipes
    ({
        {
            name = helium_3_gas,
            category = centrifuging_4,
            subgroup = is_bellicos_recipe,
            icons = THREE_R_IS(radioactive_ice, ice, helium_3_gas),
            order = e,
            energy_required = 64,
            ingredients = {{type = item, name = radioactive_ice, amount = 8}},
            results =
            {
                {type = item, name = ice, amount = 8},
                {type = fluid, name = helium_3_gas, amount = (15/2)}
            },
            main_product = helium_3_gas
        },
        {
            name = helium_4_gas,
            category = centrifuging_4,
            subgroup = is_bellicos_recipe,
            icons = THREE_R_IS(radioactive_ice, ice, helium_4_gas),
            order = e,
            energy_required = 64,
            ingredients = {{type = item, name = radioactive_ice, amount = 8}},
            results =
            {
                {type = item, name = ice, amount = 8},
                {type = fluid, name = helium_4_gas, amount = 120}
            },
            main_product = helium_4_gas
        },
        {
            name = helium_liquid,
            category = cryogenics,
            subgroup = is_bellicos_recipe,
            icons = TWO_I(He_icon, helium_liquid),
            order = h,
            ingredients =
            {
                {type = fluid, name = helium, amount = 60},
                {type = fluid, name = nitrogen_liquid, amount = 120}
            },
            results =
            {
                {type = fluid, name = helium_liquid, amount = 60},
                {type = fluid, name = nitrogen_angels, amount = 60} -- 120
            },
            main_product = helium_liquid
        },
        {
            localised_name = {"item-name." .. advanced_processing_unit},
            name = helium_advanced_processing_unit,
            category = electromagnetics,
            subgroup = is_bellicos_recipe,
            icons = BUILDING_R_I(advanced_processing_unit, helium_liquid),
            order = h_d,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = advanced_circuit_board, amount = 1},
                {type = item, name = resistor, amount = 8},
                {type = item, name = CPU, amount = 4},
                {type = item, name = transistor, amount = 8},
                {type = item, name = integrated_circuit, amount = 8},
                {type = item, name = solder, amount = 8},
                {type = fluid, name = helium_liquid, amount = 120}
            },
            results =
            {
                {type = item, name = advanced_processing_unit, amount = 4},
                {type = fluid, name = helium, amount = 60, ignored_by_productivity = 60} -- 120
            },
            main_product = advanced_processing_unit
        }
    })
end