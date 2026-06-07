-- HOROGON BALANCE
local function setting_bool(name)
    return settings.startup[name] and settings.startup[name].value
end

local function setting_number(name, default_value)
    if settings.startup[name] then return settings.startup[name].value end
    return default_value
end

local function add_to_list(list, name)
    if not name then return end
    for _, value in pairs(list) do
        if value == name then return end
    end
    table.insert(list, name)
end

local function add_prerequisite(tech_name, prerequisite)
    local tech = data_technology[tech_name]
    if not tech or not data_technology[prerequisite] then return end
    tech.prerequisites = tech.prerequisites or {}
    add_to_list(tech.prerequisites, prerequisite)
end

local function add_science_pack(tech_name, science_pack)
    local tech = data_technology[tech_name]
    if not tech or not tech.unit or not data_tool[science_pack] then return end
    tech.unit.ingredients = tech.unit.ingredients or {}
    for _, ingredient in pairs(tech.unit.ingredients) do
        if ingredient[1] == science_pack or ingredient.name == science_pack then return end
    end
    table.insert(tech.unit.ingredients, {science_pack, 1})
end

local function multiply_technology_count(tech_name, multiplier, minimum_count)
    local tech = data_technology[tech_name]
    if not tech or not tech.unit or not tech.unit.count then return end
    local count = math.ceil(tech.unit.count * multiplier)
    if minimum_count then count = math.max(count, minimum_count) end
    tech.unit.count = count
end

local function set_technology_count(tech_name, count)
    local tech = data_technology[tech_name]
    if tech and tech.unit then tech.unit.count = count end
end

local function set_technology_count_from_fraction(tech_name, source_tech_name, fraction)
    local source = data_technology[source_tech_name]
    if source and source.unit and source.unit.count then
        set_technology_count(tech_name, math.ceil(source.unit.count * fraction))
    end
end

local function set_technology_count_from_value(tech_name, count)
    set_technology_count(tech_name, math.ceil(count))
end

local function set_technology_count_for_names(names, count)
    for _, tech_name in pairs(names) do
        set_technology_count_from_value(tech_name, count)
    end
end

local function add_recipe_ingredient(recipe_name, ingredient_type, ingredient_name, amount)
    local recipe_data = data_recipe[recipe_name]
    if not recipe_data then return end
    if ingredient_type == item and not data_item[ingredient_name] and not data_tool[ingredient_name] then return end
    if ingredient_type == fluid and not data_fluid[ingredient_name] then return end

    recipe_data.ingredients = recipe_data.ingredients or {}
    for _, ingredient in pairs(recipe_data.ingredients) do
        if ingredient.name == ingredient_name or ingredient[1] == ingredient_name then
            ingredient.amount = math.max(ingredient.amount or ingredient[2] or 0, amount)
            ingredient[1] = nil
            ingredient[2] = nil
            ingredient.type = ingredient.type or ingredient_type
            ingredient.name = ingredient.name or ingredient_name
            return
        end
    end
    table.insert(recipe_data.ingredients, {type = ingredient_type, name = ingredient_name, amount = amount})
end

local function add_item_ingredient(recipe_name, ingredient_name, amount)
    add_recipe_ingredient(recipe_name, item, ingredient_name, amount)
end

local default_tier_multipliers =
{
    [1] = 1,
    [2] = 1,
    [3] = 1,
    [4] = 1,
    [5] = 1,
    [6] = 1
}

local function tier_multiplier(setting_prefix, level)
    return setting_number(setting_prefix .. level, default_tier_multipliers[level] or 1)
end

local function apply_tier_multipliers(technologies, setting_prefix)
    local applied = {}
    for _, tech in pairs(technologies) do
        if tech.name and not applied[tech.name] then
            multiply_technology_count(tech.name, tier_multiplier(setting_prefix, tech.level))
            applied[tech.name] = true
        end
    end
end

local logistics_technologies =
{
    -- Belts, robots, trains and other transport chains.
    {name = tech_logistics_1, level = 1},
    {name = tech_logistics_2, level = 2},
    {name = tech_logistics_3, level = 3},
    {name = tech_logistics_4, level = 4},
    {name = tech_logistics_5, level = 5},
    {name = vulcanus_transport_belt, level = 5},
    {name = tech_robotics_1, level = 1},
    {name = tech_robotics_2, level = 2},
    {name = tech_robotics_3, level = 3},
    {name = tech_robotics_4, level = 4},
    {name = tech_robots_1, level = 1},
    {name = tech_robots_2, level = 2},
    {name = tech_robots_3, level = 3},
    {name = tech_robots_4, level = 4},
    {name = "railway", level = 1},
    {name = "automated-rail-transportation", level = 1},
    {name = "rail-signals", level = 1},
    {name = "bob-railway-2", level = 2},
    {name = "bob-railway-3", level = 3},
    {name = "bob-cargo-wagon-2", level = 2},
    {name = "bob-cargo-wagon-3", level = 3},
    {name = "bob-fluid-wagon-2", level = 2},
    {name = "bob-fluid-wagon-3", level = 3},
    {name = "bob-armoured-railway-1", level = 2},
    {name = "bob-armoured-railway-2", level = 3},
    {name = "fluid-handling", level = 1},
    {name = "fluid-handling-1", level = 1},
    {name = "fluid-handling-2", level = 2},
    {name = "fluid-handling-3", level = 3},
    {name = "fluid-handling-4", level = 4},
    {name = "bob-fluid-handling", level = 1},
    {name = "bob-fluid-handling-1", level = 1},
    {name = "bob-fluid-handling-2", level = 2},
    {name = "bob-fluid-handling-3", level = 3},
    {name = "bob-fluid-handling-4", level = 4},
    {name = "angels-fluid-control", level = 1},
    {name = "angels-fluid-control-1", level = 1},
    {name = "angels-fluid-control-2", level = 2},
    {name = "angels-fluid-control-3", level = 3},
    {name = "angels-fluid-control-4", level = 4},
    {name = "roboport", level = 1},
    {name = "bob-roboport-2", level = 2},
    {name = "bob-roboport-3", level = 3},
    {name = "bob-roboport-4", level = 4},
    {name = "bob-robo-modular-1", level = 1},
    {name = "bob-robo-modular-2", level = 2},
    {name = "bob-robo-modular-3", level = 3},
    {name = "bob-robo-modular-4", level = 4},
    {name = "bob-robochests", level = 1},
    {name = "bob-robochests-1", level = 1},
    {name = "bob-robochests-2", level = 2},
    {name = "bob-robochests-3", level = 3},
    {name = "bob-robochests-4", level = 4},
    {name = "bob-roboports", level = 1},
    {name = "bob-roboports-1", level = 1},
    {name = "bob-roboports-2", level = 2},
    {name = "bob-roboports-3", level = 3},
    {name = "bob-roboports-4", level = 4}
}

