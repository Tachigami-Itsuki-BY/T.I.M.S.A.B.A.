-- BARRELING AND FLUID CONTROL
data_item_subgroup["angels-fluid-control"].order = a

local valve_inspector = "angels-valve-inspector"
local valve_one_way = "angels-valve-one-way"
local valve_overflow = "angels-valve-overflow"
local valve_top_up = "angels-valve-top-up"
local valves =
{
    {name = valve_inspector, order = a},
    {name = valve_one_way,   order = b},
    {name = valve_overflow,  order = c},
    {name = valve_top_up,    order = d}
}
for _, BUILD in pairs(valves) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].ingredients =
    {
        {type = item, name = basic_circuit_board, amount = 1},
        {type = item, name = iron_pipe, amount = 2}
    }
    if data_valve[BUILD.name] then
        data_valve[BUILD.name].order = BUILD.order
        data_valve[BUILD.name].flow_rate = 16
    end
end
data_storage_tank[valve_inspector].order = a
data_storage_tank[valve_inspector].fluid_box.volume = 1800

data_item_subgroup["angels-fluid-tanks"].order = b

local small_storage_tank_inline = "bob-small-inline-storage-tank"
data_item[small_storage_tank_inline].order = a
data_item[small_storage_tank_inline].stack_size = 32
data_item[small_storage_tank_inline].weight = 31250
data_recipe[small_storage_tank_inline].order = a
data_recipe[small_storage_tank_inline].ingredients =
{
    {type = item, name = iron_pipe, amount = 2},
    {type = item, name = iron_plate, amount = 2}
}
data_storage_tank[small_storage_tank_inline].order = a
data_storage_tank[small_storage_tank_inline].fluid_box.volume = 3600

local small_storage_tank = "bob-small-storage-tank"
data_item[small_storage_tank].order = b
data_item[small_storage_tank].stack_size = 32
data_item[small_storage_tank].weight = 31250
data_recipe[small_storage_tank].order = b
data_recipe[small_storage_tank].ingredients =
{
    {type = item, name = iron_pipe, amount = 4},
    {type = item, name = iron_plate, amount = 2}
}
data_storage_tank[small_storage_tank].order = b
data_storage_tank[small_storage_tank].fluid_box.volume = 3600

local storage_tank_A1 = "angels-storage-tank-1"
data_item[storage_tank_A1].order = c
data_item[storage_tank_A1].stack_size = 32
data_item[storage_tank_A1].weight = 31250
data_recipe[storage_tank_A1].order = c
data_recipe[storage_tank_A1].ingredients =
{
    {type = item, name = steel_pipe, amount = 32},
    {type = item, name = steel_plate, amount = 16},
    {type = item, name = clay_brick, amount = 32}
}
data_storage_tank[storage_tank_A1].order = c
data_storage_tank[storage_tank_A1].fluid_box.volume = 115200

local storage_tank_A2 = "angels-storage-tank-2"
data_item[storage_tank_A2].order = d
data_item[storage_tank_A2].stack_size = 32
data_item[storage_tank_A2].weight = 31250
data_recipe[storage_tank_A2].order = d
data_recipe[storage_tank_A2].ingredients =
{
    {type = item, name = steel_pipe, amount = 32},
    {type = item, name = steel_plate, amount = 16},
    {type = item, name = clay_brick, amount = 32}
}
data_storage_tank[storage_tank_A2].order = d
data_storage_tank[storage_tank_A2].fluid_box.volume = 115200

local storage_tank_A3 = "angels-storage-tank-3"
data_item[storage_tank_A3].order = e
data_item[storage_tank_A3].stack_size = 32
data_item[storage_tank_A3].weight = 31250
data_recipe[storage_tank_A3].order = e
data_recipe[storage_tank_A3].ingredients =
{
    {type = item, name = iron_pipe, amount = 4},
    {type = item, name = iron_plate, amount = 4},
    {type = item, name = stone_brick, amount = 4}
}
data_storage_tank[storage_tank_A3].order = e
data_storage_tank[storage_tank_A3].fluid_box.volume = 14400

