-- LAVA
data_fluid[lava].subgroup = is_lava
data_fluid[lava].order = a

local saphirite_from_lava = "molten-iron-from-lava"
data_recipe[saphirite_from_lava].localised_name = {"recipe-name.saphirite-from-lava"}
data_recipe[saphirite_from_lava].subgroup = is_lava
data_recipe[saphirite_from_lava].icons = TWO_D_I(lava, calcite, ore_saphirite, stone)
data_recipe[saphirite_from_lava].order = a_a
data_recipe[saphirite_from_lava].ingredients =
{
    {type = fluid, name = lava, amount = 480},
    {type = item, name = calcite, amount = 4}
}
data_recipe[saphirite_from_lava].results =
{
    {type = item, name = ore_saphirite, amount = 16},
    {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
}
data_recipe[saphirite_from_lava].main_product = ore_saphirite
data_recipe[saphirite_from_lava].surface_conditions = {{property = pressure, min = 4000, max = 4000}}

local stiratite_from_lava = "molten-copper-from-lava"
data_recipe[stiratite_from_lava].localised_name = {"recipe-name.stiratite-from-lava"}
data_recipe[stiratite_from_lava].subgroup = is_lava
data_recipe[stiratite_from_lava].icons = TWO_D_I(lava, calcite, ore_stiratite, stone)
data_recipe[stiratite_from_lava].order = a_c
data_recipe[stiratite_from_lava].ingredients =
{
    {type = fluid, name = lava, amount = 480},
    {type = item, name = calcite, amount = 4}
}
data_recipe[stiratite_from_lava].results =
{
    {type = item, name = ore_stiratite, amount = 16},
    {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
}
data_recipe[stiratite_from_lava].main_product = ore_stiratite
data_recipe[stiratite_from_lava].surface_conditions = {{property = pressure, min = 4000, max = 4000}}

-- MOLTEN
data_recipe[molten_iron].localised_name = {"recipe-name.molten-iron"}
data_recipe[molten_iron].subgroup = is_vulcanus_molten
data_recipe[molten_iron].icons = TWO_I(iron_ingot, iron_molten_angels)
data_recipe[molten_iron].order = a
data_recipe[molten_iron].energy_required = 8
data_recipe[molten_iron].ingredients = {{type = item, name = iron_ingot, amount = 16}}
data_recipe[molten_iron].results[1].amount = 240
data_recipe[molten_iron].allow_quality = false

data_recipe[molten_copper].localised_name = {"recipe-name.molten-copper"}
data_recipe[molten_copper].subgroup = is_vulcanus_molten
data_recipe[molten_copper].icons = TWO_I(copper_ingot, copper_molten_angels)
data_recipe[molten_copper].order = c
data_recipe[molten_copper].energy_required = 8
data_recipe[molten_copper].ingredients = {{type = item, name = copper_ingot, amount = 16}}
data_recipe[molten_copper].results[1].amount = 240
data_recipe[molten_copper].allow_quality = false

-- PLATE
local casting_iron = "casting-iron"
data_recipe[casting_iron].subgroup = is_vulcanus_plate
data_recipe[casting_iron].icons = TWO_I(iron_molten_angels, iron_plate)
data_recipe[casting_iron].order = a
data_recipe[casting_iron].energy_required = 4
data_recipe[casting_iron].ingredients[1].amount = 60
data_recipe[casting_iron].results[1].amount = 4

casting_steel = "casting-steel"
data_recipe[casting_steel].subgroup = is_vulcanus_plate
data_recipe[casting_steel].icons = TWO_I(steel_molten_angels, steel_plate)
data_recipe[casting_steel].order = b
data_recipe[casting_steel].energy_required = 4
data_recipe[casting_steel].ingredients[1].name = steel_molten_angels
data_recipe[casting_steel].ingredients[1].amount = 60
data_recipe[casting_steel].results[1].amount = 4

local casting_copper = "casting-copper"
data_recipe[casting_copper].subgroup = is_vulcanus_plate
data_recipe[casting_copper].icons = TWO_I(copper_molten_angels, copper_plate)
data_recipe[casting_copper].order = c
data_recipe[casting_copper].energy_required = 4
data_recipe[casting_copper].ingredients[1].amount = 60
data_recipe[casting_copper].results[1].amount = 4

-- INTERMEDIATES
local casting_iron_rod = "casting-iron-stick"
data_recipe[casting_iron_rod].subgroup = is_vulcanus_rod
data_recipe[casting_iron_rod].icons = TWO_I(iron_molten_angels, iron_rod)
data_recipe[casting_iron_rod].order = a
data_recipe[casting_iron_rod].ingredients[1].amount = 30

local casting_iron_gear_wheel = "casting-iron-gear-wheel"
data_recipe[casting_iron_gear_wheel].subgroup = is_vulcanus_gear_wheel
data_recipe[casting_iron_gear_wheel].icons = TWO_I(iron_molten_angels, iron_gear_wheel)
data_recipe[casting_iron_gear_wheel].order = a
data_recipe[casting_iron_gear_wheel].ingredients[1].amount = 15

casting_low_density_structure = "casting-low-density-structure"
data_recipe[casting_low_density_structure].subgroup = "intermediate-product"
data_recipe[casting_low_density_structure].icons = R_P_I(low_density_structure, nil, nil, number_2)
data_recipe[casting_low_density_structure].order = g_a
data_recipe[casting_low_density_structure].energy_required = 16
data_recipe[casting_low_density_structure].ingredients =
{
    {type = item, name = plastic, amount = 4},
    {type = fluid, name = aluminium_molten_angels, amount = 240},
    {type = fluid, name = titanium_molten_angels, amount = 30}
}

local casting_copper_cable = "casting-copper-cable"
data_recipe[casting_copper_cable].subgroup = is_vulcanus_cable
data_recipe[casting_copper_cable].icons = TWO_I(copper_molten_angels, copper_cable)
data_recipe[casting_copper_cable].order = a
data_recipe[casting_copper_cable].energy_required = 4
data_recipe[casting_copper_cable].ingredients[1].amount = 60
data_recipe[casting_copper_cable].results[1].amount = 16

-- PIPE
local casting_iron_pipe = "casting-pipe"
data_recipe[casting_iron_pipe].localised_name = {"recipe-name.casting-iron-pipe"}
data_recipe[casting_iron_pipe].subgroup = is_vulcanus_pipe
data_recipe[casting_iron_pipe].icons = TWO_I(iron_molten_angels, iron_pipe)
data_recipe[casting_iron_pipe].order = a
data_recipe[casting_iron_pipe].ingredients[1].amount = 15

-- PIPE TO GROUND
local casting_iron_pipe_to_ground = "casting-pipe-to-ground"
data_recipe[casting_iron_pipe_to_ground].localised_name = {"recipe-name.casting-iron-pipe-to-ground"}
data_recipe[casting_iron_pipe_to_ground].subgroup = is_vulcanus_pipe_to_ground
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
data_recipe[steam_condensation].surface_conditions = {{property = pressure, min = 4000, max = 4000}}

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
data_recipe[simple_coal_liquefaction].surface_conditions = {{property = pressure, min = 4000, max = 4000}}

data_recipe[carbon].hidden = false
data_recipe[carbon].hidden_in_factoriopedia = false
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
data_recipe[carbon].surface_conditions = {{property = pressure, min = 4000, max = 4000}}

local simulations = require("__space-age__.prototypes.factoriopedia-simulations")
-- WOLFRAMITE
data_item[wolframite_ore].localised_name = {"item-name.wolframite-ore"}
data_item[wolframite_ore].localised_description = {"item-description.wolframite-ore"}
data_item[wolframite_ore].subgroup = is_vulcanus_wolframite
data_item[wolframite_ore].order = a
data_item[wolframite_ore].stack_size = 200
data_resource[wolframite_ore].localised_name = {"entity-name.wolframite-ore"}
data_resource[wolframite_ore].localised_description = {"entity-description.wolframite-ore"}
data_resource[wolframite_ore].factoriopedia_simulation = simulations.factoriopedia_tungsten_ore
data_resource[wolframite_ore].subgroup = is_vulcanus_wolframite
data_resource[wolframite_ore].order = a
data_resource[wolframite_ore].minable.mining_time = 4

-- TUNGSTEN
data_recipe[tungsten_carbide].category = sintering_6
data_recipe[tungsten_carbide].subgroup = is_vulcanus_tungsten
data_recipe[tungsten_carbide].icons = THREE_I(tungsten_powder, carbon_angels, tungsten_carbide_plate_bob)
data_recipe[tungsten_carbide].order = b
data_recipe[tungsten_carbide].energy_required = 4
data_recipe[tungsten_carbide].ingredients =
{
    {type = item, name = tungsten_powder, amount = 16},
    {type = item, name = carbon_angels, amount = 16}
}
data_recipe[tungsten_carbide].results[1].amount = 16
data_recipe[tungsten_carbide].surface_conditions = {{property = pressure, min = 4000, max = 4000}}

data_recipe[tungsten_plate].localised_name = data_item[tungsten_plate_bob].localised_name
data_recipe[tungsten_plate].category = sintering_6
data_recipe[tungsten_plate].subgroup = is_vulcanus_tungsten
data_recipe[tungsten_plate].icons = TWO_I(tungsten_powder, tungsten_plate_bob)
data_recipe[tungsten_plate].order = c
data_recipe[tungsten_plate].energy_required = 4
data_recipe[tungsten_plate].ingredients = {{type = item, name = tungsten_powder, amount = 16}}
data_recipe[tungsten_plate].results[1].amount = 16
data_recipe[tungsten_plate].surface_conditions = {{property = pressure, min = 4000, max = 4000}}

data_tool[metallurgic_science_pack].subgroup = is_vulcanus_tungsten
data_tool[metallurgic_science_pack].order = d
data_recipe[metallurgic_science_pack].subgroup = is_vulcanus_tungsten
data_recipe[metallurgic_science_pack].order = d
data_recipe[metallurgic_science_pack].energy_required = 8
data_recipe[metallurgic_science_pack].ingredients =
{
    {type = item, name = tungsten_plate_bob, amount = 2},
    {type = item, name = tungsten_carbide_plate_bob, amount = 4},
    {type = fluid, name = lava, amount = 240}
}

data_item[foundation].subgroup = is_vulcanus_tungsten
data_item[foundation].order = e
data_item[foundation].stack_size = 200
data_recipe[foundation].subgroup = is_vulcanus_tungsten
data_recipe[foundation].order = e
data_recipe[foundation].energy_required = 32
data_recipe[foundation].ingredients =
{
    {type = item, name = stone, amount = 16},
    {type = item, name = niobium_tungsten_molybdenum_plate, amount = 4},
    {type = item, name = molybdenum_rhenium_plate, amount = 4},
    {type = item, name = carbon_fiber, amount = 4},
    {type = fluid, name = fluoroketone_cold, amount = 30}
}
data_tile[foundation].subgroup = is_vulcanus_tungsten
data_tile[foundation].order = e

-- LOGISTICS
data_item[vulcanus_transport_belt].localised_name = {"entity-name.vulcanus-transport-belt"}
data_item[vulcanus_transport_belt].subgroup = is_vulcanus_logistics
data_item[vulcanus_transport_belt].stack_size = 200
data_recipe[vulcanus_transport_belt].localised_name = {"entity-name.vulcanus-transport-belt"}
data_recipe[vulcanus_transport_belt].subgroup = is_vulcanus_logistics
data_recipe[vulcanus_transport_belt].ingredients =
{
    {type = item, name = molybdenum_gear_wheel, amount = 4},
    {type = item, name = rhenium_bearing, amount = 4},
    {type = item, name = T5_transport_belt, amount = 2},
    {type = item, name = molybdenum_rhenium_plate, amount = 2}
}
data_recipe[vulcanus_transport_belt].results[1].amount = 2
data_transport_belt[vulcanus_transport_belt].localised_name = {"entity-name.vulcanus-transport-belt"}
data_transport_belt[vulcanus_transport_belt].subgroup = is_vulcanus_logistics
data_transport_belt[vulcanus_transport_belt].speed = 11.25/60

local simulations = require("prototypes.factoriopedia-simulations")
data_item[vulcanus_underground_belt].localised_name = {"entity-name.vulcanus-underground-belt"}
data_item[vulcanus_underground_belt].subgroup = is_vulcanus_logistics
data_item[vulcanus_underground_belt].stack_size = 32
data_recipe[vulcanus_underground_belt].localised_name = {"entity-name.vulcanus-underground-belt"}
data_recipe[vulcanus_underground_belt].subgroup = is_vulcanus_logistics
data_recipe[vulcanus_underground_belt].energy_required = 1
data_recipe[vulcanus_underground_belt].ingredients =
{
    {type = item, name = molybdenum_gear_wheel, amount = 16},
    {type = item, name = rhenium_bearing, amount = 16},
    {type = item, name = T5_underground_belt, amount = 2},
    {type = item, name = molybdenum_rhenium_plate, amount = 8}
}
data_underground_belt[vulcanus_underground_belt].localised_name = {"entity-name.vulcanus-underground-belt"}
data_underground_belt[vulcanus_underground_belt].subgroup = is_vulcanus_logistics
data_underground_belt[vulcanus_underground_belt].speed = 11.25/60
if settings.startup[setting_rebalance_belts_and_pipes].value then
    data_underground_belt[vulcanus_underground_belt].max_distance = 48
else
    data_underground_belt[vulcanus_underground_belt].max_distance = 27
end
data_underground_belt[vulcanus_underground_belt].factoriopedia_simulation = simulations.factoriopedia_vulcanus_underground_belt

data_item[vulcanus_splitter].localised_name = {"entity-name.vulcanus-splitter"}
data_item[vulcanus_splitter].subgroup = is_vulcanus_logistics
data_item[vulcanus_splitter].stack_size = 16
data_recipe[vulcanus_splitter].localised_name = {"entity-name.vulcanus-splitter"}
data_recipe[vulcanus_splitter].subgroup = is_vulcanus_logistics
data_recipe[vulcanus_splitter].energy_required = 1
data_recipe[vulcanus_splitter].ingredients =
{
    {type = item, name = molybdenum_gear_wheel, amount = 8},
    {type = item, name = rhenium_bearing, amount = 8},
    {type = item, name = advanced_processing_unit, amount = 1},
    {type = item, name = T5_splitter, amount = 1},
    {type = item, name = molybdenum_rhenium_plate, amount = 4}
}
data_splitter[vulcanus_splitter].localised_name = {"entity-name.vulcanus-splitter"}
data_splitter[vulcanus_splitter].subgroup = is_vulcanus_logistics
data_splitter[vulcanus_splitter].speed = 11.25/60

if mods[loaders_modernized_integrations] then
    data_item[vulcanus_loader].subgroup = is_vulcanus_logistics
    data_item[vulcanus_loader].order = d
    data_recipe[vulcanus_loader].subgroup = is_vulcanus_logistics
    data_recipe[vulcanus_loader].order = d
    data_loader_1x1[vulcanus_loader].subgroup = is_vulcanus_logistics
    data_loader_1x1[vulcanus_loader].order = d
    data_loader_1x1[vulcanus_loader].minable.mining_time = 0.5
    data_loader_1x1[vulcanus_loader].speed = 11.25/60
    if settings.startup[setting_mdrn_use_electricity].value then
        data_loader_1x1[vulcanus_loader].energy_per_item = ((60 * 12) - (7.5 * 12)) .. kW
        data_loader_1x1[vulcanus_loader].energy_source.drain = (15 * 12) .. kW
    end
end

if mods[arig_mods] then
    data_transport_belt[vulcanus_transport_belt].next_upgrade = hyper_transport_belt_arig
    data_underground_belt[vulcanus_underground_belt].next_upgrade = hyper_underground_belt_arig
    data_splitter[vulcanus_splitter].next_upgrade = hyper_splitter_arig
    if mods[loaders_modernized_integrations] then
        data_loader_1x1[vulcanus_loader].next_upgrade = hyper_loader_arig
    end
end

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
    {type = item, name = molybdenum_rhenium_plate, amount = 64},
    {type = item, name = tungsten_carbide_plate_bob, amount = 64},
    {type = item, name = reinforced_concrete, amount = 16}
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
    {type = item, name = electric_mining_drill_6, amount = 1},
    {type = item, name = tungsten_carbide_plate_bob, amount = 16},
    {type = item, name = molybdenum_rhenium_plate, amount = 16}
}
data_mining_drill[big_mining_drill].subgroup = is_vulcanus_building
data_mining_drill[big_mining_drill].order = b
data_mining_drill[big_mining_drill].mining_speed = 8
data_mining_drill[big_mining_drill].module_slots = 8
data_mining_drill[big_mining_drill].energy_usage = 2400 .. kW
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

-- TECHNOLOGY
table.insert(data_technology[planet_discovery_vulcanus].effects, {type = unlock_recipe, recipe = vulcanus_air})
table.insert(data_technology[planet_discovery_vulcanus].effects, {type = unlock_recipe, recipe = vulcanus_air_separation})
data_technology[planet_discovery_vulcanus].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1}
}

