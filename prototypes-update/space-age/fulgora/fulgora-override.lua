-- SCRAP
data_item[scrap].subgroup = is_scrap
data_item[scrap].order = a
data_item[scrap].stack_size = 200

local scrap_recycling = "scrap-recycling"
data_recipe[scrap_recycling].subgroup = is_scrap
data_recipe[scrap_recycling].icons = RECYCLING_I(recycling_png, scrap)
data_recipe[scrap_recycling].order = a_a
data_recipe[scrap_recycling].energy_required = 0.25 -- Scrap --> Construction scrap + Machinery scrap
data_recipe[scrap_recycling].results =
{
    {type = item, name = construction_scrap, amount = 1, probability = 0.5, show_details_in_recipe_tooltip = false},
    {type = item, name = machinery_scrap, amount = 1, probability = 0.5, show_details_in_recipe_tooltip = false}
}

-- HOLMIUM SMELTING
local is_holmium = "is-holmium"

data_item[holmium_ore].localised_description = show_formula and {chemical_formula, "Ho"} or nil
data_item[holmium_ore].subgroup = is_holmium
data_item[holmium_ore].order = a
data_item[holmium_ore].stack_size = 200

-- HOLMIUM CASTING
local is_holmium_casting = "is-holmium-casting"

data_item[holmium_plate].localised_description = show_formula and {chemical_formula, "Ho"} or nil
data_item[holmium_plate].subgroup = is_holmium_casting
data_item[holmium_plate].order = c
data_item[holmium_plate].stack_size = 200
data_recipe[holmium_plate].category = angels_casting_4
data_recipe[holmium_plate].subgroup = is_holmium_casting
data_recipe[holmium_plate].icons = TWO_I(holmium_molten, holmium_plate)
data_recipe[holmium_plate].order = c
data_recipe[holmium_plate].energy_required = 4
data_recipe[holmium_plate].ingredients = {{type = fluid, name = holmium_molten, amount = 60}}
data_recipe[holmium_plate].results[1].amount = 4
data_recipe[holmium_plate].allow_quality = false

-- RECIPE
data_item[superconductor].subgroup = is_fulgora_recipe
data_item[superconductor].order = a
data_recipe[superconductor].subgroup = is_fulgora_recipe
data_recipe[superconductor].icons = R_P_I(superconductor, nil, nil, number_1)
data_recipe[superconductor].order = a
data_recipe[superconductor].energy_required = 4
data_recipe[superconductor].ingredients =
{
    {type = item, name = platinum_cable, amount = 4},
    {type = item, name = gold_cable, amount = 4},
    {type = item, name = plastic, amount = 4},
    {type = item, name = holmium_plate, amount = 4},
    {type = fluid, name = electrolyte, amount = 60}
}
data_recipe[superconductor].results =
{
    {type = item, name = superconductor, amount = 2},
    {type = fluid, name = electrolyte, amount = 30, ignored_by_productivity = 30}
}
data_recipe[superconductor].main_product = superconductor

data_item[supercapacitor].subgroup = is_fulgora_recipe
data_item[supercapacitor].order = b
data_item[supercapacitor].stack_size = 200
data_recipe[supercapacitor].subgroup = is_fulgora_recipe
data_recipe[supercapacitor].order = b
data_recipe[supercapacitor].energy_required = 8
data_recipe[supercapacitor].ingredients =
{
    {type = item, name = battery_graphene, amount = 4},
    {type = item, name = holmium_plate, amount = 8},
    {type = item, name = superconductor, amount = 8},
    {type = fluid, name = electrolyte, amount = 60}
}

data_fluid[electrolyte].subgroup = is_fulgora_recipe
data_fluid[electrolyte].order = c
data_recipe[electrolyte].category = angels_advanced_chemistry
data_recipe[electrolyte].subgroup = is_fulgora_recipe
data_recipe[electrolyte].icons = FOUR_I(nitric_acid_angels, sulfuric_acid_angels, hydrochloric_acid_angels, electrolyte)
data_recipe[electrolyte].order = c
data_recipe[electrolyte].energy_required = 4
data_recipe[electrolyte].ingredients =
{
    {type = fluid, name = nitric_acid_angels, amount = 15},
    {type = fluid, name = sulfuric_acid_angels, amount = 15},
    {type = fluid, name = hydrochloric_acid_angels, amount = 15}
}
data_recipe[electrolyte].results[1].amount = 60
data_recipe[electrolyte].allow_quality = false

data_tool[electromagnetic_science_pack].subgroup = is_fulgora_recipe
data_tool[electromagnetic_science_pack].order = d
data_recipe[electromagnetic_science_pack].subgroup = is_fulgora_recipe
data_recipe[electromagnetic_science_pack].order = d
data_recipe[electromagnetic_science_pack].energy_required = 8
data_recipe[electromagnetic_science_pack].ingredients =
{
    {type = item, name = accumulator_4, amount = 1},
    {type = item, name = supercapacitor, amount = 1},
    {type = item, name = holmium_plate, amount = 2},
    {type = fluid, name = electrolyte, amount = 30}
}

