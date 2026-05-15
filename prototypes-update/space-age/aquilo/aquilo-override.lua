-- FLUORINE
data_fluid[fluorine].localised_name = {"fluid-name.fluorine-gas"}
data_fluid[fluorine].localised_description = show_formula and {chemical_formula, "F[font=default-tiny-bold]2[/font]"} or nil
data_fluid[fluorine].subgroup = is_aquilo_fluorine
data_fluid[fluorine].order = a

data_fluid[fluoroketone_hot].localised_description = show_formula and {chemical_formula, "С[font=default-tiny-bold]6[/font]F[font=default-tiny-bold]12[/font]O"} or nil
data_fluid[fluoroketone_hot].subgroup = is_aquilo_fluorine
data_fluid[fluoroketone_hot].order = h

data_fluid[fluoroketone_cold].localised_description = show_formula and {chemical_formula, "С[font=default-tiny-bold]6[/font]F[font=default-tiny-bold]12[/font]O"} or nil
data_fluid[fluoroketone_cold].subgroup = is_aquilo_fluorine
data_fluid[fluoroketone_cold].order = i

-- RECIPE
data_item[ice].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O"} or nil
data_item[ice].subgroup = is_aquilo_recipe
data_item[ice].order = a
data_item[ice].stack_size = 200

data_fluid[ammonia_solution].localised_name = {"fluid-name.ammonia-solution"}
data_fluid[ammonia_solution].localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]3(aq)[/font]"} or nil
data_fluid[ammonia_solution].subgroup = is_aquilo_recipe
data_fluid[ammonia_solution].order = b

local ammonia_solution_separation = "ammoniacal-solution-separation"
data_recipe[ammonia_solution_separation].localised_name = {"recipe-name.ammonia-solution-separation"}
data_recipe[ammonia_solution_separation].subgroup = is_aquilo_recipe
data_recipe[ammonia_solution_separation].icons = THREE_R_I(ammonia_solution, ice, ammonia_angels)
data_recipe[ammonia_solution_separation].order = b_a
data_recipe[ammonia_solution_separation].ingredients[1].amount = 60
data_recipe[ammonia_solution_separation].results[1].amount = 4
data_recipe[ammonia_solution_separation].results[2].amount = 60

local solid_fuel_from_ammonia = "solid-fuel-from-ammonia"
data_recipe[solid_fuel_from_ammonia].subgroup = is_aquilo_recipe
data_recipe[solid_fuel_from_ammonia].icons = THREE_I(ammonia_angels, crude_oil, solid_fuel)
data_recipe[solid_fuel_from_ammonia].order = b_b
data_recipe[solid_fuel_from_ammonia].energy_required = 1
data_recipe[solid_fuel_from_ammonia].ingredients[1].amount = 30
data_recipe[solid_fuel_from_ammonia].ingredients[2].amount = 15
data_recipe[solid_fuel_from_ammonia].results[1].amount = 2

local ammonia_rocket_fuel = "ammonia-rocket-fuel"
data_recipe[ammonia_rocket_fuel].subgroup = is_aquilo_recipe
data_recipe[ammonia_rocket_fuel].icons = BUILDING_R_I(rocket_fuel, planet_aquilo)
data_recipe[ammonia_rocket_fuel].order = b_c
data_recipe[ammonia_rocket_fuel].energy_required = 8
data_recipe[ammonia_rocket_fuel].ingredients[1].amount = 16
data_recipe[ammonia_rocket_fuel].ingredients[2].name = water_purified_angels
data_recipe[ammonia_rocket_fuel].ingredients[2].amount = 120
data_recipe[ammonia_rocket_fuel].ingredients[3].amount = 960
data_recipe[ammonia_rocket_fuel].surface_conditions = {{property = pressure, min = 300, max = 300}}

data_item[ice_platform].subgroup = is_aquilo_recipe
data_item[ice_platform].order = c
data_item[ice_platform].stack_size = 200
data_recipe[ice_platform].subgroup = is_aquilo_recipe
data_recipe[ice_platform].order = c
data_recipe[ice_platform].energy_required = 32
data_recipe[ice_platform].ingredients[1].amount = 480
data_recipe[ice_platform].ingredients[2].amount = 64