local military_technologies =
{
    -- Combat, ammo, turrets, tanks and combat equipment.
    {name = tech_military_2, level = 2},
    {name = tech_military_3, level = 3},
    {name = tech_military_4, level = 4},
    {name = "rocketry", level = 2},
    {name = tech_uranium_ammo, level = 3},
    {name = atomic_rocket, level = 4},
    {name = "artillery", level = 4},
    {name = artillery_turret_2, level = 5},
    {name = artillery_turret_3, level = 6},
    {name = "bob-artillery-wagon-2", level = 5},
    {name = "bob-artillery-wagon-3", level = 6},
    {name = tank_1, level = 2},
    {name = tank_2, level = 3},
    {name = tank_3, level = 4},
    {name = "bob-tank-2", level = 3},
    {name = "bob-tank-3", level = 4},
    {name = "bob-tanks-2", level = 3},
    {name = "bob-tanks-3", level = 4},
    {name = "energy-shield-equipment", level = 1},
    {name = "energy-shield-mk2-equipment", level = 2},
    {name = "battery-equipment", level = 1},
    {name = "battery-mk2-equipment", level = 2},
    {name = "battery-mk3-equipment", level = 3},
    {name = "bob-battery-equipment-3", level = 3},
    {name = "bob-battery-equipment-4", level = 4},
    {name = "bob-battery-equipment-5", level = 5},
    {name = "bob-battery-equipment-6", level = 6},
    {name = "solar-panel-equipment", level = 1},
    {name = "bob-solar-panel-equipment-2", level = 2},
    {name = "bob-solar-panel-equipment-3", level = 3},
    {name = "bob-solar-panel-equipment-4", level = 4},
    {name = "exoskeleton-equipment", level = 2},
    {name = "bob-exoskeleton-equipment-2", level = 3},
    {name = "bob-exoskeleton-equipment-3", level = 4},
    {name = "night-vision-equipment", level = 1},
    {name = "bob-night-vision-equipment-2", level = 2},
    {name = "bob-night-vision-equipment-3", level = 3},
    {name = "personal-roboport-equipment", level = 1},
    {name = "personal-roboport-mk2-equipment", level = 2},
    {name = "bob-personal-roboport-mk3-equipment", level = 3},
    {name = "bob-personal-roboport-mk4-equipment", level = 4},
    {name = "bob-personal-roboport-modular-equipment-1", level = 1},
    {name = "bob-personal-roboport-modular-equipment-2", level = 2},
    {name = "bob-personal-roboport-modular-equipment-3", level = 3},
    {name = "bob-personal-roboport-modular-equipment-4", level = 4},
    {name = "defender", level = 2},
    {name = "distractor", level = 3},
    {name = "destroyer", level = 4},
    -- Laser drone is a T4 combat drone, but combat drones use +1 tier for scaling.
    {name = "bob-robot-laser-drones", level = 5},
    {name = "bob-robot-laser-drone", level = 5},
    {name = "bob-laser-robot", level = 5},
    {name = "bob-laser-robot-drones", level = 5},
    {name = "bob-laser-robot-drone", level = 5},
    {name = "gun-turret", level = 1},
    {name = "turrets", level = 1},
    {name = "bob-turrets-2", level = 2},
    {name = "bob-turrets-3", level = 3},
    {name = "bob-turrets-4", level = 4},
    {name = "bob-turrets-5", level = 5},
    {name = "bob-sniper-turrets-1", level = 2},
    {name = "bob-sniper-turrets-2", level = 3},
    {name = "bob-sniper-turrets-3", level = 4},
    {name = "bob-laser-turrets-2", level = 2},
    {name = "bob-laser-turrets-3", level = 3},
    {name = "bob-laser-turrets-4", level = 4},
    {name = "bob-laser-turrets-5", level = 5},
    {name = "bob-plasma-turrets-2", level = 2},
    {name = "bob-plasma-turrets-3", level = 3},
    {name = "bob-plasma-turrets-4", level = 4},
    {name = "bob-personal-laser-defense-equipment-2", level = 2},
    {name = "bob-personal-laser-defense-equipment-3", level = 3},
    {name = "bob-personal-laser-defense-equipment-4", level = 4},
    {name = "bob-personal-laser-defense-equipment-5", level = 5},
    {name = "bob-personal-laser-defense-equipment-6", level = 6},
    {name = "bob-vehicle-laser-defense-equipment-2", level = 2},
    {name = "bob-vehicle-laser-defense-equipment-3", level = 3},
    {name = "bob-vehicle-laser-defense-equipment-4", level = 4},
    {name = "bob-vehicle-laser-defense-equipment-5", level = 5},
    {name = "bob-vehicle-laser-defense-equipment-6", level = 6},
    {name = "bob-vehicle-big-turret-equipment-2", level = 2},
    {name = "bob-vehicle-big-turret-equipment-3", level = 3},
    {name = "bob-vehicle-big-turret-equipment-4", level = 4},
    {name = "bob-energy-shield-equipment-3", level = 3},
    {name = "bob-energy-shield-equipment-4", level = 4},
    {name = "bob-energy-shield-equipment-5", level = 5},
    {name = "bob-energy-shield-equipment-6", level = 6},
    {name = "bob-vehicle-shield-equipment-1", level = 1},
    {name = "bob-vehicle-shield-equipment-2", level = 2},
    {name = "bob-vehicle-shield-equipment-3", level = 3},
    {name = "bob-vehicle-shield-equipment-4", level = 4},
    {name = "bob-vehicle-shield-equipment-5", level = 5},
    {name = "bob-vehicle-shield-equipment-6", level = 6},
    {name = "bob-vehicle-fission-cell-equipment-1", level = 1},
    {name = "bob-vehicle-fission-cell-equipment-2", level = 2},
    {name = "bob-vehicle-fission-cell-equipment-3", level = 3},
    {name = "bob-vehicle-fission-cell-equipment-4", level = 4},
    {name = "bob-vehicle-fission-cell-equipment-5", level = 5},
    {name = "bob-vehicle-fission-cell-equipment-6", level = 6},
    {name = "bob-vehicle-fission-reactor-equipment-1", level = 1},
    {name = "bob-vehicle-fission-reactor-equipment-2", level = 2},
    {name = "bob-vehicle-fission-reactor-equipment-3", level = 3},
    {name = "bob-vehicle-fission-reactor-equipment-4", level = 4},
    {name = "bob-vehicle-fission-reactor-equipment-5", level = 5},
    {name = "bob-vehicle-fission-reactor-equipment-6", level = 6},
    {name = "bob-vehicle-battery-equipment-1", level = 1},
    {name = "bob-vehicle-battery-equipment-2", level = 2},
    {name = "bob-vehicle-battery-equipment-3", level = 3},
    {name = "bob-vehicle-battery-equipment-4", level = 4},
    {name = "bob-vehicle-battery-equipment-5", level = 5},
    {name = "bob-vehicle-battery-equipment-6", level = 6},
    {name = "bob-vehicle-solar-panel-equipment-1", level = 1},
    {name = "bob-vehicle-solar-panel-equipment-2", level = 2},
    {name = "bob-vehicle-solar-panel-equipment-3", level = 3},
    {name = "bob-vehicle-solar-panel-equipment-4", level = 4},
    {name = "bob-vehicle-solar-panel-equipment-5", level = 5},
    {name = "bob-vehicle-roboport-equipment-1", level = 1},
    {name = "bob-vehicle-roboport-equipment-2", level = 2},
    {name = "bob-vehicle-roboport-equipment-3", level = 3},
    {name = "bob-vehicle-roboport-equipment-4", level = 4},
    {name = "bob-vehicle-roboport-modular-equipment-1", level = 1},
    {name = "bob-vehicle-roboport-modular-equipment-2", level = 2},
    {name = "bob-vehicle-roboport-modular-equipment-3", level = 3},
    {name = "bob-vehicle-roboport-modular-equipment-4", level = 4}
}

