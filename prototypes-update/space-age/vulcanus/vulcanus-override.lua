local kW = "kW"
-- LAVA
data_fluid[lava].subgroup = is_lava
data_fluid[lava].order = a

data_recipe[saphirite_from_lava].localised_name = {"recipe-name.saphirite-from-lava"}
data_recipe[saphirite_from_lava].subgroup = is_lava
data_recipe[saphirite_from_lava].icons = TWO_D_I(lava, calcite, saphirite, stone)
data_recipe[saphirite_from_lava].order = a_a
data_recipe[saphirite_from_lava].ingredients =
{
    {type = fluid, name = lava, amount = 480},
    {type = item, name = calcite, amount = 4}
}
data_recipe[saphirite_from_lava].results =
{
    {type = item, name = saphirite, amount = 16},
    {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
}
data_recipe[saphirite_from_lava].main_product = saphirite
data_recipe[saphirite_from_lava].surface_conditions = {{property = "pressure", min = 4000, max = 4000}}

data_recipe[stiratite_from_lava].localised_name = {"recipe-name.stiratite-from-lava"}
data_recipe[stiratite_from_lava].subgroup = is_lava
data_recipe[stiratite_from_lava].icons = TWO_D_I(lava, calcite, stiratite, stone)
data_recipe[stiratite_from_lava].order = a_c
data_recipe[stiratite_from_lava].ingredients =
{
    {type = fluid, name = lava, amount = 480},
    {type = item, name = calcite, amount = 4}
}
data_recipe[stiratite_from_lava].results =
{
    {type = item, name = stiratite, amount = 16},
    {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
}
data_recipe[stiratite_from_lava].main_product = stiratite
data_recipe[stiratite_from_lava].surface_conditions = {{property = "pressure", min = 4000, max = 4000}}

-- MOLTEN
data_recipe[molten_iron].localised_name = {"recipe-name.molten-iron"}
data_recipe[molten_iron].subgroup = is_molten
data_recipe[molten_iron].icons = TWO_I(iron_ingot, iron_molten_angels)
data_recipe[molten_iron].order = a
data_recipe[molten_iron].ingredients = {{type = item, name = iron_ingot, amount = 32}}
data_recipe[molten_iron].results[1].amount = 480
data_recipe[molten_iron].allow_quality = false

data_recipe[molten_copper].localised_name = {"recipe-name.molten-copper"}
data_recipe[molten_copper].subgroup = is_molten
data_recipe[molten_copper].icons = TWO_I(copper_ingot, copper_molten_angels)
data_recipe[molten_copper].order = c
data_recipe[molten_copper].ingredients = {{type = item, name = copper_ingot, amount = 32}}
data_recipe[molten_copper].results[1].amount = 480
data_recipe[molten_copper].allow_quality = false

-- PLATE
data_recipe[casting_iron].subgroup = is_plate
data_recipe[casting_iron].icons = TWO_I(iron_molten_angels, iron_plate)
data_recipe[casting_iron].order = a
data_recipe[casting_iron].energy_required = 4
data_recipe[casting_iron].ingredients[1].amount = 60
data_recipe[casting_iron].results[1].amount = 4

data_recipe[casting_steel].subgroup = is_plate
data_recipe[casting_steel].icons = TWO_I(steel_molten_angels, steel_plate)
data_recipe[casting_steel].order = b
data_recipe[casting_steel].energy_required = 4
data_recipe[casting_steel].ingredients[1].name = steel_molten_angels
data_recipe[casting_steel].ingredients[1].amount = 60
data_recipe[casting_steel].results[1].amount = 4

data_recipe[casting_copper].subgroup = is_plate
data_recipe[casting_copper].icons = TWO_I(copper_molten_angels, copper_plate)
data_recipe[casting_copper].order = c
data_recipe[casting_copper].energy_required = 4
data_recipe[casting_copper].ingredients[1].amount = 60
data_recipe[casting_copper].results[1].amount = 4

-- INTERMEDIATES
data_recipe[casting_iron_rod].subgroup = is_intermediates
data_recipe[casting_iron_rod].icons = TWO_I(iron_molten_angels, iron_rod)
data_recipe[casting_iron_rod].order = a
data_recipe[casting_iron_rod].ingredients[1].amount = 30

data_recipe[casting_iron_gear_wheel].subgroup = is_intermediates
data_recipe[casting_iron_gear_wheel].icons = TWO_I(iron_molten_angels, iron_gear_wheel)
data_recipe[casting_iron_gear_wheel].order = b
data_recipe[casting_iron_gear_wheel].ingredients[1].amount = 15

data_recipe[casting_low_density_structure].subgroup = is_intermediates
data_recipe[casting_low_density_structure].icons = R_P_I(low_density_structure, nil, nil, number_2)
data_recipe[casting_low_density_structure].order = h
data_recipe[casting_low_density_structure].energy_required = 16
data_recipe[casting_low_density_structure].ingredients =
{
    {type = item, name = plastic, amount = 4},
    {type = fluid, name = aluminium_molten_angels, amount = 240},
    {type = fluid, name = titanium_molten_angels, amount = 30}
}

data_recipe[casting_copper_cable].subgroup = is_intermediates
data_recipe[casting_copper_cable].icons = TWO_I(copper_molten_angels, copper_cable)
data_recipe[casting_copper_cable].order = i
data_recipe[casting_copper_cable].energy_required = 4
data_recipe[casting_copper_cable].ingredients[1].amount = 60
data_recipe[casting_copper_cable].results[1].amount = 8

-- PIPE
data_recipe[casting_iron_pipe].localised_name = {"recipe-name.casting-iron-pipe"}
data_recipe[casting_iron_pipe].subgroup = is_pipe
data_recipe[casting_iron_pipe].icons = TWO_I(iron_molten_angels, iron_pipe)
data_recipe[casting_iron_pipe].order = a
data_recipe[casting_iron_pipe].ingredients[1].amount = 15

-- PIPE TO GROUND
data_recipe[casting_iron_pipe_to_ground].localised_name = {"recipe-name.casting-iron-pipe-to-ground"}
data_recipe[casting_iron_pipe_to_ground].subgroup = is_pipe_to_ground
data_recipe[casting_iron_pipe_to_ground].icons = TWO_I(iron_molten_angels, iron_pipe_to_ground)
data_recipe[casting_iron_pipe_to_ground].order = a
data_recipe[casting_iron_pipe_to_ground].ingredients = {{type = fluid, name = iron_molten_angels, amount = 120}}

-- CALCITE
data_item[calcite].localised_description = show_formula and {chemical_formula, "CaCO[font=default-tiny-bold]3[/font]"} or nil
data_item[calcite].subgroup = is_calcite
data_item[calcite].order = a
data_item[calcite].stack_size = 200

local acid_neutralisation = "acid-neutralisation"
data_recipe[acid_neutralisation].category = angels_advanced_chemistry
data_recipe[acid_neutralisation].subgroup = is_calcite
data_recipe[acid_neutralisation].icons = FOUR_R_I(sulfuric_acid_angels, sulfur_trioxide_gas, steam, carbon_dioxide_angels)
data_recipe[acid_neutralisation].order = a_a
data_recipe[acid_neutralisation].energy_required = 4 -- 2CaCO₃ + 4H₂SO₄ --> 2CaO + 4H₂O + 4SO₃ + 2CO₂
data_recipe[acid_neutralisation].ingredients =
{
    {type = item, name = calcite, amount = 32},
    {type = fluid, name = sulfuric_acid_angels, amount = 960}
}
data_recipe[acid_neutralisation].results =
{
    {type = item, name = lime_angels, amount = 32},
    {type = fluid, name = steam, amount = 960, temperature = 915},
    {type = fluid, name = sulfur_trioxide_gas, amount = 960},
    {type = fluid, name = carbon_dioxide_angels, amount = 480}
}
data_recipe[acid_neutralisation].main_product = steam

local steam_condensation = "steam-condensation"
data_recipe[steam_condensation].category = angels_cooling
data_recipe[steam_condensation].subgroup = is_calcite
data_recipe[steam_condensation].icons = TWO_I(steam, water)
data_recipe[steam_condensation].order = a_b
data_recipe[steam_condensation].energy_required = 16
data_recipe[steam_condensation].ingredients[1].amount = 960
data_recipe[steam_condensation].results[1].amount = 120
data_recipe[steam_condensation].surface_conditions = {{property = "pressure", min = 4000, max = 4000}}

local simple_coal_liquefaction = "simple-coal-liquefaction"
data_recipe[simple_coal_liquefaction].subgroup = is_calcite
data_recipe[simple_coal_liquefaction].icons = FOUR_THREE_R_I(coal, calcite, sulfuric_acid_angels, naphtha_angels, limestone_angels, sulfur_dioxide_angels, oxygen_angels)
data_recipe[simple_coal_liquefaction].order = a_c
data_recipe[simple_coal_liquefaction].energy_required = 4 -- 8C + 2CaCO₃ + H₂SO₄ --> C₈H₁₈ + 2CaCO₃ + SO₂ + O₂
data_recipe[simple_coal_liquefaction].ingredients =
{
    {type = item, name = coal, amount = 8},
    {type = item, name = calcite, amount = 2},
    {type = fluid, name = sulfuric_acid_angels, amount = 30}
}
data_recipe[simple_coal_liquefaction].results =
{
    {type = fluid, name = naphtha_angels, amount = 60},
    {type = item, name = limestone_angels, amount = 2},
    {type = fluid, name = sulfur_dioxide_angels, amount = 30},
    {type = fluid, name = oxygen_angels, amount = 30}
}
data_recipe[simple_coal_liquefaction].main_product = naphtha_angels
data_recipe[simple_coal_liquefaction].surface_conditions = {{property = "pressure", min = 4000, max = 4000}}

local carbon = "carbon"
data_recipe[carbon].category = chemistry
data_recipe[carbon].subgroup = is_calcite
data_recipe[carbon].icons = THREE_D_I(coal, nil, sulfuric_acid_angels, carbon_angels, water_yellow_waste, oxygen_angels)
data_recipe[carbon].order = b
-- C + 2H₂SO₄ --> C + 2H₂O(S) + 3O₂
data_recipe[carbon].ingredients =
{
    {type = item, name = coal, amount = 1},
    {type = fluid, name = sulfuric_acid_angels, amount = 30}
}
data_recipe[carbon].results =
{
    {type = item, name = carbon_angels, amount = 1},
    {type = fluid, name = water_yellow_waste, amount = 30},
    {type = fluid, name = oxygen_angels, amount = 30} -- 45
}
data_recipe[carbon].surface_conditions = {{property = "pressure", min = 4000, max = 4000}}

-- TUNGSTEN
local tungsten_ore = "tungsten-ore"
data_resource[tungsten_ore].subgroup = is_tungsten
data_resource[tungsten_ore].order = a

data_recipe[tungsten_carbide].category = angels_sintering_4
data_recipe[tungsten_carbide].subgroup = is_tungsten
data_recipe[tungsten_carbide].icons = THREE_I(tungsten_ore_bob, carbon_angels, tungsten_carbide_bob)
data_recipe[tungsten_carbide].order = b
data_recipe[tungsten_carbide].energy_required = 4
data_recipe[tungsten_carbide].ingredients =
{
    {type = item, name = tungsten_ore_bob, amount = 4},
    {type = item, name = carbon_angels, amount = 1}
}
data_recipe[tungsten_carbide].surface_conditions = {{property = "pressure", min = 4000, max = 4000}}

data_recipe[tungsten_plate].category = angels_sintering_4
data_recipe[tungsten_plate].subgroup = is_tungsten
data_recipe[tungsten_plate].icons = TWO_I(tungsten_ore_bob, tungsten_plate_bob)
data_recipe[tungsten_plate].order = c
data_recipe[tungsten_plate].energy_required = 8
data_recipe[tungsten_plate].ingredients = {{type = item, name = tungsten_ore_bob, amount = 4}}
data_recipe[tungsten_plate].surface_conditions = {{property = "pressure", min = 4000, max = 4000}}

data_tool[metallurgic_science_pack].subgroup = is_tungsten
data_tool[metallurgic_science_pack].order = d
data_recipe[metallurgic_science_pack].subgroup = is_tungsten
data_recipe[metallurgic_science_pack].order = d
data_recipe[metallurgic_science_pack].energy_required = 8
data_recipe[metallurgic_science_pack].ingredients =
{
    {type = item, name = tungsten_plate_bob, amount = 2},
    {type = item, name = tungsten_carbide_bob, amount = 4},
    {type = fluid, name = chrome_molten_angels, amount = 240}
}

local foundation = "foundation"
data_item[foundation].subgroup = is_tungsten
data_item[foundation].order = e
data_item[foundation].stack_size = 200
data_recipe[foundation].subgroup = is_tungsten
data_recipe[foundation].order = e
data_recipe[foundation].energy_required = 32
data_recipe[foundation].ingredients =
{
    {type = item, name = stone, amount = 16},
    {type = item, name = lithium_bob, amount = 4},
    {type = item, name = tungsten_plate_bob, amount = 4},
    {type = item, name = carbon_fiber, amount = 4},
    {type = fluid, name = fluoroketone_cold, amount = 30}
}
data_tile[foundation].subgroup = is_tungsten
data_tile[foundation].order = e

-- LOGISTICS
data_item[vulcanus_transport_belt].localised_name = {"item-name.vulcanus-transport-belt"}
data_item[vulcanus_transport_belt].subgroup = is_vulcanus_logistics
data_item[vulcanus_transport_belt].stack_size = 200
data_recipe[vulcanus_transport_belt].localised_name = {"recipe-name.vulcanus-transport-belt"}
data_recipe[vulcanus_transport_belt].subgroup = is_vulcanus_logistics
data_recipe[vulcanus_transport_belt].ingredients =
{
    {type = item, name = copper_tungsten_gear_wheel, amount = 2},
    {type = item, name = copper_tungsten_bearing, amount = 4},
    {type = item, name = T5_transport_belt, amount = 2},
    {type = item, name = copper_tungsten_plate_bob, amount = 2},
    {type = fluid, name = lubricant, amount = 60}
}
data_recipe[vulcanus_transport_belt].results[1].amount = 2
data_transport_belt[vulcanus_transport_belt].localised_name = {"entity-name.vulcanus-transport-belt"}
data_transport_belt[vulcanus_transport_belt].subgroup = is_vulcanus_logistics
data_transport_belt[vulcanus_transport_belt].speed = 12/60

data_item[vulcanus_underground_belt].localised_name = {"item-name.vulcanus-underground-belt"}
data_item[vulcanus_underground_belt].subgroup = is_vulcanus_logistics
data_item[vulcanus_underground_belt].stack_size = 32
data_recipe[vulcanus_underground_belt].localised_name = {"recipe-name.vulcanus-underground-belt"}
data_recipe[vulcanus_underground_belt].subgroup = is_vulcanus_logistics
data_recipe[vulcanus_underground_belt].energy_required = 1
data_recipe[vulcanus_underground_belt].ingredients =
{
    {type = item, name = copper_tungsten_gear_wheel, amount = 8},
    {type = item, name = copper_tungsten_bearing, amount = 16},
    {type = item, name = T5_underground_belt, amount = 2},
    {type = item, name = copper_tungsten_plate_bob, amount = 8},
    {type = fluid, name = lubricant, amount = 240}
}
data_underground_belt[vulcanus_underground_belt].localised_name = {"entity-name.vulcanus-underground-belt"}
data_underground_belt[vulcanus_underground_belt].subgroup = is_vulcanus_logistics
data_underground_belt[vulcanus_underground_belt].speed = 12/60
data_underground_belt[vulcanus_underground_belt].max_distance = 48

data_item[vulcanus_splitter].localised_name = {"item-name.vulcanus-splitter"}
data_item[vulcanus_splitter].subgroup = is_vulcanus_logistics
data_item[vulcanus_splitter].stack_size = 16
data_recipe[vulcanus_splitter].localised_name = {"recipe-name.vulcanus-splitter"}
data_recipe[vulcanus_splitter].subgroup = is_vulcanus_logistics
data_recipe[vulcanus_splitter].energy_required = 1
data_recipe[vulcanus_splitter].ingredients =
{
    {type = item, name = copper_tungsten_gear_wheel, amount = 4},
    {type = item, name = copper_tungsten_bearing, amount = 8},
    {type = item, name = advanced_processing_unit, amount = 2},
    {type = item, name = T5_splitter, amount = 1},
    {type = item, name = copper_tungsten_plate_bob, amount = 4},
    {type = fluid, name = lubricant, amount = 120}
}
data_splitter[vulcanus_splitter].localised_name = {"entity-name.vulcanus-splitter"}
data_splitter[vulcanus_splitter].subgroup = is_vulcanus_logistics
data_splitter[vulcanus_splitter].speed = 12/60

-- BUILDING
data_item[foundry].subgroup = is_vulcanus_building
data_item[foundry].order = a
data_item[foundry].stack_size = 32
data_item[foundry].weight = 31250
data_recipe[foundry].subgroup = is_vulcanus_building
data_recipe[foundry].order = a
data_recipe[foundry].energy_required = 8
data_recipe[foundry].ingredients =
{
    {type = item, name = advanced_processing_unit, amount = 32},
    {type = item, name = nitinol_plate_bob, amount = 64},
    {type = item, name = tungsten_carbide_bob, amount = 64},
    {type = item, name = refined_concrete, amount = 16},
    {type = fluid, name = lubricant, amount = 30}
}
data_assembling[foundry].subgroup = is_vulcanus_building
data_assembling[foundry].order = a
data_assembling[foundry].energy_usage = 2340 .. kW
data_assembling[foundry].energy_source.emissions_per_minute.pollution = 8
data_assembling[foundry].energy_source.drain = 60 .. kW

data_item[big_mining_drill].subgroup = is_vulcanus_building
data_item[big_mining_drill].order = b
data_item[big_mining_drill].stack_size = 32
data_item[big_mining_drill].weight = 31250
data_recipe[big_mining_drill].subgroup = is_vulcanus_building
data_recipe[big_mining_drill].order = b
data_recipe[big_mining_drill].energy_required = 32
data_recipe[big_mining_drill].ingredients =
{
    {type = item, name = electric_engine_unit, amount = 8},
    {type = item, name = advanced_processing_unit, amount = 8},
    {type = item, name = electric_mining_drill_5, amount = 1},
    {type = item, name = tungsten_carbide_bob, amount = 16},
    {type = fluid, name = chrome_molten_angels, amount = 240}
}
data_mining_drill[big_mining_drill].subgroup = is_vulcanus_building
data_mining_drill[big_mining_drill].order = b
data_mining_drill[big_mining_drill].mining_speed = 5
data_mining_drill[big_mining_drill].module_slots = 5
data_mining_drill[big_mining_drill].energy_usage = 240 .. kW
data_mining_drill[big_mining_drill].energy_source.emissions_per_minute.pollution = 32

bobmods.lib.recipe.update_recycling_recipe
({
    foundation,
    vulcanus_transport_belt,
    vulcanus_underground_belt,
    vulcanus_splitter,
    foundry,
    big_mining_drill
})