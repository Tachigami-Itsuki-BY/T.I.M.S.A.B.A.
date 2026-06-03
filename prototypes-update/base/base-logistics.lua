data_item[wooden_chest].stack_size = 32
data_item[wooden_chest].weight = 31250
data_recipe[wooden_chest].ingredients[1].amount = 4
data_container[wooden_chest].next_upgrade = iron_chest
data_container[wooden_chest].inventory_size = 20

data_item[iron_chest].stack_size = 32
data_item[iron_chest].weight = 31250
data_container[iron_chest].next_upgrade = steel_chest
data_container[iron_chest].inventory_size = 40

local logistic_chests_1 = "bob-logistic-chests-1"
data_item[steel_chest].subgroup = logistic_chests_1
data_item[steel_chest].order = a
data_item[steel_chest].stack_size = 32
data_item[steel_chest].weight = 31250
data_recipe[steel_chest].subgroup = logistic_chests_1
data_recipe[steel_chest].order = a
data_container[steel_chest].subgroup = logistic_chests_1
data_container[steel_chest].order = a
data_container[steel_chest].inventory_size = 60

active_provider_chest = "active-provider-chest"
buffer_chest = "buffer-chest"
passive_provider_chest = "passive-provider-chest"
requester_chest = "requester-chest"
storage_chest = "storage-chest"
local chests =
{
    {name = active_provider_chest, order = b},
    {name = buffer_chest, order = c},
    {name = passive_provider_chest, order = d},
    {name = requester_chest, order = e},
    {name = storage_chest, order = f}
}
for _, BUILD in pairs(chests) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_logistic_container[BUILD.name].order = BUILD.order
    data_logistic_container[BUILD.name].inventory_size = 60
end

local function chset_recipe(name, material, chest)
    data_recipe[name].ingredients =
    {
        {type = item, name = material, amount = 4},
        {type = item, name = chest, amount = 1}
    }
end
chset_recipe(iron_chest, iron_plate, wooden_chest)
chset_recipe(steel_chest, steel_plate, iron_chest)
chset_recipe(active_provider_chest, advanced_circuit, steel_chest)
chset_recipe(buffer_chest, advanced_circuit, steel_chest)
chset_recipe(passive_provider_chest, electronic_circuit, steel_chest)
chset_recipe(requester_chest, advanced_circuit, steel_chest)
chset_recipe(storage_chest, electronic_circuit, steel_chest)

if mods ["VoidChestInstant"] then
    local void_chest = "void-chest"
    data_item[void_chest].stack_size = 32
    data_item[void_chest].weight = 31250
    data_recipe[void_chest].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 8},
        {type = item, name = steel_chest, amount = 1},
        {type = item, name = steel_furnace, amount = 1}
    }
    bobmods.lib.recipe.update_recycling_recipe({void_chest})
end

if mods ["Unichest"] then
    local unichest = "zy-unichest"
    data_item[unichest].stack_size = 32
    data_item[unichest].weight = 31250
    if settings.startup["zy-unichest-crafting-cost"].value == "medium" then
        data_recipe[unichest].ingredients =
        {
            {type = item, name = steel_chest, amount = 8},
            {type = item, name = iron_plate, amount = 128},
            {type = item, name = copper_plate, amount = 128},
            {type = item, name = electronic_circuit, amount = 64}
        }
    elseif settings.startup["zy-unichest-crafting-cost"].value == "hard" then
        data_recipe[unichest].ingredients =
        {
            {type = item, name = steel_chest, amount = 16},
            {type = item, name = iron_plate, amount = 128},
            {type = item, name = copper_plate, amount = 128},
            {type = item, name = advanced_circuit, amount = 64},
            {type = item, name = processing_unit, amount = 8}
        }
    else
        data_recipe[unichest].ingredients =
        {
            {type = item, name = iron_plate, amount = 16},
            {type = item, name = copper_plate, amount = 16}
        }
    end
    bobmods.lib.recipe.update_recycling_recipe({unichest})
end

if mods ["Unipipe"] then
    local unipipe_extract = "zy-unipipe-extract"
    local unipipe_fill = "zy-unipipe-fill"
    data_item[unipipe_extract].stack_size = 32
    data_item[unipipe_extract].weight = 31250
    data_item[unipipe_fill].stack_size = 32
    data_item[unipipe_fill].weight = 31250
    local unipipe = {unipipe_extract, unipipe_fill}
    for _, name in pairs(unipipe) do
        if settings.startup["zy-unipipe-crafting-cost"].value == "medium" then
            data_recipe[name].ingredients =
            {
                {type = item, name = offshore_pump, amount = 1},
                {type = item, name = iron_pipe_to_ground, amount = 2},
                {type = item, name = copper_pipe_to_ground, amount = 2},
                {type = item, name = storage_tank_1_alt, amount = 4},
                {type = item, name = advanced_circuit, amount = 4}
            }
        elseif settings.startup["zy-unipipe-crafting-cost"].value == "hard" then
            data_recipe[name].ingredients =
            {
                {type = item, name = offshore_pump, amount = 1},
                {type = item, name = iron_pipe_to_ground, amount = 2},
                {type = item, name = copper_pipe_to_ground, amount = 2},
                {type = item, name = storage_tank_1_alt, amount = 8},
                {type = item, name = processing_unit, amount = 8}
            }
        else
            data_recipe[name].ingredients =
            {
                {type = item, name = iron_gear_wheel, amount = 4},
                {type = item, name = copper_plate, amount = 4},
                {type = item, name = electronic_circuit, amount = 4},
                {type = item, name = iron_pipe_to_ground, amount = 2},
                {type = item, name = copper_pipe_to_ground, amount = 2}
            }
        end
        bobmods.lib.recipe.update_recycling_recipe({unipipe_extract, unipipe_fill})
    end