local power_technologies =
{
    -- Generators, turbines, reactors, accumulators and power distribution.
    {name = boiler_1, level = 1},
    {name = boiler_2, level = 2},
    {name = boiler_3, level = 3},
    {name = boiler_4, level = 4},
    {name = boiler_5, level = 5},
    {name = boiler_6, level = 6},
    {name = steam_engine_1, level = 1},
    {name = steam_engine_2, level = 2},
    {name = steam_engine_3, level = 3},
    {name = steam_engine_4, level = 4},
    {name = steam_engine_5, level = 5},
    {name = steam_engine_6, level = 6},
    {name = tech_steam_turbine_1, level = 1},
    {name = steam_turbine_2, level = 2},
    {name = steam_turbine_3, level = 3},
    {name = steam_turbine_4, level = 4},
    {name = tech_solar_energy_1, level = 1},
    {name = tech_solar_energy_2, level = 2},
    {name = tech_solar_energy_3, level = 3},
    {name = tech_solar_energy_4, level = 4},
    {name = tech_electric_energy_accumulators_1, level = 1},
    {name = tech_electric_energy_accumulators_2, level = 2},
    {name = tech_electric_energy_accumulators_3, level = 3},
    {name = tech_electric_energy_accumulators_4, level = 4},
    {name = "electric-energy-distribution-1", level = 1},
    {name = "electric-energy-distribution-2", level = 2},
    {name = "bob-electric-pole-2", level = 2},
    {name = "bob-electric-pole-3", level = 3},
    {name = "bob-electric-pole-4", level = 4},
    {name = "bob-electric-substation-2", level = 2},
    {name = "bob-electric-substation-3", level = 3},
    {name = "bob-electric-substation-4", level = 4},
    {name = "bob-fluid-generator-1", level = 1},
    {name = "bob-fluid-generator-2", level = 2},
    {name = "bob-fluid-generator-3", level = 3},
    {name = "bob-hydrazine-generator", level = 4},
    {name = "bob-fission-reactor-equipment-2", level = 2},
    {name = "bob-fission-reactor-equipment-3", level = 3},
    {name = "bob-fission-reactor-equipment-4", level = 4},
    {name = "bob-heat-pipe-1", level = 1},
    {name = "bob-heat-pipe-2", level = 2},
    {name = "bob-heat-pipe-3", level = 3},
    {name = "bob-heat-pipe-4", level = 4},
    {name = "bob-heat-exchanger-1", level = 1},
    {name = "bob-heat-exchanger-2", level = 2},
    {name = "bob-heat-exchanger-3", level = 3},
    {name = "bob-heat-exchanger-4", level = 4}
}

