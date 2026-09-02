if mods[lignumis_mods] then
    -- RECIPE
    data_item[gold_stromatolite_seed].subgroup = is_lignumis_recipe
    data_item[gold_stromatolite_seed].order = a
    data_item[gold_stromatolite_seed].stack_size = 200
    data_item[gold_stromatolite_seed].fuel_category = base_fuel
    data_item[gold_stromatolite_seed].fuel_value = (225/2) .. kJ

    local gold_stromatolite_seed_to_peat = gold_stromatolite_seed .. "-to-peat"
    data_recipe[gold_stromatolite_seed_to_peat].subgroup = is_lignumis_recipe
    data_recipe[gold_stromatolite_seed_to_peat].icons = THREE_R_I(gold_stromatolite_seed, peat, gold_ore_bob)
    data_recipe[gold_stromatolite_seed_to_peat].order = a_a
    data_recipe[gold_stromatolite_seed_to_peat].energy_required = 4
    data_recipe[gold_stromatolite_seed_to_peat].ingredients[1].amount = 8

    data_item[gold_bacteria].subgroup = is_lignumis_recipe
    data_item[gold_bacteria].order = b
    data_item[gold_bacteria].stack_size = 200
    TIMSABA.void.freezing_organics(gold_bacteria)

    -- c
    -- d

    local gold_cable = "gold-cable"
    data_item[gold_cable].localised_description = show_formula and {chemical_formula, "Au"} or nil
    data_item[gold_cable].subgroup = is_lignumis_recipe
    data_item[gold_cable].order = e
    data_recipe[gold_cable].subgroup = is_lignumis_recipe
    data_recipe[gold_cable].icons = TWO_I(gold_plate_bob, gold_cable)
    data_recipe[gold_cable].order = e

    data_item[lumber].subgroup = is_lignumis_recipe
    data_item[lumber].order = f
    data_item[lumber].fuel_category = base_fuel
    data_item[lumber].fuel_value = 3600 .. kJ
    data_recipe[lumber].subgroup = is_lignumis_recipe
    data_recipe[lumber].icons = TWO_I(wood, lumber)
    data_recipe[lumber].order = f

    data_item[wooden_gear_wheel].subgroup = is_lignumis_recipe
    data_item[wooden_gear_wheel].order = g
    data_recipe[wooden_gear_wheel].subgroup = is_lignumis_recipe
    data_recipe[wooden_gear_wheel].icons = TWO_I(lumber, wooden_gear_wheel)
    data_recipe[wooden_gear_wheel].order = g

    data_recipe[basic_circuit_board_mods].localised_name = {"item-name." .. basic_circuit_board}
    data_recipe[basic_circuit_board_mods].subgroup = is_lignumis_recipe
    data_recipe[basic_circuit_board_mods].icons = BUILDING_R_I(basic_circuit_board, planet_lignumis)
    data_recipe[basic_circuit_board_mods].order = h
    data_recipe[basic_circuit_board_mods].surface_conditions = {{property = pressure, min = 900, max = 900}}

    data_item[moist_stromatolite_remnant].subgroup = is_lignumis_recipe
    data_item[moist_stromatolite_remnant].order = i

    local moist_stromatolite_remnant_desiccation = moist_stromatolite_remnant .. "-desiccation"
    data_recipe[moist_stromatolite_remnant_desiccation].subgroup = is_lignumis_recipe
    data_recipe[moist_stromatolite_remnant_desiccation].icons = THREE_R_I(moist_stromatolite_remnant, peat, steam)
    data_recipe[moist_stromatolite_remnant_desiccation].order = i_a
    data_recipe[moist_stromatolite_remnant_desiccation].energy_required = 8
    data_recipe[moist_stromatolite_remnant_desiccation].results =
    {
        {type = item, name = peat, amount = 1, probability = 0.5},
        {type = fluid, name = steam, amount = 240, temperature = 165}
    }

    local moist_stromatolite_remnant_desiccation_without_steam = moist_stromatolite_remnant_desiccation .. "-without-steam"
    data_recipe[moist_stromatolite_remnant_desiccation_without_steam].subgroup = is_lignumis_recipe
    data_recipe[moist_stromatolite_remnant_desiccation_without_steam].icons = TWO_I(moist_stromatolite_remnant, peat)
    data_recipe[moist_stromatolite_remnant_desiccation_without_steam].order = i_b
    data_recipe[moist_stromatolite_remnant_desiccation_without_steam].ingredients[1].amount = 8

    data_item[peat].subgroup = is_lignumis_recipe
    data_item[peat].order = j
    data_item[peat].fuel_category = base_fuel
    data_item[peat].fuel_value = 7200 .. kJ
    data_resource[peat].subgroup = is_lignumis_recipe
    data_resource[peat].order = j

    data_fluid[wood_pulp].subgroup = is_lignumis_recipe
    data_fluid[wood_pulp].order = k
    TIMSABA.barreling.add_simple_fluid(wood_pulp)

    data_recipe[wood_liquefaction].subgroup = is_lignumis_recipe
    data_recipe[wood_liquefaction].icons = TWO_I(wood, wood_pulp)
    data_recipe[wood_liquefaction].order = k_a
    data_recipe[wood_liquefaction].energy_required = 4
    data_recipe[wood_liquefaction].results[1].amount = (15/2)

    local wood_liquefaction_steam = wood_liquefaction .. "-" .. steam
    data_recipe[wood_liquefaction_steam].subgroup = is_lignumis_recipe
    data_recipe[wood_liquefaction_steam].icons = TWO_D_I(wood, steam, wood_pulp)
    data_recipe[wood_liquefaction_steam].order = k_b
    data_recipe[wood_liquefaction_steam].energy_required = 4
    data_recipe[wood_liquefaction_steam].ingredients[2].amount = (15/2)
    data_recipe[wood_liquefaction_steam].results[1].amount = 15

    local nutrients_from_wood_pulp = "nutrients-from-wood-pulp"
    data_recipe[nutrients_from_wood_pulp].subgroup = is_lignumis_recipe
    data_recipe[nutrients_from_wood_pulp].icons = TWO_I(wood_pulp, nutrients)
    data_recipe[nutrients_from_wood_pulp].order = k_c
    data_recipe[nutrients_from_wood_pulp].ingredients[1].amount = (15/2)
    data_recipe[nutrients_from_wood_pulp].results[1].amount = 4

    local rocket_fuel_from_wood_pulp_and_peat = rocket_fuel .. "-from-" .. wood_pulp .. "-and-" .. peat
    data_recipe[rocket_fuel_from_wood_pulp_and_peat].subgroup = is_lignumis_recipe
    data_recipe[rocket_fuel_from_wood_pulp_and_peat].icons = BUILDING_R_I(rocket_fuel, planet_lignumis)
    data_recipe[rocket_fuel_from_wood_pulp_and_peat].order = k_d
    data_recipe[rocket_fuel_from_wood_pulp_and_peat].energy_required = 16
    data_recipe[rocket_fuel_from_wood_pulp_and_peat].ingredients =
    {
        {type = item, name = peat, amount = 4},
        {type = fluid, name = wood_pulp, amount = 30}
    }
    data_recipe[rocket_fuel_from_wood_pulp_and_peat].surface_conditions = {{property = pressure, min = 900, max = 900}}

    data_item[cupriavidus_necator].subgroup = is_lignumis_recipe
    data_item[cupriavidus_necator].order = l
    data_item[cupriavidus_necator].stack_size = 200
    TIMSABA.void.freezing_organics(cupriavidus_necator)
    data_recipe[cupriavidus_necator].subgroup = is_lignumis_recipe
    data_recipe[cupriavidus_necator].icons = STONKS_I(stonks_png, cupriavidus_necator)
    data_recipe[cupriavidus_necator].order = l
    data_recipe[cupriavidus_necator].energy_required = 16
    data_recipe[cupriavidus_necator].ingredients =
    {
        {type = item, name = cupriavidus_necator, amount = 8},
        {type = fluid, name = wood_pulp, amount = 30},
        {type = fluid, name = water, amount = 120}
    }
    data_recipe[cupriavidus_necator].results[1].amount = 40

    local cupriavidus_necator_starter = cupriavidus_necator .. "-starter"
    data_recipe[cupriavidus_necator_starter].subgroup = is_lignumis_recipe
    data_recipe[cupriavidus_necator_starter].icons = FOUR_D_I(gold_stromatolite_seed, wood_pulp, peat, water, cupriavidus_necator)
    data_recipe[cupriavidus_necator_starter].order = l_a
    data_recipe[cupriavidus_necator_starter].energy_required = 16
    data_recipe[cupriavidus_necator_starter].ingredients =
    {
        {type = item, name = gold_stromatolite_seed, amount = 1},
        {type = item, name = peat, amount = 8},
        {type = fluid, name = wood_pulp, amount = 120},
        {type = fluid, name = water, amount = 120}
    }
    data_recipe[cupriavidus_necator_starter].results = {{type = item, name = cupriavidus_necator, amount_min = 4, amount_max = 8, probability = 0.25}}

    local plastic_from_cupriavidus_necator = "plastic-from-" .. cupriavidus_necator
    data_recipe[plastic_from_cupriavidus_necator].subgroup = is_lignumis_recipe
    data_recipe[plastic_from_cupriavidus_necator].icons = THREE_R_I(cupriavidus_necator, plastic, wood_pulp)
    data_recipe[plastic_from_cupriavidus_necator].order = l_b
    data_recipe[plastic_from_cupriavidus_necator].energy_required = 16
    data_recipe[plastic_from_cupriavidus_necator].ingredients[1].amount = 128
    data_recipe[plastic_from_cupriavidus_necator].results =
    {
        {type = item, name = plastic, amount_min = 4, amount_max = 16},
        {type = fluid, name = wood_pulp, amount = 15}
    }

    local dead_cupriavidus_necator = "dead-" .. cupriavidus_necator
    data_item[dead_cupriavidus_necator].subgroup = is_lignumis_recipe
    data_item[dead_cupriavidus_necator].order = m
    data_item[dead_cupriavidus_necator].stack_size = 200

    local plastic_from_dead_cupriavidus_necator = "plastic-from-" .. dead_cupriavidus_necator
    data_recipe[plastic_from_dead_cupriavidus_necator].subgroup = is_lignumis_recipe
    data_recipe[plastic_from_dead_cupriavidus_necator].icons = THREE_R_I(dead_cupriavidus_necator, plastic, wood_pulp)
    data_recipe[plastic_from_dead_cupriavidus_necator].order = m_a
    data_recipe[plastic_from_dead_cupriavidus_necator].energy_required = 16
    data_recipe[plastic_from_dead_cupriavidus_necator].ingredients[1].amount = 128
    data_recipe[plastic_from_dead_cupriavidus_necator].results =
    {
        {type = item, name = plastic, amount_min = 0, amount_max = 8},
        {type = fluid, name = wood_pulp, amount = (15/2)}
    }

    data_tool[wood_science_pack].subgroup = is_lignumis_recipe
    data_tool[wood_science_pack].order = n
    data_recipe[wood_science_pack].subgroup = is_lignumis_recipe
    data_recipe[wood_science_pack].order = n
    data_recipe[wood_science_pack].energy_required = 4
    data_recipe[wood_science_pack].surface_conditions = nil

    data_tool[steam_science_pack].subgroup = is_lignumis_recipe
    data_tool[steam_science_pack].order = o
    data_recipe[steam_science_pack].subgroup = is_lignumis_recipe
    data_recipe[steam_science_pack].icons = R_P_I(steam_science_pack, planet_lignumis, nil, number_1)
    data_recipe[steam_science_pack].order = o
    data_recipe[steam_science_pack].energy_required = 16

    local steam_science_pack_steam = steam_science_pack .. "-" .. steam
    data_recipe[steam_science_pack_steam].subgroup = is_lignumis_recipe
    data_recipe[steam_science_pack_steam].icons = R_P_I(steam_science_pack, nil, nil, number_2)
    data_recipe[steam_science_pack_steam].order = o_a
    data_recipe[steam_science_pack_steam].energy_required = 16
    data_recipe[steam_science_pack_steam].ingredients = {{type = fluid, name = steam, amount = 30}}
    data_recipe[steam_science_pack_steam].surface_conditions = nil

    local gold_quality_catalyst = "gold-quality-catalyst"
    data_item[gold_quality_catalyst].subgroup = is_lignumis_recipe
    data_item[gold_quality_catalyst].order = p
    data_item[gold_quality_catalyst].fuel_value = 1800 .. kJ
    data_recipe[gold_quality_catalyst].subgroup = is_lignumis_recipe
    data_recipe[gold_quality_catalyst].order = p
    data_recipe[gold_quality_catalyst].energy_required = 64
    data_recipe[gold_quality_catalyst].ingredients =
    {
        {type = item, name = gold_plate_bob, amount = 8},
        {type = item, name = niobium_titanium_cable, amount = 4},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 2},
        {type = item, name = carbon_fiber, amount = 2},
        {type = item, name = supercapacitor, amount = 2}
    }

    -- LOGISTICS
    local wood_transport_belt = "wood-" .. T1_transport_belt
    data_item[wood_transport_belt].subgroup = is_lignumis_logistic
    data_item[wood_transport_belt].order = a
    data_recipe[wood_transport_belt].subgroup = is_lignumis_logistic
    data_recipe[wood_transport_belt].order = a
    data_recipe[wood_transport_belt].ingredients =
    {
        {type = item, name = wooden_gear_wheel, amount = 2},
        {type = item, name = lumber, amount = 2}
    }
    data_transport_belt[wood_transport_belt].subgroup = is_lignumis_logistic
    data_transport_belt[wood_transport_belt].order = a
    if data_transport_belt[T0_transport_belt] then
        data_transport_belt[wood_transport_belt].speed = 0.46875/60
        data_transport_belt[wood_transport_belt].next_upgrade = T0_transport_belt
    else
        data_transport_belt[wood_transport_belt].speed = 0.9375/60
        data_transport_belt[wood_transport_belt].next_upgrade = T1_transport_belt
    end

    local simulations = require("prototypes.factoriopedia-simulations")
    local wood_underground_belt = "wood-" .. T1_underground_belt
    data_item[wood_underground_belt].subgroup = is_lignumis_logistic
    data_item[wood_underground_belt].order = b
    data_item[wood_underground_belt].stack_size = 32
    data_item[wood_underground_belt].weight = 31250
    data_recipe[wood_underground_belt].subgroup = is_lignumis_logistic
    data_recipe[wood_underground_belt].order = b
    data_recipe[wood_underground_belt].ingredients =
    {
        {type = item, name = wooden_gear_wheel, amount = 8},
        {type = item, name = lumber, amount = 8}
    }
    data_underground_belt[wood_underground_belt].subgroup = is_lignumis_logistic
    data_underground_belt[wood_underground_belt].order = b
    data_underground_belt[wood_underground_belt].factoriopedia_simulation = simulations.factoriopedia_wood_underground_belt
    if data_underground_belt[T0_underground_belt] then
        data_underground_belt[wood_underground_belt].speed = 0.46875/60
        data_underground_belt[wood_underground_belt].next_upgrade = T0_underground_belt
    else
        data_underground_belt[wood_underground_belt].speed = 0.9375/60
        data_underground_belt[wood_underground_belt].next_upgrade = T1_underground_belt
    end

    local wood_splitter = "wood-" .. T1_splitter
    data_item[wood_splitter].subgroup = is_lignumis_logistic
    data_item[wood_splitter].order = c
    data_item[wood_splitter].stack_size = 16
    data_item[wood_splitter].weight = 62500
    data_recipe[wood_splitter].subgroup = is_lignumis_logistic
    data_recipe[wood_splitter].order = c
    data_splitter[wood_splitter].subgroup = is_lignumis_logistic
    data_splitter[wood_splitter].order = c
    data_recipe[wood_splitter].ingredients =
    {
        {type = item, name = wooden_gear_wheel, amount = 4},
        {type = item, name = lumber, amount = 4},
        {type = item, name = gold_cable, amount = 4}
    }
    if data_splitter[T0_splitter] then
        data_splitter[wood_splitter].speed = 0.46875/60
        data_splitter[wood_splitter].next_upgrade = T0_splitter
    else
        data_splitter[wood_splitter].speed = 0.9375/60
        data_splitter[wood_splitter].next_upgrade = T1_splitter
    end

    data_item[gold_pipe].subgroup = is_lignumis_logistic
    data_item[gold_pipe].order = d
    data_recipe[gold_pipe].subgroup = is_lignumis_logistic
    data_recipe[gold_pipe].order = d
    data_pipe[gold_pipe].subgroup = is_lignumis_logistic
    data_pipe[gold_pipe].order = d

    data_item[gold_pipe_to_ground].subgroup = is_lignumis_logistic
    data_item[gold_pipe_to_ground].order = e
    data_item[gold_pipe_to_ground].stack_size = 32
    data_item[gold_pipe_to_ground].weight = 31250
    data_recipe[gold_pipe_to_ground].subgroup = is_lignumis_logistic
    data_recipe[gold_pipe_to_ground].order = e
    data_recipe[gold_pipe_to_ground].energy_required = 4
    data_recipe[gold_pipe_to_ground].ingredients =
    {
        {type = item, name = gold_pipe, amount = 32},
        {type = item, name = gold_plate_bob, amount = 4}
    }
    data_pipe_to_ground[gold_pipe_to_ground].subgroup = is_lignumis_logistic
    data_pipe_to_ground[gold_pipe_to_ground].order = e
    data_pipe_to_ground[gold_pipe_to_ground].fluid_box.pipe_connections[2].max_underground_distance = 32
    data_pipe_to_ground[gold_pipe_to_ground].factoriopedia_simulation = simulations.factoriopedia_gold_pipe_to_ground

    data_item[gold_storage_tank].subgroup = is_lignumis_logistic
    data_item[gold_storage_tank].order = f
    data_item[gold_storage_tank].stack_size = 32
    data_item[gold_storage_tank].weight = 31250
    data_recipe[gold_storage_tank].subgroup = is_lignumis_logistic
    data_recipe[gold_storage_tank].order = f
    data_recipe[gold_pipe_to_ground].energy_required = 4
    data_recipe[gold_pipe_to_ground].ingredients[1].amount = 16
    data_recipe[gold_pipe_to_ground].ingredients[2].amount = 16
    data_storage_tank[gold_storage_tank].subgroup = is_lignumis_logistic
    data_storage_tank[gold_storage_tank].order = f
    data_storage_tank[gold_storage_tank].fluid_box.volume = 7200

    local basic_construction_robot_gold = "basic-construction-robot-gold"
    data_item[basic_construction_robot_gold].subgroup = is_lignumis_logistic
    data_item[basic_construction_robot_gold].order = g
    data_recipe[basic_construction_robot_gold].subgroup = is_lignumis_logistic
    data_recipe[basic_construction_robot_gold].order = g
    data_recipe[basic_construction_robot_gold].energy_required = 8
    data_recipe[basic_construction_robot_gold].ingredients =
    {
        {type = item, name = wooden_gear_wheel, amount = 4},
        {type = item, name = basic_circuit_board, amount = 4},
        {type = item, name = gold_plate_bob, amount = 2}
    }
    data_construction_robot[basic_construction_robot_gold].subgroup = is_lignumis_logistic
    data_construction_robot[basic_construction_robot_gold].order = g

    local basic_repair_pack = "basic-repair-pack"
    data_repair_tool[basic_repair_pack].subgroup = is_lignumis_logistic
    data_repair_tool[basic_repair_pack].order = h
    data_recipe[basic_repair_pack].subgroup = is_lignumis_logistic
    data_recipe[basic_repair_pack].order = h

    -- MINING
    local deep_miner = "deep-miner"
    data_item[deep_miner].subgroup = is_lignumis_mining
    data_item[deep_miner].order = a
    data_item[deep_miner].stack_size = 32
    data_item[deep_miner].weight = 31250
    data_recipe[deep_miner].subgroup = is_lignumis_mining
    data_recipe[deep_miner].order = a
    data_recipe[deep_miner].energy_required = 64
    data_recipe[deep_miner].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 128},
        {type = item, name = advanced_processing_unit, amount = 128},
        {type = item, name = molybdenum_rhenium_plate, amount = 256},
        {type = item, name = reinforced_titanium_concrete_brick, amount = 64}
    }
    data_mining_drill[deep_miner].subgroup = is_lignumis_mining
    data_mining_drill[deep_miner].order = a
    data_mining_drill[deep_miner].mining_speed = 8
    data_mining_drill[deep_miner].energy_usage = 24000 .. kW

    -- BUILDING
    local burner_agricultural_tower = "burner-" .. agricultural_tower
    data_item[burner_agricultural_tower].subgroup = is_lignumis_building
    data_item[burner_agricultural_tower].order = a
    data_item[burner_agricultural_tower].stack_size = 32
    data_item[burner_agricultural_tower].weight = 31250
    data_recipe[burner_agricultural_tower].subgroup = is_lignumis_building
    data_recipe[burner_agricultural_tower].order = a
    data_recipe[burner_agricultural_tower].energy_required = 8
    data_recipe[burner_agricultural_tower].ingredients =
    {
        {type = item, name = wooden_gear_wheel, amount = 16},
        {type = item, name = basic_circuit_board, amount = 8},
        {type = item, name = lumber, amount = 16},
        {type = item, name = stone_brick, amount = 4},
        {type = item, name = gold_plate_bob, amount = 8}
    }
    data_agricultural_tower[burner_agricultural_tower].subgroup = is_lignumis_building
    data_agricultural_tower[burner_agricultural_tower].order = b
    data_agricultural_tower[burner_agricultural_tower].energy_usage = 225 .. kW

    local desiccation_furnace = "desiccation-furnace"
    data_item[desiccation_furnace].subgroup = is_lignumis_building
    data_item[desiccation_furnace].order = b
    data_item[desiccation_furnace].stack_size = 32
    data_item[desiccation_furnace].weight = 31250
    data_recipe[desiccation_furnace].subgroup = is_lignumis_building
    data_recipe[desiccation_furnace].order = b
    data_recipe[desiccation_furnace].energy_required = 1
    data_furnace[desiccation_furnace].subgroup = is_lignumis_building
    data_furnace[desiccation_furnace].order = b
    data_furnace[desiccation_furnace].energy_usage = 225 .. kW

    local burner_assembling_machine = "burner-" .. assembling_machine
    data_item[burner_assembling_machine].subgroup = is_lignumis_building
    data_item[burner_assembling_machine].order = c
    data_item[burner_assembling_machine].stack_size = 32
    data_item[burner_assembling_machine].weight = 31250
    data_recipe[burner_assembling_machine].subgroup = is_lignumis_building
    data_recipe[burner_assembling_machine].order = c
    data_recipe[burner_assembling_machine].energy_required = 1
    data_recipe[burner_assembling_machine].ingredients =
    {
        {type = item, name = wooden_gear_wheel, amount = 4},
        {type = item, name = basic_circuit_board, amount = 4},
        {type = item, name = lumber, amount = 8}
    }
    data_assembling[burner_assembling_machine].subgroup = is_lignumis_building
    data_assembling[burner_assembling_machine].order = c
    data_assembling[burner_assembling_machine].energy_usage = 225 .. kW

    local steam_assembling_machine = "steam-" .. assembling_machine
    data_item[steam_assembling_machine].subgroup = is_lignumis_building
    data_item[steam_assembling_machine].order = d
    data_item[steam_assembling_machine].stack_size = 32
    data_item[steam_assembling_machine].weight = 31250
    data_recipe[steam_assembling_machine].subgroup = is_lignumis_building
    data_recipe[steam_assembling_machine].order = d
    data_recipe[steam_assembling_machine].energy_required = 1
    data_recipe[steam_assembling_machine].ingredients =
    {
        {type = item, name = burner_assembling_machine, amount = 1},
        {type = item, name = gold_pipe, amount = 4}
    }
    data_assembling[steam_assembling_machine].subgroup = is_lignumis_building
    data_assembling[steam_assembling_machine].order = d

    local lumber_mill = "lumber-mill"
    data_item[lumber_mill].subgroup = is_lignumis_building
    data_item[lumber_mill].order = e
    data_item[lumber_mill].stack_size = 32
    data_item[lumber_mill].weight = 31250
    data_recipe[lumber_mill].subgroup = is_lignumis_building
    data_recipe[lumber_mill].order = e
    data_recipe[lumber_mill].energy_required = 64
    data_recipe[lumber_mill].ingredients =
    {
        {type = item, name = wooden_gear_wheel, amount = 64},
        {type = item, name = basic_circuit_board, amount = 16},
        {type = item, name = lumber, amount = 64},
        {type = item, name = stone_brick, amount = 32},
        {type = item, name = gold_plate_bob, amount = 16},
        {type = item, name = burner_assembling_machine, amount = 2}
    }
    data_assembling[lumber_mill].subgroup = is_lignumis_building
    data_assembling[lumber_mill].order = e
    data_assembling[lumber_mill].energy_usage = 900 .. kW

    local wood_lab = "wood-lab"
    data_item[wood_lab].subgroup = is_lignumis_building
    data_item[wood_lab].order = f
    data_item[wood_lab].stack_size = 32
    data_item[wood_lab].weight = 31250
    data_recipe[wood_lab].subgroup = is_lignumis_building
    data_recipe[wood_lab].order = f
    data_recipe[wood_lab].ingredients =
    {
        {type = item, name = wooden_gear_wheel, amount = 4},
        {type = item, name = basic_circuit_board, amount = 8},
        {type = item, name = lumber, amount = 4},
        {type = item, name = stone_brick, amount = 8},
        {type = item, name = gold_plate_bob, amount = 8}
    }
    data_lab[wood_lab].subgroup = is_lignumis_building
    data_lab[wood_lab].order = f
    data_lab[wood_lab].energy_usage = 225 .. kW

    data_item[quality_assembler].subgroup = is_lignumis_building
    data_item[quality_assembler].order = g
    data_item[quality_assembler].stack_size = 32
    data_item[quality_assembler].weight = 31250
    data_recipe[quality_assembler].subgroup = is_lignumis_building
    data_recipe[quality_assembler].order = g
    data_recipe[quality_assembler].energy_required = 64
    data_recipe[quality_assembler].ingredients =
    {
        {type = item, name = semiconductor, amount = 64},
        {type = item, name = superconductor, amount = 64},
        {type = item, name = quantum_processor, amount = 8},
        {type = item, name = niobium_titanium_cable, amount = 16},
        {type = item, name = niobium_iron_bearing, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 16},
        {type = item, name = carbon_fiber, amount = 128},
        {type = item, name = gold_plate_bob, amount = 64}
    }
    data_assembling[quality_assembler].subgroup = is_lignumis_building
    data_assembling[quality_assembler].order = g
    data_assembling[quality_assembler].module_slots = 4
    data_assembling[quality_assembler].energy_usage = 3600 .. kW
    data_assembling[quality_assembler].effect_receiver.base_effect.quality = 5

    local provisional_rocket_silo = "provisional-" .. rocket_silo
    data_item[provisional_rocket_silo].subgroup = is_lignumis_building
    data_item[provisional_rocket_silo].order = h
    data_item[provisional_rocket_silo].stack_size = 1
    data_item[provisional_rocket_silo].weight = 1000000000
    data_recipe[provisional_rocket_silo].subgroup = is_lignumis_building
    data_recipe[provisional_rocket_silo].order = h
    data_recipe[provisional_rocket_silo].energy_required = 32
    data_recipe[provisional_rocket_silo].ingredients =
    {
        {type = item, name = wooden_gear_wheel, amount = 128},
        {type = item, name = basic_circuit_board, amount = 128},
        {type = item, name = lumber, amount = 512},
        {type = item, name = stone_brick, amount = 512},
        {type = item, name = gold_plate_bob, amount = 512}
    }
    data_rocket_silo[provisional_rocket_silo].subgroup = is_lignumis_building
    data_rocket_silo[provisional_rocket_silo].order = h
    data_rocket_silo[provisional_rocket_silo].energy_usage = 3600 .. kW

    local active_noise_cancelling_tower = "active-noise-cancelling-tower"
    data_item[active_noise_cancelling_tower].subgroup = is_lignumis_building
    data_item[active_noise_cancelling_tower].order = i
    data_recipe[active_noise_cancelling_tower].subgroup = is_lignumis_building
    data_recipe[active_noise_cancelling_tower].order = i
    data_recipe[active_noise_cancelling_tower].energy_required = 16
    data_recipe[active_noise_cancelling_tower].ingredients =
    {
        {type = item, name = low_density_structure, amount = 4},
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = gold_plate_bob, amount = 4},
        {type = item, name = gold_cable, amount = 4}
    }
    data_assembling[active_noise_cancelling_tower].subgroup = is_lignumis_building
    data_assembling[active_noise_cancelling_tower].order = i
    data_assembling[active_noise_cancelling_tower].energy_usage = 480 .. kW

    -- WAR
    local wood_darts_magazine = "wood-darts-magazine"
    data_ammo[wood_darts_magazine].subgroup = is_lignumis_war
    data_ammo[wood_darts_magazine].order = a
    data_ammo[wood_darts_magazine].magazine_size = 30
    data_recipe[wood_darts_magazine].subgroup = is_lignumis_war
    data_recipe[wood_darts_magazine].order = a

    local basic_portable_generator_eq_gold = "basic-portable-generator-equipment-gold"
    data_item[basic_portable_generator_eq_gold].subgroup = is_lignumis_war
    data_item[basic_portable_generator_eq_gold].order = b
    data_item[basic_portable_generator_eq_gold].stack_size = 8
    data_item[basic_portable_generator_eq_gold].weight = 125000
    data_recipe[basic_portable_generator_eq_gold].subgroup = is_lignumis_war
    data_recipe[basic_portable_generator_eq_gold].order = b
    data_recipe[basic_portable_generator_eq_gold].energy_required = 8
    data_recipe[basic_portable_generator_eq_gold].ingredients[1].amount = 8
    data_recipe[basic_portable_generator_eq_gold].ingredients[2].amount = 8

    local basic_personal_roboport_eq_gold = "basic-personal-roboport-equipment-gold"
    data_item[basic_personal_roboport_eq_gold].subgroup = is_lignumis_war
    data_item[basic_personal_roboport_eq_gold].order = c
    data_item[basic_personal_roboport_eq_gold].stack_size = 8
    data_item[basic_personal_roboport_eq_gold].weight = 125000
    data_recipe[basic_personal_roboport_eq_gold].subgroup = is_lignumis_war
    data_recipe[basic_personal_roboport_eq_gold].order = c
    data_recipe[basic_personal_roboport_eq_gold].energy_required = 8
    data_recipe[basic_personal_roboport_eq_gold].ingredients =
    {
        {type = item, name = wooden_gear_wheel, amount = 8},
        {type = item, name = basic_circuit_board, amount = 8},
        {type = item, name = gold_plate_bob, amount = 4}
    }

    local wooden_wall = "wooden-wall"
    data_item[wooden_wall].subgroup = is_lignumis_war
    data_item[wooden_wall].order = d
    data_item[wooden_wall].fuel_category = base_fuel
    data_item[wooden_wall].fuel_value = (7200 * 4) .. kJ
    data_recipe[wooden_wall].subgroup = is_lignumis_war
    data_recipe[wooden_wall].order = d
    data_wall[wooden_wall].subgroup = is_lignumis_war
    data_wall[wooden_wall].order = d

    local basic_radar = "basic-radar"
    data_item[basic_radar].subgroup = is_lignumis_war
    data_item[basic_radar].order = e
    data_item[basic_radar].stack_size = 32
    data_item[basic_radar].weight = 31250
    data_recipe[basic_radar].subgroup = is_lignumis_war
    data_recipe[basic_radar].order = e
    data_recipe[basic_radar].energy_required = 8
    data_radar[basic_radar].subgroup = is_lignumis_war
    data_radar[basic_radar].order = e
    data_radar[basic_radar].energy_usage = (225 / 8) .. kW

    local basic_gun_turret = "basic-" .. gun_turret_1
    data_item[basic_gun_turret].subgroup = is_lignumis_war
    data_item[basic_gun_turret].order = e
    data_recipe[basic_gun_turret].subgroup = is_lignumis_war
    data_recipe[basic_gun_turret].order = e
    data_recipe[basic_gun_turret].ingredients =
    {
        {type = item, name = wooden_gear_wheel, amount = 4},
        {type = item, name = basic_circuit_board, amount = 8},
        {type = item, name = gold_plate_bob, amount = 8}
    }
    data_ammo_turret[basic_gun_turret].subgroup = is_lignumis_war
    data_ammo_turret[basic_gun_turret].order = e
    data_ammo_turret[basic_gun_turret].attack_parameters.range = 16
    data_ammo_turret[basic_gun_turret].attack_parameters.cooldown = 7.5

    bobmods.lib.recipe.update_recycling_recipe
    ({
        gold_quality_catalyst,
        wood_transport_belt,
        wood_underground_belt,
        wood_splitter,
        gold_pipe_to_ground,
        gold_storage_tank,
        basic_construction_robot_gold,
        deep_miner,
        burner_agricultural_tower,
        burner_assembling_machine,
        steam_assembling_machine,
        lumber_mill,
        wood_lab,
        quality_assembler,
        provisional_rocket_silo,
        active_noise_cancelling_tower,
        basic_portable_generator_eq_gold,
        basic_personal_roboport_eq_gold,
        basic_gun_turret
    })

    -- TECHNOLOGY
    local planet_discovery_lignumis = "planet-discovery-lignumis"
    if mods[muluna_mods] then
        data_technology[planet_discovery_lignumis].prerequisites = {thruster_fuel}
    end
    data_technology[planet_discovery_lignumis].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1}
    }

    table.insert(data_technology["provisional-rocketry"].effects, {type = unlock_recipe, recipe = rocket_fuel_from_wood_pulp_and_peat})

    local tech_active_noise_cancelling = "active-noise-cancelling"
    data_technology[tech_active_noise_cancelling].prerequisites = {space_science_pack}
    data_technology[tech_active_noise_cancelling].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[deep_miner].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[tree_seed .. _productivity .. "-5"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1}
    }

    data_technology[tree_seed .. _productivity .. "-7"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[basic_circuit_board_mods .. _productivity].prerequisites = {production_science_pack}
    data_technology[basic_circuit_board_mods .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1}
    }

    local tech_worker_robots_speed = "worker-robots-speed"
    data_technology[tech_worker_robots_speed .. "-2"].prerequisites = {tech_worker_robots_speed .. "-1", tech_construction_robotics, tech_logistic_robotics}

    if data_technology[tech_robots_1] then
        data_technology[tech_worker_robots_speed .. "-3"].prerequisites = {tech_worker_robots_speed .. "-2", tech_robots_1}
    else
        data_technology[tech_worker_robots_speed .. "-3"].prerequisites = {tech_worker_robots_speed .. "-2", chemical_science_pack}
    end

    if data_technology[transport_science_pack] then
        data_technology[tech_worker_robots_speed .. "-4"].prerequisites = {tech_worker_robots_speed .. "-3", transport_science_pack}
    else
        data_technology[tech_worker_robots_speed .. "-4"].prerequisites = {tech_worker_robots_speed .. "-3"}
    end

    data_technology[tech_worker_robots_speed .. "-5"].prerequisites = {tech_worker_robots_speed .. "-4", utility_science_pack}
end