local kW = "kW"
local drain = 15
local kJ = "kJ"
local repair_packs =
{
    {name = "repair-pack", durability = 300},
    {name = "bob-repair-pack-2", durability = 600},
    {name = "bob-repair-pack-3", durability = 1200},
    {name = "bob-repair-pack-4", durability = 2400},
    {name = "bob-repair-pack-5", durability = 4800}
}
for _, TOOL in pairs(repair_packs) do
    data_repair_tool[TOOL.name].stack_size = 200
    data_repair_tool[TOOL.name].durability = TOOL.durability
end

local boilers =
{
    {name = boiler_1, pollution = 4, order = a},
    {name = boiler_2, pollution = 8, order = b},
    {name = boiler_3, pollution = 12, order = c},
    {name = boiler_4, pollution = 16, order = d},
    {name = boiler_5, pollution = 20, order = e}
}
for _, BUILD in pairs(boilers) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 1
    data_boiler[BUILD.name].order = BUILD.order
    data_boiler[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.pollution
    data_boiler[BUILD.name].energy_source.fuel_categories = {base_fuel, advanced_fuel}
end
local function boiler_recipe(name, pipe, boiler, plate)
    data_recipe[name].ingredients =
    {
        {type = item, name = pipe, amount = 4},
        {type = item, name = boiler, amount = 1},
        {type = item, name = plate, amount = 4},
    }
end
table.insert(data_recipe[boiler_1].ingredients, {type = item, name = iron_plate, amount = 4})
boiler_recipe(boiler_2, steel_pipe, boiler_1, steel_plate)
boiler_recipe(boiler_3, ceramic_pipe, boiler_2, invar_plate_bob)
boiler_recipe(boiler_4, tungsten_pipe, boiler_3, tungsten_plate_bob)
boiler_recipe(boiler_5, copper_tungsten_pipe, boiler_4, copper_tungsten_plate_bob)

local steam_engines =
{
    {name = steam_engine_1, order = a},
    {name = steam_engine_2, order = b},
    {name = steam_engine_3, order = c},
    {name = steam_engine_4, order = d},
    {name = steam_engine_5, order = e}
}
for _, BUILD in pairs(steam_engines) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 1
    data_generator[BUILD.name].order = BUILD.order
end
local function steam_engine_recipe(name, gear_wheel, bearing, pipe, steam_engine, plate)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 8},
        {type = item, name = pipe, amount = 4},
        {type = item, name = plate, amount = 4},
    }
    if steam_engine then
        table.insert(ingredients, {type = item, name = steam_engine, amount = 1})
    end
    if bearing then
        table.insert(ingredients, {type = item, name = bearing, amount = 8})
    end
    data_recipe[name].ingredients = ingredients
end
steam_engine_recipe(steam_engine_1, iron_gear_wheel, nil, iron_pipe, nil, iron_plate)
steam_engine_recipe(steam_engine_2, steel_gear_wheel, steel_bearing, steel_pipe, steam_engine_1, steel_plate)
steam_engine_recipe(steam_engine_3, brass_gear_wheel, brass_bearing, brass_pipe, steam_engine_2, brass_plate_bob)
steam_engine_recipe(steam_engine_4, titanium_gear_wheel, titanium_bearing, titanium_pipe, steam_engine_3, titanium_plate_bob)
steam_engine_recipe(steam_engine_5, nitinol_gear_wheel, nitinol_bearing, nitinol_pipe, steam_engine_4, nitinol_plate_bob)

local steam_turbines =
{
    {name = steam_turbine_1, order = a},
    {name = steam_turbine_2, order = b},
    {name = steam_turbine_3, order = c}
}
for _, BUILD in pairs(steam_turbines) do
    data_item[BUILD.name].subgroup = is_energy_steam_turbine
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_energy_steam_turbine
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 1
    data_generator[BUILD.name].subgroup = is_energy_steam_turbine
    data_generator[BUILD.name].order = BUILD.order
end
local function steam_turbine_recipe(name, gear_wheel, bearing, circuit, pipe, turbine, plate)
    data_recipe[name].ingredients =
    {
        {type = item, name = gear_wheel, amount = 8},
        {type = item, name = bearing, amount = 8},
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 8},
        {type = item, name = turbine, amount = 1},
        {type = item, name = plate, amount = 32}
    }
end
steam_turbine_recipe(steam_turbine_1, ceramic_gear_wheel, ceramic_bearing, advanced_circuit, ceramic_pipe, steam_engine_3, aluminium_plate_bob)
steam_turbine_recipe(steam_turbine_2, titanium_gear_wheel, titanium_bearing, processing_unit, titanium_pipe, steam_turbine_1, titanium_plate_bob)
steam_turbine_recipe(steam_turbine_3, nitinol_gear_wheel, nitinol_bearing, advanced_processing_unit, nitinol_pipe, steam_turbine_2, nitinol_plate_bob)

