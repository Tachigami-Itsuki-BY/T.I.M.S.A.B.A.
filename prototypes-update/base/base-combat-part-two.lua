data_item_subgroup["vehicle-equipment"].order = g_b

local vehicle_belt_immunity_eq = "bob-vehicle-belt-immunity-equipment"
data_item[vehicle_belt_immunity_eq].order = a
data_item[vehicle_belt_immunity_eq].stack_size = 1
data_item[vehicle_belt_immunity_eq].weight = 1000000
data_recipe[vehicle_belt_immunity_eq].order = a
data_recipe[vehicle_belt_immunity_eq].energy_required = 8
data_recipe[vehicle_belt_immunity_eq].ingredients =
{
    {type = item, name = advanced_circuit, amount = 4},
    {type = item, name = steel_plate, amount = 8}
}
data_belt_immunity_equipment[vehicle_belt_immunity_eq].energy_consumption = 120 .. kW

local vehicle_motor_eq = "bob-vehicle-motor-equipment"
data_item[vehicle_motor_eq].order = b
data_item[vehicle_motor_eq].stack_size = 8
data_item[vehicle_motor_eq].weight = 125000
data_recipe[vehicle_motor_eq].order = b
data_recipe[vehicle_motor_eq].energy_required = 8
data_recipe[vehicle_motor_eq].ingredients =
{
    {type = item, name = electric_engine_unit, amount = 32},
    {type = item, name = processing_unit, amount = 8},
    {type = item, name = steel_plate, amount = 16}
}
data_movement_bonus_equipment[vehicle_motor_eq].movement_bonus = 0.25
data_movement_bonus_equipment[vehicle_motor_eq].energy_consumption = 240 .. kW

local vehicle_engine_eq = "bob-vehicle-engine-equipment"
data_item[vehicle_engine_eq].order = c
data_item[vehicle_engine_eq].stack_size = 8
data_item[vehicle_engine_eq].weight = 125000
data_recipe[vehicle_engine_eq].order = c
data_recipe[vehicle_engine_eq].energy_required = 8
data_recipe[vehicle_engine_eq].ingredients =
{
    {type = item, name = nitinol_gear_wheel, amount = 32},
    {type = item, name = nitinol_bearing, amount = 32},
    {type = item, name = advanced_processing_unit, amount = 8},
    {type = item, name = vehicle_motor_eq, amount = 1},
    {type = item, name = nitinol_plate_bob, amount = 16}
}
data_movement_bonus_equipment[vehicle_engine_eq].movement_bonus = 0.50
data_movement_bonus_equipment[vehicle_engine_eq].energy_consumption = 480 .. kW


local vehicle_roboport_area_1 = "bob-vehicle-roboport-antenna-equipment"
local vehicle_roboport_area_2 = "bob-vehicle-roboport-antenna-equipment-2"
local vehicle_roboport_area_3 = "bob-vehicle-roboport-antenna-equipment-3"
local vehicle_roboport_area_4 = "bob-vehicle-roboport-antenna-equipment-4"
local vehicle_roboport_areas_eq =
{
    {name = vehicle_roboport_area_1, construction_radius = 8},
    {name = vehicle_roboport_area_2, construction_radius = 16},
    {name = vehicle_roboport_area_3, construction_radius = 24},
    {name = vehicle_roboport_area_4, construction_radius = 32}
}
for _, EQUIPMENT in pairs(vehicle_roboport_areas_eq) do
    data_item[EQUIPMENT.name].subgroup = is_vehicle_equipment_2
    data_item[EQUIPMENT.name].stack_size = 16
    data_item[EQUIPMENT.name].weight = 62500
    data_recipe[EQUIPMENT.name].subgroup = is_vehicle_equipment_2
    data_roboport_equipment[EQUIPMENT.name].construction_radius = EQUIPMENT.construction_radius