data_technology[tungsten_carbide].prerequisites = {tech_wolframite_processing_1, tech_powder_metallurgy_6}
data_technology[tungsten_carbide].effects =
{
    {type = unlock_recipe, recipe = carbon},
    {type = unlock_recipe, recipe = tungsten_powder_vulcanus},
    {type = unlock_recipe, recipe = tungsten_carbide}
}
data_technology[tungsten_carbide].research_trigger =
{
    type = craft_item,
    item = wolframite_crushed,
    count = 256
}

data_technology[foundry].effects =
{
    {type = unlock_recipe, recipe = foundry},
    -- LAVA
    {type = unlock_recipe, recipe = lava},
    {type = unlock_recipe, recipe = saphirite_from_lava},
    {type = unlock_recipe, recipe = jivolite_from_lava},
    {type = unlock_recipe, recipe = stiratite_from_lava},
    {type = unlock_recipe, recipe = crotinnium_from_lava},
    {type = unlock_recipe, recipe = rubyte_from_lava},
    {type = unlock_recipe, recipe = bobmonium_from_lava},
    -- MOLTEN
    {type = unlock_recipe, recipe = molten_iron},
    {type = unlock_recipe, recipe = molten_steel},
    {type = unlock_recipe, recipe = molten_copper},
    {type = unlock_recipe, recipe = molten_lead},
    {type = unlock_recipe, recipe = molten_tin},
    {type = unlock_recipe, recipe = molten_manganese},
    {type = unlock_recipe, recipe = molten_magnesium},
    {type = unlock_recipe, recipe = molten_nickel},
    {type = unlock_recipe, recipe = molten_aluminium},
    {type = unlock_recipe, recipe = molten_zinc},
    {type = unlock_recipe, recipe = molten_silver},
    {type = unlock_recipe, recipe = molten_titanium},
    {type = unlock_recipe, recipe = molten_gold},
    {type = unlock_recipe, recipe = molten_cobalt},
    {type = unlock_recipe, recipe = molten_chromium},
    {type = unlock_recipe, recipe = molten_platinum},
    {type = unlock_recipe, recipe = molten_glass},
    {type = unlock_recipe, recipe = molten_solder},
    {type = unlock_recipe, recipe = molten_bronze},
    {type = unlock_recipe, recipe = molten_brass},
    {type = unlock_recipe, recipe = molten_invar},
    {type = unlock_recipe, recipe = molten_cobalt_steel},
    {type = unlock_recipe, recipe = molten_nitinol},
    -- PLATE
    {type = unlock_recipe, recipe = casting_iron},
    {type = unlock_recipe, recipe = casting_steel},
    {type = unlock_recipe, recipe = casting_copper},
    {type = unlock_recipe, recipe = casting_lead},
    {type = unlock_recipe, recipe = casting_tin},
    {type = unlock_recipe, recipe = casting_nickel},
    {type = unlock_recipe, recipe = casting_aluminium},
    {type = unlock_recipe, recipe = casting_zinc},
    {type = unlock_recipe, recipe = casting_silver},
    {type = unlock_recipe, recipe = casting_titanium},
    {type = unlock_recipe, recipe = casting_gold},
    {type = unlock_recipe, recipe = casting_platinum},
    {type = unlock_recipe, recipe = casting_glass},
    {type = unlock_recipe, recipe = casting_solder},
    {type = unlock_recipe, recipe = casting_bronze},
    {type = unlock_recipe, recipe = casting_brass},
    {type = unlock_recipe, recipe = casting_invar},
    {type = unlock_recipe, recipe = casting_cobalt_steel},
    {type = unlock_recipe, recipe = casting_nitinol},
    -- ROD
    {type = unlock_recipe, recipe = casting_iron_rod},
    {type = unlock_recipe, recipe = casting_steel_rod},
    {type = unlock_recipe, recipe = casting_titanium_rod},
    -- GEAR WHEEL
    {type = unlock_recipe, recipe = casting_iron_gear_wheel},
    {type = unlock_recipe, recipe = casting_steel_gear_wheel},
    {type = unlock_recipe, recipe = casting_brass_gear_wheel},
    {type = unlock_recipe, recipe = casting_cobalt_steel_gear_wheel},
    {type = unlock_recipe, recipe = casting_titanium_gear_wheel},
    {type = unlock_recipe, recipe = casting_nitinol_gear_wheel},
    -- BEARING BALL
    {type = unlock_recipe, recipe = casting_iron_bearing_ball},
    {type = unlock_recipe, recipe = casting_steel_bearing_ball},
    {type = unlock_recipe, recipe = casting_brass_bearing_ball},
    {type = unlock_recipe, recipe = casting_cobalt_steel_bearing_ball},
    {type = unlock_recipe, recipe = casting_titanium_bearing_ball},
    {type = unlock_recipe, recipe = casting_nitinol_bearing_ball},
    -- BEARING
    {type = unlock_recipe, recipe = casting_iron_bearing},
    {type = unlock_recipe, recipe = casting_steel_bearing},
    {type = unlock_recipe, recipe = casting_brass_bearing},
    {type = unlock_recipe, recipe = casting_cobalt_steel_bearing},
    {type = unlock_recipe, recipe = casting_titanium_bearing},
    {type = unlock_recipe, recipe = casting_nitinol_bearing},
    -- CABLE
    {type = unlock_recipe, recipe = casting_copper_cable},
    {type = unlock_recipe, recipe = casting_tin_cable},
    {type = unlock_recipe, recipe = casting_silver_cable},
    {type = unlock_recipe, recipe = casting_gold_cable},
    {type = unlock_recipe, recipe = casting_platinum_cable},
    -- PIPE
    {type = unlock_recipe, recipe = casting_iron_pipe},
    {type = unlock_recipe, recipe = casting_copper_pipe},
    {type = unlock_recipe, recipe = casting_bronze_pipe},
    {type = unlock_recipe, recipe = casting_steel_pipe},
    {type = unlock_recipe, recipe = casting_brass_pipe},
    {type = unlock_recipe, recipe = casting_titanium_pipe},
    {type = unlock_recipe, recipe = casting_nitinol_pipe},
    -- PIPE TO GROUND
    {type = unlock_recipe, recipe = casting_iron_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_copper_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_bronze_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_steel_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_brass_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_titanium_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_nitinol_pipe_to_ground},
    -- OTHERS
    {type = unlock_recipe, recipe = casting_low_density_structure},
}
data_technology[foundry].research_trigger =
{
    type = craft_item,
    item = tungsten_carbide_plate_bob,
    count = 256
}