local pressure_tank_A1 = "angels-pressure-tank-1"
data_item[pressure_tank_A1].order = f
data_item[pressure_tank_A1].stack_size = 32
data_item[pressure_tank_A1].weight = 31250
data_recipe[pressure_tank_A1].order = f
data_recipe[pressure_tank_A1].ingredients =
{
    {type = item, name = iron_pipe, amount = 64},
    {type = item, name = steel_plate, amount = 16},
    {type = item, name = stone_brick, amount = 16}
}
data_storage_tank[pressure_tank_A1].order = f
data_storage_tank[pressure_tank_A1].fluid_box.volume = 230400

local pumps =
{
    {name = pump_1, energy_usage = 30,  order = a, pumping_speed = 8},
    {name = pump_2, energy_usage = 60,  order = b, pumping_speed = 16},
    {name = pump_3, energy_usage = 90,  order = c, pumping_speed = 24},
    {name = pump_4, energy_usage = 120, order = d, pumping_speed = 32}
}
for _, BUILD in pairs(pumps) do
    data_item[BUILD.name].subgroup = is_pump
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_pump
    data_recipe[BUILD.name].order = BUILD.order
    data_pump[BUILD.name].subgroup = is_pump
    data_pump[BUILD.name].order = BUILD.order
    data_pump[BUILD.name].pumping_speed = BUILD.pumping_speed
    data_pump[BUILD.name].energy_usage = BUILD.energy_usage .. kW
    data_pump[BUILD.name].energy_source.drain = nil
end

local storage_tanks_2x =
{
    {name = storage_tank_1, order = a, volume = 28800},
    {name = storage_tank_2, order = b, volume = 57600},
    {name = storage_tank_3, order = c, volume = 86400},
    {name = storage_tank_4, order = d, volume = 115200}
}
for _, BUILD in pairs(storage_tanks_2x) do
    data_item[BUILD.name].subgroup = is_storage_tanks_2x
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_storage_tanks_2x
    data_recipe[BUILD.name].order = BUILD.order
    data_storage_tank[BUILD.name].subgroup = is_storage_tanks_2x
    data_storage_tank[BUILD.name].order = BUILD.order
    data_storage_tank[BUILD.name].fluid_box.volume = BUILD.volume