local fluid_generators =
{
    {name = fluid_generator_1,   max_power_output = 1800, pollution = 8,   fluid_usage_per_tick = 1},
    {name = fluid_generator_2,   max_power_output = 3600, pollution = 16,  fluid_usage_per_tick = 1},
    {name = fluid_generator_3,   max_power_output = 5400, pollution = 24,  fluid_usage_per_tick = 1},
    {name = hydrazine_generator, max_power_output = 7200, pollution = nil, fluid_usage_per_tick = 0.25}
}
for _, BUILD in pairs(fluid_generators) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 1
    data_generator[BUILD.name].effectivity = nil
    data_generator[BUILD.name].fluid_usage_per_tick = BUILD.fluid_usage_per_tick
    data_generator[BUILD.name].energy_source.emissions_per_minute.pollution = BUILD.pollution
    data_generator[BUILD.name].max_power_output = BUILD.max_power_output .. kW
end
data_generator[hydrazine_generator].fluid_box.filter = hydrazine_angels
local function fluid_generator_recipe(name, gear_wheel, bearing, circuit, pipe, fluid_generator, plate_1, plate_2)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 8},
        {type = item, name = bearing, amount = 8},
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 8},
        {type = item, name = plate_1, amount = 8},
        {type = item, name = plate_2, amount = 8},
    }
    if fluid_generator then
        table.insert(ingredients, {type = item, name = fluid_generator, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
fluid_generator_recipe(fluid_generator_1, steel_gear_wheel, steel_bearing, electronic_circuit, bronze_pipe, nil, steel_plate, bronze_plate_bob)
fluid_generator_recipe(fluid_generator_2, ceramic_gear_wheel, ceramic_bearing, advanced_circuit, ceramic_pipe, fluid_generator_1, aluminium_plate_bob, invar_plate_bob)
fluid_generator_recipe(fluid_generator_3, titanium_gear_wheel, titanium_bearing, processing_unit, tungsten_pipe, fluid_generator_2, titanium_plate_bob, tungsten_plate_bob)
fluid_generator_recipe(hydrazine_generator, nitinol_gear_wheel, nitinol_bearing, advanced_processing_unit, copper_tungsten_pipe, fluid_generator_3, nitinol_plate_bob, copper_tungsten_plate_bob)

local solar_panels_small =
{
    {name = solar_panel_small_1, production = 30, order = a},
    {name = solar_panel_small_2, production = 60, order = b},
    {name = solar_panel_small_3, production = 90, order = c}
}
for _, BUILD in pairs(solar_panels_small) do
    data_item[BUILD.name].subgroup = is_solar_panel_small
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_solar_panel_small
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 1
    data_solar_panel[BUILD.name].subgroup = is_solar_panel_small
    data_solar_panel[BUILD.name].order = BUILD.order
    data_solar_panel[BUILD.name].production = BUILD.production .. kW
end
local function solar_panel_s_recipe(name, circuit, plate_1, cable, glass, panel, silicon, plate_2)
    local ingredients =
    {
        {type = item, name = circuit, amount = 8},
        {type = item, name = plate_1, amount = 4},
        {type = item, name = cable, amount = 4},
        {type = item, name = silicon, amount = 4},
        {type = item, name = plate_2, amount = 8},
    }
    if glass then
        table.insert(ingredients, {type = item, name = glass, amount = 8})
    end
    if panel then
        table.insert(ingredients, {type = item, name = panel, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
solar_panel_s_recipe(solar_panel_small_1, electronic_circuit, steel_plate, copper_cable, glass_bob, nil, silicon_wafer, copper_plate)
solar_panel_s_recipe(solar_panel_small_2, advanced_circuit, aluminium_plate_bob, silver_cable, nil, solar_panel_small_1, silicon_wafer, silver_plate_bob)
solar_panel_s_recipe(solar_panel_small_3, processing_unit, titanium_plate_bob, gold_cable, nil, solar_panel_small_2, silicon_wafer, gold_plate_bob)

local solar_panels =
{
    {name = solar_panel_1, production = 60, order = a},
    {name = solar_panel_2, production = 120, order = b},
    {name = solar_panel_3, production = 180, order = c}
}
for _, BUILD in pairs(solar_panels) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 2
    data_solar_panel[BUILD.name].order = BUILD.order
    data_solar_panel[BUILD.name].production = BUILD.production .. kW
end
local function solar_panel_m_recipe(name, circuit, plate_1, cable, glass, panel, silicon, plate_2)
    local ingredients =
    {
        {type = item, name = circuit, amount = 16},
        {type = item, name = plate_1, amount = 8},
        {type = item, name = cable, amount = 8},
        {type = item, name = silicon, amount = 8},
        {type = item, name = plate_2, amount = 16},
    }
    if glass then
        table.insert(ingredients, {type = item, name = glass, amount = 16})
    end
    if panel then
        table.insert(ingredients, {type = item, name = panel, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
solar_panel_m_recipe(solar_panel_1, electronic_circuit, steel_plate, copper_cable, glass_bob, nil, silicon_wafer, copper_plate)
solar_panel_m_recipe(solar_panel_2, advanced_circuit, aluminium_plate_bob, silver_cable, nil, solar_panel_1, silicon_wafer, silver_plate_bob)
solar_panel_m_recipe(solar_panel_3, processing_unit, titanium_plate_bob, gold_cable, nil, solar_panel_2, silicon_wafer, gold_plate_bob)

local solar_panels_large =
{
    {name = solar_panel_large_1, production = 120, order = a},
    {name = solar_panel_large_2, production = 240, order = b},
    {name = solar_panel_large_3, production = 360, order = c}
}
for _, BUILD in pairs(solar_panels_large) do
    data_item[BUILD.name].subgroup = is_solar_panel_large
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = is_solar_panel_large
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 4
    data_solar_panel[BUILD.name].subgroup = is_solar_panel_large
    data_solar_panel[BUILD.name].order = BUILD.order
    data_solar_panel[BUILD.name].production = BUILD.production .. kW
end
local function solar_panel_l_recipe(name, circuit, plate_1, cable, glass, panel, silicon, plate_2)
    local ingredients =
    {
        {type = item, name = circuit, amount = 32},
        {type = item, name = plate_1, amount = 16},
        {type = item, name = cable, amount = 16},
        {type = item, name = silicon, amount = 16},
        {type = item, name = plate_2, amount = 32}
    }
    if glass then
        table.insert(ingredients, {type = item, name = glass, amount = 32})
    end
    if panel then
        table.insert(ingredients, {type = item, name = panel, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
solar_panel_l_recipe(solar_panel_large_1, electronic_circuit, steel_plate, copper_cable, glass_bob, nil, silicon_wafer, copper_plate)
solar_panel_l_recipe(solar_panel_large_2, advanced_circuit, aluminium_plate_bob, silver_cable, nil, solar_panel_large_1, silicon_wafer, silver_plate_bob)
solar_panel_l_recipe(solar_panel_large_3, processing_unit, titanium_plate_bob, gold_cable, nil, solar_panel_large_2, silicon_wafer, gold_plate_bob)

local accumulators =
{
    {name = accumulator_1, buffer_capacity = 9600,  flow_limit = 600, order = a},
    {name = accumulator_2, buffer_capacity = 19200, flow_limit = 1200, order = b},
    {name = accumulator_3, buffer_capacity = 28800, flow_limit = 1800, order = c}
}
for _, BUILD in pairs(accumulators) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 1
    data_accumulator[BUILD.name].energy_source.buffer_capacity = BUILD.buffer_capacity .. kJ
    data_accumulator[BUILD.name].energy_source.input_flow_limit = BUILD.flow_limit .. kW
    data_accumulator[BUILD.name].energy_source.output_flow_limit = BUILD.flow_limit .. kW
end
local function accumulator_recipe(name, battery, circuit, accumulator, plate)
    local ingredients =
    {
        {type = item, name = battery, amount = 8},
        {type = item, name = circuit, amount = 2},
        {type = item, name = plate, amount = 2}
    }
    if accumulator then
        table.insert(ingredients, {type = item, name = accumulator, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
accumulator_recipe(accumulator_1, battery_lead_acid, electronic_circuit, nil, iron_plate)
accumulator_recipe(accumulator_2, battery_lithium_ion, advanced_circuit, accumulator_1, steel_plate)
accumulator_recipe(accumulator_3, battery_silver_zinc, processing_unit, accumulator_2, titanium_plate_bob)

local mining_machines =
{
    {name = electric_mining_drill_1, subgroup = is_extraction_machine_mining, order = a, mining_speed = 1, energy_usage = 120},
    {name = electric_mining_drill_2, subgroup = is_extraction_machine_mining, order = b, mining_speed = 2, energy_usage = 240},
    {name = electric_mining_drill_3, subgroup = is_extraction_machine_mining, order = c, mining_speed = 3, energy_usage = 360},
    {name = electric_mining_drill_4, subgroup = is_extraction_machine_mining, order = d, mining_speed = 4, energy_usage = 480},
    {name = electric_mining_drill_5, subgroup = is_extraction_machine_mining, order = e, mining_speed = 5, energy_usage = 600},

    {name = pumpjack_1, subgroup = is_extraction_machine_pumpjack, order = a, mining_speed = 1, energy_usage = 120},
    {name = pumpjack_2, subgroup = is_extraction_machine_pumpjack, order = b, mining_speed = 2, energy_usage = 240},
    {name = pumpjack_3, subgroup = is_extraction_machine_pumpjack, order = c, mining_speed = 3, energy_usage = 360},
    {name = pumpjack_4, subgroup = is_extraction_machine_pumpjack, order = d, mining_speed = 4, energy_usage = 480}
}
for _, BUILD in pairs(mining_machines) do
    data_item[BUILD.name].subgroup = BUILD.subgroup
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].subgroup = BUILD.subgroup
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 1
    data_mining_drill[BUILD.name].subgroup = BUILD.subgroup
    data_mining_drill[BUILD.name].order = BUILD.order
    data_mining_drill[BUILD.name].energy_usage = BUILD.energy_usage .. kW
    data_mining_drill[BUILD.name].module_slots = (BUILD.mining_speed * 2)
    data_mining_drill[BUILD.name].mining_speed = BUILD.mining_speed
    data_mining_drill[BUILD.name].energy_source.emissions_per_minute = {pollution = BUILD.mining_speed}
    if BUILD.subgroup == is_extraction_machine_mining then
        data_mining_drill[BUILD.name].graphics_set.animation.animation_speed = BUILD.mining_speed
    end
end
data_item[burner_mining_drill].stack_size = 32
data_item[burner_mining_drill].weight = 31250
data_recipe[burner_mining_drill].ingredients =
{
    {type = item, name = iron_gear_wheel, amount = 4},
    {type = item, name = stone_furnace, amount = 1},
    {type = item, name = iron_plate, amount = 4}
}
data_mining_drill[burner_mining_drill].energy_usage = 225 .. kW
data_mining_drill[burner_mining_drill].energy_source.emissions_per_minute.pollution = 8
data_mining_drill[burner_mining_drill].energy_source.fuel_categories = {base_fuel}
data_mining_drill[burner_mining_drill].mining_speed = 0.5
data_mining_drill[pumpjack_1].max_health = 100
local function mining_drill_recipe(name, gear_wheel, circuit, mining_drill, plate)
    data_recipe[name].ingredients =
    {
        {type = item, name = gear_wheel, amount = 8},
        {type = item, name = circuit, amount = 4},
        {type = item, name = mining_drill, amount = 1},
        {type = item, name = plate, amount = 8}
    }
end
mining_drill_recipe(electric_mining_drill_1, iron_gear_wheel, basic_circuit_board, burner_mining_drill, iron_plate)
mining_drill_recipe(electric_mining_drill_2, steel_gear_wheel, electronic_circuit, electric_mining_drill_1, steel_plate)
mining_drill_recipe(electric_mining_drill_3, brass_gear_wheel, advanced_circuit, electric_mining_drill_2, brass_plate_bob)
mining_drill_recipe(electric_mining_drill_4, titanium_gear_wheel, processing_unit, electric_mining_drill_3, titanium_plate_bob)
mining_drill_recipe(electric_mining_drill_5, nitinol_gear_wheel, advanced_processing_unit, electric_mining_drill_4, nitinol_plate_bob)
data_recipe[electric_mining_drill_1].ingredients[1].amount = 4
data_recipe[electric_mining_drill_1].ingredients[4].amount = 4
local function pumpjack_recipe(name, gear_wheel, circuit, pipe, pumpjack, plate)
    data_recipe[name].ingredients =
    {
        {type = item, name = gear_wheel, amount = 8},
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 4},
        {type = item, name = pumpjack, amount = 1},
        {type = item, name = plate, amount = 4}
    }
end
pumpjack_recipe(pumpjack_1, steel_gear_wheel, electronic_circuit, steel_pipe, burner_mining_drill, steel_plate)
pumpjack_recipe(pumpjack_2, brass_gear_wheel, advanced_circuit, brass_pipe, pumpjack_1, brass_plate_bob)
pumpjack_recipe(pumpjack_3, titanium_gear_wheel, processing_unit, titanium_pipe, pumpjack_2, titanium_plate_bob)
pumpjack_recipe(pumpjack_4, nitinol_gear_wheel, advanced_processing_unit, nitinol_pipe, pumpjack_3, nitinol_plate_bob)

if data_item[area_mining_drill_1] then
    local area_mining_drills =
    {
        {name = area_mining_drill_1, subgroup = is_extraction_machine_mining, order = g, mining_speed = 1, energy_usage = 240},
        {name = area_mining_drill_2, subgroup = is_extraction_machine_mining, order = h, mining_speed = 2, energy_usage = 480},
        {name = area_mining_drill_3, subgroup = is_extraction_machine_mining, order = i, mining_speed = 3, energy_usage = 720},
        {name = area_mining_drill_4, subgroup = is_extraction_machine_mining, order = j, mining_speed = 4, energy_usage = 960}
    }
    for _, BUILD in pairs(area_mining_drills) do
        data_item[BUILD.name].subgroup = BUILD.subgroup
        data_item[BUILD.name].order = BUILD.order
        data_item[BUILD.name].stack_size = 32
        data_item[BUILD.name].weight = 31250
        data_recipe[BUILD.name].subgroup = BUILD.subgroup
        data_recipe[BUILD.name].order = BUILD.order
        data_recipe[BUILD.name].energy_required = 1
        data_mining_drill[BUILD.name].subgroup = BUILD.subgroup
        data_mining_drill[BUILD.name].order = BUILD.order
        data_mining_drill[BUILD.name].energy_usage = BUILD.energy_usage .. kW
        data_mining_drill[BUILD.name].module_slots = (BUILD.mining_speed * 2)
        data_mining_drill[BUILD.name].mining_speed = BUILD.mining_speed
        data_mining_drill[BUILD.name].energy_source.emissions_per_minute = {pollution = (BUILD.mining_speed * 2)}
        data_mining_drill[BUILD.name].graphics_set.animation.animation_speed = BUILD.mining_speed
        data_mining_drill[BUILD.name].resource_searching_radius = 4.49
    end
    local function area_mining_drill_recipe(name, gear_wheel, circuit, mining_drill, plate)
        data_recipe[name].ingredients =
        {
            {type = item, name = gear_wheel, amount = 16},
            {type = item, name = circuit, amount = 4},
            {type = item, name = mining_drill, amount = 1},
            {type = item, name = plate, amount = 16}
        }
    end
    area_mining_drill_recipe(area_mining_drill_1, steel_gear_wheel, electronic_circuit, electric_mining_drill_1, steel_plate)
    area_mining_drill_recipe(area_mining_drill_2, brass_gear_wheel, advanced_circuit, area_mining_drill_1, brass_plate_bob)
    area_mining_drill_recipe(area_mining_drill_3, titanium_gear_wheel, processing_unit, area_mining_drill_2, titanium_plate_bob)
    area_mining_drill_recipe(area_mining_drill_4, nitinol_gear_wheel, advanced_processing_unit, area_mining_drill_3, nitinol_plate_bob)
    bobmods.lib.recipe.update_recycling_recipe({area_mining_drill_1, area_mining_drill_2, area_mining_drill_3, area_mining_drill_4})
end

local ractors =
{
    uranium_reactor,
    thorium_reactor,
    deuterium_reactor
}
for _, name in pairs(ractors) do
    data_item[name].stack_size = 4
    data_item[name].weight = 250000
    data_recipe[name].energy_required = 64
    data_reactor[name].neighbour_bonus = 1.5
end
data_reactor[uranium_reactor].consumption = (21600 * 2) .. kW
data_reactor[uranium_reactor].heat_buffer.specific_heat = 5400 .. kJ
data_reactor[uranium_reactor].heat_buffer.max_transfer = 5400000 .. kW
data_reactor[uranium_reactor].heat_buffer.minimum_glow_temperature = 250
data_reactor[uranium_reactor].energy_source.fuel_categories = {nuclear_fuel_T1}
data_reactor[thorium_reactor].consumption = (28800 * 2) .. kW
data_reactor[thorium_reactor].heat_buffer.specific_heat = 7200 .. kJ
data_reactor[thorium_reactor].heat_buffer.max_transfer = 7200000 .. kW
data_reactor[thorium_reactor].heat_buffer.minimum_glow_temperature = 250
data_reactor[thorium_reactor].energy_source.fuel_categories = {nuclear_fuel_T2}
data_reactor[deuterium_reactor].consumption = (36000 * 2) .. kW
data_reactor[deuterium_reactor].heat_buffer.specific_heat = 9000 .. kJ
data_reactor[deuterium_reactor].heat_buffer.max_transfer = 9000000 .. kW
data_reactor[deuterium_reactor].heat_buffer.minimum_glow_temperature = 250
data_reactor[deuterium_reactor].energy_source.fuel_categories = {nuclear_fuel_T3}
--consumption = (43200 * 2) .. kW
--heat_buffer.specific_heat = 10800 .. kJ
--heat_buffer.max_transfer = 10800000 .. kW
--heat_buffer.minimum_glow_temperature = 250
--energy_source.fuel_categories = {nuclear_fuel_T4}
--fuel_value = (11059200 * 4 * 2) .. kJ
local function nuclear_reactor_recipe(name, circuit, heat_pipe, material, reactor, plate_1, plate_2)
    local ingredients =
    {
        {type = item, name = circuit, amount = 512},
        {type = item, name = heat_pipe, amount = 32},
        {type = item, name = plate_1, amount = 256},
        {type = item, name = plate_2, amount = 256}
    }
    if material then
        table.insert(ingredients, {type = item, name = material, amount = 512})
    end
    if reactor then
        table.insert(ingredients, {type = item, name = reactor, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
nuclear_reactor_recipe(uranium_reactor, advanced_circuit, heat_pipe_1, concrete, nil, lead_plate_bob, steel_plate)
nuclear_reactor_recipe(thorium_reactor, processing_unit, heat_pipe_2, nil, uranium_reactor, lead_plate_bob, tungsten_plate_bob)
nuclear_reactor_recipe(deuterium_reactor, advanced_processing_unit, heat_pipe_3, nil, thorium_reactor, lead_plate_bob, tungsten_carbide_bob)

local heat_pipes =
{
    heat_pipe_1,
    heat_pipe_2,
    heat_pipe_3,
    heat_pipe_4
}
for _, name in pairs(heat_pipes) do
    data_item[name].stack_size = 200
    data_recipe[name].ingredients[1].amount = 1
    data_recipe[name].ingredients[2].amount = 2
end
data_heat_pipe[heat_pipe_1].localised_description = {"entity-description.heat-pipe-1"}
data_heat_pipe[heat_pipe_1].heat_buffer.max_temperature = 1000
data_heat_pipe[heat_pipe_1].heat_buffer.specific_heat = 1080 .. kJ
data_heat_pipe[heat_pipe_1].heat_buffer.max_transfer = 5400000 .. kW
data_heat_pipe[heat_pipe_1].heat_buffer.minimum_glow_temperature = 250
data_heat_pipe[heat_pipe_2].localised_description = {"entity-description.heat-pipe-2"}
data_heat_pipe[heat_pipe_2].heat_buffer.max_temperature = 1250
data_heat_pipe[heat_pipe_2].heat_buffer.specific_heat = 1440 .. kJ
data_heat_pipe[heat_pipe_2].heat_buffer.max_transfer = 7200000 .. kW
data_heat_pipe[heat_pipe_2].heat_buffer.minimum_glow_temperature = 250
data_heat_pipe[heat_pipe_3].localised_description = {"entity-description.heat-pipe-3"}
data_heat_pipe[heat_pipe_3].heat_buffer.max_temperature = 1500
data_heat_pipe[heat_pipe_3].heat_buffer.specific_heat = 1800 .. kJ
data_heat_pipe[heat_pipe_3].heat_buffer.max_transfer = 9000000 .. kW
data_heat_pipe[heat_pipe_3].heat_buffer.minimum_glow_temperature = 250
data_heat_pipe[heat_pipe_4].localised_description = {"entity-description.heat-pipe-4"}
data_heat_pipe[heat_pipe_4].heat_buffer.max_temperature = 2000
data_heat_pipe[heat_pipe_4].heat_buffer.specific_heat = 2160 .. kJ
data_heat_pipe[heat_pipe_4].heat_buffer.max_transfer = 10800000 .. kW
data_heat_pipe[heat_pipe_4].heat_buffer.minimum_glow_temperature = 250

local heat_exchangers =
{
    {name = heat_exchanger_1},
    {name = heat_exchanger_2},
    {name = heat_exchanger_3},
    {name = heat_exchanger_4}
}
for _, BUILD in pairs(heat_exchangers) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 1
end
data_boiler[heat_exchanger_1].target_temperature = 465
data_boiler[heat_exchanger_1].energy_consumption = 10800 .. kW
data_boiler[heat_exchanger_1].energy_source.max_temperature = 1000
data_boiler[heat_exchanger_1].energy_source.specific_heat = 540 .. kJ
data_boiler[heat_exchanger_1].energy_source.max_transfer = 5400000 .. kW
data_boiler[heat_exchanger_1].energy_source.min_working_temperature = 465
data_boiler[heat_exchanger_1].energy_source.minimum_glow_temperature = 250
data_boiler[heat_exchanger_2].target_temperature = 615
data_boiler[heat_exchanger_2].energy_consumption = 14400 .. kW
data_boiler[heat_exchanger_2].energy_source.max_temperature = 1250
data_boiler[heat_exchanger_2].energy_source.specific_heat = 720 .. kJ
data_boiler[heat_exchanger_2].energy_source.max_transfer = 7200000 .. kW
data_boiler[heat_exchanger_2].energy_source.min_working_temperature = 615
data_boiler[heat_exchanger_2].energy_source.minimum_glow_temperature = 250
data_boiler[heat_exchanger_3].target_temperature = 765
data_boiler[heat_exchanger_3].energy_consumption = 18000 .. kW
data_boiler[heat_exchanger_3].energy_source.max_temperature = 1500
data_boiler[heat_exchanger_3].energy_source.specific_heat = 900 .. kJ
data_boiler[heat_exchanger_3].energy_source.max_transfer = 9000000 .. kW
data_boiler[heat_exchanger_3].energy_source.min_working_temperature = 765
data_boiler[heat_exchanger_3].energy_source.minimum_glow_temperature = 250
data_boiler[heat_exchanger_4].target_temperature = 915
data_boiler[heat_exchanger_4].energy_consumption = 21600 .. kW
data_boiler[heat_exchanger_4].energy_source.max_temperature = 2000
data_boiler[heat_exchanger_4].energy_source.specific_heat = 1080 .. kJ
data_boiler[heat_exchanger_4].energy_source.max_transfer = 10800000 .. kW
data_boiler[heat_exchanger_4].energy_source.min_working_temperature = 915
data_boiler[heat_exchanger_4].energy_source.minimum_glow_temperature = 250
local function heat_exchanger_recipe(name, pipe, heat_pipe, heat_exchanger, plate)
    data_recipe[name].ingredients =
    {
        {type = item, name = pipe, amount = 4},
        {type = item, name = heat_pipe, amount = 4},
        {type = item, name = heat_exchanger, amount = 1},
        {type = item, name = plate, amount = 8}
    }
end
heat_exchanger_recipe(heat_exchanger_1, steel_pipe, heat_pipe_1, boiler_2, steel_plate)
heat_exchanger_recipe(heat_exchanger_2, brass_pipe, heat_pipe_2, heat_exchanger_1, invar_plate_bob)
heat_exchanger_recipe(heat_exchanger_3, ceramic_pipe, heat_pipe_3, heat_exchanger_2, tungsten_plate_bob)
heat_exchanger_recipe(heat_exchanger_4, copper_tungsten_pipe, heat_pipe_4, heat_exchanger_3, copper_tungsten_plate_bob)

local furnaces =
{
    {name = electric_furnace_1, crafting_speed = 3, energy_usage = 180, order = c},
    {name = electric_furnace_2, crafting_speed = 4, energy_usage = 240, order = d},
    {name = electric_furnace_3, crafting_speed = 5, energy_usage = 300, order = e},

    {name = electric_mixing_furnace_1, crafting_speed = 3, energy_usage = 180, order = c},
    {name = electric_mixing_furnace_2, crafting_speed = 4, energy_usage = 240, order = d},
    {name = electric_mixing_furnace_3, crafting_speed = 5, energy_usage = 300, order = e}
}
for _, BUILD in pairs(furnaces) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 1
    if data_furnace[BUILD.name] then
        data_furnace[BUILD.name].order = BUILD.order
        data_furnace[BUILD.name].crafting_speed = BUILD.crafting_speed
        data_furnace[BUILD.name].module_slots = BUILD.crafting_speed
        data_furnace[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
        data_furnace[BUILD.name].energy_source.emissions_per_minute = {pollution = 0}
        data_furnace[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
    end
    if data_assembling[BUILD.name] then
        data_assembling[BUILD.name].order = BUILD.order
        data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
        data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
        data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
        data_assembling[BUILD.name].energy_source.emissions_per_minute = {pollution = 0}
        data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
    end
end
data_item[stone_furnace].order = a
data_recipe[stone_furnace].order = a
data_furnace[stone_furnace].order = a
data_furnace[stone_furnace].energy_usage = 225 .. kW
data_furnace[stone_furnace].energy_source.fuel_categories = {base_fuel}
data_item[steel_furnace].order = b
data_recipe[steel_furnace].order = b
data_furnace[steel_furnace].order = b
data_furnace[steel_furnace].energy_usage = 450 .. kW
data_furnace[steel_furnace].energy_source.fuel_categories = {base_fuel}
data_item[stone_mixing_furnace].order = a
data_recipe[stone_mixing_furnace].order = a
data_assembling[stone_mixing_furnace].order = a
data_assembling[stone_mixing_furnace].energy_usage = 225 .. kW
data_assembling[stone_mixing_furnace].energy_source.fuel_categories = {base_fuel}
data_item[steel_mixing_furnace].order = b
data_recipe[steel_mixing_furnace].order = b
data_assembling[steel_mixing_furnace].order = b
data_assembling[steel_mixing_furnace].energy_usage = 450 .. kW
data_assembling[steel_mixing_furnace].energy_source.fuel_categories = {base_fuel}
local function furnace_recipe(name, circuit, furnace, plate_1, plate_2)
    local ingredients =
    {
        {type = item, name = furnace, amount = 1},
        {type = item, name = plate_1, amount = 8},
        {type = item, name = plate_2, amount = 4}
    }
    if circuit then
        table.insert(ingredients, {type = item, name = circuit, amount = 4})
    end
    data_recipe[name].ingredients = ingredients
end
data_recipe[stone_furnace].ingredients[1].amount = 4
furnace_recipe(steel_furnace, nil, stone_furnace, stone_brick, steel_plate)
furnace_recipe(electric_furnace_1, advanced_circuit, steel_furnace, steel_plate, brass_plate_bob)
furnace_recipe(electric_furnace_2, processing_unit,  electric_furnace_1, invar_plate_bob, tungsten_plate_bob)
furnace_recipe(electric_furnace_3, advanced_processing_unit, electric_furnace_2, tungsten_carbide_bob, copper_tungsten_plate_bob)
local function mixing_furnace_recipe(name, circuit, furnace, plate_1, plate_2)
    local ingredients =
    {
        {type = item, name = furnace, amount = 1},
        {type = item, name = plate_1, amount = 8},
        {type = item, name = plate_2, amount = 4}
    }
    if circuit then
        table.insert(ingredients, {type = item, name = circuit, amount = 8})
    end
    data_recipe[name].ingredients = ingredients
end
data_recipe[stone_mixing_furnace].ingredients = {{type = item, name = stone, amount = 4}}
mixing_furnace_recipe(steel_mixing_furnace, nil, stone_mixing_furnace, stone_brick, steel_plate)
mixing_furnace_recipe(electric_mixing_furnace_1, advanced_circuit, steel_mixing_furnace, steel_plate, brass_plate_bob)
mixing_furnace_recipe(electric_mixing_furnace_2, processing_unit, electric_mixing_furnace_1, invar_plate_bob, tungsten_plate_bob)
mixing_furnace_recipe(electric_mixing_furnace_3, advanced_processing_unit, electric_mixing_furnace_2, tungsten_carbide_bob, copper_tungsten_plate_bob)

local centrifuges =
{
    {name = centrifuge_1, crafting_speed = 1, energy_usage = 240, order = a},
    {name = centrifuge_2, crafting_speed = 2, energy_usage = 480, order = b},
    {name = centrifuge_3, crafting_speed = 3, energy_usage = 720, order = c}
}
for _, BUILD in pairs(centrifuges) do
    data_item[BUILD.name].order = BUILD.order
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].order = BUILD.order
    data_recipe[BUILD.name].energy_required = 16
    data_assembling[BUILD.name].order = BUILD.order
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute = {pollution = BUILD.crafting_speed}
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function centrifuge_recipe(name, gear_wheel, bearing, circuit, material, plate, centrifuge)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 128},
        {type = item, name = bearing, amount = 32},
        {type = item, name = circuit, amount = 128},
        {type = item, name = material, amount = 128},
        {type = item, name = plate, amount = 64}
    }
    if centrifuge then
        table.insert(ingredients, {type = item, name = centrifuge, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
centrifuge_recipe(centrifuge_1, steel_gear_wheel, steel_bearing, advanced_circuit, concrete, steel_plate)
centrifuge_recipe(centrifuge_2, titanium_gear_wheel, titanium_bearing, processing_unit, silicon_nitride_bob, titanium_plate_bob, centrifuge_1)
centrifuge_recipe(centrifuge_3, nitinol_gear_wheel, nitinol_bearing, advanced_processing_unit, tungsten_carbide_bob, nitinol_plate_bob, centrifuge_2)

local assembling_machines =
{
    {name = assembling_machine_1, crafting_speed = 1, energy_usage = 60}, -- 120
    {name = assembling_machine_2, crafting_speed = 2, energy_usage = 120}, -- 240
    {name = assembling_machine_3, crafting_speed = 3, energy_usage = 180}, -- 360
    {name = assembling_machine_4, crafting_speed = 4, energy_usage = 240}, -- 480
    {name = assembling_machine_5, crafting_speed = 5, energy_usage = 300}, -- 600
    {name = assembling_machine_6, crafting_speed = 6, energy_usage = 360}, -- 720
}
for _, BUILD in pairs(assembling_machines) do
    data_item[BUILD.name].stack_size = 32
    data_item[BUILD.name].weight = 31250
    data_recipe[BUILD.name].energy_required = 1
    data_assembling[BUILD.name].crafting_speed = BUILD.crafting_speed
    data_assembling[BUILD.name].module_slots = BUILD.crafting_speed
    data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.crafting_speed * drain)) .. kW
    data_assembling[BUILD.name].energy_source.emissions_per_minute = {pollution = 0}
    data_assembling[BUILD.name].energy_source.drain = (BUILD.crafting_speed * drain) .. kW
end
local function assembling_recipe(name, gear_wheel, circuit, pipe, assembling, plate, bearing)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 4},
        {type = item, name = circuit, amount = 4},
        {type = item, name = pipe, amount = 4},
        {type = item, name = plate, amount = 8},
    }
    if assembling then
        table.insert(ingredients, {type = item, name = assembling, amount = 1})
    end
    if bearing then
        table.insert(ingredients, {type = item, name = bearing, amount = 8})
    end
    data_recipe[name].ingredients = ingredients
end
assembling_recipe(assembling_machine_1, iron_gear_wheel, basic_circuit_board, iron_pipe, nil, iron_plate)
assembling_recipe(assembling_machine_2, steel_gear_wheel, electronic_circuit, steel_pipe, assembling_machine_1, steel_plate, steel_bearing)
assembling_recipe(assembling_machine_3, brass_gear_wheel, advanced_circuit, brass_pipe, assembling_machine_2, brass_plate_bob, brass_bearing)
assembling_recipe(assembling_machine_4, titanium_gear_wheel, processing_unit, titanium_pipe, assembling_machine_3, titanium_plate_bob, titanium_bearing)
assembling_recipe(assembling_machine_5, copper_tungsten_gear_wheel, advanced_processing_unit, copper_tungsten_pipe, assembling_machine_4, copper_tungsten_plate_bob, copper_tungsten_bearing)
assembling_recipe(assembling_machine_6, molybdenum_gear_wheel, advanced_processing_unit, molybdenum_rhenium_pipe, assembling_machine_5, molybdenum_rhenium_plate, rhenium_bearing)

local burner_assembling_machine = "bob-burner-assembling-machine"
if data_item[burner_assembling_machine] then
    data_item[burner_assembling_machine].stack_size = 32
    data_item[burner_assembling_machine].weight = 31250
    data_recipe[burner_assembling_machine].energy_required = 1
    data_recipe[burner_assembling_machine].ingredients =
    {
        {type = item, name = iron_gear_wheel, amount = 4},
        {type = item, name = iron_plate, amount = 8}
    }
    data_assembling[burner_assembling_machine].energy_usage = 225 .. kW
    data_assembling[burner_assembling_machine].energy_source.fuel_categories = {base_fuel}
    bobmods.lib.recipe.update_recycling_recipe({burner_assembling_machine})

    table.insert(data_recipe[assembling_machine_1].ingredients, {type = item, name = burner_assembling_machine, amount = 1})
end

data_item[lab].subgroup = is_lab
data_item[lab].order = a
data_item[lab].stack_size = 32
data_item[lab].weight = 31250
data_recipe[lab].subgroup = is_lab
data_recipe[lab].order = a
data_recipe[lab].energy_required = 1
data_recipe[lab].ingredients[1].amount = 8
data_recipe[lab].ingredients[2].amount = 8
data_lab[lab].subgroup = is_lab
data_lab[lab].order = a

bobmods.lib.recipe.update_recycling_recipe
({
    boiler_1,
    boiler_2,
    boiler_3,
    boiler_4,
    boiler_5,
    steam_engine_1,
    steam_engine_2,
    steam_engine_3,
    steam_engine_4,
    steam_engine_5,
    steam_turbine_1,
    steam_turbine_2,
    steam_turbine_3,
    fluid_generator_1,
    fluid_generator_2,
    fluid_generator_3,
    hydrazine_generator,
    solar_panel_small_1,
    solar_panel_small_2,
    solar_panel_small_3,
    solar_panel_1,
    solar_panel_2,
    solar_panel_3,
    solar_panel_large_1,
    solar_panel_large_2,
    solar_panel_large_3,
    accumulator_1,
    accumulator_2,
    accumulator_3,
    electric_mining_drill_1,
    electric_mining_drill_2,
    electric_mining_drill_3,
    electric_mining_drill_4,
    electric_mining_drill_5,
    pumpjack_1,
    pumpjack_2,
    pumpjack_3,
    pumpjack_4,
    uranium_reactor,
    thorium_reactor,
    deuterium_reactor,
    heat_pipe_1,
    heat_pipe_2,
    heat_pipe_3,
    heat_pipe_4,
    heat_exchanger_1,
    heat_exchanger_2,
    heat_exchanger_3,
    heat_exchanger_4,
    stone_furnace,
    steel_furnace,
    electric_furnace_1,
    electric_furnace_2,
    electric_furnace_3,
    stone_mixing_furnace,
    steel_mixing_furnace,
    electric_mixing_furnace_1,
    electric_mixing_furnace_2,
    electric_mixing_furnace_3,
    centrifuge_1,
    centrifuge_2,
    centrifuge_3,
    assembling_machine_1,
    assembling_machine_2,
    assembling_machine_3,
    assembling_machine_4,
    assembling_machine_5,
    assembling_machine_6,
    lab
})