end
local function vehicle_roboport_area_eq(name, antenna, plate, roboport_area)
    local ingredients =
    {
        {type = item, name = antenna, amount = 4},
        {type = item, name = plate, amount = 4}
    }
    if roboport_area then
        table.insert(ingredients, {type = item, name = roboport_area, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
vehicle_roboport_area_eq(vehicle_roboport_area_1, roboport_antenna_1, steel_plate)
vehicle_roboport_area_eq(vehicle_roboport_area_2, roboport_antenna_2, aluminium_plate_bob, vehicle_roboport_area_1)
vehicle_roboport_area_eq(vehicle_roboport_area_3, roboport_antenna_3, titanium_plate_bob, vehicle_roboport_area_2)
vehicle_roboport_area_eq(vehicle_roboport_area_4, roboport_antenna_4, nitinol_plate_bob, vehicle_roboport_area_3)

local vehicle_chargepad_eq_1 = "bob-vehicle-roboport-chargepad-equipment"
local vehicle_chargepad_eq_2 = "bob-vehicle-roboport-chargepad-equipment-2"
local vehicle_chargepad_eq_3 = "bob-vehicle-roboport-chargepad-equipment-3"
local vehicle_chargepad_eq_4 = "bob-vehicle-roboport-chargepad-equipment-4"
local vehicle_chargepads_eq =
{
    {name = vehicle_chargepad_eq_1, input_flow_limit = 1800,  charging_energy = 900,  charging_station_count = 2},
    {name = vehicle_chargepad_eq_2, input_flow_limit = 7200,  charging_energy = 1800, charging_station_count = 4},
    {name = vehicle_chargepad_eq_3, input_flow_limit = 16200, charging_energy = 2700, charging_station_count = 6},
    {name = vehicle_chargepad_eq_4, input_flow_limit = 28800, charging_energy = 3600, charging_station_count = 8}
}
for _, EQUIPMENT in pairs(vehicle_chargepads_eq) do
    data_item[EQUIPMENT.name].subgroup = is_vehicle_equipment_3
    data_item[EQUIPMENT.name].stack_size = 16
    data_item[EQUIPMENT.name].weight = 62500
    data_recipe[EQUIPMENT.name].subgroup = is_vehicle_equipment_3
    data_roboport_equipment[EQUIPMENT.name].energy_source.buffer_capacity = (EQUIPMENT.input_flow_limit * 10) .. kJ
    data_roboport_equipment[EQUIPMENT.name].energy_source.input_flow_limit = EQUIPMENT.input_flow_limit .. kW
    data_roboport_equipment[EQUIPMENT.name].charging_energy = EQUIPMENT.charging_energy .. kW
    data_roboport_equipment[EQUIPMENT.name].charging_station_count = EQUIPMENT.charging_station_count
end
local function rp_chargepad_eq_recipe(name, chargepad, plate, chargepad_eq)
    local ingredients =
    {
        {type = item, name = chargepad, amount = 16},
        {type = item, name = plate, amount = 4}
    }
    if chargepad_eq then
        table.insert(ingredients, {type = item, name = chargepad_eq, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
rp_chargepad_eq_recipe(vehicle_chargepad_eq_1, roboport_chargepad_1, steel_plate)
rp_chargepad_eq_recipe(vehicle_chargepad_eq_2, roboport_chargepad_2, aluminium_plate_bob, vehicle_chargepad_eq_1)
rp_chargepad_eq_recipe(vehicle_chargepad_eq_3, roboport_chargepad_3, titanium_plate_bob, vehicle_chargepad_eq_2)
rp_chargepad_eq_recipe(vehicle_chargepad_eq_4, roboport_chargepad_4, nitinol_plate_bob, vehicle_chargepad_eq_3)

local vehicle_robot_control_eq_1 = "bob-vehicle-roboport-robot-equipment"
local vehicle_robot_control_eq_2 = "bob-vehicle-roboport-robot-equipment-2"
local vehicle_robot_control_eq_3 = "bob-vehicle-roboport-robot-equipment-3"
local vehicle_robot_control_eq_4 = "bob-vehicle-roboport-robot-equipment-4"
local vehicle_robot_controls_eq =
{
    {name = vehicle_robot_control_eq_1, robot_limit = 4},
    {name = vehicle_robot_control_eq_2, robot_limit = 8},
    {name = vehicle_robot_control_eq_3, robot_limit = 12},
    {name = vehicle_robot_control_eq_4, robot_limit = 16}
}
for _, EQUIPMENT in pairs(vehicle_robot_controls_eq) do
    data_item[EQUIPMENT.name].subgroup = is_vehicle_equipment_4
    data_item[EQUIPMENT.name].stack_size = 16
    data_item[EQUIPMENT.name].weight = 62500
    data_recipe[EQUIPMENT.name].subgroup = is_vehicle_equipment_4
    data_roboport_equipment[EQUIPMENT.name].robot_limit = EQUIPMENT.robot_limit
end
local function vehicle_robot_control_eq_recipe(name, circuit, robot_control_eq)
    local ingredients =
    {
        {type = item, name = circuit, amount = 16},
        {type = item, name = solder, amount = 4},
        {type = item, name = module_case, amount = 1}
    }
    if robot_control_eq then
        table.insert(ingredients, {type = item, name = robot_control_eq, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
vehicle_robot_control_eq_recipe(vehicle_robot_control_eq_1, electronic_circuit)
vehicle_robot_control_eq_recipe(vehicle_robot_control_eq_2, advanced_circuit, vehicle_robot_control_eq_1)
vehicle_robot_control_eq_recipe(vehicle_robot_control_eq_3, processing_unit, vehicle_robot_control_eq_2)
vehicle_robot_control_eq_recipe(vehicle_robot_control_eq_4, advanced_processing_unit, vehicle_robot_control_eq_3)

local vehicle_roboport_eq_1 = "bob-vehicle-roboport-equipment-1"
local vehicle_roboport_eq_2 = "bob-vehicle-roboport-equipment-2"
local vehicle_roboport_eq_3 = "bob-vehicle-roboport-equipment-3"
local vehicle_roboport_eq_4 = "bob-vehicle-roboport-equipment-4"
local vehicle_roboports_eq =
{
    {name = vehicle_roboport_eq_1, robot_limit = 8,  input_flow_limit = 1800,  charging_energy = 900,  charging_station_count = 2},
    {name = vehicle_roboport_eq_2, robot_limit = 16, input_flow_limit = 7200,  charging_energy = 1800, charging_station_count = 4},
    {name = vehicle_roboport_eq_3, robot_limit = 24, input_flow_limit = 16200, charging_energy = 2700, charging_station_count = 6},
    {name = vehicle_roboport_eq_4, robot_limit = 32, input_flow_limit = 28800, charging_energy = 3600, charging_station_count = 8}
}
for _, EQUIPMENT in pairs(vehicle_roboports_eq) do
    data_item[EQUIPMENT.name].subgroup = is_vehicle_equipment_5
    data_item[EQUIPMENT.name].stack_size = 16
    data_item[EQUIPMENT.name].weight = 62500
    data_recipe[EQUIPMENT.name].subgroup = is_vehicle_equipment_5
    data_roboport_equipment[EQUIPMENT.name].energy_source.buffer_capacity = (EQUIPMENT.input_flow_limit * 10) .. kJ
    data_roboport_equipment[EQUIPMENT.name].energy_source.input_flow_limit = EQUIPMENT.input_flow_limit .. kW
    data_roboport_equipment[EQUIPMENT.name].robot_limit = EQUIPMENT.robot_limit
    data_roboport_equipment[EQUIPMENT.name].construction_radius = EQUIPMENT.robot_limit
    data_roboport_equipment[EQUIPMENT.name].charging_energy = EQUIPMENT.charging_energy .. kW
    data_roboport_equipment[EQUIPMENT.name].charging_station_count = EQUIPMENT.charging_station_count
end
local function vehicle_roboport_eq_recipe(name, antenna, door, chargepad, plate, roboport_eq)
    local ingredients =
    {
        {type = item, name = antenna, amount = 4},
        {type = item, name = door, amount = 1},
        {type = item, name = chargepad, amount = 16},
        {type = item, name = plate, amount = 8}
    }
    if roboport_eq then
        table.insert(ingredients, {type = item, name = roboport_eq, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
vehicle_roboport_eq_recipe(vehicle_roboport_eq_1, roboport_antenna_1, roboport_door_1, roboport_chargepad_1, steel_plate)
vehicle_roboport_eq_recipe(vehicle_roboport_eq_2, roboport_antenna_2, roboport_door_2, roboport_chargepad_2, aluminium_plate_bob, vehicle_roboport_eq_1)
vehicle_roboport_eq_recipe(vehicle_roboport_eq_3, roboport_antenna_3, roboport_door_3, roboport_chargepad_3, titanium_plate_bob, vehicle_roboport_eq_2)
vehicle_roboport_eq_recipe(vehicle_roboport_eq_4, roboport_antenna_4, roboport_door_4, roboport_chargepad_4, nitinol_plate_bob, vehicle_roboport_eq_3)

local vehicle_solar_panel_eq_1 = "bob-vehicle-solar-panel-equipment-1"
local vehicle_solar_panel_eq_2 = "bob-vehicle-solar-panel-equipment-2"
local vehicle_solar_panel_eq_3 = "bob-vehicle-solar-panel-equipment-3"
local vehicle_solar_panel_eq_4 = "bob-vehicle-solar-panel-equipment-4"
local vehicle_solar_panel_eq_5 = "bob-vehicle-solar-panel-equipment-5"
local vehicle_solar_panels_eq =
{
    {name = vehicle_solar_panel_eq_1, power = 120},
    {name = vehicle_solar_panel_eq_2, power = 240},
    {name = vehicle_solar_panel_eq_3, power = 360},
    {name = vehicle_solar_panel_eq_4, power = 480},
    {name = vehicle_solar_panel_eq_5, power = 600}
}
for _, EQUIPMENT in pairs(vehicle_solar_panels_eq) do
    if data_solar_panel_equipment[EQUIPMENT.name] then
        if data_item[EQUIPMENT.name] then
            data_item[EQUIPMENT.name].subgroup = is_vehicle_equipment_6
            data_item[EQUIPMENT.name].stack_size = 32
            data_item[EQUIPMENT.name].weight = 31250
        end
        if data_recipe[EQUIPMENT.name] then
            data_recipe[EQUIPMENT.name].subgroup = is_vehicle_equipment_6
            data_recipe[EQUIPMENT.name].energy_required = 4
        end
        data_solar_panel_equipment[EQUIPMENT.name].power = EQUIPMENT.power .. kW
    end
end
local function vehicle_solar_panel_eq_recipe(name, circuit, plate_1, plate_2, cable, solar_panel, glass)
    local ingredients =
    {
        {type = item, name = circuit, amount = 16},
        {type = item, name = plate_1, amount = 16},
        {type = item, name = plate_2, amount = 16},
        {type = item, name = cable, amount = 32},
        {type = item, name = silicon_wafer, amount = 32}
    }
    if solar_panel then
        table.insert(ingredients, {type = item, name = solar_panel, amount = 1})
    end
    if glass then
        table.insert(ingredients, {type = item, name = glass, amount = 16})
    end
    data_recipe[name].ingredients = ingredients
end
vehicle_solar_panel_eq_recipe(vehicle_solar_panel_eq_1, electronic_circuit, copper_plate, steel_plate, copper_cable, nil, glass_bob)
vehicle_solar_panel_eq_recipe(vehicle_solar_panel_eq_2, advanced_circuit, aluminium_plate_bob, silver_plate_bob, tin_cable, vehicle_solar_panel_eq_1)
vehicle_solar_panel_eq_recipe(vehicle_solar_panel_eq_3, processing_unit, gold_plate_bob, titanium_plate_bob, gold_cable, vehicle_solar_panel_eq_2)
if data_item[alien_artifact] then
    vehicle_solar_panel_eq_recipe(vehicle_solar_panel_eq_4, advanced_processing_unit, tungsten_plate_bob, nitinol_plate_bob, alien_artifact, vehicle_solar_panel_eq_3)
    vehicle_solar_panel_eq_recipe(vehicle_solar_panel_eq_5, advanced_processing_unit, tungsten_carbide_plate_bob, orange_alloy, platinum_cable, vehicle_solar_panel_eq_4)
end

local vehicle_fission_cell_eq_1 = "bob-vehicle-fission-cell-equipment-1"
local vehicle_fission_cell_eq_2 = "bob-vehicle-fission-cell-equipment-2"
local vehicle_fission_cell_eq_3 = "bob-vehicle-fission-cell-equipment-3"
local vehicle_fission_cell_eq_4 = "bob-vehicle-fission-cell-equipment-4"
local vehicle_fission_cell_eq_5 = "bob-vehicle-fission-cell-equipment-5"
local vehicle_fission_cell_eq_6 = "bob-vehicle-fission-cell-equipment-6"
local vehicle_fission_cells_eq =
{
    {name = vehicle_fission_cell_eq_1, power = 300},
    {name = vehicle_fission_cell_eq_2, power = 600},
    {name = vehicle_fission_cell_eq_3, power = 900},
    {name = vehicle_fission_cell_eq_4, power = 1200},
    {name = vehicle_fission_cell_eq_5, power = 1500},
    {name = vehicle_fission_cell_eq_6, power = 1800}
}
for _, EQUIPMENT in pairs(vehicle_fission_cells_eq) do
    data_item[EQUIPMENT.name].subgroup = is_vehicle_equipment_7
    data_item[EQUIPMENT.name].stack_size = 16
    data_item[EQUIPMENT.name].weight = 62500
    data_recipe[EQUIPMENT.name].subgroup = is_vehicle_equipment_7
    data_recipe[EQUIPMENT.name].energy_required = 8
    data_generator_equipment[EQUIPMENT.name].power = EQUIPMENT.power .. kW
end
data_recipe[vehicle_fission_cell_eq_1].ingredients =
{
    {type = item, name = advanced_circuit, amount = 32},
    {type = item, name = uranium_235_fuel_cell, amount = 4},
    {type = item, name = lead_plate_bob, amount = 64},
    {type = item, name = steel_plate, amount = 64},
    {type = item, name = carbon_angels, amount = 16}
}
data_recipe[vehicle_fission_cell_eq_2].ingredients =
{
    {type = item, name = advanced_circuit, amount = 32},
    {type = item, name = uranium_235_fuel_cell, amount = 4},
    {type = item, name = vehicle_fission_cell_eq_1, amount = 1},
    {type = item, name = steel_plate, amount = 64},
    {type = fluid, name = water_semiheavy_3, amount = 30}
}
if data_item[alien_artifact] then
    data_recipe[vehicle_fission_cell_eq_3].ingredients =
    {
        {type = item, name = processing_unit, amount = 64},
        {type = item, name = mixed_oxide_fuel_cell, amount = 8},
        {type = item, name = vehicle_fission_cell_eq_2, amount = 1},
        {type = item, name = tungsten_plate_bob, amount = 128},
        {type = item, name = alien_artifact, amount = 32},
        {type = item, name = speed_module_2, amount = 1}
    }
    data_recipe[vehicle_fission_cell_eq_4].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = thorium_fuel_cell, amount = 8},
        {type = item, name = vehicle_fission_cell_eq_3, amount = 1},
        {type = item, name = lithium_bob, amount = 16},
        {type = item, name = tungsten_carbide_plate_bob, amount = 32},
        {type = item, name = alien_artifact_yellow, amount = 16},
        {type = item, name = alien_artifact_green, amount = 16},
        {type = item, name = speed_module_3, amount = 1}
    }
    data_recipe[vehicle_fission_cell_eq_5].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = thorium_fuel_cell, amount = 8},
        {type = item, name = vehicle_fission_cell_eq_4, amount = 1},
        {type = item, name = blue_alloy, amount = 32},
        {type = item, name = speed_module_4, amount = 1},
        {type = fluid, name = red_fluid, amount = 480}
    }
else
    data_recipe[vehicle_fission_cell_eq_3].ingredients =
    {
        {type = item, name = processing_unit, amount = 64},
        {type = item, name = mixed_oxide_fuel_cell, amount = 8},
        {type = item, name = vehicle_fission_cell_eq_2, amount = 1},
        {type = item, name = tungsten_plate_bob, amount = 128},
        {type = item, name = speed_module_2, amount = 1}
    }
    data_recipe[vehicle_fission_cell_eq_4].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = thorium_fuel_cell, amount = 8},
        {type = item, name = vehicle_fission_cell_eq_3, amount = 1},
        {type = item, name = lithium_bob, amount = 16},
        {type = item, name = tungsten_carbide_plate_bob, amount = 32},
        {type = item, name = speed_module_3, amount = 1}
    }
    data_recipe[vehicle_fission_cell_eq_5].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = thorium_fuel_cell, amount = 8},
        {type = item, name = vehicle_fission_cell_eq_4, amount = 1},
        {type = item, name = speed_module_4, amount = 1}
    }
