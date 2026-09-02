if mods[paracelsin_mods] then
    -- VATERITE and ZINC
    data_item[vaterite].localised_description = show_formula and {chemical_formula, "CaCO[font=default-tiny-bold]3[/font]"} or nil
    data_item[vaterite].subgroup = is_vaterite_zinc
    data_item[vaterite].order = a
    data_item[vaterite].stack_size = 200
    data_resource[vaterite].subgroup = is_vaterite_zinc
    data_resource[vaterite].order = a
    data_resource[vaterite].minable.mining_time = 1

    local vaterite_formation = "vaterite-formation"
    data_recipe[vaterite_formation].subgroup = is_vaterite_zinc
    data_recipe[vaterite_formation].icons = STONKS_I(stonks_png, vaterite)
    data_recipe[vaterite_formation].order = a_a
    data_recipe[vaterite_formation].energy_required = 4
    data_recipe[vaterite_formation].ingredients =
    {
        {type = item, name = vaterite, amount = 1},
        {type = item, name = stone, amount = 8},
        {type = fluid, name = nitrogen_liquid, amount = 30}
    }
    data_recipe[vaterite_formation].results = {{type = item, name = vaterite, amount_min = 1, amount_max = 8}}

    local vaterite_processing = "vaterite-processing"
    data_recipe[vaterite_processing].category = chemistry
    data_recipe[vaterite_processing].subgroup = is_vaterite_zinc
    data_recipe[vaterite_processing].icons = RECYCLING_I(recycling_png, vaterite)
    data_recipe[vaterite_processing].order = a_b
    data_recipe[vaterite_processing].energy_required = 2 -- 4CaCO₃ + 2H₂O --> 2CaCO₃ + 2CaO + 2C + 2H₂ + 4O₂
    data_recipe[vaterite_processing].ingredients =
    {
        {type = item, name = vaterite, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 30}
    }
    data_recipe[vaterite_processing].results =
    {
        {type = item, name = calcite, amount = 2},
        {type = item, name = lime_angels, amount = 2},
        {type = item, name = carbon_angels, amount = 2},
        {type = fluid, name = hydrogen_angels, amount = 30},
        {type = fluid, name = oxygen_angels, amount = 60},
    }
    data_recipe[vaterite_processing].surface_conditions = {{property = pressure, min = 5300, max = 5300}}

    data_recipe[zinc_plate_mods].localised_name = data_item[zinc_plate_bob].localised_name
    data_recipe[zinc_plate_mods].category = sintering_6
    data_recipe[zinc_plate_mods].subgroup = is_vaterite_zinc
    data_recipe[zinc_plate_mods].icons = TWO_I(zinc_powder, zinc_plate_bob)
    data_recipe[zinc_plate_mods].order = c
    data_recipe[zinc_plate_mods].energy_required = 1
    data_recipe[zinc_plate_mods].ingredients = {{type = item, name = zinc_powder, amount = 1}}
    data_recipe[zinc_plate_mods].results = {{type = item, name = zinc_plate_bob, amount = 1}}
    data_recipe[zinc_plate_mods].main_product = zinc_plate_bob
    data_recipe[zinc_plate_mods].surface_conditions = {{property = pressure, min = 5300, max = 5300}}

    data_item[zinc_rivets].subgroup = is_vaterite_zinc
    data_item[zinc_rivets].order = d
    data_recipe[zinc_rivets].subgroup = is_vaterite_zinc
    data_recipe[zinc_rivets].icons = TWO_I(zinc_plate_bob, zinc_rivets)
    data_recipe[zinc_rivets].order = d
    data_recipe[zinc_rivets].ingredients = {{type = item, name = zinc_plate_bob, amount = 4}}
    data_recipe[zinc_rivets].results[1].amount = 8

    data_item[zinc_cable].subgroup = is_vaterite_zinc
    data_item[zinc_cable].order = e
    data_recipe[zinc_cable].subgroup = is_vaterite_zinc
    data_recipe[zinc_cable].icons = THREE_I(copper_cable, zinc_plate_bob, zinc_cable)
    data_recipe[zinc_cable].order = e
    data_recipe[zinc_cable].ingredients =
    {
        {type = item, name = copper_cable, amount = 2},
        {type = item, name = zinc_plate_bob, amount = 4}
    }
    data_recipe[zinc_cable].results[1].amount = 2

    local electric_coil = "electric-coil"
    data_item[electric_coil].subgroup = is_vaterite_zinc
    data_item[electric_coil].order = e
    data_item[electric_coil].stack_size = 200
    data_recipe[electric_coil].subgroup = is_vaterite_zinc
    data_recipe[electric_coil].order = e
    data_recipe[electric_coil].ingredients =
    {
        {type = item, name = copper_cable, amount = 32},
        {type = item, name = plastic, amount = 1},
        {type = item, name = iron_rod, amount = 1},
        {type = item, name = zinc_cable, amount = 2}
    }

    data_item[galvanized_steel_plate].subgroup = is_vaterite_zinc
    data_item[galvanized_steel_plate].order = f
    data_item[galvanized_steel_plate].stack_size = 200

    -- SPHALERITE
    data_item[sphalerite_ore].subgroup = is_sphalerite
    data_item[sphalerite_ore].order = a
    data_item[sphalerite_ore].stack_size = 200
    data_resource[sphalerite_ore].subgroup = is_sphalerite
    data_resource[sphalerite_ore].order = a
    data_resource[sphalerite_ore].minable.mining_time = 4

    -- TETRAHEDRITE
    data_item[tetrahedrite_ore].subgroup = is_tetrahedrite
    data_item[tetrahedrite_ore].order = a
    data_item[tetrahedrite_ore].stack_size = 200
    data_resource[tetrahedrite_ore].subgroup = is_tetrahedrite
    data_resource[tetrahedrite_ore].order = a
    data_resource[tetrahedrite_ore].minable.mining_time = 4

    -- RECIPE
    local nitrogen_nitric_acid = "nitrogen-nitric-acid"
    data_recipe[nitrogen_nitric_acid].subgroup = is_paracelsin_recipe
    data_recipe[nitrogen_nitric_acid].icons = THREE_D_I(vaterite, water_purified_angels, nitrogen_liquid, nitric_acid_angels, lime_angels, calcium_carbide)
    data_recipe[nitrogen_nitric_acid].order = a_a
    -- 2CaCO₃ + H₂O + N₂ --> 2HNO₃ + CaO + CaC₂
    data_recipe[nitrogen_nitric_acid].ingredients =
    {
        {type = item, name = vaterite, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 30},
        {type = fluid, name = nitrogen_liquid, amount = 30}
    }
    data_recipe[nitrogen_nitric_acid].results =
    {
        {type = fluid, name = nitric_acid_angels, amount = 60},
        {type = item, name = lime_angels, amount = 2},
        {type = item, name = calcium_carbide, amount = 2}
    }
    data_recipe[nitrogen_nitric_acid].main_product = nitric_acid_angels
    data_recipe[nitrogen_nitric_acid].surface_conditions = {{property = pressure, min = 5300, max = 5300}}

    local solid_fuel_from_nitrogen = "solid-fuel-from-nitrogen"
    data_recipe[solid_fuel_from_nitrogen].subgroup = is_paracelsin_recipe
    data_recipe[solid_fuel_from_nitrogen].icons = THREE_I(vaterite, nitrogen_liquid, solid_fuel)
    data_recipe[solid_fuel_from_nitrogen].order = a_b
    data_recipe[solid_fuel_from_nitrogen].ingredients =
    {
        {type = item, name = vaterite, amount = 2},
        {type = fluid, name = nitrogen_liquid, amount = 30}
    }
    data_recipe[solid_fuel_from_nitrogen].surface_conditions = {{property = pressure, min = 5300, max = 5300}}

    local nitric_acid_rocket_fuel = "nitric-acid-rocket-fuel"
    data_recipe[nitric_acid_rocket_fuel].subgroup = is_paracelsin_recipe
    data_recipe[nitric_acid_rocket_fuel].icons = BUILDING_R_I(rocket_fuel, planet_paracelsin)
    data_recipe[nitric_acid_rocket_fuel].order = a_c
    data_recipe[nitric_acid_rocket_fuel].energy_required = 8
    data_recipe[nitric_acid_rocket_fuel].ingredients =
    {
        {type = item, name = solid_fuel, amount = 4},
        {type = item, name = sulfur, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 240},
        {type = fluid, name = nitric_acid_angels, amount = 240}
    }
    data_recipe[nitric_acid_rocket_fuel].surface_conditions = {{property = pressure, min = 5300, max = 5300}}

    local nitric_acid_plastic = "nitric-acid-plastic"
    data_recipe[nitric_acid_plastic].subgroup = is_paracelsin_recipe
    data_recipe[nitric_acid_plastic].icons = THREE_D_I(carbon_angels, water_purified_angels, nitric_acid_angels, plastic)
    data_recipe[nitric_acid_plastic].order = a_d
    data_recipe[nitric_acid_plastic].ingredients =
    {
        {type = item, name = carbon_angels, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 60},
        {type = fluid, name = nitric_acid_angels, amount = 30}
    }
    data_recipe[nitric_acid_plastic].surface_conditions = {{property = pressure, min = 5300, max = 5300}}

    data_tool[galvanization_science_pack].subgroup = is_paracelsin_recipe
    data_tool[galvanization_science_pack].order = b
    data_recipe[galvanization_science_pack].subgroup = is_paracelsin_recipe
    data_recipe[galvanization_science_pack].order = b
    data_recipe[galvanization_science_pack].energy_required = 8
    data_recipe[galvanization_science_pack].ingredients =
    {
        {type = item, name = zinc_plate_bob, amount = 8},
        {type = item, name = vaterite, amount = 4},
        {type = item, name = electric_coil, amount = 2},
        {type = fluid, name = nitric_acid_angels, amount = 60}
    }

    -- LOGISTICS
    data_item[galvanized_pipe].subgroup = is_paracelsin_logistic
    data_item[galvanized_pipe].order = a
    data_item[galvanized_pipe].stack_size = 200
    data_recipe[galvanized_pipe].subgroup = is_paracelsin_logistic
    data_recipe[galvanized_pipe].order = a
    data_recipe[galvanized_pipe].energy_required = 0.5
    data_recipe[galvanized_pipe].ingredients =
    {
        {type = item, name = zinc_plate_bob, amount = 4},
        {type = item, name = zinc_rivets, amount = 4},
        {type = item, name = galvanized_steel_plate, amount = 1}
    }
    data_pipe[galvanized_pipe].subgroup = is_paracelsin_logistic
    data_pipe[galvanized_pipe].order = a

    local simulations = require("prototypes.factoriopedia-simulations")
    data_item[galvanized_pipe_to_ground].subgroup = is_paracelsin_logistic
    data_item[galvanized_pipe_to_ground].order = b
    data_item[galvanized_pipe_to_ground].stack_size = 32
    data_item[galvanized_pipe_to_ground].weight = 31250
    data_recipe[galvanized_pipe_to_ground].subgroup = is_paracelsin_logistic
    data_recipe[galvanized_pipe_to_ground].order = b
    data_recipe[galvanized_pipe_to_ground].energy_required = 4
    data_recipe[galvanized_pipe_to_ground].ingredients =
    {
        {type = item, name = galvanized_pipe, amount = 48},
        {type = item, name = zinc_plate_bob, amount = 16},
        {type = item, name = zinc_rivets, amount = 16},
        {type = item, name = galvanized_steel_plate, amount = 4}
    }
    data_pipe_to_ground[galvanized_pipe_to_ground].subgroup = is_paracelsin_logistic
    data_pipe_to_ground[galvanized_pipe_to_ground].order = b
    data_pipe_to_ground[galvanized_pipe_to_ground].fluid_box.pipe_connections[2].max_underground_distance = 48
    data_pipe_to_ground[galvanized_pipe_to_ground].factoriopedia_simulation = simulations.factoriopedia_galvanized_pipe_to_ground

    if settings.startup[setting_flow_control_new].value then
        data_storage_tank[galvanized_pipe .. _straight].localised_description = {"entity-description." .. galvanized_storage_tank}
        data_storage_tank[galvanized_pipe .. _elbow].localised_description = {"entity-description." .. galvanized_storage_tank}
        data_storage_tank[galvanized_pipe .. _junction].localised_description = {"entity-description." .. galvanized_storage_tank}
    end

    data_item[galvanized_storage_tank].subgroup = is_paracelsin_logistic
    data_item[galvanized_storage_tank].order = x
    data_item[galvanized_storage_tank].stack_size = 32
    data_item[galvanized_storage_tank].weight = 31250
    data_recipe[galvanized_storage_tank].subgroup = is_paracelsin_logistic
    data_recipe[galvanized_storage_tank].order = x
    data_recipe[galvanized_storage_tank].energy_required = 8
    data_recipe[galvanized_storage_tank].ingredients =
    {
        {type = item, name = galvanized_pipe, amount = 4},
        {type = item, name = zinc_plate_bob, amount = 16},
        {type = item, name = zinc_rivets, amount = 16},
        {type = item, name = galvanized_steel_plate, amount = 16}
    }
    data_storage_tank[galvanized_storage_tank].subgroup = is_paracelsin_logistic
    data_storage_tank[galvanized_storage_tank].order = x
    data_storage_tank[galvanized_storage_tank].fluid_box.volume = 172800

    data_item[galvanized_pump].subgroup = is_paracelsin_logistic
    data_item[galvanized_pump].order = y
    data_item[galvanized_pump].stack_size = 32
    data_item[galvanized_pump].weight = 31250
    data_recipe[galvanized_pump].subgroup = is_paracelsin_logistic
    data_recipe[galvanized_pump].order = y
    data_recipe[galvanized_pump].energy_required = 16
    data_recipe[galvanized_pump].ingredients =
    {
        {type = item, name = galvanized_pipe, amount = 2},
        {type = item, name = zinc_plate_bob, amount = 16},
        {type = item, name = zinc_rivets, amount = 16},
        {type = item, name = electric_coil, amount = 16},
        {type = item, name = galvanized_steel_plate, amount = 8}
    }
    data_pump[galvanized_pump].subgroup = is_paracelsin_logistic
    data_pump[galvanized_pump].order = y
    data_pump[galvanized_pump].pumping_speed = 48
    data_pump[galvanized_pump].energy_usage = 180 .. kW
    data_pump[galvanized_pump].energy_source.drain = nil

    local elevated_pipe = "elevated-pipe"
    data_item[elevated_pipe].subgroup = is_paracelsin_logistic
    data_item[elevated_pipe].order = z
    data_item[elevated_pipe].stack_size = 32
    data_item[elevated_pipe].weight = 31250
    data_recipe[elevated_pipe].subgroup = is_paracelsin_logistic
    data_recipe[elevated_pipe].order = z
    data_recipe[elevated_pipe].ingredients =
    {
        {type = item, name = iron_pipe, amount = 4},
        {type = item, name = iron_rod, amount = 8},
        {type = item, name = zinc_rivets, amount = 16},
        {type = item, name = galvanized_steel_plate, amount = 4}
    }
    data_furnace[elevated_pipe].subgroup = is_paracelsin_logistic
    data_furnace[elevated_pipe].order = z

    -- ENERGY
    local cryovolcanic_turbine = "cryovolcanic-turbine"
    data_item[cryovolcanic_turbine].subgroup = is_paracelsin_energy
    data_item[cryovolcanic_turbine].order = a
    data_item[cryovolcanic_turbine].stack_size = 32
    data_item[cryovolcanic_turbine].weight = 31250
    data_recipe[cryovolcanic_turbine].subgroup = is_paracelsin_energy
    data_recipe[cryovolcanic_turbine].order = a
    data_recipe[cryovolcanic_turbine].energy_required = 16
    data_recipe[cryovolcanic_turbine].ingredients =
    {
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 16},
        {type = item, name = niobium_iron_bearing, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = niobium_titanium_cable, amount = 8}
    }
    data_generator[cryovolcanic_turbine].subgroup = is_paracelsin_energy
    data_generator[cryovolcanic_turbine].order = a
    data_generator[cryovolcanic_turbine].max_power_output = 225 .. kW

    -- MINING
    local burner_pumpjack = "burner-pumpjack"
    data_item[burner_pumpjack].subgroup = is_paracelsin_mining
    data_item[burner_pumpjack].order = a
    data_item[burner_pumpjack].stack_size = 32
    data_item[burner_pumpjack].weight = 31250
    data_recipe[burner_pumpjack].subgroup = is_paracelsin_mining
    data_recipe[burner_pumpjack].order = a
    data_recipe[burner_pumpjack].energy_required = 8
    data_recipe[burner_pumpjack].ingredients =
    {
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 16},
        {type = item, name = niobium_iron_plate, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 4}
    }
    data_mining_drill[burner_pumpjack].subgroup = is_paracelsin_mining
    data_mining_drill[burner_pumpjack].order = a
    data_mining_drill[burner_pumpjack].mining_speed = 2
    data_mining_drill[burner_pumpjack].energy_usage = 14400 .. kW

    -- BUILDING
    local electrochemical_plant = "electrochemical-plant"
    data_item[electrochemical_plant].subgroup = is_paracelsin_building
    data_item[electrochemical_plant].order = a
    data_item[electrochemical_plant].stack_size = 32
    data_item[electrochemical_plant].weight = 31250
    data_recipe[electrochemical_plant].subgroup = is_paracelsin_building
    data_recipe[electrochemical_plant].order = a
    data_recipe[electrochemical_plant].energy_required = 32
    data_recipe[electrochemical_plant].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 32},
        {type = item, name = niobium_titanium_cable, amount = 16},
        {type = item, name = niobium_iron_plate, amount = 32},
        {type = item, name = zinc_cable, amount = 16}
    }
    data_assembling[electrochemical_plant].subgroup = is_paracelsin_building
    data_assembling[electrochemical_plant].order = a
    data_assembling[electrochemical_plant].crafting_speed = 4
    data_assembling[electrochemical_plant].energy_usage = 4200 .. kW
    data_assembling[electrochemical_plant].energy_source.emissions_per_minute.pollution = 8
    data_assembling[electrochemical_plant].energy_source.drain = 600 .. kW
    data_assembling[electrochemical_plant].effect_receiver.base_effect.productivity = 0.5

    local mechanical_plant = "mechanical-plant"
    data_item[mechanical_plant].subgroup = is_paracelsin_building
    data_item[mechanical_plant].order = b
    data_item[mechanical_plant].stack_size = 32
    data_item[mechanical_plant].weight = 31250
    data_recipe[mechanical_plant].subgroup = is_paracelsin_building
    data_recipe[mechanical_plant].order = b
    data_recipe[mechanical_plant].energy_required = 32
    data_recipe[mechanical_plant].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 32},
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 16},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 32},
        {type = item, name = zinc_rivets, amount = 16}
    }
    data_assembling[mechanical_plant].subgroup = is_paracelsin_building
    data_assembling[mechanical_plant].order = b
    data_assembling[mechanical_plant].crafting_speed = 4
    data_assembling[mechanical_plant].energy_usage = 2100 .. kW
    data_assembling[mechanical_plant].energy_source.drain = 300 .. kW

    bobmods.lib.recipe.update_recycling_recipe
    ({
        zinc_rivets,
        zinc_cable,
        electric_coil,
        galvanized_pipe,
        galvanized_pipe_to_ground,
        galvanized_storage_tank,
        galvanized_pump,
        elevated_pipe,
        cryovolcanic_turbine,
        burner_pumpjack,
        electrochemical_plant,
        mechanical_plant
    })

    if mods[bobmodules] then
        table.insert(data_recipe[speed_module_7].ingredients, {type = item, name = galvanized_steel_plate, amount = 16})
        table.insert(data_recipe[efficiency_module_7].ingredients, {type = item, name = galvanized_steel_plate, amount = 16})
        table.insert(data_recipe[productivity_module_7].ingredients, {type = item, name = galvanized_steel_plate, amount = 16})
        table.insert(data_recipe[pollution_clean_module_7].ingredients, {type = item, name = galvanized_steel_plate, amount = 16})
        table.insert(data_recipe[pollution_create_module_7].ingredients, {type = item, name = galvanized_steel_plate, amount = 16})
        table.insert(data_recipe[quality_module_7].ingredients, {type = item, name = galvanized_steel_plate, amount = 16})

        bobmods.lib.recipe.update_recycling_recipe
        ({
            speed_module_7,
            efficiency_module_7,
            productivity_module_7,
            pollution_clean_module_7,
            pollution_create_module_7,
            quality_module_7
        })
    end

    -- TECHNOLOGY
    if mods[asteroid_belt_mods] then
        table.insert(data_technology[planet_discovery_paracelsin].prerequisites, "space-discovery-asteroid-belt")
    end
    table.insert(data_technology[planet_discovery_paracelsin].effects, {type = unlock_recipe, recipe = nitrogen_from_paracelsin_air})

    data_technology["nitric-acid-handling"].effects =
    {
        {type = unlock_recipe, recipe = nitrogen_nitric_acid},
        {type = unlock_recipe, recipe = solid_fuel_from_nitrogen},
        {type = unlock_recipe, recipe = nitric_acid_rocket_fuel},
        {type = unlock_recipe, recipe = nitric_acid_plastic}
    }

    local tech_zinc_extraction = "zinc-extraction"
    data_technology[tech_zinc_extraction].prerequisites = {tech_sphalerite_processing_1, tech_tetrahedrite_processing_1}
    data_technology[tech_zinc_extraction].effects =
    {
        {type = unlock_recipe, recipe = zinc_powder_paracelsin},
        {type = unlock_recipe, recipe = zinc_plate_mods},
        {type = unlock_recipe, recipe = zinc_cable},
        {type = unlock_recipe, recipe = zinc_rivets}
    }
    data_technology[tech_zinc_extraction].research_trigger =
    {
        type = craft_item,
        item = zinc_ore_bob,
        count = 256
    }

    data_technology[electrochemical_plant].effects = {{type = unlock_recipe, recipe = electrochemical_plant}}

    data_technology[mechanical_plant].effects =
    {
        {type = unlock_recipe, recipe = mechanical_plant},
        {type = unlock_recipe, recipe = electric_coil}
    }

    table.insert(data_technology[galvanization_science_pack].prerequisites, vaterite_processing)

    data_technology["galvanized-steel"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    if settings.startup[setting_flow_control_new].value then
        data_technology[tech_galvanized_piping].effects =
        {
            {type = unlock_recipe, recipe = galvanized_pipe},
            {type = unlock_recipe, recipe = galvanized_pipe_to_ground},
            {type = unlock_recipe, recipe = galvanized_pipe .. _elbow},
            {type = unlock_recipe, recipe = galvanized_pipe .. _junction},
            {type = unlock_recipe, recipe = galvanized_pipe .. _straight},
            {type = unlock_recipe, recipe = galvanized_storage_tank},
            {type = unlock_recipe, recipe = galvanized_pump}
        }
    else
        data_technology[tech_galvanized_piping].effects =
        {
            {type = unlock_recipe, recipe = galvanized_pipe},
            {type = unlock_recipe, recipe = galvanized_pipe_to_ground},
            {type = unlock_recipe, recipe = galvanized_storage_tank},
            {type = unlock_recipe, recipe = galvanized_pump}
        }
    end

    data_technology[vaterite_formation].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    data_technology["axe-mining-speed"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    data_technology[elevated_pipe].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    data_technology["zinc-piping"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    if mods[bobmodules] then
        table.insert(data_technology[speed_module_7].prerequisites, galvanization_science_pack)
        table.insert(data_technology[efficiency_module_7].prerequisites, galvanization_science_pack)
        table.insert(data_technology[productivity_module_7].prerequisites, galvanization_science_pack)
        table.insert(data_technology[pollution_clean_module_7].prerequisites, galvanization_science_pack)
        table.insert(data_technology[pollution_create_module_7].prerequisites, galvanization_science_pack)
        table.insert(data_technology[quality_module_7].prerequisites, galvanization_science_pack)
    end

    if mods[bobwarfare] then
        table.insert(data_technology[artillery_turret_2].prerequisites, galvanization_science_pack)
        table.insert(data_technology[artillery_wagon_2].prerequisites, galvanization_science_pack)
    end
    table.insert(data_technology[tech_antimonite_processing_2].prerequisites, galvanization_science_pack)
    table.insert(data_technology[tech_germanite_processing_2].prerequisites, galvanization_science_pack)
    table.insert(data_technology[tech_brannerite_processing_3].prerequisites, galvanization_science_pack)
    table.insert(data_technology[tech_wolframite_processing_3].prerequisites, galvanization_science_pack)
    table.insert(data_technology[tech_molybdenite_processing_4].prerequisites, galvanization_science_pack)
    if mods[castra_mods] then
        table.insert(data_technology[tech_millerite_processing_3].prerequisites, galvanization_science_pack)
    end
    if mods[corrundum_mods] then
        table.insert(data_technology[tech_chalcopyrite_processing_3].prerequisites, galvanization_science_pack)
    end
    if mods[moshine_mods] then
        table.insert(data_technology[tech_monazite_processing_2].prerequisites, galvanization_science_pack)
    end
    if mods[shchierbin_mods] then
        table.insert(data_technology[tech_vanadium_smelting_3].prerequisites, galvanization_science_pack)
    end

    table.insert(data_technology[plastic .. _productivity].effects, {type = change_recipe_productivity, recipe = nitric_acid_plastic, change = 0.1})
end