-- ANGELS RESOURCE REFINING
local drain = 15
local kW = "kW"
data_item[burner_ore_crusher].subgroup = is_ore_crusher
data_item[burner_ore_crusher].order = a
data_item[burner_ore_crusher].stack_size = 32
data_item[burner_ore_crusher].weight = 31250
data_recipe[burner_ore_crusher].subgroup = is_ore_crusher
data_recipe[burner_ore_crusher].order = a
data_recipe[burner_ore_crusher].energy_required = 4
data_recipe[burner_ore_crusher].ingredients[1].amount = 4
data_recipe[burner_ore_crusher].ingredients[3].amount = 4
data_assembling[burner_ore_crusher].subgroup = is_ore_crusher
data_assembling[burner_ore_crusher].order = a
data_assembling[burner_ore_crusher].crafting_speed = 0.5
data_assembling[burner_ore_crusher].energy_usage = 225 .. kW
data_assembling[burner_ore_crusher].energy_source.emissions_per_minute.pollution = 4
data_assembling[burner_ore_crusher].energy_source.fuel_categories = {base_fuel}

data_item_subgroup["angels-ore-crusher"].order = z_a

local ore_crushers =
{
    {name = ore_crusher_1, crafting_speed = 1, energy_usage = 120, order = b},
    {name = ore_crusher_2, crafting_speed = 2, energy_usage = 240, order = c},
    {name = ore_crusher_3, crafting_speed = 3, energy_usage = 360, order = d}
}
for _, BUILD in pairs(ore_crushers) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function ore_crusher_recipe(name, gear_wheel, brick, plate, ore_crusher)
    data_recipe[name].ingredients =
    {
        {type = item, name = gear_wheel, amount = 8},
        {type = item, name = brick, amount = 16},
        {type = item, name = plate, amount = 8},
        {type = item, name = ore_crusher, amount = 1}
    }
end
ore_crusher_recipe(ore_crusher_1, iron_gear_wheel, stone_brick, iron_plate, burner_ore_crusher)
ore_crusher_recipe(ore_crusher_2, steel_gear_wheel, clay_brick, steel_plate, ore_crusher_1)
ore_crusher_recipe(ore_crusher_3, brass_gear_wheel, concrete_brick, aluminium_plate_bob, ore_crusher_2)

data_item_subgroup["angels-ore-floatation"].order = z_b