local production_technologies =
{
    -- Assemblers, furnaces, drills and modules.
    {name = tech_automation_1, level = 1},
    {name = tech_automation_2, level = 2},
    {name = tech_automation_3, level = 3},
    {name = tech_automation_4, level = 4},
    {name = tech_automation_5, level = 5},
    {name = tech_automation_6, level = 6},
    {name = "bob-electronics-machine-1", level = 2},
    {name = "bob-electronics-machine-2", level = 3},
    {name = "bob-electronics-machine-3", level = 4},
    {name = "advanced-material-processing", level = 1},
    {name = "advanced-material-processing-2", level = 2},
    {name = "advanced-material-processing-3", level = 3},
    {name = tech_advanced_material_processing_4, level = 4},
    {name = tech_advanced_material_processing_5, level = 5},
    {name = "bob-steel-mixing-furnace", level = 1},
    {name = "bob-fluid-furnace", level = 1},
    {name = "bob-electric-mixing-furnace", level = 2},
    {name = "angels-multi-purpose-furnace-1", level = 2},
    {name = tech_multi_purpose_furnace_2, level = 2},
    {name = "angels-multi-purpose-furnace-2", level = 3},
    {name = tech_multi_purpose_furnace_3, level = 3},
    {name = "multi-purpose-furnace-3", level = 3},
    {name = tech_drills_2, level = 2},
    {name = tech_drills_3, level = 3},
    {name = tech_drills_4, level = 4},
    {name = tech_drills_5, level = 5},
    {name = tech_drills_6, level = 6},
    {name = "bob-area-mining-drill-1", level = 2},
    {name = "bob-area-mining-drill-2", level = 3},
    {name = "bob-area-mining-drill-3", level = 4},
    {name = "bob-area-mining-drill-4", level = 5},
    {name = "bob-area-mining-drills-1", level = 2},
    {name = "bob-area-mining-drills-2", level = 3},
    {name = "bob-area-mining-drills-3", level = 4},
    {name = "bob-area-mining-drills-4", level = 5},
    {name = "bob-area-drills-1", level = 2},
    {name = "bob-area-drills-2", level = 3},
    {name = "bob-area-drills-3", level = 4},
    {name = "bob-area-drills-4", level = 5},
    {name = "area-mining-drill-1", level = 2},
    {name = "area-mining-drill-2", level = 3},
    {name = "area-mining-drill-3", level = 4},
    {name = "area-mining-drill-4", level = 5},
    {name = tech_pumpjacks_2, level = 2},
    {name = tech_pumpjacks_3, level = 3},
    {name = tech_pumpjacks_4, level = 4},
    {name = tech_pumpjacks_5, level = 5},
    {name = tech_pumpjacks_6, level = 6},
    {name = centrifuge_3, level = 3},
    {name = centrifuge_4, level = 4},

    -- Angel's ore processing / refining / metallurgy chains.
    -- These technologies are production infrastructure, so they use production multipliers.
    {name = tech_ore_processing_1, level = 1},
    {name = tech_ore_processing_2, level = 2},
    {name = tech_ore_processing_3, level = 3},
    {name = tech_ore_processing_4, level = 4},
    {name = tech_ore_processing_5, level = 5},

    {name = tech_metallurgy_1, level = 1},
    {name = tech_metallurgy_2, level = 2},
    {name = tech_metallurgy_3, level = 3},
    {name = tech_metallurgy_4, level = 4},
    {name = tech_metallurgy_5, level = 5},

    {name = tech_powder_metallurgy_1, level = 1},
    {name = tech_powder_metallurgy_2, level = 2},
    {name = tech_powder_metallurgy_3, level = 3},
    {name = tech_powder_metallurgy_4, level = 4},
    {name = tech_powder_metallurgy_5, level = 5},
    {name = tech_powder_metallurgy_6, level = 6},
    {name = tech_powder_metallurgy_7, level = 6},

    {name = tech_ore_crushing, level = 1},
    {name = tech_ore_floatation, level = 2},
    {name = tech_ore_leaching, level = 3},
    {name = tech_ore_refining, level = 4},
    {name = tech_ore_powderizer, level = 2},
    {name = tech_ore_advanced_crushing, level = 3},
    {name = tech_ore_advanced_floatation, level = 3},
    {name = tech_ore_electro_whinning_cell, level = 4},

    {name = tech_advanced_ore_refining_1, level = 1},
    {name = tech_advanced_ore_refining_2, level = 2},
    {name = tech_advanced_ore_refining_3, level = 3},
    {name = tech_advanced_ore_refining_4, level = 4},
    {name = tech_advanced_ore_refining_5, level = 5},
    {name = tech_advanced_ore_refining_6, level = 6},

    -- Extra Angel's compatibility aliases. Some Angel's technologies use the
    -- base prototype name for tier 1, while higher tiers use numbered names.
    -- Duplicates are safe because apply_tier_multipliers() de-duplicates by name.
    {name = "angels-ore-processing", level = 1},
    {name = "angels-ore-processing-2", level = 2},
    {name = "angels-ore-processing-3", level = 3},
    {name = "angels-ore-processing-4", level = 4},
    {name = "angels-ore-processing-5", level = 5},

    {name = "angels-metallurgy", level = 1},
    {name = "angels-metallurgy-2", level = 2},
    {name = "angels-metallurgy-3", level = 3},
    {name = "angels-metallurgy-4", level = 4},
    {name = "angels-metallurgy-5", level = 5},

    {name = "angels-powder-metallurgy", level = 1},
    {name = "angels-powder-metallurgy-2", level = 2},
    {name = "angels-powder-metallurgy-3", level = 3},
    {name = "angels-powder-metallurgy-4", level = 4},
    {name = "angels-powder-metallurgy-5", level = 5},
    {name = "powder-metallurgy-6", level = 6},
    {name = "powder-metallurgy-7", level = 6},

    {name = "angels-strand-casting", level = 1},
    {name = "angels-strand-casting-2", level = 2},
    {name = "angels-strand-casting-3", level = 3},
    {name = "angels-strand-casting-4", level = 4},

    {name = "angels-advanced-ore-refining", level = 1},
    {name = "angels-advanced-ore-refining-1", level = 1},
    {name = "angels-advanced-ore-refining-2", level = 2},
    {name = "angels-advanced-ore-refining-3", level = 3},
    {name = "angels-advanced-ore-refining-4", level = 4},
    {name = "advanced-ore-refining-5", level = 5},
    {name = "advanced-ore-refining-6", level = 6},

    {name = "angels-ore-electro-whinning-cell", level = 4},
    {name = "angels-ore-refining", level = 4},
    {name = "angels-ore-powderizer", level = 2},
    {name = "angels-ore-advanced-crushing", level = 3},
    {name = "angels-ore-advanced-floatation", level = 3},

    {name = "angels-thermal-water-extraction", level = 1},
    {name = "angels-thermal-water-extraction-2", level = 2},
    {name = "angels-thermal-water-processing", level = 2},

    {name = "angels-slag-processing", level = 1},
    {name = "angels-slag-processing-1", level = 1},
    {name = "angels-slag-processing-2", level = 2},
    {name = "angels-slag-processing-3", level = 3},
    {name = "angles-slag-processing-1", level = 1},
    {name = "angles-slag-processing-2", level = 2},
    {name = "angles-slag-processing-3", level = 3},

    -- Angel's water treatment, petrochemistry and extra compatibility aliases.
    {name = tech_water_washing_1, level = 1},
    {name = tech_water_treatment_3, level = 3},
    {name = tech_water_treatment_4, level = 4},
    {name = tech_water_treatment_5, level = 5},
    {name = tech_water_treatment_6, level = 6},
    {name = electric_boiler_1, level = 1},
    {name = electric_boiler_2, level = 2},
    {name = electric_boiler_3, level = 3},
    {name = electric_boiler_4, level = 4},
    {name = tech_basic_chemistry_2, level = 2},
    {name = tech_advanced_chemistry_2, level = 2},
    {name = tech_advanced_chemistry_3, level = 3},
    {name = tech_advanced_chemistry_4, level = 4},
    {name = tech_advanced_chemistry_5, level = 5},
    {name = tech_advanced_chemistry_6, level = 6},
    {name = tech_nitrogen_processing_1, level = 1},
    {name = tech_nitrogen_processing_2, level = 2},
    {name = tech_nitrogen_processing_3, level = 3},
    {name = tech_nitrogen_processing_4, level = 4},

    {name = "powder-metallurgy", level = 1},
    {name = "powder-metallurgy-1", level = 1},
    {name = "powder-metallurgy-2", level = 2},
    {name = "powder-metallurgy-3", level = 3},
    {name = "powder-metallurgy-4", level = 4},
    {name = "powder-metallurgy-5", level = 5},

    {name = "angels-water-treatment", level = 1},
    {name = "angels-water-treatment-1", level = 1},
    {name = "angels-water-treatment-2", level = 2},
    {name = "angels-water-treatment-3", level = 3},
    {name = "angels-water-treatment-4", level = 4},
    {name = "water-treatment-5", level = 5},
    {name = "water-treatment-6", level = 6},
    {name = "angels-water-washing", level = 1},
    {name = "angels-water-washing-1", level = 1},
    {name = "angels-water-washing-2", level = 2},
    {name = "water-washing-1", level = 1},
    {name = "water-washing-2", level = 2},
    {name = "angels-washing", level = 1},
    {name = "angels-washing-1", level = 1},
    {name = "angels-washing-2", level = 2},

    {name = "angels-electric-boiler", level = 1},
    {name = "angels-electric-boiler-1", level = 1},
    {name = "angels-electric-boiler-2", level = 2},
    {name = "angels-electric-boiler-3", level = 3},
    {name = "electric-boiler-4", level = 4},
    {name = "angels-cooling", level = 1},
    {name = "angels-cooling-1", level = 1},
    {name = "angels-coolant-1", level = 1},

    {name = "angels-basic-chemistry", level = 1},
    {name = "angels-basic-chemistry-1", level = 1},
    {name = "angels-basic-chemistry-2", level = 2},
    {name = "angels-advanced-chemistry", level = 1},
    {name = "angels-advanced-chemistry-1", level = 1},
    {name = "angels-advanced-chemistry-2", level = 2},
    {name = "angels-advanced-chemistry-3", level = 3},
    {name = "angels-advanced-chemistry-4", level = 4},
    {name = "angels-advanced-chemistry-5", level = 5},
    {name = "advanced-chemistry-6", level = 6},
    {name = "angels-nitrogen-processing", level = 1},
    {name = "angels-nitrogen-processing-1", level = 1},
    {name = "angels-nitrogen-processing-2", level = 2},
    {name = "angels-nitrogen-processing-3", level = 3},
    {name = "angels-nitrogen-processing-4", level = 4},

    -- Angel's petrochemical processing chains shown in the technology pack.
    {name = "oil-gathering", level = 1},
    {name = "angels-gas-processing", level = 1},
    {name = "angels-gas-processing-1", level = 1},
    {name = "angels-advanced-gas-processing", level = 2},
    {name = "angels-advanced-gas-processing-1", level = 2},
    {name = "angels-oil-processing", level = 1},
    {name = "angels-oil-processing-1", level = 1},
    {name = "angels-advanced-oil-processing", level = 2},
    {name = "angels-advanced-oil-processing-1", level = 2},
    {name = "angels-steam-cracking", level = 1},
    {name = "angels-steam-cracking-1", level = 1},
    {name = "angels-gas-synthesis", level = 2},
    {name = "angels-gas-synthesis-1", level = 2},
    {name = "angels-coal-processing", level = 1},
    {name = "angels-coal-processing-1", level = 1},
    {name = "angels-coal-processing-2", level = 2},
    {name = "angels-coal-processing-3", level = 3},
    {name = "coal-processing-4", level = 4},
    {name = "angels-coal-cracking", level = 2},
    {name = "angels-coal-cracking-1", level = 2},
    {name = "angels-sodium-processing", level = 1},
    {name = "angels-sodium-processing-1", level = 1},
    {name = "angels-sodium-processing-2", level = 2},
    {name = "angels-sulfur-processing", level = 1},
    {name = "angels-sulfur-processing-1", level = 1},
    {name = "angels-chlorine-processing", level = 1},
    {name = "angels-chlorine-processing-1", level = 1},
    {name = "angels-chlorine-processing-2", level = 2},
    {name = "angels-chlorine-processing-3", level = 3},
    {name = "angels-chlorine-processing-4", level = 4},
    {name = "angels-plastic", level = 2},
    {name = "angels-plastic-1", level = 2},
    {name = "angels-resin", level = 2},
    {name = "angels-resins", level = 2},
    {name = "angels-resin-1", level = 2},
    {name = "angels-rubber", level = 2},
    {name = "angels-rubbers", level = 2},
    {name = "angels-rubber-1", level = 2},
    {name = "angels-explosives", level = 3},
    {name = "angels-explosives-1", level = 3},
    -- Angel's bioprocessing chains shown in the technology pack.
    {name = "angels-bio-processing-brown", level = 1},
    {name = "angels-bio-processing-green", level = 2},
    {name = "angels-bio-processing-red", level = 2},
    {name = "angels-bio-processing-blue", level = 2},
    {name = "angels-bio-processing-alien", level = 3},
    {name = "angels-bio-processing-crystal-splinter", level = 3},
    {name = "angels-bio-processing-crystal-splinter-1", level = 3},
    {name = "angels-bio-processing-crystal-shard", level = 4},
    {name = "angels-bio-processing-crystal-shard-1", level = 4},
    {name = "angels-bio-processing-crystal-full", level = 5},
    {name = "angels-bio-processing-paste", level = 2},
    {name = "angels-composting", level = 1},
    {name = "angels-gardens", level = 1},
    {name = "angels-bio-farm", level = 1},
    {name = "angels-bio-farm-1", level = 1},
    {name = "angels-bio-farm-2", level = 2},
    {name = "angels-bio-farm-3", level = 3},
    {name = "angels-bio-farm-alien", level = 3},
    {name = "angels-bio-desert-farming", level = 2},
    {name = "angels-bio-desert-farm", level = 2},
    {name = "angels-bio-temperate-farming", level = 2},
    {name = "angels-bio-temperate-farm", level = 2},
    {name = "angels-bio-swamp-farming", level = 2},
    {name = "angels-bio-swamp-farm", level = 2},
    {name = "angels-bio-nutrient-paste", level = 2},
    {name = "angels-bio-pressing", level = 1},
    {name = "angels-bio-pressing-1", level = 1},
    {name = "angels-bio-pressing-2", level = 2},
    {name = "angels-bio-pressing-fish", level = 3},
    {name = "angels-bio-pressing-fish-1", level = 3},
    {name = "angels-bio-pressing-fish-2", level = 4},
    {name = "angels-bio-fermentation", level = 2},
    {name = "angels-bio-plastic", level = 3},
    {name = "angels-bio-paper", level = 1},
    {name = "angels-bio-wood-processing", level = 1},
    {name = "angels-bio-arboretum", level = 1},
    {name = "angels-bio-arboretum-1", level = 1},
    {name = "angels-bio-arboretum-desert", level = 2},
    {name = "angels-bio-arboretum-temperate", level = 2},
    {name = "angels-bio-arboretum-swamp", level = 2},
    {name = "angels-bio-refugium-fish", level = 2},
    {name = "angels-bio-refugium-fish-1", level = 2},
    {name = "angels-bio-refugium-fish-2", level = 3},
    {name = "angels-bio-refugium-hatchery", level = 3},
    {name = "angels-bio-refugium-butchery", level = 3},
    {name = "angels-bio-refugium-butchery-1", level = 3},
    {name = "angels-bio-refugium-puffer", level = 3},
    {name = "angels-bio-refugium-puffer-1", level = 3},
    {name = "angels-bio-refugium-biter", level = 4},
    {name = "angels-bio-refugium-biter-1", level = 4},
    {name = "angels-bio-yield-module", level = 3},
    {name = "angels-bio-yield-module-2", level = 4},
    {name = "angels-bio-yield-module-3", level = 5},


    {name = tech_modules_2, level = 2},
    {name = tech_modules_3, level = 3},
    {name = tech_modules_4, level = 4},
    {name = tech_modules_5, level = 5},
    {name = speed_module_2, level = 2},
    {name = speed_module_3, level = 3},
    {name = speed_module_4, level = 4},
    {name = speed_module_5, level = 5},
    {name = efficiency_module_2, level = 2},
    {name = efficiency_module_3, level = 3},
    {name = efficiency_module_4, level = 4},
    {name = efficiency_module_5, level = 5},
    {name = productivity_module_2, level = 2},
    {name = productivity_module_3, level = 3},
    {name = productivity_module_4, level = 4},
    {name = productivity_module_5, level = 5},
    {name = quality_module_2, level = 2},
    {name = quality_module_3, level = 3},
    {name = quality_module_4, level = 4},
    {name = quality_module_5, level = 5},
    {name = pollution_clean_module_2, level = 2},
    {name = pollution_clean_module_3, level = 3},
    {name = pollution_clean_module_4, level = 4},
    {name = pollution_clean_module_5, level = 5},
    {name = pollution_create_module_2, level = 2},
    {name = pollution_create_module_3, level = 3},
    {name = pollution_create_module_4, level = 4},
    {name = pollution_create_module_5, level = 5},
    {name = agricultural_module_2, level = 2},
    {name = agricultural_module_3, level = 3},
    {name = agricultural_module_4, level = 4},
    {name = agricultural_module_5, level = 5}
}