end

local silo = "angels-silo"
data_item[silo].order = a
data_item[silo].stack_size = 32
data_item[silo].weight = 31250
data_recipe[silo].order = a
data_recipe[silo].ingredients =
{
    {type = item, name = iron_plate, amount = 16},
    {type = item, name = steel_plate, amount = 8},
    {type = item, name = stone_brick, amount = 16},
    {type = item, name = steel_chest, amount = 4}
}
data_container[silo].order = a
data_container[silo].inventory_size = 240

local silo_active_provider = "angels-silo-active-provider"
local silo_buffer = "angels-silo-buffer"
local silo_passive_provider = "angels-silo-passive-provider"
local silo_requester = "angels-silo-requester"
local silo_storage = "angels-silo-storage"
local silos =
{
    {name = silo_active_provider, order = b},
    {name = silo_buffer, order = c},
    {name = silo_passive_provider, order = d},
    {name = silo_requester, order = e},
    {name = silo_storage, order = f}
}
for _, BUILD in pairs(silos) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_logistic_container[BUILD.name].order = BUILD.order
    data_logistic_container[BUILD.name].inventory_size = 240
end
local function silos_recipe(name, circuit, plate)
    data_recipe[name].ingredients =
    {
        {type = item, name = circuit, amount = 8},
        {type = item, name = silo, amount = 1},
        {type = item, name = plate, amount = 8},
    }
end
silos_recipe(silo_active_provider, advanced_circuit, steel_plate)
silos_recipe(silo_buffer, advanced_circuit, steel_plate)
silos_recipe(silo_passive_provider, electronic_circuit, steel_plate)
silos_recipe(silo_requester, advanced_circuit, steel_plate)
silos_recipe(silo_storage, electronic_circuit, steel_plate)

local warehouse = "angels-warehouse"
data_item[warehouse].order = a
data_item[warehouse].stack_size = 32
data_item[warehouse].weight = 31250
data_recipe[warehouse].order = a
data_recipe[warehouse].ingredients =
{
    {type = item, name = iron_plate, amount = 128},
    {type = item, name = steel_plate, amount = 64},
    {type = item, name = stone_brick, amount = 128},
    {type = item, name = steel_chest, amount = 16}
}
data_container[warehouse].order = a
data_container[warehouse].inventory_size = 960

local warehouse_active_provider = "angels-warehouse-active-provider"
local warehouse_buffer = "angels-warehouse-buffer"
local warehouse_passive_provider = "angels-warehouse-passive-provider"
local warehouse_requester = "angels-warehouse-requester"
local warehouse_storage = "angels-warehouse-storage"
local warehouses =
{
    {name = warehouse_active_provider, order = b},
    {name = warehouse_buffer, order = c},
    {name = warehouse_passive_provider, order = d},
    {name = warehouse_requester, order = e},
    {name = warehouse_storage, order = f}
}
for _, BUILD in pairs(warehouses) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_logistic_container[BUILD.name].order = BUILD.order
    data_logistic_container[BUILD.name].inventory_size = 960
end
local function warehouses_recipe(name, circuit, plate)
    data_recipe[name].ingredients =
    {
        {type = item, name = circuit, amount = 16},
        {type = item, name = warehouse, amount = 1},
        {type = item, name = plate, amount = 16},
    }
end
warehouses_recipe(warehouse_active_provider, advanced_circuit, steel_plate)
warehouses_recipe(warehouse_buffer, advanced_circuit, steel_plate)
warehouses_recipe(warehouse_passive_provider, electronic_circuit, steel_plate)
warehouses_recipe(warehouse_requester, advanced_circuit, steel_plate)
warehouses_recipe(warehouse_storage, electronic_circuit, steel_plate)