data_recipe[lithium].category = angels_advanced_chemistry
data_recipe[lithium].additional_categories = {cryogenics}
data_recipe[lithium].subgroup = is_aquilo_recipe
data_recipe[lithium].icons = BUILDING_R_I(lithium_chloride_angels, planet_aquilo)
data_recipe[lithium].order = d
data_recipe[lithium].energy_required = 16 -- 2Ho + 16H₂O(LiCl/Hg) + 6NH₃ + 16F₂ --> 4LiCl + 2Ho(NO₃)₃(aq) + 4H₂O + 32HF - 5H₂
data_recipe[lithium].ingredients =
{
    {type = fluid, name = water_thermal_angels, amount = 240},
    {type = item, name = holmium_powder, amount = 2},
    {type = fluid, name = ammonia_angels, amount = 90},
    {type = fluid, name = fluorine, amount = 240}
}
data_recipe[lithium].results =
{
    {type = item, name = lithium_chloride_angels, amount = 4},
    {type = item, name = ice, amount = 4},
    {type = fluid, name = holmium_nitrate_III_solution, amount = 15}, -- 30
    {type = fluid, name = hydrogen_fluoride_angels, amount = 240}, -- 480
    {type = fluid, name = hydrogen_angels, amount = 15} -- 75
}
data_recipe[lithium].main_product = lithium_chloride_angels
data_recipe[lithium].surface_conditions = {{property = pressure, min = 300, max = 300}}

data_recipe[lithium_plate].subgroup = is_aquilo_recipe
data_recipe[lithium_plate].icons = TWO_I(lithium_chloride_angels, lithium_bob)
data_recipe[lithium_plate].order = e
data_recipe[lithium_plate].energy_required = 8
data_recipe[lithium_plate].surface_conditions = {{property = pressure, min = 300, max = 300}}

data_tool[cryogenic_science_pack].subgroup = is_aquilo_recipe
data_tool[cryogenic_science_pack].order = f
data_recipe[cryogenic_science_pack].subgroup = is_aquilo_recipe
data_recipe[cryogenic_science_pack].order = f
data_recipe[cryogenic_science_pack].energy_required = 16
data_recipe[cryogenic_science_pack].ingredients =
{
    {type = item, name = lithium_bob, amount = 4},
    {type = item, name = ice, amount = 16},
    {type = item, name = antimony_plate, amount = 8},
    {type = item, name = germanium_plate, amount = 8},
    {type = fluid, name = ammonia_solution, amount = 240},
    {type = fluid, name = fluoroketone_cold, amount = 60, ignored_by_stats = 30}
}
data_recipe[cryogenic_science_pack].results[2].amount = 30
data_recipe[cryogenic_science_pack].results[2].ignored_by_stats = 30
data_recipe[cryogenic_science_pack].results[2].ignored_by_productivity = 30

data_item[quantum_processor].subgroup = is_aquilo_recipe
data_item[quantum_processor].order = o
data_item[quantum_processor].stack_size = 200
data_recipe[quantum_processor].subgroup = is_aquilo_recipe
data_recipe[quantum_processor].order = o
data_recipe[quantum_processor].energy_required = 32 -- Alumina + Platinum plate + Holmium plate + Semiconductor + Superconductor + Carbon Fiber + Liquid nitrogen --> Quantum processor + Nitrogen gas
data_recipe[quantum_processor].ingredients =
{
    {type = item, name = aluminium_oxide, amount = 4},
    {type = item, name = platinum_plate, amount = 4},
    {type = item, name = holmium_plate, amount = 4},
    {type = item, name = semiconductor, amount = 8},
    {type = item, name = superconductor, amount = 8},
    {type = item, name = carbon_fiber, amount = 4},
    {type = fluid, name = nitrogen_liquid, amount = 60}
}
data_recipe[quantum_processor].results =
{
    {type = item, name = quantum_processor, amount = 1},
    {type = fluid, name = nitrogen_angels, amount = 30, ignored_by_productivity = 30}
}

