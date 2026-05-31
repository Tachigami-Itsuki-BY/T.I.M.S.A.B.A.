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
    for _, tech in pairs(technologies) do
        multiply_technology_count(tech.name, tier_multiplier(setting_prefix, tech.level))
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
    {name = "bob-armoured-railway-2", level = 3}
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
    {name = power_armor_3, level = 3},
    {name = power_armor_4, level = 4},
    {name = power_armor_5, level = 5},
    {name = "energy-shield-equipment", level = 1},
    {name = "energy-shield-mk2-equipment", level = 2},
    {name = "battery-equipment", level = 1},
    {name = "battery-mk2-equipment", level = 2},
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
    {name = "bob-robot-laser-drones", level = 5},
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
    {name = tech_multi_purpose_furnace_2, level = 2},
    {name = tech_multi_purpose_furnace_3, level = 3},
    {name = tech_drills_2, level = 2},
    {name = tech_drills_3, level = 3},
    {name = tech_drills_4, level = 4},
    {name = tech_drills_5, level = 5},
    {name = tech_drills_6, level = 6},
    {name = tech_pumpjacks_2, level = 2},
    {name = tech_pumpjacks_3, level = 3},
    {name = tech_pumpjacks_4, level = 4},
    {name = tech_pumpjacks_5, level = 5},
    {name = tech_pumpjacks_6, level = 6},
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

horogon_apply_tier_technology_counts()

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