local simulations = require("__TIMSABA__.prototypes.factoriopedia-simulations")
local L2_inserter = "long-handed-inserter"
local entities =
{
    {type_1 = data_transport_belt, name = T0_transport_belt, speed = 1/60,  ASC = 30},
    {type_1 = data_transport_belt, name = T1_transport_belt, speed = 2/60,  ASC = 30},
    {type_1 = data_transport_belt, name = T2_transport_belt, speed = 4/60,  ASC = 32},
    {type_1 = data_transport_belt, name = T3_transport_belt, speed = 6/60,  ASC = 31.25},
    {type_1 = data_transport_belt, name = T4_transport_belt, speed = 8/60,  ASC = 32},
    {type_1 = data_transport_belt, name = T5_transport_belt, speed = 10/60, ASC = 32},

    {type_1 = data_underground_belt, name = T0_underground_belt, speed = 1/60,  ASC = 30,    simulation = simulations.factoriopedia_T0_underground_belt},
    {type_1 = data_underground_belt, name = T1_underground_belt, speed = 2/60,  ASC = 30,    simulation = simulations.factoriopedia_T1_underground_belt},
    {type_1 = data_underground_belt, name = T2_underground_belt, speed = 4/60,  ASC = 32,    simulation = simulations.factoriopedia_T2_underground_belt, max_distance = 16},
    {type_1 = data_underground_belt, name = T3_underground_belt, speed = 6/60,  ASC = 31.25, simulation = simulations.factoriopedia_T3_underground_belt, max_distance = 24},
    {type_1 = data_underground_belt, name = T4_underground_belt, speed = 8/60,  ASC = 32,    simulation = simulations.factoriopedia_T4_underground_belt, max_distance = 32},
    {type_1 = data_underground_belt, name = T5_underground_belt, speed = 10/60, ASC = 32,    simulation = simulations.factoriopedia_T5_underground_belt, max_distance = 40},

    {type_1 = data_splitter, name = T0_splitter, speed = 1/60,  ASC = 30},
    {type_1 = data_splitter, name = T1_splitter, speed = 2/60,  ASC = 30},
    {type_1 = data_splitter, name = T2_splitter, speed = 4/60,  ASC = 32},
    {type_1 = data_splitter, name = T3_splitter, speed = 6/60,  ASC = 31.25},
    {type_1 = data_splitter, name = T4_splitter, speed = 8/60,  ASC = 32},
    {type_1 = data_splitter, name = T5_splitter, speed = 10/60, ASC = 32},

    {type_1 = data_inserter, type_2 = data_item, name = T0_inserter,      stack = 64, weight = 15625, extension_speed = 0.02, rotation_speed = 180/21600},
    {type_1 = data_inserter, type_2 = data_item, name = T1_inserter,      stack = 64, weight = 15625, extension_speed = 0.04, rotation_speed = 360/21600,  EPMR = 30},
    {                        type_2 = data_item, name = L2_inserter,      stack = 64, weight = 15625},
    {type_1 = data_inserter,                     name = T2_inserter,                                  extension_speed = 0.08, rotation_speed = 720/21600,  EPMR = 60},
    {type_1 = data_inserter, type_2 = data_item, name = T2_bulk_inserter, stack = 32, weight = 31250, extension_speed = 0.08, rotation_speed = 720/21600,  EPMR = 120},
    {type_1 = data_inserter, type_2 = data_item, name = T3_inserter,      stack = 64, weight = 15625, extension_speed = 0.12, rotation_speed = 1080/21600, EPMR = 90},
    {type_1 = data_inserter, type_2 = data_item, name = T3_bulk_inserter, stack = 32, weight = 31250, extension_speed = 0.12, rotation_speed = 1080/21600, EPMR = 180},
    {type_1 = data_inserter, type_2 = data_item, name = T4_inserter,      stack = 64, weight = 15625, extension_speed = 0.16, rotation_speed = 1440/21600, EPMR = 120},
    {type_1 = data_inserter, type_2 = data_item, name = T4_bulk_inserter, stack = 32, weight = 31250, extension_speed = 0.16, rotation_speed = 1440/21600, EPMR = 240},
    {type_1 = data_inserter, type_2 = data_item, name = T5_inserter,      stack = 64, weight = 15625, extension_speed = 0.20, rotation_speed = 1800/21600, EPMR = 150},
    {type_1 = data_inserter, type_2 = data_item, name = T5_bulk_inserter, stack = 32, weight = 31250, extension_speed = 0.20, rotation_speed = 1800/21600, EPMR = 300},
}
for _, BUILD in pairs(entities) do
    if BUILD.name then
        if BUILD.type_1 == data_transport_belt and data_transport_belt[BUILD.name] then
            if data_item[BUILD.name] then data_item[BUILD.name].stack_size = 200 end
            data_transport_belt[BUILD.name].speed = BUILD.speed
            data_transport_belt[BUILD.name].animation_speed_coefficient = BUILD.ASC
        end
        if BUILD.type_1 == data_underground_belt and data_underground_belt[BUILD.name] then
            if BUILD.max_distance then
                data_underground_belt[BUILD.name].max_distance = BUILD.max_distance
            end
            if data_item[BUILD.name] then
                data_item[BUILD.name].stack_size = 32
                data_item[BUILD.name].weight = 31250
            end
            if data_recipe[BUILD.name] then data_recipe[BUILD.name].energy_required = 1 end
            data_underground_belt[BUILD.name].localised_description = {"entity-description.underground-belt"}
            data_underground_belt[BUILD.name].speed = BUILD.speed
            data_underground_belt[BUILD.name].animation_speed_coefficient = BUILD.ASC
            data_underground_belt[BUILD.name].factoriopedia_simulation = BUILD.simulation
        end
        if BUILD.type_1 == data_splitter then
            if data_item[BUILD.name] then
                data_item[BUILD.name].stack_size = 16
                data_item[BUILD.name].weight = 62500
            end
            if data_recipe[BUILD.name] then data_recipe[BUILD.name].energy_required = 1 end
            data_splitter[BUILD.name].localised_description = {"entity-description.splitter"}
            data_splitter[BUILD.name].speed = BUILD.speed
            data_splitter[BUILD.name].animation_speed_coefficient = BUILD.ASC
        end
        if BUILD.type_1 == data_inserter and data_inserter[BUILD.name] then
            data_inserter[BUILD.name].rotation_speed = BUILD.rotation_speed
            data_inserter[BUILD.name].extension_speed = BUILD.extension_speed
        end
        if BUILD.type_1 == data_inserter and BUILD.name ~= T0_inserter and data_inserter[BUILD.name] and BUILD.EPMR then
            data_inserter[BUILD.name].energy_per_rotation = ((BUILD.EPMR / 2) / (BUILD.rotation_speed * 60)) .. kJ -- rotation_speed
            data_inserter[BUILD.name].energy_per_movement = ((BUILD.EPMR / 2) / (BUILD.extension_speed * 60)) .. kJ -- extension_speed
        end
        if BUILD.type_2 == data_item and data_item[BUILD.name] then
            data_item[BUILD.name].stack_size = BUILD.stack
            data_item[BUILD.name].weight = BUILD.weight
            if data_recipe[BUILD.name] then
                data_recipe[BUILD.name].category = crafting
                data_recipe[BUILD.name].additional_categories = {electromagnetics}
            end
        end
    end