end
local function storage_tanks_2x_recipe(name, plate_1, plate_2, storage_tank)
    local ingredients = {{type = item, name = plate_1, amount = 16}}
    if plate_2 then
        table.insert(ingredients, {type = item, name = plate_2, amount = 4})
    end
    if storage_tank then
        table.insert(ingredients, {type = item, name = storage_tank, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
storage_tanks_2x_recipe(storage_tank_1, iron_plate, steel_plate)
storage_tanks_2x_recipe(storage_tank_2, invar_plate_bob, nil, storage_tank_1)
storage_tanks_2x_recipe(storage_tank_3, titanium_plate_bob, nil, storage_tank_2)
storage_tanks_2x_recipe(storage_tank_4, nitinol_plate_bob, nil, storage_tank_3)

local storage_tanks_4x =
{
    {name = storage_tank_1_alt, order = a, volume = 28800},
    {name = storage_tank_2_alt, order = b, volume = 57600},
    {name = storage_tank_3_alt, order = c, volume = 86400},
    {name = storage_tank_4_alt, order = d, volume = 115200}
}
for _, BUILD in pairs(storage_tanks_4x) do
    data_item[BUILD.name].subgroup = is_storage_tanks_4x
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_storage_tanks_4x
    data_recipe[BUILD.name].order = BUILD.order
    data_storage_tank[BUILD.name].subgroup = is_storage_tanks_4x
    data_storage_tank[BUILD.name].order = BUILD.order
    data_storage_tank[BUILD.name].fluid_box.volume = BUILD.volume
end
local function storage_tanks_4x_recipe(name, pipe, plate_1, plate_2, storage_tank)
    local ingredients =
    {
        {type = item, name = pipe, amount = 4},
        {type = item, name = plate_1, amount = 16}
    }
    if plate_2 then
        table.insert(ingredients, {type = item, name = plate_2, amount = 4})
    end
    if storage_tank then
        table.insert(ingredients, {type = item, name = storage_tank, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
storage_tanks_4x_recipe(storage_tank_1_alt, iron_pipe, iron_plate, steel_plate)
storage_tanks_4x_recipe(storage_tank_2_alt, steel_pipe, invar_plate_bob, nil, storage_tank_1_alt)
storage_tanks_4x_recipe(storage_tank_3_alt, titanium_pipe, titanium_plate_bob, nil, storage_tank_2_alt)
storage_tanks_4x_recipe(storage_tank_4_alt, nitinol_pipe, nitinol_plate_bob, nil, storage_tank_3_alt)

local barreling_pump = "angels-barreling-pump"
data_item[barreling_pump].subgroup = is_barreling
data_item[barreling_pump].order = a
data_item[barreling_pump].stack_size = 32
data_item[barreling_pump].weight = 31250
data_recipe[barreling_pump].subgroup = is_barreling
data_recipe[barreling_pump].order = a
data_recipe[barreling_pump].ingredients =
{
    {type = item, name = steel_gear_wheel, amount = 8},
    {type = item, name = electronic_circuit, amount = 2},
    {type = item, name = steel_pipe, amount = 4},
    {type = item, name = steel_plate, amount = 8}
}
if data_assembling[barreling_pump] then
    data_assembling[barreling_pump].crafting_speed = 1
    data_assembling[barreling_pump].module_slots = 4
    data_assembling[barreling_pump].energy_usage = (60 - drain) .. kW
    data_assembling[barreling_pump].energy_source.emissions_per_minute.pollution = 0
    data_assembling[barreling_pump].energy_source.drain = drain .. kW
elseif data_furnace[barreling_pump] then
    data_furnace[barreling_pump].crafting_speed = 1
    data_furnace[barreling_pump].module_slots = 4
    data_furnace[barreling_pump].energy_usage = (60 - drain) .. kW
    data_furnace[barreling_pump].energy_source.emissions_per_minute.pollution = 0
    data_furnace[barreling_pump].energy_source.drain = drain .. kW
end

data_item[barrel].subgroup = is_barreling
data_item[barrel].order = b
data_item[barrel].stack_size = 200
data_recipe[barrel].subgroup = is_barreling
data_recipe[barrel].order = b

data_item[canister].localised_name = {"item-name.canister"}
data_item[canister].subgroup = is_barreling
data_item[canister].order = c
data_item[canister].stack_size = 200
data_recipe[canister].subgroup = is_barreling
data_recipe[canister].order = c
data_recipe[canister].ingredients =
{
    {type = item, name = steel_plate, amount = 1},
    {type = item, name = plastic, amount = 1}
}
data_recipe[canister].results[1].amount = 1

data_item[gas_bottle].localised_name = {"item-name.bottle"}
data_item[gas_bottle].subgroup = is_barreling
data_item[gas_bottle].order = d
data_item[gas_bottle].stack_size = 200
data_recipe[gas_bottle].subgroup = is_barreling
data_recipe[gas_bottle].order = d
data_recipe[gas_bottle].ingredients = {{type = item, name = steel_plate, amount = 2}}
data_recipe[gas_bottle].results[1].amount = 1

-- ANGELS BIOPROCESSING NAUVIS
local algae_farm_1 = "angels-algae-farm"
local algae_farm_2 = "angels-algae-farm-2"
local algae_farm_3 = "angels-algae-farm-3"
local algae_farm_4 = "angels-algae-farm-4"
local algae_farms =
{
    {name = algae_farm_1, crafting_speed = 1, energy_usage = 120},
    {name = algae_farm_2, crafting_speed = 2, energy_usage = 240},
    {name = algae_farm_3, crafting_speed = 3, energy_usage = 360},
    {name = algae_farm_4, crafting_speed = 4, energy_usage = 480}
}
for _, BUILD in pairs(algae_farms) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = -(BUILD.crafting_speed * 16)
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
    data_assembling[BUILD.name].heating_energy = data_assembling[assembling_machine_1].heating_energy
end
local function algae_farm_recipe(name, circuit, pipe, plate, brick, algae_farm)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 32},
        {type = item, name = plate, amount = 32},
        {type = item, name = brick, amount = 64}
    }
    if algae_farm then
        table.insert(ingredients, {type = item, name = algae_farm, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
algae_farm_recipe(algae_farm_1, basic_circuit_board, iron_pipe, iron_plate, stone_brick)
algae_farm_recipe(algae_farm_2, electronic_circuit, copper_pipe, copper_plate, stone_brick, algae_farm_1)
algae_farm_recipe(algae_farm_3, advanced_circuit, bronze_pipe, bronze_plate_bob, clay_brick, algae_farm_2)
algae_farm_recipe(algae_farm_4, processing_unit, brass_pipe, aluminium_plate_bob, concrete_brick, algae_farm_3)

local bio_generator_t = "angels-bio-generator-temperate-1"
local bio_generator_s = "angels-bio-generator-swamp-1"
local bio_generator_d = "angels-bio-generator-desert-1"
local bio_generators =
{
    bio_generator_t,
    bio_generator_s,
    bio_generator_d
}
for _, name in pairs(bio_generators) do
    data_item[name].stack_size = 32
    data_item[name].weight = 31250
    data_recipe[name].energy_required = 4
    data_assembling[name].crafting_speed = 1
    data_assembling[name].module_slots = 4
    data_assembling[name].energy_usage = 105 .. kW
    data_assembling[name].energy_source.emissions_per_minute.pollution = -64
    data_assembling[name].energy_source.drain = 15 .. kW
    data_assembling[name].heating_energy = data_assembling[assembling_machine_1].heating_energy
end
local function bio_generator_recipe(name, circuit, pipe, plate, brick, tree)
    data_recipe[name].ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 8},
        {type = item, name = plate, amount = 4},
        {type = item, name = brick, amount = 4},
        {type = item, name = tree, amount = 1}
    }
end
bio_generator_recipe(bio_generator_t, basic_circuit_board, iron_pipe, iron_plate, stone_brick, tree_temperate)
bio_generator_recipe(bio_generator_s, basic_circuit_board, iron_pipe, iron_plate, stone_brick, tree_swamp)
bio_generator_recipe(bio_generator_d, basic_circuit_board, iron_pipe, iron_plate, stone_brick, tree_desert)

local bio_arboretum = "angels-bio-arboretum-1"
data_item[bio_arboretum].stack_size = 32
data_item[bio_arboretum].weight = 31250
data_recipe[bio_arboretum].energy_required = 4
data_recipe[bio_arboretum].ingredients =
{
    {type = item, name = basic_circuit_board, amount = 4},
    {type = item, name = iron_pipe, amount = 16},
    {type = item, name = iron_plate, amount = 16},
    {type = item, name = stone_brick, amount = 32},
}
data_assembling[bio_arboretum].crafting_speed = 1
data_assembling[bio_arboretum].module_slots = 4
data_assembling[bio_arboretum].energy_usage = 105 .. kW
data_assembling[bio_arboretum].energy_source.emissions_per_minute.pollution = -64
data_assembling[bio_arboretum].energy_source.drain = 15 .. kW
data_assembling[bio_arboretum].heating_energy = data_assembling[assembling_machine_1].heating_energy

-- ANGELS BIOPROCESSING VEGETABILIS
local basic_farm = "angels-crop-farm"
data_item[basic_farm].stack_size = 32
data_item[basic_farm].weight = 31250
data_recipe[basic_farm].energy_required = 4
data_recipe[basic_farm].ingredients =
{
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = steel_pipe, amount = 8},
    {type = item, name = steel_plate, amount = 16},
    {type = item, name = clay_brick, amount = 32}
}
data_assembling[basic_farm].module_slots = 4
data_assembling[basic_farm].energy_usage = 105 .. kW
data_assembling[basic_farm].energy_source.emissions_per_minute.pollution = -32
data_assembling[basic_farm].energy_source.drain = 15 .. kW
data_assembling[basic_farm].heating_energy = data_assembling[assembling_machine_1].heating_energy

local temperate_farm = "angels-temperate-farm"
data_item[temperate_farm].stack_size = 32
data_item[temperate_farm].weight = 31250
data_recipe[temperate_farm].energy_required = 4
data_recipe[temperate_farm].ingredients =
{
    {type = item, name = advanced_circuit, amount = 4},
    {type = item, name = brass_pipe, amount = 8},
    {type = item, name = aluminium_plate_bob, amount = 16},
    {type = item, name = concrete_brick, amount = 32},
    {type = item, name = temperate_upgrade, amount = 1},
    {type = item, name = soil_angels, amount = 16},
    {type = item, name = basic_farm, amount = 1}
}
data_assembling[temperate_farm].module_slots = 4
data_assembling[temperate_farm].energy_usage = 210 .. kW
data_assembling[temperate_farm].energy_source.emissions_per_minute.pollution = -64
data_assembling[temperate_farm].energy_source.drain = 30 .. kW
data_assembling[temperate_farm].heating_energy = data_assembling[assembling_machine_1].heating_energy

local swamp_farm = "angels-swamp-farm"
data_item[swamp_farm].stack_size = 32
data_item[swamp_farm].weight = 31250
data_recipe[swamp_farm].energy_required = 4
data_recipe[swamp_farm].ingredients =
{
    {type = item, name = advanced_circuit, amount = 4},
    {type = item, name = brass_pipe, amount = 8},
    {type = item, name = aluminium_plate_bob, amount = 16},
    {type = item, name = concrete_brick, amount = 32},
    {type = item, name = swamp_upgrade, amount = 1},
    {type = item, name = mud_angels, amount = 16},
    {type = item, name = basic_farm, amount = 1}
}
data_assembling[swamp_farm].module_slots = 4
data_assembling[swamp_farm].energy_usage = 210 .. kW
data_assembling[swamp_farm].energy_source.emissions_per_minute.pollution = -64
data_assembling[swamp_farm].energy_source.drain = 30 .. kW
data_assembling[swamp_farm].heating_energy = data_assembling[assembling_machine_1].heating_energy

local desert_farm = "angels-desert-farm"
data_item[desert_farm].stack_size = 32
data_item[desert_farm].weight = 31250
data_recipe[desert_farm].energy_required = 4
data_recipe[desert_farm].ingredients =
{
    {type = item, name = advanced_circuit, amount = 4},
    {type = item, name = brass_pipe, amount = 8},
    {type = item, name = aluminium_plate_bob, amount = 16},
    {type = item, name = concrete_brick, amount = 32},
    {type = item, name = desert_upgrade, amount = 1},
    {type = item, name = sand_angels, amount = 16},
    {type = item, name = basic_farm, amount = 1}
}
data_assembling[desert_farm].module_slots = 4
data_assembling[desert_farm].energy_usage = 210 .. kW
data_assembling[desert_farm].energy_source.emissions_per_minute.pollution = -64
data_assembling[desert_farm].energy_source.drain = 30 .. kW
data_assembling[desert_farm].heating_energy = data_assembling[assembling_machine_1].heating_energy

local seed_extractor = "angels-seed-extractor"
data_item[seed_extractor].stack_size = 32
data_item[seed_extractor].weight = 31250
data_recipe[seed_extractor].energy_required = 4
data_recipe[seed_extractor].ingredients =
{
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = steel_gear_wheel, amount = 8},
    {type = item, name = steel_plate, amount = 4},
    {type = item, name = clay_brick, amount = 4}
}
data_assembling[seed_extractor].crafting_speed = 1
data_assembling[seed_extractor].module_slots = 4
data_assembling[seed_extractor].energy_usage = 105 .. kW
data_assembling[seed_extractor].energy_source.emissions_per_minute.pollution = 0
data_assembling[seed_extractor].energy_source.drain = 15 .. kW
data_assembling[seed_extractor].heating_energy = data_assembling[assembling_machine_1].heating_energy

