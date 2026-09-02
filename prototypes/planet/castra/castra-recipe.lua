if mods[castra_mods] then
    data_planet[planet_castra].surface_properties[pressure] = 2254

    -- CASTRA AIR
    castra_air_separation = "castra-air-separation"
    TIMSABA.functions.create_recipes
    ({
        {
            name = castra_air,
            category = angels_petrochem_air_filtering,
            subgroup = is_castra_air,
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = castra_air, amount = 240}},
            main_product = castra_air,
            surface_conditions = {{property = pressure, min = 2254, max = 2254}}
        },
        {
            name = castra_air_separation,
            category = angels_advanced_chemistry,
            subgroup = is_castra_air,
            icons = FOUR_R_I(castra_air, nitrogen_angels, carbon_dioxide_angels, condensates_angels),
            order = a_a,
            energy_required = 2,
            ingredients = {{type = fluid, name = castra_air, amount = 120}},
            results =
            {
                {type = fluid, name = nitrogen_angels, amount = 60},
                {type = fluid, name = carbon_dioxide_angels, amount = 30},
                {type = fluid, name = condensates_angels, amount = 30}
            },
            main_product = nitrogen_angels
        }
    })

    -- RECIPE
    advanced_processing_unit_battlefield_data = "advanced-processing-unit-battlefield-data"
    laser_capsule_castra_data = "laser-capsule-castra-data"
    TIMSABA.functions.create_recipes
    ({
        {
            name = advanced_processing_unit_battlefield_data,
            category = electronics_assembling,
            subgroup = is_castra_recipe,
            icons = BUILDING_R_I(advanced_processing_unit, castra_data),
            order = a_d,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 16,
            ingredients =
            {
                {type = item, name = resistor, amount = 16},
                {type = item, name = transistor, amount = 16},
                {type = item, name = integrated_circuit, amount = 16},
                {type = item, name = CPU, amount = 8},
                {type = item, name = solder, amount = 16},
                {type = item, name = castra_data, amount = 1}
            },
            results = {{type = item, name = advanced_processing_unit, amount = 4}},
            main_product = advanced_processing_unit,
            surface_conditions = {{property = pressure, max = 2254, min = 2254}}
        },
        {
            name = castra_data,
            category = "jammed-data-collector-process",
            subgroup = is_castra_recipe,
            order = c,
            energy_required = 16,
            ingredients = {},
            results =
            {
                {type = item, name = electric_engine_unit, amount = 1, probability = 0.03125},
                {type = item, name = low_density_structure, amount = 1, probability = 0.125},
                {type = item, name = heat_shielding_tile, amount = 1, probability = 0.25},
                {type = item, name = advanced_processing_unit, amount = 1, probability = 0.25},
                {type = item, name = copper_tungsten_pipe, amount = 1, probability = 0.25},
                {type = item, name = tungsten_plate_bob, amount = 1, probability = 0.25},
                {type = item, name = tungsten_carbide_plate_bob, amount = 1, probability = 0.25},
                {type = item, name = copper_tungsten_plate_bob, amount = 1, probability = 0.25},
                {type = item, name = reinforced_concrete, amount = 1, probability = 0.25},
                {type = item, name = castra_data, amount = 1, probability = 0.5}
            },
            main_product = castra_data
        }
    })

    -- WAR
    TIMSABA.functions.create_recipes
    ({
        {
            name = laser_capsule_castra_data,
            category = "castra-basic-crafting",
            subgroup = is_castra_war,
            icons = BUILDING_R_IS(laser_capsule, castra_data),
            order = i,
            energy_required = 32,
            ingredients =
            {
                {type = item, name = laser_robot, amount = 4},
                {type = item, name = castra_data, amount = 1}
            },
            results = {{type = item, name = laser_capsule, amount = 4}},
            main_product = laser_capsule
        }
    })

    -- CASTRA CHEMISTRY
    nitrosyl_chloride_reversed = "nitrosyl-chloride-reversed"
    toluene_sulfur_solution_reversed = "toluene-sulfur-solution-reversed"
    TIMSABA.functions.create_recipes
    ({
        -- POTASSIUM
        {
            name = potassium_nitrate,
            category = chemistry,
            subgroup = is_nitrogen,
            icons = THREE_R_I(potassium_nitrate_solution, potassium_nitrate, steam),
            order = h,
            -- KNO₃(aq) --> KNO₃(s) + H₂O(g)
            ingredients = {{type = fluid, name = potassium_nitrate_solution, amount = 60}},
            results =
            {
                {type = item, name = potassium_nitrate, amount = 4},
                {type = fluid, name = steam, amount = 30} -- 60
            },
            main_product = potassium_nitrate
        },
        -- NITROGEN
        {
            name = nitrosyl_chloride_gas,
            category = angels_advanced_chemistry,
            subgroup = is_nitrogen_fluids,
            icons = FOUR_THREE_R_I(potassium_nitrate, nil, hydrogen_chloride_angels, nitrosyl_chloride_gas, chlorine_angels, potassium_chloride, water_purified_angels),
            order = y,
            energy_required = 8, -- KNO₃(s) + 4HCl(g) --> KCl(s) + NOCl(g) + Cl₂(g) + 2H₂O(l)
            ingredients =
            {
                {type = item, name = potassium_nitrate, amount = 4},
                {type = fluid, name = hydrogen_chloride_angels, amount = 240}
            },
            results =
            {
                {type = fluid, name = nitrosyl_chloride_gas, amount = 60},
                {type = fluid, name = chlorine_angels, amount = 60},
                {type = item, name = potassium_chloride, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 120}
            },
            main_product = nitrosyl_chloride_gas
        },
        {
            name = nitrosyl_chloride_reversed,
            category = chemistry,
            subgroup = is_nitrogen_fluids,
            icons = THREE_R_I(nitrosyl_chloride_gas, nitrogen_monoxide_angels, chlorine_angels),
            order = y_a,
            -- 2NOCl(g) --> 2NO(g) + Cl₂(g)
            ingredients = {{type = fluid, name = nitrosyl_chloride_gas, amount = 60}},
            results =
            {
                {type = fluid, name = nitrogen_monoxide_angels, amount = 60},
                {type = fluid, name = chlorine_angels, amount = 30}
            },
            main_product = nitrogen_monoxide_angels
        },
        -- SULFUR
        {
            name = toluene_sulfur_solution_reversed,
            category = chemistry,
            subgroup = is_sulfur,
            icons = THREE_R_I(toluene_sulfur_solution, sulfur, toluene_angels),
            order = a_b,
            -- S(Toluene) --> S(s) + C₇H₈(l)
            ingredients = {{type = fluid, name = toluene_sulfur_solution, amount = 60}},
            results =
            {
                {type = item, name = sulfur, amount = 4},
                {type = fluid, name = toluene_angels, amount = 30} -- 60
            },
            main_product = sulfur
        }
    })
end