function horogon_apply_tier_technology_counts()
    -- Horogon's balance assumes the per-category MK multipliers are always active;
    -- older saved settings can keep the legacy master checkbox disabled.
    apply_tier_multipliers(logistics_technologies, setting_horogon_logistics_multiplier)
    apply_tier_multipliers(military_technologies, setting_horogon_military_multiplier)
    apply_tier_multipliers(power_technologies, setting_horogon_power_multiplier)
    apply_tier_multipliers(production_technologies, setting_horogon_production_multiplier)

    -- Armor technologies use fixed Horogon costs and are not affected by the
    -- military technology multiplier.
    local mech_armor_count = setting_number(setting_horogon_mech_armor_technology_cost, 4096)
    set_technology_count_from_value(mech_armor, mech_armor_count)
    if setting_bool(setting_horogon_power_armor_chain_from_mech) then
        set_technology_count_for_names({power_armor_5, "bob-power-armor-5", "power-armor-5"}, mech_armor_count * 0.75)
        set_technology_count_for_names({power_armor_4, "bob-power-armor-4", "power-armor-4"}, mech_armor_count * 0.75 * 0.75)
        set_technology_count_for_names({power_armor_3, "bob-power-armor-3", "power-armor-3"}, mech_armor_count * 0.75 * 0.75 * 0.75)
        set_technology_count_for_names({power_armor_2, "bob-power-armor-2", "power-armor-2"}, mech_armor_count * 0.75 * 0.75 * 0.75 * 0.75)
        set_technology_count_for_names({power_armor_1, "bob-power-armor-1", "power-armor-1"}, mech_armor_count * 0.75 * 0.75 * 0.75 * 0.75 * 0.75)
    else
        set_technology_count_for_names({power_armor_2, "bob-power-armor-2", "power-armor-2"}, 1024)
        set_technology_count_for_names({power_armor_3, "bob-power-armor-3", "power-armor-3"}, 1400)
        set_technology_count_for_names({power_armor_4, "bob-power-armor-4", "power-armor-4"}, 1800)
        set_technology_count_for_names({power_armor_5, "bob-power-armor-5", "power-armor-5"}, 2048)
    end

    set_technology_count(tech_uranium_power, 1000)
    multiply_technology_count("angels-thorium-power", tier_multiplier(setting_horogon_power_multiplier, 2))
    multiply_technology_count(tech_deuterium_power, tier_multiplier(setting_horogon_power_multiplier, 3))
    multiply_technology_count(tech_tritium_power, tier_multiplier(setting_horogon_power_multiplier, 4))

    -- Heat transfer techs should follow reactor-tier costs, but stay 60% cheaper.
    set_technology_count_from_fraction("bob-heat-pipe-1", tech_uranium_power, 0.4)
    set_technology_count_from_fraction("bob-heat-exchanger-1", tech_uranium_power, 0.4)
    set_technology_count_from_fraction("bob-heat-pipe-2", "angels-thorium-power", 0.4)
    set_technology_count_from_fraction("bob-heat-exchanger-2", "angels-thorium-power", 0.4)
    set_technology_count_from_fraction("bob-heat-pipe-3", tech_deuterium_power, 0.4)
    set_technology_count_from_fraction("bob-heat-exchanger-3", tech_deuterium_power, 0.4)
    set_technology_count_from_fraction("bob-heat-pipe-4", tech_tritium_power, 0.4)
    set_technology_count_from_fraction("bob-heat-exchanger-4", tech_tritium_power, 0.4)
