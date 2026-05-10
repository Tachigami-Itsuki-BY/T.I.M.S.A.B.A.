data_recipe[module_case].energy_required = 8

local module_contact = "bob-module-contact"
data_recipe[module_contact].energy_required = 4
data_recipe[module_contact].results[1].amount = 4

local module_circuit_board = "bob-module-circuit-board"
data_recipe[module_circuit_board].energy_required = 8
data_recipe[module_circuit_board].ingredients[1].amount = 4
data_recipe[module_circuit_board].ingredients[3].amount = 4
data_recipe[module_circuit_board].ingredients[4].amount = 30

local basic_module_board = "bob-module-processor-board"
data_recipe[basic_module_board].energy_required = 8
data_recipe[basic_module_board].ingredients[5].amount = 30

local speed_circuit_board = "bob-speed-processor"
local efficiency_circuit_board = "bob-efficiency-processor"
local productivity_circuit_board = "bob-productivity-processor"
local pollution_clean_circuit_board = "bob-pollution-clean-processor"
local pollution_create_circuit_board = "bob-pollution-create-processor"
local quality_circuit_board = "bob-quality-processor"
local function module_boards(name, polished_1, polished_2)
    data_recipe[name].energy_required = 8
    data_recipe[name].ingredients =
    {
        {type = item, name = basic_electronic_components, amount = 16},
        {type = item, name = transistor, amount = 8},
        {type = item, name = polished_1, amount = 1},
        {type = item, name = solder, amount = 4},
        {type = item, name = polished_2, amount = 1},
        {type = item, name = basic_module_board, amount = 1}
    }
end
module_boards(speed_circuit_board, polished_sapphire_bob, crystal_splinter_blue)
module_boards(efficiency_circuit_board, polished_emerald_bob, crystal_splinter_green)
module_boards(productivity_circuit_board, polished_ruby_bob, crystal_splinter_red)
module_boards(pollution_clean_circuit_board, polished_amethyst_bob, crystal_splinter_harmonic)
module_boards(pollution_create_circuit_board, polished_topaz_bob, crystal_splinter_harmonic)
module_boards(quality_circuit_board, polished_diamond_bob, crystal_splinter_harmonic)

local advanced_module_board = "bob-module-processor-board-2"
data_recipe[advanced_module_board].energy_required = 8
data_recipe[advanced_module_board].ingredients =
{
    {type = item, name = glass_fiber_board, amount = 4},
    {type = item, name = copper_plate, amount = 4},
    {type = item, name = silver_plate_bob, amount = 4},
    {type = item, name = module_contact, amount = 16},
    {type = fluid, name = iron_chloride_III_solution_angels, amount = 60}
}

local advanced_speed_circuit_board = "bob-speed-processor-2"
local advanced_efficiency_circuit_board = "bob-efficiency-processor-2"
local advanced_productivity_circuit_board = "bob-productivity-processor-2"
local advanced_pollution_clean_circuit_board = "bob-pollution-clean-processor-2"
local advanced_pollution_create_circuit_board = "bob-pollution-create-processor-2"
local advanced_quality_circuit_board = "bob-quality-processor-2"
local function advanced_module_boards(name, polished_1, polished_2)
    data_recipe[name].energy_required = 8
    data_recipe[name].ingredients =
    {
        {type = item, name = transistor, amount = 16},
        {type = item, name = integrated_electronics, amount = 8},
        {type = item, name = polished_1, amount = 2},
        {type = item, name = solder, amount = 8},
        {type = item, name = polished_2, amount = 1},
        {type = item, name = advanced_module_board, amount = 1}
    }
