-- [font=default-tiny-bold][/font]

if mods [paracelsin_mods] then
    local zinc_pipe = "zinc-pipe"
    data_item[zinc_pipe].subgroup = is_paracelsin_logistics
    data_item[zinc_pipe].order = a
    data_item[zinc_pipe].stack_size = 200
    data_item[zinc_pipe].weight = 5000
    data_recipe[zinc_pipe].subgroup = is_paracelsin_logistics
    data_recipe[zinc_pipe].order = a
    data_pipe[zinc_pipe].subgroup = is_paracelsin_logistics
    data_pipe[zinc_pipe].order = a

    local zinc_pipe_to_ground = "zinc-pipe-to-ground"
    data_item[zinc_pipe_to_ground].subgroup = is_paracelsin_logistics
    data_item[zinc_pipe_to_ground].order = b
    data_item[zinc_pipe_to_ground].stack_size = 32
    data_item[zinc_pipe_to_ground].weight = 31250
    data_recipe[zinc_pipe_to_ground].subgroup = is_paracelsin_logistics
    data_recipe[zinc_pipe_to_ground].order = b
    data_pipe_to_ground[zinc_pipe_to_ground].subgroup = is_paracelsin_logistics
    data_pipe_to_ground[zinc_pipe_to_ground].order = b

    local zinc_storage_tank = "zinc-storage-tank"
    data_item[zinc_storage_tank].subgroup = is_paracelsin_logistics
    data_item[zinc_storage_tank].order = c
    data_item[zinc_storage_tank].stack_size = 32
    data_item[zinc_storage_tank].weight = 31250
    data_recipe[zinc_storage_tank].subgroup = is_paracelsin_logistics
    data_recipe[zinc_storage_tank].order = c
    data_storage_tank[zinc_storage_tank].subgroup = is_paracelsin_logistics
    data_storage_tank[zinc_storage_tank].order = c

    local zinc_pump = "zinc-pump"
    data_item[zinc_pump].subgroup = is_paracelsin_logistics
    data_item[zinc_pump].order = d
    data_item[zinc_pump].stack_size = 32
    data_item[zinc_pump].weight = 31250
    data_recipe[zinc_pump].subgroup = is_paracelsin_logistics
    data_recipe[zinc_pump].order = d
    data_pump[zinc_pump].subgroup = is_paracelsin_logistics
    data_pump[zinc_pump].order = d

    local elevated_pipe = "elevated-pipe"
    data_item[elevated_pipe].subgroup = is_paracelsin_logistics
    data_item[elevated_pipe].order = e
    data_item[elevated_pipe].stack_size = 32
    data_item[elevated_pipe].weight = 31250
    data_recipe[elevated_pipe].subgroup = is_paracelsin_logistics
    data_recipe[elevated_pipe].order = e
    data_furnace[elevated_pipe].subgroup = is_paracelsin_logistics
    data_furnace[elevated_pipe].order = e

    local energy = "paracelsin-energy"
    local cryovolcanic_turbine = "cryovolcanic-turbine"
    data_item[cryovolcanic_turbine].subgroup = is_paracelsin_building_energy
    data_item[cryovolcanic_turbine].order = a
    data_item[cryovolcanic_turbine].stack_size = 32
    data_item[cryovolcanic_turbine].weight = 31250
    data_recipe[cryovolcanic_turbine].subgroup = is_paracelsin_building_energy
    data_recipe[cryovolcanic_turbine].order = a
    data_generator[cryovolcanic_turbine].subgroup = is_paracelsin_building_energy
    data_generator[cryovolcanic_turbine].order = a

    local solar_matrix = "solar-matrix"
    data_item[solar_matrix].subgroup = is_paracelsin_building_energy
    data_item[solar_matrix].order = b
    data_item[solar_matrix].stack_size = 32
    data_item[solar_matrix].weight = 31250
    data_recipe[solar_matrix].subgroup = is_paracelsin_building_energy
    data_recipe[solar_matrix].order = b
    data_solar_panel[solar_matrix].subgroup = is_paracelsin_building_energy
    data_solar_panel[solar_matrix].order = b

    local accumulator_v2 = "accumulator-v2"
    data_item[accumulator_v2].subgroup = is_paracelsin_building_energy
    data_item[accumulator_v2].order = b
    data_item[accumulator_v2].stack_size = 32
    data_item[accumulator_v2].weight = 31250
    data_recipe[accumulator_v2].subgroup = is_paracelsin_building_energy
    data_recipe[accumulator_v2].order = b
    data_accumulator[accumulator_v2].subgroup = is_paracelsin_building_energy
    data_accumulator[accumulator_v2].order = b

    local electrochemical_plant = "electrochemical-plant"
    data_item[electrochemical_plant].subgroup = is_paracelsin_building
    data_item[electrochemical_plant].order = a
    data_item[electrochemical_plant].stack_size = 32
    data_item[electrochemical_plant].weight = 31250
    data_recipe[electrochemical_plant].subgroup = is_paracelsin_building
    data_recipe[electrochemical_plant].order = a
    data_assembling[electrochemical_plant].subgroup = is_paracelsin_building
    data_assembling[electrochemical_plant].order = a
    data_assembling[electrochemical_plant].crafting_speed = 4

    local mechanical_plant = "mechanical-plant"
    data_item[mechanical_plant].subgroup = is_paracelsin_building
    data_item[mechanical_plant].order = b
    data_item[mechanical_plant].stack_size = 32
    data_item[mechanical_plant].weight = 31250
    data_recipe[mechanical_plant].subgroup = is_paracelsin_building
    data_recipe[mechanical_plant].order = b
    data_assembling[mechanical_plant].subgroup = is_paracelsin_building
    data_assembling[mechanical_plant].order = b

    local burner_pumpjack = "burner-pumpjack"
    data_item[burner_pumpjack].subgroup = is_paracelsin_mining
    data_item[burner_pumpjack].order = a
    data_item[burner_pumpjack].stack_size = 32
    data_item[burner_pumpjack].weight = 31250
    data_recipe[burner_pumpjack].subgroup = is_paracelsin_mining
    data_recipe[burner_pumpjack].order = a
    data_mining_drill[burner_pumpjack].subgroup = is_paracelsin_mining
    data_mining_drill[burner_pumpjack].order = a

    local sphalerite = "sphalerite"
    data_item[sphalerite].localised_description = show_formula and {chemical_formula, "ZnS"} or nil
    data_item[sphalerite].subgroup = is_paracelsin_recipe
    data_item[sphalerite].order = a
    data_item[sphalerite].stack_size = 200
    data_item[sphalerite].weight = 5000
    data_resource[sphalerite].subgroup = is_paracelsin_recipe
    data_resource[sphalerite].order = a

    local tetrahedrite = "tetrahedrite"
    data_item[tetrahedrite].localised_description = show_formula and {chemical_formula, "(CuFe)[font=default-tiny-bold]12[/font]Sb[font=default-tiny-bold]4[/font]S[font=default-tiny-bold]13[/font]"} or nil
    data_item[tetrahedrite].subgroup = is_paracelsin_recipe
    data_item[tetrahedrite].order = b
    data_item[tetrahedrite].stack_size = 200
    data_item[tetrahedrite].weight = 5000
    data_resource[tetrahedrite].subgroup = is_paracelsin_recipe
    data_resource[tetrahedrite].order = b

    data_fluid[zinc_concentrate_mods].localised_description = show_formula and {chemical_formula, "Zn(aq)"} or nil
    data_fluid[zinc_concentrate_mods].subgroup = is_paracelsin_recipe
    data_fluid[zinc_concentrate_mods].order = c

    local sphalerite_processing = "sphalerite-processing"
    data_recipe[sphalerite_processing].subgroup = is_paracelsin_recipe
    data_recipe[sphalerite_processing].icons = THREE_D_I(sphalerite, nil, steam, zinc_concentrate_mods, iron_ore, sulfur)
    data_recipe[sphalerite_processing].order = c_a

    local sphalerite_melting = "sphalerite-melting"
    data_recipe[sphalerite_melting].subgroup = is_paracelsin_recipe
    data_recipe[sphalerite_melting].icons = FOUR_D_I(sphalerite, calcite, nitric_acid_angels, steam, iron_molten_angels)
    data_recipe[sphalerite_melting].order = c_b

    local tetrahedrite_processing = "tetrahedrite-processing"
    data_recipe[tetrahedrite_processing].subgroup = is_paracelsin_recipe
    data_recipe[tetrahedrite_processing].icons = THREE_D_I(tetrahedrite, nil, steam, zinc_concentrate_mods, copper_ore, sulfur)
    data_recipe[tetrahedrite_processing].order = c_c

    local tetrahedrite_melting = "tetrahedrite-melting"
    data_recipe[tetrahedrite_melting].subgroup = is_paracelsin_recipe
    data_recipe[tetrahedrite_melting].icons = FOUR_D_I(tetrahedrite, calcite, nitric_acid_angels, steam, copper_molten_angels)
    data_recipe[tetrahedrite_melting].order = c_d

    data_fluid[dirty_zinc_solution_mods].localised_description = show_formula and {chemical_formula, "Zn(aq)"} or nil
    data_fluid[dirty_zinc_solution_mods].subgroup = is_paracelsin_recipe
    data_fluid[dirty_zinc_solution_mods].order = d

    local zinc_leaching = "zinc-leaching"
    data_recipe[zinc_leaching].subgroup = is_paracelsin_recipe
    data_recipe[zinc_leaching].icons = THREE_D_I(calcite, zinc_concentrate_mods, nitric_acid_angels, dirty_zinc_solution_mods)
    data_recipe[zinc_leaching].order = d_a

    data_fluid[zinc_solution_mods].localised_description = show_formula and {chemical_formula, "Zn(aq)"} or nil
    data_fluid[zinc_solution_mods].subgroup = is_paracelsin_recipe
    data_fluid[zinc_solution_mods].order = e

    local zinc_purification = "zinc-purification"
    data_recipe[zinc_purification].subgroup = is_paracelsin_recipe
    data_recipe[zinc_purification].icons = THREE_D_I(copper_cable, dirty_zinc_solution_mods, steam, zinc_solution_mods, nil, stone)
    data_recipe[zinc_purification].order = e_a

    local vaterite = "vaterite"
    data_item[vaterite].localised_description = show_formula and {chemical_formula, "CaCO[font=default-tiny-bold]3[/font]"} or nil
    data_item[vaterite].subgroup = is_paracelsin_recipe
    data_item[vaterite].order = f
    data_item[vaterite].stack_size = 200
    data_item[vaterite].weight = 5000
    data_resource[vaterite].subgroup = is_paracelsin_recipe
    data_resource[vaterite].order = f

    local vaterite_formation = "vaterite-formation"
    data_recipe[vaterite_formation].subgroup = is_paracelsin_recipe
    data_recipe[vaterite_formation].icons = THREE_D_I(vaterite, stone, nitrogen_angels, vaterite)
    data_recipe[vaterite_formation].order = f_a

    local vaterite_processing = "vaterite-processing"
    data_recipe[vaterite_processing].subgroup = is_paracelsin_recipe
    data_recipe[vaterite_processing].order = f_b

    data_recipe[zinc_mods].subgroup = is_paracelsin_recipe
    data_recipe[zinc_mods].icons = THREE_I(carbon_angels, zinc_solution_mods, zinc_ore_bob)
    data_recipe[zinc_mods].order = g

    data_recipe[zinc_plate_mods].subgroup = is_paracelsin_recipe
    data_recipe[zinc_plate_mods].icons = TWO_I(zinc_ore_bob, zinc_plate_bob)
    data_recipe[zinc_plate_mods].order = h

    local zinc_rivets = "zinc-rivets"
    data_item[zinc_rivets].subgroup = is_paracelsin_recipe
    data_item[zinc_rivets].order = i
    data_item[zinc_rivets].weight = 5000
    data_recipe[zinc_rivets].subgroup = is_paracelsin_recipe
    data_recipe[zinc_rivets].icons = THREE_I(iron_rod, zinc_plate_bob, zinc_rivets)
    data_recipe[zinc_rivets].order = i

    data_item[zinc_solder_mods].subgroup = is_paracelsin_recipe
    data_item[zinc_solder_mods].order = j
    data_item[zinc_solder_mods].weight = 5000
    data_recipe[zinc_solder_mods].subgroup = is_paracelsin_recipe
    data_recipe[zinc_solder_mods].icons = THREE_I(copper_cable, zinc_plate_bob, zinc_solder_mods)
    data_recipe[zinc_solder_mods].order = j

    local electric_coil = "electric-coil"
    data_item[electric_coil].subgroup = is_paracelsin_recipe
    data_item[electric_coil].order = k
    data_item[electric_coil].stack_size = 200
    data_item[electric_coil].weight = 5000
    data_recipe[electric_coil].subgroup = is_paracelsin_recipe
    data_recipe[electric_coil].icons = TWO_FIVE_I(iron_gear_wheel, zinc_rivets, nil, zinc_solder_mods, copper_cable, nitric_acid_angels, electric_coil)
    data_recipe[electric_coil].order = k

    local galvanized_steel_plate = "galvanized-steel-plate"
    data_item[galvanized_steel_plate].subgroup = is_paracelsin_recipe
    data_item[galvanized_steel_plate].order = l
    data_item[galvanized_steel_plate].stack_size = 200
    data_item[galvanized_steel_plate].weight = 5000

    local casting_galvanized_steel_plate = "casting-galvanized-steel-plate"
    data_recipe[casting_galvanized_steel_plate].subgroup = is_paracelsin_recipe
    data_recipe[casting_galvanized_steel_plate].icons = FOUR_D_I(zinc_ore_bob, carbon, iron_molten_angels, nitrogen_angels, galvanized_steel_plate)
    data_recipe[casting_galvanized_steel_plate].order = l_a

    local nitrogen_nitric_acid = "nitrogen-nitric-acid"
    data_recipe[nitrogen_nitric_acid].subgroup = is_paracelsin_recipe_nitric
    data_recipe[nitrogen_nitric_acid].icons = THREE_D_I(vaterite, water, nitrogen_angels, nitric_acid_angels)
    data_recipe[nitrogen_nitric_acid].order = a_a

    local solid_fuel_from_nitrogen = "solid-fuel-from-nitrogen"
    data_recipe[solid_fuel_from_nitrogen].subgroup = is_paracelsin_recipe_nitric
    data_recipe[solid_fuel_from_nitrogen].icons = THREE_I(vaterite, nitrogen_angels, solid_fuel)
    data_recipe[solid_fuel_from_nitrogen].order = a_b

    local nitric_acid_rocket_fuel = "nitric-acid-rocket-fuel"
    data_recipe[nitric_acid_rocket_fuel].subgroup = is_paracelsin_recipe_nitric
    data_recipe[nitric_acid_rocket_fuel].icons = FOUR_D_I(solid_fuel, sulfur, water, nitric_acid_angels, rocket_fuel)
    data_recipe[nitric_acid_rocket_fuel].order = a_c

    local nitric_acid_plastic = "nitric-acid-plastic"
    data_recipe[nitric_acid_plastic].subgroup = is_paracelsin_recipe_nitric
    data_recipe[nitric_acid_plastic].icons = THREE_D_I(carbon_angels, water, nitric_acid_angels, plastic)
    data_recipe[nitric_acid_plastic].order = a_d

    local lubricant_from_nitric_acid = "lubricant-from-nitric-acid"
    data_recipe[lubricant_from_nitric_acid].subgroup = is_paracelsin_recipe_nitric
    data_recipe[lubricant_from_nitric_acid].icons = THREE_I(carbon_angels, nitric_acid_angels, lubricant)
    data_recipe[lubricant_from_nitric_acid].order = a_e

    local processing_units_from_nitric_acid = "paracelsin-processing-units-from-nitric-acid"
    data_recipe[processing_units_from_nitric_acid].subgroup = is_paracelsin_recipe_nitric
    data_recipe[processing_units_from_nitric_acid].icons = FOUR_D_I(electronic_circuit, advanced_circuit, zinc_solder_mods, nitric_acid_angels, processing_unit)
    data_recipe[processing_units_from_nitric_acid].order = a_f

    local batteries_from_nitric_acid = "batteries-from-nitric-acid"
    data_recipe[batteries_from_nitric_acid].subgroup = is_paracelsin_recipe_nitric
    data_recipe[batteries_from_nitric_acid].icons = FOUR_D_IS(zinc_rivets, copper_cable, iron_plate, nitric_acid_angels, battery_lead_acid)
    data_recipe[batteries_from_nitric_acid].order = a_g

    local galvanization_science_pack = "galvanization-science-pack"
    data_tool[galvanization_science_pack].subgroup = is_paracelsin_recipe_nitric
    data_tool[galvanization_science_pack].order = b
    data_recipe[galvanization_science_pack].subgroup = is_paracelsin_recipe_nitric
    data_recipe[galvanization_science_pack].order = b
end