end

-- Applied from data-final-fixes.lua after other mods/final-fix code have finished
-- recalculating technology costs. Calling it here would apply multipliers twice.

if setting_bool(setting_horogon_extra_science_packs) then
    local mk5_mk6_technologies =
    {
        tech_logistics_5,
        boiler_5,
        boiler_6,
        steam_engine_5,
        steam_engine_6,
        tech_automation_5,
        tech_automation_6,
        "bob-laser-turrets-5",
        "bob-personal-laser-defense-equipment-5",
        "bob-personal-laser-defense-equipment-6",
        "bob-vehicle-laser-defense-equipment-5",
        "bob-vehicle-laser-defense-equipment-6",
        "bob-energy-shield-equipment-5",
        "bob-energy-shield-equipment-6",
        "bob-vehicle-shield-equipment-5",
        "bob-vehicle-shield-equipment-6",
        "bob-vehicle-fission-cell-equipment-5",
        "bob-vehicle-fission-cell-equipment-6",
        "bob-vehicle-fission-reactor-equipment-5",
        "bob-vehicle-fission-reactor-equipment-6",
        "bob-battery-equipment-5",
        "bob-battery-equipment-6",
        "bob-vehicle-battery-equipment-5",
        "bob-vehicle-battery-equipment-6",
        "bob-turrets-5",
        tech_modules_5,
        speed_module_5,
        efficiency_module_5,
        productivity_module_5,
        quality_module_5,
        pollution_clean_module_5,
        pollution_create_module_5,
        agricultural_module_5
    }
    for _, tech_name in pairs(mk5_mk6_technologies) do
        add_science_pack(tech_name, cryogenic_science_pack)
        add_prerequisite(tech_name, cryogenic_science_pack)
    end

    local mk6_technologies =
    {
        boiler_6,
        steam_engine_6,
        tech_automation_6,
        "bob-personal-laser-defense-equipment-6",
        "bob-vehicle-laser-defense-equipment-6",
        "bob-energy-shield-equipment-6",
        "bob-vehicle-shield-equipment-6",
        "bob-vehicle-fission-cell-equipment-6",
        "bob-vehicle-fission-reactor-equipment-6",
        "bob-battery-equipment-6",
        "bob-vehicle-battery-equipment-6"
    }
    for _, tech_name in pairs(mk6_technologies) do
        add_science_pack(tech_name, promethium_science_pack)
        add_prerequisite(tech_name, promethium_science_pack)
    end

    local plasma_technologies =
    {
        "bob-plasma-turrets-2",
        "bob-plasma-turrets-3",
        "bob-plasma-turrets-4",
        "bob-vehicle-big-turret-equipment-2",
        "bob-vehicle-big-turret-equipment-3",
        "bob-vehicle-big-turret-equipment-4"
    }
    for _, tech_name in pairs(plasma_technologies) do
        add_science_pack(tech_name, metallurgic_science_pack)
        add_science_pack(tech_name, electromagnetic_science_pack)
        add_prerequisite(tech_name, metallurgic_science_pack)
        add_prerequisite(tech_name, electromagnetic_science_pack)
    end

    local electromagnetic_after_mk3 =
    {
        "bob-battery-equipment-3",
        "bob-battery-equipment-4",
        "bob-battery-equipment-5",
        "bob-battery-equipment-6",
        "bob-vehicle-battery-equipment-3",
        "bob-vehicle-battery-equipment-4",
        "bob-vehicle-battery-equipment-5",
        "bob-vehicle-battery-equipment-6",
        "bob-laser-turrets-4",
        "bob-laser-turrets-5",
        "bob-personal-laser-defense-equipment-4",
        "bob-personal-laser-defense-equipment-5",
        "bob-personal-laser-defense-equipment-6",
        "bob-vehicle-laser-defense-equipment-4",
        "bob-vehicle-laser-defense-equipment-5",
        "bob-vehicle-laser-defense-equipment-6",
        "bob-energy-shield-equipment-3",
        "bob-energy-shield-equipment-4",
        "bob-energy-shield-equipment-5",
        "bob-energy-shield-equipment-6",
        "bob-vehicle-shield-equipment-3",
        "bob-vehicle-shield-equipment-4",
        "bob-vehicle-shield-equipment-5",
        "bob-vehicle-shield-equipment-6",
        "bob-vehicle-fission-cell-equipment-3",
        "bob-vehicle-fission-cell-equipment-4",
        "bob-vehicle-fission-cell-equipment-5",
        "bob-vehicle-fission-cell-equipment-6",
        "bob-vehicle-fission-reactor-equipment-3",
        "bob-vehicle-fission-reactor-equipment-4",
        "bob-vehicle-fission-reactor-equipment-5",
        "bob-vehicle-fission-reactor-equipment-6",
        "bob-electronics-machine-3"
    }
    for _, tech_name in pairs(electromagnetic_after_mk3) do
        add_science_pack(tech_name, electromagnetic_science_pack)
        add_prerequisite(tech_name, electromagnetic_science_pack)
    end

    -- These packs belong to research, not crafting recipes.
    local electromagnetic_solar_technologies =
    {
        tech_solar_energy_3,
        tech_solar_energy_4,
        "bob-solar-panel-equipment-3",
        "bob-solar-panel-equipment-4",
        "bob-vehicle-solar-panel-equipment-3",
        "bob-vehicle-solar-panel-equipment-4",
        "bob-vehicle-solar-panel-equipment-5"
    }
    for _, tech_name in pairs(electromagnetic_solar_technologies) do
        add_science_pack(tech_name, electromagnetic_science_pack)
        add_prerequisite(tech_name, electromagnetic_science_pack)
    end

    local metallurgic_turret_technologies =
    {
        "bob-turrets-3",
        "bob-turrets-4",
        "bob-turrets-5",
        "bob-sniper-turrets-3"
    }
    for _, tech_name in pairs(metallurgic_turret_technologies) do
        add_science_pack(tech_name, metallurgic_science_pack)
        add_prerequisite(tech_name, metallurgic_science_pack)
    end

    local electromagnetic_roboport_technologies =
    {
        "personal-roboport-mk2-equipment",
        "bob-personal-roboport-mk3-equipment",
        "bob-personal-roboport-mk4-equipment",
        "bob-personal-roboport-modular-equipment-2",
        "bob-personal-roboport-modular-equipment-3",
        "bob-personal-roboport-modular-equipment-4",
        "bob-vehicle-roboport-equipment-2",
        "bob-vehicle-roboport-equipment-3",
        "bob-vehicle-roboport-equipment-4",
        "bob-vehicle-roboport-modular-equipment-2",
        "bob-vehicle-roboport-modular-equipment-3",
        "bob-vehicle-roboport-modular-equipment-4"
    }
    for _, tech_name in pairs(electromagnetic_roboport_technologies) do
        add_science_pack(tech_name, electromagnetic_science_pack)
        add_prerequisite(tech_name, electromagnetic_science_pack)
    end

    -- Nuclear power is before Vulcanus in TIMSABA, so Space Age packs here create a technology cycle.