end
data_recipe[vehicle_fission_cell_eq_6].ingredients =
{
    {type = item, name = advanced_processing_unit, amount = 64},
    {type = item, name = deuterium_fuel_cell, amount = 16},
    {type = item, name = vehicle_fission_cell_eq_5, amount = 1},
    {type = item, name = polished_emerald_bob, amount = 8},
    {type = item, name = speed_module_5, amount = 1},
    {type = item, name = productivity_module_5, amount = 1}
}

local vehicle_fission_reactor_eq_1 = "bob-vehicle-fission-reactor-equipment-1"
local vehicle_fission_reactor_eq_2 = "bob-vehicle-fission-reactor-equipment-2"
local vehicle_fission_reactor_eq_3 = "bob-vehicle-fission-reactor-equipment-3"
local vehicle_fission_reactor_eq_4 = "bob-vehicle-fission-reactor-equipment-4"
local vehicle_fission_reactor_eq_5 = "bob-vehicle-fission-reactor-equipment-5"
local vehicle_fission_reactor_eq_6 = "bob-vehicle-fission-reactor-equipment-6"
local vehicle_fission_reactors =
{
    {name = vehicle_fission_reactor_eq_1, power = 600},
    {name = vehicle_fission_reactor_eq_2, power = 1200},
    {name = vehicle_fission_reactor_eq_3, power = 1800},
    {name = vehicle_fission_reactor_eq_4, power = 2400},
    {name = vehicle_fission_reactor_eq_5, power = 3000},
    {name = vehicle_fission_reactor_eq_6, power = 3600}
}
for _, EQUIPMENT in pairs(vehicle_fission_reactors) do
    data_item[EQUIPMENT.name].subgroup = is_vehicle_equipment_8
    data_item[EQUIPMENT.name].stack_size = 8
    data_item[EQUIPMENT.name].weight = 125000
    data_recipe[EQUIPMENT.name].subgroup = is_vehicle_equipment_8
    data_recipe[EQUIPMENT.name].energy_required = 8
    data_generator_equipment[EQUIPMENT.name].power = EQUIPMENT.power .. kW
end
data_recipe[vehicle_fission_reactor_eq_1].ingredients =
{
    {type = item, name = advanced_circuit, amount = 64},
    {type = item, name = uranium_235_fuel_cell, amount = 8},
    {type = item, name = lead_plate_bob, amount = 128},
    {type = item, name = steel_plate, amount = 128},
    {type = item, name = carbon_angels, amount = 32}
}
data_recipe[vehicle_fission_reactor_eq_2].ingredients =
{
    {type = item, name = advanced_circuit, amount = 64},
    {type = item, name = uranium_235_fuel_cell, amount = 8},
    {type = item, name = vehicle_fission_reactor_eq_1, amount = 1},
    {type = item, name = steel_plate, amount = 128},
    {type = fluid, name = water_semiheavy_3, amount = 60, maximum_temperature = 30}
}
if data_item[alien_artifact] then
    data_recipe[vehicle_fission_reactor_eq_3].ingredients =
    {
        {type = item, name = processing_unit, amount = 128},
        {type = item, name = mixed_oxide_fuel_cell, amount = 16},
        {type = item, name = vehicle_fission_reactor_eq_2, amount = 1},
        {type = item, name = tungsten_plate_bob, amount = 256},
        {type = item, name = alien_artifact, amount = 64},
        {type = item, name = speed_module_2, amount = 1}
    }
    data_recipe[vehicle_fission_reactor_eq_4].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 128},
        {type = item, name = thorium_fuel_cell, amount = 16},
        {type = item, name = vehicle_fission_reactor_eq_3, amount = 1},
        {type = item, name = lithium_bob, amount = 32},
        {type = item, name = tungsten_carbide_plate_bob, amount = 64},
        {type = item, name = alien_artifact_yellow, amount = 32},
        {type = item, name = alien_artifact_green, amount = 32},
        {type = item, name = speed_module_3, amount = 1},
        {type = item, name = efficiency_module_3, amount = 1}
    }
    data_recipe[vehicle_fission_reactor_eq_5].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 128},
        {type = item, name = thorium_fuel_cell, amount = 16},
        {type = item, name = vehicle_fission_reactor_eq_4, amount = 1},
        {type = item, name = blue_alloy, amount = 64},
        {type = item, name = speed_module_4, amount = 1},
        {type = item, name = efficiency_module_4, amount = 1},
        {type = fluid, name = red_fluid, amount = 960}
    }
else
    data_recipe[vehicle_fission_reactor_eq_3].ingredients =
    {
        {type = item, name = processing_unit, amount = 128},
        {type = item, name = mixed_oxide_fuel_cell, amount = 16},
        {type = item, name = vehicle_fission_reactor_eq_2, amount = 1},
        {type = item, name = tungsten_plate_bob, amount = 256},
        {type = item, name = speed_module_2, amount = 1}
    }
    data_recipe[vehicle_fission_reactor_eq_4].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 128},
        {type = item, name = thorium_fuel_cell, amount = 16},
        {type = item, name = vehicle_fission_reactor_eq_3, amount = 1},
        {type = item, name = lithium_bob, amount = 32},
        {type = item, name = tungsten_carbide_plate_bob, amount = 64},
        {type = item, name = speed_module_3, amount = 1},
        {type = item, name = efficiency_module_3, amount = 1}
    }
    data_recipe[vehicle_fission_reactor_eq_5].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 128},
        {type = item, name = thorium_fuel_cell, amount = 16},
        {type = item, name = vehicle_fission_reactor_eq_4, amount = 1},
        {type = item, name = speed_module_4, amount = 1},
        {type = item, name = efficiency_module_4, amount = 1}
    }