if settings.startup[setting_bobmods_mining_miningdrills].value then
    data_technology[big_mining_drill].prerequisites = {foundry, tech_drills_6}
end

data_technology[metallurgic_science_pack].research_trigger =
{
    type = craft_item,
    item = tungsten_plate_bob,
    count = 256
}

data_technology[vulcanus_transport_belt].localised_name = {"technology-name.vulcanus-transport-belt"}
data_technology[vulcanus_transport_belt].prerequisites = {metallurgic_science_pack, tech_logistics_5}
if mods[bobtech] then
    data_technology[vulcanus_transport_belt].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {transport_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }
else
    data_technology[vulcanus_transport_belt].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }
end

if mods[vulcanus_sulfuric_bacteria_mods] then
    data_technology["sulfuric-bacteria-melting"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }
end

if settings.startup[setting_early_cliff_explosives].value then
    data_technology[cliff_explosives].prerequisites = {explosives, "bob-fluid-barrel-processing", military_science_pack, tech_stone_smelting_1}
    data_technology[cliff_explosives].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1}
    }
else
    data_technology[cliff_explosives].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }
end

table.insert(data_technology[low_density_structure .. _productivity].unit.ingredients, {utility_science_pack, 1})
table.insert(data_technology[low_density_structure .. _productivity].unit.ingredients, {space_science_pack, 1})