local circuit_networks_1 =
{
    small_lamp,
    combinator_arithmetic,
    combinator_decider,
    combinator_selector,
    combinator_constant,
}
for _, name in pairs(circuit_networks_1) do
    data_item[name].subgroup = is_circuit_networks
    data_item[name].stack_size = 50
    data_recipe[name].subgroup = is_circuit_networks
end
data_lamp[small_lamp].energy_usage_per_tick = (drain / 8) .. kW
data.raw[combinator_arithmetic][combinator_arithmetic].active_energy_usage = (drain / 8) .. kW
data.raw[combinator_decider][combinator_decider].active_energy_usage = (drain / 8) .. kW
data.raw[combinator_selector][combinator_selector].active_energy_usage = (drain / 8) .. kW

data_recipe[small_lamp].ingredients =
{
    {type = item, name = basic_circuit_board, amount = 1},
    {type = item, name = copper_cable,        amount = 4},
    {type = item, name = iron_plate,          amount = 1},
    {type = item, name = glass_bob,           amount = 4}
}

local function combinator_recipe(name, circuit, cable)
    data_recipe[name].ingredients =
    {
       {type = item, name = circuit, amount = 4},
       {type = item, name = cable,   amount = 4}
    }
end
combinator_recipe(combinator_arithmetic, electronic_circuit, tin_cable)
combinator_recipe(combinator_decider,    electronic_circuit, tin_cable)
combinator_recipe(combinator_selector,   advanced_circuit,   silver_cable)
combinator_recipe(combinator_constant,   electronic_circuit, tin_cable)

local circuit_networks_2 =
{
    power_switch,
    programmable_speaker,
    display_panel
}
for _, name in pairs(circuit_networks_2) do
    data_item[name].subgroup = is_circuit_networks
    data_item[name].stack_size = 16
    data_item[name].weight = 62500
    data_recipe[name].subgroup = is_circuit_networks
end

data_recipe[power_switch].ingredients =
{
    {type = item, name = electronic_circuit, amount = 2},
    {type = item, name = copper_cable,       amount = 4},
    {type = item, name = iron_plate,         amount = 4}
}

data_recipe[programmable_speaker].ingredients =
{
    {type = item, name = electronic_circuit, amount = 2},
    {type = item, name = copper_cable,       amount = 4},
    {type = item, name = iron_plate,         amount = 4},
    {type = item, name = iron_rod,           amount = 4}
}

data_rail_planner[rail].stack_size = 200

local rail_ramp = "rail-ramp"
data_rail_planner[rail_ramp].stack_size = 8
data_rail_planner[rail_ramp].weight = 125000
data_recipe[rail_ramp].energy_required = 8
data_recipe[rail_ramp].ingredients =
{
    {type = item, name = rail,                amount = 8},
    {type = item, name = reinforced_concrete, amount = 128},
    {type = item, name = steel_plate,         amount = 16}
}

local rail_support = "rail-support"
data_item[rail_support].stack_size = 16
data_item[rail_support].weight = 62500
data_recipe[rail_support].energy_required = 4
data_recipe[rail_support].ingredients =
{
    {type = item, name = reinforced_concrete, amount = 32},
    {type = item, name = steel_plate,         amount = 16}
}

local train_stop = "train-stop"
data_item[train_stop].stack_size = 8
data_item[train_stop].weight = 125000
data_recipe[train_stop].ingredients =
{
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = iron_plate,         amount = 8},
    {type = item, name = iron_rod,           amount = 8},
    {type = item, name = steel_plate,        amount = 4}
}

local rail_signal = "rail-signal"
data_item[rail_signal].stack_size = 32
data_item[rail_signal].weight = 31250
data_recipe[rail_signal].ingredients =
{
    {type = item, name = electronic_circuit, amount = 1},
    {type = item, name = iron_plate,         amount = 4}
}

local rail_chain_signal = "rail-chain-signal"
data_item[rail_chain_signal].stack_size = 32
data_item[rail_chain_signal].weight = 31250
data_recipe[rail_chain_signal].ingredients =
{
    {type = item, name = electronic_circuit, amount = 1},
    {type = item, name = iron_plate,         amount = 4}
}

local locomotives =
{
    {name = locomotive_1, order = a, max_speed = 0.5, max_power = 450,  effectivity = 1.00, equipment_grid = small_equipment_grid},
    {name = locomotive_2, order = b, max_speed = 1.0, max_power = 900,  effectivity = 1.00, equipment_grid = medium_equipment_grid},
    {name = locomotive_3, order = c, max_speed = 1.5, max_power = 1350, effectivity = 1.00, equipment_grid = large_equipment_grid}
}
for _, TRANSPORT in pairs(locomotives) do
    if data_item_entity[TRANSPORT.name] then
        data_item_entity[TRANSPORT.name].order = TRANSPORT.order
        data_item_entity[TRANSPORT.name].stack_size = 32
        data_item_entity[TRANSPORT.name].weight = 31250
        data_recipe[TRANSPORT.name].order = TRANSPORT.order
        data_locomotive[TRANSPORT.name].order = TRANSPORT.order
        data_locomotive[TRANSPORT.name].max_speed = TRANSPORT.max_speed
        data_locomotive[TRANSPORT.name].max_power = TRANSPORT.max_power .. kW
        data_locomotive[TRANSPORT.name].energy_source.fuel_categories = {base_fuel, advanced_fuel, transport_fuel}
        data_locomotive[TRANSPORT.name].energy_source.effectivity = TRANSPORT.effectivity
        data_locomotive[TRANSPORT.name].equipment_grid = TRANSPORT.equipment_grid
    end