end
data_recipe[vehicle_fission_reactor_eq_6].ingredients =
{
    {type = item, name = advanced_processing_unit, amount = 128},
    {type = item, name = deuterium_fuel_cell, amount = 32},
    {type = item, name = vehicle_fission_reactor_eq_5, amount = 1},
    {type = item, name = polished_emerald_bob, amount = 16},
    {type = item, name = speed_module_5, amount = 1},
    {type = item, name = efficiency_module_5, amount = 1},
    {type = item, name = productivity_module_5, amount = 1},
    {type = item, name = quality_module_5, amount = 1}
}

local vehicle_energy_shield_eq_1 = "bob-vehicle-shield-equipment-1"
local vehicle_energy_shield_eq_2 = "bob-vehicle-shield-equipment-2"
local vehicle_energy_shield_eq_3 = "bob-vehicle-shield-equipment-3"
local vehicle_energy_shield_eq_4 = "bob-vehicle-shield-equipment-4"
local vehicle_energy_shield_eq_5 = "bob-vehicle-shield-equipment-5"
local vehicle_energy_shield_eq_6 = "bob-vehicle-shield-equipment-6"
local vehicle_energy_shields_eq =
{
    {name = vehicle_energy_shield_eq_1, input_flow_limit = 240,  max_shield_value = 60},
    {name = vehicle_energy_shield_eq_2, input_flow_limit = 480,  max_shield_value = 120},
    {name = vehicle_energy_shield_eq_3, input_flow_limit = 720,  max_shield_value = 180},
    {name = vehicle_energy_shield_eq_4, input_flow_limit = 960,  max_shield_value = 240},
    {name = vehicle_energy_shield_eq_5, input_flow_limit = 1200, max_shield_value = 300},
    {name = vehicle_energy_shield_eq_6, input_flow_limit = 1440, max_shield_value = 360}
}
for _, EQUIPMENT in pairs(vehicle_energy_shields_eq) do
    data_item[EQUIPMENT.name].subgroup = is_vehicle_equipment_9
    data_item[EQUIPMENT.name].stack_size = 16
    data_item[EQUIPMENT.name].weight = 62500
    data_recipe[EQUIPMENT.name].subgroup = is_vehicle_equipment_9
    data_recipe[EQUIPMENT.name].energy_required = 8
    data_energy_shield_equipment[EQUIPMENT.name].energy_per_shield = 30 .. kJ
    data_energy_shield_equipment[EQUIPMENT.name].max_shield_value = EQUIPMENT.max_shield_value
    data_energy_shield_equipment[EQUIPMENT.name].energy_source.input_flow_limit = EQUIPMENT.input_flow_limit .. kW
end
local function vehicle_energy_shield_eq_recipe(name, circuit, plate, energy_shield_eq, module_, alien_artifact_1, alien_artifact_2)
    local ingredients = {{type = item, name = circuit, amount = 8}}
    if plate then
        table.insert(ingredients, {type = item, name = plate, amount = 16})
    end
    if energy_shield_eq then
        table.insert(ingredients, {type = item, name = energy_shield_eq, amount = 1})
    end
    if module_ then
        table.insert(ingredients, {type = item, name = module_, amount = 1})
    end
    if alien_artifact_1 then
        table.insert(ingredients, {type = item, name = alien_artifact_1, amount = 8})
        table.insert(ingredients, {type = item, name = alien_artifact_2, amount = 8})
    end
    data_recipe[name].ingredients = ingredients
end
vehicle_energy_shield_eq_recipe(vehicle_energy_shield_eq_1, electronic_circuit, steel_plate)
vehicle_energy_shield_eq_recipe(vehicle_energy_shield_eq_2, advanced_circuit, aluminium_plate_bob, vehicle_energy_shield_eq_1, productivity_module_1)
if data_item[alien_artifact] then
    vehicle_energy_shield_eq_recipe(vehicle_energy_shield_eq_3, processing_unit, alien_artifact, vehicle_energy_shield_eq_2, productivity_module_2)
    vehicle_energy_shield_eq_recipe(vehicle_energy_shield_eq_4, advanced_processing_unit, nil, vehicle_energy_shield_eq_3, productivity_module_3, alien_artifact_orange, alien_artifact_blue)
    vehicle_energy_shield_eq_recipe(vehicle_energy_shield_eq_5, advanced_processing_unit, nil, vehicle_energy_shield_eq_4, productivity_module_4, alien_artifact_yellow, alien_artifact_purple)
    vehicle_energy_shield_eq_recipe(vehicle_energy_shield_eq_6, advanced_processing_unit, nil, vehicle_energy_shield_eq_5, productivity_module_5, alien_artifact_red, alien_artifact_green)
else
    vehicle_energy_shield_eq_recipe(vehicle_energy_shield_eq_3, processing_unit, nil, vehicle_energy_shield_eq_2, productivity_module_2)
    vehicle_energy_shield_eq_recipe(vehicle_energy_shield_eq_4, advanced_processing_unit, nil, vehicle_energy_shield_eq_3, productivity_module_3)
    vehicle_energy_shield_eq_recipe(vehicle_energy_shield_eq_5, advanced_processing_unit, nil, vehicle_energy_shield_eq_4, productivity_module_4)
    vehicle_energy_shield_eq_recipe(vehicle_energy_shield_eq_6, advanced_processing_unit, nil, vehicle_energy_shield_eq_5, productivity_module_5)
end

local vehicle_battery_eq_1 = "bob-vehicle-battery-equipment-1"
local vehicle_battery_eq_2 = "bob-vehicle-battery-equipment-2"
local vehicle_battery_eq_3 = "bob-vehicle-battery-equipment-3"
local vehicle_battery_eq_4 = "bob-vehicle-battery-equipment-4"
local vehicle_battery_eq_5 = "bob-vehicle-battery-equipment-5"
local vehicle_battery_eq_6 = "bob-vehicle-battery-equipment-6"
local vehicle_batterys_eq =
{
    {name = vehicle_battery_eq_1, buffer_capacity = 30000},
    {name = vehicle_battery_eq_2, buffer_capacity = 60000},
    {name = vehicle_battery_eq_3, buffer_capacity = 120000},
    {name = vehicle_battery_eq_4, buffer_capacity = 240000},
    {name = vehicle_battery_eq_5, buffer_capacity = 480000},
    {name = vehicle_battery_eq_6, buffer_capacity = 960000}
}
for _, EQUIPMENT in pairs(vehicle_batterys_eq) do
    data_item[EQUIPMENT.name].subgroup = is_vehicle_equipment_10
    data_item[EQUIPMENT.name].stack_size = 32
    data_item[EQUIPMENT.name].weight = 31250
    data_recipe[EQUIPMENT.name].subgroup = is_vehicle_equipment_10
    data_recipe[EQUIPMENT.name].energy_required = 8
    data_battery_equipment[EQUIPMENT.name].energy_source.buffer_capacity = EQUIPMENT.buffer_capacity .. kJ
end
local function vehicle_battery_eq_recipe(name, battery, circuit, alien_artifact_1, alien_artifact_2)
    local ingredients =
    {
        {type = item, name = battery, amount = 2},
        {type = item, name = circuit, amount = 8}
    }
    if alien_artifact_1 then
        table.insert(ingredients, {type = item, name = alien_artifact_1, amount = 8})
        table.insert(ingredients, {type = item, name = alien_artifact_2, amount = 8})
    end
    data_recipe[name].ingredients = ingredients
end
vehicle_battery_eq_recipe(vehicle_battery_eq_1, battery_lead_acid, electronic_circuit)
vehicle_battery_eq_recipe(vehicle_battery_eq_2, vehicle_battery_eq_1, advanced_circuit)
vehicle_battery_eq_recipe(vehicle_battery_eq_3, vehicle_battery_eq_2, battery_lithium_ion)
if data_item[alien_artifact] then
    vehicle_battery_eq_recipe(vehicle_battery_eq_4, vehicle_battery_eq_3, processing_unit, alien_artifact_orange, alien_artifact_blue)
    vehicle_battery_eq_recipe(vehicle_battery_eq_5, vehicle_battery_eq_4, battery_silver_zinc, alien_artifact_yellow, alien_artifact_purple)
    vehicle_battery_eq_recipe(vehicle_battery_eq_6, vehicle_battery_eq_5, advanced_processing_unit, alien_artifact_red, alien_artifact_green)
else
    vehicle_battery_eq_recipe(vehicle_battery_eq_4, vehicle_battery_eq_3, processing_unit)
    vehicle_battery_eq_recipe(vehicle_battery_eq_5, vehicle_battery_eq_4, battery_silver_zinc)
    vehicle_battery_eq_recipe(vehicle_battery_eq_6, vehicle_battery_eq_5, advanced_processing_unit)
end