local composter = "angels-composter"
data_item[composter].stack_size = 32
data_item[composter].weight = 31250
data_recipe[composter].energy_required = 4
data_recipe[composter].ingredients =
{
    {type = item, name = basic_circuit_board, amount = 4},
    {type = item, name = iron_gear_wheel, amount = 8},
    {type = item, name = iron_plate, amount = 4},
    {type = item, name = stone_brick, amount = 8},
    {type = item, name = wooden_chest, amount = 1}
}
data_furnace[composter].crafting_speed = 1
data_furnace[composter].module_slots = 4
data_furnace[composter].energy_usage = 22.5 .. kW
data_furnace[composter].energy_source.emissions_per_minute.pollution = 0
data_furnace[composter].energy_source.drain = 7.5 .. kW
data_furnace[composter].heating_energy = data_assembling[assembling_machine_1].heating_energy

local bio_processor = "angels-bio-processor"
data_item[bio_processor].stack_size = 32
data_item[bio_processor].weight = 31250
data_recipe[bio_processor].energy_required = 4
data_recipe[bio_processor].ingredients =
{
    {type = item, name = electronic_circuit, amount = 8},
    {type = item, name = steel_gear_wheel, amount = 16},
    {type = item, name = steel_plate, amount = 16},
    {type = item, name = clay_brick, amount = 16}
}
data_assembling[bio_processor].crafting_speed = 1
data_assembling[bio_processor].module_slots = 4
data_assembling[bio_processor].energy_usage = 105 .. kW
data_assembling[bio_processor].energy_source.emissions_per_minute.pollution = 0
data_assembling[bio_processor].energy_source.drain = 15 .. kW
data_assembling[bio_processor].heating_energy = data_assembling[assembling_machine_1].heating_energy