end
data_inserter[T0_inserter].energy_per_rotation = (450/2.6/2) .. kJ -- rotation_speed
data_inserter[T0_inserter].energy_per_movement = ((450/2.6/2) * 1.75) .. kJ -- extension_speed
data_inserter[T0_inserter].energy_source.fuel_categories = {base_fuel, advanced_fuel}

local function transport_belt_recipe(name, gear_wheel, plate, transport_belt, bearing)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 4},
        {type = item, name = plate, amount = 2}
    }
    if transport_belt then
        table.insert(ingredients, {type = item, name = transport_belt, amount = 2})
    end
    if bearing then
        table.insert(ingredients, {type = item, name = bearing, amount = 4})
    end
    data_recipe[name].ingredients = ingredients
    data_recipe[name].results = {{type = item, name = name, amount = 2}}
end
if data_recipe[T0_transport_belt] then
    transport_belt_recipe(T0_transport_belt, iron_gear_wheel, iron_plate)
    transport_belt_recipe(T1_transport_belt, iron_gear_wheel, tin_plate_bob, T0_transport_belt, iron_bearing)
else
    transport_belt_recipe(T1_transport_belt, iron_gear_wheel, tin_plate_bob, nil, iron_bearing)
end
transport_belt_recipe(T2_transport_belt, steel_gear_wheel, bronze_plate_bob, T1_transport_belt, steel_bearing)
transport_belt_recipe(T3_transport_belt, cobalt_steel_gear_wheel, aluminium_plate_bob, T2_transport_belt, cobalt_steel_bearing)
transport_belt_recipe(T4_transport_belt, titanium_gear_wheel, titanium_plate_bob, T3_transport_belt, titanium_bearing)
transport_belt_recipe(T5_transport_belt, nitinol_gear_wheel, nitinol_plate_bob, T4_transport_belt, nitinol_bearing)
if data_recipe[T0_transport_belt] then data_recipe[T0_transport_belt].ingredients[1].amount = 2 bobmods.lib.recipe.update_recycling_recipe({T0_transport_belt}) end

local function underground_belt_recipe(name, gear_wheel, plate, underground_belt, bearing)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 16},
        {type = item, name = plate, amount = 8}
    }
    if underground_belt then
        table.insert(ingredients, {type = item, name = underground_belt, amount = 2})
    end
    if bearing then
        table.insert(ingredients, {type = item, name = bearing, amount = 16})
    end
    data_recipe[name].ingredients = ingredients
end
if data_recipe[T0_underground_belt] then
    underground_belt_recipe(T0_underground_belt, iron_gear_wheel, iron_plate)
    underground_belt_recipe(T1_underground_belt, iron_gear_wheel, tin_plate_bob, T0_underground_belt, iron_bearing)
else
    underground_belt_recipe(T1_underground_belt, iron_gear_wheel, tin_plate_bob, nil, iron_bearing)
end
underground_belt_recipe(T2_underground_belt, steel_gear_wheel, bronze_plate_bob, T1_underground_belt, steel_bearing)
underground_belt_recipe(T3_underground_belt, cobalt_steel_gear_wheel, aluminium_plate_bob, T2_underground_belt, cobalt_steel_bearing)
underground_belt_recipe(T4_underground_belt, titanium_gear_wheel, titanium_plate_bob, T3_underground_belt, titanium_bearing)
underground_belt_recipe(T5_underground_belt, nitinol_gear_wheel, nitinol_plate_bob, T4_underground_belt, nitinol_bearing)
data_underground_belt[T5_underground_belt].factoriopedia_simulation = simulations.factoriopedia_T5_underground_belt
if data_recipe[T0_underground_belt] then data_recipe[T0_underground_belt].ingredients[1].amount = 8 bobmods.lib.recipe.update_recycling_recipe({T0_underground_belt}) end

local function splitter_recipe(name, gear_wheel, circuit, plate, splitter, bearing)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 8},
        {type = item, name = circuit, amount = 1},
        {type = item, name = plate, amount = 4}
    }
    if splitter then
        table.insert(ingredients, {type = item, name = splitter, amount = 1})
    end
    if bearing then
        table.insert(ingredients, {type = item, name = bearing, amount = 8})
    end
    data_recipe[name].ingredients = ingredients
end
if data_recipe[T0_splitter] then
    splitter_recipe(T0_splitter, iron_gear_wheel, copper_cable, iron_plate)
    splitter_recipe(T1_splitter, iron_gear_wheel, basic_circuit_board, tin_plate_bob, T0_splitter, iron_bearing)
else
    splitter_recipe(T1_splitter, iron_gear_wheel, basic_circuit_board, tin_plate_bob, nil, iron_bearing)
end
splitter_recipe(T2_splitter, steel_gear_wheel, electronic_circuit, bronze_plate_bob, T1_splitter, steel_bearing)
splitter_recipe(T3_splitter, cobalt_steel_gear_wheel, advanced_circuit, aluminium_plate_bob, T2_splitter, cobalt_steel_bearing)
splitter_recipe(T4_splitter, titanium_gear_wheel, processing_unit, titanium_plate_bob, T3_splitter, titanium_bearing)
splitter_recipe(T5_splitter, nitinol_gear_wheel, advanced_processing_unit, nitinol_plate_bob, T4_splitter, nitinol_bearing)
if data_recipe[T0_splitter] then
    data_recipe[T0_splitter].ingredients[1].amount = 4
    data_recipe[T0_splitter].ingredients[2].amount = 4
    bobmods.lib.recipe.update_recycling_recipe({T0_splitter})