local ore_floatation_cells =
{
    {name = ore_floatation_cell_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = ore_floatation_cell_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = ore_floatation_cell_3, crafting_speed = 3, energy_usage = 360, order = c}
}
for _, BUILD in pairs(ore_floatation_cells) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function ore_floatation_cell_recipe(name, pipe, circuit, brick, plate, ore_floatation_cell)
    local ingredients =
    {
        {type = item, name = pipe, amount = 16},
        {type = item, name = circuit, amount = 8},
        {type = item, name = brick, amount = 32},
        {type = item, name = plate, amount = 16}
    }
    if ore_floatation_cell then
        table.insert(ingredients, {type = item, name = ore_floatation_cell, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
ore_floatation_cell_recipe(ore_floatation_cell_1, bronze_pipe, electronic_circuit, clay_brick, bronze_plate_bob)
ore_floatation_cell_recipe(ore_floatation_cell_2, brass_pipe, advanced_circuit, concrete_brick, aluminium_plate_bob, ore_floatation_cell_1)
ore_floatation_cell_recipe(ore_floatation_cell_3, titanium_pipe, processing_unit, reinforced_concrete_brick, titanium_plate_bob, ore_floatation_cell_2)

data_item_subgroup["angels-ore-leaching"].order = z_c

local ore_leaching_plants =
{
    {name = ore_leaching_plant_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = ore_leaching_plant_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = ore_leaching_plant_3, crafting_speed = 3, energy_usage = 360, order = c}
}
for _, BUILD in pairs(ore_leaching_plants) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function ore_leaching_plant_recipe(name, pipe, circuit, brick, plate, ore_leaching_plant)
    local ingredients =
    {
        {type = item, name = pipe, amount = 16},
        {type = item, name = circuit, amount = 8},
        {type = item, name = brick, amount = 32},
        {type = item, name = plate, amount = 16}
    }
    if ore_leaching_plant then
        table.insert(ingredients, {type = item, name = ore_leaching_plant, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
ore_leaching_plant_recipe(ore_leaching_plant_1, brass_pipe, advanced_circuit, concrete_brick, aluminium_plate_bob)
ore_leaching_plant_recipe(ore_leaching_plant_2, titanium_pipe, processing_unit, reinforced_concrete_brick, titanium_plate_bob, ore_leaching_plant_1)
ore_leaching_plant_recipe(ore_leaching_plant_3, tungsten_pipe, advanced_processing_unit, reinforced_concrete_brick, tungsten_plate_bob, ore_leaching_plant_2)

data_item_subgroup["angels-ore-refining"].order = z_d

local ore_refinerys =
{
    {name = ore_refinery_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = ore_refinery_2, crafting_speed = 2, energy_usage = 240, order = b}
}
for _, BUILD in pairs(ore_refinerys) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function ore_refinery_recipe(name, circuit, brick, plate, ore_refinery)
    local ingredients =
    {
        {type = item, name = circuit, amount = 16},
        {type = item, name = brick, amount = 128},
        {type = item, name = plate, amount = 32}
    }
    if ore_refinery then
        table.insert(ingredients, {type = item, name = ore_refinery, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
ore_refinery_recipe(ore_refinery_1, processing_unit, reinforced_concrete_brick, titanium_plate_bob)
ore_refinery_recipe(ore_refinery_2, advanced_processing_unit, reinforced_concrete_brick, tungsten_plate_bob, ore_refinery_1)

data_item_subgroup["angels-ore-sorter"].order = z_e

local ore_sorting_facilitys =
{
    {name = ore_sorting_facility_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = ore_sorting_facility_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = ore_sorting_facility_3, crafting_speed = 3, energy_usage = 360, order = c},
    {name = ore_sorting_facility_4, crafting_speed = 4, energy_usage = 480, order = d},
    {name = ore_sorting_facility_5, crafting_speed = 5, energy_usage = 600, order = e}
}
for _, BUILD in pairs(ore_sorting_facilitys) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
data_assembling[ore_sorting_facility_5].localised_description = {"entity-description.angels-ore-sorting-facility"}
local function ore_sorting_facility_recipe(name, gear_wheel, circuit, brick, plate, ore_sorting_facility)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 32},
        {type = item, name = circuit, amount = 8},
        {type = item, name = brick, amount = 64},
        {type = item, name = plate, amount = 32}
    }
    if ore_sorting_facility then
        table.insert(ingredients, {type = item, name = ore_sorting_facility, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
ore_sorting_facility_recipe(ore_sorting_facility_1, iron_gear_wheel, basic_circuit_board, stone_brick, iron_plate)
ore_sorting_facility_recipe(ore_sorting_facility_2, steel_gear_wheel, electronic_circuit, clay_brick, steel_plate, ore_sorting_facility_1)
ore_sorting_facility_recipe(ore_sorting_facility_3, brass_gear_wheel, advanced_circuit, concrete_brick, aluminium_plate_bob, ore_sorting_facility_2)
ore_sorting_facility_recipe(ore_sorting_facility_4, titanium_gear_wheel, processing_unit, reinforced_concrete_brick, titanium_plate_bob, ore_sorting_facility_3)
ore_sorting_facility_recipe(ore_sorting_facility_5, copper_tungsten_gear_wheel, advanced_processing_unit, reinforced_concrete_brick, copper_tungsten_plate_bob, ore_sorting_facility_4)

data_item_subgroup["angels-powderizer"].order = z_f

local powderizers =
{
    {name = powderizer_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = powderizer_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = powderizer_3, crafting_speed = 3, energy_usage = 360, order = c}
}
for _, BUILD in pairs(powderizers) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function powderizer_recipe(name, gear_wheel, plate, brick, powderizer)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 4},
        {type = item, name = plate, amount = 4},
        {type = item, name = brick, amount = 8}
    }
    if powderizer then
        table.insert(ingredients, {type = item, name = powderizer, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
powderizer_recipe(powderizer_1, steel_gear_wheel, bronze_plate_bob, clay_brick)
powderizer_recipe(powderizer_2, brass_gear_wheel, aluminium_plate_bob, concrete_brick, powderizer_1)
powderizer_recipe(powderizer_3, titanium_gear_wheel, titanium_plate_bob, reinforced_concrete_brick, powderizer_2)

data_item_subgroup["angels-ore-whinning"].order = z_g

local electro_whinning_cells =
{
    {name = electro_whinning_cell_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = electro_whinning_cell_2, crafting_speed = 2, energy_usage = 240, order = b}
}
for _, BUILD in pairs(electro_whinning_cells) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function electro_whinning_cell_recipe(name, pipe, circuit, brick, plate, electro_whinning_cell)
    local ingredients =
    {
        {type = item, name = pipe, amount = 16},
        {type = item, name = circuit, amount = 8},
        {type = item, name = brick, amount = 16},
        {type = item, name = plate, amount = 16}
    }
    if electro_whinning_cell then
        table.insert(ingredients, {type = item, name = electro_whinning_cell, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
electro_whinning_cell_recipe(electro_whinning_cell_1, titanium_pipe, processing_unit, reinforced_concrete_brick, titanium_plate_bob)
electro_whinning_cell_recipe(electro_whinning_cell_2, tungsten_pipe, advanced_processing_unit, reinforced_concrete_brick, tungsten_plate_bob, electro_whinning_cell_1)

data_item_subgroup["angels-refining-buildings"].order = z_h

local thermal_extractors =
{
    {name = thermal_extractor_1, mining_speed = 1, energy_usage = 120},
    {name = thermal_extractor_2, mining_speed = 2, energy_usage = 240}
}
for _, BUILD in pairs(thermal_extractors) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 4
    data_mining_drill[BUILD.name].mining_speed = BUILD.mining_speed
    data_mining_drill[BUILD.name].module_slots = BUILD.mining_speed
    data_mining_drill[BUILD.name].energy_usage = BUILD.energy_usage .. kW
    data_mining_drill[BUILD.name].energy_source.emissions_per_minute.pollution = 0
end
data_mining_drill[thermal_extractor_1].next_upgrade = thermal_extractor_2
local function thermal_extractor_recipe(name, gear_wheel, pipe, circuit, brick, plate, thermal_extractor)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 16},
        {type = item, name = pipe, amount = 16},
        {type = item, name = circuit, amount = 4},
        {type = item, name = brick, amount = 16},
        {type = item, name = plate, amount = 16}
    }
    if thermal_extractor then
        table.insert(ingredients, {type = item, name = thermal_extractor, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
thermal_extractor_recipe(thermal_extractor_1, steel_gear_wheel, bronze_pipe, electronic_circuit, clay_brick, bronze_plate_bob)
thermal_extractor_recipe(thermal_extractor_2, brass_gear_wheel, brass_pipe, advanced_circuit, concrete_brick, aluminium_plate_bob, thermal_extractor_1)

local filtration_units =
{
    {name = filtration_unit_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = filtration_unit_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = filtration_unit_3, crafting_speed = 3, energy_usage = 360, order = c}
}
for _, BUILD in pairs(filtration_units) do
    data_item[BUILD.name].subgroup = is_filtration_unit
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_filtration_unit
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_filtration_unit
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function filtration_unit_recipe(name, pipe, circuit, brick, plate, filtration_unit)
    local ingredients =
    {
        {type = item, name = pipe, amount = 16},
        {type = item, name = circuit, amount = 4},
        {type = item, name = brick, amount = 16},
        {type = item, name = plate, amount = 8}
    }
    if filtration_unit then
        table.insert(ingredients, {type = item, name = filtration_unit, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
filtration_unit_recipe(filtration_unit_1, steel_pipe, electronic_circuit, clay_brick, steel_plate)
filtration_unit_recipe(filtration_unit_2, brass_pipe, advanced_circuit, concrete_brick, aluminium_plate_bob, filtration_unit_1)
filtration_unit_recipe(filtration_unit_3, titanium_pipe, processing_unit, reinforced_concrete_brick, titanium_plate_bob, filtration_unit_2)

local crystallizers =
{
    {name = crystallizer_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = crystallizer_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = crystallizer_3, crafting_speed = 3, energy_usage = 360, order = c}
}
for _, BUILD in pairs(crystallizers) do
    data_item[BUILD.name].subgroup = is_crystallizer
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_crystallizer
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_crystallizer
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = 0
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function crystallizer_recipe(name, pipe, circuit, brick, plate, crystallizer)
    local ingredients =
    {
        {type = item, name = pipe, amount = 16},
        {type = item, name = circuit, amount = 4},
        {type = item, name = brick, amount = 64},
        {type = item, name = plate, amount = 32}
    }
    if crystallizer then
        table.insert(ingredients, {type = item, name = crystallizer, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
crystallizer_recipe(crystallizer_1, steel_pipe, electronic_circuit, clay_brick, steel_plate)
crystallizer_recipe(crystallizer_2, brass_pipe, advanced_circuit, concrete_brick, aluminium_plate_bob, crystallizer_1)
crystallizer_recipe(crystallizer_3, titanium_pipe, processing_unit, reinforced_concrete_brick, titanium_plate_bob, crystallizer_2)

-- ANGELS METTALURGY SMELTING
local ore_processing_machines =
{
    {name = ore_processing_machine_1, crafting_speed = 1, energy_usage = 120},
    {name = ore_processing_machine_2, crafting_speed = 2, energy_usage = 240},
    {name = ore_processing_machine_3, crafting_speed = 3, energy_usage = 360},
    {name = ore_processing_machine_4, crafting_speed = 4, energy_usage = 480}
}
for _, BUILD in pairs(ore_processing_machines) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function ore_processing_machine_recipe(name, gear_wheel, brick, plate, ore_processing_machine)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 8},
        {type = item, name = brick, amount = 16},
        {type = item, name = plate, amount = 8}
    }
    if ore_processing_machine then
        table.insert(ingredients, {type = item, name = ore_processing_machine, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
ore_processing_machine_recipe(ore_processing_machine_1, steel_gear_wheel, clay_brick, bronze_plate_bob)
ore_processing_machine_recipe(ore_processing_machine_2, brass_gear_wheel, concrete_brick, aluminium_plate_bob, ore_processing_machine_1)
ore_processing_machine_recipe(ore_processing_machine_3, titanium_gear_wheel, reinforced_concrete_brick, titanium_plate_bob, ore_processing_machine_2)
ore_processing_machine_recipe(ore_processing_machine_4, copper_tungsten_gear_wheel, reinforced_concrete_brick, copper_tungsten_plate_bob, ore_processing_machine_3)

local pellet_pressed =
{
    {name = pellet_press_1, crafting_speed = 1, energy_usage = 120},
    {name = pellet_press_2, crafting_speed = 2, energy_usage = 240},
    {name = pellet_press_3, crafting_speed = 3, energy_usage = 360},
    {name = pellet_press_4, crafting_speed = 4, energy_usage = 480}
}
for _, BUILD in pairs(pellet_pressed) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function pellet_press_recipe(name, gear_wheel, brick, plate, pellet_press)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 16},
        {type = item, name = brick, amount = 8},
        {type = item, name = plate, amount = 8}
    }
    if pellet_press then
        table.insert(ingredients, {type = item, name = pellet_press, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
pellet_press_recipe(pellet_press_1, brass_gear_wheel, concrete_brick, aluminium_plate_bob)
pellet_press_recipe(pellet_press_2, titanium_gear_wheel, reinforced_concrete_brick, titanium_plate_bob, pellet_press_1)
pellet_press_recipe(pellet_press_3, copper_tungsten_gear_wheel, reinforced_concrete_brick, copper_tungsten_plate_bob, pellet_press_2)
pellet_press_recipe(pellet_press_4, nitinol_gear_wheel, reinforced_concrete_brick, nitinol_plate_bob, pellet_press_3)

local powder_mixers =
{
    {name = powder_mixer_1, crafting_speed = 1, energy_usage = 120},
    {name = powder_mixer_2, crafting_speed = 2, energy_usage = 240},
    {name = powder_mixer_3, crafting_speed = 3, energy_usage = 360},
    {name = powder_mixer_4, crafting_speed = 4, energy_usage = 480}
}
for _, BUILD in pairs(powder_mixers) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function powder_mixer_recipe(name, gear_wheel, brick, plate, powder_mixer)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 4},
        {type = item, name = brick, amount = 4},
        {type = item, name = plate, amount = 4}
    }
    if powder_mixer then
        table.insert(ingredients, {type = item, name = powder_mixer, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
powder_mixer_recipe(powder_mixer_1, steel_gear_wheel, clay_brick, bronze_plate_bob)
powder_mixer_recipe(powder_mixer_2, brass_gear_wheel, concrete_brick, aluminium_plate_bob, powder_mixer_1)
powder_mixer_recipe(powder_mixer_3, titanium_gear_wheel, reinforced_concrete_brick, titanium_plate_bob, powder_mixer_2)
powder_mixer_recipe(powder_mixer_4, copper_tungsten_gear_wheel, reinforced_concrete_brick, copper_tungsten_plate_bob, powder_mixer_3)

local blast_furnaces =
{
    {name = blast_furnace_1, crafting_speed = 1, energy_usage = 450},
    {name = blast_furnace_2, crafting_speed = 2, energy_usage = 900},
    {name = blast_furnace_3, crafting_speed = 3, energy_usage = 1350},
    {name = blast_furnace_4, crafting_speed = 4, energy_usage = 1800}
}
for _, BUILD in pairs(blast_furnaces) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = BUILD.energy_usage .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed * 4
    data_assembling[BUILD.name].energy_source.fuel_categories = {base_fuel, advanced_fuel}
end
local function blast_furnace_recipe(name, circuit, pipe, brick, plate, blast_furnace)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 16},
        {type = item, name = brick, amount = 64},
        {type = item, name = plate, amount = 8}
    }
    if blast_furnace then
        table.insert(ingredients, {type = item, name = blast_furnace, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
blast_furnace_recipe(blast_furnace_1, basic_circuit_board, iron_pipe, stone_brick, iron_plate)
blast_furnace_recipe(blast_furnace_2, electronic_circuit, steel_pipe, clay_brick, steel_plate, blast_furnace_1)
blast_furnace_recipe(blast_furnace_3, advanced_circuit, brass_pipe, concrete_brick, aluminium_plate_bob, blast_furnace_2)
blast_furnace_recipe(blast_furnace_4, processing_unit, titanium_pipe, reinforced_concrete_brick, titanium_plate_bob, blast_furnace_3)

local chemical_furnaces =
{
    {name = chemical_furnace_1, crafting_speed = 1, energy_usage = 120},
    {name = chemical_furnace_2, crafting_speed = 2, energy_usage = 240},
    {name = chemical_furnace_3, crafting_speed = 3, energy_usage = 360},
    {name = chemical_furnace_4, crafting_speed = 4, energy_usage = 480}
}
for _, BUILD in pairs(chemical_furnaces) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function chemical_furnace_recipe(name, circuit, pipe, brick, plate, chemical_furnace)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 32},
        {type = item, name = brick, amount = 32},
        {type = item, name = plate, amount = 8}
    }
    if chemical_furnace then
        table.insert(ingredients, {type = item, name = chemical_furnace, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
chemical_furnace_recipe(chemical_furnace_1, electronic_circuit, steel_pipe, clay_brick, steel_plate)
chemical_furnace_recipe(chemical_furnace_2, advanced_circuit, brass_pipe, concrete_brick, aluminium_plate_bob, chemical_furnace_1)
chemical_furnace_recipe(chemical_furnace_3, processing_unit, titanium_pipe, reinforced_concrete_brick, titanium_plate_bob, chemical_furnace_2)
chemical_furnace_recipe(chemical_furnace_4, advanced_processing_unit, tungsten_pipe, reinforced_concrete_brick, tungsten_plate_bob, chemical_furnace_3)

-- ANGELS METTALURGY CASTING
local induction_furnaces =
{
    {name = induction_furnace_1, crafting_speed = 1, energy_usage = 120},
    {name = induction_furnace_2, crafting_speed = 2, energy_usage = 240},
    {name = induction_furnace_3, crafting_speed = 3, energy_usage = 360},
    {name = induction_furnace_4, crafting_speed = 4, energy_usage = 480}
}
for _, BUILD in pairs(induction_furnaces) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function induction_furnace_recipe(name, gear_wheel, circuit, pipe, brick, plate, induction_furnace)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 8},
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 16},
        {type = item, name = brick, amount = 16},
        {type = item, name = plate, amount = 16}
    }
    if induction_furnace then
        table.insert(ingredients, {type = item, name = induction_furnace, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
induction_furnace_recipe(induction_furnace_1, iron_gear_wheel, basic_circuit_board, iron_pipe, stone_brick, iron_plate)
induction_furnace_recipe(induction_furnace_2, steel_gear_wheel, electronic_circuit, steel_pipe, clay_brick, steel_plate, induction_furnace_1)
induction_furnace_recipe(induction_furnace_3, brass_gear_wheel, advanced_circuit, brass_pipe, concrete_brick, aluminium_plate_bob, induction_furnace_2)
induction_furnace_recipe(induction_furnace_4, titanium_gear_wheel, processing_unit, titanium_pipe, reinforced_concrete_brick, titanium_plate_bob, induction_furnace_3)

local casting_machines =
{
    {name = casting_machine_1, crafting_speed = 1, energy_usage = 120},
    {name = casting_machine_2, crafting_speed = 2, energy_usage = 240},
    {name = casting_machine_3, crafting_speed = 3, energy_usage = 360},
    {name = casting_machine_4, crafting_speed = 4, energy_usage = 480}
}
for _, BUILD in pairs(casting_machines) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function casting_machine_recipe(name, gear_wheel, circuit, pipe, brick, plate, casting_machine)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 4},
        {type = item, name = circuit, amount = 1},
        {type = item, name = pipe, amount = 8},
        {type = item, name = brick, amount = 4},
        {type = item, name = plate, amount = 8}
    }
    if casting_machine then
        table.insert(ingredients, {type = item, name = casting_machine, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
casting_machine_recipe(casting_machine_1, iron_gear_wheel, basic_circuit_board, iron_pipe, stone_brick, iron_plate)
casting_machine_recipe(casting_machine_2, steel_gear_wheel, electronic_circuit, steel_pipe, clay_brick, steel_plate, casting_machine_1)
casting_machine_recipe(casting_machine_3, brass_gear_wheel, advanced_circuit, brass_pipe, concrete_brick, aluminium_plate_bob, casting_machine_2)
casting_machine_recipe(casting_machine_4, titanium_gear_wheel, processing_unit, titanium_pipe, reinforced_concrete_brick, titanium_plate_bob, casting_machine_3)

local strand_casting_machines =
{
    {name = strand_casting_machine_1, crafting_speed = 1, energy_usage = 120},
    {name = strand_casting_machine_2, crafting_speed = 2, energy_usage = 240},
    {name = strand_casting_machine_3, crafting_speed = 3, energy_usage = 360},
    {name = strand_casting_machine_4, crafting_speed = 4, energy_usage = 480}
}
for _, BUILD in pairs(strand_casting_machines) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function strand_casting_machine_recipe(name, gear_wheel, circuit, pipe, brick, plate, strand_casting_machine)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 16},
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 16},
        {type = item, name = brick, amount = 16},
        {type = item, name = plate, amount = 16}
    }
    if strand_casting_machine then
        table.insert(ingredients, {type = item, name = strand_casting_machine, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
strand_casting_machine_recipe(strand_casting_machine_1, steel_gear_wheel, electronic_circuit, steel_pipe, clay_brick, steel_plate)
strand_casting_machine_recipe(strand_casting_machine_2, brass_gear_wheel, advanced_circuit, brass_pipe, concrete_brick, aluminium_plate_bob, strand_casting_machine_1)
strand_casting_machine_recipe(strand_casting_machine_3, titanium_gear_wheel, processing_unit, titanium_pipe, reinforced_concrete_brick, titanium_plate_bob, strand_casting_machine_2)
strand_casting_machine_recipe(strand_casting_machine_4, copper_tungsten_gear_wheel, advanced_processing_unit, copper_tungsten_pipe, reinforced_concrete_brick, copper_tungsten_plate_bob, strand_casting_machine_3)

if settings.startup[setting_early_sintering_oven].value then
    local sintering_ovens =
    {
        {name = sintering_oven_1, crafting_speed = 1, energy_usage = 120, order = a},
        {name = sintering_oven_2, crafting_speed = 2, energy_usage = 240, order = b},
        {name = sintering_oven_3, crafting_speed = 3, energy_usage = 360, order = c},
        {name = sintering_oven_4, crafting_speed = 4, energy_usage = 480, order = d},
        {name = sintering_oven_5, crafting_speed = 5, energy_usage = 600, order = e}
    }
    for _, BUILD in pairs(sintering_ovens) do
        data_item[BUILD.name].order = BUILD.order
        data_item[BUILD.name].stack_size = 32
        data_item[BUILD.name].weight = 31250
        data_recipe[BUILD.name].order = BUILD.order
        data_recipe[BUILD.name].energy_required = 4
        data_assembling[BUILD.name].order = BUILD.order
        data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
        data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
        data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
        data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
        data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
    end
    local function sintering_oven_recipe(name, circuit, brick, plate, sintering_oven)
        local ingredients =
        {
            {type = item, name = circuit, amount = 4},
            {type = item, name = brick, amount = 64},
            {type = item, name = plate, amount = 32}
        }
        if sintering_oven then
            table.insert(ingredients, {type = item, name = sintering_oven, amount = 1})
        end
        data_recipe[name].ingredients = ingredients
    end
    sintering_oven_recipe(sintering_oven_1, electronic_circuit, clay_brick, steel_plate)
    sintering_oven_recipe(sintering_oven_2, electronic_circuit, clay_brick, bronze_plate_bob, sintering_oven_1)
    sintering_oven_recipe(sintering_oven_3, advanced_circuit, concrete_brick, aluminium_plate_bob, sintering_oven_2)
    sintering_oven_recipe(sintering_oven_4, processing_unit, titanium_plate_bob, reinforced_concrete_brick, sintering_oven_3)
    sintering_oven_recipe(sintering_oven_5, advanced_processing_unit, tungsten_plate_bob, reinforced_concrete_brick, sintering_oven_4)
    bobmods.lib.recipe.update_recycling_recipe({sintering_oven_1, sintering_oven_2, sintering_oven_3, sintering_oven_4, sintering_oven_5})
else
    local sintering_ovens =
    {
        {name = sintering_oven_4, crafting_speed = 1, energy_usage = 240, order = a},
        {name = sintering_oven_5, crafting_speed = 2, energy_usage = 480, order = b}
    }
    for _, BUILD in pairs(sintering_ovens) do
        data_item[BUILD.name].order = BUILD.order
        data_item[BUILD.name].stack_size = 32
        data_item[BUILD.name].weight = 31250
        data_recipe[BUILD.name].order = BUILD.order
        data_recipe[BUILD.name].energy_required = 4
        data_assembling[BUILD.name].order = BUILD.order
        data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
        data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
        data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * (drain * 2))) .. kW
        data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
        data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * (drain * 2)) .. kW
    end
    local function sintering_oven_recipe(name, circuit, brick, plate, sintering_oven)
        local ingredients =
        {
            {type = item, name = circuit, amount = 4},
            {type = item, name = brick, amount = 64},
            {type = item, name = plate, amount = 32}
        }
        if sintering_oven then
            table.insert(ingredients, {type = item, name = sintering_oven, amount = 1})
        end
        data_recipe[name].ingredients = ingredients
    end
    sintering_oven_recipe(sintering_oven_4, processing_unit, titanium_plate_bob, reinforced_concrete_brick)
    sintering_oven_recipe(sintering_oven_5, advanced_processing_unit, tungsten_plate_bob, reinforced_concrete_brick, sintering_oven_4)
    bobmods.lib.recipe.update_recycling_recipe({sintering_oven_4, sintering_oven_5})
end

-- ANGELS WATER TREATMENT
local seafloor_pump = "angels-seafloor-pump"
local ground_water_pump = "angels-ground-water-pump"
local heavy_offshore_pump = "angels-sea-pump"
local water_treatments =
{
    {name = seafloor_pump,               pumping_speed = 4},
    {name = offshore_pump,               pumping_speed = 10},
    {name = ground_water_pump,           pumping_speed = 1},
    {name = heavy_offshore_pump},
    {name = "angels-sea-pump-placeable", pumping_speed = 40}
}
for _, BUILD in pairs(water_treatments) do
    if data_item[BUILD.name] then
        data_item[BUILD.name].subgroup = is_water_treatment_building
        data_item[BUILD.name].stack_size = 32
        data_item[BUILD.name].weight = 31250
        data_recipe[BUILD.name].subgroup = is_water_treatment_building
        data_recipe[BUILD.name].energy_required = 1
    end
    if data_pump_offshore[BUILD.name] then
        data_pump_offshore[BUILD.name].pumping_speed = BUILD.pumping_speed
    end
end
data_recipe[seafloor_pump].ingredients =
{
    {type = item, name = basic_circuit_board, amount = 2},
    {type = item, name = iron_pipe, amount = 8},
    {type = item, name = iron_plate, amount = 8}
}
data_recipe[offshore_pump].ingredients =
{
    {type = item, name = iron_gear_wheel, amount = 2},
    {type = item, name = iron_pipe, amount = 4},
    {type = item, name = iron_plate, amount = 2}
}
data_recipe[ground_water_pump].ingredients =
{
    {type = item, name = basic_circuit_board, amount = 2},
    {type = item, name = iron_pipe, amount = 8},
    {type = item, name = stone_brick, amount = 4}
}
data_recipe[heavy_offshore_pump].ingredients =
{
    {type = item, name = advanced_circuit, amount = 4},
    {type = item, name = brass_pipe, amount = 8},
    {type = item, name = aluminium_plate_bob, amount = 8},
    {type = item, name = concrete_brick, amount = 32},
    {type = item, name = offshore_pump, amount = 1}
}

data_pump_offshore[seafloor_pump].surface_conditions =
{
    {property = "gravity", min = 10, max = 20},
    {property = "pressure", min = 1000, max = 2000}
}

local assembling_machine = "assembling-machine"
local pump_1 = data_pump_offshore[ground_water_pump]
if pump_1 then
    pump_1.type = assembling_machine
    pump_1.crafting_speed = 1
    pump_1.fixed_recipe = nil
    pump_1.show_recipe_icon = false
    pump_1.crafting_categories = {"extract-ground"}
    pump_1.fluid_boxes =
    {
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            volume = 100,
            base_area = 1,
            base_level = 1,
            pipe_connections = pump_1.fluid_box.pipe_connections
        }
    }
    pump_1.fluid_box = nil
    pump_1.graphics_set = {animation = pump_1.graphics_set.animation}
    pump_1.energy_source = {type = "void"}
    pump_1.energy_usage = 15 .. kW
    pump_1.surface_conditions = {{property = "gravity", min = 8, max = 40}}
    pump_1.active_components_only = true
    data_assembling[ground_water_pump] = pump_1
    data_pump_offshore[ground_water_pump] = nil
end

local pump_2 = data_mining_drill[heavy_offshore_pump]
if pump_2 then
    pump_2.type = offshore_pump
    pump_2.adjacent_tile_collision_mask = {layers = {water_tile = true}}
    pump_2.adjacent_resources_required = true
    pump_2.fluid_source_offset = {0, -3}
    pump_2.fluid_box = pump_2.output_fluid_box
    if pump_2.fluid_box then
        pump_2.fluid_box.filter = nil
        pump_2.fluid_box.production_type = "output"
    end
    pump_2.output_fluid_box = nil
    pump_2.pumping_speed = 40
    pump_2.always_draw_fluid = true
    pump_2.graphics_set = {base_pictures = pump_2.base_picture}
    pump_2.base_picture = nil
    pump_2.resource_categories = nil
    pump_2.mining_speed = nil
    pump_2.resource_searching_radius = nil
    pump_2.vector_to_place_result = nil
    pump_2.module_slots = nil
    pump_2.allowed_effects = nil
    pump_2.energy_source = {type = "void"}
    pump_2.energy_usage = 15 .. kW
    pump_2.emissions_per_minute = nil
    data_pump_offshore[heavy_offshore_pump] = pump_2
    data_mining_drill[heavy_offshore_pump] = nil
end
local sea_pump_placeable = "angels-sea-pump-placeable"
if data_pump_offshore[sea_pump_placeable] then
    data_pump_offshore[sea_pump_placeable].hidden = true
end
local sea_pump_resource = "angels-sea-pump-resource"
if data_resource[sea_pump_resource] then
    data_resource[sea_pump_resource].autoplace = nil
    data_resource[sea_pump_resource].hidden = true
end

local hydro_plants =
{
    {name = hydro_plant_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = hydro_plant_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = hydro_plant_3, crafting_speed = 3, energy_usage = 360, order = c}
}
for _, BUILD in pairs(hydro_plants) do
    data_item[BUILD.name].subgroup = is_hydro_building
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_hydro_building
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_hydro_building
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = 0
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function hydro_plant_recipe(name, circuit, pipe, plate, brick, hydro_plant)
    local ingredients =
    {
        {type = item, name = circuit, amount = 8},
        {type = item, name = pipe, amount = 32},
        {type = item, name = plate, amount = 16},
        {type = item, name = brick, amount = 64}
    }
    if hydro_plant then
        table.insert(ingredients, {type = item, name = hydro_plant, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
hydro_plant_recipe(hydro_plant_1, basic_circuit_board, iron_pipe, iron_plate, stone_brick)
hydro_plant_recipe(hydro_plant_2, electronic_circuit, steel_pipe, steel_plate, clay_brick, hydro_plant_1)
hydro_plant_recipe(hydro_plant_3, advanced_circuit, brass_pipe, aluminium_plate_bob, concrete_brick, hydro_plant_2)

local washing_plants =
{
    {name = washing_plant_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = washing_plant_2, crafting_speed = 2, energy_usage = 240, order = b}
}
for _, BUILD in pairs(washing_plants) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = 0
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function washing_plant_recipe(name, circuit, pipe, plate, brick, washing_plant)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 32},
        {type = item, name = plate, amount = 8},
        {type = item, name = brick, amount = 16}
    }
    if washing_plant then
        table.insert(ingredients, {type = item, name = washing_plant, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
washing_plant_recipe(washing_plant_1, basic_circuit_board, iron_pipe, iron_plate, stone_brick)
washing_plant_recipe(washing_plant_2, electronic_circuit, bronze_pipe, bronze_plate_bob, clay_brick, washing_plant_1)

local salination_plants =
{
    {name = salination_plant_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = salination_plant_2, crafting_speed = 2, energy_usage = 240, order = b}
}
for _, BUILD in pairs(salination_plants) do
    data_item[BUILD.name].subgroup = is_salination_building
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_salination_building
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_salination_building
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = 0
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function salination_plant_recipe(name, circuit, pipe, plate, brick, salination_plant)
    local ingredients =
    {
        {type = item, name = circuit, amount = 8},
        {type = item, name = pipe, amount = 16},
        {type = item, name = plate, amount = 64},
        {type = item, name = brick, amount = 64}
    }
    if salination_plant then
        table.insert(ingredients, {type = item, name = salination_plant, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
salination_plant_recipe(salination_plant_1, advanced_circuit, brass_pipe, aluminium_plate_bob, concrete_brick)
salination_plant_recipe(salination_plant_2, processing_unit, titanium_pipe, titanium_plate_bob, reinforced_concrete_brick, salination_plant_1)

local electric_boilers =
{
    {name = electric_boiler_1, crafting_speed = 1, energy_usage = 1200, order = a},
    {name = electric_boiler_2, crafting_speed = 2, energy_usage = 2400, order = b},
    {name = electric_boiler_3, crafting_speed = 3, energy_usage = 3600, order = c}
}
for _, BUILD in pairs(electric_boilers) do
    data_item[BUILD.name].subgroup = is_boiler_building
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_boiler_building
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_boiler_building
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * (drain * 10))) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = 0
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * (drain * 10)) .. kW
end
data_assembling[electric_boiler_3].max_health = 600
local function electric_boiler_recipe(name, circuit, pipe, plate, brick, electric_boiler)
    local ingredients =
    {
        {type = item, name = circuit, amount = 2},
        {type = item, name = pipe, amount = 16},
        {type = item, name = plate, amount = 4},
        {type = item, name = brick, amount = 4}
    }
    if electric_boiler then
        table.insert(ingredients, {type = item, name = electric_boiler, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
electric_boiler_recipe(electric_boiler_1, electronic_circuit, bronze_pipe, bronze_plate_bob, clay_brick)
electric_boiler_recipe(electric_boiler_2, advanced_circuit, brass_pipe, aluminium_plate_bob, concrete_brick, electric_boiler_1)
electric_boiler_recipe(electric_boiler_3, processing_unit, tungsten_pipe, tungsten_plate_bob, reinforced_concrete_brick, electric_boiler_2)

local cooling_tower = "angels-cooling-tower"
data_item[cooling_tower].subgroup = is_boiler_building
data_item[cooling_tower].order = z
data_item[cooling_tower].stack_size = 32
data_item[cooling_tower].weight = 31250
data_recipe[cooling_tower].subgroup = is_boiler_building
data_recipe[cooling_tower].order = z
data_recipe[cooling_tower].energy_required = 4
data_recipe[cooling_tower].ingredients =
{
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = bronze_pipe, amount = 16},
    {type = item, name = clay_brick, amount = 64},
    {type = item, name = bronze_plate_bob, amount = 32}
}
data_assembling[cooling_tower].subgroup = is_boiler_building
data_assembling[cooling_tower].order = z
data_assembling[cooling_tower].crafting_speed = 1
data_assembling[cooling_tower].module_slots = 4
data_assembling[cooling_tower].energy_usage = 22.5 .. kW
data_assembling[cooling_tower].energy_source.emissions_per_minute.pollution = 0
data_assembling[cooling_tower].energy_source.drain = 7.5 .. kW

local clarifier = "angels-clarifier"
data_item[clarifier].subgroup = is_others_WT_building
data_item[clarifier].order = a
data_item[clarifier].stack_size = 32
data_item[clarifier].weight = 31250
data_recipe[clarifier].subgroup = is_others_WT_building
data_recipe[clarifier].order = a
data_recipe[clarifier].energy_required = 4
data_recipe[clarifier].ingredients =
{
    {type = item, name = basic_circuit_board, amount = 4},
    {type = item, name = iron_pipe, amount = 32},
    {type = item, name = iron_plate, amount = 8},
    {type = item, name = stone_brick, amount = 32}
}
data_furnace[clarifier].subgroup = is_others_WT_building
data_furnace[clarifier].order = a
data_furnace[clarifier].crafting_speed = 1
data_furnace[clarifier].module_slots = 4
data_furnace[clarifier].energy_usage = 22.5 .. kW
data_furnace[clarifier].energy_source.emissions_per_minute.pollution = 16
data_furnace[clarifier].energy_source.drain = 7.5 .. kW

-- ANGELS PETROCHEM REFINING
data_item_subgroup[is_buildings_electrolyser].order = z

local electrolysers =
{
    {name = electrolyser_1, crafting_speed = 1, energy_usage = 1200, order = a},
    {name = electrolyser_2, crafting_speed = 2, energy_usage = 2400, order = b},
    {name = electrolyser_3, crafting_speed = 3, energy_usage = 3600, order = c},
    {name = electrolyser_4, crafting_speed = 4, energy_usage = 4800, order = d}
}
for _, BUILD in pairs(electrolysers) do
    data_item[BUILD.name].subgroup = is_buildings_electrolyser
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_buildings_electrolyser
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_buildings_electrolyser
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * (drain * 10))) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = 0
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * (drain * 10)) .. kW
end
local function electrolyser_recipe(name, circuit, pipe, plate, brick, electrolyser)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 32},
        {type = item, name = plate, amount = 16},
        {type = item, name = brick, amount = 16}
    }
    if electrolyser then
        table.insert(ingredients, {type = item, name = electrolyser, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
electrolyser_recipe(electrolyser_1, basic_circuit_board, iron_pipe, iron_plate, stone_brick)
electrolyser_recipe(electrolyser_2, electronic_circuit, bronze_pipe, bronze_plate_bob, clay_brick, electrolyser_1)
electrolyser_recipe(electrolyser_3, advanced_circuit, brass_pipe, aluminium_plate_bob, concrete_brick, electrolyser_2)
electrolyser_recipe(electrolyser_4, processing_unit, titanium_pipe, titanium_plate_bob, reinforced_concrete_brick, electrolyser_3)

local air_filters =
{
    {name = air_filter_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = air_filter_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = air_filter_3, crafting_speed = 3, energy_usage = 360, order = c}
}
for _, BUILD in pairs(air_filters) do
    data_item[BUILD.name].subgroup = is_buildings_air_filter
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_buildings_air_filter
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_buildings_air_filter
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = 0
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function air_filter_recipe(name, circuit, pipe, plate, brick, air_filter)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 16},
        {type = item, name = plate, amount = 16},
        {type = item, name = brick, amount = 32}
    }
    if air_filter then
        table.insert(ingredients, {type = item, name = air_filter, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
air_filter_recipe(air_filter_1, basic_circuit_board, iron_pipe, iron_plate, stone_brick)
air_filter_recipe(air_filter_2, electronic_circuit, bronze_pipe, bronze_plate_bob, clay_brick, air_filter_1)
air_filter_recipe(air_filter_3, advanced_circuit, brass_pipe, aluminium_plate_bob, concrete_brick, air_filter_2)

local liquifiers =
{
    {name = liquifier_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = liquifier_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = liquifier_3, crafting_speed = 3, energy_usage = 360, order = c},
    {name = liquifier_4, crafting_speed = 4, energy_usage = 480, order = d}
}
for _, BUILD in pairs(liquifiers) do
    data_item[BUILD.name].subgroup = is_buildings_liquefier
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_buildings_liquefier
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_buildings_liquefier
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = 0
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function liquifier_recipe(name, circuit, pipe, plate, brick, liquifier)
    local ingredients =
    {
        {type = item, name = circuit, amount = 2},
        {type = item, name = pipe, amount = 8},
        {type = item, name = plate, amount = 8},
        {type = item, name = brick, amount = 8}
    }
    if liquifier then
        table.insert(ingredients, {type = item, name = liquifier, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
liquifier_recipe(liquifier_1, basic_circuit_board, iron_pipe, iron_plate, stone_brick)
liquifier_recipe(liquifier_2, electronic_circuit, bronze_pipe, bronze_plate_bob, clay_brick, liquifier_1)
liquifier_recipe(liquifier_3, advanced_circuit, brass_pipe, aluminium_plate_bob, concrete_brick, liquifier_2)
liquifier_recipe(liquifier_4, processing_unit, titanium_pipe, titanium_plate_bob, reinforced_concrete_brick, liquifier_3)

data_item_subgroup[is_buildings_chemical_plant].order = z_c

local chemical_plants =
{
    {name = chemical_plant_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = chemical_plant_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = chemical_plant_3, crafting_speed = 3, energy_usage = 360, order = c},
    {name = chemical_plant_4, crafting_speed = 4, energy_usage = 480, order = d}
}
for _, BUILD in pairs(chemical_plants) do
    data_item[BUILD.name].subgroup = is_buildings_chemical_plant
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_buildings_chemical_plant
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_buildings_chemical_plant
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_categories = {chemistry, chemistry_or_cryogenics}
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function chemical_plant_recipe(name, circuit, pipe, plate, gear, chemical_plant)
    local ingredients =
    {
        {type = item, name = circuit, amount = 1},
        {type = item, name = pipe, amount = 8},
        {type = item, name = plate, amount = 8},
        {type = item, name = gear, amount = 4}
    }
    if chemical_plant then
        table.insert(ingredients, {type = item, name = chemical_plant, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
chemical_plant_recipe(chemical_plant_1, basic_circuit_board, iron_pipe, iron_plate, iron_gear_wheel)
chemical_plant_recipe(chemical_plant_2, electronic_circuit, bronze_pipe, bronze_plate_bob, steel_gear_wheel, chemical_plant_1)
chemical_plant_recipe(chemical_plant_3, advanced_circuit, brass_pipe, aluminium_plate_bob, brass_gear_wheel, chemical_plant_2)
chemical_plant_recipe(chemical_plant_4, processing_unit, titanium_pipe, titanium_plate_bob, titanium_gear_wheel, chemical_plant_3)

local advanced_chemical_plants =
{
    {name = advanced_chemical_plant_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = advanced_chemical_plant_2, crafting_speed = 2, energy_usage = 240, order = b}
}
for _, BUILD in pairs(advanced_chemical_plants) do
    data_item[BUILD.name].subgroup = is_buildings_advanced_chemical_plant
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_buildings_advanced_chemical_plant
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_buildings_advanced_chemical_plant
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function advanced_chemical_plant_recipe(name, circuit, pipe, plate, brick, advanced_chemical_plant)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 16},
        {type = item, name = plate, amount = 16},
        {type = item, name = brick, amount = 8}
    }
    if advanced_chemical_plant then
        table.insert(ingredients, {type = item, name = advanced_chemical_plant, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
advanced_chemical_plant_recipe(advanced_chemical_plant_1, electronic_circuit, bronze_pipe, bronze_plate_bob, clay_brick)
advanced_chemical_plant_recipe(advanced_chemical_plant_2, processing_unit, titanium_pipe, titanium_plate_bob, concrete_brick, advanced_chemical_plant_1)

data_item_subgroup[is_buildings_gas_refinery].order = z_e

local gas_refinerys =
{
    {name = gas_refinery_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = gas_refinery_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = gas_refinery_3, crafting_speed = 3, energy_usage = 360, order = c},
    {name = gas_refinery_4, crafting_speed = 4, energy_usage = 480, order = d}
}
for _, BUILD in pairs(gas_refinerys) do
    data_item[BUILD.name].subgroup = is_buildings_gas_refinery
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_buildings_gas_refinery
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_buildings_gas_refinery
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed * 2
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function gas_refinery_recipe(name, circuit, pipe, plate, brick, gas_refinery)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 32},
        {type = item, name = plate, amount = 8},
        {type = item, name = brick, amount = 16}
    }
    if gas_refinery then
        table.insert(ingredients, {type = item, name = gas_refinery, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
gas_refinery_recipe(gas_refinery_1, electronic_circuit, steel_pipe, steel_plate, clay_brick)
gas_refinery_recipe(gas_refinery_2, advanced_circuit, brass_pipe, aluminium_plate_bob, concrete_brick, gas_refinery_1)
gas_refinery_recipe(gas_refinery_3, processing_unit, titanium_pipe, titanium_plate_bob, reinforced_concrete_brick, gas_refinery_2)
gas_refinery_recipe(gas_refinery_4, advanced_processing_unit, tungsten_pipe, tungsten_plate_bob, reinforced_concrete_brick, gas_refinery_3)

local advanced_gas_refinerys =
{
    {name = advanced_gas_refinery_1, crafting_speed = 1, energy_usage = 240, order = a},
    {name = advanced_gas_refinery_2, crafting_speed = 2, energy_usage = 480, order = b},
    {name = advanced_gas_refinery_3, crafting_speed = 3, energy_usage = 720, order = c},
    {name = advanced_gas_refinery_4, crafting_speed = 4, energy_usage = 960, order = d}
}
for _, BUILD in pairs(advanced_gas_refinerys) do
    data_item[BUILD.name].subgroup = is_buildings_advanced_gas_refinery
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_buildings_advanced_gas_refinery
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_buildings_advanced_gas_refinery
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed * 2
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function advanced_gas_refinery_recipe(name, circuit, pipe, plate, brick, advanced_gas_refinery)
    local ingredients =
    {
        {type = item, name = circuit, amount = 8},
        {type = item, name = pipe, amount = 64},
        {type = item, name = plate, amount = 16},
        {type = item, name = brick, amount = 32}
    }
    if advanced_gas_refinery then
        table.insert(ingredients, {type = item, name = advanced_gas_refinery, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
advanced_gas_refinery_recipe(advanced_gas_refinery_1, advanced_circuit, brass_pipe, aluminium_plate_bob, concrete_brick)
advanced_gas_refinery_recipe(advanced_gas_refinery_2, processing_unit, titanium_pipe, titanium_plate_bob, reinforced_concrete_brick, advanced_gas_refinery_1)
advanced_gas_refinery_recipe(advanced_gas_refinery_3, advanced_processing_unit, tungsten_pipe, tungsten_plate_bob, reinforced_concrete_brick, advanced_gas_refinery_2)
advanced_gas_refinery_recipe(advanced_gas_refinery_4, advanced_processing_unit, copper_tungsten_pipe, tungsten_carbide_bob, reinforced_concrete_brick, advanced_gas_refinery_3)

data_item_subgroup[is_buildings_oil_refinery].order = z_g

local oil_refinerys =
{
    {name = oil_refinery_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = oil_refinery_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = oil_refinery_3, crafting_speed = 3, energy_usage = 360, order = c},
    {name = oil_refinery_4, crafting_speed = 4, energy_usage = 480, order = d}
}
for _, BUILD in pairs(oil_refinerys) do
    data_item[BUILD.name].subgroup = is_buildings_oil_refinery
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_buildings_oil_refinery
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_buildings_oil_refinery
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed * 2
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function oil_refinery_recipe(name, circuit, pipe, plate, gear, oil_refinery)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 32},
        {type = item, name = plate, amount = 8},
        {type = item, name = gear, amount = 8}
    }
    if oil_refinery then
        table.insert(ingredients, {type = item, name = oil_refinery, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
oil_refinery_recipe(oil_refinery_1, electronic_circuit, steel_pipe, steel_plate, steel_gear_wheel)
oil_refinery_recipe(oil_refinery_2, advanced_circuit, brass_pipe, aluminium_plate_bob, brass_gear_wheel, oil_refinery_1)
oil_refinery_recipe(oil_refinery_3, processing_unit, titanium_pipe, titanium_plate_bob, titanium_gear_wheel, oil_refinery_2)
oil_refinery_recipe(oil_refinery_4, advanced_processing_unit, copper_tungsten_pipe, copper_tungsten_plate_bob, copper_tungsten_gear_wheel, oil_refinery_3)

local separators =
{
    {name = separator_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = separator_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = separator_3, crafting_speed = 3, energy_usage = 360, order = c},
    {name = separator_4, crafting_speed = 4, energy_usage = 480, order = d}
}
for _, BUILD in pairs(separators) do
    data_item[BUILD.name].subgroup = is_buildings_oil_gas_separator
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_buildings_oil_gas_separator
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_buildings_oil_gas_separator
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed * 2
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function separator_recipe(name, circuit, pipe, plate, brick, separator)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 32},
        {type = item, name = plate, amount = 8},
        {type = item, name = brick, amount = 16}
    }
    if separator then
        table.insert(ingredients, {type = item, name = separator, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
separator_recipe(separator_1, electronic_circuit, steel_pipe, steel_plate, clay_brick)
separator_recipe(separator_2, advanced_circuit, brass_pipe, aluminium_plate_bob, concrete_brick, separator_1)
separator_recipe(separator_3, processing_unit, titanium_pipe, titanium_plate_bob, reinforced_concrete_brick, separator_2)
separator_recipe(separator_4, advanced_processing_unit, tungsten_pipe, tungsten_plate_bob, reinforced_concrete_brick, separator_3)

data_item_subgroup[is_buildings_steam].order = z_i

local steam_crackers =
{
    {name = steam_cracker_1, crafting_speed = 1, energy_usage = 120, order = a},
    {name = steam_cracker_2, crafting_speed = 2, energy_usage = 240, order = b},
    {name = steam_cracker_3, crafting_speed = 3, energy_usage = 360, order = c},
    {name = steam_cracker_4, crafting_speed = 4, energy_usage = 480, order = d}
}
for _, BUILD in pairs(steam_crackers) do
    data_item[BUILD.name].subgroup = is_buildings_steam
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_buildings_steam
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_assembling[BUILD.name].subgroup = is_buildings_steam
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function steam_cracker_recipe(name, circuit, pipe, plate, brick, steam_cracker)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 32},
        {type = item, name = plate, amount = 8},
        {type = item, name = brick, amount = 16}
    }
    if steam_cracker then
        table.insert(ingredients, {type = item, name = steam_cracker, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
steam_cracker_recipe(steam_cracker_1, electronic_circuit, steel_pipe, bronze_plate_bob, clay_brick)
steam_cracker_recipe(steam_cracker_2, advanced_circuit, brass_pipe, aluminium_plate_bob, concrete_brick, steam_cracker_1)
steam_cracker_recipe(steam_cracker_3, processing_unit, titanium_pipe, titanium_plate_bob, reinforced_concrete_brick, steam_cracker_2)
steam_cracker_recipe(steam_cracker_4, advanced_processing_unit, tungsten_pipe, tungsten_plate_bob, reinforced_concrete_brick, steam_cracker_3)

local flare_stack = "angels-flare-stack"
data_item[flare_stack].subgroup = is_buildings_petrochem_others
data_item[flare_stack].order = a
data_item[flare_stack].stack_size = 32
data_item[flare_stack].weight = 31250
data_recipe[flare_stack].subgroup = is_buildings_petrochem_others
data_recipe[flare_stack].order = a
data_recipe[flare_stack].energy_required = 4
data_recipe[flare_stack].ingredients[1].amount = 4
data_recipe[flare_stack].ingredients[2].amount = 4
data_recipe[flare_stack].ingredients[3].amount = 4
data_recipe[flare_stack].ingredients[4].amount = 4
data_furnace[flare_stack].subgroup = is_buildings_petrochem_others
data_furnace[flare_stack].order = a
data_furnace[flare_stack].crafting_speed = 1
data_furnace[flare_stack].module_slots = 4
data_furnace[flare_stack].energy_usage = 22.5 .. kW
data_furnace[flare_stack].energy_source.emissions_per_minute.pollution = 16
data_furnace[flare_stack].energy_source.drain = 7.5 .. kW

bobmods.lib.recipe.update_recycling_recipe
({
    burner_ore_crusher,
    ore_crusher_1,
    ore_crusher_2,
    ore_crusher_3,
    ore_sorting_facility_1,
    ore_sorting_facility_2,
    ore_sorting_facility_3,
    ore_sorting_facility_4,
    ore_sorting_facility_5,
    ore_floatation_cell_1,
    ore_floatation_cell_2,
    ore_floatation_cell_3,
    ore_leaching_plant_1,
    ore_leaching_plant_2,
    ore_leaching_plant_3,
    ore_refinery_1,
    ore_refinery_2,
    powderizer_1,
    powderizer_2,
    powderizer_3,
    thermal_extractor_1,
    thermal_extractor_2,
    filtration_unit_1,
    filtration_unit_2,
    filtration_unit_3,
    crystallizer_1,
    crystallizer_2,
    crystallizer_3,
    ore_processing_machine_1,
    ore_processing_machine_2,
    ore_processing_machine_3,
    ore_processing_machine_4,
    pellet_press_1,
    pellet_press_2,
    pellet_press_3,
    pellet_press_4,
    powder_mixer_1,
    powder_mixer_2,
    powder_mixer_3,
    powder_mixer_4,
    blast_furnace_1,
    blast_furnace_2,
    blast_furnace_3,
    blast_furnace_4,
    chemical_furnace_1,
    chemical_furnace_2,
    chemical_furnace_3,
    chemical_furnace_4,
    induction_furnace_1,
    induction_furnace_2,
    induction_furnace_3,
    induction_furnace_4,
    casting_machine_1,
    casting_machine_2,
    casting_machine_3,
    casting_machine_4,
    strand_casting_machine_1,
    strand_casting_machine_2,
    strand_casting_machine_3,
    strand_casting_machine_4,
    seafloor_pump,
    offshore_pump,
    ground_water_pump,
    heavy_offshore_pump,
    hydro_plant_1,
    hydro_plant_2,
    hydro_plant_3,
    washing_plant_1,
    washing_plant_2,
    salination_plant_1,
    salination_plant_2,
    electric_boiler_1,
    electric_boiler_2,
    electric_boiler_3,
    cooling_tower,
    clarifier,
    electrolyser_1,
    electrolyser_2,
    electrolyser_3,
    electrolyser_4,
    air_filter_1,
    air_filter_2,
    air_filter_3,
    liquifier_1,
    liquifier_2,
    liquifier_3,
    liquifier_4,
    chemical_plant_1,
    chemical_plant_2,
    chemical_plant_3,
    chemical_plant_4,
    advanced_chemical_plant_1,
    advanced_chemical_plant_2,
    gas_refinery_1,
    gas_refinery_2,
    gas_refinery_3,
    gas_refinery_4,
    advanced_gas_refinery_1,
    advanced_gas_refinery_2,
    advanced_gas_refinery_3,
    advanced_gas_refinery_4,
    oil_refinery_1,
    oil_refinery_2,
    oil_refinery_3,
    oil_refinery_4,
    separator_1,
    separator_2,
    separator_3,
    separator_4,
    steam_cracker_1,
    steam_cracker_1,
    steam_cracker_1,
    steam_cracker_1,
    flare_stack,
})

local burner_reactor = "angels-burner-reactor"
data_item[burner_reactor] = nil
data_recipe[burner_reactor] = nil
data_reactor[burner_reactor] = nil
data_recipe["angels-burner-reactor-recycling"] = nil