end
advanced_module_boards(advanced_speed_circuit_board, polished_sapphire_bob, crystal_shard_blue)
advanced_module_boards(advanced_efficiency_circuit_board, polished_emerald_bob, crystal_shard_green)
advanced_module_boards(advanced_productivity_circuit_board, polished_ruby_bob, crystal_shard_red)
advanced_module_boards(advanced_pollution_clean_circuit_board, polished_amethyst_bob, crystal_shard_harmonic)
advanced_module_boards(advanced_pollution_create_circuit_board, polished_topaz_bob, crystal_shard_harmonic)
advanced_module_boards(advanced_quality_circuit_board, polished_diamond_bob, crystal_shard_harmonic)

local processor_module_board = "bob-module-processor-board-3"
data_recipe[processor_module_board].energy_required = 8
data_recipe[processor_module_board].ingredients[4].amount = 60

local processor_speed_circuit_board = "bob-speed-processor-3"
local processor_efficiency_circuit_board = "bob-efficiency-processor-3"
local processor_productivity_circuit_board = "bob-productivity-processor-3"
local processor_pollution_clean_circuit_board = "bob-pollution-clean-processor-3"
local processor_pollution_create_circuit_board = "bob-pollution-create-processor-3"
local processor_quality_circuit_board = "bob-quality-processor-3"
local function processor_module_boards(name, polished_1, polished_2)
    data_recipe[name].energy_required = 8
    data_recipe[name].ingredients =
    {
        {type = item, name = integrated_electronics, amount = 16},
        {type = item, name = processing_electronics, amount = 8},
        {type = item, name = polished_1, amount = 4},
        {type = item, name = solder, amount = 16},
        {type = item, name = polished_2, amount = 1},
        {type = item, name = processor_module_board, amount = 1}
    }
end
processor_module_boards(processor_speed_circuit_board, polished_sapphire_bob, crystal_full_blue)
processor_module_boards(processor_efficiency_circuit_board, polished_emerald_bob, crystal_full_green)
processor_module_boards(processor_productivity_circuit_board, polished_ruby_bob, crystal_full_red)
processor_module_boards(processor_pollution_clean_circuit_board, polished_amethyst_bob, crystal_full_harmonic)
processor_module_boards(processor_pollution_create_circuit_board, polished_topaz_bob, crystal_full_harmonic)
processor_module_boards(processor_quality_circuit_board, polished_diamond_bob, crystal_full_harmonic)

local function module_tier_1(name)
    data_recipe[name].energy_required = 8
    data_recipe[name].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 8},
        {type = item, name = module_case, amount = 1},
        {type = item, name = module_contact, amount = 4},
        {type = item, name = module_circuit_board, amount = 1}
    }
end
module_tier_1(speed_module_1)
module_tier_1(efficiency_module_1)
module_tier_1(productivity_module_1)
module_tier_1(pollution_clean_module_1)
module_tier_1(pollution_create_module_1)
module_tier_1(quality_module_1)

local function module_tier_2(name, circuit_board, module)
    data_recipe[name].energy_required = 8
    data_recipe[name].ingredients =
    {
        {type = item, name = advanced_circuit, amount = 8},
        {type = item, name = circuit_board, amount = 4},
        {type = item, name = module, amount = 1}
    }
end
module_tier_2(speed_module_2, speed_circuit_board, speed_module_1)
module_tier_2(efficiency_module_2, efficiency_circuit_board, efficiency_module_1)
module_tier_2(productivity_module_2, productivity_circuit_board, productivity_module_1)
module_tier_2(pollution_clean_module_2, pollution_clean_circuit_board, pollution_clean_module_1)
module_tier_2(pollution_create_module_2, pollution_create_circuit_board, pollution_create_module_1)
module_tier_2(quality_module_2, quality_circuit_board, quality_module_1)

local function module_tier_3(name, circuit_board, module)
    data_recipe[name].energy_required = 16
    data_recipe[name].ingredients =
    {
        {type = item, name = processing_unit, amount = 8},
        {type = item, name = circuit_board, amount = 4},
        {type = item, name = module, amount = 1}
    }