end

table.insert(data_recipe[T1_inserter].ingredients, {type = item, name = T0_inserter, amount = 1})
table.insert(data_recipe[T1_inserter].ingredients, {type = item, name = iron_bearing, amount = 1})
table.insert(data_recipe[L2_inserter].ingredients, {type = item, name = steel_bearing, amount = 1})

local function bulk_inserter_recipe(name, gear_wheel, inserter, circuit, plate, bearing)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 4},
        {type = item, name = inserter, amount = 1},
        {type = item, name = circuit, amount = 1},
        {type = item, name = plate, amount = 4}
    }
    if bearing then
        table.insert(ingredients, {type = item, name = bearing, amount = 4})
    end
    data_recipe[name].ingredients = ingredients
end
bulk_inserter_recipe(T2_bulk_inserter, steel_gear_wheel, T1_inserter, electronic_circuit, bronze_plate_bob, steel_bearing)
bulk_inserter_recipe(T3_bulk_inserter, cobalt_steel_gear_wheel, T2_bulk_inserter, advanced_circuit, aluminium_plate_bob, cobalt_steel_bearing)
bulk_inserter_recipe(T4_bulk_inserter, titanium_gear_wheel, T3_bulk_inserter, processing_unit, titanium_plate_bob, titanium_bearing)
bulk_inserter_recipe(T5_bulk_inserter, nitinol_gear_wheel, T4_bulk_inserter, advanced_processing_unit, nitinol_plate_bob, nitinol_bearing)

if mods ["loaders-modernized-integrations"] then
    local data_loader_1x1 = data.raw["loader-1x1"]
    local T0_loader = "mdrn-basic-loader"
    local T1_loader = "mdrn-loader"
    local T2_loader = "mdrn-fast-loader"
    local T3_loader = "mdrn-express-loader"
    local T4_loader = "mdrn-turbo-loader"
    local T5_loader = "mdrn-ultimate-loader"
    local loaders =
    {
        {name = T0_loader, speed = 1/60,  ins_amount = 8, ASC = 30},
        {name = T1_loader, speed = 2/60,  ins_amount = 8, ASC = 30},
        {name = T2_loader, speed = 4/60,  ins_amount = 8, ASC = 32},
        {name = T3_loader, speed = 6/60,  ins_amount = 8, ASC = 31.25},
        {name = T4_loader, speed = 8/60,  ins_amount = 8, ASC = 32},
        {name = T5_loader, speed = 10/60, ins_amount = 8, ASC = 32}
    }
    for _, BUILD in pairs(loaders) do
        if data_item[BUILD.name] then
            data_item[BUILD.name].order = z
            data_item[BUILD.name].stack_size = 32
            data_item[BUILD.name].weight = 31250
            data_recipe[BUILD.name].order = z
            data_loader_1x1[BUILD.name].order = z
            data_loader_1x1[BUILD.name].speed = BUILD.speed
            data_loader_1x1[BUILD.name].animation_speed_coefficient = BUILD.ASC
            local recipe_variants = {BUILD.name, "stack-" .. BUILD.name}
            for _, recipe_name in ipairs(recipe_variants) do
                if data_recipe[recipe_name] then
                    local recipe = data_recipe[recipe_name]
                    if recipe.ingredients then
                        for _, ingredient in pairs(recipe.ingredients) do
                            local name = ingredient.name or ingredient[1]
                            if name and name:find("inserter") then
                                if ingredient.name then
                                    ingredient.amount = BUILD.ins_amount
                                else
                                    ingredient[2] = BUILD.ins_amount
                                end
                            end
                        end
                    end
                    bobmods.lib.recipe.update_recycling_recipe({recipe_name})
                end
            end
        end
    end
    local stack_loader = "mdrn-stack-loader"
    if data_loader_1x1[stack_loader] then
        data_loader_1x1[T5_loader].next_upgrade = stack_loader
        data_item[stack_loader].subgroup = is_gleba_logistics
        data_item[stack_loader].order = b
        data_item[stack_loader].stack_size = 32
        data_item[stack_loader].weight = 31250
        data_recipe[stack_loader].subgroup = is_gleba_logistics
        data_recipe[stack_loader].order = b
        data_recipe[stack_loader].ingredients[1].name = vulcanus_underground_belt
        local recipe_variants = {stack_loader, "stack-" .. stack_loader}
        for _, recipe_name in ipairs(recipe_variants) do
            if data_recipe[recipe_name] then
                local recipe = data_recipe[recipe_name]
                if recipe.ingredients then
                    for _, ingredient in pairs(recipe.ingredients) do
                        local name = ingredient.name or ingredient[1]
                        if name and name:find("inserter") then
                            if ingredient.name then
                                ingredient.amount = 8
                            else
                                ingredient[2] = 8
                            end
                        end
                    end
                end
            end
        end
        data_recipe[stack_loader].ingredients[3].name = T5_loader
        data_loader_1x1[stack_loader].subgroup = is_gleba_logistics
        data_loader_1x1[stack_loader].order = b
        data_loader_1x1[stack_loader].minable.mining_time = 0.5
        bobmods.lib.recipe.update_recycling_recipe({stack_loader})
    end
    local chute_loader = "mdrn-chute-loader"
    if data_loader_1x1[chute_loader] then
        data_item[chute_loader].stack_size = 32
        data_item[chute_loader].weight = 31250
        if data_underground_belt[T0_underground_belt] then
            data_recipe[chute_loader].ingredients =
            {
                {type = item, name = T0_underground_belt, amount = 2},
                {type = item, name = T0_inserter, amount = 4}
            }
        else
            data_recipe[chute_loader].ingredients =
            {
                {type = item, name = iron_plate, amount = 8},
                {type = item, name = T0_inserter, amount = 4}
            }
        end
        data_loader_1x1[chute_loader].next_upgrade = T0_loader
        data_loader_1x1[chute_loader].minable.mining_time = 0.5
        data_loader_1x1[chute_loader].speed = 0.5/60
        bobmods.lib.recipe.update_recycling_recipe({chute_loader})
    end