-- BUILDING
data_item[cryogenic_plant].subgroup = is_aquilo_building
data_item[cryogenic_plant].order = a
data_item[cryogenic_plant].stack_size = 32
data_item[cryogenic_plant].weight = 31250
data_recipe[cryogenic_plant].subgroup = is_aquilo_building
data_recipe[cryogenic_plant].order = a
data_recipe[cryogenic_plant].energy_required = 8
data_recipe[cryogenic_plant].ingredients =
{
    {type = item, name = advanced_processing_unit, amount = 16},
    {type = item, name = niobium_titanium_plate, amount = 16},
    {type = item, name = niobium_iron_plate, amount = 16},
    {type = item, name = niobium_tungsten_molybdenum_plate, amount = 16},
    {type = item, name = reinforced_concrete, amount = 32},
    {type = item, name = superconductor, amount = 16},
    {type = item, name = semiconductor, amount = 16}
}
data_assembling[cryogenic_plant].subgroup = is_aquilo_building
data_assembling[cryogenic_plant].order = a
data_assembling[cryogenic_plant].energy_usage = 1140 .. kW
data_assembling[cryogenic_plant].energy_source.emissions_per_minute.pollution = 8
data_assembling[cryogenic_plant].energy_source.drain = 60 .. kW

-- POWER
data_item[fusion_reactor].subgroup = is_aquilo_power
data_item[fusion_reactor].order = a
data_item[fusion_reactor].stack_size = 4
data_item[fusion_reactor].weight = 250000
data_recipe[fusion_reactor].subgroup = is_aquilo_power
data_recipe[fusion_reactor].order = a
data_recipe[fusion_reactor].energy_required = 64
data_recipe[fusion_reactor].ingredients =
{
    {type = item, name = niobium_titanium_plate, amount = 256},
    {type = item, name = niobium_iron_bearing, amount = 256},
    {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 256},
    {type = item, name = niobium_titanium_cable, amount = 256},
    {type = item, name = quantum_processor, amount = 256},
    {type = item, name = superconductor, amount = 256},
    {type = item, name = semiconductor, amount = 256},
    {type = item, name = reinforced_concrete, amount = 256}
}
data_reactor_fusion[fusion_reactor].subgroup = is_aquilo_power
data_reactor_fusion[fusion_reactor].order = a
data_reactor_fusion[fusion_reactor].neighbour_bonus = 1.5
data_reactor_fusion[fusion_reactor].max_fluid_usage = 30/60
data_reactor_fusion[fusion_reactor].power_input = 10800 .. kW

local fusion_generator = "fusion-generator"
data_item[fusion_generator].subgroup = is_aquilo_power
data_item[fusion_generator].order = b
data_item[fusion_generator].stack_size = 8
data_item[fusion_generator].weight = 125000
data_recipe[fusion_generator].subgroup = is_aquilo_power
data_recipe[fusion_generator].order = b
data_recipe[fusion_generator].energy_required = 32
data_recipe[fusion_generator].ingredients =
{
    {type = item, name = niobium_titanium_plate, amount = 128},
    {type = item, name = niobium_iron_bearing, amount = 128},
    {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 128},
    {type = item, name = niobium_titanium_cable, amount = 128},
    {type = item, name = quantum_processor, amount = 64},
    {type = item, name = superconductor, amount = 128},
    {type = item, name = semiconductor, amount = 128},
    {type = item, name = reinforced_concrete, amount = 128}
}
data_generator_fusion[fusion_generator].subgroup = is_aquilo_power
data_generator_fusion[fusion_generator].order = b
data_generator_fusion[fusion_generator].max_fluid_usage = 15/60
data_generator_fusion[fusion_generator].energy_source.output_flow_limit = 86400 .. kW

local fusion_plasma = "fusion-plasma"
data_fluid[fusion_plasma].subgroup = is_aquilo_power
data_fluid[fusion_plasma].order = c
data_fluid[fusion_plasma].heat_capacity = ((25 / 7500) * 1.728) .. kJ

local fusion_power_cell = "fusion-power-cell"
data_item[fusion_power_cell].subgroup = is_aquilo_power
data_item[fusion_power_cell].order = d
data_item[fusion_power_cell].fuel_value = (172800 * 512) .. kJ
data_recipe[fusion_power_cell].subgroup = is_aquilo_power
data_recipe[fusion_power_cell].order = d
data_recipe[fusion_power_cell].energy_required = 8
data_recipe[fusion_power_cell].ingredients =
{
    {type = item, name = muon_fusion_catalyst, amount = 1},
    {type = item, name = lithium_bob, amount = 8},
    {type = item, name = tungsten_plate_bob, amount = 8},
    {type = item, name = lead_plate_bob, amount = 32},
    {type = item, name = holmium_plate, amount = 8},
    {type = fluid, name = deuterium_angels, amount = 240},
    {type = fluid, name = tritium_gas, amount = 240}
}
data_recipe[fusion_power_cell].results[1].amount = 1