end
module_tier_3(speed_module_3, advanced_speed_circuit_board, speed_module_2)
module_tier_3(efficiency_module_3, advanced_efficiency_circuit_board, efficiency_module_2)
module_tier_3(productivity_module_3, advanced_productivity_circuit_board, productivity_module_2)
module_tier_3(pollution_clean_module_3, advanced_pollution_clean_circuit_board, pollution_clean_module_2)
module_tier_3(pollution_create_module_3, advanced_pollution_create_circuit_board, pollution_create_module_2)
module_tier_3(quality_module_3, advanced_quality_circuit_board, quality_module_2)

local function module_tier_4(name, circuit_board, module)
    data_recipe[name].energy_required = 32
    data_recipe[name].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = circuit_board, amount = 4},
        {type = item, name = module, amount = 1}
    }
end
module_tier_4(speed_module_4, processor_speed_circuit_board, speed_module_3)
module_tier_4(efficiency_module_4, processor_efficiency_circuit_board, efficiency_module_3)
module_tier_4(productivity_module_4, processor_productivity_circuit_board, productivity_module_3)
module_tier_4(pollution_clean_module_4, processor_pollution_clean_circuit_board, pollution_clean_module_3)
module_tier_4(pollution_create_module_4, processor_pollution_create_circuit_board, pollution_create_module_3)
module_tier_4(quality_module_4, processor_quality_circuit_board, quality_module_3)

local function module_tier_5(name, circuit_board, module)
    data_recipe[name].energy_required = 64
    data_recipe[name].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 8},
        {type = item, name = advanced_circuit, amount = 8},
        {type = item, name = processing_unit, amount = 8},
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = circuit_board, amount = 8},
        {type = item, name = module, amount = 1}
    }
end
module_tier_5(speed_module_5, processor_speed_circuit_board, speed_module_4)
module_tier_5(efficiency_module_5, processor_efficiency_circuit_board, efficiency_module_4)
module_tier_5(productivity_module_5, processor_productivity_circuit_board, productivity_module_4)
module_tier_5(pollution_clean_module_5, processor_pollution_clean_circuit_board, pollution_clean_module_4)
module_tier_5(pollution_create_module_5, processor_pollution_create_circuit_board, pollution_create_module_4)
module_tier_5(quality_module_5, processor_quality_circuit_board, quality_module_4)

data_recipe[agricultural_module_1].energy_required = 8
data_recipe[agricultural_module_1].ingredients =
{
    {type = item, name = solder, amount = 4},
    {type = item, name = bio_token, amount = 4},
    {type = item, name = productivity_module_1, amount = 1},
    {type = item, name = pollution_create_module_1, amount = 1}
}

data_recipe[agricultural_module_2].energy_required = 8
data_recipe[agricultural_module_2].ingredients =
{
    {type = item, name = solder, amount = 8},
    {type = item, name = bio_token, amount = 8},
    {type = item, name = productivity_module_2, amount = 1},
    {type = item, name = pollution_create_module_2, amount = 1},
    {type = item, name = agricultural_module_1, amount = 1}
}

data_recipe[agricultural_module_3].energy_required = 16
data_recipe[agricultural_module_3].ingredients =
{
    {type = item, name = solder, amount = 16},
    {type = item, name = bio_token, amount = 16},
    {type = item, name = productivity_module_3, amount = 1},
    {type = item, name = pollution_create_module_3, amount = 1},
    {type = item, name = agricultural_module_2, amount = 1}
}

data_recipe[agricultural_module_4].energy_required = 32
data_recipe[agricultural_module_4].ingredients =
{
    {type = item, name = solder, amount = 32},
    {type = item, name = bio_token, amount = 32},
    {type = item, name = productivity_module_4, amount = 1},
    {type = item, name = pollution_create_module_4, amount = 1},
    {type = item, name = agricultural_module_3, amount = 1}
}