end

data_item[small_electric_pole].stack_size = 32
data_item[small_electric_pole].weight = 31250
data_recipe[small_electric_pole].ingredients[1].amount = 2
data_electric_pole[small_electric_pole].maximum_wire_distance = 10.5
data_electric_pole[small_electric_pole].supply_area_distance = 3.5

local medium_poles =
{
    {name = medium_electric_pole_1, order = a, max_wire = 13,   supply_area = 4.5},
    {name = medium_electric_pole_2, order = b, max_wire = 16.5, supply_area = 5.5},
    {name = medium_electric_pole_3, order = c, max_wire = 19,   supply_area = 6.5},
    {name = medium_electric_pole_4, order = d, max_wire = 22.5, supply_area = 7.5}
}
for _, BUILD in pairs(medium_poles) do
    if data_item[BUILD.name] then
        data_item[BUILD.name].subgroup = is_medium_electric_pole
        data_item[BUILD.name].order = BUILD.order
        data_item[BUILD.name].stack_size = 32
        data_item[BUILD.name].weight = 31250
        data_recipe[BUILD.name].subgroup = is_medium_electric_pole
        data_recipe[BUILD.name].order = BUILD.order
        data_electric_pole[BUILD.name].subgroup = is_medium_electric_pole
        data_electric_pole[BUILD.name].order = BUILD.order
        data_electric_pole[BUILD.name].maximum_wire_distance = BUILD.max_wire
        data_electric_pole[BUILD.name].supply_area_distance = BUILD.supply_area
    end
end

data_recipe[medium_electric_pole_1].ingredients =
{
    {type = item, name = iron_rod, amount = 2},
    {type = item, name = copper_cable, amount = 2},
    {type = item, name = steel_plate, amount = 2}
}

local big_poles =
{
    {name = big_electric_pole_1, order = a, max_wire = 16},
    {name = big_electric_pole_2, order = b, max_wire = 32},
    {name = big_electric_pole_3, order = c, max_wire = 48},
    {name = big_electric_pole_4, order = d}
}
for _, BUILD in pairs(big_poles) do
    if data_item[BUILD.name] then
        data_item[BUILD.name].subgroup = is_big_electric_pole
        data_item[BUILD.name].order = BUILD.order
        data_item[BUILD.name].stack_size = 32
        data_item[BUILD.name].weight = 31250
        data_recipe[BUILD.name].subgroup = is_big_electric_pole
        data_recipe[BUILD.name].order = BUILD.order
        data_electric_pole[BUILD.name].subgroup = is_big_electric_pole
        data_electric_pole[BUILD.name].order = BUILD.order
        if BUILD.max_wire then
            data_electric_pole[BUILD.name].maximum_wire_distance = BUILD.max_wire
        end
    end
end

local function big_electric_pole_recipe(name, electric_pole, cable, plate)
    data_recipe[name].ingredients =
    {
        {type = item, name = electric_pole, amount = 1},
        {type = item, name = cable, amount = 4},
        {type = item, name = plate, amount = 4}
    }
end
data_recipe[big_electric_pole_1].ingredients =
{
    {type = item, name = iron_rod, amount = 4},
    {type = item, name = copper_cable, amount = 4},
    {type = item, name = steel_plate, amount = 4}
}
if data_recipe[big_electric_pole_2] then
    big_electric_pole_recipe(big_electric_pole_2, big_electric_pole_1, tin_cable, brass_plate_bob)
    big_electric_pole_recipe(big_electric_pole_3, big_electric_pole_2, insulated_cable, titanium_plate_bob)
    big_electric_pole_recipe(big_electric_pole_4, big_electric_pole_3, gold_cable, nitinol_plate_bob)
    bobmods.lib.recipe.update_recycling_recipe({big_electric_pole_2, big_electric_pole_3, big_electric_pole_4})
end

local substations =
{
    {name = substation_1, order = a, max_wire = 16, supply_area = 8},
    {name = substation_2, order = b},
    {name = substation_3, order = c, max_wire = 32, supply_area = 16},
    {name = substation_4, order = d, max_wire = 40, supply_area = 20}
}
for _, BUILD in pairs(substations) do
    if data_item[BUILD.name] then
        data_item[BUILD.name].subgroup = is_substation
        data_item[BUILD.name].order = BUILD.order
        data_item[BUILD.name].stack_size = 32
        data_item[BUILD.name].weight = 31250
        data_recipe[BUILD.name].subgroup = is_substation
        data_recipe[BUILD.name].order = BUILD.order
        data_electric_pole[BUILD.name].subgroup = is_substation
        data_electric_pole[BUILD.name].order = BUILD.order
        if BUILD.max_wire then
            data_electric_pole[BUILD.name].maximum_wire_distance = BUILD.max_wire
        end
        if BUILD.supply_area then
            data_electric_pole[BUILD.name].supply_area_distance = BUILD.supply_area
        end
    end