-- BUILDING
local recycler = "recycler"
data_item[recycler].subgroup = is_fulgora_building
data_item[recycler].order = a
data_item[recycler].stack_size = 32
data_item[recycler].weight = 31250
data_recipe[recycler].subgroup = is_fulgora_building
data_recipe[recycler].order = a
data_recipe[recycler].energy_required = 4
data_recipe[recycler].ingredients =
{
    {type = item, name = molybdenum_gear_wheel, amount = 32},
    {type = item, name = advanced_processing_unit, amount = 8},
    {type = item, name = molybdenum_plate, amount = 16},
    {type = item, name = molybdenum_rhenium_plate, amount = 16},
    {type = item, name = reinforced_concrete, amount = 16}
}
data_furnace[recycler].subgroup = is_fulgora_building
data_furnace[recycler].order = a
data_furnace[recycler].energy_usage = 225 .. kW
data_furnace[recycler].energy_source.drain = 15 .. kW
data_furnace[recycler].energy_source.emissions_per_minute.pollution = 4
data_furnace[recycler].result_inventory_size = 80

data_item[electromagnetic_plant].subgroup = is_fulgora_building
data_item[electromagnetic_plant].order = b
data_item[electromagnetic_plant].stack_size = 32
data_item[electromagnetic_plant].weight = 31250
data_recipe[electromagnetic_plant].subgroup = is_fulgora_building
data_recipe[electromagnetic_plant].order = b
data_recipe[electromagnetic_plant].energy_required = 8
data_recipe[electromagnetic_plant].ingredients =
{
    {type = item, name = advanced_processing_unit, amount = 64},
    {type = item, name = molybdenum_rhenium_plate, amount = 64},
    {type = item, name = reinforced_concrete, amount = 64},
    {type = item, name = holmium_plate, amount = 128}
}
data_assembling[electromagnetic_plant].subgroup = is_fulgora_building
data_assembling[electromagnetic_plant].order = b
data_assembling[electromagnetic_plant].crafting_speed = 4
data_assembling[electromagnetic_plant].module_slots = 4
data_assembling[electromagnetic_plant].energy_usage = 2340 .. kW
data_assembling[electromagnetic_plant].energy_source.drain = 60 .. kW
data_assembling[electromagnetic_plant].energy_source.emissions_per_minute.pollution = 0

local lightning_rod = "lightning-rod"
data_item[lightning_rod].subgroup = is_fulgora_building
data_item[lightning_rod].order = c
data_item[lightning_rod].stack_size = 32
data_item[lightning_rod].weight = 31250
data_recipe[lightning_rod].subgroup = is_fulgora_building
data_recipe[lightning_rod].order = c
data_recipe[lightning_rod].energy_required = 4
data_recipe[lightning_rod].ingredients =
{
    {type = item, name = platinum_plate, amount = 8},
    {type = item, name = platinum_cable, amount = 16},
    {type = item, name = steel_rod, amount = 8},
    {type = item, name = advanced_processing_unit, amount = 1},
    {type = item, name = reinforced_concrete, amount = 4}
}
data_lightning_attractor[lightning_rod].subgroup = is_fulgora_building
data_lightning_attractor[lightning_rod].order = c
data_lightning_attractor[lightning_rod].efficiency = 0.25

local lightning_collector = "lightning-collector"
data_item[lightning_collector].subgroup = is_fulgora_building
data_item[lightning_collector].order = d
data_item[lightning_collector].stack_size = 32
data_item[lightning_collector].weight = 31250
data_recipe[lightning_collector].subgroup = is_fulgora_building
data_recipe[lightning_collector].order = d
data_recipe[lightning_collector].energy_required = 4
data_recipe[lightning_collector].ingredients =
{
    {type = item, name = accumulator_4, amount = 1},
    {type = item, name = lightning_rod, amount = 1},
    {type = item, name = supercapacitor, amount = 8},
    {type = fluid, name = electrolyte, amount = 60}
}
data_lightning_attractor[lightning_collector].subgroup = is_fulgora_building
data_lightning_attractor[lightning_collector].order = d
data_lightning_attractor[lightning_collector].efficiency = 0.5

-- WAR
local teslagun = "teslagun"
data_gun[teslagun].subgroup = is_fulgora_war
data_gun[teslagun].order = a
data_gun[teslagun].stack_size = 1
data_gun[teslagun].weight = 1000000
data_gun[teslagun].attack_parameters.range = 16
data_recipe[teslagun].subgroup = is_fulgora_war
data_recipe[teslagun].order = a
data_recipe[teslagun].energy_required = 32
data_recipe[teslagun].ingredients =
{
    {type = item, name = plastic, amount = 32},
    {type = item, name = holmium_plate, amount = 8},
    {type = item, name = superconductor, amount = 8},
    {type = fluid, name = electrolyte, amount = 120}
}