local bio_press = "angels-bio-press"
data_item[bio_press].stack_size = 32
data_item[bio_press].weight = 31250
data_recipe[bio_press].energy_required = 4
data_recipe[bio_press].ingredients =
{
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = steel_gear_wheel, amount = 8},
    {type = item, name = bronze_pipe, amount = 4},
    {type = item, name = bronze_plate_bob, amount = 8},
    {type = item, name = clay_brick, amount = 8}
}
data_assembling[bio_press].crafting_speed = 1
data_assembling[bio_press].module_slots = 4
data_assembling[bio_press].energy_usage = 105 .. kW
data_assembling[bio_press].energy_source.emissions_per_minute.pollution = 0
data_assembling[bio_press].energy_source.drain = 15 .. kW
data_assembling[bio_press].heating_energy = data_assembling[assembling_machine_1].heating_energy

local nutrient_extractor = "angels-nutrient-extractor"
data_item[nutrient_extractor].stack_size = 32
data_item[nutrient_extractor].weight = 31250
data_recipe[nutrient_extractor].energy_required = 4
data_recipe[nutrient_extractor].ingredients =
{
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = steel_gear_wheel, amount = 8},
    {type = item, name = bronze_pipe, amount = 8},
    {type = item, name = bronze_plate_bob, amount = 4},
    {type = item, name = clay_brick, amount = 8}
}
data_assembling[nutrient_extractor].crafting_speed = 1
data_assembling[nutrient_extractor].module_slots = 4
data_assembling[nutrient_extractor].energy_usage = 105 .. kW
data_assembling[nutrient_extractor].energy_source.emissions_per_minute.pollution = 0
data_assembling[nutrient_extractor].energy_source.drain = 15 .. kW
data_assembling[nutrient_extractor].heating_energy = data_assembling[assembling_machine_1].heating_energy