end

local function substation_recipe(name, circuit, electric_pole, cable, plate)
    data_recipe[name].ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = electric_pole, amount = 1},
        {type = item, name = cable, amount = 4},
        {type = item, name = plate, amount = 8}
    }
end
data_recipe[substation_1].ingredients =
{
    {type = item, name = iron_rod, amount = 8},
    {type = item, name = copper_cable, amount = 4},
    {type = item, name = steel_plate, amount = 8},
    {type = item, name = electronic_circuit, amount = 4}
}
if data_recipe[substation_2] then
    substation_recipe(substation_2, advanced_circuit, substation_1, tin_cable, brass_plate_bob)
    substation_recipe(substation_3, processing_unit, substation_2, insulated_cable, titanium_plate_bob)
    substation_recipe(substation_4, advanced_processing_unit, substation_3, gold_cable, nitinol_plate_bob)
    bobmods.lib.recipe.update_recycling_recipe({substation_2, substation_3, substation_4})
end

local pipes =
{
    {name = iron_pipe,            order = a},
    {name = copper_pipe,          order = b},
    {name = stone_pipe,           order = c},
    {name = bronze_pipe,          order = d},
    {name = steel_pipe,           order = e},
    {name = plastic_pipe,         order = f},
    {name = brass_pipe,           order = g},
    {name = titanium_pipe,        order = h},
    {name = ceramic_pipe,         order = i},
    {name = tungsten_pipe,        order = j},
    {name = nitinol_pipe,         order = k},
    {name = copper_tungsten_pipe, order = l}
}
for _, pipe in pairs(pipes) do
    data_item[pipe.name].order = pipe.order
    data_item[pipe.name].stack_size = 200
    data_recipe[pipe.name].order = pipe.order
    data_pipe[pipe.name].order = pipe.order
end
data_recipe[stone_pipe].category = smelting_filtering
data_recipe[stone_pipe].additional_categories = {angels_sintering_4, metallurgy}
if settings.startup[setting_early_sintering_oven].value then data_recipe[stone_pipe].additional_categories = {angels_sintering_1, metallurgy} end
data_recipe[stone_pipe].ingredients[1].name = stone
data_recipe[stone_pipe].ingredients[1].amount = 2
data_recipe[plastic_pipe].category = crafting_fluid
data_recipe[plastic_pipe].ingredients = {{type = fluid, name = liquid_plastic_angels, amount = 15}}
data_recipe[plastic_pipe].auto_recycle = false
if settings.startup[setting_early_sintering_oven].value then data_recipe[ceramic_pipe].category = angels_sintering_2 end
data_recipe[tungsten_pipe].category = angels_sintering_4
data_recipe[tungsten_pipe].ingredients[1].name = tungsten_powder
data_recipe[copper_tungsten_pipe].category = angels_sintering_4
data_recipe[copper_tungsten_pipe].ingredients[1].name = copper_tungsten_powder

local pipes_to_ground =
{
    {name = iron_pipe_to_ground,            order = a, simulations = simulations.factoriopedia_iron_pipe_to_ground},
    {name = copper_pipe_to_ground,          order = b, simulations = simulations.factoriopedia_copper_pipe_to_ground},
    {name = stone_pipe_to_ground,           order = c, simulations = simulations.factoriopedia_stone_pipe_to_ground},
    {name = bronze_pipe_to_ground,          order = d, simulations = simulations.factoriopedia_bronze_pipe_to_ground},
    {name = steel_pipe_to_ground,           order = e, simulations = simulations.factoriopedia_steel_pipe_to_ground},
    {name = plastic_pipe_to_ground,         order = f, simulations = simulations.factoriopedia_plastic_pipe_to_ground},
    {name = brass_pipe_to_ground,           order = g, simulations = simulations.factoriopedia_brass_pipe_to_ground},
    {name = titanium_pipe_to_ground,        order = h, simulations = simulations.factoriopedia_titanium_pipe_to_ground},
    {name = ceramic_pipe_to_ground,         order = i, simulations = simulations.factoriopedia_ceramic_pipe_to_ground},
    {name = tungsten_pipe_to_ground,        order = j, simulations = simulations.factoriopedia_tungsten_pipe_to_ground},
    {name = nitinol_pipe_to_ground,         order = k, simulations = simulations.factoriopedia_nitinol_pipe_to_ground},
    {name = copper_tungsten_pipe_to_ground, order = l, simulations = simulations.factoriopedia_copper_tungsten_pipe_to_ground}
}
for _, pipe in pairs(pipes_to_ground) do
    data_item[pipe.name].order = pipe.order
    data_item[pipe.name].stack_size = 32
    data_item[pipe.name].weight = 31250
    data_recipe[pipe.name].order = pipe.order
    data_recipe[pipe.name].energy_required = 4
    data_pipe_to_ground[pipe.name].order = pipe.order
    data_pipe_to_ground[pipe.name].factoriopedia_simulation = pipe.simulations
end
local function pipe_to_ground_recipe(name, pipe, plate, count)
    data_recipe[name].ingredients =
    {
        {type = item, name = pipe,  amount = count},
        {type = item, name = plate, amount = 4}
    }
