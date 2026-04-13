local kW = "kW"
local kJ = "kJ"
-- SCRAP
data_item[scrap].subgroup = is_scrap
data_item[scrap].order = a
data_item[scrap].stack_size = 200

local scrap_recycling = "scrap-recycling"
data_recipe[scrap_recycling].subgroup = is_scrap
data_recipe[scrap_recycling].icons = RECYCLING_I(recycling_png, scrap)
data_recipe[scrap_recycling].order = a_b
data_recipe[scrap_recycling].energy_required = 0.5
data_recipe[scrap_recycling].results =
{
    -- 0
    {type = item, name = iron_gear_wheel,            amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false},
    {type = item, name = steel_gear_wheel,           amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false},
    {type = item, name = brass_gear_wheel,           amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false},
    {type = item, name = ceramic_gear_wheel,         amount = 1, probability = 0.10, show_details_in_recipe_tooltip = false},
    {type = item, name = cobalt_steel_gear_wheel,    amount = 1, probability = 0.10, show_details_in_recipe_tooltip = false},
    {type = item, name = titanium_gear_wheel,        amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = nitinol_gear_wheel,         amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    --{type = item, name = copper_tungsten_gear_wheel, amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = steel_bearing,              amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = brass_bearing,              amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false}, -- can be turned off
    -- 10
    {type = item, name = ceramic_bearing,            amount = 1, probability = 0.10, show_details_in_recipe_tooltip = false},
    {type = item, name = cobalt_steel_bearing,       amount = 1, probability = 0.10, show_details_in_recipe_tooltip = false},
    {type = item, name = titanium_bearing,           amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = nitinol_bearing,            amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = copper_tungsten_bearing,    amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = battery_lead_acid,          amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
    {type = item, name = battery_lithium_ion,        amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
    {type = item, name = battery_silver_zinc,        amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
    {type = item, name = low_density_structure,      amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
    {type = item, name = heat_shielding_tile,        amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
    -- 20
    {type = item, name = basic_circuit_board,        amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = electronic_circuit,         amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
    {type = item, name = advanced_circuit,           amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false},
    {type = item, name = processing_unit,            amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
    {type = item, name = advanced_processing_unit,   amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
    {type = item, name = copper_cable,               amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false},
    {type = item, name = tin_cable,                  amount = 1, probability = 0.03, show_details_in_recipe_tooltip = false},
    {type = item, name = silver_cable,               amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
    {type = item, name = gold_cable,                 amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
    --{type = item, name = platinum_cable,             amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false}, -- can be turned off
    -- 30
    {type = item, name = tungsten_plate_bob,         amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = glass_bob,                  amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false},
    {type = item, name = concrete,                   amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = refined_concrete,           amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = clay_brick,                 amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = concrete_brick,             amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = reinforced_concrete_brick,  amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = bronze_plate_bob,           amount = 1, probability = 0.15, show_details_in_recipe_tooltip = false},
    {type = item, name = invar_plate_bob,            amount = 1, probability = 0.10, show_details_in_recipe_tooltip = false},
    {type = item, name = wood,                       amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
    -- 40
    {type = item, name = ice,                        amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = stone,                      amount = 1, probability = 0.04, show_details_in_recipe_tooltip = false},
    {type = item, name = holmium_ore,                amount = 1, probability = 0.01, show_details_in_recipe_tooltip = false},
    --{type = item, name = iron_plate,                 amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = steel_plate,                amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = copper_plate,               amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = lead_plate_bob,             amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = tin_plate_bob,              amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = silicon_mono,               amount = 1, probability = 0.15, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = nickel_plate_bob,           amount = 1, probability = 0.15, show_details_in_recipe_tooltip = false}, -- can be turned off
    -- 50
    --{type = item, name = aluminium_plate_bob,        amount = 1, probability = 0.15, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = zinc_plate_bob,             amount = 1, probability = 0.15, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = silver_plate_bob,           amount = 1, probability = 0.15, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = titanium_plate_bob,         amount = 1, probability = 0.10, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = gold_plate_bob,             amount = 1, probability = 0.10, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = tungsten_carbide_bob,       amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false}, -- can be turned off
    {type = item, name = copper_tungsten_plate_bob,  amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = item, name = platinum_plate,             amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    --{type = item, name = brass_plate_bob,            amount = 1, probability = 0.10, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = cobalt_steel_plate_bob,     amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false}, -- can be turned off
    -- 60
    --{type = item, name = nitinol_plate_bob,          amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false}, -- can be turned off
    --{type = item, name = stone_brick,          amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false}, -- can be turned off
}

-- HOLMIUM SMELTING
data_item[holmium_ore].localised_description = show_formula and {chemical_formula, "Ho"} or nil
data_item[holmium_ore].subgroup = is_holmium
data_item[holmium_ore].order = a
data_item[holmium_ore].stack_size = 200

-- HOLMIUM CASTING
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
data_recipe[superconductor].order = a
data_recipe[superconductor].energy_required = 4
data_recipe[superconductor].ingredients =
{
    {type = item, name = platinum_plate, amount = 4},
    {type = item, name = plastic, amount = 4},
    {type = item, name = holmium_plate, amount = 4},
    {type = fluid, name = fuel_oil_angels, amount = 60}
}

data_fluid[electrolyte].subgroup = is_fulgora_recipe
data_fluid[electrolyte].order = b
data_recipe[electrolyte].category = angels_advanced_chemistry
data_recipe[electrolyte].subgroup = is_fulgora_recipe
data_recipe[electrolyte].icons = FOUR_I(nitric_acid_angels, sulfuric_acid_angels, hydrochloric_acid_angels, electrolyte)
data_recipe[electrolyte].order = b
data_recipe[electrolyte].energy_required = 4
data_recipe[electrolyte].ingredients =
{
    {type = fluid, name = nitric_acid_angels, amount = 15},
    {type = fluid, name = sulfuric_acid_angels, amount = 15},
    {type = fluid, name = hydrochloric_acid_angels, amount = 15}
}
data_recipe[electrolyte].results[1].amount = 60
data_recipe[electrolyte].allow_quality = false

data_item[supercapacitor].subgroup = is_fulgora_recipe
data_item[supercapacitor].order = c
data_item[supercapacitor].stack_size = 200
data_recipe[supercapacitor].subgroup = is_fulgora_recipe
data_recipe[supercapacitor].order = c
data_recipe[supercapacitor].energy_required = 8
data_recipe[supercapacitor].ingredients =
{
    {type = item, name = battery_silver_zinc, amount = 4},
    {type = item, name = advanced_processing_unit, amount = 16},
    {type = item, name = holmium_plate, amount = 8},
    {type = item, name = superconductor, amount = 8},
    {type = fluid, name = electrolyte, amount = 60}
}

data_tool[electromagnetic_science_pack].subgroup = is_fulgora_recipe
data_tool[electromagnetic_science_pack].order = d
data_recipe[electromagnetic_science_pack].subgroup = is_fulgora_recipe
data_recipe[electromagnetic_science_pack].order = d
data_recipe[electromagnetic_science_pack].energy_required = 8
data_recipe[electromagnetic_science_pack].ingredients =
{
    {type = item, name = accumulator_3, amount = 1},
    {type = item, name = supercapacitor, amount = 1},
    {type = fluid, name = electrolyte, amount = 30},
    {type = fluid, name = holmium_chloride_solution, amount = 30}
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
    {type = item, name = copper_tungsten_gear_wheel, amount = 32},
    {type = item, name = advanced_processing_unit, amount = 8},
    {type = item, name = platinum_plate, amount = 16},
    {type = item, name = copper_tungsten_plate_bob, amount = 16},
    {type = item, name = concrete, amount = 16}
}
data_furnace[recycler].subgroup = is_fulgora_building
data_furnace[recycler].order = a
data_furnace[recycler].energy_usage = 225 .. kW
data_furnace[recycler].energy_source.drain = 15 .. kW
data_furnace[recycler].energy_source.emissions_per_minute.pollution = 4
data_furnace[recycler].result_inventory_size = 60

local electromagnetic_plant = "electromagnetic-plant"
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
    {type = item, name = platinum_plate, amount = 64},
    {type = item, name = refined_concrete, amount = 64},
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
    {type = item, name = refined_concrete, amount = 4}
}
data_lightning_attractor[lightning_rod].subgroup = is_fulgora_building
data_lightning_attractor[lightning_rod].order = c

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
    {type = item, name = accumulator_3, amount = 1},
    {type = item, name = lightning_rod, amount = 1},
    {type = item, name = supercapacitor, amount = 8},
    {type = fluid, name = electrolyte, amount = 60}
}
data_lightning_attractor[lightning_collector].subgroup = is_fulgora_building
data_lightning_attractor[lightning_collector].order = d

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
    {type = fluid, name = electrolyte, amount = 480}
}
data_electric_turret[tesla_turret].subgroup = is_fulgora_war
data_electric_turret[tesla_turret].order = c
data_electric_turret[tesla_turret].energy_source.buffer_capacity = 9600 .. kJ
data_electric_turret[tesla_turret].energy_source.input_flow_limit = 4800 .. kW
data_electric_turret[tesla_turret].energy_source.drain = nil
data_electric_turret[tesla_turret].attack_parameters.range = 32
data_electric_turret[tesla_turret].attack_parameters.ammo_type.energy_consumption = 4800 .. kJ

local mech_armor_equipment_grid = "mech-armor-equipment-grid"
local new_equipment_grid = table.deepcopy(data_equipment_grid["power-armor-equipment-grid-mk5"])
new_equipment_grid.name = mech_armor_equipment_grid
new_equipment_grid.width = 16
new_equipment_grid.height = 16
data:extend{new_equipment_grid}

data_armor[mech_armor].subgroup = is_fulgora_war
data_armor[mech_armor].order = d
data_armor[mech_armor].equipment_grid = mech_armor_equipment_grid
data_armor[mech_armor].inventory_size_bonus = 70
data_recipe[mech_armor].subgroup = is_fulgora_war
data_recipe[mech_armor].order = d
data_recipe[mech_armor].energy_required = 64
data_recipe[mech_armor].ingredients =
{
    {type = item, name = advanced_processing_unit, amount = 128},
    {type = item, name = power_armor_5, amount = 1},
    {type = item, name = holmium_plate, amount = 64},
    {type = item, name = superconductor, amount = 64},
    {type = item, name = supercapacitor, amount = 64}
}

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