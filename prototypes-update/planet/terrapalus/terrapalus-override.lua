if mods[terrapalus_mods] then
    -- RECIPE
    data_item[palusium_ore].subgroup = is_terrapalus_recipe
    data_item[palusium_ore].order = a
    data_item[palusium_ore].stack_size = 200
    data_item[palusium_ore].fuel_category = base_fuel
    data_item[palusium_ore].fuel_value = (225/8) .. kJ
    data_resource[palusium_ore].subgroup = is_terrapalus_recipe
    data_resource[palusium_ore].order = a
    data_resource[palusium_ore].minable.mining_time = 0.25
    data_resource[palusium_ore].minable.fluid_amount = 150

    data_item[palusium_powder].subgroup = is_terrapalus_recipe
    data_item[palusium_powder].order = b
    data_item[palusium_powder].stack_size = 200

    data_item[palusium_crystal].subgroup = is_terrapalus_recipe
    data_item[palusium_crystal].order = c
    data_item[palusium_crystal].stack_size = 200

    data_item[palusium_plate].subgroup = is_terrapalus_recipe
    data_item[palusium_plate].order = d
    data_item[palusium_plate].stack_size = 200

    data_fluid[ultravium].subgroup = is_terrapalus_recipe
    data_fluid[ultravium].order = e

    -- BATTERIES
    local ultravium_battery = "ultravium-battery"
    data_capsule[ultravium_battery].subgroup = is_terrapalus_battery
    data_capsule[ultravium_battery].order = a
    data_capsule[ultravium_battery].stack_size = 200
    data_recipe[ultravium_battery].subgroup = is_terrapalus_battery
    data_recipe[ultravium_battery].order = a
    data_recipe[ultravium_battery].energy_required = 2
    data_recipe[ultravium_battery].ingredients =
    {
        {type = item, name = battery_lead_acid, amount = 2},
        {type = item, name = iron_plate, amount = 4},
        {type = fluid, name = ultravium, amount = 30}
    }

    local ultravium_battery_pack = "ultravium-battery-pack"
    data_capsule[ultravium_battery_pack].subgroup = is_terrapalus_battery
    data_capsule[ultravium_battery_pack].order = b
    data_capsule[ultravium_battery_pack].stack_size = 200
    data_recipe[ultravium_battery_pack].subgroup = is_terrapalus_battery
    data_recipe[ultravium_battery_pack].order = b
    data_recipe[ultravium_battery_pack].energy_required = 8
    data_recipe[ultravium_battery_pack].ingredients =
    {
        {type = item, name = advanced_circuit, amount = 2},
        {type = item, name = steel_plate, amount = 4},
        {type = item, name = palusium_crystal, amount = 4},
        {type = item, name = ultravium_battery, amount = 4}
    }

    local ultravium_power_cell = "ultravium-power-cell"
    data_capsule[ultravium_power_cell].subgroup = is_terrapalus_battery
    data_capsule[ultravium_power_cell].order = c
    data_capsule[ultravium_power_cell].stack_size = 200
    data_recipe[ultravium_power_cell].subgroup = is_terrapalus_battery
    data_recipe[ultravium_power_cell].order = c
    data_recipe[ultravium_power_cell].energy_required = 16
    data_recipe[ultravium_power_cell].ingredients =
    {
        {type = item, name = processing_unit, amount = 2},
        {type = item, name = ultravium_battery_pack, amount = 2},
        {type = item, name = palusium_crystal, amount = 8}
    }

    -- LAMPS
    local inhibitor_lamp = "inhibitor-lamp"
    data_item[inhibitor_lamp].subgroup = is_terrapalus_lamp
    data_item[inhibitor_lamp].order = a
    data_item[inhibitor_lamp].stack_size = 32
    data_item[inhibitor_lamp].weight = 31250
    data_recipe[inhibitor_lamp].subgroup = is_terrapalus_lamp
    data_recipe[inhibitor_lamp].order = a
    data_recipe[inhibitor_lamp].energy_required = 4
    data_recipe[inhibitor_lamp].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 2},
        {type = item, name = small_lamp, amount = 1},
        {type = item, name = copper_cable, amount = 4},
        {type = item, name = palusium_crystal, amount = 128},
        {type = item, name = palusium_plate, amount = 64}
    }
    data_lamp[inhibitor_lamp].subgroup = is_terrapalus_lamp
    data_lamp[inhibitor_lamp].order = a

    local inhibitor_lamp_mk2 = "inhibitor-lamp-mk2"
    data_item[inhibitor_lamp_mk2].subgroup = is_terrapalus_lamp
    data_item[inhibitor_lamp_mk2].order = b
    data_item[inhibitor_lamp_mk2].stack_size = 32
    data_item[inhibitor_lamp_mk2].weight = 31250
    data_recipe[inhibitor_lamp_mk2].subgroup = is_terrapalus_lamp
    data_recipe[inhibitor_lamp_mk2].order = b
    data_recipe[inhibitor_lamp_mk2].energy_required = 4
    data_recipe[inhibitor_lamp_mk2].ingredients =
    {
        {type = item, name = advanced_circuit, amount = 4},
        {type = item, name = palusium_crystal, amount = 64},
        {type = item, name = palusium_plate, amount = 32},
        {type = item, name = inhibitor_lamp, amount = 1}
    }
    data_lamp[inhibitor_lamp_mk2].subgroup = is_terrapalus_lamp
    data_lamp[inhibitor_lamp_mk2].order = b

    local inhibitor_lamp_mk3 = "inhibitor-lamp-mk3"
    data_item[inhibitor_lamp_mk3].subgroup = is_terrapalus_lamp
    data_item[inhibitor_lamp_mk3].order = c
    data_item[inhibitor_lamp_mk3].stack_size = 32
    data_item[inhibitor_lamp_mk3].weight = 31250
    data_recipe[inhibitor_lamp_mk3].subgroup = is_terrapalus_lamp
    data_recipe[inhibitor_lamp_mk3].order = c
    data_recipe[inhibitor_lamp_mk3].energy_required = 4
    data_recipe[inhibitor_lamp_mk3].ingredients =
    {
        {type = item, name = processing_unit, amount = 4},
        {type = item, name = palusium_crystal, amount = 64},
        {type = item, name = palusium_plate, amount = 64},
        {type = item, name = inhibitor_lamp_mk2, amount = 1}
    }
    data_lamp[inhibitor_lamp_mk3].subgroup = is_terrapalus_lamp
    data_lamp[inhibitor_lamp_mk3].order = c

    local inhibitor_lamp_damage = "inhibitor-lamp-damage"
    data_item[inhibitor_lamp_damage].subgroup = is_terrapalus_lamp
    data_item[inhibitor_lamp_damage].order = d
    data_item[inhibitor_lamp_damage].stack_size = 32
    data_item[inhibitor_lamp_damage].weight = 31250
    data_recipe[inhibitor_lamp_damage].subgroup = is_terrapalus_lamp
    data_recipe[inhibitor_lamp_damage].order = d
    data_recipe[inhibitor_lamp_damage].energy_required = 4
    data_recipe[inhibitor_lamp_damage].ingredients =
    {
        {type = item, name = advanced_circuit, amount = 4},
        {type = item, name = iron_plate, amount = 32},
        {type = item, name = palusium_crystal, amount = 64},
        {type = item, name = inhibitor_lamp, amount = 1}
    }
    data_lamp[inhibitor_lamp_damage].subgroup = is_terrapalus_lamp
    data_lamp[inhibitor_lamp_damage].order = d

    -- STATIONS
    local armor_charging_station = "armor-charging-station"
    data_item[armor_charging_station].subgroup = is_terrapalus_station
    data_item[armor_charging_station].order = a
    data_item[armor_charging_station].stack_size = 32
    data_item[armor_charging_station].weight = 31250
    data_recipe[armor_charging_station].subgroup = is_terrapalus_station
    data_recipe[armor_charging_station].order = a
    data_recipe[armor_charging_station].energy_required = 8
    data_recipe[armor_charging_station].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 8},
        {type = item, name = substation_1, amount = 1},
        {type = item, name = copper_cable, amount = 16},
        {type = item, name = palusium_crystal, amount = 32}
    }
    data_electric_energy_interface[armor_charging_station].subgroup = is_terrapalus_station
    data_electric_energy_interface[armor_charging_station].order = a

    local armor_charging_station_mk2 = "armor-charging-station-mk2"
    data_item[armor_charging_station_mk2].subgroup = is_terrapalus_station
    data_item[armor_charging_station_mk2].order = b
    data_item[armor_charging_station_mk2].stack_size = 32
    data_item[armor_charging_station_mk2].weight = 31250
    data_recipe[armor_charging_station_mk2].subgroup = is_terrapalus_station
    data_recipe[armor_charging_station_mk2].order = b
    data_recipe[armor_charging_station_mk2].energy_required = 8
    data_recipe[armor_charging_station_mk2].ingredients =
    {
        {type = item, name = advanced_circuit, amount = 8},
        {type = item, name = steel_plate, amount = 16},
        {type = item, name = palusium_crystal, amount = 64},
        {type = item, name = armor_charging_station, amount = 1}
    }
    data_electric_energy_interface[armor_charging_station_mk2].subgroup = is_terrapalus_station
    data_electric_energy_interface[armor_charging_station_mk2].order = b

    local armor_charging_station_mk3 = "armor-charging-station-mk3"
    data_item[armor_charging_station_mk3].subgroup = is_terrapalus_station
    data_item[armor_charging_station_mk3].order = c
    data_item[armor_charging_station_mk3].stack_size = 32
    data_item[armor_charging_station_mk3].weight = 31250
    data_recipe[armor_charging_station_mk3].subgroup = is_terrapalus_station
    data_recipe[armor_charging_station_mk3].order = c
    data_recipe[armor_charging_station_mk3].energy_required = 8
    data_recipe[armor_charging_station_mk3].ingredients =
    {
        {type = item, name = low_density_structure, amount = 8},
        {type = item, name = processing_unit, amount = 8},
        {type = item, name = palusium_crystal, amount = 64},
        {type = item, name = armor_charging_station_mk2, amount = 1}
    }
    data_electric_energy_interface[armor_charging_station_mk3].subgroup = is_terrapalus_station
    data_electric_energy_interface[armor_charging_station_mk3].order = c

    -- WAR
    local uv_defense_turret = "uv-defense-turret"
    data_item[uv_defense_turret].subgroup = is_terrapalus_war
    data_item[uv_defense_turret].order = a
    data_item[uv_defense_turret].stack_size = 8
    data_item[uv_defense_turret].weight = 125000
    data_recipe[uv_defense_turret].subgroup = is_terrapalus_war
    data_recipe[uv_defense_turret].order = a
    data_recipe[uv_defense_turret].energy_required = 8
    data_recipe[uv_defense_turret].ingredients =
    {
        {type = item, name = advanced_circuit, amount = 8},
        {type = item, name = laser_defense_eq_1, amount = 1},
        {type = item, name = steel_plate, amount = 8},
        {type = item, name = palusium_crystal, amount = 64}
    }
    data_active_defense_eq[uv_defense_turret].subgroup = is_terrapalus_war
    data_active_defense_eq[uv_defense_turret].order = a

    local uv_personal_shield = "uv-personal-shield"
    data_item[uv_personal_shield].subgroup = is_terrapalus_war
    data_item[uv_personal_shield].order = b
    data_item[uv_personal_shield].stack_size = 8
    data_item[uv_personal_shield].weight = 125000
    data_recipe[uv_personal_shield].subgroup = is_terrapalus_war
    data_recipe[uv_personal_shield].order = b
    data_recipe[uv_personal_shield].energy_required = 8
    data_recipe[uv_personal_shield].ingredients =
    {
        {type = item, name = advanced_circuit, amount = 8},
        {type = item, name = energy_shield_eq_1, amount = 1},
        {type = item, name = palusium_crystal, amount = 64},
        {type = item, name = palusium_plate, amount = 16}
    }
    data_energy_shield_eq[uv_personal_shield].subgroup = is_terrapalus_war
    data_energy_shield_eq[uv_personal_shield].order = b

    -- LASER TURRETS
    local uv_spotlight = "uv-spotlight"
    data_item[uv_spotlight].subgroup = is_terrapalus_turret
    data_item[uv_spotlight].order = a
    data_item[uv_spotlight].stack_size = 32
    data_item[uv_spotlight].weight = 31250
    data_recipe[uv_spotlight].subgroup = is_terrapalus_turret
    data_recipe[uv_spotlight].order = a
    data_recipe[uv_spotlight].energy_required = 8
    data_recipe[uv_spotlight].ingredients =
    {
        {type = item, name = advanced_circuit, amount = 8},
        {type = item, name = laser_turret_1, amount = 1},
        {type = item, name = palusium_crystal, amount = 64},
        {type = item, name = inhibitor_lamp, amount = 1}
    }
    data_electric_turret[uv_spotlight].subgroup = is_terrapalus_turret
    data_electric_turret[uv_spotlight].order = a

    local uv_turret = "uv-turret"
    data_item[uv_turret].subgroup = is_terrapalus_turret
    data_item[uv_turret].order = b
    data_item[uv_turret].stack_size = 32
    data_item[uv_turret].weight = 31250
    data_recipe[uv_turret].subgroup = is_terrapalus_turret
    data_recipe[uv_turret].order = b
    data_recipe[uv_turret].energy_required = 8
    data_recipe[uv_turret].ingredients =
    {
        {type = item, name = laser_turret_1, amount = 1},
        {type = item, name = palusium_crystal, amount = 8},
        {type = item, name = palusium_plate, amount = 16}
    }
    data_electric_turret[uv_turret].subgroup = is_terrapalus_turret
    data_electric_turret[uv_turret].order = b

    local uv_turret_mk2 = "uv-turret-mk2"
    data_item[uv_turret_mk2].subgroup = is_terrapalus_turret
    data_item[uv_turret_mk2].order = c
    data_item[uv_turret_mk2].stack_size = 32
    data_item[uv_turret_mk2].weight = 31250
    data_recipe[uv_turret_mk2].subgroup = is_terrapalus_turret
    data_recipe[uv_turret_mk2].order = c
    data_recipe[uv_turret_mk2].energy_required = 8
    data_recipe[uv_turret_mk2].ingredients =
    {
        {type = item, name = processing_unit, amount = 4},
        {type = item, name = palusium_crystal, amount = 16},
        {type = item, name = palusium_plate, amount = 16},
        {type = item, name = uv_turret, amount = 1}
    }
    data_electric_turret[uv_turret_mk2].subgroup = is_terrapalus_turret
    data_electric_turret[uv_turret_mk2].order = c

    local uv_turret_mk3 = "uv-turret-mk3"
    data_item[uv_turret_mk3].subgroup = is_terrapalus_turret
    data_item[uv_turret_mk3].order = d
    data_item[uv_turret_mk3].stack_size = 32
    data_item[uv_turret_mk3].weight = 31250
    data_recipe[uv_turret_mk3].subgroup = is_terrapalus_turret
    data_recipe[uv_turret_mk3].order = d
    data_recipe[uv_turret_mk3].energy_required = 8
    data_recipe[uv_turret_mk3].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = palusium_crystal, amount = 16},
        {type = item, name = palusium_plate, amount = 32},
        {type = item, name = uv_turret_mk2, amount = 1}
    }
    data_electric_turret[uv_turret_mk3].subgroup = is_terrapalus_turret
    data_electric_turret[uv_turret_mk3].order = d

    local uv_turret_aoe = "uv-turret-aoe"
    data_item[uv_turret_aoe].subgroup = is_terrapalus_turret
    data_item[uv_turret_aoe].order = e
    data_item[uv_turret_aoe].stack_size = 32
    data_item[uv_turret_aoe].weight = 31250
    data_recipe[uv_turret_aoe].subgroup = is_terrapalus_turret
    data_recipe[uv_turret_aoe].order = e
    data_recipe[uv_turret_aoe].energy_required = 8
    data_recipe[uv_turret_aoe].ingredients =
    {
        {type = item, name = processing_unit, amount = 4},
        {type = item, name = palusium_crystal, amount = 16},
        {type = item, name = palusium_plate, amount = 16},
        {type = item, name = uv_turret, amount = 1}
    }
    data_electric_turret[uv_turret_aoe].subgroup = is_terrapalus_turret
    data_electric_turret[uv_turret_aoe].order = e

    local uv_turret_chain = "uv-turret-chain"
    data_item[uv_turret_chain].subgroup = is_terrapalus_turret
    data_item[uv_turret_chain].order = f
    data_item[uv_turret_chain].stack_size = 32
    data_item[uv_turret_chain].weight = 31250
    data_recipe[uv_turret_chain].subgroup = is_terrapalus_turret
    data_recipe[uv_turret_chain].order = f
    data_recipe[uv_turret_chain].energy_required = 8
    data_recipe[uv_turret_chain].ingredients =
    {
        {type = item, name = processing_unit, amount = 4},
        {type = item, name = palusium_crystal, amount = 16},
        {type = item, name = palusium_plate, amount = 16},
        {type = item, name = uv_turret, amount = 1}
    }
    data_electric_turret[uv_turret_chain].subgroup = is_terrapalus_turret
    data_electric_turret[uv_turret_chain].order = f

    bobmods.lib.recipe.update_recycling_recipe
    ({
        ultravium_battery_pack,
        ultravium_power_cell,
        inhibitor_lamp,
        inhibitor_lamp_mk2,
        inhibitor_lamp_mk3,
        inhibitor_lamp_damage,
        armor_charging_station,
        armor_charging_station_mk2,
        armor_charging_station_mk3,
        uv_defense_turret,
        uv_personal_shield,
        uv_spotlight,
        uv_turret,
        uv_turret_mk2,
        uv_turret_mk3,
        uv_turret_aoe,
        uv_turret_chain
    })

    -- TECHNOLOGY
    data_technology["planet-discovery-terrapalus"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    local tech_palusium_crushing = "palusium-crushing"
    data_technology[tech_palusium_crushing].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    local tech_palusium_processing = "palusium-processing"
    data_technology[tech_palusium_processing].prerequisites = {tech_palusium_crushing}
    data_technology[tech_palusium_processing].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology["palusium-liquefaction"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology["palusium-refining"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    local ultravium_power_systems = "ultravium-power-systems"
    data_technology[ultravium_power_systems].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[ultravium_power_systems .. "-2"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[ultravium_power_systems .. "-3"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[inhibitor_lamp].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[inhibitor_lamp_mk2].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[inhibitor_lamp_mk3].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[inhibitor_lamp_damage].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology["uv-personal-equipment"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[uv_spotlight].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[uv_turret].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[uv_turret_mk2].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[uv_turret_mk3].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[uv_turret_aoe].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    data_technology[uv_turret_chain].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
end