end
pipe_to_ground_recipe(iron_pipe_to_ground,                       iron_pipe,             iron_plate, 8)
pipe_to_ground_recipe(copper_pipe_to_ground,                   copper_pipe,           copper_plate, 8)
pipe_to_ground_recipe(stone_pipe_to_ground,                     stone_pipe,            stone_brick, 8)
pipe_to_ground_recipe(bronze_pipe_to_ground,                   bronze_pipe,       bronze_plate_bob, 16)
pipe_to_ground_recipe(steel_pipe_to_ground,                     steel_pipe,            steel_plate, 16)
pipe_to_ground_recipe(plastic_pipe_to_ground,                 plastic_pipe,                plastic, 24)
pipe_to_ground_recipe(brass_pipe_to_ground,                     brass_pipe,        brass_plate_bob, 24)
pipe_to_ground_recipe(titanium_pipe_to_ground,               titanium_pipe,     titanium_plate_bob, 32)
pipe_to_ground_recipe(ceramic_pipe_to_ground,                 ceramic_pipe,    silicon_nitride_bob, 32)
pipe_to_ground_recipe(tungsten_pipe_to_ground,               tungsten_pipe,        tungsten_powder, 32)
pipe_to_ground_recipe(nitinol_pipe_to_ground,                 nitinol_pipe,      nitinol_plate_bob, 40)
pipe_to_ground_recipe(copper_tungsten_pipe_to_ground, copper_tungsten_pipe, copper_tungsten_powder, 40)
data_recipe[stone_pipe_to_ground].category = smelting_filtering
data_recipe[stone_pipe_to_ground].additional_categories = {angels_sintering_4, metallurgy}
if settings.startup[setting_early_sintering_oven].value then data_recipe[stone_pipe_to_ground].additional_categories = {angels_sintering_1, metallurgy} end
data_recipe[stone_pipe_to_ground].ingredients[2].name = stone
data_recipe[stone_pipe_to_ground].ingredients[2].amount = 8
data_recipe[plastic_pipe_to_ground].category = crafting_fluid
data_recipe[plastic_pipe_to_ground].ingredients[2].type = fluid
data_recipe[plastic_pipe_to_ground].ingredients[2].name = liquid_plastic_angels
data_recipe[plastic_pipe_to_ground].ingredients[2].amount = 60
if settings.startup[setting_early_sintering_oven].value then data_recipe[ceramic_pipe_to_ground].category = angels_sintering_2 end
data_recipe[tungsten_pipe_to_ground].category = angels_sintering_4
data_recipe[copper_tungsten_pipe_to_ground].category = angels_sintering_4

bobmods.lib.recipe.update_recycling_recipe
({
    wooden_chest,
    iron_chest,
    steel_chest,
    active_provider_chest,
    buffer_chest,
    passive_provider_chest,
    requester_chest,
    storage_chest,
    silo,
    silo_active_provider,
    silo_buffer,
    silo_passive_provider,
    silo_requester,
    silo_storage,
    warehouse,
    warehouse_active_provider,
    warehouse_buffer,
    warehouse_passive_provider,
    warehouse_requester,
    warehouse_storage,
    --T0_transport_belt,
    T1_transport_belt,
    T2_transport_belt,
    T3_transport_belt,
    T4_transport_belt,
    T5_transport_belt,
    --T0_underground_belt,
    T1_underground_belt,
    T2_underground_belt,
    T3_underground_belt,
    T4_underground_belt,
    T5_underground_belt,
    --T0_splitter,
    T1_splitter,
    T2_splitter,
    T3_splitter,
    T4_splitter,
    T5_splitter,
    T1_inserter,
    L2_inserter,
    T2_bulk_inserter,
    T3_bulk_inserter,
    T4_bulk_inserter,
    T5_bulk_inserter,
    small_electric_pole,
    medium_electric_pole_1,
    big_electric_pole_1,
    --big_electric_pole_2,
    --big_electric_pole_3,
    --big_electric_pole_4,
    substation_1,
    --substation_2,
    --substation_3,
    --substation_4,
    iron_pipe_to_ground,
    copper_pipe_to_ground,
    stone_pipe_to_ground,
    bronze_pipe_to_ground,
    steel_pipe_to_ground,
    brass_pipe_to_ground,
    titanium_pipe_to_ground,
    nitinol_pipe_to_ground
})

data_transport_belt[T5_transport_belt].next_upgrade = vulcanus_transport_belt
data_underground_belt[T5_underground_belt].next_upgrade = vulcanus_underground_belt
data_splitter[T5_splitter].next_upgrade = vulcanus_splitter
data_inserter[T5_bulk_inserter].next_upgrade = stack_inserter

data_electric_pole[small_electric_pole].next_upgrade = medium_electric_pole_1
data_electric_pole[medium_electric_pole_1].next_upgrade = medium_electric_pole_2
data_electric_pole[medium_electric_pole_2].next_upgrade = medium_electric_pole_3
data_electric_pole[medium_electric_pole_3].next_upgrade = medium_electric_pole_4
data_electric_pole[medium_electric_pole_4].next_upgrade = nil
data_electric_pole[big_electric_pole_1].next_upgrade = big_electric_pole_2
data_electric_pole[big_electric_pole_2].next_upgrade = big_electric_pole_3
data_electric_pole[big_electric_pole_3].next_upgrade = big_electric_pole_4
data_electric_pole[big_electric_pole_4].next_upgrade = nil
data_electric_pole[substation_1].next_upgrade = substation_2
data_electric_pole[substation_2].next_upgrade = substation_3
data_electric_pole[substation_3].next_upgrade = substation_4
data_electric_pole[substation_4].next_upgrade = nil