local vehicle_plasma_cannon_eq_1 = "bob-vehicle-big-turret-equipment-1"
local vehicle_plasma_cannon_eq_2 = "bob-vehicle-big-turret-equipment-2"
local vehicle_plasma_cannon_eq_3 = "bob-vehicle-big-turret-equipment-3"
local vehicle_plasma_cannon_eq_4 = "bob-vehicle-big-turret-equipment-4"
local vehicle_plasma_cannon_eq =
{
    {name = vehicle_plasma_cannon_eq_1, range = 32, cooldown = 240, damage_modifier = 4,  energy_consumption = 12000},
    {name = vehicle_plasma_cannon_eq_2, range = 40, cooldown = 240, damage_modifier = 8,  energy_consumption = 24000},
    {name = vehicle_plasma_cannon_eq_3, range = 48, cooldown = 240, damage_modifier = 12, energy_consumption = 36000},
    {name = vehicle_plasma_cannon_eq_4, range = 56, cooldown = 240, damage_modifier = 16, energy_consumption = 48000}
}
for _, EQUIPMENT in pairs(vehicle_plasma_cannon_eq) do
    data_item[EQUIPMENT.name].subgroup = is_vehicle_equipment_11
    data_item[EQUIPMENT.name].stack_size = 16
    data_item[EQUIPMENT.name].weight = 62500
    data_recipe[EQUIPMENT.name].subgroup = is_vehicle_equipment_11
    data_recipe[EQUIPMENT.name].energy_required = 8
    data_active_defense_equipment[EQUIPMENT.name].energy_source.buffer_capacity = (EQUIPMENT.energy_consumption * 2) .. kJ
    data_active_defense_equipment[EQUIPMENT.name].energy_source.input_flow_limit = (EQUIPMENT.energy_consumption / 4) .. kW
    data_active_defense_equipment[EQUIPMENT.name].attack_parameters.cooldown = EQUIPMENT.cooldown
    data_active_defense_equipment[EQUIPMENT.name].attack_parameters.damage_modifier = EQUIPMENT.damage_modifier
    data_active_defense_equipment[EQUIPMENT.name].attack_parameters.range = EQUIPMENT.range
    data_active_defense_equipment[EQUIPMENT.name].attack_parameters.min_range = 16
    data_active_defense_equipment[EQUIPMENT.name].attack_parameters.ammo_type.energy_consumption = EQUIPMENT.energy_consumption .. kJ
    local ammo_type = data_active_defense_equipment[EQUIPMENT.name].attack_parameters.ammo_type
    local action = ammo_type.action[1] or ammo_type.action
    local delivery = action.action_delivery[1] or action.action_delivery
    if delivery then
        delivery.max_range = EQUIPMENT.range * 1.5
    end
end
if data_item[alien_artifact] then
    data_recipe[vehicle_plasma_cannon_eq_1].ingredients =
    {
        {type = item,  name = battery_lead_acid,      amount = 32},
        {type = item,  name = advanced_circuit,       amount = 32},
        {type = item,  name = invar_plate_bob,        amount = 64},
        {type = item,  name = cobalt_steel_plate_bob, amount = 64},
        {type = item,  name = alien_artifact,         amount = 64},
        {type = fluid, name = nitrogen_angels,        amount = 480}
    }
    data_recipe[vehicle_plasma_cannon_eq_2].ingredients =
    {
        {type = item,  name = battery_lithium_ion,        amount = 32},
        {type = item,  name = processing_unit,            amount = 32},
        {type = item,  name = vehicle_plasma_cannon_eq_1, amount = 1},
        {type = item,  name = titanium_plate_bob,         amount = 64},
        {type = item,  name = tungsten_plate_bob,         amount = 64},
        {type = item,  name = alien_artifact_orange,      amount = 32},
        {type = fluid, name = hydrogen_angels,            amount = 480}
    }
    data_recipe[vehicle_plasma_cannon_eq_3].ingredients =
    {
        {type = item,  name = battery_silver_zinc,        amount = 32},
        {type = item,  name = advanced_processing_unit,   amount = 32},
        {type = item,  name = vehicle_plasma_cannon_eq_2, amount = 1},
        {type = item,  name = copper_tungsten_plate_bob,  amount = 64},
        {type = item,  name = nitinol_plate_bob,          amount = 64},
        {type = item,  name = alien_artifact_red,         amount = 32},
        {type = item,  name = alien_artifact_yellow,      amount = 32},
        {type = fluid, name = deuterium_angels,           amount = 15}
    }
    data_recipe[vehicle_plasma_cannon_eq_4].ingredients =
    {
        {type = item,  name = battery_graphene,           amount = 32},
        {type = item,  name = low_density_structure,      amount = 8},
        {type = item,  name = heat_shielding_tile,        amount = 8},
        {type = item,  name = advanced_processing_unit,   amount = 64},
        {type = item,  name = vehicle_plasma_cannon_eq_3, amount = 1},
        {type = item,  name = orange_alloy,               amount = 64},
        {type = item,  name = efficiency_module_5,        amount = 1},
        {type = item,  name = quality_module_5,           amount = 1},
        {type = fluid, name = yellow_fluid,               amount = 480}
    }
else
    data_recipe[vehicle_plasma_cannon_eq_1].ingredients =
    {
        {type = item,  name = battery_lead_acid,      amount = 32},
        {type = item,  name = advanced_circuit,       amount = 32},
        {type = item,  name = invar_plate_bob,        amount = 64},
        {type = item,  name = cobalt_steel_plate_bob, amount = 64},
        {type = fluid, name = nitrogen_angels,        amount = 480}
    }
    data_recipe[vehicle_plasma_cannon_eq_2].ingredients =
    {
        {type = item,  name = battery_lithium_ion,        amount = 32},
        {type = item,  name = processing_unit,            amount = 32},
        {type = item,  name = vehicle_plasma_cannon_eq_1, amount = 1},
        {type = item,  name = titanium_plate_bob,         amount = 64},
        {type = item,  name = tungsten_plate_bob,         amount = 64},
        {type = fluid, name = hydrogen_angels,            amount = 480}
    }
    data_recipe[vehicle_plasma_cannon_eq_3].ingredients =
    {
        {type = item,  name = battery_silver_zinc,        amount = 32},
        {type = item,  name = advanced_processing_unit,   amount = 32},
        {type = item,  name = vehicle_plasma_cannon_eq_2, amount = 1},
        {type = item,  name = copper_tungsten_plate_bob,  amount = 64},
        {type = item,  name = nitinol_plate_bob,          amount = 64},
        {type = fluid, name = deuterium_angels,           amount = 60}
    }
    data_recipe[vehicle_plasma_cannon_eq_4].ingredients =
    {
        {type = item,  name = battery_graphene,           amount = 32},
        {type = item,  name = low_density_structure,      amount = 8},
        {type = item,  name = heat_shielding_tile,        amount = 8},
        {type = item,  name = advanced_processing_unit,   amount = 64},
        {type = item,  name = vehicle_plasma_cannon_eq_3, amount = 1},
        {type = item,  name = efficiency_module_5,        amount = 1},
        {type = item,  name = quality_module_5,           amount = 1},
        {type = fluid, name = tritium_gas,                amount = 60}
    }
end

local vehicle_laser_defense_eq_1 = "bob-vehicle-laser-defense-equipment-1"
local vehicle_laser_defense_eq_2 = "bob-vehicle-laser-defense-equipment-2"
local vehicle_laser_defense_eq_3 = "bob-vehicle-laser-defense-equipment-3"
local vehicle_laser_defense_eq_4 = "bob-vehicle-laser-defense-equipment-4"
local vehicle_laser_defense_eq_5 = "bob-vehicle-laser-defense-equipment-5"
local vehicle_laser_defense_eq_6 = "bob-vehicle-laser-defense-equipment-6"
local vehicle_laser_defenses_eq =
{
    {name = vehicle_laser_defense_eq_1, energy_consumption = 120, damage_modifier = 1, cooldown = 60, range = 16},
    {name = vehicle_laser_defense_eq_2, energy_consumption = 240, damage_modifier = 2, cooldown = 60, range = 20},
    {name = vehicle_laser_defense_eq_3, energy_consumption = 360, damage_modifier = 3, cooldown = 60, range = 24},
    {name = vehicle_laser_defense_eq_4, energy_consumption = 480, damage_modifier = 4, cooldown = 60, range = 28},
    {name = vehicle_laser_defense_eq_5, energy_consumption = 600, damage_modifier = 5, cooldown = 60, range = 32},
    {name = vehicle_laser_defense_eq_6, energy_consumption = 720, damage_modifier = 6, cooldown = 60, range = 36}
}
for _, EQUIPMENT in pairs(vehicle_laser_defenses_eq) do
    data_item[EQUIPMENT.name].subgroup = is_vehicle_equipment_12
    data_item[EQUIPMENT.name].stack_size = 16
    data_item[EQUIPMENT.name].weight = 62500
    data_recipe[EQUIPMENT.name].subgroup = is_vehicle_equipment_12
    data_recipe[EQUIPMENT.name].energy_required = 8
    data_active_defense_equipment[EQUIPMENT.name].energy_source.buffer_capacity = (EQUIPMENT.energy_consumption * 2) .. kJ
    data_active_defense_equipment[EQUIPMENT.name].energy_source.input_flow_limit = (EQUIPMENT.energy_consumption * 1.5) .. kW
    data_active_defense_equipment[EQUIPMENT.name].attack_parameters.cooldown = EQUIPMENT.cooldown
    data_active_defense_equipment[EQUIPMENT.name].attack_parameters.damage_modifier = EQUIPMENT.damage_modifier
    data_active_defense_equipment[EQUIPMENT.name].attack_parameters.range = EQUIPMENT.range
    data_active_defense_equipment[EQUIPMENT.name].attack_parameters.ammo_type.energy_consumption = EQUIPMENT.energy_consumption .. kJ
    data_active_defense_equipment[EQUIPMENT.name].attack_parameters.ammo_type.action.action_delivery.max_length = EQUIPMENT.range
    data_active_defense_equipment[EQUIPMENT.name].attack_parameters.ammo_type.action.action_delivery.duration = EQUIPMENT.cooldown