local tesla_ammo = "tesla-ammo"
data_ammo[tesla_ammo].subgroup = is_fulgora_war
data_ammo[tesla_ammo].order = b
data_ammo[tesla_ammo].stack_size = 64
data_ammo[tesla_ammo].weight = 15625
data_recipe[tesla_ammo].subgroup = is_fulgora_war
data_recipe[tesla_ammo].order = b
data_recipe[tesla_ammo].energy_required = 32
data_recipe[tesla_ammo].ingredients =
{
    {type = item, name = plastic, amount = 8},
    {type = item, name = holmium_plate, amount = 2},
    {type = item, name = supercapacitor, amount = 2},
    {type = fluid, name = electrolyte, amount = 30}
}

local tesla_turret = "tesla-turret"
data_item[tesla_turret].subgroup = is_fulgora_war
data_item[tesla_turret].order = c
data_recipe[tesla_turret].subgroup = is_fulgora_war
data_recipe[tesla_turret].order = c
data_recipe[tesla_turret].ingredients =
{
    {type = item, name = advanced_processing_unit, amount = 8},
    {type = item, name = teslagun, amount = 1},
    {type = item, name = superconductor, amount = 64},
    {type = item, name = supercapacitor, amount = 8},
    {type = item, name = molybdenum_rhenium_plate, amount = 64},
    {type = fluid, name = electrolyte, amount = 480}
}
data_electric_turret[tesla_turret].subgroup = is_fulgora_war
data_electric_turret[tesla_turret].order = c
data_electric_turret[tesla_turret].energy_source.buffer_capacity = 9600 .. kJ
data_electric_turret[tesla_turret].energy_source.input_flow_limit = 4800 .. kW
data_electric_turret[tesla_turret].energy_source.drain = nil
data_electric_turret[tesla_turret].attack_parameters.range = 32
data_electric_turret[tesla_turret].attack_parameters.ammo_type.energy_consumption = 4800 .. kJ

data_armor[mech_armor].subgroup = is_fulgora_war
data_armor[mech_armor].order = d
if mods[bobequipment] then
    data_armor[mech_armor].equipment_grid = mech_armor_equipment_grid
    data_armor[mech_armor].inventory_size_bonus = 70
end
data_recipe[mech_armor].subgroup = is_fulgora_war
data_recipe[mech_armor].order = d
data_recipe[mech_armor].energy_required = 64
if mods[bobequipment] then
    data_recipe[mech_armor].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 128},
        {type = item, name = power_armor_5, amount = 1},
        {type = item, name = holmium_plate, amount = 64},
        {type = item, name = superconductor, amount = 64},
        {type = item, name = supercapacitor, amount = 64}
    }
else
    data_recipe[mech_armor].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 128},
        {type = item, name = power_armor_2, amount = 1},
        {type = item, name = holmium_plate, amount = 64},
        {type = item, name = superconductor, amount = 64},
        {type = item, name = supercapacitor, amount = 64}
    }
end

bobmods.lib.recipe.update_recycling_recipe
({
    supercapacitor,
    recycler,
    electromagnetic_plant,
    lightning_rod,
    lightning_collector,
    teslagun,
    tesla_ammo,
    tesla_turret,
    mech_armor
})

-- TECHNOLOGY
table.insert(data_technology[planet_discovery_fulgora].prerequisites, tech_electric_energy_accumulators_4)
table.insert(data_technology[planet_discovery_fulgora].effects, {type = unlock_recipe, recipe = steel_rod})
table.insert(data_technology[planet_discovery_fulgora].effects, {type = unlock_recipe, recipe = fulgora_air})
table.insert(data_technology[planet_discovery_fulgora].effects, {type = unlock_recipe, recipe = fulgora_air_separation})
data_technology[planet_discovery_fulgora].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1}
}

table.insert(data_technology[recycling].effects, {type = unlock_recipe, recipe = construction_scrap_recycling})
table.insert(data_technology[recycling].effects, {type = unlock_recipe, recipe = machinery_scrap_recycling})

data_technology[tech_holmium_processing].prerequisites = {tech_brannerite_processing_1}
data_technology[tech_holmium_processing].effects =
{
    {type = unlock_recipe, recipe = calcium_chloride_solution_from_lime},
    {type = unlock_recipe, recipe = calcium},
    {type = unlock_recipe, recipe = holmium_chloride_III_solution},
    {type = unlock_recipe, recipe = holmium_fluoride_III},
    {type = unlock_recipe, recipe = holmium_cathode},
    {type = unlock_recipe, recipe = holmium_ingot},
    {type = unlock_recipe, recipe = holmium_powder},
    {type = unlock_recipe, recipe = holmium_molten},
    {type = unlock_recipe, recipe = holmium_plate}
}
data_technology[tech_holmium_processing].research_trigger =
{
    type = craft_item,
    item = holmium_ore,
    count = 256
}

data_technology[electromagnetic_science_pack].research_trigger =
{
    type = craft_item,
    item = supercapacitor,
    count = 256
}

if mods[bobequipment] then
    data_technology[mech_armor].prerequisites = {electromagnetic_science_pack, "bob-power-armor-5"}
end
table.insert(data_technology[mech_armor].unit.ingredients, {production_science_pack, 1})