data_recipe[agricultural_module_5].energy_required = 64
data_recipe[agricultural_module_5].ingredients =
{
    {type = item, name = solder, amount = 64},
    {type = item, name = bio_token, amount = 64},
    {type = item, name = productivity_module_5, amount = 1},
    {type = item, name = pollution_create_module_5, amount = 1},
    {type = item, name = agricultural_module_4, amount = 1}
}

local beacon_1 = "beacon"
data_item[beacon_1].stack_size = 32
data_item[beacon_1].weight = 31250
data_recipe[beacon_1].energy_required = 16
data_recipe[beacon_1].ingredients[1].amount = 16
data_recipe[beacon_1].ingredients[2].amount = 16
data_recipe[beacon_1].ingredients[3].amount = 8
data_recipe[beacon_1].ingredients[4].amount = 8

local beacon_2 = "bob-beacon-2"
data_item[beacon_2].stack_size = 32
data_item[beacon_2].weight = 31250
data_recipe[beacon_2].energy_required = 16
data_recipe[beacon_2].ingredients =
{
    {type = item, name = electronic_circuit, amount = 16},
    {type = item, name = advanced_circuit, amount = 16},
    {type = item, name = processing_unit, amount = 16},
    {type = item, name = tin_cable, amount = 8},
    {type = item, name = aluminium_plate_bob, amount = 8},
    {type = item, name = crystal_shard_harmonic, amount = 1},
    {type = item, name = beacon_1, amount = 1}
}

local beacon_3 = "bob-beacon-3"
data_item[beacon_3].stack_size = 32
data_item[beacon_3].weight = 31250
data_recipe[beacon_3].energy_required = 16
data_recipe[beacon_3].ingredients =
{
    {type = item, name = advanced_circuit, amount = 16},
    {type = item, name = processing_unit, amount = 16},
    {type = item, name = advanced_processing_unit, amount = 16},
    {type = item, name = insulated_cable, amount = 8},
    {type = item, name = titanium_plate_bob, amount = 8},
    {type = item, name = gold_plate_bob, amount = 8},
    {type = item, name = crystal_full_harmonic, amount = 1},
    {type = item, name = beacon_2, amount = 1}
}

bobmods.lib.recipe.update_recycling_recipe
({
    module_contact,
    module_circuit_board,
    basic_module_board,
    speed_circuit_board,
    efficiency_circuit_board,
    productivity_circuit_board,
    pollution_clean_circuit_board,
    pollution_create_circuit_board,
    quality_circuit_board,
    advanced_speed_circuit_board,
    advanced_efficiency_circuit_board,
    advanced_productivity_circuit_board,
    advanced_pollution_clean_circuit_board,
    advanced_pollution_create_circuit_board,
    advanced_quality_circuit_board,
    processor_speed_circuit_board,
    processor_efficiency_circuit_board,
    processor_productivity_circuit_board,
    processor_pollution_clean_circuit_board,
    processor_pollution_create_circuit_board,
    processor_quality_circuit_board,
    speed_module_1,
    efficiency_module_1,
    productivity_module_1,
    pollution_clean_module_1,
    pollution_create_module_1,
    quality_module_1,
    speed_module_2,
    efficiency_module_2,
    productivity_module_2,
    pollution_clean_module_2,
    pollution_create_module_2,
    quality_module_2,
    speed_module_3,
    efficiency_module_3,
    productivity_module_3,
    pollution_clean_module_3,
    pollution_create_module_3,
    quality_module_3,
    speed_module_4,
    efficiency_module_4,
    productivity_module_4,
    pollution_clean_module_4,
    pollution_create_module_4,
    quality_module_4,
    speed_module_5,
    efficiency_module_5,
    productivity_module_5,
    pollution_clean_module_5,
    pollution_create_module_5,
    quality_module_5,
    agricultural_module_1,
    agricultural_module_2,
    agricultural_module_3,
    agricultural_module_4,
    agricultural_module_5,
    beacon_1,
    beacon_2,
    beacon_3
})