-- ANGELS BIOPROCESSING ANIMALIS
local fish_refugium = "angels-bio-refugium-fish"
data_item[fish_refugium].stack_size = 32
data_item[fish_refugium].weight = 31250
data_recipe[fish_refugium].energy_required = 4
data_recipe[fish_refugium].ingredients =
{
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = bronze_pipe, amount = 64},
    {type = item, name = glass_bob, amount = 8},
    {type = item, name = clay_brick, amount = 16},
    {type = item, name = bronze_plate_bob, amount = 4}
}
data_assembling[fish_refugium].crafting_speed = 1
data_assembling[fish_refugium].module_slots = 4
data_assembling[fish_refugium].energy_usage = 105 .. kW
data_assembling[fish_refugium].energy_source.emissions_per_minute.pollution = -32
data_assembling[fish_refugium].energy_source.drain = 15 .. kW
data_assembling[fish_refugium].heating_energy = data_assembling[assembling_machine_1].heating_energy

local butchery = "angels-bio-butchery"
data_item[butchery].stack_size = 32
data_item[butchery].weight = 31250
data_recipe[butchery].energy_required = 4
data_recipe[butchery].ingredients =
{
    {type = item, name = steel_gear_wheel, amount = 4},
    {type = item, name = electronic_circuit, amount = 1},
    {type = item, name = clay_brick, amount = 8},
    {type = item, name = bronze_plate_bob, amount = 8}
}
data_furnace[butchery].crafting_speed = 1
data_furnace[butchery].module_slots = 4
data_furnace[butchery].energy_usage = 105 .. kW
data_furnace[butchery].energy_source.emissions_per_minute.pollution = 0
data_furnace[butchery].energy_source.drain = 15 .. kW
data_furnace[butchery].heating_energy = data_assembling[assembling_machine_1].heating_energy