end
local function vehicle_laser_defense_eq_recipe(name, battery, circuit, plate, laser_defense_eq, polished, artifact)
    local ingredients =
    {
        {type = item, name = battery, amount = 8},
        {type = item, name = circuit, amount = 8},
        {type = item, name = plate, amount = 8}
    }
    if laser_defense_eq then
        table.insert(ingredients, {type = item, name = laser_defense_eq, amount = 1})
    end
    if polished then
        table.insert(ingredients, {type = item, name = polished, amount = 1})
    end
    if artifact then
        table.insert(ingredients, {type = item, name = artifact, amount = 8})
    end
    data_recipe[name].ingredients = ingredients
end
vehicle_laser_defense_eq_recipe(vehicle_laser_defense_eq_1, battery_lead_acid, electronic_circuit, steel_plate)
vehicle_laser_defense_eq_recipe(vehicle_laser_defense_eq_2, battery_lead_acid, advanced_circuit, plastic, vehicle_laser_defense_eq_1, polished_sapphire_bob)
vehicle_laser_defense_eq_recipe(vehicle_laser_defense_eq_3, battery_lithium_ion, advanced_circuit, invar_plate_bob, vehicle_laser_defense_eq_2, polished_emerald_bob)
vehicle_laser_defense_eq_recipe(vehicle_laser_defense_eq_4, battery_lithium_ion, processing_unit, titanium_plate_bob, vehicle_laser_defense_eq_3, polished_amethyst_bob)
if data_item[alien_artifact] then
    vehicle_laser_defense_eq_recipe(vehicle_laser_defense_eq_5, battery_silver_zinc, processing_unit, nitinol_plate_bob, vehicle_laser_defense_eq_4, polished_topaz_bob, alien_artifact)
    data_recipe[vehicle_laser_defense_eq_6].ingredients =
    {
        {type = item, name = battery_silver_zinc, amount = 8},
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = vehicle_laser_defense_eq_5, amount = 1},
        {type = item, name = polished_diamond_bob, amount = 1},
        {type = item, name = blue_alloy, amount = 32},
        {type = item, name = orange_alloy, amount = 32},
        {type = item, name = speed_module_3, amount = 2},
        {type = item, name = efficiency_module_3, amount = 2},
        {type = fluid, name = green_fluid, amount = 480}
    }
else
    vehicle_laser_defense_eq_recipe(vehicle_laser_defense_eq_5, battery_silver_zinc, processing_unit, nitinol_plate_bob, vehicle_laser_defense_eq_4, polished_topaz_bob)
    data_recipe[vehicle_laser_defense_eq_6].ingredients =
    {
        {type = item, name = battery_silver_zinc, amount = 8},
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = vehicle_laser_defense_eq_5, amount = 1},
        {type = item, name = polished_diamond_bob, amount = 1},
        {type = item, name = speed_module_3, amount = 2},
        {type = item, name = efficiency_module_3, amount = 2}
    }
end

data_item[wall].stack_size = 200
data_recipe[wall].energy_required = 1
data_recipe[wall].ingredients[1].amount = 4

local gate = "gate"
data_item[gate].stack_size = 32
data_item[gate].weight = 31250
data_recipe[gate].energy_required = 1

local land_mine = "land-mine"
local poison_mine = "bob-poison-mine"
local slowdown_mine = "bob-slowdown-mine"
local mines =
{
    land_mine,
    poison_mine,
    slowdown_mine
}
for _, name in pairs(mines) do
    data_item[name].stack_size = 200
    data_item[name].weight = 5000
    data_recipe[name].energy_required = 4
end

local is_defensive_structure_1 = "defensive-structure"
local flamethrower_turret = "flamethrower-turret"
data_item[flamethrower_turret].subgroup = is_defensive_structure_1
data_item[flamethrower_turret].order = g
data_recipe[flamethrower_turret].subgroup = is_defensive_structure_1
data_recipe[flamethrower_turret].order = g
data_recipe[flamethrower_turret].ingredients =
{
    {type = item, name = iron_gear_wheel, amount = 16},
    {type = item, name = engine_unit, amount = 4},
    {type = item, name = iron_pipe, amount = 8},
    {type = item, name = steel_plate, amount = 32}
}
data_fluid_turret[flamethrower_turret].subgroup = is_defensive_structure_1
data_fluid_turret[flamethrower_turret].order = g
data_fluid_turret[flamethrower_turret].attack_parameters.range = 32
data_fluid_turret[flamethrower_turret].attack_parameters.min_range = 8
data_fluid_turret[flamethrower_turret].attack_parameters.fluid_consumption = 0.25

local radars =
{
    {name = radar_1, energy_usage = 240,  EPNS = 1},
    {name = radar_2, energy_usage = 480,  EPNS = 2},
    {name = radar_3, energy_usage = 720,  EPNS = 3},
    {name = radar_4, energy_usage = 960,  EPNS = 4},
    {name = radar_5, energy_usage = 1200, EPNS = 5}
}
for _, BUILD in pairs(radars) do
    data_item[BUILD.name].subgroup = is_defensive_structure_2
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_defensive_structure_2
    data_recipe[BUILD.name].energy_required = 4
    data_radar[BUILD.name].subgroup = is_defensive_structure_2
    data_radar[BUILD.name].energy_per_sector = (BUILD.energy_usage * 30) .. kJ
    data_radar[BUILD.name].energy_per_nearby_scan = (BUILD.energy_usage / BUILD.EPNS) .. kJ
    data_radar[BUILD.name].energy_usage = BUILD.energy_usage .. kW
end
local function radar_recipe(name, gear_wheel, circuit, plate, radar, bearing)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 4},
        {type = item, name = circuit, amount = 4},
        {type = item, name = plate, amount = 8}
    }
    if radar then
        table.insert(ingredients, {type = item, name = radar, amount = 1})
    end
    if bearing then
        table.insert(ingredients, {type = item, name = bearing, amount = 4})
    end
    data_recipe[name].ingredients = ingredients
end
radar_recipe(radar_1, iron_gear_wheel, basic_circuit_board, iron_plate)
radar_recipe(radar_2, steel_gear_wheel, electronic_circuit, steel_plate, radar_1)
radar_recipe(radar_3, brass_gear_wheel, advanced_circuit, aluminium_plate_bob, radar_2, brass_bearing)
radar_recipe(radar_4, titanium_gear_wheel, processing_unit, titanium_plate_bob, radar_3, titanium_bearing)
radar_recipe(radar_5, nitinol_gear_wheel, advanced_processing_unit, nitinol_plate_bob, radar_4, nitinol_bearing)

local gun_turrets =
{
    {name = gun_turret_1, range = 16},
    {name = gun_turret_2, range = 20},
    {name = gun_turret_3, range = 24},
    {name = gun_turret_4, range = 28},
    {name = gun_turret_5, range = 32}
}
for _, BUILD in pairs(gun_turrets) do
    data_ammo_turret[BUILD.name].attack_parameters.range = BUILD.range
    data_ammo_turret[BUILD.name].attack_parameters.cooldown = 7.5
end
local function gun_turret_recipe(name, gear_wheel, plate, gun_turret, bearing)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 8},
        {type = item, name = plate, amount = 16}
    }
    if gun_turret then
        table.insert(ingredients, {type = item, name = gun_turret, amount = 1})
    end
    if bearing then
        table.insert(ingredients, {type = item, name = bearing, amount = 8})
    end
    data_recipe[name].ingredients = ingredients
