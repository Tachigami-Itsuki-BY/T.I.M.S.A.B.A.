if mods[maraxsis_mods] then
    -- AIR
    data_fluid[maraxsis_air].subgroup = is_maraxsis_air
    data_fluid[maraxsis_air].order = a
    TIMSABA.barreling.add_gas(maraxsis_air)
    data_recipe[maraxsis_air].category = angels_petrochem_air_filtering
    data_recipe[maraxsis_air].subgroup = is_maraxsis_air
    data_recipe[maraxsis_air].order = a
    data_recipe[maraxsis_air].energy_required = 8
    data_recipe[maraxsis_air].ingredients = {}
    data_recipe[maraxsis_air].results[1].amount = 240
    data_recipe[maraxsis_air].surface_conditions = {{property = pressure, min = 200000, max = 200000}}

    data_recipe[maraxsis_air_separation].ingredients[1].amount = 120

    -- RECIPE
    data_item[salt_filter_maraxsis].subgroup = is_maraxsis_recipe
    data_item[salt_filter_maraxsis].order = a
    data_item[salt_filter_maraxsis].stack_size = 200
    data_recipe[salt_filter_maraxsis].subgroup = is_maraxsis_recipe
    data_recipe[salt_filter_maraxsis].icons = THREE_I(steel_plate, carbon_fiber, salt_filter_maraxsis)
    data_recipe[salt_filter_maraxsis].order = a

    local salt_filter_cleaning = "maraxsis-salt-filter-cleaning"
    data_recipe[salt_filter_cleaning].subgroup = is_maraxsis_recipe
    data_recipe[salt_filter_cleaning].icons = TWO_D_I(saturated_salt_filter_maraxsis, water, salt_filter_maraxsis, water_brackish_maraxsis)
    data_recipe[salt_filter_cleaning].order = a_a
    data_recipe[salt_filter_cleaning].energy_required = 1
    data_recipe[salt_filter_cleaning].ingredients =
    {
        {type = item, name = saturated_salt_filter_maraxsis, amount = 1},
        {type = fluid, name = water, amount = 120}
    }
    data_recipe[salt_filter_cleaning].results =
    {
        {type = item, name = salt_filter_maraxsis, amount = 1},
        {type = fluid, name = water_brackish_maraxsis, amount = 120}
    }
    data_recipe[salt_filter_cleaning].main_product = salt_filter_maraxsis

    data_item[saturated_salt_filter_maraxsis].subgroup = is_maraxsis_recipe
    data_item[saturated_salt_filter_maraxsis].order = b
    data_item[saturated_salt_filter_maraxsis].stack_size = 200

    data_fluid[water_brackish_maraxsis].subgroup = is_maraxsis_recipe
    data_fluid[water_brackish_maraxsis].order = c
    TIMSABA.barreling.add_simple_fluid(water_brackish_maraxsis)
    data_recipe[water_brackish_maraxsis].subgroup = is_maraxsis_recipe
    data_recipe[water_brackish_maraxsis].icons = TWO_I(water_saline_angels, water_brackish_maraxsis)
    data_recipe[water_brackish_maraxsis].order = c
    data_recipe[water_brackish_maraxsis].energy_required = 1
    data_recipe[water_brackish_maraxsis].ingredients =
    {
        {type = fluid, name = water_saline_angels, amount = 120},
        {type = item, name = salt_filter_maraxsis, amount = 1}
    }
    data_recipe[water_brackish_maraxsis].results =
    {
        {type = fluid, name = water_brackish_maraxsis, amount = 120},
        {type = item, name = saturated_salt_filter_maraxsis, amount = 1}
    }
    data_recipe[water_brackish_maraxsis].main_product = water_brackish_maraxsis

    local maraxsis_salt = "maraxsis-salt"
    data_recipe[maraxsis_salt].category = angels_petrochem_electrolyser
    data_recipe[maraxsis_salt].subgroup = is_maraxsis_recipe
    data_recipe[maraxsis_salt].icons = FOUR_R_I(water_brackish_maraxsis, oxygen_angels, salt_angels, hydrogen_angels)
    data_recipe[maraxsis_salt].order = c_a
    data_recipe[maraxsis_salt].energy_required = 4 -- 2H₂O(NaCl) --> NaCl + 2H₂ + O₂
    data_recipe[maraxsis_salt].ingredients = {{type = fluid, name = water_brackish_maraxsis, amount = 480}}
    data_recipe[maraxsis_salt].results =
    {
        {type = item, name = salt_angels, amount = 2},
        {type = fluid, name = hydrogen_angels, amount = 480},
        {type = fluid, name = oxygen_angels, amount = 240}
    }
    data_recipe[maraxsis_salt].main_product = salt_angels

    local maraxsis_water = "maraxsis-water"
    data_recipe[maraxsis_water].subgroup = is_maraxsis_recipe
    data_recipe[maraxsis_water].icons = THREE_I(hydrogen_angels, oxygen_angels, water)
    data_recipe[maraxsis_water].order = c_b
    data_recipe[maraxsis_water].energy_required = 4 -- 2H₂ + O₂ --> 2H₂O
    data_recipe[maraxsis_water].ingredients =
    {
        {type = fluid, name = hydrogen_angels, amount = 480},
        {type = fluid, name = oxygen_angels, amount = 240}
    }
    data_recipe[maraxsis_water].results[1].amount = 480

    local hydrolox_rocket_fuel = "maraxsis-hydrolox-rocket-fuel"
    data_recipe[hydrolox_rocket_fuel].subgroup = is_maraxsis_recipe
    data_recipe[hydrolox_rocket_fuel].icons = THREE_I(hydrogen_angels, oxygen_angels, rocket_fuel)
    data_recipe[hydrolox_rocket_fuel].order = c_c
    data_recipe[hydrolox_rocket_fuel].energy_required = 8
    data_recipe[hydrolox_rocket_fuel].ingredients =
    {
        {type = fluid, name = hydrogen_angels, amount = 1920},
        {type = fluid, name = oxygen_angels, amount = 1920}
    }
    data_recipe[hydrolox_rocket_fuel].results[1].amount = 1
    data_recipe[hydrolox_rocket_fuel].surface_conditions = {{property = pressure, min = 200000, max = 200000}}

    local sand_extraction = "maraxsis-sand-extraction"
    data_recipe[sand_extraction].subgroup = is_maraxsis_recipe
    data_recipe[sand_extraction].order = c_d
    data_recipe[sand_extraction].energy_required = 1

    data_item[coral_maraxsis].subgroup = is_maraxsis_recipe
    data_item[coral_maraxsis].order = d
    data_item[coral_maraxsis].spoil_result = limestone_angels

    data_capsule[tropical_fish_maraxsis].subgroup = is_maraxsis_recipe
    data_capsule[tropical_fish_maraxsis].order = e
    data_capsule[tropical_fish_maraxsis].stack_size = 200
    data_capsule[tropical_fish_maraxsis].spoil_ticks = 3 * hour
    TIMSABA.void.freezing_organics(tropical_fish_maraxsis)

    local fish_food = "maraxsis-fish-food"
    data_item[fish_food].subgroup = is_maraxsis_recipe
    data_item[fish_food].order = f
    data_item[fish_food].stack_size = 200
    data_recipe[fish_food].subgroup = is_maraxsis_recipe
    data_recipe[fish_food].icon = data_item[fish_food].icon
    data_recipe[fish_food].order = f
    data_recipe[fish_food].energy_required = 4
    data_recipe[fish_food].ingredients =
    {
        {type = item, name = coral_maraxsis, amount = 4},
        {type = item, name = tropical_fish_maraxsis, amount = 1},
        {type = item, name = plastic, amount = 1},
        {type = item, name = jelly, amount = 1},
        {type = item, name = sand_angels, amount = 1}
    }

    local maraxsis_carbon = "maraxsis-carbon"
    data_recipe[maraxsis_carbon].subgroup = is_maraxsis_recipe
    data_recipe[maraxsis_carbon].icons = TWO_I(tropical_fish_maraxsis, carbon_angels)
    data_recipe[maraxsis_carbon].order = f_a

    local nutrients_from_tropical_fish = "maraxsis-nutrients-from-tropical-fish"
    data_recipe[nutrients_from_tropical_fish].subgroup = is_maraxsis_recipe
    data_recipe[nutrients_from_tropical_fish].icons = TWO_I(tropical_fish_maraxsis, nutrients)
    data_recipe[nutrients_from_tropical_fish].order = f_b
    data_recipe[nutrients_from_tropical_fish].results[1].amount = 8

    local microplastics = "maraxsis-microplastics"
    data_item[microplastics].subgroup = is_maraxsis_recipe
    data_item[microplastics].order = g
    data_item[microplastics].stack_size = 200
    data_recipe[microplastics].subgroup = is_maraxsis_recipe
    data_recipe[microplastics].icons = THREE_R_I(tropical_fish_maraxsis, microplastics, jelly)
    data_recipe[microplastics].order = g
    data_recipe[microplastics].ingredients[1].amount = 1
    data_recipe[microplastics].results =
    {
        {type = item, name = microplastics, amount = 8},
        {type = item, name = jelly, amount = 8}
    }
    data_recipe[microplastics].main_product = microplastics

    local smelt_microplastics = "maraxsis-smelt-microplastics"
    data_recipe[smelt_microplastics].subgroup = is_maraxsis_recipe
    data_recipe[smelt_microplastics].icons = TWO_I(microplastics, plastic)
    data_recipe[smelt_microplastics].order = g_a
    data_recipe[smelt_microplastics].energy_required = 4

    local wyrm_confinement_cell = "maraxsis-wyrm-confinement-cell"
    data_item[wyrm_confinement_cell].subgroup = is_maraxsis_recipe
    data_item[wyrm_confinement_cell].order = h
    data_item[wyrm_confinement_cell].stack_size = 200
    data_recipe[wyrm_confinement_cell].subgroup = is_maraxsis_recipe
    data_recipe[wyrm_confinement_cell].icons = THREE_I(glass_bob, steel_plate, wyrm_confinement_cell)
    data_recipe[wyrm_confinement_cell].order = h
    data_recipe[wyrm_confinement_cell].energy_required = 4
    data_recipe[wyrm_confinement_cell].ingredients =
    {
        {type = item, name = glass_bob, amount = 4},
        {type = item, name = steel_plate, amount = 1}
    }

    local wyrm_specimen = "maraxsis-wyrm-specimen"
    data_item[wyrm_specimen].subgroup = is_maraxsis_recipe
    data_item[wyrm_specimen].order = i
    data_item[wyrm_specimen].stack_size = 200
    data_recipe[wyrm_specimen].subgroup = is_maraxsis_recipe
    data_recipe[wyrm_specimen].icons = THREE_I(fish_food, wyrm_confinement_cell, wyrm_specimen)
    data_recipe[wyrm_specimen].order = i
    data_recipe[wyrm_specimen].energy_required = 8

    local geothermal_sulfur = "maraxsis-geothermal-sulfur"
    data_recipe[geothermal_sulfur].subgroup = is_maraxsis_recipe
    data_recipe[geothermal_sulfur].icons = THREE_I(steam, lava, sulfur)
    data_recipe[geothermal_sulfur].order = i_a
    data_recipe[geothermal_sulfur].ingredients[1].amount = 120
    data_recipe[geothermal_sulfur].ingredients[2].amount = 120

    data_tool[hydraulic_science_pack].subgroup = is_maraxsis_recipe
    data_tool[hydraulic_science_pack].order = j
    data_recipe[hydraulic_science_pack].subgroup = is_maraxsis_recipe
    data_recipe[hydraulic_science_pack].order = j
    data_recipe[hydraulic_science_pack].energy_required = 32
    data_recipe[hydraulic_science_pack].ingredients =
    {
        {type = item, name = salt_angels, amount = 1},
        {type = item, name = wyrm_specimen, amount = 1},
        {type = fluid, name = water_saline_angels, amount = 240}
    }

    data_item[super_sealant_substance_maraxsis].subgroup = is_maraxsis_recipe
    data_item[super_sealant_substance_maraxsis].order = k
    data_item[super_sealant_substance_maraxsis].stack_size = 200
    data_recipe[super_sealant_substance_maraxsis].subgroup = is_maraxsis_recipe
    data_recipe[super_sealant_substance_maraxsis].icons = THREE_D_I(sulfur, naphtha_angels, hydrogen_angels, super_sealant_substance_maraxsis)
    data_recipe[super_sealant_substance_maraxsis].order = k
    data_recipe[super_sealant_substance_maraxsis].energy_required = 4
    data_recipe[super_sealant_substance_maraxsis].ingredients =
    {
        {type = item, name = sulfur, amount = 4},
        {type = fluid, name = naphtha_angels, amount = 30},
        {type = fluid, name = hydrogen_angels, amount = 960}
    }

    -- SCIENCE PACK 
    local empty_research_vessel = "maraxsis-empty-research-vessel"
    data_item[empty_research_vessel].subgroup = is_maraxsis_science
    data_item[empty_research_vessel].order = a
    data_item[empty_research_vessel].stack_size = 200
    data_recipe[empty_research_vessel].subgroup = is_maraxsis_science
    data_recipe[empty_research_vessel].icons = THREE_I(steel_plate, glass_bob, empty_research_vessel)
    data_recipe[empty_research_vessel].order = a
    data_recipe[empty_research_vessel].ingredients[1].amount = 8
    data_recipe[empty_research_vessel].ingredients[2].amount = 8

    local deepsea_research_automation_science_pack = "maraxsis-deepsea-research-automation-science-pack"
    data_recipe[deepsea_research_automation_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_automation_science_pack].icons = R_P_I(automation_science_pack, nil, water_saline_angels)
    data_recipe[deepsea_research_automation_science_pack].order = a_a
    data_recipe[deepsea_research_automation_science_pack].ingredients = util.table.deepcopy(data_recipe[automation_science_pack].ingredients)
    table.insert(data_recipe[deepsea_research_automation_science_pack].ingredients, {type = fluid, name = water_saline_angels, amount = 60})
    data_recipe[deepsea_research_automation_science_pack].surface_conditions = nil

    local deepsea_research_logistic_science_pack = "maraxsis-deepsea-research-logistic-science-pack"
    data_recipe[deepsea_research_logistic_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_logistic_science_pack].icons = R_P_I(logistic_science_pack, nil, water_brackish_maraxsis)
    data_recipe[deepsea_research_logistic_science_pack].order = a_b
    data_recipe[deepsea_research_logistic_science_pack].ingredients = util.table.deepcopy(data_recipe[logistic_science_pack].ingredients)
    table.insert(data_recipe[deepsea_research_logistic_science_pack].ingredients, {type = fluid, name = water_brackish_maraxsis, amount = 60})
    data_recipe[deepsea_research_logistic_science_pack].surface_conditions = nil

    local deepsea_research_military_science_pack = "maraxsis-deepsea-research-military-science-pack"
    data_recipe[deepsea_research_military_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_military_science_pack].icons = R_P_I(military_science_pack, nil, lava)
    data_recipe[deepsea_research_military_science_pack].order = a_c
    data_recipe[deepsea_research_military_science_pack].ingredients = util.table.deepcopy(data_recipe[military_science_pack].ingredients)
    table.insert(data_recipe[deepsea_research_military_science_pack].ingredients, {type = fluid, name = lava, amount = 120})
    data_recipe[deepsea_research_military_science_pack].surface_conditions = nil

    local deepsea_research_chemical_science_pack = "maraxsis-deepsea-research-chemical-science-pack"
    data_recipe[deepsea_research_chemical_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_chemical_science_pack].icons = R_P_I(chemical_science_pack, nil, sodium_sulfate_solution)
    data_recipe[deepsea_research_chemical_science_pack].order = a_d
    data_recipe[deepsea_research_chemical_science_pack].ingredients = util.table.deepcopy(data_recipe[chemical_science_pack].ingredients)
    table.insert(data_recipe[deepsea_research_chemical_science_pack].ingredients, {type = fluid, name = sodium_sulfate_solution, amount = 120})
    data_recipe[deepsea_research_chemical_science_pack].surface_conditions = nil

    local deepsea_research_production_science_pack = "maraxsis-deepsea-research-production-science-pack"
    data_recipe[deepsea_research_production_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_production_science_pack].icons = R_P_I(production_science_pack, nil, sodium_hydroxide_solution_angels)
    data_recipe[deepsea_research_production_science_pack].order = a_e
    data_recipe[deepsea_research_production_science_pack].ingredients = util.table.deepcopy(data_recipe[production_science_pack].ingredients)
    table.insert(data_recipe[deepsea_research_production_science_pack].ingredients, {type = fluid, name = sodium_hydroxide_solution_angels, amount = 240})
    data_recipe[deepsea_research_production_science_pack].results[1].amount = 8
    data_recipe[deepsea_research_production_science_pack].surface_conditions = nil

    local deepsea_research_utility_science_pack = "maraxsis-deepsea-research-utility-science-pack"
    data_recipe[deepsea_research_utility_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_utility_science_pack].icons = R_P_I(utility_science_pack, nil, deuterium_angels)
    data_recipe[deepsea_research_utility_science_pack].order = a_f
    data_recipe[deepsea_research_utility_science_pack].ingredients = util.table.deepcopy(data_recipe[utility_science_pack].ingredients)
    table.insert(data_recipe[deepsea_research_utility_science_pack].ingredients, {type = fluid, name = deuterium_angels, amount = 240})
    data_recipe[deepsea_research_utility_science_pack].results[1].amount = 8
    data_recipe[deepsea_research_utility_science_pack].surface_conditions = nil

    -- LOGISTCIS
    local duct_small = "duct-small"
    data_item[duct_small].subgroup = is_maraxsis_logistics
    data_item[duct_small].order = a
    data_item[duct_small].stack_size = 32
    data_item[duct_small].weight = 31250
    data_recipe[duct_small].subgroup = is_maraxsis_logistics
    data_recipe[duct_small].order = a
    data_recipe[duct_small].ingredients =
    {
        {type = item, name = molybdenum_rhenium_plate, amount = 4},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 4}
    }
    data_storage_tank[duct_small].subgroup = is_maraxsis_logistics
    data_storage_tank[duct_small].order = a
    data_storage_tank[duct_small].fluid_box.volume = 480

    local duct_t_junction = "duct-t-junction"
    data_item[duct_t_junction].subgroup = is_maraxsis_logistics
    data_item[duct_t_junction].order = b
    data_item[duct_t_junction].stack_size = 32
    data_item[duct_t_junction].weight = 31250
    data_recipe[duct_t_junction].subgroup = is_maraxsis_logistics
    data_recipe[duct_t_junction].order = b
    data_recipe[duct_t_junction].ingredients = {{type = item, name = duct_small, amount = 2}}
    data_storage_tank[duct_t_junction].subgroup = is_maraxsis_logistics
    data_storage_tank[duct_t_junction].order = b
    data_storage_tank[duct_t_junction].fluid_box.volume = 960

    local duct_curve = "duct-curve"
    data_item[duct_curve].subgroup = is_maraxsis_logistics
    data_item[duct_curve].order = c
    data_item[duct_curve].stack_size = 32
    data_item[duct_curve].weight = 31250
    data_recipe[duct_curve].subgroup = is_maraxsis_logistics
    data_recipe[duct_curve].order = c
    data_recipe[duct_curve].ingredients = {{type = item, name = duct_small, amount = 2}}
    data_storage_tank[duct_curve].subgroup = is_maraxsis_logistics
    data_storage_tank[duct_curve].order = c
    data_storage_tank[duct_curve].fluid_box.volume = 960

    local duct_cross = "duct-cross"
    data_item[duct_cross].subgroup = is_maraxsis_logistics
    data_item[duct_cross].order = d
    data_item[duct_cross].stack_size = 32
    data_item[duct_cross].weight = 31250
    data_recipe[duct_cross].subgroup = is_maraxsis_logistics
    data_recipe[duct_cross].order = d
    data_recipe[duct_cross].ingredients = {{type = item, name = duct_small, amount = 2}}
    data_storage_tank[duct_cross].subgroup = is_maraxsis_logistics
    data_storage_tank[duct_cross].order = d
    data_storage_tank[duct_cross].fluid_box.volume = 960

    local duct_underground = "duct-underground"
    data_item[duct_underground].subgroup = is_maraxsis_logistics
    data_item[duct_underground].order = e
    data_item[duct_underground].stack_size = 32
    data_item[duct_underground].weight = 31250
    data_recipe[duct_underground].subgroup = is_maraxsis_logistics
    data_recipe[duct_underground].order = e
    data_recipe[duct_underground].energy_required = 8
    data_recipe[duct_underground].ingredients =
    {
        {type = item, name = molybdenum_rhenium_plate, amount = 4},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 4},
        {type = item, name = duct_small, amount = 48}
    }
    data_pipe_to_ground[duct_underground].subgroup = is_maraxsis_logistics
    data_pipe_to_ground[duct_underground].order = e
    data_pipe_to_ground[duct_underground].fluid_box.pipe_connections[2].max_underground_distance = 48

    local non_return_duct = "non-return-duct"
    data_item[non_return_duct].subgroup = is_maraxsis_logistics
    data_item[non_return_duct].order = f
    data_item[non_return_duct].stack_size = 32
    data_item[non_return_duct].weight = 31250
    data_recipe[non_return_duct].subgroup = is_maraxsis_logistics
    data_recipe[non_return_duct].order = f
    data_recipe[non_return_duct].ingredients =
    {
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 4},
        {type = item, name = molybdenum_rhenium_plate, amount = 16},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 16}
    }
    data_pump[non_return_duct].subgroup = is_maraxsis_logistics
    data_pump[non_return_duct].order = f
    data_pump[non_return_duct].pumping_speed = 64

    local duct_intake = "duct-intake"
    data_item[duct_intake].subgroup = is_maraxsis_logistics
    data_item[duct_intake].order = g
    data_item[duct_intake].stack_size = 32
    data_item[duct_intake].weight = 31250
    data_recipe[duct_intake].subgroup = is_maraxsis_logistics
    data_recipe[duct_intake].order = g
    data_recipe[duct_intake].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 1},
        {type = item, name = pump_4, amount = 1},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8}
    }
    data_pump[duct_intake].subgroup = is_maraxsis_logistics
    data_pump[duct_intake].order = g
    data_pump[duct_intake].pumping_speed = 64

    local duct_exhaust = "duct-exhaust"
    data_item[duct_exhaust].subgroup = is_maraxsis_logistics
    data_item[duct_exhaust].order = h
    data_item[duct_exhaust].stack_size = 32
    data_item[duct_exhaust].weight = 31250
    data_recipe[duct_exhaust].subgroup = is_maraxsis_logistics
    data_recipe[duct_exhaust].order = h
    data_recipe[duct_exhaust].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 1},
        {type = item, name = pump_4, amount = 1},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8}
    }
    data_pump[duct_exhaust].subgroup = is_maraxsis_logistics
    data_pump[duct_exhaust].order = h
    data_pump[duct_exhaust].pumping_speed = 64

    local trench_duct = "maraxsis-trench-duct"
    data_item[trench_duct].subgroup = is_maraxsis_logistics
    data_item[trench_duct].order = i
    data_item[trench_duct].stack_size = 1
    data_item[trench_duct].weight = 1000000
    data_recipe[trench_duct].subgroup = is_maraxsis_logistics
    data_recipe[trench_duct].order = i
    data_recipe[trench_duct].energy_required = 8
    data_recipe[trench_duct].ingredients =
    {
        {type = item, name = pump_4, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 128},
        {type = item, name = duct_small, amount = 128}
    }
    data_storage_tank[trench_duct].subgroup = is_maraxsis_logistics
    data_storage_tank[trench_duct].order = i
    data_storage_tank[trench_duct].fluid_box.volume = 960

    local spidertron_dock = "sp-spidertron-dock"
    data_item[spidertron_dock].subgroup = is_maraxsis_logistics
    data_item[spidertron_dock].order = j
    data_item[spidertron_dock].stack_size = 32
    data_item[spidertron_dock].weight = 31250
    data_recipe[spidertron_dock].subgroup = is_maraxsis_logistics
    data_recipe[spidertron_dock].order = j
    data_recipe[spidertron_dock].ingredients =
    {
        {type = item, name = steel_chest, amount = 4},
        {type = item, name = T5_bulk_inserter, amount = 4}
    }
    data_proxy_container[spidertron_dock].subgroup = is_maraxsis_logistics
    data_proxy_container[spidertron_dock].order = j

    data_storage_tank["duct"].fluid_box.volume = 960

    data_storage_tank["duct-long"].fluid_box.volume = 1920

    -- BUILDING POWER
    local salt_reactor = "maraxsis-salt-reactor"
    data_item[salt_reactor].subgroup = is_maraxsis_building_energy
    data_item[salt_reactor].order = a
    data_item[salt_reactor].stack_size = 4
    data_item[salt_reactor].weight = 250000
    data_recipe[salt_reactor].subgroup = is_maraxsis_building_energy
    data_recipe[salt_reactor].order = a
    data_recipe[salt_reactor].energy_required = 8
    data_recipe[salt_reactor].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 512},
        {type = item, name = lead_plate_bob, amount = 256},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 256},
        {type = item, name = reinforced_graphene_concrete_brick, amount = 512}
    }
    data_reactor_fusion[salt_reactor].subgroup = is_maraxsis_building_energy
    data_reactor_fusion[salt_reactor].order = a
    data_reactor_fusion[salt_reactor].max_fluid_usage = 240/60
    data_reactor_fusion[salt_reactor].power_input = 1800 .. kW

    local oversized_steam_turbine = "maraxsis-oversized-steam-turbine"
    data_item[oversized_steam_turbine].subgroup = is_maraxsis_building_energy
    data_item[oversized_steam_turbine].order = b
    data_item[oversized_steam_turbine].stack_size = 32
    data_item[oversized_steam_turbine].weight = 31250
    data_recipe[oversized_steam_turbine].subgroup = is_maraxsis_building_energy
    data_recipe[oversized_steam_turbine].order = b
    data_recipe[oversized_steam_turbine].energy_required = 8
    data_recipe[oversized_steam_turbine].ingredients =
    {
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 32},
        {type = item, name = niobium_iron_bearing, amount = 32},
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = niobium_iron_plate, amount = 32},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 128}
    }
    data_generator_fusion[oversized_steam_turbine].subgroup = is_maraxsis_building_energy
    data_generator_fusion[oversized_steam_turbine].order = b
    data_generator_fusion[oversized_steam_turbine].max_fluid_usage = 240/60
    data_generator_fusion[oversized_steam_turbine].energy_source.output_flow_limit = 40000 .. kW

    data_fluid[supercritical_steam_maraxsis].subgroup = is_maraxsis_building_energy
    data_fluid[supercritical_steam_maraxsis].order = c

    data_fluid[molten_salt_mods].subgroup = is_maraxsis_building_energy
    data_fluid[molten_salt_mods].order = d
    data_recipe[molten_salt_mods].subgroup = is_maraxsis_building_energy
    data_recipe[molten_salt_mods].icons = TWO_I(salt_angels, molten_salt_mods)
    data_recipe[molten_salt_mods].order = d
    data_recipe[molten_salt_mods].ingredients[1].amount = 64
    data_recipe[molten_salt_mods].results[1].amount = 960

    local msr_fuel_cell = "msr-fuel-cell"
    data_item[msr_fuel_cell].subgroup = is_maraxsis_building_energy
    data_item[msr_fuel_cell].order = e
    data_item[msr_fuel_cell].fuel_value = ((40000 * 0.9375) * 1.875) .. kJ
    data_recipe[msr_fuel_cell].subgroup = is_maraxsis_building_energy
    data_recipe[msr_fuel_cell].icon = data_item[msr_fuel_cell].icon
    data_recipe[msr_fuel_cell].order = e
    data_recipe[msr_fuel_cell].ingredients =
    {
        {type = item, name = uranium_235, amount = 1},
        {type = item, name = lead_plate_bob, amount = 8},
        {type = fluid, name = molten_salt_mods, amount = 480}
    }

    -- BUILDING
    local hydro_plant = "maraxsis-hydro-plant"
    data_item[hydro_plant].subgroup = is_maraxsis_building
    data_item[hydro_plant].order = a
    data_item[hydro_plant].stack_size = 32
    data_item[hydro_plant].weight = 31250
    data_recipe[hydro_plant].subgroup = is_maraxsis_building
    data_recipe[hydro_plant].order = a
    data_recipe[hydro_plant].energy_required = 4
    data_recipe[hydro_plant].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = molybdenum_rhenium_pipe, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 16},
        {type = fluid, name = water_saline_angels, amount = 240}
    }
    data_assembling[hydro_plant].subgroup = is_maraxsis_building
    data_assembling[hydro_plant].order = a
    data_assembling[hydro_plant].energy_usage = (2400 - 60) .. kW
    data_assembling[hydro_plant].energy_source.drain = 60 .. kW

    local pressure_dome = "maraxsis-pressure-dome"
    data_item[pressure_dome].subgroup = is_maraxsis_building
    data_item[pressure_dome].order = b
    data_item[pressure_dome].stack_size = 8
    data_item[pressure_dome].weight = 125000
    data_recipe[pressure_dome].subgroup = is_maraxsis_building
    data_recipe[pressure_dome].order = b
    data_recipe[pressure_dome].energy_required = 8
    data_recipe[pressure_dome].ingredients =
    {
        {type = item, name = molybdenum_rhenium_pipe, amount = 32},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 128},
        {type = item, name = glass_bob, amount = 512}
    }
    data_roboport[pressure_dome].subgroup = is_maraxsis_building
    data_roboport[pressure_dome].order = b

    local regulator = "maraxsis-regulator"
    data_roboport[regulator].subgroup = is_maraxsis_building
    data_roboport[regulator].order = c
    data_roboport[regulator].energy_source.buffer_capacity = (14400 * 100) .. kJ -- 200MJ
    data_roboport[regulator].energy_source.input_flow_limit = 14400 .. kW -- 12.5MW
    data_roboport[regulator].energy_usage = (4 * 60) .. kW -- 100kW
    data_roboport[regulator].charging_energy = 3600 .. kW -- 2500kW
    data_roboport[regulator].recharge_minimum = 36000 .. kJ -- 40000kJ

    local fishing_tower = "maraxsis-fishing-tower"
    data_item[fishing_tower].subgroup = is_maraxsis_building
    data_item[fishing_tower].order = d
    data_item[fishing_tower].stack_size = 32
    data_item[fishing_tower].weight = 31250
    data_recipe[fishing_tower].subgroup = is_maraxsis_building
    data_recipe[fishing_tower].order = d
    data_recipe[fishing_tower].energy_required = 4
    data_recipe[fishing_tower].ingredients =
    {
        {type = item, name = glass_bob, amount = 8},
        {type = item, name = agricultural_tower, amount = 1},
        {type = item, name = coral_maraxsis, amount = 8}
    }
    data_agricultural_tower[fishing_tower].subgroup = is_maraxsis_building
    data_agricultural_tower[fishing_tower].order = d
    data_agricultural_tower[fishing_tower].energy_usage = 120 .. kW

    -- WAR
    local diesel_submarine = "maraxsis-diesel-submarine"
    data_item_entity[diesel_submarine].subgroup = is_maraxsis_war
    data_item_entity[diesel_submarine].order = a
    data_recipe[diesel_submarine].subgroup = is_maraxsis_war
    data_recipe[diesel_submarine].order = a
    data_recipe[diesel_submarine].energy_required = 8
    data_recipe[diesel_submarine].ingredients =
    {
        {type = item, name = engine_unit, amount = 8},
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 32},
        {type = item, name = pump_4, amount = 4}
    }
    data_spider_vechicle[diesel_submarine].subgroup = is_maraxsis_war
    data_spider_vechicle[diesel_submarine].order = a
    data_spider_vechicle[diesel_submarine].movement_energy_consumption = 14400 .. kW

    local sonar = "maraxsis-sonar"
    data_item[sonar].subgroup = is_maraxsis_war
    data_item[sonar].order = b
    data_recipe[sonar].subgroup = is_maraxsis_war
    data_recipe[sonar].order = b
    data_radar[sonar].subgroup = is_maraxsis_war
    data_radar[sonar].order = b

    local nuclear_submarine = "maraxsis-nuclear-submarine"
    data_item_entity[nuclear_submarine].subgroup = is_maraxsis_war
    data_item_entity[nuclear_submarine].order = c
    data_recipe[nuclear_submarine].subgroup = is_maraxsis_war
    data_recipe[nuclear_submarine].order = c
    data_recipe[nuclear_submarine].energy_required = 8
    data_recipe[nuclear_submarine].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 64},
        {type = item, name = glass_bob, amount = 128},
        {type = item, name = pump_4, amount = 8},
        {type = item, name = super_sealant_substance_maraxsis, amount = 128},
        {type = item, name = salt_reactor, amount = 1},
        {type = item, name = sonar, amount = 1}
    }
    data_spider_vechicle[nuclear_submarine].subgroup = is_maraxsis_war
    data_spider_vechicle[nuclear_submarine].order = c
    data_spider_vechicle[nuclear_submarine].movement_energy_consumption = 7200 .. kW

    local big_cliff_explosives = "maraxsis-big-cliff-explosives"
    data_capsule[big_cliff_explosives].subgroup = is_maraxsis_war
    data_capsule[big_cliff_explosives].order = d
    data_capsule[big_cliff_explosives].stack_size = 200
    data_recipe[big_cliff_explosives].subgroup = is_maraxsis_war
    data_recipe[big_cliff_explosives].order = d
    data_recipe[big_cliff_explosives].energy_required = 8

    local fat_man = "maraxsis-fat-man"
    data_ammo[fat_man].subgroup = is_maraxsis_war
    data_ammo[fat_man].order = e
    data_ammo[fat_man].stack_size = 32
    data_ammo[fat_man].weight = 31250
    data_recipe[fat_man].subgroup = is_maraxsis_war
    data_recipe[fat_man].order = e
    data_recipe[fat_man].energy_required = 8

    local pipe_bomb = "maraxsis-pipe-bomb"
    data_recipe[pipe_bomb].subgroup = is_maraxsis_war
    data_recipe[pipe_bomb].icons = BUILDING_R_I(grenade, explosives)
    data_recipe[pipe_bomb].order = f
    data_recipe[pipe_bomb].ingredients =
    {
        {type = item, name = iron_plate, amount = 4},
        {type = item, name = explosives, amount = 4}
    }

    local abyssal_diving_gear = "maraxsis-abyssal-diving-gear"
    data_item[abyssal_diving_gear].subgroup = is_maraxsis_war
    data_item[abyssal_diving_gear].order = g
    data_item[abyssal_diving_gear].stack_size = 1
    data_item[abyssal_diving_gear].weight = 1000000
    data_recipe[abyssal_diving_gear].subgroup = is_maraxsis_war
    data_recipe[abyssal_diving_gear].order = g
    data_recipe[abyssal_diving_gear].energy_required = 8
    data_recipe[abyssal_diving_gear].ingredients =
    {
        {type = item, name = low_density_structure, amount = 8},
        {type = item, name = molybdenum_rhenium_pipe_to_ground, amount = 2},
        {type = item, name = glass_bob, amount = 64},
        {type = item, name = pump_4, amount = 1},
        {type = item, name = quantum_processor, amount = 16},
        {type = item, name = super_sealant_substance_maraxsis, amount = 64}
    }
    data_movement_bonus_eq[abyssal_diving_gear].subgroup = is_maraxsis_war
    data_movement_bonus_eq[abyssal_diving_gear].order = g
    data_movement_bonus_eq[abyssal_diving_gear].movement_bonus = 0.25
    data_movement_bonus_eq[abyssal_diving_gear].energy_consumption = 480 .. kW

    bobmods.lib.recipe.update_recycling_recipe
    ({
        fish_food,
        wyrm_confinement_cell,
        empty_research_vessel,
        duct_small,
        duct_t_junction,
        duct_curve,
        duct_cross,
        duct_underground,
        non_return_duct,
        duct_intake,
        duct_exhaust,
        trench_duct,
        spidertron_dock,
        salt_reactor,
        oversized_steam_turbine,
        hydro_plant,
        pressure_dome,
        fishing_tower,
        diesel_submarine,
        nuclear_submarine,
        sonar,
        abyssal_diving_gear
    })

    -- TECHNOLOGY
    planet_discovery_maraxsis = "planet-discovery-maraxsis"
    table.insert(data_technology[planet_discovery_maraxsis].effects, {type = unlock_recipe, recipe = spidertron_dock})

    data_technology[hydro_plant].effects =
    {
        {type = unlock_recipe, recipe = hydro_plant},
        {type = unlock_recipe, recipe = salt_filter_maraxsis},
        {type = unlock_recipe, recipe = salt_filter_cleaning},
        {type = unlock_recipe, recipe = water_brackish_maraxsis},
        {type = unlock_recipe, recipe = maraxsis_salt},
        {type = unlock_recipe, recipe = maraxsis_water},
        {type = unlock_recipe, recipe = hydrolox_rocket_fuel}
    }

    data_technology["maraxsis-glassworking"].effects =
    {
        {type = unlock_recipe, recipe = maraxsis_air},
        {type = unlock_recipe, recipe = maraxsis_air_separation},
        {type = unlock_recipe, recipe = pressure_dome},
        {type = unlock_recipe, recipe = sand_extraction}
    }

    data_technology["maraxsis-project-seadragon"].prerequisites = {hydraulic_science_pack}

    data_technology["maraxsis-deepsea-research"].prerequisites = {"maraxsis-research-vessel"}

    local tech_glass = "maraxsis-glass"
    data_technology[tech_glass .. _productivity].effects = {}
    local function add_recipe_for_glass_productivity(recipe)
        table.insert(data_technology[tech_glass .. _productivity].effects, {type = change_recipe_productivity, recipe = recipe, change = 0.1})
    end
    add_recipe_for_glass_productivity(glass_bob)
    add_recipe_for_glass_productivity(glass_angels)
    add_recipe_for_glass_productivity(casting_glass)
    if mods[moshine_mods] then
        add_recipe_for_glass_productivity(glass_mods)
    end
    if mods[arig_mods] then
        add_recipe_for_glass_productivity(glass_arig)
    end

    local tech_promethium = "maraxsis-promethium"
    data_technology[tech_promethium .. _productivity].effects = {}
    local function add_recipe_for_promethium_productivity(recipe)
        table.insert(data_technology[tech_promethium .. _productivity].effects, {type = change_recipe_productivity, recipe = recipe, change = 0.1})
    end
    add_recipe_for_promethium_productivity(promethium_science_pack)
    if mods[hyarion_mods]then
        add_recipe_for_promethium_productivity(promethium_science_pack_hyarion)
    end
    if mods[moshine_mods] then
        add_recipe_for_promethium_productivity(promethium_ore)
    end

    table.insert(data_technology[quantum_processor].prerequisites, hydraulic_science_pack)
end