end

if setting_bool(setting_horogon_module_planet_lock) then
    local module_science =
    {
        {techs = {speed_module_3, speed_module_4, speed_module_5}, science = metallurgic_science_pack},
        {techs = {productivity_module_3, productivity_module_4, productivity_module_5, agricultural_module_3, agricultural_module_4, agricultural_module_5}, science = agricultural_science_pack},
        {techs = {quality_module_3, quality_module_4, quality_module_5}, science = electromagnetic_science_pack},
        {techs = {pollution_clean_module_3, pollution_clean_module_4, pollution_clean_module_5, pollution_create_module_3, pollution_create_module_4, pollution_create_module_5}, science = cryogenic_science_pack}
    }
    for _, line in pairs(module_science) do
        for _, tech_name in pairs(line.techs) do
            add_science_pack(tech_name, line.science)
            add_prerequisite(tech_name, line.science)
        end
    end
end

if setting_bool(setting_horogon_high_tier_recipes) then
    local battery_recipe_materials =
    {
        {name = "bob-battery-mk4-equipment", superconductor = 20, supercapacitor = 20, holmium = 20},
        {name = "bob-battery-mk5-equipment", superconductor = 40, supercapacitor = 40, holmium = 40, lithium = 50},
        {name = "bob-battery-mk6-equipment", superconductor = 100, supercapacitor = 100, holmium = 100, lithium = 100, quantum = 8},
        {name = "bob-vehicle-battery-equipment-4", superconductor = 20, supercapacitor = 20, holmium = 20},
        {name = "bob-vehicle-battery-equipment-5", superconductor = 40, supercapacitor = 40, holmium = 40, lithium = 50},
        {name = "bob-vehicle-battery-equipment-6", superconductor = 100, supercapacitor = 100, holmium = 100, lithium = 100, quantum = 8}
    }
    for _, recipe_line in pairs(battery_recipe_materials) do
        add_item_ingredient(recipe_line.name, superconductor, recipe_line.superconductor)
        add_item_ingredient(recipe_line.name, supercapacitor, recipe_line.supercapacitor)
        add_item_ingredient(recipe_line.name, holmium_plate, recipe_line.holmium)
        if recipe_line.lithium then add_item_ingredient(recipe_line.name, lithium_plate, recipe_line.lithium) end
        if recipe_line.quantum then add_item_ingredient(recipe_line.name, quantum_processor, recipe_line.quantum) end
    end

    local solar_recipe_materials =
    {
        {name = "bob-solar-panel-equipment-3", superconductor = 12},
        {name = "bob-solar-panel-equipment-4", superconductor = 24, lithium = 20},
        {name = "bob-vehicle-solar-panel-equipment-3", superconductor = 12},
        {name = "bob-vehicle-solar-panel-equipment-4", superconductor = 24, lithium = 20},
        {name = "bob-vehicle-solar-panel-equipment-5", superconductor = 48, lithium = 40, quantum = 4},
        {name = solar_panel_small_3, superconductor = 16},
        {name = solar_panel_3, superconductor = 32},
        {name = solar_panel_large_3, superconductor = 64},
        {name = solar_panel_small_4, superconductor = 32, lithium = 16},
        {name = solar_panel_4, superconductor = 64, lithium = 32},
        {name = solar_panel_large_4, superconductor = 128, lithium = 64}
    }
    for _, recipe_line in pairs(solar_recipe_materials) do
        add_item_ingredient(recipe_line.name, superconductor, recipe_line.superconductor)
        if recipe_line.lithium then add_item_ingredient(recipe_line.name, lithium_plate, recipe_line.lithium) end
        if recipe_line.quantum then add_item_ingredient(recipe_line.name, quantum_processor, recipe_line.quantum) end
    end

    add_item_ingredient(steam_turbine_3, superconductor, 32)
    add_item_ingredient(steam_turbine_4, superconductor, 64)

    add_item_ingredient(uranium_reactor, niobium_iron_plate, 64)
    add_item_ingredient(thorium_reactor, niobium_iron_plate, 128)
    add_item_ingredient(deuterium_reactor, niobium_iron_plate, 192)
    add_item_ingredient(tritium_reactor, niobium_iron_plate, 256)

    add_item_ingredient("bob-electronics-machine-3", holmium_plate, 24)
    add_item_ingredient("bob-electronics-machine-3", superconductor, 16)
    add_item_ingredient("bob-electronics-machine-3", supercapacitor, 8)

    local roboport_recipe_materials =
    {
        {name = "personal-roboport-mk2-equipment", holmium = 8, superconductor = 8},
        {name = "bob-personal-roboport-mk3-equipment", holmium = 16, superconductor = 16},
        {name = "bob-personal-roboport-mk4-equipment", holmium = 32, superconductor = 32, supercapacitor = 8},
        {name = "bob-personal-roboport-modular-equipment-2", holmium = 8, superconductor = 8},
        {name = "bob-personal-roboport-modular-equipment-3", holmium = 16, superconductor = 16},
        {name = "bob-personal-roboport-modular-equipment-4", holmium = 32, superconductor = 32, supercapacitor = 8},
        {name = "bob-vehicle-roboport-equipment-2", holmium = 8, superconductor = 8},
        {name = "bob-vehicle-roboport-equipment-3", holmium = 16, superconductor = 16},
        {name = "bob-vehicle-roboport-equipment-4", holmium = 32, superconductor = 32, supercapacitor = 8},
        {name = "bob-vehicle-roboport-modular-equipment-2", holmium = 8, superconductor = 8},
        {name = "bob-vehicle-roboport-modular-equipment-3", holmium = 16, superconductor = 16},
        {name = "bob-vehicle-roboport-modular-equipment-4", holmium = 32, superconductor = 32, supercapacitor = 8}
    }
    for _, recipe_line in pairs(roboport_recipe_materials) do
        add_item_ingredient(recipe_line.name, holmium_plate, recipe_line.holmium)
        add_item_ingredient(recipe_line.name, superconductor, recipe_line.superconductor)
        if recipe_line.supercapacitor then add_item_ingredient(recipe_line.name, supercapacitor, recipe_line.supercapacitor) end
    end

    local module_recipe_materials =
    {
        {name = speed_module_3, material = tungsten_plate, amount = 8},
        {name = speed_module_4, material = tungsten_carbide, amount = 16},
        {name = speed_module_5, material = tungsten_carbide, amount = 32},
        {name = productivity_module_3, material = bioflux, amount = 16},
        {name = productivity_module_4, material = carbon_fiber, amount = 16},
        {name = productivity_module_5, material = carbon_fiber, amount = 32},
        {name = quality_module_3, material = holmium_plate, amount = 16},
        {name = quality_module_4, material = superconductor, amount = 16},
        {name = quality_module_5, material = superconductor, amount = 32},
        {name = agricultural_module_3, material = bioflux, amount = 16},
        {name = agricultural_module_4, material = carbon_fiber, amount = 16},
        {name = agricultural_module_5, material = carbon_fiber, amount = 32},
        {name = pollution_clean_module_3, material = lithium_plate, amount = 16},
        {name = pollution_clean_module_4, material = quantum_processor, amount = 4},
        {name = pollution_clean_module_5, material = quantum_processor, amount = 8},
        {name = pollution_create_module_3, material = lithium_plate, amount = 16},
        {name = pollution_create_module_4, material = quantum_processor, amount = 4},
        {name = pollution_create_module_5, material = quantum_processor, amount = 8}
    }
    for _, recipe_line in pairs(module_recipe_materials) do
        add_item_ingredient(recipe_line.name, recipe_line.material, recipe_line.amount)
    end
end

-- MECH ARMOR
if data_armor[mech_armor] and data_armor[power_armor_5] then
    data_armor[mech_armor].resistances = table.deepcopy(data_armor[power_armor_5].resistances or data_armor[mech_armor].resistances or {})
    for _, resistance in pairs(data_armor[mech_armor].resistances) do
        resistance.decrease = (resistance.decrease or 0) + 5
        resistance.percent = math.min((resistance.percent or 0) + 10, 95)
    end
end