end
local function locomotive_recipe(name, gear_wheel, bearing, circuit, locomotive, plate)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 32},
        {type = item, name = bearing,    amount = 16},
        {type = item, name = circuit,    amount = 8},
        {type = item, name = plate,      amount = 16}
    }
    if name == locomotive_1 then
        table.insert(ingredients, {type = item, name = engine_unit, amount = 8})
    else
        table.insert(ingredients, {type = item, name = locomotive, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
locomotive_recipe(locomotive_1, iron_gear_wheel,     iron_bearing,     electronic_circuit, nil,          iron_plate)
if settings.startup[setting_bobmods_logistics_trains].value then
    locomotive_recipe(locomotive_2, steel_gear_wheel,    steel_bearing,    advanced_circuit,   locomotive_1, steel_plate)
    locomotive_recipe(locomotive_3, titanium_gear_wheel, titanium_bearing, processing_unit,    locomotive_2, titanium_plate_bob)
end

local cargo_wagons =
{
    {name = cargo_wagon_1, order = a, inventory_size = 40,  equipment_grid = small_equipment_grid},
    {name = cargo_wagon_2, order = b, inventory_size = 80,  equipment_grid = medium_equipment_grid},
    {name = cargo_wagon_3, order = c, inventory_size = 120, equipment_grid = large_equipment_grid}
}
for _, TRANSPORT in pairs(cargo_wagons) do
    if data_item_entity[TRANSPORT.name] then
        data_item_entity[TRANSPORT.name].order = TRANSPORT.order
        data_item_entity[TRANSPORT.name].stack_size = 32
        data_item_entity[TRANSPORT.name].weight = 31250
        data_recipe[TRANSPORT.name].order = TRANSPORT.order
        data_wagon_cargo[TRANSPORT.name].order = TRANSPORT.order
        data_wagon_cargo[TRANSPORT.name].inventory_size = TRANSPORT.inventory_size
        data_wagon_cargo[TRANSPORT.name].equipment_grid = TRANSPORT.equipment_grid
    end
end
local function cargo_wagon_recipe(name, gear_wheel, bearing, cargo_wagon, plate)
    data_recipe[name].ingredients =
    {
        {type = item, name = gear_wheel,  amount = 16},
        {type = item, name = bearing,     amount = 8},
        {type = item, name = cargo_wagon, amount = 1},
        {type = item, name = plate,       amount = 32}
    }
end
cargo_wagon_recipe(cargo_wagon_1, iron_gear_wheel,     iron_bearing,     iron_chest,    iron_plate)
if settings.startup[setting_bobmods_logistics_trains].value then
    cargo_wagon_recipe(cargo_wagon_2, steel_gear_wheel,    steel_bearing,    cargo_wagon_1, steel_plate)
    cargo_wagon_recipe(cargo_wagon_3, titanium_gear_wheel, titanium_bearing, cargo_wagon_2, titanium_plate_bob)
end

local fluid_wagons =
{
    {name = fluid_wagon_1, order = a, capacity = 28800, equipment_grid = small_equipment_grid},
    {name = fluid_wagon_2, order = b, capacity = 57600, equipment_grid = medium_equipment_grid},
    {name = fluid_wagon_3, order = c, capacity = 86400, equipment_grid = large_equipment_grid}
}
for _, TRANSPORT in pairs(fluid_wagons) do
    if data_item_entity[TRANSPORT.name] then
        data_item_entity[TRANSPORT.name].order = TRANSPORT.order
        data_item_entity[TRANSPORT.name].stack_size = 32
        data_item_entity[TRANSPORT.name].weight = 31250
        data_recipe[TRANSPORT.name].order = TRANSPORT.order
        data_wagon_fluid[TRANSPORT.name].order = TRANSPORT.order
        data_wagon_fluid[TRANSPORT.name].capacity = TRANSPORT.capacity
        data_wagon_fluid[TRANSPORT.name].equipment_grid = TRANSPORT.equipment_grid
    end
end
local function fluid_wagon_recipe(name, gear_wheel, bearing, fluid_wagon, plate)
    data_recipe[name].ingredients =
    {
        {type = item, name = gear_wheel,  amount = 16},
        {type = item, name = bearing,     amount = 8},
        {type = item, name = fluid_wagon, amount = 1},
        {type = item, name = plate,       amount = 32}
    }
end
fluid_wagon_recipe(fluid_wagon_1, iron_gear_wheel,     iron_bearing,     storage_tank_1, iron_plate)
if settings.startup[setting_bobmods_logistics_trains].value then
    fluid_wagon_recipe(fluid_wagon_2, steel_gear_wheel,    steel_bearing,    fluid_wagon_1,  steel_plate)
    fluid_wagon_recipe(fluid_wagon_3, titanium_gear_wheel, titanium_bearing, fluid_wagon_2,  titanium_plate_bob)
end

local artillery_wagons =
{
    {name = artillery_wagon_1, order = a, weight = 2000, equipment_grid = small_equipment_grid,  localised_name = {"entity-name.artillery-wagon-1"}},
    {name = artillery_wagon_2, order = b, weight = 3000, equipment_grid = medium_equipment_grid, localised_name = {"entity-name.artillery-wagon-2"}},
    {name = artillery_wagon_3, order = c, weight = 4000, equipment_grid = large_equipment_grid,  localised_name = {"entity-name.artillery-wagon-3"}}
}
for _, TRANSPORT in pairs(artillery_wagons) do
    if data_item_entity[TRANSPORT.name] then
        data_item_entity[TRANSPORT.name].localised_name = TRANSPORT.localised_name
        data_item_entity[TRANSPORT.name].subgroup = is_artillery_wagon
        data_item_entity[TRANSPORT.name].order = TRANSPORT.order
        data_item_entity[TRANSPORT.name].stack_size = 16
        data_item_entity[TRANSPORT.name].weight = 62500
        data_recipe[TRANSPORT.name].localised_name = TRANSPORT.localised_name
        data_recipe[TRANSPORT.name].subgroup = is_artillery_wagon
        data_recipe[TRANSPORT.name].order = TRANSPORT.order
        data_wagon_artillery[TRANSPORT.name].localised_name = TRANSPORT.localised_name
        data_wagon_artillery[TRANSPORT.name].subgroup = is_artillery_wagon
        data_wagon_artillery[TRANSPORT.name].weight = TRANSPORT.weight
        data_wagon_artillery[TRANSPORT.name].manual_range_modifier = 2
        data_wagon_artillery[TRANSPORT.name].equipment_grid = TRANSPORT.equipment_grid
    end
end
local function artillery_wagon_recipe(name, gear_wheel, bearing, circuit, artillery_wagon, plate)
    if not data_recipe[name] then return end

    data_recipe[name].ingredients =
    {
        {type = item, name = gear_wheel,      amount = 16},
        {type = item, name = bearing,         amount = 8},
        {type = item, name = circuit,         amount = 32},
        {type = item, name = artillery_wagon, amount = 1},
        {type = item, name = plate,           amount = 32}
    }
end
artillery_wagon_recipe(artillery_wagon_1, copper_tungsten_gear_wheel,             copper_tungsten_bearing, advanced_processing_unit, artillery_turret_1, copper_tungsten_plate_bob)
artillery_wagon_recipe(artillery_wagon_2, molybdenum_gear_wheel,                  rhenium_bearing,         advanced_processing_unit, artillery_wagon_1,  molybdenum_rhenium_plate)
artillery_wagon_recipe(artillery_wagon_3, niobium_tungsten_molybdenum_gear_wheel, niobium_iron_bearing,    advanced_processing_unit, artillery_wagon_2,  niobium_tungsten_molybdenum_plate)

local car = "car"
data_item_entity[car].weight = 1000000
data_recipe[car].energy_required = 4
data_recipe[car].ingredients =
{
    {type = item, name = engine_unit, amount = 8},
    {type = item, name = iron_plate,  amount = 16},
    {type = item, name = steel_plate, amount = 4}
}
data_car[car].consumption = 225 .. kW
data_car[car].energy_source.fuel_categories = {base_fuel, advanced_fuel, transport_fuel}
data_car[car].equipment_grid = small_equipment_grid

local tanks =
{
    {name = tank_1, order = a, consumption = 450,  effectivity = 1.00, equipment_grid = small_equipment_grid},
    {name = tank_2, order = b, consumption = 900,  effectivity = 1.00, equipment_grid = medium_equipment_grid},
    {name = tank_3, order = c, consumption = 1350, effectivity = 1.00, equipment_grid = large_equipment_grid}
}
for _, TRANSPORT in pairs(tanks) do
    if data_item_entity[TRANSPORT.name] then
        data_item_entity[TRANSPORT.name].subgroup = is_transport_tanks
        data_item_entity[TRANSPORT.name].order = TRANSPORT.order
        data_item_entity[TRANSPORT.name].stack_size = 1
        data_item_entity[TRANSPORT.name].weight = 1000000
        data_recipe[TRANSPORT.name].subgroup = is_transport_tanks
        data_recipe[TRANSPORT.name].order = TRANSPORT.order
        data_recipe[TRANSPORT.name].energy_required = 4
        data_car[TRANSPORT.name].subgroup = is_transport_tanks
        data_car[TRANSPORT.name].order = TRANSPORT.order
        data_car[TRANSPORT.name].consumption = TRANSPORT.consumption .. kW
        data_car[TRANSPORT.name].energy_source.fuel_categories = {base_fuel, advanced_fuel, transport_fuel}
        data_car[TRANSPORT.name].energy_source.effectivity = TRANSPORT.effectivity
        data_car[TRANSPORT.name].equipment_grid = TRANSPORT.equipment_grid
    end
end
if mods[bobwarfare] then
    data_car[tank_2].guns = {"tank-cannon", "bob-gatling-gun", "tank-flamethrower"}
    data_car[tank_3].guns = {"tank-cannon", "bob-gatling-gun", "tank-flamethrower", "bob-tank-laser"}
end
local function tank_recipe(name, gear_wheel, bearing, circuit, vehicle, plate)
    if not data_recipe[name] then return end

    data_recipe[name].ingredients =
    {
        {type = item, name = gear_wheel, amount = 16},
        {type = item, name = bearing,    amount = 16},
        {type = item, name = circuit,    amount = 4},
        {type = item, name = vehicle,    amount = 1},
        {type = item, name = plate,      amount = 64}
    }
end
tank_recipe(tank_1, brass_gear_wheel,    brass_bearing,    advanced_circuit,         car,    invar_plate_bob)
tank_recipe(tank_2, titanium_gear_wheel, titanium_bearing, processing_unit,          tank_1, titanium_plate_bob)
tank_recipe(tank_3, copper_tungsten_gear_wheel,  copper_tungsten_bearing,  advanced_processing_unit, tank_2, tungsten_carbide_plate_bob)

data_item_subgroup["bob-logistic-robots"].order = f_b
local logistic_robots =
{
    {name = logistic_robot_1, MPS = 1, max_energy = 900,  EPT = 25},
    {name = logistic_robot_2, MPS = 2, max_energy = 1800, EPT = 55},
    {name = logistic_robot_3, MPS = 3, max_energy = 2700, EPT = 85},
    {name = logistic_robot_4, MPS = 4, max_energy = 3600, EPT = 115},
    {name = logistic_robot_5, MPS = 5, max_energy = 4500, EPT = 0}
}
for _, DRONE in pairs(logistic_robots) do
    if data_item[DRONE.name] then
        data_item[DRONE.name].stack_size = 50
        data_logistic_robot[DRONE.name].max_payload_size = DRONE.MPS * 2
        data_logistic_robot[DRONE.name].speed = (DRONE.MPS * 2) / 60
        data_logistic_robot[DRONE.name].max_energy = DRONE.max_energy .. kJ
        data_logistic_robot[DRONE.name].energy_per_tick = DRONE.EPT .. J
    end
end

data_item_subgroup["bob-construction-robots"].order = f_c
local construction_robots =
{
    {name = construction_robot_1, MPS = 1, max_energy = 900,  EPT = 25},
    {name = construction_robot_2, MPS = 2, max_energy = 1800, EPT = 55},
    {name = construction_robot_3, MPS = 3, max_energy = 2700, EPT = 85},
    {name = construction_robot_4, MPS = 4, max_energy = 3600, EPT = 115},
    {name = construction_robot_5, MPS = 5, max_energy = 4500, EPT = 0}
}
for _, DRONE in pairs(construction_robots) do
    if data_item[DRONE.name] then
        data_item[DRONE.name].stack_size = 50
        data_construction_robot[DRONE.name].max_payload_size = DRONE.MPS
        data_construction_robot[DRONE.name].speed = (DRONE.MPS * 2) / 60
        data_construction_robot[DRONE.name].max_energy = DRONE.max_energy .. kJ
        data_construction_robot[DRONE.name].energy_per_tick = DRONE.EPT .. J
    end
end

data_item_subgroup["bob-logistic-roboport"].order = f_d
local roboports =
{
    {name = roboport_1, input_flow_limit = 3600,  charging_energy = 900,  charging_station_count = 4, tier = 1},
    {name = roboport_2, input_flow_limit = 7200,  charging_energy = 1800, charging_station_count = 4, tier = 2},
    {name = roboport_3, input_flow_limit = 10800, charging_energy = 2700, charging_station_count = 4, tier = 3},
    {name = roboport_4, input_flow_limit = 14400, charging_energy = 3600, charging_station_count = 4, tier = 4}
}
for _, BUILD in pairs(roboports) do
    if data_item[BUILD.name] then
        data_item[BUILD.name].stack_size = 8
        data_item[BUILD.name].weight = 125000
        data_recipe[BUILD.name].energy_required = 4
        data_roboport[BUILD.name].energy_source.buffer_capacity = (BUILD.input_flow_limit * 100) .. kJ -- 200MJ
        data_roboport[BUILD.name].energy_source.input_flow_limit = BUILD.input_flow_limit .. kW -- 12.5MW
        data_roboport[BUILD.name].energy_usage = (BUILD.tier * 60) .. kW -- 100kW
        data_roboport[BUILD.name].charging_energy = BUILD.charging_energy .. kW -- 2500kW
        data_roboport[BUILD.name].charging_station_count = BUILD.charging_station_count
        data_roboport[BUILD.name].logistics_radius = 16 * BUILD.charging_station_count
        data_roboport[BUILD.name].construction_radius = 32 * BUILD.charging_station_count
        data_roboport[BUILD.name].radar_range = BUILD.tier * 2
        data_roboport[BUILD.name].recharge_minimum = 36000 .. kJ -- 40000kJ
    end
end
local function roboport_recipe(name, antenna, door, chargepad, plate, roboport)
    if not data_recipe[name] or not data_item[antenna] or not data_item[door] or not data_item[chargepad] or not data_item[plate] then return end

    local ingredients =
    {
        {type = item, name = antenna,   amount = 4},
        {type = item, name = door,      amount = 1},
        {type = item, name = chargepad, amount = 4},
        {type = item, name = plate,     amount = 16}
    }
    if roboport then
        table.insert(ingredients, {type = item, name = roboport, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
roboport_recipe(roboport_1, roboport_antenna_1, roboport_door_1, roboport_chargepad_1, steel_plate)
roboport_recipe(roboport_2, roboport_antenna_2, roboport_door_2, roboport_chargepad_2, aluminium_plate_bob, roboport_1)
roboport_recipe(roboport_3, roboport_antenna_3, roboport_door_3, roboport_chargepad_3, titanium_plate_bob,  roboport_2)
roboport_recipe(roboport_4, roboport_antenna_4, roboport_door_4, roboport_chargepad_4, nitinol_plate_bob,   roboport_3)

data_item_subgroup["bob-logistic-roboport-zone"].order = f_e
local logistic_zone =
{
    {name = logistic_zone_expander_1, input_flow_limit = 600,  charging_energy = 1200, charging_station_count = 1},
    {name = logistic_zone_expander_2, input_flow_limit = 1200, charging_energy = 2400, charging_station_count = 2},
    {name = logistic_zone_expander_3, input_flow_limit = 1800, charging_energy = 3600, charging_station_count = 3},
    {name = logistic_zone_expander_4, input_flow_limit = 2400, charging_energy = 4800, charging_station_count = 4}
}
for _, BUILD in pairs(logistic_zone) do
    if data_item[BUILD.name] then
        data_item[BUILD.name].stack_size = 16
        data_item[BUILD.name].weight = 62500
        data_recipe[BUILD.name].energy_required = 4
        data_roboport[BUILD.name].energy_source.buffer_capacity = (BUILD.input_flow_limit * 20) .. kJ -- 10MJ * charging_station_count
        data_roboport[BUILD.name].energy_source.input_flow_limit = BUILD.input_flow_limit .. kW -- 500kW * charging_station_count
        data_roboport[BUILD.name].energy_usage = (BUILD.charging_station_count * 30) .. kW -- 25kW * charging_station_count
        data_roboport[BUILD.name].charging_energy = BUILD.charging_energy .. kW -- 1000kW * charging_station_count
        data_roboport[BUILD.name].logistics_radius = 8 * BUILD.charging_station_count
        data_roboport[BUILD.name].construction_radius = 16 * BUILD.charging_station_count
        data_roboport[BUILD.name].radar_range = BUILD.charging_station_count
        data_roboport[BUILD.name].recharge_minimum = 6000 .. kJ -- 5000kJ
    end
end
local function logistic_zone_expander_recipe(name, antenna, plate, zone_expander)
    if not data_recipe[name] or not data_item[antenna] or not data_item[plate] then return end

    local ingredients =
    {
        {type = item, name = antenna, amount = 4},
        {type = item, name = plate,   amount = 4}
    }
    if zone_expander then
        table.insert(ingredients, {type = item, name = zone_expander, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
logistic_zone_expander_recipe(logistic_zone_expander_1, roboport_antenna_1, steel_plate)
logistic_zone_expander_recipe(logistic_zone_expander_2, roboport_antenna_2, aluminium_plate_bob, logistic_zone_expander_1)
logistic_zone_expander_recipe(logistic_zone_expander_3, roboport_antenna_3, titanium_plate_bob,  logistic_zone_expander_2)
logistic_zone_expander_recipe(logistic_zone_expander_4, roboport_antenna_4, nitinol_plate_bob,   logistic_zone_expander_3)

data_item_subgroup["bob-logistic-roboport-chest"].order = f_f
local robochests =
{
    {name = robochest_1, energy = 900},
    {name = robochest_2, energy = 1800},
    {name = robochest_3, energy = 2700},
    {name = robochest_4, energy = 3600}
}
for _, BUILD in pairs(robochests) do
    if data_item[BUILD.name] then
        data_item[BUILD.name].stack_size = 8
        data_item[BUILD.name].weight = 125000
        data_recipe[BUILD.name].energy_required = 4
        data_roboport[BUILD.name].energy_source.buffer_capacity = (BUILD.energy * 20) .. kJ -- 20000kJ
        data_roboport[BUILD.name].energy_source.input_flow_limit = BUILD.energy .. kW -- 1200kW
        data_roboport[BUILD.name].energy_usage = 15 .. kW -- 5kW
        data_roboport[BUILD.name].charging_energy = (BUILD.energy * 2) .. kW -- 1000kW
        data_roboport[BUILD.name].recharge_minimum = 4500 .. kJ -- 5000kJ
    end
end
if data_recipe[robochest_1] then
    data_recipe[robochest_1].ingredients =
    {
        {type = item, name = roboport_antenna_1,   amount = 1},
        {type = item, name = roboport_door_1,      amount = 1},
        {type = item, name = roboport_chargepad_1, amount = 1},
        {type = item, name = steel_plate,          amount = 8}
    }
end

data_item_subgroup["bob-logistic-roboport-charge"].order = f_g
local robo_port =
{
    {name = robo_charge_port_1, energy = 1800, energy_usage = 30},
    {name = robo_charge_port_2, energy = 3600, energy_usage = 60},
    {name = robo_charge_port_3, energy = 5400, energy_usage = 90},
    {name = robo_charge_port_4, energy = 7200, energy_usage = 120}
}
for _, BUILD in pairs(robo_port) do
    if data_item[BUILD.name] then
        data_item[BUILD.name].stack_size = 32
        data_item[BUILD.name].weight = 31250
        data_recipe[BUILD.name].energy_required = 4
        data_roboport[BUILD.name].energy_source.buffer_capacity = (BUILD.energy * 64) .. kJ -- 100000kJ
        data_roboport[BUILD.name].energy_source.input_flow_limit = (BUILD.energy * 4) .. kW -- 6250kW
        data_roboport[BUILD.name].energy_usage = BUILD.energy_usage .. kW -- 1kW
        data_roboport[BUILD.name].charging_energy = (BUILD.energy * 4) .. kW -- 1250kW
        data_roboport[BUILD.name].recharge_minimum = ((BUILD.energy * 64) * 0.1) .. kJ -- 20000kJ
    end
end
local function robo_charge_port_recipe(name, chargepad, plate, charge_port)
    if not data_recipe[name] or not data_item[chargepad] or not data_item[plate] then return end

    local ingredients =
    {
        {type = item, name = chargepad, amount = 4},
        {type = item, name = plate,     amount = 8}
    }
    if charge_port then
        table.insert(ingredients, {type = item, name = charge_port, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
robo_charge_port_recipe(robo_charge_port_1, roboport_chargepad_1, steel_plate)
robo_charge_port_recipe(robo_charge_port_2, roboport_chargepad_2, aluminium_plate_bob, robo_charge_port_1)
robo_charge_port_recipe(robo_charge_port_3, roboport_chargepad_3, titanium_plate_bob,  robo_charge_port_2)
robo_charge_port_recipe(robo_charge_port_4, roboport_chargepad_4, nitinol_plate_bob,   robo_charge_port_3)

local robo_port_large =
{
    {name = robo_charge_port_large_1, order = a, energy = 1800, energy_usage = 67.5},
    {name = robo_charge_port_large_2, order = b, energy = 3600, energy_usage = 135},
    {name = robo_charge_port_large_3, order = c, energy = 5400, energy_usage = 202.5},
    {name = robo_charge_port_large_4, order = d, energy = 7200, energy_usage = 270}
}
for _, BUILD in pairs(robo_port_large) do
    if data_item[BUILD.name] then
        data_item[BUILD.name].subgroup = is_logistic_roboport_charge_large
        data_item[BUILD.name].order = BUILD.order
        data_item[BUILD.name].stack_size = 16
        data_item[BUILD.name].weight = 62500
        data_recipe[BUILD.name].subgroup = is_logistic_roboport_charge_large
        data_recipe[BUILD.name].order = BUILD.order
        data_recipe[BUILD.name].energy_required = 4
        data_roboport[BUILD.name].subgroup = is_logistic_roboport_charge_large
        data_roboport[BUILD.name].order = BUILD.order
        data_roboport[BUILD.name].energy_source.buffer_capacity = (BUILD.energy * 144) .. kJ -- 100MJ
        data_roboport[BUILD.name].energy_source.input_flow_limit = (BUILD.energy * 9) .. kW -- 12500kW
        data_roboport[BUILD.name].energy_usage = BUILD.energy_usage .. kW -- 1kW
        data_roboport[BUILD.name].charging_energy = (BUILD.energy * 9) .. kW -- 1250kW
        data_roboport[BUILD.name].recharge_minimum = ((BUILD.energy * 144) * 0.1) .. kJ -- 20000kJ
    end
end
local function robo_charge_port_large_recipe(name, chargepad, plate, charge_port_large)
    if not data_recipe[name] or not data_item[chargepad] or not data_recipe[plate] then return end

    local ingredients =
    {
        {type = item, name = chargepad, amount = 9},
        {type = item, name = plate,     amount = 16}
    }
    if charge_port_large then
        table.insert(ingredients, {type = item, name = charge_port_large, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
robo_charge_port_large_recipe(robo_charge_port_large_1, roboport_chargepad_1, steel_plate)
robo_charge_port_large_recipe(robo_charge_port_large_2, roboport_chargepad_2, aluminium_plate_bob, robo_charge_port_large_1)
robo_charge_port_large_recipe(robo_charge_port_large_3, roboport_chargepad_3, titanium_plate_bob,  robo_charge_port_large_2)
robo_charge_port_large_recipe(robo_charge_port_large_4, roboport_chargepad_4, nitinol_plate_bob,   robo_charge_port_large_3)

local function rp_antenna_recipe(name, circuit, cable, plate)
    if not data_recipe[name] or not data_item[circuit] or not data_item[cable] or not data_item[plate] then
        return
    end

    data_recipe[name].ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = cable,   amount = 2},
        {type = item, name = plate,   amount = 1}
    }
end
rp_antenna_recipe(roboport_antenna_1, electronic_circuit,       copper_cable,    iron_plate)
rp_antenna_recipe(roboport_antenna_2, advanced_circuit,         tin_cable,       aluminium_plate_bob)
rp_antenna_recipe(roboport_antenna_3, processing_unit,          insulated_cable, nickel_plate_bob)
rp_antenna_recipe(roboport_antenna_4, advanced_processing_unit, gold_cable,      gold_plate_bob)

local function rp_door_recipe(name, gear_wheel, bearing, plate)
    if not data_recipe[name] or not data_item[gear_wheel] or not data_item[bearing] or not data_item[plate] then return end

    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 16},
        {type = item, name = plate,      amount = 16}
    }
    if bearing then
        table.insert(data_recipe[name].ingredients, {type = item, name = bearing, amount = 16})
    end
    data_recipe[name].ingredients = ingredients
end
rp_door_recipe(roboport_door_1, steel_gear_wheel,        steel_bearing,           steel_plate)
rp_door_recipe(roboport_door_2, cobalt_steel_gear_wheel, cobalt_steel_bearing,    cobalt_steel_plate_bob)
rp_door_recipe(roboport_door_3, titanium_gear_wheel,     titanium_bearing,        titanium_plate_bob)
rp_door_recipe(roboport_door_4, nitinol_gear_wheel,      nitinol_bearing,         nitinol_plate_bob)

local function rp_chargepad_recipe(name, battery, circuit, plate)
    if not data_recipe[name] or not data_item[battery] or not data_item[circuit] or not data_item[plate] then return end

    data_recipe[name].ingredients =
    {
        {type = item, name = battery, amount = 2},
        {type = item, name = circuit, amount = 4},
        {type = item, name = plate, amount = 2}
    }
end
rp_chargepad_recipe(roboport_chargepad_1, battery_lead_acid,     electronic_circuit,       steel_plate)
rp_chargepad_recipe(roboport_chargepad_2, battery_lithium_ion,   advanced_circuit,         invar_plate_bob)
rp_chargepad_recipe(roboport_chargepad_3, battery_silver_zinc,   processing_unit,          titanium_plate_bob)
rp_chargepad_recipe(roboport_chargepad_4, battery_graphene,      advanced_processing_unit, nitinol_plate_bob)

local flying_robot_frames =
{
    flying_robot_frame_1,
    flying_robot_frame_2,
    flying_robot_frame_3,
    flying_robot_frame_4
}
for _, name in pairs(flying_robot_frames) do
    if data_item[name] then
        data_item[name].subgroup = is_flying_robot_frames
        data_item[name].stack_size = 200
        data_recipe[name].subgroup = is_flying_robot_frames
        data_recipe[name].energy_required = 16
    end
end
local function flying_robot_frame_recipe(name, battery, plate)
    if not data_recipe[name] or not data_item[battery] or not data_item[plate] then return end

    data_recipe[name].ingredients =
    {
        {type = item, name = battery,              amount = 2},
        {type = item, name = plate,                amount = 1},
        {type = item, name = electric_engine_unit, amount = 1}
    }
end
flying_robot_frame_recipe(flying_robot_frame_1, battery_lead_acid,   steel_plate)
flying_robot_frame_recipe(flying_robot_frame_2, battery_lithium_ion, aluminium_plate_bob)
flying_robot_frame_recipe(flying_robot_frame_3, battery_silver_zinc, titanium_plate_bob)
flying_robot_frame_recipe(flying_robot_frame_4, battery_graphene,    nitinol_plate_bob)

local function robot_brain_recipe(name, circuit_1, circuit_2)
    if not data_recipe[name] or not data_item[circuit_1] or not data_item[circuit_2] then return end

    if mods[bobmodules] then
        data_recipe[name].ingredients =
        {
            {type = item, name = circuit_1,   amount = 2},
            {type = item, name = circuit_2,   amount = 2},
            {type = item, name = solder,      amount = 4},
            {type = item, name = module_case, amount = 1}
        }
    else
        data_recipe[name].ingredients =
        {
            {type = item, name = circuit_1,   amount = 2},
            {type = item, name = circuit_2,   amount = 2},
            {type = item, name = solder,      amount = 4},
            --{type = item, name = module_case, amount = 1}
        }
    end
end
robot_brain_recipe(robot_brain_1, basic_circuit_board, electronic_circuit)
robot_brain_recipe(robot_brain_2, electronic_circuit,  advanced_circuit)
robot_brain_recipe(robot_brain_3, advanced_circuit,    processing_unit)
robot_brain_recipe(robot_brain_4, processing_unit,     advanced_processing_unit)

local robot_tool_c_1 = "bob-robot-tool-construction"
local robot_tool_c_2 = "bob-robot-tool-construction-2"
local robot_tool_c_3 = "bob-robot-tool-construction-3"
local robot_tool_c_4 = "bob-robot-tool-construction-4"
local robot_tool_l_1 = "bob-robot-tool-logistic"
local robot_tool_l_2 = "bob-robot-tool-logistic-2"
local robot_tool_l_3 = "bob-robot-tool-logistic-3"
local robot_tool_l_4 = "bob-robot-tool-logistic-4"
local function robot_tool_recipe(name, gear_wheel, bearing, cable, plate)
    if not data_recipe[name] or not data_item[gear_wheel] or not data_item[bearing] or not data_item[cable] or not data_item[plate] then return end

    data_recipe[name].ingredients =
    {
        {type = item, name = gear_wheel, amount = 2},
        {type = item, name = bearing,    amount = 2},
        {type = item, name = cable,      amount = 4},
        {type = item, name = plate,      amount = 1}
    }
end
robot_tool_recipe(robot_tool_c_1, steel_gear_wheel,        steel_bearing,        copper_cable,    steel_plate)
robot_tool_recipe(robot_tool_c_2, cobalt_steel_gear_wheel, cobalt_steel_bearing, tin_cable,       cobalt_steel_plate_bob)
robot_tool_recipe(robot_tool_c_3, titanium_gear_wheel,     titanium_bearing,     insulated_cable, titanium_plate_bob)
robot_tool_recipe(robot_tool_c_4, nitinol_gear_wheel,      nitinol_bearing,      gold_cable,      nitinol_plate_bob)
robot_tool_recipe(robot_tool_l_1, steel_gear_wheel,        steel_bearing,        copper_cable,    steel_plate)
robot_tool_recipe(robot_tool_l_2, cobalt_steel_gear_wheel, cobalt_steel_bearing, tin_cable,       cobalt_steel_plate_bob)
robot_tool_recipe(robot_tool_l_3, titanium_gear_wheel,     titanium_bearing,     insulated_cable, titanium_plate_bob)
robot_tool_recipe(robot_tool_l_4, nitinol_gear_wheel,      nitinol_bearing,      gold_cable,      nitinol_plate_bob)

local roboport_materials =
{
    {name = roboport_antenna_1,   subgroup = is_rp_antena,    order = a, energy_required = 8},
    {name = roboport_antenna_2,   subgroup = is_rp_antena,    order = b, energy_required = 8},
    {name = roboport_antenna_3,   subgroup = is_rp_antena,    order = c, energy_required = 8},
    {name = roboport_antenna_4,   subgroup = is_rp_antena,    order = d, energy_required = 8},
    {name = roboport_door_1,      subgroup = is_rp_door,      order = a, energy_required = 8},
    {name = roboport_door_2,      subgroup = is_rp_door,      order = b, energy_required = 8},
    {name = roboport_door_3,      subgroup = is_rp_door,      order = c, energy_required = 8},
    {name = roboport_door_4,      subgroup = is_rp_door,      order = d, energy_required = 8},
    {name = roboport_chargepad_1, subgroup = is_rp_chargepad, order = a, energy_required = 8},
    {name = roboport_chargepad_2, subgroup = is_rp_chargepad, order = b, energy_required = 8},
    {name = roboport_chargepad_3, subgroup = is_rp_chargepad, order = c, energy_required = 8},
    {name = roboport_chargepad_4, subgroup = is_rp_chargepad, order = d, energy_required = 8},
    {name = robot_brain_1,        subgroup = is_robot_brain,  order = a, energy_required = 8},
    {name = robot_brain_2,        subgroup = is_robot_brain,  order = b, energy_required = 8},
    {name = robot_brain_3,        subgroup = is_robot_brain,  order = c, energy_required = 8},
    {name = robot_brain_4,        subgroup = is_robot_brain,  order = d, energy_required = 8},
    {name = robot_tool_c_1,       subgroup = is_robot_tool_c, order = a, energy_required = 4},
    {name = robot_tool_c_2,       subgroup = is_robot_tool_c, order = b, energy_required = 4},
    {name = robot_tool_c_3,       subgroup = is_robot_tool_c, order = c, energy_required = 4},
    {name = robot_tool_c_4,       subgroup = is_robot_tool_c, order = d, energy_required = 4},
    {name = robot_tool_l_1,       subgroup = is_robot_tool_l, order = a, energy_required = 4},
    {name = robot_tool_l_2,       subgroup = is_robot_tool_l, order = b, energy_required = 4},
    {name = robot_tool_l_3,       subgroup = is_robot_tool_l, order = c, energy_required = 4},
    {name = robot_tool_l_4,       subgroup = is_robot_tool_l, order = d, energy_required = 4}
}
for _, materials in pairs(roboport_materials) do
    if data_item[materials.name] then
        data_item[materials.name].subgroup = materials.subgroup
        data_item[materials.name].order = materials.order
        data_item[materials.name].stack_size = 200
        data_recipe[materials.name].subgroup = materials.subgroup
        data_recipe[materials.name].order = materials.order
        data_recipe[materials.name].energy_required = materials.energy_required
    end
end

local materials =
{
    spidertron_cannon,
    mech_armor_plate,
    mech_brain,
    mech_frame,
    mech_leg,
    mech_foot,
    mech_hip,
    mech_knee,
    mech_leg_segment
}
for _, name in pairs(materials) do
    if data_item[name] then
        data_item[name].subgroup = is_spidertron_material
        data_item[name].stack_size = 200
        data_recipe[name].subgroup = is_spidertron_material
    end
end

if data_recipe[spidertron_cannon] then
    data_recipe[spidertron_cannon].energy_required = 8
    data_recipe[spidertron_cannon].ingredients =
    {
        {type = item, name = iron_gear_wheel, amount = 4},
        {type = item, name = steel_plate, amount = 16}
    }

    data_recipe[mech_armor_plate].ingredients =
    {
        {type = item, name = low_density_structure, amount = 4},
        {type = item, name = tungsten_carbide_plate_bob, amount = 2}
    }

    if mods[bobmodules] then
        data_recipe[mech_brain].ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 16},
            {type = item, name = solder, amount = 128},
            {type = item, name = module_case, amount = 1}
        }
    else
        data_recipe[mech_brain].ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 16},
            {type = item, name = solder, amount = 128},
            --{type = item, name = module_case, amount = 1}
        }
    end

    data_recipe[mech_frame].energy_required = 4
    data_recipe[mech_frame].ingredients =
    {
        {type = item, name = low_density_structure, amount = 64},
        {type = item, name = mech_brain, amount = 1}
    }

    data_recipe[mech_hip].ingredients =
    {
        {type = item, name = titanium_gear_wheel, amount = 4},
        {type = item, name = titanium_bearing, amount = 4},
        {type = item, name = electric_engine_unit, amount = 4},
        {type = item, name = low_density_structure, amount = 2}
    }

    data_recipe[mech_knee].ingredients =
    {
        {type = item, name = titanium_gear_wheel, amount = 8},
        {type = item, name = titanium_bearing, amount = 2},
        {type = item, name = electric_engine_unit, amount = 8},
        {type = item, name = low_density_structure, amount = 2}
    }

    data_recipe[mech_leg_segment].ingredients =
    {
        {type = item, name = nitinol_pipe, amount = 2},
        {type = item, name = nitinol_plate_bob, amount = 2}
    }

    local spidertrons =
    {
        {name = antron, order = a},
        {name = tankotron, order = b},
        {name = logitron, order = c},
        {name = spidertron, order = d},
        {name = heavy_spidertron, order = e}
    }
    for _, ENTITES in pairs(spidertrons) do
        data_item_entity[ENTITES.name].subgroup = is_spidertron
        data_item_entity[ENTITES.name].order = ENTITES.order
        data_item_entity[ENTITES.name].weight = 1000000
        data_recipe[ENTITES.name].subgroup = is_spidertron
        data_recipe[ENTITES.name].order = ENTITES.order
        data_recipe[ENTITES.name].energy_required = 4
        data_spider_vechicle[ENTITES.name].subgroup = is_spidertron
        data_spider_vechicle[ENTITES.name].order = ENTITES.order
    end

    data_spider_vechicle[antron].movement_energy_consumption  = 225 .. kW
    data_spider_vechicle[antron].energy_source.fuel_categories = {base_fuel, advanced_fuel, transport_fuel}

    data_recipe[tankotron].ingredients =
    {
        {type = item, name = spidertron_cannon, amount = 2},
        {type = item, name = mech_armor_plate, amount = 4},
        {type = item, name = mech_frame, amount = 1},
        {type = item, name = mech_leg, amount = 6}
    }
    data_spider_vechicle[tankotron].movement_energy_consumption  = 225 .. kW
    data_spider_vechicle[tankotron].energy_source.fuel_categories = {base_fuel, advanced_fuel, transport_fuel}

    data_recipe[logitron].ingredients =
    {
        {type = item, name = steel_chest, amount = 1},
        {type = item, name = gun_turret_1, amount = 2},
        {type = item, name = mech_armor_plate, amount = 4},
        {type = item, name = mech_frame, amount = 1},
        {type = item, name = mech_leg, amount = 8}
    }
    data_spider_vechicle[logitron].movement_energy_consumption  = 225 .. kW
    data_spider_vechicle[logitron].energy_source.fuel_categories = {base_fuel, advanced_fuel, transport_fuel}

    data_recipe[spidertron].ingredients =
    {
        {type = item, name = rtg, amount = 2},
        {type = item, name = rocket_turret, amount = 1},
        {type = item, name = mech_armor_plate, amount = 8},
        {type = item, name = mech_frame, amount = 1},
        {type = item, name = mech_leg, amount = 8}
    }

    data_recipe[heavy_spidertron].ingredients =
    {
        {type = item, name = rtg, amount = 4},
        {type = item, name = rocket_turret, amount = 2},
        {type = item, name = mech_armor_plate, amount = 16},
        {type = item, name = mech_frame, amount = 1},
        {type = item, name = mech_leg, amount = 8}
    }

    bobmods.lib.recipe.update_recycling_recipe
    ({
        spidertron_cannon,
        mech_armor_plate,
        mech_brain,
        mech_frame,
        mech_hip,
        mech_knee,
        mech_leg_segment,
        tankotron,
        logitron,
        spidertron,
        heavy_spidertron
    })
end

if mods[maraxsis_mods] then
    local spiderling = "sp-spiderling"
    if data_item_entity[spiderling] then
        data_item_entity[spiderling].subgroup = is_spidertron
        data_item_entity[spiderling].weight = 1000000
        data_recipe[spiderling].subgroup = is_spidertron
        data_recipe[spiderling].energy_required = 4
        data_recipe[spiderling].ingredients =
        {
            {type = item, name = low_density_structure, amount = 32},
            {type = item, name = rocket_launcher, amount = 1},
            {type = item, name = exoskeleton_eq_1, amount = 4},
            {type = item, name = radar_1, amount = 1},
            {type = item, name = factorian_fish, amount = 1}
        }

        bobmods.lib.recipe.update_recycling_recipe({spiderling})

        data_technology[spiderling].unit.ingredients =
        {
            {automation_science_pack, 1},
            {logistic_science_pack, 1},
            {military_science_pack, 1},
            {chemical_science_pack, 1}
        }
    end
end

bobmods.lib.recipe.update_recycling_recipe
({
    small_lamp,
    combinator_arithmetic,
    combinator_decider,
    combinator_selector,
    combinator_constant,
    power_switch,
    programmable_speaker,
    locomotive_1,
    locomotive_2,
    locomotive_3,
    cargo_wagon_1,
    cargo_wagon_2,
    cargo_wagon_3,
    fluid_wagon_1,
    fluid_wagon_2,
    fluid_wagon_3,
    artillery_wagon_1,
    artillery_wagon_2,
    artillery_wagon_3,
    car,
    tank_1,
    tank_2,
    tank_3,
    roboport_1,
    roboport_2,
    roboport_3,
    roboport_4,
    logistic_zone_expander_1,
    logistic_zone_expander_2,
    logistic_zone_expander_3,
    logistic_zone_expander_4,
    robochest_1,
    robo_charge_port_1,
    robo_charge_port_2,
    robo_charge_port_3,
    robo_charge_port_4,
    robo_charge_port_large_1,
    robo_charge_port_large_2,
    robo_charge_port_large_3,
    robo_charge_port_large_4,
    roboport_antenna_1,
    roboport_antenna_2,
    roboport_antenna_3,
    roboport_antenna_4,
    roboport_door_1,
    roboport_door_2,
    roboport_door_3,
    roboport_door_4,
    flying_robot_frame_1,
    flying_robot_frame_2,
    flying_robot_frame_3,
    flying_robot_frame_4,
    roboport_chargepad_1,
    roboport_chargepad_2,
    roboport_chargepad_3,
    roboport_chargepad_4,
    robot_brain_1,
    robot_brain_2,
    robot_brain_3,
    robot_brain_4,
    robot_tool_c_1,
    robot_tool_c_2,
    robot_tool_c_3,
    robot_tool_c_4,
    robot_tool_l_1,
    robot_tool_l_2,
    robot_tool_l_3,
    robot_tool_l_4
})