-- WAR
local railgun = "railgun"
data_gun[railgun].subgroup = is_aquilo_war
data_gun[railgun].order = a
data_gun[railgun].stack_size = 1
data_gun[railgun].weight = 1000000
data_gun[railgun].attack_parameters.range = 64
data_recipe[railgun].subgroup = is_aquilo_war
data_recipe[railgun].order = a
data_recipe[railgun].energy_required = 8
data_recipe[railgun].ingredients =
{
    {type = item, name = niobium_tungsten_molybdenum_plate, amount = 4},
    {type = item, name = superconductor, amount = 8},
    {type = item, name = niobium_titanium_cable, amount = 4},
    {type = item, name = quantum_processor, amount = 4},
    {type = fluid, name = fluoroketone_cold, amount = 15}
}

local railgun_turret = "railgun-turret"
data_item[railgun_turret].subgroup = is_aquilo_war
data_item[railgun_turret].order = b
data_item[railgun_turret].stack_size = 16
data_item[railgun_turret].weight = 62500
data_recipe[railgun_turret].subgroup = is_aquilo_war
data_recipe[railgun_turret].order = b
data_recipe[railgun_turret].energy_required = 16
data_recipe[railgun_turret].ingredients =
{
    {type = item, name = niobium_tungsten_molybdenum_plate, amount = 32},
    {type = item, name = niobium_iron_bearing, amount = 16},
    {type = item, name = niobium_titanium_cable, amount = 32},
    {type = item, name = superconductor, amount = 64},
    {type = item, name = quantum_processor, amount = 16},
    {type = item, name = carbon_fiber, amount = 32},
    {type = fluid, name = fluoroketone_cold, amount = 120}
}
data_ammo_turret[railgun_turret].subgroup = is_aquilo_war
data_ammo_turret[railgun_turret].order = b
data_ammo_turret[railgun_turret].attack_parameters.min_range = 8
data_ammo_turret[railgun_turret].attack_parameters.range = 64
data_ammo_turret[railgun_turret].attack_parameters.cooldown = 240
data_ammo_turret[railgun_turret].energy_source.buffer_capacity = 43200 .. kJ
data_ammo_turret[railgun_turret].energy_source.input_flow_limit = 43200 .. kW
data_ammo_turret[railgun_turret].energy_per_shot = 43200 .. kJ

local railgun_ammo = "railgun-ammo"
data_ammo[railgun_ammo].subgroup = is_aquilo_war
data_ammo[railgun_ammo].order = c
data_ammo[railgun_ammo].stack_size = 16
data_ammo[railgun_ammo].weight = 62500
data_recipe[railgun_ammo].subgroup = is_aquilo_war
data_recipe[railgun_ammo].order = c
data_recipe[railgun_ammo].energy_required = 16
data_recipe[railgun_ammo].ingredients =
{
    {type = item, name = tungsten_plate_bob, amount = 2},
    {type = item, name = cobalt_steel_plate_bob, amount = 2},
    {type = item, name = platinum_cable, amount = 4}
}

data_item[fusion_reactor_eq].subgroup = is_aquilo_war
data_item[fusion_reactor_eq].order = d
data_item[fusion_reactor_eq].stack_size = 8
data_item[fusion_reactor_eq].weight = 125000
data_recipe[fusion_reactor_eq].subgroup = is_aquilo_war
data_recipe[fusion_reactor_eq].order = d
data_recipe[fusion_reactor_eq].energy_required = 32
data_recipe[fusion_reactor_eq].ingredients =
{
    {type = item, name = fission_reactor_4, amount = 1},
    {type = item, name = niobium_tungsten_molybdenum_plate, amount = 64},
    {type = item, name = niobium_titanium_cable, amount = 128},
    {type = item, name = quantum_processor, amount = 64},
    {type = item, name = superconductor, amount = 32},
    {type = item, name = semiconductor, amount = 32},
    {type = item, name = fusion_power_cell, amount = 8},
    {type = item, name = supercapacitor, amount = 16},
    {type = item, name = carbon_fiber, amount = 64}
}
data_generator_equipment[fusion_reactor_eq].power = 3000 .. kW

bobmods.lib.recipe.update_recycling_recipe
({
    ice_platform,
    quantum_processor,
    heating_tower,
    cryogenic_plant,
    fusion_reactor,
    fusion_generator,
    railgun,
    railgun_turret,
    railgun_ammo,
    fusion_reactor_eq
})