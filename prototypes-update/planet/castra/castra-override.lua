if mods[castra_mods] then
    data_resource[uranium_ore].minable.required_fluid = sulfuric_acid_angels

    -- GUNPOWDER
    data_item[gunpowder].localised_description = show_formula and {chemical_formula, "KNO[font=default-tiny-bold]3[/font]SC"} or nil
    data_item[gunpowder].subgroup = is_gunpowder
    data_item[gunpowder].order = a
    data_resource[gunpowder].subgroup = is_gunpowder
    data_resource[gunpowder].order = a

    local explosives_gunpowder = "explosives-gunpowder"
    data_recipe[explosives_gunpowder].subgroup = is_gunpowder
    data_recipe[explosives_gunpowder].icons = THREE_I(gunpowder, water_purified_angels, explosives)
    data_recipe[explosives_gunpowder].order = a_a
    data_recipe[explosives_gunpowder].energy_required = 4
    data_recipe[explosives_gunpowder].ingredients =
    {
        {type = item, name = gunpowder, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 15}
    }

    local grenade_gunpowder = "grenade-gunpowder"
    data_recipe[grenade_gunpowder].subgroup = is_gunpowder
    data_recipe[grenade_gunpowder].icons = BUILDING_R_I(grenade, gunpowder)
    data_recipe[grenade_gunpowder].order = a_b
    data_recipe[grenade_gunpowder].energy_required = 8
    data_recipe[grenade_gunpowder].ingredients =
    {
        {type = item, name = iron_plate, amount = 4},
        {type = item, name = gunpowder, amount = 8}
    }

    local engine_unit_gunpowder = "engine-unit-gunpowder"
    data_recipe[engine_unit_gunpowder].subgroup = is_gunpowder
    data_recipe[engine_unit_gunpowder].icons = BUILDING_R_I(engine_unit, gunpowder)
    data_recipe[engine_unit_gunpowder].order = a_c
    data_recipe[engine_unit_gunpowder].energy_required = 4
    data_recipe[engine_unit_gunpowder].ingredients =
    {
        {type = item, name = iron_gear_wheel, amount = 2},
        {type = item, name = iron_pipe, amount = 2},
        {type = item, name = gunpowder, amount = 4}
    }

    local gunpowder_carbon = "gunpowder-carbon"
    data_recipe[gunpowder_carbon].category = chemistry
    data_recipe[gunpowder_carbon].subgroup = is_gunpowder
    data_recipe[gunpowder_carbon].icons = THREE_D_I(gunpowder, water_purified_angels, toluene_angels, carbon_angels, potassium_nitrate_solution, toluene_sulfur_solution)
    data_recipe[gunpowder_carbon].order = a_d
    data_recipe[gunpowder_carbon].energy_required = 8 -- KNO₃SC(s) + H₂O(l) + C₇H₈(l) --> C(s) + KNO₃(aq) + S(Toluene)
    data_recipe[gunpowder_carbon].ingredients =
    {
        {type = item, name = gunpowder, amount = 32},
        {type = fluid, name = water_purified_angels, amount = 480},
        {type = fluid, name = toluene_angels, amount = 480}
    }
    data_recipe[gunpowder_carbon].results =
    {
        {type = item, name = carbon_angels, amount = 32},
        {type = fluid, name = potassium_nitrate_solution, amount = 480},
        {type = fluid, name = toluene_sulfur_solution, amount = 480}
    }
    data_recipe[gunpowder_carbon].main_product = carbon_angels
    data_recipe[gunpowder_carbon].surface_conditions = {{property = pressure, min = 1254, max = 1254}}

    -- MILLERITE
    data_item[millerite_ore].subgroup = is_millerite
    data_item[millerite_ore].order = a
    data_resource[millerite_ore].factoriopedia_description = ""
    data_resource[millerite_ore].subgroup = is_millerite
    data_resource[millerite_ore].order = a
    data_resource[millerite_ore].minable.mining_time = 4

    -- RECIPE
    local electronic_circuit_battlefield_data = "electronic-circuit-battlefield-data"
    data_recipe[electronic_circuit_battlefield_data].subgroup = is_castra_recipe
    data_recipe[electronic_circuit_battlefield_data].icons = BUILDING_R_I(electronic_circuit, castra_data)
    data_recipe[electronic_circuit_battlefield_data].order = a_a
    data_recipe[electronic_circuit_battlefield_data].energy_required = 16
    data_recipe[electronic_circuit_battlefield_data].ingredients =
    {
        {type = item, name = resistor, amount = 8},
        {type = item, name = solder, amount = 4},
        {type = item, name = castra_data, amount = 1}
    }
    data_recipe[electronic_circuit_battlefield_data].surface_conditions = {{property = pressure, min = 1254, max = 1254}}

    local advanced_circuit_battlefield_data = "advanced-circuit-battlefield-data"
    data_recipe[advanced_circuit_battlefield_data].subgroup = is_castra_recipe
    data_recipe[advanced_circuit_battlefield_data].icons = BUILDING_R_I(advanced_circuit, castra_data)
    data_recipe[advanced_circuit_battlefield_data].order = a_b
    data_recipe[advanced_circuit_battlefield_data].energy_required = 16
    data_recipe[advanced_circuit_battlefield_data].ingredients =
    {
        {type = item, name = resistor, amount = 8},
        {type = item, name = transistor, amount = 8},
        {type = item, name = solder, amount = 4},
        {type = item, name = castra_data, amount = 1}
    }
    data_recipe[advanced_circuit_battlefield_data].surface_conditions = {{property = pressure, min = 1254, max = 1254}}

    local processing_unit_battlefield_data = "processing-unit-battlefield-data"
    data_recipe[processing_unit_battlefield_data].subgroup = is_castra_recipe
    data_recipe[processing_unit_battlefield_data].icons = BUILDING_R_I(processing_unit, castra_data)
    data_recipe[processing_unit_battlefield_data].order = a_c
    data_recipe[processing_unit_battlefield_data].energy_required = 16
    data_recipe[processing_unit_battlefield_data].ingredients =
    {
        {type = item, name = resistor, amount = 16},
        {type = item, name = transistor, amount = 16},
        {type = item, name = integrated_circuit, amount = 8},
        {type = item, name = solder, amount = 8},
        {type = item, name = castra_data, amount = 1}
    }
    data_recipe[processing_unit_battlefield_data].surface_conditions = {{property = pressure, min = 1254, max = 1254}}

    local hydrogen_sulfide_electrolysis = "hydrogen-sulfide-electrolysis"
    data_recipe[hydrogen_sulfide_electrolysis].category = angels_petrochem_electrolyser
    data_recipe[hydrogen_sulfide_electrolysis].subgroup = is_castra_recipe
    data_recipe[hydrogen_sulfide_electrolysis].icons = FOUR_R_I(hydrogen_sulfide_angels, hydrogen_angels, sulfur, oxygen_angels)
    data_recipe[hydrogen_sulfide_electrolysis].order = b_a
    data_recipe[hydrogen_sulfide_electrolysis].energy_required = 8 -- 2H₂S + 2H₂O --> 2S + 4H₂ + O₂
    data_recipe[hydrogen_sulfide_electrolysis].ingredients =
    {
        {type = fluid, name = hydrogen_sulfide_angels, amount = 240},
        {type = fluid, name = water_purified_angels, amount = 240},
        {type = item, name = electrode, amount = 1}
    }
    data_recipe[hydrogen_sulfide_electrolysis].results =
    {
        {type = item, name = sulfur, amount = 16},
        {type = fluid, name = hydrogen_angels, amount = 240}, -- 480
        {type = fluid, name = oxygen_angels, amount = 60}, -- 120
        {type = item, name = electrode_used, amount = 1}
    }
    data_recipe[hydrogen_sulfide_electrolysis].main_product = sulfur

    local plastic_hydrogen_sulfide = "plastic-hydrogen-sulfide"
    data_recipe[plastic_hydrogen_sulfide].subgroup = is_castra_recipe
    data_recipe[plastic_hydrogen_sulfide].icons = THREE_D_I(carbon_angels, hydrogen_sulfide_angels, methane_angels, plastic)
    data_recipe[plastic_hydrogen_sulfide].order = b_b
    data_recipe[plastic_hydrogen_sulfide].ingredients =
    {
        {type = item, name = carbon_angels, amount = 1},
        {type = fluid, name = hydrogen_sulfide_angels, amount = 15},
        {type = fluid, name = methane_angels, amount = 30}
    }
    data_recipe[plastic_hydrogen_sulfide].results[1].amount = 4
    data_recipe[plastic_hydrogen_sulfide].surface_conditions = {{property = pressure, min = 1254, max = 1254}}

    local rocket_fuel_sulfur = "rocket-fuel-sulfur"
    data_recipe[rocket_fuel_sulfur].subgroup = is_castra_recipe
    data_recipe[rocket_fuel_sulfur].icons = BUILDING_R_I(rocket_fuel, planet_castra)
    data_recipe[rocket_fuel_sulfur].order = b_c
    data_recipe[rocket_fuel_sulfur].energy_required = 16
    data_recipe[rocket_fuel_sulfur].ingredients =
    {
        {type = item, name = sulfur, amount = 16},
        {type = fluid, name = fuel_oil_angels, amount = 120}
    }
    data_recipe[rocket_fuel_sulfur].surface_conditions = {{property = pressure, min = 1254, max = 1254}}

    data_item[castra_data].subgroup = is_castra_recipe
    data_item[castra_data].order = c

    data_tool[battlefield_science_pack].subgroup = is_castra_recipe
    data_tool[battlefield_science_pack].order = d
    data_recipe[battlefield_science_pack].subgroup = is_castra_recipe
    data_recipe[battlefield_science_pack].order = d
    data_recipe[battlefield_science_pack].energy_required = 16
    data_recipe[battlefield_science_pack].ingredients =
    {
        {type = item, name = nickel_plate_bob, amount = 64},
        {type = item, name = uranium_rounds_magazine, amount = 4},
        {type = item, name = castra_data, amount = 1}
    }

    local jammer_interference = "jammer-interference"
    data_item[jammer_interference].subgroup = is_castra_recipe
    data_item[jammer_interference].order = e
    data_item[jammer_interference].stack_size = 200

    -- LOGISTICS
    data_item[military_transport_belt_mods].subgroup = is_castra_logistics
    data_item[military_transport_belt_mods].order = a
    data_item[military_transport_belt_mods].stack_size = 200
    data_recipe[military_transport_belt_mods].subgroup = is_castra_logistics
    data_recipe[military_transport_belt_mods].order = a
    data_recipe[military_transport_belt_mods].energy_required = 0.5
    data_recipe[military_transport_belt_mods].ingredients =
    {
        {type = item, name = engine_unit, amount = 1},
        {type = item, name = nickel_plate_bob, amount = 8},
        {type = fluid, name = fuel_oil_angels, amount = 60}
    }
    data_transport_belt[military_transport_belt_mods].subgroup = is_castra_logistics
    data_transport_belt[military_transport_belt_mods].order = a
    data_transport_belt[military_transport_belt_mods].speed = 6/60
    data_transport_belt[military_transport_belt_mods].animation_speed_coefficient = 31.25

    local simulations = require("prototypes.factoriopedia-simulations")
    data_item[military_underground_belt_mods].subgroup = is_castra_logistics
    data_item[military_underground_belt_mods].order = b
    data_item[military_underground_belt_mods].stack_size = 32
    data_item[military_underground_belt_mods].weight = 31250
    data_recipe[military_underground_belt_mods].subgroup = is_castra_logistics
    data_recipe[military_underground_belt_mods].order = b
    data_recipe[military_underground_belt_mods].energy_required = 1
    data_recipe[military_underground_belt_mods].ingredients =
    {
        {type = item, name = engine_unit, amount = 4},
        {type = item, name = nickel_plate_bob, amount = 32},
        {type = fluid, name = fuel_oil_angels, amount = 240}
    }
    data_underground_belt[military_underground_belt_mods].subgroup = is_castra_logistics
    data_underground_belt[military_underground_belt_mods].order = b
    data_underground_belt[military_underground_belt_mods].max_distance = 24
    data_underground_belt[military_underground_belt_mods].speed = 6/60
    data_underground_belt[military_underground_belt_mods].animation_speed_coefficient = 31.25
    data_underground_belt[military_underground_belt_mods].factoriopedia_simulation = simulations.military_underground_belt_arig

    data_item[military_splitter_mods].subgroup = is_castra_logistics
    data_item[military_splitter_mods].order = c
    data_item[military_splitter_mods].stack_size = 16
    data_item[military_splitter_mods].weight = 62500
    data_recipe[military_splitter_mods].subgroup = is_castra_logistics
    data_recipe[military_splitter_mods].order = c
    data_recipe[military_splitter_mods].energy_required = 1
    data_recipe[military_splitter_mods].ingredients =
    {
        {type = item, name = engine_unit, amount = 2},
        {type = item, name = advanced_circuit, amount = 1},
        {type = item, name = nickel_plate_bob, amount = 16},
        {type = fluid, name = fuel_oil_angels, amount = 120}
    }
    data_splitter[military_splitter_mods].subgroup = is_castra_logistics
    data_splitter[military_splitter_mods].order = c
    data_splitter[military_splitter_mods].speed = 6/60
    data_splitter[military_splitter_mods].animation_speed_coefficient = 31.25

    -- BUILDING
    local forge = "forge"
    data_item[forge].subgroup = is_castra_building
    data_item[forge].order = a
    data_item[forge].stack_size = 32
    data_item[forge].weight = 31250
    data_recipe[forge].subgroup = is_castra_building
    data_recipe[forge].order = a
    data_recipe[forge].energy_required = 16
    data_recipe[forge].ingredients =
    {
        {type = item, name = engine_unit, amount = 16},
        {type = item, name = advanced_circuit, amount = 16},
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = nickel_plate_bob, amount = 16},
        {type = item, name = gunpowder, amount = 128}
    }
    data_assembling[forge].subgroup = is_castra_building
    data_assembling[forge].order = a
    data_assembling[forge].crafting_speed = 4
    data_assembling[forge].module_slots = 4
    data_assembling[forge].energy_usage = 4680 .. kW
    data_assembling[forge].energy_source.drain = 120 .. kW
    data_assembling[forge].effect_receiver.base_effect.productivity = 0.5
    data_assembling[forge].effect_receiver.base_effect.quality = nil

    local jammer_radar = "jammer-radar"
    data_item[jammer_radar].subgroup = is_castra_building
    data_item[jammer_radar].order = b
    data_item[jammer_radar].stack_size = 32
    data_item[jammer_radar].weight = 31250
    data_recipe[jammer_radar].subgroup = is_castra_building
    data_recipe[jammer_radar].order = b
    data_recipe[jammer_radar].energy_required = 4
    if mods[bobwarfare] then
        data_recipe[jammer_radar].ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = radar_5, amount = 1},
            {type = item, name = supercapacitor, amount = 2}
        }
    else
        data_recipe[jammer_radar].ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = radar_1, amount = 1},
            {type = item, name = supercapacitor, amount = 2}
        }
    end
    data_radar[jammer_radar].subgroup = is_castra_building
    data_radar[jammer_radar].order = b
    data_radar[jammer_radar].energy_usage = 1200 .. kW

    local jammed_data_collector = "jammed-data-collector"
    data_item[jammed_data_collector].subgroup = is_castra_building
    data_item[jammed_data_collector].order = c
    data_item[jammed_data_collector].stack_size = 32
    data_item[jammed_data_collector].weight = 31250
    data_recipe[jammed_data_collector].subgroup = is_castra_building
    data_recipe[jammed_data_collector].order = c
    data_recipe[jammed_data_collector].energy_required = 32
    data_recipe[jammed_data_collector].ingredients =
    {
        {type = item, name = quantum_processor, amount = 64},
        {type = item, name = jammer_radar, amount = 1},
        {type = item, name = castra_data, amount = 8},
        {type = item, name = battery_graphene, amount = 256}
    }
    data_assembling[jammed_data_collector].subgroup = is_castra_building
    data_assembling[jammed_data_collector].order = c
    data_assembling[jammed_data_collector].energy_usage = 900 .. kW

    -- WAR
    local firearm_magazine_nickel = "firearm-magazine-nickel"
    data_recipe[firearm_magazine_nickel].subgroup = is_castra_war
    data_recipe[firearm_magazine_nickel].icons = BUILDING_R_I(firearm_magazine, nickel_plate_bob)
    data_recipe[firearm_magazine_nickel].order = a
    data_recipe[firearm_magazine_nickel].ingredients =
    {
        {type = item, name = nickel_plate_bob, amount = 2},
        {type = item, name = gunpowder, amount = 1}
    }

    local piercing_rounds_catalyzing = "piercing-rounds-catalyzing"
    data_recipe[piercing_rounds_catalyzing].subgroup = is_castra_war
    data_recipe[piercing_rounds_catalyzing].icons = R_P_I(piercing_rounds_magazine, nil, nil, number_2)
    data_recipe[piercing_rounds_catalyzing].order = b
    data_recipe[piercing_rounds_catalyzing].energy_required = 1
    data_recipe[piercing_rounds_catalyzing].ingredients =
    {
        {type = item, name = firearm_magazine, amount = 1},
        {type = item, name = nickel_plate_bob, amount = 2},
        {type = item, name = copper_plate, amount = 2}
    }
    data_recipe[piercing_rounds_catalyzing].results[1].amount = 2

    local poison_capsule_sulfur = "poison-capsule-sulfur"
    data_recipe[poison_capsule_sulfur].subgroup = is_castra_war
    data_recipe[poison_capsule_sulfur].icons = R_P_I(poison_capsule, nil, nil, number_2)
    data_recipe[poison_capsule_sulfur].order = c
    data_recipe[poison_capsule_sulfur].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 4},
        {type = item, name = nickel_plate_bob, amount = 4},
        {type = item, name = sulfur, amount = 8}
    }

    local slowdown_capsule_sulfur = "slowdown-capsule-sulfur"
    data_recipe[slowdown_capsule_sulfur].subgroup = is_castra_war
    data_recipe[slowdown_capsule_sulfur].icons = R_P_I(slowdown_capsule, nil, nil, number_2)
    data_recipe[slowdown_capsule_sulfur].order = d
    data_recipe[slowdown_capsule_sulfur].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 2},
        {type = item, name = nickel_plate_bob, amount = 2},
        {type = item, name = sulfur, amount = 4}
    }

    local combat_roboport = "combat-roboport"
    data_item[combat_roboport].subgroup = is_castra_war
    data_item[combat_roboport].order = e
    data_item[combat_roboport].stack_size = 32
    data_item[combat_roboport].weight = 31250
    data_recipe[combat_roboport].subgroup = is_castra_war
    data_recipe[combat_roboport].order = e
    data_recipe[combat_roboport].energy_required = 8
    data_recipe[combat_roboport].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 16},
        {type = item, name = nickel_plate_bob, amount = 64},
        {type = item, name = castra_data, amount = 1}
    }
    data_container[combat_roboport].subgroup = is_castra_war
    data_container[combat_roboport].order = e

    local defender_capsule_castra_data = "defender-capsule-castra-data"
    data_recipe[defender_capsule_castra_data].subgroup = is_castra_war
    data_recipe[defender_capsule_castra_data].icons = BUILDING_R_IS(defender_capsule, castra_data)
    data_recipe[defender_capsule_castra_data].order = f
    data_recipe[defender_capsule_castra_data].ingredients =
    {
        {type = item, name = defender_robot, amount = 4},
        {type = item, name = castra_data, amount = 1}
    }

    local distractor_capsule_castra_data = "distractor-capsule-castra-data"
    data_recipe[distractor_capsule_castra_data].subgroup = is_castra_war
    data_recipe[distractor_capsule_castra_data].icons = BUILDING_R_IS(distractor_capsule, castra_data)
    data_recipe[distractor_capsule_castra_data].order = g
    data_recipe[distractor_capsule_castra_data].ingredients =
    {
        {type = item, name = distractor_robot, amount = 4},
        {type = item, name = castra_data, amount = 1}
    }

    local destroyer_capsule_castra_data = "destroyer-capsule-castra-data"
    data_recipe[destroyer_capsule_castra_data].subgroup = is_castra_war
    data_recipe[destroyer_capsule_castra_data].icons = BUILDING_R_IS(destroyer_capsule, castra_data)
    data_recipe[destroyer_capsule_castra_data].order = h
    data_recipe[destroyer_capsule_castra_data].ingredients =
    {
        {type = item, name = destroyer_robot, amount = 4},
        {type = item, name = castra_data, amount = 1}
    }

    bobmods.lib.recipe.update_recycling_recipe
    ({
        military_transport_belt_mods,
        military_underground_belt_mods,
        military_splitter_mods,
        forge,
        jammer_radar,
        jammed_data_collector,
        combat_roboport
    })

    -- TECHNOLOGY
    local planet_discovery_castra = "planet-discovery-castra"
    data_technology[planet_discovery_castra].effects =
    {
        {type = unlock_space_location, space_location = planet_castra, use_icon_overlay_constant = true},
        {type = unlock_recipe, recipe = castra_air},
        {type = unlock_recipe, recipe = castra_air_separation},
        {type = unlock_recipe, recipe = electronic_circuit_battlefield_data},
        {type = unlock_recipe, recipe = advanced_circuit_battlefield_data},
        {type = unlock_recipe, recipe = processing_unit_battlefield_data},
        {type = unlock_recipe, recipe = advanced_processing_unit_battlefield_data}
    }
    data_technology[planet_discovery_castra].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    table.insert(data_technology[gunpowder .. _processing].effects, {type = unlock_recipe, recipe = potassium_nitrate})
    table.insert(data_technology[gunpowder .. _processing].effects, {type = unlock_recipe, recipe = nitrosyl_chloride_gas})
    table.insert(data_technology[gunpowder .. _processing].effects, {type = unlock_recipe, recipe = nitrosyl_chloride_reversed})
    table.insert(data_technology[gunpowder .. _processing].effects, {type = unlock_recipe, recipe = toluene_sulfur_solution_reversed})

    data_technology[hydrogen_sulfide_mods .. _processing].research_trigger =
    {
        type = craft_fluid,
        fluid = hydrogen_sulfide_angels,
        amount = 960
    }

    data_technology[forge].prerequisites = {hydrogen_sulfide_mods .. _processing, gunpowder .._processing, tech_millerite_processing_1}
    data_technology[forge].effects =
    {
        {type = unlock_recipe, recipe = forge},
        {type = unlock_recipe, recipe = firearm_magazine_nickel},
        {type = unlock_recipe, recipe = piercing_rounds_catalyzing},
        {type = unlock_recipe, recipe = slowdown_capsule_sulfur},
        {type = unlock_recipe, recipe = poison_capsule_sulfur}
    }

    table.insert(data_technology[combat_roboport].prerequisites, laser_robot)
    table.insert(data_technology[combat_roboport].effects, {type = unlock_recipe, recipe = laser_capsule_castra_data})
    data_technology[combat_roboport].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology["engine" .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    local tech_castra_enemy_research = "castra-enemy-research"
    if mods[bobwarfare] then
        table.insert(data_technology[tech_castra_enemy_research].prerequisites, radar_5)
    end
    data_technology[tech_castra_enemy_research].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[jammer_radar].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    local tech_explosive_ammo = "explosive-ammo"
    data_technology[tech_explosive_ammo .. _productivity].effects = {}
    local function add_recipe_for_explosive_ammo_productivity(recipe)
        table.insert(data_technology[tech_explosive_ammo .. _productivity].effects, {type = change_recipe_productivity, recipe = recipe, change = 0.1})
    end
    add_recipe_for_explosive_ammo_productivity(rocket)
    add_recipe_for_explosive_ammo_productivity(explosive_rocket)
    add_recipe_for_explosive_ammo_productivity(atomic_rocket)
    add_recipe_for_explosive_ammo_productivity(atomic_rocket_2)
    add_recipe_for_explosive_ammo_productivity(atomic_rocket_3)
    add_recipe_for_explosive_ammo_productivity(cannon_shell)
    add_recipe_for_explosive_ammo_productivity(explosive_cannon_shell)
    add_recipe_for_explosive_ammo_productivity(uranium_cannon_shell)
    add_recipe_for_explosive_ammo_productivity(uranium_explosive_cannon_shell)
    add_recipe_for_explosive_ammo_productivity(artillery_shell)
    if mods[bobwarfare] then
        add_recipe_for_explosive_ammo_productivity(atomic_artillery_shell)
    end
    add_recipe_for_explosive_ammo_productivity(grenade)
    add_recipe_for_explosive_ammo_productivity(grenade_gunpowder)
    add_recipe_for_explosive_ammo_productivity(cluster_grenade)
    add_recipe_for_explosive_ammo_productivity(land_mine)
    data_technology[tech_explosive_ammo .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    local tech_special_ammo = "special-ammo"
    data_technology[tech_special_ammo .. _productivity].effects = {}
    local function add_recipe_for_special_ammo_productivity(recipe)
        table.insert(data_technology[tech_special_ammo .. _productivity].effects, {type = change_recipe_productivity, recipe = recipe, change = 0.1})
    end
    if mods[bobwarfare] then
       add_recipe_for_special_ammo_productivity(laser_battery_1)
       add_recipe_for_special_ammo_productivity(laser_battery_2)
       add_recipe_for_special_ammo_productivity(laser_battery_3)
       add_recipe_for_special_ammo_productivity(laser_battery_4)
       add_recipe_for_special_ammo_productivity(laser_battery_5)
       add_recipe_for_special_ammo_productivity(laser_battery_6)
       add_recipe_for_special_ammo_productivity(laser_battery_7)
    end
    add_recipe_for_special_ammo_productivity(flamethrower_ammo)
    if mods[bobwarfare] then
        add_recipe_for_special_ammo_productivity(fire_capsule)
    end
    add_recipe_for_special_ammo_productivity(poison_capsule)
    add_recipe_for_special_ammo_productivity(poison_capsule_sulfur)
    add_recipe_for_special_ammo_productivity(slowdown_capsule)
    add_recipe_for_special_ammo_productivity(slowdown_capsule_sulfur)
    add_recipe_for_special_ammo_productivity(defender_capsule)
    add_recipe_for_special_ammo_productivity(defender_capsule_castra_data)
    add_recipe_for_special_ammo_productivity(distractor_capsule)
    add_recipe_for_special_ammo_productivity(distractor_capsule_castra_data)
    add_recipe_for_special_ammo_productivity(destroyer_capsule)
    add_recipe_for_special_ammo_productivity(destroyer_capsule_castra_data)
    add_recipe_for_special_ammo_productivity(laser_capsule)
    add_recipe_for_special_ammo_productivity(laser_capsule_castra_data)
    if mods[bobwarfare] then
        add_recipe_for_special_ammo_productivity(poison_mine)
        add_recipe_for_special_ammo_productivity(slowdown_mine)
    end
    add_recipe_for_special_ammo_productivity(tesla_ammo)
    data_technology[tech_special_ammo .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[military_transport_belt_mods].prerequisites = {battlefield_science_pack}

    table.insert(data_technology[planet_discovery_aquilo].prerequisites, battlefield_science_pack)

    data_technology[jammed_data_collector].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {cryogenic_science_pack, 1}
    }
end