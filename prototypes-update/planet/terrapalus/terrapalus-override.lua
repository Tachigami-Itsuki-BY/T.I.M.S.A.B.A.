-- [font=default-tiny-bold][/font]

if mods [terrapalus_mods] then
    local inhibitor_lamp = "inhibitor-lamp"
    data_item[inhibitor_lamp].subgroup = is_terrapalus_lamp
    data_item[inhibitor_lamp].order = a
    data_item[inhibitor_lamp].stack_size = 32
    data_item[inhibitor_lamp].weight = 31250
    data_recipe[inhibitor_lamp].subgroup = is_terrapalus_lamp
    data_recipe[inhibitor_lamp].order = a
    data_lamp[inhibitor_lamp].subgroup = is_terrapalus_lamp
    data_lamp[inhibitor_lamp].order = a

    local inhibitor_lamp_mk2 = "inhibitor-lamp-mk2"
    data_item[inhibitor_lamp_mk2].subgroup = is_terrapalus_lamp
    data_item[inhibitor_lamp_mk2].order = b
    data_item[inhibitor_lamp_mk2].stack_size = 32
    data_item[inhibitor_lamp_mk2].weight = 31250
    data_recipe[inhibitor_lamp_mk2].subgroup = is_terrapalus_lamp
    data_recipe[inhibitor_lamp_mk2].order = b
    data_lamp[inhibitor_lamp_mk2].subgroup = is_terrapalus_lamp
    data_lamp[inhibitor_lamp_mk2].order = b

    local inhibitor_lamp_mk3 = "inhibitor-lamp-mk3"
    data_item[inhibitor_lamp_mk3].subgroup = is_terrapalus_lamp
    data_item[inhibitor_lamp_mk3].order = c
    data_item[inhibitor_lamp_mk3].stack_size = 32
    data_item[inhibitor_lamp_mk3].weight = 31250
    data_recipe[inhibitor_lamp_mk3].subgroup = is_terrapalus_lamp
    data_recipe[inhibitor_lamp_mk3].order = c
    data_lamp[inhibitor_lamp_mk3].subgroup = is_terrapalus_lamp
    data_lamp[inhibitor_lamp_mk3].order = c

    local inhibitor_lamp_damage = "inhibitor-lamp-damage"
    data_item[inhibitor_lamp_damage].subgroup = is_terrapalus_lamp
    data_item[inhibitor_lamp_damage].order = d
    data_item[inhibitor_lamp_damage].stack_size = 32
    data_item[inhibitor_lamp_damage].weight = 31250
    data_recipe[inhibitor_lamp_damage].subgroup = is_terrapalus_lamp
    data_recipe[inhibitor_lamp_damage].order = d
    data_lamp[inhibitor_lamp_damage].subgroup = is_terrapalus_lamp
    data_lamp[inhibitor_lamp_damage].order = d

    local armor_charging_station = "armor-charging-station"
    data_item[armor_charging_station].subgroup = is_terrapalus_station
    data_item[armor_charging_station].order = a
    data_item[armor_charging_station].stack_size = 32
    data_item[armor_charging_station].weight = 31250
    data_recipe[armor_charging_station].subgroup = is_terrapalus_station
    data_recipe[armor_charging_station].order = a
    data_electric_energy_interface[armor_charging_station].subgroup = is_terrapalus_station
    data_electric_energy_interface[armor_charging_station].order = a

    local armor_charging_station_mk2 = "armor-charging-station-mk2"
    data_item[armor_charging_station_mk2].subgroup = is_terrapalus_station
    data_item[armor_charging_station_mk2].order = b
    data_item[armor_charging_station_mk2].stack_size = 32
    data_item[armor_charging_station_mk2].weight = 31250
    data_recipe[armor_charging_station_mk2].subgroup = is_terrapalus_station
    data_recipe[armor_charging_station_mk2].order = b
    data_electric_energy_interface[armor_charging_station_mk2].subgroup = is_terrapalus_station
    data_electric_energy_interface[armor_charging_station_mk2].order = b

    local armor_charging_station_mk3 = "armor-charging-station-mk3"
    data_item[armor_charging_station_mk3].subgroup = is_terrapalus_station
    data_item[armor_charging_station_mk3].order = c
    data_item[armor_charging_station_mk3].stack_size = 32
    data_item[armor_charging_station_mk3].weight = 31250
    data_recipe[armor_charging_station_mk3].subgroup = is_terrapalus_station
    data_recipe[armor_charging_station_mk3].order = c
    data_electric_energy_interface[armor_charging_station_mk3].subgroup = is_terrapalus_station
    data_electric_energy_interface[armor_charging_station_mk3].order = c

    local uv_personal_shield = "uv-personal-shield"
    data_item[uv_personal_shield].subgroup = is_terrapalus_war
    data_item[uv_personal_shield].order = a
    data_item[uv_personal_shield].stack_size = 8
    data_item[uv_personal_shield].weight = 125000
    data_recipe[uv_personal_shield].subgroup = is_terrapalus_war
    data_recipe[uv_personal_shield].order = a

    local uv_defense_turret = "uv-defense-turret"
    data_item[uv_defense_turret].subgroup = is_terrapalus_war
    data_item[uv_defense_turret].order = b
    data_item[uv_defense_turret].stack_size = 8
    data_item[uv_defense_turret].weight = 125000
    data_recipe[uv_defense_turret].subgroup = is_terrapalus_war
    data_recipe[uv_defense_turret].order = b

    local uv_spotlight = "uv-spotlight"
    data_item[uv_spotlight].subgroup = is_terrapalus_turret
    data_item[uv_spotlight].order = a
    data_item[uv_spotlight].stack_size = 32
    data_item[uv_spotlight].weight = 31250
    data_recipe[uv_spotlight].subgroup = is_terrapalus_turret
    data_recipe[uv_spotlight].order = a
    data_electric_turret[uv_spotlight].subgroup = is_terrapalus_turret
    data_electric_turret[uv_spotlight].order = a

    local uv_turret = "uv-turret"
    data_item[uv_turret].subgroup = is_terrapalus_turret
    data_item[uv_turret].order = b
    data_item[uv_turret].stack_size = 32
    data_item[uv_turret].weight = 31250
    data_recipe[uv_turret].subgroup = is_terrapalus_turret
    data_recipe[uv_turret].order = b
    data_electric_turret[uv_turret].subgroup = is_terrapalus_turret
    data_electric_turret[uv_turret].order = b

    local uv_turret_mk2 = "uv-turret-mk2"
    data_item[uv_turret_mk2].subgroup = is_terrapalus_turret
    data_item[uv_turret_mk2].order = c
    data_item[uv_turret_mk2].stack_size = 32
    data_item[uv_turret_mk2].weight = 31250
    data_recipe[uv_turret_mk2].subgroup = is_terrapalus_turret
    data_recipe[uv_turret_mk2].order = c
    data_electric_turret[uv_turret_mk2].subgroup = is_terrapalus_turret
    data_electric_turret[uv_turret_mk2].order = c

    local uv_turret_mk3 = "uv-turret-mk3"
    data_item[uv_turret_mk3].subgroup = is_terrapalus_turret
    data_item[uv_turret_mk3].order = d
    data_item[uv_turret_mk3].stack_size = 32
    data_item[uv_turret_mk3].weight = 31250
    data_recipe[uv_turret_mk3].subgroup = is_terrapalus_turret
    data_recipe[uv_turret_mk3].order = d
    data_electric_turret[uv_turret_mk3].subgroup = is_terrapalus_turret
    data_electric_turret[uv_turret_mk3].order = d

    local uv_turret_aoe = "uv-turret-aoe"
    data_item[uv_turret_aoe].subgroup = is_terrapalus_turret
    data_item[uv_turret_aoe].order = e
    data_item[uv_turret_aoe].stack_size = 32
    data_item[uv_turret_aoe].weight = 31250
    data_recipe[uv_turret_aoe].subgroup = is_terrapalus_turret
    data_recipe[uv_turret_aoe].order = e
    data_electric_turret[uv_turret_aoe].subgroup = is_terrapalus_turret
    data_electric_turret[uv_turret_aoe].order = e

    local uv_turret_chain = "uv-turret-chain"
    data_item[uv_turret_chain].subgroup = is_terrapalus_turret
    data_item[uv_turret_chain].order = f
    data_item[uv_turret_chain].stack_size = 32
    data_item[uv_turret_chain].weight = 31250
    data_recipe[uv_turret_chain].subgroup = is_terrapalus_turret
    data_recipe[uv_turret_chain].order = f
    data_electric_turret[uv_turret_chain].subgroup = is_terrapalus_turret
    data_electric_turret[uv_turret_chain].order = f

    local recipe = "terrapalus-recipe"
    local palusium = "palusium-ore"
    data_item[palusium].subgroup = recipe
    data_item[palusium].order = a
    data_item[palusium].stack_size = 200
    data_item[palusium].weight = 5000
    data_resource[palusium].subgroup = recipe
    data_resource[palusium].order = a

    data_item[palusium_powder].subgroup = recipe
    data_item[palusium_powder].order = b
    data_item[palusium_powder].stack_size = 200
    data_item[palusium_powder].weight = 5000

    local palusium_crushing = "palusium-crushing"
    data_recipe[palusium_crushing].subgroup = recipe
    data_recipe[palusium_crushing].icons = TWO_I(palusium, palusium_powder)
    data_recipe[palusium_crushing].order = b_a

    local palusium_crystal = "palusium-crystal"
    data_item[palusium_crystal].subgroup = recipe
    data_item[palusium_crystal].order = c
    data_item[palusium_crystal].stack_size = 200
    data_item[palusium_crystal].weight = 5000

    local palusium_refining = "palusium-refining"
    data_recipe[palusium_refining].subgroup = recipe
    data_recipe[palusium_refining].icons = TWO_I(palusium_powder, palusium_crystal)
    data_recipe[palusium_refining].order = c_a

    local palusium_plate = "palusium-plate"
    data_item[palusium_plate].subgroup = recipe
    data_item[palusium_plate].order = d
    data_item[palusium_plate].stack_size = 200
    data_item[palusium_plate].weight = 5000

    local palusium_processing = "palusium-processing"
    data_recipe[palusium_processing].subgroup = recipe
    data_recipe[palusium_processing].icons = TWO_I(palusium_powder, palusium_plate)
    data_recipe[palusium_processing].order = d_a
    data_recipe[palusium_processing].ingredients = {{type = item, name = palusium_powder, amount = 4}}

    data_fluid[ultravium].subgroup = recipe
    data_fluid[ultravium].order = e

    local palusium_liquefaction = "palusium-liquefaction"
    data_recipe[palusium_liquefaction].subgroup = recipe
    data_recipe[palusium_liquefaction].icons = THREE_D_I(palusium_powder, water, naphtha_angels, ultravium)
    data_recipe[palusium_liquefaction].order = e_a

    local terrapalus_battery = "terrapalus-battery"
    local ultravium_battery = "ultravium-battery"
    data_capsule[ultravium_battery].subgroup = terrapalus_battery
    data_capsule[ultravium_battery].order = a
    data_capsule[ultravium_battery].stack_size = 200
    data_capsule[ultravium_battery].weight = 5000
    data_recipe[ultravium_battery].subgroup = terrapalus_battery
    data_recipe[ultravium_battery].icons = THREE_D_IS(battery_lead_acid, iron_plate, ultravium, ultravium_battery)
    data_recipe[ultravium_battery].order = a

    local ultravium_battery_pack = "ultravium-battery-pack"
    data_capsule[ultravium_battery_pack].subgroup = terrapalus_battery
    data_capsule[ultravium_battery_pack].order = d
    data_capsule[ultravium_battery_pack].stack_size = 200
    data_capsule[ultravium_battery_pack].weight = 5000
    data_recipe[ultravium_battery_pack].subgroup = terrapalus_battery
    data_recipe[ultravium_battery_pack].icons = FOUR_D_I(ultravium_battery, advanced_circuit, palusium_crystal, steel_plate, ultravium_battery_pack)
    data_recipe[ultravium_battery_pack].order = d

    local ultravium_power_cell = "ultravium-power-cell"
    data_capsule[ultravium_power_cell].subgroup = terrapalus_battery
    data_capsule[ultravium_power_cell].order = c
    data_capsule[ultravium_power_cell].stack_size = 200
    data_capsule[ultravium_power_cell].weight = 5000
    data_recipe[ultravium_power_cell].subgroup = terrapalus_battery
    data_recipe[ultravium_power_cell].icons = THREE_D_I(ultravium_battery_pack, processing_unit, palusium_crystal, ultravium_power_cell)
    data_recipe[ultravium_power_cell].order = c

    data_technology[palusium_processing].prerequisites = {palusium_crushing}
end