end
gun_turret_recipe(gun_turret_1, iron_gear_wheel, iron_plate, nil, copper_plate)
gun_turret_recipe(gun_turret_2, steel_gear_wheel, steel_plate, gun_turret_1)
gun_turret_recipe(gun_turret_3, brass_gear_wheel, invar_plate_bob, gun_turret_2, brass_bearing)
gun_turret_recipe(gun_turret_4, titanium_gear_wheel, titanium_plate_bob, gun_turret_3, titanium_bearing)
gun_turret_recipe(gun_turret_5, nitinol_gear_wheel, nitinol_plate_bob, gun_turret_4, nitinol_bearing)

local laser_turrets =
{
    {name = laser_turret_1, energy_consumption = 240,  damage_modifier = 2,  cooldown = 60, range = 16},
    {name = laser_turret_2, energy_consumption = 480,  damage_modifier = 4,  cooldown = 60, range = 20},
    {name = laser_turret_3, energy_consumption = 720,  damage_modifier = 6,  cooldown = 60, range = 24},
    {name = laser_turret_4, energy_consumption = 960,  damage_modifier = 8,  cooldown = 60, range = 28},
    {name = laser_turret_5, energy_consumption = 1200, damage_modifier = 10, cooldown = 60, range = 32}
}
for _, BUILD in pairs(laser_turrets) do
    data_item[BUILD.name].subgroup = is_turret_2
    data_recipe[BUILD.name].subgroup = is_turret_2
    data_electric_turret[BUILD.name].subgroup = is_turret_2
    data_electric_turret[BUILD.name].energy_source.buffer_capacity = (BUILD.energy_consumption * 2) .. kJ
    data_electric_turret[BUILD.name].energy_source.input_flow_limit = (BUILD.energy_consumption * 1.5) .. kW
    data_electric_turret[BUILD.name].energy_source.drain = nil
    data_electric_turret[BUILD.name].attack_parameters.cooldown = BUILD.cooldown
    data_electric_turret[BUILD.name].attack_parameters.damage_modifier = BUILD.damage_modifier
    data_electric_turret[BUILD.name].attack_parameters.range = BUILD.range
    data_electric_turret[BUILD.name].attack_parameters.ammo_type.energy_consumption = BUILD.energy_consumption .. kJ
    local ammo = data_electric_turret[BUILD.name].attack_parameters.ammo_type
    if ammo and ammo.action and ammo.action.action_delivery then
        local delivery = ammo.action.action_delivery
        delivery.max_length = BUILD.range
        delivery.duration = BUILD.cooldown
    end
end
local function laser_turret_recipe(name, battery, circuit, plate, laser_turret, polished)
    local ingredients =
    {
        {type = item, name = battery, amount = 8},
        {type = item, name = circuit, amount = 16},
        {type = item, name = plate, amount = 16}
    }
    if laser_turret then
        table.insert(ingredients, {type = item, name = laser_turret, amount = 1})
    end
    if polished then
        table.insert(ingredients, {type = item, name = polished, amount = 8})
    end
    data_recipe[name].ingredients = ingredients
end
laser_turret_recipe(laser_turret_1, battery_lead_acid, electronic_circuit, steel_plate)
laser_turret_recipe(laser_turret_2, battery_lead_acid, advanced_circuit, steel_plate, laser_turret_1, polished_sapphire_bob)
laser_turret_recipe(laser_turret_3, battery_lithium_ion, advanced_circuit, invar_plate_bob, laser_turret_2, polished_emerald_bob)
laser_turret_recipe(laser_turret_4, battery_lithium_ion, processing_unit, titanium_plate_bob, laser_turret_3, polished_topaz_bob)
laser_turret_recipe(laser_turret_5, battery_silver_zinc, advanced_processing_unit, nitinol_plate_bob, laser_turret_4, polished_diamond_bob)

local sniper_turret_1 = "bob-sniper-turret-1"
local sniper_turret_2 = "bob-sniper-turret-2"
local sniper_turret_3 = "bob-sniper-turret-3"
local sniper_turrets =
{
    {name = sniper_turret_1, range = 32, cooldown = 240, damage_modifier = 8},
    {name = sniper_turret_2, range = 40, cooldown = 240, damage_modifier = 16},
    {name = sniper_turret_3, range = 48, cooldown = 240, damage_modifier = 32}
}
for _, BUILD in pairs(sniper_turrets) do
    data_item[BUILD.name].subgroup = is_turret_3
    data_recipe[BUILD.name].subgroup = is_turret_3
    data_ammo_turret[BUILD.name].subgroup = is_turret_3
    data_ammo_turret[BUILD.name].attack_parameters.range = BUILD.range
    data_ammo_turret[BUILD.name].attack_parameters.cooldown = BUILD.cooldown
    data_ammo_turret[BUILD.name].attack_parameters.damage_modifier = BUILD.damage_modifier
    data_ammo_turret[BUILD.name].attack_parameters.ammo_consumption_modifier = 4
end
local function sniper_turret_recipe(name, gear_wheel, plate_1, plate_2, sniper_turret, bearing)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 16},
        {type = item, name = plate_1, amount = 16},
        {type = item, name = plate_2, amount = 16}
    }
    if sniper_turret then
        table.insert(ingredients, {type = item, name = sniper_turret, amount = 1})
        table.insert(ingredients, {type = item, name = bearing, amount = 16})
    end
    data_recipe[name].ingredients = ingredients
end
sniper_turret_recipe(sniper_turret_1, iron_gear_wheel, iron_plate, copper_plate)
sniper_turret_recipe(sniper_turret_2, cobalt_steel_gear_wheel, steel_plate, invar_plate_bob, sniper_turret_1, cobalt_steel_bearing)
sniper_turret_recipe(sniper_turret_3, titanium_gear_wheel, titanium_plate_bob, nitinol_plate_bob, sniper_turret_2, nitinol_bearing)

local artillery_wagon_cannon_1 = "artillery-wagon-cannon"
local artillery_wagon_cannon_2 = "bob-artillery-wagon-cannon-2"
local artillery_wagon_cannon_3 = "bob-artillery-wagon-cannon-3"
local artillery_wagon_cannons =
{
    {name = artillery_wagon_cannon_1, cooldown = 240, range = 4,  damage_modifier = 1.00},
    {name = artillery_wagon_cannon_2, cooldown = 240, range = 8,  damage_modifier = 1.25},
    {name = artillery_wagon_cannon_3, cooldown = 240, range = 12, damage_modifier = 1.50}
}
for _, BUILD in pairs(artillery_wagon_cannons) do
    data_gun[BUILD.name].attack_parameters.cooldown = BUILD.cooldown
    data_gun[BUILD.name].attack_parameters.range = BUILD.range * 32
    data_gun[BUILD.name].attack_parameters.damage_modifier = BUILD.damage_modifier
end
local artillery_turrets =
{
    {name = artillery_turret_1},
    {name = artillery_turret_2},
    {name = artillery_turret_3}
}
for _, BUILD in pairs(artillery_turrets) do
    data_item[BUILD.name].subgroup = is_turret_4
    data_recipe[BUILD.name].subgroup = is_turret_4
    data_artillery_turret[BUILD.name].subgroup = is_turret_4
    data_artillery_turret[BUILD.name].manual_range_modifier = 2
