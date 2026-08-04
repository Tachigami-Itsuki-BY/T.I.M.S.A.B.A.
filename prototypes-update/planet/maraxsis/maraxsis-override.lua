-- [font=default-tiny-bold][/font]

if mods[maraxsis_mods] then
    local duct_small = "duct-small"
    data_item[duct_small].subgroup = is_maraxsis_logistics
    data_item[duct_small].order = a
    data_item[duct_small].stack_size = 32
    data_item[duct_small].weight = 31250
    data_recipe[duct_small].subgroup = is_maraxsis_logistics
    data_recipe[duct_small].order = a
    data_storage_tank[duct_small].subgroup = is_maraxsis_logistics
    data_storage_tank[duct_small].order = a

    local duct_t_junction = "duct-t-junction"
    data_item[duct_t_junction].subgroup = is_maraxsis_logistics
    data_item[duct_t_junction].order = b
    data_item[duct_t_junction].stack_size = 32
    data_item[duct_t_junction].weight = 31250
    data_recipe[duct_t_junction].subgroup = is_maraxsis_logistics
    data_recipe[duct_t_junction].order = b
    data_storage_tank[duct_t_junction].subgroup = is_maraxsis_logistics
    data_storage_tank[duct_t_junction].order = b

    local duct_curve = "duct-curve"
    data_item[duct_curve].subgroup = is_maraxsis_logistics
    data_item[duct_curve].order = c
    data_item[duct_curve].stack_size = 32
    data_item[duct_curve].weight = 31250
    data_recipe[duct_curve].subgroup = is_maraxsis_logistics
    data_recipe[duct_curve].order = c
    data_storage_tank[duct_curve].subgroup = is_maraxsis_logistics
    data_storage_tank[duct_curve].order = c

    local duct_cross = "duct-cross"
    data_item[duct_cross].subgroup = is_maraxsis_logistics
    data_item[duct_cross].order = d
    data_item[duct_cross].stack_size = 32
    data_item[duct_cross].weight = 31250
    data_recipe[duct_cross].subgroup = is_maraxsis_logistics
    data_recipe[duct_cross].order = d
    data_storage_tank[duct_cross].subgroup = is_maraxsis_logistics
    data_storage_tank[duct_cross].order = d

    local duct_underground = "duct-underground"
    data_item[duct_underground].subgroup = is_maraxsis_logistics
    data_item[duct_underground].order = e
    data_item[duct_underground].stack_size = 32
    data_item[duct_underground].weight = 31250
    data_recipe[duct_underground].subgroup = is_maraxsis_logistics
    data_recipe[duct_underground].order = e
    data_pipe_to_ground[duct_underground].subgroup = is_maraxsis_logistics
    data_pipe_to_ground[duct_underground].order = e

    local non_return_duct = "non-return-duct"
    data_item[non_return_duct].subgroup = is_maraxsis_logistics
    data_item[non_return_duct].order = f
    data_item[non_return_duct].stack_size = 32
    data_item[non_return_duct].weight = 31250
    data_recipe[non_return_duct].subgroup = is_maraxsis_logistics
    data_recipe[non_return_duct].order = f
    data_pump[non_return_duct].subgroup = is_maraxsis_logistics
    data_pump[non_return_duct].order = f

    local duct_intake = "duct-intake"
    data_item[duct_intake].subgroup = is_maraxsis_logistics
    data_item[duct_intake].order = g
    data_item[duct_intake].stack_size = 32
    data_item[duct_intake].weight = 31250
    data_recipe[duct_intake].subgroup = is_maraxsis_logistics
    data_recipe[duct_intake].order = g
    data_pump[duct_intake].subgroup = is_maraxsis_logistics
    data_pump[duct_intake].order = g

    local duct_exhaust = "duct-exhaust"
    data_item[duct_exhaust].subgroup = is_maraxsis_logistics
    data_item[duct_exhaust].order = h
    data_item[duct_exhaust].stack_size = 32
    data_item[duct_exhaust].weight = 31250
    data_recipe[duct_exhaust].subgroup = is_maraxsis_logistics
    data_recipe[duct_exhaust].order = h
    data_pump[duct_exhaust].subgroup = is_maraxsis_logistics
    data_pump[duct_exhaust].order = h

    local trench_duct = "maraxsis-trench-duct"
    data_item[trench_duct].subgroup = is_maraxsis_logistics
    data_item[trench_duct].order = i
    data_item[trench_duct].stack_size = 1
    data_item[trench_duct].weight = 1000000
    data_recipe[trench_duct].subgroup = is_maraxsis_logistics
    data_recipe[trench_duct].order = i
    data_storage_tank[trench_duct].subgroup = is_maraxsis_logistics
    data_storage_tank[trench_duct].order = i

    local data_proxy_container = data.raw["proxy-container"]
    local spidertron_dock = "sp-spidertron-dock"
    data_item[spidertron_dock].subgroup = is_maraxsis_logistics
    data_item[spidertron_dock].order = j
    data_item[spidertron_dock].stack_size = 32
    data_item[spidertron_dock].weight = 31250
    data_recipe[spidertron_dock].subgroup = is_maraxsis_logistics
    data_recipe[spidertron_dock].order = j
    data_proxy_container[spidertron_dock].subgroup = is_maraxsis_logistics
    data_proxy_container[spidertron_dock].order = j

    local salt_reactor = "maraxsis-salt-reactor"
    data_item[salt_reactor].subgroup = is_maraxsis_building_energy
    data_item[salt_reactor].order = a
    data_recipe[salt_reactor].subgroup = is_maraxsis_building_energy
    data_recipe[salt_reactor].order = a
    data_reactor_fusion[salt_reactor].subgroup = is_maraxsis_building_energy
    data_reactor_fusion[salt_reactor].order = a

    local oversized_steam_turbine = "maraxsis-oversized-steam-turbine"
    data_item[oversized_steam_turbine].subgroup = is_maraxsis_building_energy
    data_item[oversized_steam_turbine].order = b
    data_item[oversized_steam_turbine].stack_size = 32
    data_item[oversized_steam_turbine].weight = 31250
    data_recipe[oversized_steam_turbine].subgroup = is_maraxsis_building_energy
    data_recipe[oversized_steam_turbine].order = b
    data_generator_fusion[oversized_steam_turbine].subgroup = is_maraxsis_building_energy
    data_generator_fusion[oversized_steam_turbine].order = b

    data_fluid[molten_salt_mods].subgroup = is_maraxsis_building_energy
    data_fluid[molten_salt_mods].order = c
    data_recipe[molten_salt_mods].subgroup = is_maraxsis_building_energy
    data_recipe[molten_salt_mods].icons = TWO_I(salt_angels, molten_salt_mods)
    data_recipe[molten_salt_mods].order = c

    local msr_fuel_cell = "msr-fuel-cell"
    data_item[msr_fuel_cell].subgroup = is_maraxsis_building_energy
    data_item[msr_fuel_cell].order = d
    data_recipe[msr_fuel_cell].subgroup = is_maraxsis_building_energy
    data_recipe[msr_fuel_cell].icons = FOUR_I(uranium_238, glass_bob, molten_salt_mods, msr_fuel_cell)
    data_recipe[msr_fuel_cell].order = d

    data_fluid[supercritical_steam_maraxsis].subgroup = is_maraxsis_building_energy
    data_fluid[supercritical_steam_maraxsis].order = e

    local hydro_plant = "maraxsis-hydro-plant"
    data_item[hydro_plant].subgroup = is_maraxsis_building
    data_item[hydro_plant].order = a
    data_item[hydro_plant].stack_size = 32
    data_item[hydro_plant].weight = 31250
    data_recipe[hydro_plant].subgroup = is_maraxsis_building
    data_recipe[hydro_plant].order = a
    data_assembling[hydro_plant].subgroup = is_maraxsis_building
    data_assembling[hydro_plant].order = a

    local pressure_dome = "maraxsis-pressure-dome"
    data_item[pressure_dome].subgroup = is_maraxsis_building
    data_item[pressure_dome].order = b
    data_item[pressure_dome].stack_size = 8
    data_item[pressure_dome].weight = 125000
    data_recipe[pressure_dome].subgroup = is_maraxsis_building
    data_recipe[pressure_dome].order = b
    data_roboport[pressure_dome].subgroup = is_maraxsis_building
    data_roboport[pressure_dome].order = b

    local fishing_tower = "maraxsis-fishing-tower"
    data_item[fishing_tower].subgroup = is_maraxsis_building_fish
    data_item[fishing_tower].order = a
    data_item[fishing_tower].stack_size = 32
    data_item[fishing_tower].weight = 31250
    data_recipe[fishing_tower].subgroup = is_maraxsis_building_fish
    data_recipe[fishing_tower].order = a
    data_agricultural_tower[fishing_tower].subgroup = is_maraxsis_building_fish
    data_agricultural_tower[fishing_tower].order = a

    data_item[coral_maraxsis].subgroup = is_maraxsis_building_fish
    data_item[coral_maraxsis].order = b
    data_item[coral_maraxsis].weight = 5000

    data_capsule[tropical_fish_maraxsis].subgroup = is_maraxsis_building_fish
    data_capsule[tropical_fish_maraxsis].order = c
    data_capsule[tropical_fish_maraxsis].stack_size = 200
    data_capsule[tropical_fish_maraxsis].weight = 5000

    local fish_food = "maraxsis-fish-food"
    data_item[fish_food].subgroup = is_maraxsis_building_fish
    data_item[fish_food].order = d
    data_item[fish_food].stack_size = 200
    data_item[fish_food].weight = 5000
    data_recipe[fish_food].subgroup = is_maraxsis_building_fish
    data_recipe[fish_food].icons = TWO_FIVE_I(coral_maraxsis, tropical_fish_maraxsis, nil, sand_angels, plastic, jelly, fish_food)
    data_recipe[fish_food].order = d

    local maraxsis_carbon = "maraxsis-carbon"
    data_recipe[maraxsis_carbon].subgroup = is_maraxsis_building_fish
    data_recipe[maraxsis_carbon].icons = TWO_I(tropical_fish_maraxsis, carbon_angels)
    data_recipe[maraxsis_carbon].order = d_a

    local nutrients_from_tropical_fish = "maraxsis-nutrients-from-tropical-fish"
    data_recipe[nutrients_from_tropical_fish].subgroup = is_maraxsis_building_fish
    data_recipe[nutrients_from_tropical_fish].icons = TWO_I(tropical_fish_maraxsis, nutrients)
    data_recipe[nutrients_from_tropical_fish].order = d_b

    local microplastics = "maraxsis-microplastics"
    data_item[microplastics].subgroup = is_maraxsis_building_fish
    data_item[microplastics].order = e
    data_item[microplastics].stack_size = 200
    data_item[microplastics].weight = 5000
    data_recipe[microplastics].subgroup = is_maraxsis_building_fish
    data_recipe[microplastics].icons = THREE_R_I(tropical_fish_maraxsis, microplastics, jelly)
    data_recipe[microplastics].order = e
    data_recipe[microplastics].ingredients = {{type = item, name = tropical_fish_maraxsis, amount = 1}}

    local smelt_microplastics = "maraxsis-smelt-microplastics"
    data_recipe[smelt_microplastics].subgroup = is_maraxsis_building_fish
    data_recipe[smelt_microplastics].icons = TWO_I(microplastics, plastic)
    data_recipe[smelt_microplastics].order = e_a

    local wyrm_confinement_cell = "maraxsis-wyrm-confinement-cell"
    data_item[wyrm_confinement_cell].subgroup = is_maraxsis_building_fish
    data_item[wyrm_confinement_cell].order = f
    data_item[wyrm_confinement_cell].stack_size = 200
    data_item[wyrm_confinement_cell].weight = 5000
    data_recipe[wyrm_confinement_cell].subgroup = is_maraxsis_building_fish
    data_recipe[wyrm_confinement_cell].icons = THREE_I(glass_bob, steel_plate, wyrm_confinement_cell)
    data_recipe[wyrm_confinement_cell].order = f

    local wyrm_specimen = "maraxsis-wyrm-specimen"
    data_item[wyrm_specimen].subgroup = is_maraxsis_building_fish
    data_item[wyrm_specimen].order = g
    data_item[wyrm_specimen].stack_size = 200
    data_item[wyrm_specimen].weight = 5000
    data_recipe[wyrm_specimen].subgroup = is_maraxsis_building_fish
    data_recipe[wyrm_specimen].icons = THREE_I(fish_food, wyrm_confinement_cell, wyrm_specimen)
    data_recipe[wyrm_specimen].order = g

    local diesel_submarine = "maraxsis-diesel-submarine"
    data_item_entity[diesel_submarine].subgroup = is_maraxsis_war
    data_item_entity[diesel_submarine].order = a
    data_recipe[diesel_submarine].subgroup = is_maraxsis_war
    data_recipe[diesel_submarine].order = a
    data_spider_vechicle[diesel_submarine].subgroup = is_maraxsis_war
    data_spider_vechicle[diesel_submarine].order = a

    local maraxsis_sonar = "maraxsis-sonar"
    data_item[maraxsis_sonar].subgroup = is_maraxsis_war
    data_item[maraxsis_sonar].order = b
    data_recipe[maraxsis_sonar].subgroup = is_maraxsis_war
    data_recipe[maraxsis_sonar].order = b
    data_radar[maraxsis_sonar].subgroup = is_maraxsis_war
    data_radar[maraxsis_sonar].order = b

    local maraxsis_nuclear_submarine = "maraxsis-nuclear-submarine"
    data_item_entity[maraxsis_nuclear_submarine].subgroup = is_maraxsis_war
    data_item_entity[maraxsis_nuclear_submarine].order = c
    data_recipe[maraxsis_nuclear_submarine].subgroup = is_maraxsis_war
    data_recipe[maraxsis_nuclear_submarine].order = c
    data_spider_vechicle[maraxsis_nuclear_submarine].subgroup = is_maraxsis_war
    data_spider_vechicle[maraxsis_nuclear_submarine].order = c

    local maraxsis_big_cliff_explosives = "maraxsis-big-cliff-explosives"
    data_capsule[maraxsis_big_cliff_explosives].subgroup = is_maraxsis_war
    data_capsule[maraxsis_big_cliff_explosives].order = d
    data_recipe[maraxsis_big_cliff_explosives].subgroup = is_maraxsis_war
    data_recipe[maraxsis_big_cliff_explosives].icons = THREE_D_I(cliff_explosives, atomic_rocket, super_sealant_substance_maraxsis, maraxsis_big_cliff_explosives)
    data_recipe[maraxsis_big_cliff_explosives].order = d

    local maraxsis_fat_man = "maraxsis-fat-man"
    data_ammo[maraxsis_fat_man].subgroup = is_maraxsis_war
    data_ammo[maraxsis_fat_man].order = e
    data_recipe[maraxsis_fat_man].subgroup = is_maraxsis_war
    data_recipe[maraxsis_fat_man].icons = THREE_D_I(artillery_shell, atomic_rocket, super_sealant_substance_maraxsis, maraxsis_fat_man)
    data_recipe[maraxsis_fat_man].order = e

    local maraxsis_pipe_bomb = "maraxsis-pipe-bomb"
    data_recipe[maraxsis_pipe_bomb].subgroup = is_maraxsis_war
    data_recipe[maraxsis_pipe_bomb].icons = THREE_I(iron_pipe, explosives, grenade)
    data_recipe[maraxsis_pipe_bomb].order = f

    local maraxsis_abyssal_diving_gear = "maraxsis-abyssal-diving-gear"
    data_item[maraxsis_abyssal_diving_gear].subgroup = is_maraxsis_war
    data_item[maraxsis_abyssal_diving_gear].order = g
    data_recipe[maraxsis_abyssal_diving_gear].subgroup = is_maraxsis_war
    data_recipe[maraxsis_abyssal_diving_gear].order = g
    data_movement_bonus_equipment[maraxsis_abyssal_diving_gear].subgroup = is_maraxsis_war
    data_movement_bonus_equipment[maraxsis_abyssal_diving_gear].order = g

    data_fluid[water_saline_maraxsis].auto_barrel = false

    data_fluid[water_brackish_maraxsis].subgroup = is_maraxsis_recipe
    data_fluid[water_brackish_maraxsis].order = b
    data_recipe[water_brackish_maraxsis].subgroup = is_maraxsis_recipe
    data_recipe[water_brackish_maraxsis].icons = TWO_D_I(water_saline_angels, salt_filter_maraxsis, water_brackish_maraxsis, saturated_salt_filter_maraxsis)
    data_recipe[water_brackish_maraxsis].order = b

    local maraxsis_salt = "maraxsis-salt"
    data_recipe[maraxsis_salt].subgroup = is_maraxsis_recipe
    data_recipe[maraxsis_salt].icons = FOUR_R_I(water_brackish_maraxsis, oxygen_angels, slag_angels, hydrogen_angels, number_1)
    data_recipe[maraxsis_salt].order = b_a

    data_recipe[salt_mods].subgroup = is_maraxsis_recipe
    data_recipe[salt_mods].icons = FOUR_R_I(water_brackish_maraxsis, oxygen_angels, salt_angels, hydrogen_angels)
    data_recipe[salt_mods].order = c

    local maraxsis_water = "maraxsis-water"
    data_recipe[maraxsis_water].subgroup = is_maraxsis_recipe
    data_recipe[maraxsis_water].icons = THREE_I(oxygen_angels, hydrogen_angels, water)
    data_recipe[maraxsis_water].order = c_a

    data_item[salt_filter_maraxsis].subgroup = is_maraxsis_recipe
    data_item[salt_filter_maraxsis].order = d
    data_item[salt_filter_maraxsis].stack_size = 200
    data_item[salt_filter_maraxsis].weight = 5000
    data_recipe[salt_filter_maraxsis].subgroup = is_maraxsis_recipe
    data_recipe[salt_filter_maraxsis].icons = THREE_I(steel_plate, carbon_fiber, salt_filter_maraxsis)
    data_recipe[salt_filter_maraxsis].order = d

    data_item[saturated_salt_filter_maraxsis].subgroup = is_maraxsis_recipe
    data_item[saturated_salt_filter_maraxsis].order = e
    data_item[saturated_salt_filter_maraxsis].stack_size = 200
    data_item[saturated_salt_filter_maraxsis].weight = 5000

    local salt_filter_cleaning = "maraxsis-salt-filter-cleaning"
    data_recipe[salt_filter_cleaning].subgroup = is_maraxsis_recipe
    data_recipe[salt_filter_cleaning].icons = TWO_D_I(saturated_salt_filter_maraxsis, water, salt_filter_maraxsis, water_brackish_maraxsis)
    data_recipe[salt_filter_cleaning].order = e_a
    data_recipe[salt_filter_cleaning].results =
    {
        {type = item, name = salt_filter_maraxsis, amount = 1},
        {type = fluid, name = water_brackish_maraxsis, amount = 20}
    }
    data_recipe[salt_filter_cleaning].main_product = salt_filter_maraxsis

    local hydrolox_rocket_fuel = "maraxsis-hydrolox-rocket-fuel"
    data_recipe[hydrolox_rocket_fuel].subgroup = is_maraxsis_recipe
    data_recipe[hydrolox_rocket_fuel].icons = THREE_I(oxygen_angels, hydrogen_angels, rocket_fuel)
    data_recipe[hydrolox_rocket_fuel].order = e_b

    local sand_extraction = "maraxsis-sand-extraction"
    data_recipe[sand_extraction].subgroup = is_maraxsis_recipe
    data_recipe[sand_extraction].order = f_a

    local glass_panes = "maraxsis-glass-panes"
    data_recipe[glass_panes].subgroup = is_maraxsis_recipe
    data_recipe[glass_panes].icons = THREE_D_I(sand_angels, limestone_angels, salt_angels, glass_bob)
    data_recipe[glass_panes].order = g

    -- data_fluid[maraxsis_atmosphere] --> "mods-update/mods/mods-override"
    -- data_recipe[maraxsis_atmosphere] --> "mods-update/mods/mods-override"

    local limestone_processing = "maraxsis-limestone-processing"
    data_recipe[limestone_processing].subgroup = is_maraxsis_recipe
    data_recipe[limestone_processing].icons = THREE_R_I(limestone_angels, calcite, stone)
    data_recipe[limestone_processing].order = h_a

    local geothermal_sulfur = "maraxsis-geothermal-sulfur"
    data_recipe[geothermal_sulfur].subgroup = is_maraxsis_recipe
    data_recipe[geothermal_sulfur].icons = THREE_I(steam, lava, sulfur)
    data_recipe[geothermal_sulfur].order = h_b

    local hydraulic_science_pack = "hydraulic-science-pack"
    data_tool[hydraulic_science_pack].subgroup = is_maraxsis_recipe
    data_tool[hydraulic_science_pack].order = i
    data_recipe[hydraulic_science_pack].subgroup = is_maraxsis_recipe
    data_recipe[hydraulic_science_pack].order = i

    local maraxsis_rocket_part = "maraxsis-rocket-part"
    data_recipe[maraxsis_rocket_part].subgroup = is_maraxsis_recipe
    data_recipe[maraxsis_rocket_part].icons = R_P_I(rocket_part, planet_maraxsis)
    data_recipe[maraxsis_rocket_part].order = j

    data_item[super_sealant_substance_maraxsis].subgroup = is_maraxsis_recipe
    data_item[super_sealant_substance_maraxsis].order = k
    data_item[super_sealant_substance_maraxsis].stack_size = 200
    data_item[super_sealant_substance_maraxsis].weight = 5000
    data_recipe[super_sealant_substance_maraxsis].subgroup = is_maraxsis_recipe
    data_recipe[super_sealant_substance_maraxsis].icons = THREE_D_I(sulfur, naphtha_angels, hydrogen_angels, super_sealant_substance_maraxsis)
    data_recipe[super_sealant_substance_maraxsis].order = k

    local petroleum_gas_cracking = "maraxsis-petroleum-gas-cracking"
    data_recipe[petroleum_gas_cracking].subgroup = is_maraxsis_recipe
    data_recipe[petroleum_gas_cracking].icons = THREE_I(methane_angels, water, naphtha_angels)
    data_recipe[petroleum_gas_cracking].order = k_a

    local stone_centrifuging = "maraxsis-stone-centrifuging"
    data_recipe[stone_centrifuging].subgroup = is_maraxsis_recipe
    data_recipe[stone_centrifuging].icons = TWO_I(stone, uranium_ore)
    data_recipe[stone_centrifuging].order = k_b

    data_fluid[liquid_atmosphere_maraxsis].subgroup = is_maraxsis_recipe
    data_fluid[liquid_atmosphere_maraxsis].order = l
    data_fluid[liquid_atmosphere_maraxsis].auto_barrel = false
    data_recipe[liquid_atmosphere_maraxsis].subgroup = is_maraxsis_recipe
    data_recipe[liquid_atmosphere_maraxsis].icons = CORNER_I(atmosphere_maraxsis, nil, fluoroketone_cold, liquid_atmosphere_maraxsis, fluoroketone_hot)
    data_recipe[liquid_atmosphere_maraxsis].order = l

    local liquid_atmosphere_decompression = "maraxsis-liquid-atmosphere-decompression"
    data_recipe[liquid_atmosphere_decompression].subgroup = is_maraxsis_recipe
    data_recipe[liquid_atmosphere_decompression].icons = TWO_I(liquid_atmosphere_maraxsis, atmosphere_maraxsis)
    data_recipe[liquid_atmosphere_decompression].order = l_a

    local holmium_recrystalization = "maraxsis-holmium-recrystalization"
    data_recipe[holmium_recrystalization].subgroup = is_maraxsis_recipe
    data_recipe[holmium_recrystalization].icons = THREE_I(holmium_solution, holmium, holmium_plate)
    data_recipe[holmium_recrystalization].order = l_b

    local empty_research_vessel = "maraxsis-empty-research-vessel"
    data_item[empty_research_vessel].subgroup = is_maraxsis_science
    data_item[empty_research_vessel].order = a
    data_item[empty_research_vessel].stack_size = 200
    data_item[empty_research_vessel].weight = 5000
    data_recipe[empty_research_vessel].subgroup = is_maraxsis_science
    data_recipe[empty_research_vessel].icons = THREE_I(steel_plate, glass_bob, empty_research_vessel)
    data_recipe[empty_research_vessel].order = a

    local deepsea_research_automation_science_pack = "maraxsis-deepsea-research-automation-science-pack"
    data_recipe[deepsea_research_automation_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_automation_science_pack].icons = R_P_I(automation_science_pack, planet_trench_maraxsis, water_saline_angels)
    data_recipe[deepsea_research_automation_science_pack].order = a_a

    local deepsea_research_logistic_science_pack = "maraxsis-deepsea-research-logistic-science-pack"
    data_recipe[deepsea_research_logistic_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_logistic_science_pack].icons = R_P_I(logistic_science_pack, planet_trench_maraxsis, water_brackish_maraxsis)
    data_recipe[deepsea_research_logistic_science_pack].order = a_b

    local deepsea_research_military_science_pack = "maraxsis-deepsea-research-military-science-pack"
    data_recipe[deepsea_research_military_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_military_science_pack].icons = R_P_I(military_science_pack, planet_trench_maraxsis, lava)
    data_recipe[deepsea_research_military_science_pack].order = a_c

    local deepsea_research_chemical_science_pack = "maraxsis-deepsea-research-chemical-science-pack"
    data_recipe[deepsea_research_chemical_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_chemical_science_pack].icons = R_P_I(chemical_science_pack, planet_trench_maraxsis, water)
    data_recipe[deepsea_research_chemical_science_pack].order = a_d

    local deepsea_research_production_science_pack = "maraxsis-deepsea-research-production-science-pack"
    data_recipe[deepsea_research_production_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_production_science_pack].icons = R_P_I(production_science_pack, planet_trench_maraxsis, oxygen_angels)
    data_recipe[deepsea_research_production_science_pack].order = a_e

    local deepsea_research_utility_science_pack = "maraxsis-deepsea-research-utility-science-pack"
    data_recipe[deepsea_research_utility_science_pack].subgroup = is_maraxsis_science
    data_recipe[deepsea_research_utility_science_pack].icons = R_P_I(utility_science_pack, planet_trench_maraxsis, hydrogen_angels)
    data_recipe[deepsea_research_utility_science_pack].order = a_f

    data_technology["maraxsis-project-seadragon"].prerequisites = {hydraulic_science_pack}

    data_technology["maraxsis-deepsea-research"].prerequisites = {liquid_atmosphere_maraxsis, stone_centrifuging, "maraxsis-research-vessel"}
end