local hatchery = "angels-bio-hatchery"
data_item[hatchery].stack_size = 32
data_item[hatchery].weight = 31250
data_recipe[hatchery].energy_required = 4
data_recipe[hatchery].ingredients =
{
    {type = item, name = advanced_circuit, amount = 4},
    {type = item, name = "small-lamp", amount = 4},
    {type = item, name = aluminium_plate_bob, amount = 8},
    {type = item, name = concrete_brick, amount = 8}
}
data_furnace[hatchery].crafting_speed = 1
data_furnace[hatchery].module_slots = 4
data_furnace[hatchery].energy_usage = 105 .. kW
data_furnace[hatchery].energy_source.emissions_per_minute.pollution = 0
data_furnace[hatchery].energy_source.drain = 15 .. kW
data_furnace[hatchery].heating_energy = data_assembling[assembling_machine_1].heating_energy

local puffer_refugium = "angels-bio-refugium-puffer"
data_item[puffer_refugium].stack_size = 32
data_item[puffer_refugium].weight = 31250
data_recipe[puffer_refugium].energy_required = 4
data_recipe[puffer_refugium].ingredients =
{
    {type = item, name = advanced_circuit, amount = 4},
    {type = item, name = brass_pipe, amount = 32},
    {type = item, name = aluminium_plate_bob, amount = 16},
    {type = item, name = glass_bob, amount = 4},
    {type = item, name = concrete_brick, amount = 16}
}
data_assembling[puffer_refugium].crafting_speed = 1
data_assembling[puffer_refugium].module_slots = 4
data_assembling[puffer_refugium].energy_usage = 105 .. kW
data_assembling[puffer_refugium].energy_source.emissions_per_minute.pollution = -32
data_assembling[puffer_refugium].energy_source.drain = 15 .. kW
data_assembling[puffer_refugium].heating_energy = data_assembling[assembling_machine_1].heating_energy

local biter_refugium = "angels-bio-refugium-biter"
data_item[biter_refugium].stack_size = 32
data_item[biter_refugium].weight = 31250
data_recipe[biter_refugium].energy_required = 4
data_recipe[biter_refugium].ingredients =
{
    {type = item, name = processing_unit, amount = 4},
    {type = item, name = titanium_pipe, amount = 32},
    {type = item, name = stone_wall, amount = 4},
    {type = item, name = titanium_plate_bob, amount = 32},
    {type = item, name = reinforced_concrete_brick, amount = 64}
}
data_assembling[biter_refugium].crafting_speed = 1
data_assembling[biter_refugium].module_slots = 4
data_assembling[biter_refugium].energy_usage = 105 .. kW
data_assembling[biter_refugium].energy_source.emissions_per_minute.pollution = -32
data_assembling[biter_refugium].energy_source.drain = 15 .. kW
data_assembling[biter_refugium].heating_energy = data_assembling[assembling_machine_1].heating_energy

bobmods.lib.recipe.update_recycling_recipe
({
    valve_inspector,
    valve_one_way,
    valve_overflow,
    valve_top_up,
    storage_tank_A3,
    small_storage_tank_inline,
    small_storage_tank,
    storage_tank_A1,
    storage_tank_A2,
    pressure_tank_A1,
    storage_tank_1,
    storage_tank_2,
    storage_tank_3,
    storage_tank_4,
    storage_tank_1_alt,
    storage_tank_2_alt,
    storage_tank_3_alt,
    storage_tank_4_alt,
    canister,
    gas_bottle,
    algae_farm_1,
    algae_farm_2,
    algae_farm_3,
    algae_farm_4,
    bio_generator_t,
    bio_generator_s,
    bio_generator_d,
    bio_arboretum,
    basic_farm,
    temperate_farm,
    swamp_farm,
    desert_farm,
    seed_extractor,
    composter,
    bio_processor,
    bio_press,
    nutrient_extractor,
    fish_refugium,
    butchery,
    hatchery,
    puffer_refugium,
    biter_refugium,
})