end
local function artillery_turret_recipe(name, gear_wheel, circuit, plate_1, plate_2, artillery_turret)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 32},
        {type = item, name = circuit, amount = 16},
        {type = item, name = plate_1, amount = 64},
        {type = item, name = plate_2, amount = 64}
    }
    if artillery_turret then
        table.insert(ingredients, {type = item, name = artillery_turret, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
artillery_turret_recipe(artillery_turret_1, copper_tungsten_gear_wheel, advanced_processing_unit, reinforced_titanium_concrete_brick, copper_tungsten_plate_bob)
artillery_turret_recipe(artillery_turret_2, molybdenum_gear_wheel, advanced_processing_unit, carbon_concrete_brick, molybdenum_plate, artillery_turret_1)
artillery_turret_recipe(artillery_turret_3, niobium_tungsten_molybdenum_gear_wheel, advanced_processing_unit, reinforced_graphene_concrete_brick, niobium_tungsten_molybdenum_plate, artillery_turret_2)

local plasma_turret_1 = "bob-plasma-turret-1"
local plasma_turret_2 = "bob-plasma-turret-2"
local plasma_turret_3 = "bob-plasma-turret-3"
local plasma_turret_4 = "bob-plasma-turret-4"
local plasma_turrets =
{
    {name = plasma_turret_1, range = 32, cooldown = 240, damage_modifier = 4,  energy_consumption = 12000},
    {name = plasma_turret_2, range = 40, cooldown = 240, damage_modifier = 8,  energy_consumption = 24000},
    {name = plasma_turret_3, range = 48, cooldown = 240, damage_modifier = 12, energy_consumption = 36000},
    {name = plasma_turret_4, range = 56, cooldown = 240, damage_modifier = 16, energy_consumption = 48000}
}
for _, BUILD in pairs(plasma_turrets) do
    data_item[BUILD.name].subgroup = is_turret_5
    data_recipe[BUILD.name].subgroup = is_turret_5
    data_electric_turret[BUILD.name].subgroup = is_turret_5
    data_electric_turret[BUILD.name].energy_source.buffer_capacity = (BUILD.energy_consumption * 2) .. kJ
    data_electric_turret[BUILD.name].energy_source.input_flow_limit = (BUILD.energy_consumption / 4) .. kW
    data_electric_turret[BUILD.name].energy_source.drain = nil
    data_electric_turret[BUILD.name].attack_parameters.cooldown = BUILD.cooldown
    data_electric_turret[BUILD.name].attack_parameters.damage_modifier = BUILD.damage_modifier
    data_electric_turret[BUILD.name].attack_parameters.range = BUILD.range
    data_electric_turret[BUILD.name].attack_parameters.min_range = 16
    data_electric_turret[BUILD.name].attack_parameters.ammo_type.energy_consumption = BUILD.energy_consumption .. kJ
    local ammo_type = data_electric_turret[BUILD.name].attack_parameters.ammo_type
    local action = ammo_type.action[1] or ammo_type.action
    local delivery = action.action_delivery[1] or action.action_delivery
    if delivery then
        delivery.max_range = BUILD.range * 1.5
    end
end
if data_item[alien_artifact] then
    data_recipe[plasma_turret_1].ingredients =
    {
        {type = item,  name = battery_lead_acid,      amount = 64},
        {type = item,  name = advanced_circuit,       amount = 32},
        {type = item,  name = invar_plate_bob,        amount = 64},
        {type = item,  name = cobalt_steel_plate_bob, amount = 64},
        {type = item,  name = alien_artifact,         amount = 128},
        {type = fluid, name = nitrogen_angels,        amount = 960}
    }
    data_recipe[plasma_turret_2].ingredients =
    {
        {type = item,  name = battery_lithium_ion,   amount = 64},
        {type = item,  name = processing_unit,       amount = 32},
        {type = item,  name = plasma_turret_1,       amount = 1},
        {type = item,  name = titanium_plate_bob,    amount = 64},
        {type = item,  name = tungsten_plate_bob,    amount = 64},
        {type = item,  name = alien_artifact_orange, amount = 64},
        {type = fluid, name = hydrogen_angels,       amount = 960}
    }
    data_recipe[plasma_turret_3].ingredients =
    {
        {type = item,  name = battery_silver_zinc,       amount = 64},
        {type = item,  name = advanced_processing_unit,  amount = 32},
        {type = item,  name = plasma_turret_2,           amount = 1},
        {type = item,  name = copper_tungsten_plate_bob, amount = 64},
        {type = item,  name = nitinol_plate_bob,         amount = 64},
        {type = item,  name = alien_artifact_red,        amount = 64},
        {type = item,  name = alien_artifact_yellow,     amount = 64},
        {type = fluid, name = deuterium_angels,          amount = 120}
    }
    data_recipe[plasma_turret_4].ingredients =
    {
        {type = item,  name = battery_graphene,         amount = 64},
        {type = item,  name = low_density_structure,    amount = 16},
        {type = item,  name = heat_shielding_tile,      amount = 16},
        {type = item,  name = advanced_processing_unit, amount = 64},
        {type = item,  name = plasma_turret_3,          amount = 1},
        {type = item,  name = orange_alloy,             amount = 64},
        {type = item,  name = efficiency_module_5,      amount = 1},
        {type = item,  name = quality_module_5,         amount = 1},
        {type = fluid, name = yellow_fluid,             amount = 960}
    }
else
    data_recipe[plasma_turret_1].ingredients =
    {
        {type = item,  name = battery_lead_acid,      amount = 64},
        {type = item,  name = advanced_circuit,       amount = 32},
        {type = item,  name = invar_plate_bob,        amount = 64},
        {type = item,  name = cobalt_steel_plate_bob, amount = 64},
        {type = fluid, name = nitrogen_angels,        amount = 960}
    }
    data_recipe[plasma_turret_2].ingredients =
    {
        {type = item,  name = battery_lithium_ion, amount = 64},
        {type = item,  name = processing_unit,     amount = 32},
        {type = item,  name = plasma_turret_1,     amount = 1},
        {type = item,  name = titanium_plate_bob,  amount = 64},
        {type = item,  name = tungsten_plate_bob,  amount = 64},
        {type = fluid, name = hydrogen_angels,     amount = 960}
    }
    data_recipe[plasma_turret_3].ingredients =
    {
        {type = item,  name = battery_silver_zinc,       amount = 64},
        {type = item,  name = advanced_processing_unit,  amount = 32},
        {type = item,  name = plasma_turret_2,           amount = 1},
        {type = item,  name = copper_tungsten_plate_bob, amount = 64},
        {type = item,  name = nitinol_plate_bob,         amount = 64},
        {type = fluid, name = deuterium_angels,          amount = 120}
    }
    data_recipe[plasma_turret_4].ingredients =
    {
        {type = item,  name = battery_graphene,         amount = 64},
        {type = item,  name = low_density_structure,    amount = 16},
        {type = item,  name = heat_shielding_tile,      amount = 16},
        {type = item,  name = advanced_processing_unit, amount = 64},
        {type = item,  name = plasma_turret_3,          amount = 1},
        {type = item,  name = efficiency_module_5,      amount = 1},
        {type = item,  name = quality_module_5,         amount = 1},
        {type = fluid, name = tritium_gas,              amount = 120}
    }
end

bobmods.lib.recipe.update_recycling_recipe
({
    vehicle_belt_immunity_eq,
    vehicle_motor_eq,
    vehicle_engine_eq,
    vehicle_roboport_area_1,
    vehicle_roboport_area_2,
    vehicle_roboport_area_3,
    vehicle_roboport_area_4,
    vehicle_chargepad_eq_1,
    vehicle_chargepad_eq_2,
    vehicle_chargepad_eq_3,
    vehicle_chargepad_eq_4,
    vehicle_robot_control_eq_1,
    vehicle_robot_control_eq_2,
    vehicle_robot_control_eq_3,
    vehicle_robot_control_eq_4,
    vehicle_roboport_eq_1,
    vehicle_roboport_eq_2,
    vehicle_roboport_eq_3,
    vehicle_roboport_eq_4,
    vehicle_solar_panel_eq_1,
    vehicle_solar_panel_eq_2,
    vehicle_solar_panel_eq_3,
    vehicle_solar_panel_eq_4,
    vehicle_solar_panel_eq_5,
    vehicle_fission_cell_eq_1,
    vehicle_fission_cell_eq_2,
    vehicle_fission_cell_eq_3,
    vehicle_fission_cell_eq_4,
    vehicle_fission_cell_eq_5,
    vehicle_fission_cell_eq_6,
    vehicle_fission_reactor_eq_1,
    vehicle_fission_reactor_eq_2,
    vehicle_fission_reactor_eq_3,
    vehicle_fission_reactor_eq_4,
    vehicle_fission_reactor_eq_5,
    vehicle_fission_reactor_eq_6,
    vehicle_energy_shield_eq_1,
    vehicle_energy_shield_eq_2,
    vehicle_energy_shield_eq_3,
    vehicle_energy_shield_eq_4,
    vehicle_energy_shield_eq_5,
    vehicle_energy_shield_eq_6,
    vehicle_battery_eq_1,
    vehicle_battery_eq_2,
    vehicle_battery_eq_3,
    vehicle_battery_eq_4,
    vehicle_battery_eq_5,
    vehicle_battery_eq_6,
    vehicle_plasma_cannon_eq_1,
    vehicle_plasma_cannon_eq_2,
    vehicle_plasma_cannon_eq_3,
    vehicle_plasma_cannon_eq_4,
    vehicle_laser_defense_eq_1,
    vehicle_laser_defense_eq_2,
    vehicle_laser_defense_eq_3,
    vehicle_laser_defense_eq_4,
    vehicle_laser_defense_eq_5,
    vehicle_laser_defense_eq_6,
    wall,
    flamethrower_turret,
    radar_1,
    radar_2,
    radar_3,
    radar_4,
    radar_5,
    gun_turret_1,
    gun_turret_2,
    gun_turret_3,
    gun_turret_4,
    gun_turret_5,
    laser_turret_1,
    laser_turret_2,
    laser_turret_3,
    laser_turret_4,
    laser_turret_5,
    sniper_turret_1,
    sniper_turret_2,
    sniper_turret_3,
    artillery_turret_1,
    artillery_turret_2,
    artillery_turret_3,
    plasma_turret_1,
    plasma_turret_2,
    plasma_turret_3,
    plasma_turret_4
})

data_radar[radar_1].next_upgrade = radar_2
data_radar[radar_2].next_upgrade = radar_3
data_radar[radar_3].next_upgrade = radar_4
data_radar[radar_4].next_upgrade = radar_5