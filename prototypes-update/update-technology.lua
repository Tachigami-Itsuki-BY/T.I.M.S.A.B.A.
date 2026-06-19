-- LOGISTICS
data_technology[tech_logistics_5].prerequisites = {tech_logistics_4, tech_nitinol_processing, advanced_processing_unit, utility_science_pack}

local tech_logistic_system = "logistic-system"
if mods [bobtech] then
    data_technology[tech_logistic_system].prerequisites = {transport_science_pack, tech_construction_robotics, tech_logistic_robotics}
else
    data_technology[tech_logistic_system].prerequisites = {chemical_science_pack, tech_construction_robotics, tech_logistic_robotics}
end

-- ADVANCED LOGISTICS
local tech_lamp = "lamp"
table.insert(data_technology[tech_lamp].prerequisites, tech_ore_crushing)
table.insert(data_technology[tech_lamp].effects, {type = unlock_recipe, recipe = glass_bob})

if data_technology[tech_robotics_1] then
    if mods [bobmodules] then
        data_technology[tech_robotics_1].effects =
        {
            {type = unlock_recipe, recipe = flying_robot_frame_1},
            {type = unlock_recipe, recipe = module_case},
            {type = unlock_recipe, recipe = robot_brain_1},
        }
    else
        data_technology[tech_robotics_1].effects =
        {
            {type = unlock_recipe, recipe = flying_robot_frame_1},
            {type = unlock_recipe, recipe = robot_brain_1},
        }
    end
end

if data_technology[tech_robotics_2] then
    table.insert(data_technology[tech_robotics_2].prerequisites, tech_battery_2)
end

if data_technology[tech_robotics_3] then
    table.insert(data_technology[tech_robotics_3].prerequisites, tech_battery_3)

    local already_has_pack = false
    for _, ingredient in ipairs(data_technology[tech_robots_2].unit.ingredients) do
        if ingredient[1] == production_science_pack or ingredient.name == production_science_pack then
            already_has_pack = true
            break
        end
    end

    if not already_has_pack then
        table.insert(data_technology[tech_robotics_3].unit.ingredients, {production_science_pack, 1})
    end
end

if data_technology[tech_robots_2] then
    -- Флаг, который покажет, нашли ли мы уже этот пакет
    local already_has_pack = false

    -- Проверяем все существующие ингредиенты
    for _, ingredient in ipairs(data_technology[tech_robots_2].unit.ingredients) do
        -- Проверка работает для обоих форматов записи: {"name", count} и {name="name", amount=count}
        if ingredient[1] == production_science_pack or ingredient.name == production_science_pack then
            already_has_pack = true
            break
        end
    end

    -- Если пакета нет, добавляем его
    if not already_has_pack then
        table.insert(data_technology[tech_robots_2].unit.ingredients, {production_science_pack, 1})
    end
end

if data_technology[tech_robotics_4] then
    table.insert(data_technology[tech_robotics_4].prerequisites, tech_battery_4)
    if mods [bobtech] then
        -- Создаем список технологий, в которые нужно добавить пакет
        local target_technologies = {tech_robotics_4, tech_robots_3}
        for _, tech_name in ipairs(target_technologies) do
            -- Проверяем, существует ли вообще такая технология в базе данных
            if data_technology[tech_name] and data_technology[tech_name].unit and data_technology[tech_name].unit.ingredients then
                local already_has_pack = false
                -- Ищем, нет ли уже utility_science_pack в ингредиентах
                for _, ingredient in ipairs(data_technology[tech_name].unit.ingredients) do
                    if ingredient == utility_science_pack or ingredient.name == utility_science_pack then
                        already_has_pack = true
                        break
                    end
                end
                -- Если пакета нет, добавляем его
                if not already_has_pack then
                    table.insert(data_technology[tech_name].unit.ingredients, {utility_science_pack, 1})
                end
            end
        end
    end
end

if data_technology[tech_robo_modular_1] then
    data_technology[tech_robo_modular_1].effects =
    {
        {type = unlock_recipe, recipe = roboport_1},
        {type = unlock_recipe, recipe = robochest_1},
        {type = unlock_recipe, recipe = logistic_zone_expander_1},
        {type = unlock_recipe, recipe = robo_charge_port_1},
        {type = unlock_recipe, recipe = robo_charge_port_large_1},
        {type = unlock_recipe, recipe = roboport_antenna_1},
        {type = unlock_recipe, recipe = roboport_chargepad_1},
        {type = unlock_recipe, recipe = roboport_door_1}
    }
end
if mods [bobwarfare] then
    data_technology[artillery_wagon_2].localised_name = {"entity-name.artillery-wagon-2"}
    data_technology[artillery_wagon_2].prerequisites = {tech_artillery, cryogenic_science_pack}
    data_technology[artillery_wagon_2].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {cryogenic_science_pack, 1}
    }

    data_technology[artillery_wagon_3].localised_name = {"entity-name.artillery-wagon-3"}
    data_technology[artillery_wagon_3].prerequisites = {artillery_wagon_2, promethium_science_pack}
    data_technology[artillery_wagon_3].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {cryogenic_science_pack, 1},
        {promethium_science_pack, 1}
    }
end

-- PRODUCTION
data_technology[boiler_3].prerequisites = {boiler_2, chemical_science_pack, tech_ceramics, tech_invar_smelting_1}

data_technology[steam_engine_3].prerequisites = {steam_engine_2, tech_brass_processing}

data_technology[tech_steam_turbine_1].prerequisites = {steam_engine_3, tech_ceramics, tech_aluminium_smelting_1}

if settings.startup["bobmods-power-fluidgenerator"].value then
    data_technology[fluid_generator_2].prerequisites = {tech_fluid_generator_1, tech_ceramics, tech_aluminium_smelting_1, tech_invar_smelting_1}

    data_technology[fluid_generator_3].prerequisites = {tech_tungsten_processing, fluid_generator_2}
end

data_technology[tech_solar_energy_3].prerequisites = {processing_unit, tech_solar_energy_2, production_science_pack}

data_technology[tech_electric_energy_accumulators_1].effects = {{type = unlock_recipe, recipe = accumulator_1}}
data_technology[tech_electric_energy_accumulators_2].effects = {{type = unlock_recipe, recipe = accumulator_2}}
data_technology[tech_electric_energy_accumulators_3].effects = {{type = unlock_recipe, recipe = accumulator_3}}

data_technology[tech_drills_3].prerequisites = {tech_drills_2, chemical_science_pack, tech_brass_processing}

data_technology[heat_exchanger_2].prerequisites =
{
    tech_heat_exchanger_1,
    heat_pipe_2,
    tech_brass_processing
}

local function replace_prerequisites(tech_name, old_prereq, new_prereq)
    local tech = data_technology[tech_name]
    if not tech then return end
    tech.prerequisites = tech.prerequisites or {}
    local found = false
    for i, name in ipairs(tech.prerequisites) do
        if name == old_prereq then
            tech.prerequisites[i] = new_prereq
            found = true
            break
        end
    end
    if not found then
        local already_exists = false
        for _, name in ipairs(tech.prerequisites) do
            if name == new_prereq then
                already_exists = true
                break
            end
        end
        if not already_exists then
            table.insert(tech.prerequisites, new_prereq)
        end
    end
end
replace_prerequisites(tech_automation_5, tech_tungsten_processing, tech_tungsten_alloy_processing)
replace_prerequisites(tech_advanced_ore_refining_4, tech_tungsten_processing, tech_tungsten_alloy_processing)
replace_prerequisites(tech_ore_processing_4, tech_tungsten_processing, tech_tungsten_alloy_processing)
replace_prerequisites(tech_powder_metallurgy_5, tech_tungsten_processing, tech_tungsten_alloy_processing)
replace_prerequisites(tech_strand_casting_4, tech_tungsten_processing, tech_tungsten_alloy_processing)
replace_prerequisites(tech_advanced_chemistry_5, tech_tungsten_processing, tech_tungsten_alloy_processing)

table.insert(data_technology[centrifuge_3].prerequisites, tech_stone_smelting_4)

-- INTERMEDIATE PRODUCTS
data_technology[tech_brass_processing].prerequisites = {tech_brass_smelting_1, lubricant}
data_technology[tech_brass_processing].effects =
{
    {type = unlock_recipe, recipe = brass_gear_wheel},
    {type = unlock_recipe, recipe = brass_bearing_ball},
    {type = unlock_recipe, recipe = brass_bearing},
    {type = unlock_recipe, recipe = brass_pipe},
    {type = unlock_recipe, recipe = brass_pipe_to_ground}
}

data_technology[tech_ceramics].prerequisites = {chemical_science_pack, lubricant}
data_technology[tech_ceramics].effects =
{
    {type = unlock_recipe, recipe = silicon_nitride_bob},
    {type = unlock_recipe, recipe = ceramic_gear_wheel},
    {type = unlock_recipe, recipe = ceramic_bearing_ball},
    {type = unlock_recipe, recipe = ceramic_bearing},
    {type = unlock_recipe, recipe = ceramic_pipe},
    {type = unlock_recipe, recipe = ceramic_pipe_to_ground}
}
data_technology[tech_ceramics].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1}
}

data_technology[tech_titanium_processing].effects =
{
    {type = unlock_recipe, recipe = titanium_gear_wheel},
    {type = unlock_recipe, recipe = titanium_bearing_ball},
    {type = unlock_recipe, recipe = titanium_bearing},
    {type = unlock_recipe, recipe = titanium_pipe},
    {type = unlock_recipe, recipe = titanium_pipe_to_ground}
}

data_technology[tech_tungsten_processing].prerequisites = {tech_tungsten_smelting_1}
if mods [bobplates] >= "2.1.0" then
    data_technology[tech_tungsten_processing].effects =
    {
        {type = unlock_recipe, recipe = tungsten_gear_wheel},
        {type = unlock_recipe, recipe = tungsten_bearing_ball},
        {type = unlock_recipe, recipe = tungsten_bearing},
        {type = unlock_recipe, recipe = tungsten_pipe},
        {type = unlock_recipe, recipe = tungsten_pipe_to_ground},
        {type = unlock_recipe, recipe = tungsten_carbide_plate_2}
    }
else
    data_technology[tech_tungsten_processing].effects =
    {
        {type = unlock_recipe, recipe = tungsten_gear_wheel},
        {type = unlock_recipe, recipe = tungsten_bearing_ball},
        {type = unlock_recipe, recipe = tungsten_bearing},
        {type = unlock_recipe, recipe = tungsten_pipe},
        {type = unlock_recipe, recipe = tungsten_pipe_to_ground}
    }
end

data_technology[tech_nitinol_processing].effects =
{
    {type = unlock_recipe, recipe = nitinol_gear_wheel},
    {type = unlock_recipe, recipe = nitinol_bearing_ball},
    {type = unlock_recipe, recipe = nitinol_bearing},
    {type = unlock_recipe, recipe = nitinol_pipe},
    {type = unlock_recipe, recipe = nitinol_pipe_to_ground}
}

data_technology[tech_tungsten_alloy_processing].prerequisites = {tech_tungsten_processing, tech_copper_smelting_2, utility_science_pack}
if mods [bobplates] >= "2.1.0" then
    data_technology[tech_tungsten_alloy_processing].effects =
    {
        {type = unlock_recipe, recipe = copper_tungsten_powder},
        {type = unlock_recipe, recipe = copper_tungsten_plate_bob},
        {type = unlock_recipe, recipe = copper_tungsten_gear_wheel},
        {type = unlock_recipe, recipe = copper_tungsten_bearing_ball},
        {type = unlock_recipe, recipe = copper_tungsten_bearing},
        {type = unlock_recipe, recipe = copper_tungsten_pipe},
        {type = unlock_recipe, recipe = copper_tungsten_pipe_to_ground}
    }
else
    data_technology[tech_tungsten_alloy_processing].effects =
    {
        {type = unlock_recipe, recipe = copper_tungsten_powder},
        {type = unlock_recipe, recipe = copper_tungsten_plate_bob},
        {type = unlock_recipe, recipe = tungsten_carbide_plate_2},
        {type = unlock_recipe, recipe = copper_tungsten_gear_wheel},
        {type = unlock_recipe, recipe = copper_tungsten_bearing_ball},
        {type = unlock_recipe, recipe = copper_tungsten_bearing},
        {type = unlock_recipe, recipe = copper_tungsten_pipe},
        {type = unlock_recipe, recipe = copper_tungsten_pipe_to_ground}
    }
end
data_technology[tech_tungsten_alloy_processing].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1}
}

data_technology[battery_lead_acid].effects =
{
    {type = unlock_recipe, recipe = lead_oxide_IV},
    {type = unlock_recipe, recipe = lead_sponge},
    {type = unlock_recipe, recipe = battery_lead_acid}
}

data_technology[tech_battery_2].localised_description = {"technology-description.battery"}
data_technology[tech_battery_2].effects =
{
    {type = unlock_recipe, recipe = phosgene_gas},
    {type = unlock_recipe, recipe = dimethyl_carbonate},
    {type = unlock_recipe, recipe = ethylene_oxide},
    {type = unlock_recipe, recipe = ethylene_carbonate},
    {type = unlock_recipe, recipe = lithium_cobalt_oxide_III_bob},
    {type = unlock_recipe, recipe = battery_lithium_ion}
}

data_technology[tech_battery_3].localised_description = {"technology-description.battery"}
data_technology[tech_battery_3].prerequisites = {tech_metallurgy_4, tech_silver_smelting_2}

data_technology[tech_uranium_power].prerequisites = {heat_pipe_2, tech_uranium_processing, tech_heat_exchanger_1, tech_steam_turbine_1}
data_technology[tech_uranium_power].effects =
{
    {type = unlock_recipe, recipe = uranium_reactor},
    {type = unlock_recipe, recipe = uranium_235_fuel_cell},
    {type = unlock_recipe, recipe = uranium_234_fuel_cell}
}

data_technology[tech_plutonium_based_power_systems].prerequisites = {"nuclear-fuel-reprocessing", centrifuge_2, utility_science_pack}
data_technology[tech_plutonium_based_power_systems].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1}
}

thorium_processing = "angels-thorium-processing"
advanced_mixed_oxide_reprocessing = "angels-advanced-mixed-oxide-reprocessing"
thorium_fuel_cell_reprocessing = "angels-thorium-fuel-cell-reprocessing"
plutonium_breeding = "angels-plutonium-breeding"
data_technology["angels-thorium-power"].effects =
{
    {type = unlock_recipe, recipe = thorium_reactor},
    {type = unlock_recipe, recipe = thorium_processing},
    {type = unlock_recipe, recipe = advanced_mixed_oxide_reprocessing},
    {type = unlock_recipe, recipe = thorium_fuel_cell},
    {type = unlock_recipe, recipe = thorium_fuel_cell_reprocessing},
    {type = unlock_recipe, recipe = plutonium_breeding}
}

advanced_thorium_fuel_cell_reprocessing = "angels-advanced-thorium-fuel-cell-reprocessing"
deuterium_fuel_cell_reprocessing = "angels-deuterium-fuel-cell-reprocessing"
data_technology[tech_deuterium_power].localised_name = {"technology-name.deuterium-power"}
data_technology[tech_deuterium_power].localised_description = {"technology-description.deuterium-power"}
data_technology[tech_deuterium_power].effects =
{
    {type = unlock_recipe, recipe = deuterium_reactor},
    {type = unlock_recipe, recipe = advanced_thorium_fuel_cell_reprocessing},
    {type = unlock_recipe, recipe = deuterium_fuel_cell},
    {type = unlock_recipe, recipe = deuterium_fuel_cell_reprocessing}
}

-- COMBAT
data_technology[tech_uranium_ammo].prerequisites = {tank_1, tech_military_4, tech_uranium_processing}
if mods [bobwarfare] then
    data_technology[tech_uranium_ammo].effects =
    {
        {type = unlock_recipe, recipe = uranium_rounds_magazine},
        {type = unlock_recipe, recipe = uranium_shotgun_shell},
        {type = unlock_recipe, recipe = uranium_cannon_shell},
        {type = unlock_recipe, recipe = uranium_explosive_cannon_shell}
    }
else
    data_technology[tech_uranium_ammo].effects =
    {
        {type = unlock_recipe, recipe = uranium_rounds_magazine},
        {type = unlock_recipe, recipe = uranium_cannon_shell},
        {type = unlock_recipe, recipe = uranium_explosive_cannon_shell}
    }
end

data_technology[energy_shield_eq_2].prerequisites = {energy_shield_eq_1, power_armor_1, productivity_module_1, tech_military_3}
data_technology[energy_shield_eq_2].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {military_science_pack, 1},
    {chemical_science_pack, 1}
}
data_technology[energy_shield_eq_2].unit.count = 200

if mods [bobequipment] then
    table.insert(data_technology[fission_reactor_4].prerequisites, tech_deuterium_power)

    data_technology[roboport_eq_2].prerequisites = {roboport_eq_1, tech_invar_smelting_1, tech_aluminium_smelting_1, tech_battery_2}
    data_technology[roboport_eq_2].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1}
    }

    table.insert(data_technology[roboport_eq_3].prerequisites, tech_battery_3)
    table.insert(data_technology[roboport_eq_3].unit.ingredients, {production_science_pack, 1})

    table.insert(data_technology[roboport_eq_4].prerequisites, tech_battery_4)
    if mods [bobtech] then
        table.insert(data_technology[roboport_eq_4].unit.ingredients, {utility_science_pack, 1})
    end

    table.insert(data_technology[laser_defense_eq_4].prerequisites, tech_battery_3)
    table.insert(data_technology[laser_defense_eq_5].prerequisites, tech_battery_4)
    table.insert(data_technology[laser_defense_eq_6].prerequisites, tech_battery_4)
end

if mods [bobvehicleequipment] then
    data_technology[vehicle_roboport_eq_2].prerequisites = {vehicle_roboport_eq_1, tech_invar_smelting_1, tech_aluminium_smelting_1, tech_battery_2}

    table.insert(data_technology[vehicle_roboport_eq_3].prerequisites, tech_battery_3)
    table.insert(data_technology[vehicle_roboport_eq_3].unit.ingredients, {production_science_pack, 1})

    table.insert(data_technology[vehicle_roboport_eq_4].prerequisites, tech_battery_4)
    if mods [bobtech] then
        table.insert(data_technology[vehicle_roboport_eq_4].unit.ingredients, {utility_science_pack, 1})
    end

    table.insert(data_technology[vehicle_laser_defense_eq_4].prerequisites, tech_battery_3)
    table.insert(data_technology[vehicle_laser_defense_eq_5].prerequisites, tech_battery_4)
    table.insert(data_technology[vehicle_laser_defense_eq_6].prerequisites, tech_battery_4)

    table.insert(data_technology[vehicle_plasma_cannon_eq_4].prerequisites, tech_battery_4)
end

if mods [bobwarfare] then
    table.insert(data_technology[tech_laser_turret_4].prerequisites, tech_battery_3)
    table.insert(data_technology[tech_laser_turret_5].prerequisites, tech_battery_4)
end

data_technology[tech_artillery].prerequisites = {metallurgic_science_pack, tech_military_4}
data_technology[tech_artillery].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {military_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {metallurgic_science_pack, 1},
}

if mods [bobwarfare] then
    data_technology[artillery_turret_2].localised_name = {"entity-name.artillery-turret-2"}
    data_technology[artillery_turret_2].prerequisites = {tech_artillery, cryogenic_science_pack}
    data_technology[artillery_turret_2].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {cryogenic_science_pack, 1}
    }

    data_technology[artillery_turret_3].localised_name = {"entity-name.artillery-turret-3"}
    data_technology[artillery_turret_3].prerequisites = {artillery_turret_2, promethium_science_pack}
    data_technology[artillery_turret_3].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {cryogenic_science_pack, 1},
        {promethium_science_pack, 1}
    }
end

data_technology[atomic_rocket].prerequisites = {"rocketry", tech_military_4, tech_deuterium_power}
data_technology[atomic_rocket].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {military_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1}
}

if mods [bobwarfare] then
    data_technology["bob-atomic-artillery-shell"].unit.ingredients =
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

data_technology[tank_1].prerequisites = {explosives, "automobilism", tech_brass_processing, tech_invar_smelting_1, tech_military_2}
data_technology[tank_1].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {military_science_pack, 1}
}

if mods [bobwarfare] then
    data_technology[tech_tank_2].prerequisites = {tank_1, tech_titanium_processing, processing_unit, tech_military_3}
    data_technology[tech_tank_2].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1}
    }

    data_technology[tech_tank_3].prerequisites = {tech_tank_2, tech_tungsten_alloy_processing, tech_nitinol_processing, advanced_processing_unit, tech_military_4}
    data_technology[tech_tank_3].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1}
    }

    table.insert(data_technology[tech_plasma_turret_4].prerequisites, tech_battery_4)
end

if mods [bobwarfare] then
    data_technology[atomic_artillery_shell].localised_name = {"item-name.bob-atomic-artillery-shell"}
end

-- ANGELS RESOURCE REFINING
table.insert(data_technology[tech_ore_crushing].effects, {type = unlock_recipe, recipe = stone})
table.insert(data_technology[tech_ore_crushing].effects, {type = unlock_recipe, recipe = crushed_stone_sorting_1})

table.insert(data_technology[tech_advanced_ore_refining_1].effects, {type = unlock_recipe, recipe = manganese_ore_recipe})
table.insert(data_technology[tech_advanced_ore_refining_1].effects, {type = unlock_recipe, recipe = magnesium_ore_recipe})

table.insert(data_technology[tech_advanced_ore_refining_2].effects, {type = unlock_recipe, recipe = crushed_stone_sorting_2})

table.insert(data_technology[tech_ore_electro_whinning_cell].effects, {type = unlock_recipe, recipe = chromium_ore_recipe})

titanium_ore_recipe = "angels-ore-crystal-mix1-processing"
gold_ore_recipe = "angels-ore-crystal-mix2-processing"
cobalt_ore_recipe = "angels-ore-crystal-mix3-processing"
uranium_ore_recipe = "angels-ore-crystal-mix5-processing"
data_technology[tech_advanced_ore_refining_3].effects =
{
    {type = unlock_recipe, recipe = ore_crusher_4},
    {type = unlock_recipe, recipe = ore_floatation_cell_3},
    {type = unlock_recipe, recipe = ore_leaching_plant_2},
    {type = unlock_recipe, recipe = ore_sorting_facility_4},
    {type = unlock_recipe, recipe = powderizer_3},
    {type = unlock_recipe, recipe = titanium_ore_recipe},
    {type = unlock_recipe, recipe = gold_ore_recipe},
    {type = unlock_recipe, recipe = cobalt_ore_recipe},
    --{type = unlock_recipe, recipe = "angels-ore-crystal-mix4-processing"} ???
    {type = unlock_recipe, recipe = uranium_ore_recipe},
    {type = unlock_recipe, recipe = crushed_stone_sorting_3}
}

tungsten_ore_recipe = "angels-ore-pure-mix1-processing"
platinum_ore_recipe = "angels-ore-pure-mix2-processing"
table.insert(data_technology[tech_advanced_ore_refining_4].prerequisites, tech_stone_smelting_4)
data_technology[tech_advanced_ore_refining_4].effects =
{
    {type = unlock_recipe, recipe = ore_floatation_cell_4},
    {type = unlock_recipe, recipe = ore_leaching_plant_3},
    {type = unlock_recipe, recipe = ore_refinery_2},
    {type = unlock_recipe, recipe = ore_sorting_facility_5},
    {type = unlock_recipe, recipe = powderizer_4},
    {type = unlock_recipe, recipe = electro_whinning_cell_2},
    {type = unlock_recipe, recipe = filtration_unit_4},
    {type = unlock_recipe, recipe = crystallizer_4},
    {type = unlock_recipe, recipe = tungsten_ore_recipe},
    {type = unlock_recipe, recipe = platinum_ore_recipe},
}

table.insert(data_technology[tech_slag_processing_2].prerequisites, tech_ceramics)

-- ANGELS METALLURGY SMELTING
-- IRON and STEEL
data_technology[tech_iron_smelting_1].prerequisites = {tech_metallurgy_1, tech_coal_processing_1}

iron_ingot_2 = "angels-ingot-iron-2"
data_technology[tech_iron_smelting_2].prerequisites = {tech_ore_processing_1, tech_iron_smelting_1, tech_powder_metallurgy_2}
data_technology[tech_iron_smelting_2].effects =
{
    {type = unlock_recipe, recipe = iron_processed},
    {type = unlock_recipe, recipe = iron_hydroxide_II},
    {type = unlock_recipe, recipe = iron_ingot_2},
    {type = unlock_recipe, recipe = iron_powder},
    {type = unlock_recipe, recipe = iron_hydroxide_III},
    {type = unlock_recipe, recipe = iron_oxide_III}
}

data_technology[tech_iron_smelting_3].prerequisites = {tech_ore_processing_2, tech_iron_smelting_2, tech_nitrogen_processing_2, tech_sulfur_processing_1}
iron_ingot_3 = "angels-ingot-iron-3"
data_technology[tech_iron_smelting_3].effects =
{
    {type = unlock_recipe, recipe = iron_pellet},
    {type = unlock_recipe, recipe = iron_sulfate_II},
    {type = unlock_recipe, recipe = iron_sulfate_II_solution},
    {type = unlock_recipe, recipe = ammonium_sulfate},
    {type = unlock_recipe, recipe = ammonium_sulfate_solution},
    {type = unlock_recipe, recipe = iron_cathode},
    {type = unlock_recipe, recipe = iron_ingot_3}
}

-- COPPER
data_technology[tech_copper_smelting_1].prerequisites = {tech_metallurgy_1, tech_coal_processing_1}

data_technology[tech_copper_smelting_2].prerequisites = {tech_ore_processing_1, tech_copper_smelting_1, tech_powder_metallurgy_2}
copper_ingot_2 = "angels-ingot-copper-2"
data_technology[tech_copper_smelting_2].effects =
{
    {type = unlock_recipe, recipe = copper_processed},
    {type = unlock_recipe, recipe = copper_hydroxide_II},
    {type = unlock_recipe, recipe = copper_ingot_2},
    {type = unlock_recipe, recipe = copper_powder},
}

data_technology[tech_copper_smelting_3].prerequisites = {tech_ore_processing_2, tech_copper_smelting_2, tech_sulfur_processing_1}
copper_ingot_3 = "angels-ingot-copper-3"
data_technology[tech_copper_smelting_3].effects =
{
    {type = unlock_recipe, recipe = copper_pellet},
    {type = unlock_recipe, recipe = copper_sulfate_II},
    {type = unlock_recipe, recipe = copper_sulfate_II_solution},
    {type = unlock_recipe, recipe = copper_cathode},
    {type = unlock_recipe, recipe = copper_ingot_3}
}

-- LEAD
data_technology[tech_lead_smelting_1].prerequisites = {tech_metallurgy_1, tech_coal_processing_1}

data_technology[tech_lead_smelting_2].prerequisites = {tech_ore_processing_1, tech_lead_smelting_1, tech_powder_metallurgy_2}
lead_ingot_2 = "angels-ingot-lead-2"
data_technology[tech_lead_smelting_2].effects =
{
    {type = unlock_recipe, recipe = lead_processed},
    {type = unlock_recipe, recipe = lead_oxide_II},
    {type = unlock_recipe, recipe = lead_ingot_2},
    {type = unlock_recipe, recipe = lead_powder}
}

data_technology[tech_lead_smelting_3].prerequisites = {tech_ore_processing_2, tech_lead_smelting_2, tech_sulfur_processing_1}
lead_ingot_3 = "angels-ingot-lead-3"
data_technology[tech_lead_smelting_3].effects =
{
    {type = unlock_recipe, recipe = lead_pellet},
    {type = unlock_recipe, recipe = hexafluorosilicic_acid},
    {type = unlock_recipe, recipe = hexafluorosilicate_lead_II_solution},
    {type = unlock_recipe, recipe = lead_cathode},
    {type = unlock_recipe, recipe = lead_ingot_3},
    {type = unlock_recipe, recipe = hexafluorosilicic_acid_from_silicon_fluoride_IV_gas}
}

-- TIN
data_technology[tech_tin_smelting_1].prerequisites = {tech_metallurgy_1, tech_coal_processing_1}

data_technology[tech_tin_smelting_2].prerequisites = {tech_ore_processing_1, tech_tin_smelting_1, tech_powder_metallurgy_2, tech_chlorine_processing_1}
tin_ingot_2 = "angels-ingot-tin-2"
data_technology[tech_tin_smelting_2].effects =
{
    {type = unlock_recipe, recipe = tin_processed},
    {type = unlock_recipe, recipe = tin_chloride_IV},
    {type = unlock_recipe, recipe = tin_ingot_2},
    {type = unlock_recipe, recipe = tin_powder}
}

data_technology[tech_tin_smelting_3].prerequisites = {tech_ore_processing_2, tech_tin_smelting_2, tech_sulfur_processing_1}
tin_ingot_3 = "angels-ingot-tin-3"
data_technology[tech_tin_smelting_3].effects =
{
    {type = unlock_recipe, recipe = tin_pellet},
    {type = unlock_recipe, recipe = hexafluorosilicic_acid},
    {type = unlock_recipe, recipe = hexafluorosilicate_tin_II_solution},
    {type = unlock_recipe, recipe = tin_cathode},
    {type = unlock_recipe, recipe = tin_ingot_3},
    {type = unlock_recipe, recipe = hexafluorosilicic_acid_from_silicon_fluoride_IV_gas}
}

-- MANGANESE
data_technology[tech_manganese_smelting_1].prerequisites = {tech_metallurgy_1, tech_ore_advanced_crushing, tech_coal_processing_1}
data_technology[tech_manganese_smelting_1].effects =
{
    {type = unlock_recipe, recipe = manganese_oxide_IV},
    {type = unlock_recipe, recipe = manganese_ingot},
    {type = unlock_recipe, recipe = manganese_molten_angels}
}

manganese_ingot_2 = "angels-ingot-manganese-2"
data_technology[tech_manganese_smelting_2].effects =
{
    {type = unlock_recipe, recipe = manganese_processed},
    {type = unlock_recipe, recipe = manganese_oxide_II},
    {type = unlock_recipe, recipe = manganese_sulfate_II},
    {type = unlock_recipe, recipe = manganese_sulfate_II_solution},
    {type = unlock_recipe, recipe = manganese_cathode},
    {type = unlock_recipe, recipe = manganese_ingot_2},
    {type = unlock_recipe, recipe = manganese_powder}
}

data_technology[tech_manganese_smelting_3].prerequisites = {tech_ore_processing_2, tech_manganese_smelting_2, tech_nitrogen_processing_2, tech_sulfur_processing_1}
manganese_oxide_II_2 = "angels-solid-manganese-oxide-2"
manganese_cathode_2 = "angels-cathode-manganese-2"
data_technology[tech_manganese_smelting_3].effects =
{
    {type = unlock_recipe, recipe = manganese_pellet},
    {type = unlock_recipe, recipe = manganese_oxide_II_2},
    {type = unlock_recipe, recipe = manganese_sulfate_II_solution_from_manganese_oxide_II},
    {type = unlock_recipe, recipe = ammonium_sulfate},
    {type = unlock_recipe, recipe = ammonium_sulfate_solution},
    {type = unlock_recipe, recipe = manganese_cathode_2}
}

-- SILICON
data_technology[tech_silicon_smelting_1].prerequisites = {tech_powder_metallurgy_2, tech_nitrogen_processing_1, tech_ore_floatation}
data_technology[tech_silicon_smelting_1].effects =
{
    {type = unlock_recipe, recipe = silicon_oxide_IV},
    {type = unlock_recipe, recipe = silicon_ingot},
    {type = unlock_recipe, recipe = silicon_molten_angels},
    {type = unlock_recipe, recipe = silicon_mono_seed},
    {type = unlock_recipe, recipe = silicon_mono},
    {type = unlock_recipe, recipe = silicon_powder}
}

data_technology[tech_silicon_smelting_2].prerequisites = {tech_ore_processing_2, tech_silicon_smelting_1, tech_chlorine_processing_1}
silicon_ingot_2 = "angels-ingot-silicon-2"
data_technology[tech_silicon_smelting_2].effects =
{
    {type = unlock_recipe, recipe = silicon_processed},
    {type = unlock_recipe, recipe = trichlorosilane},
    {type = unlock_recipe, recipe = silicon_ingot_2},
    {type = unlock_recipe, recipe = silicon_oxide_IV_from_silicon_chloride_IV_gas}
}

data_technology[tech_silicon_smelting_3].prerequisites = {tech_ore_processing_3, tech_silicon_smelting_2, tech_bio_fermentation}
silicon_ingot_3 = "angels-ingot-silicon-3"
data_technology[tech_silicon_smelting_3].effects =
{
    {type = unlock_recipe, recipe = silicon_pellet},
    {type = unlock_recipe, recipe = diethyl_ether},
    {type = unlock_recipe, recipe = aluminium_chloride_solution_ether},
    {type = unlock_recipe, recipe = lithium_hydride},
    {type = unlock_recipe, recipe = lithium_aluminium_hydride_solution_ether},
    {type = unlock_recipe, recipe = silane_gas},
    {type = unlock_recipe, recipe = silicon_ingot_3}
}

-- NICKEL
data_technology[tech_nickel_smelting_1].prerequisites = {tech_metallurgy_2}

data_technology[tech_nickel_smelting_2].prerequisites = {tech_powder_metallurgy_3, tech_ore_processing_2, tech_nickel_smelting_1, tech_boron_processing, tech_sulfur_processing_1}
nickel_ingot_2 = "angels-ingot-nickel-2"
data_technology[tech_nickel_smelting_2].effects =
{
    {type = unlock_recipe, recipe = nickel_processed},
    {type = unlock_recipe, recipe = nickel_sulfate_II},
    {type = unlock_recipe, recipe = nickel_sulfate_II_solution},
    {type = unlock_recipe, recipe = nickel_cathode},
    {type = unlock_recipe, recipe = nickel_ingot_2},
    {type = unlock_recipe, recipe = nickel_powder}
}

data_technology[tech_nickel_smelting_3].prerequisites = {tech_ore_processing_3, tech_nickel_smelting_2}
nickel_ingot_3 = "angels-ingot-nickel-3"
data_technology[tech_nickel_smelting_3].effects =
{
    {type = unlock_recipe, recipe = nickel_pellet},
    {type = unlock_recipe, recipe = tetracarbonyl_nickel},
    {type = unlock_recipe, recipe = nickel_ingot_3}
}

-- ALUMINIUM
data_technology[tech_aluminium_smelting_1].prerequisites = {tech_ore_floatation, tech_chlorine_processing_1}

aluminium_plate_angels = "angels-plate-aluminium"
data_technology[tech_aluminium_smelting_1].effects =
{
    {type = unlock_recipe, recipe = aluminium_chloride},
    {type = unlock_recipe, recipe = aluminium_hydroxide},
    {type = unlock_recipe, recipe = aluminium_oxide},
    {type = unlock_recipe, recipe = aluminium_ingot},
    {type = unlock_recipe, recipe = aluminium_molten_angels},
    {type = unlock_recipe, recipe = aluminium_plate_angels}
}

data_technology[tech_aluminium_smelting_2].prerequisites = {tech_ore_processing_2, tech_aluminium_smelting_1, tech_powder_metallurgy_3, tech_nitrogen_processing_2}
aluminium_hydroxide_2 = "angels-solid-aluminium-hydroxide-2"
data_technology[tech_aluminium_smelting_2].effects =
{
    {type = unlock_recipe, recipe = aluminium_processed},
    {type = unlock_recipe, recipe = aluminium_chloride_solution},
    {type = unlock_recipe, recipe = aluminium_chloride_2},
    {type = unlock_recipe, recipe = aluminium_hydroxide_2},
    {type = unlock_recipe, recipe = aluminium_powder},
    {type = unlock_recipe, recipe = ammonium_chloride_reprocess},
    {type = unlock_recipe, recipe = ammonia_gas_alt}
}

-- ZINC
data_technology[tech_zinc_smelting_1].prerequisites = {tech_ore_floatation, tech_metallurgy_2, tech_chlorine_processing_1}
zinc_plate_angels = "angels-plate-zinc"
data_technology[tech_zinc_smelting_1].effects =
{
    {type = unlock_recipe, recipe = zinc_chloride},
    {type = unlock_recipe, recipe = zinc_chloride_solution},
    {type = unlock_recipe, recipe = zinc_ingot},
    {type = unlock_recipe, recipe = zinc_molten_angels},
    {type = unlock_recipe, recipe = zinc_plate_angels}
}

data_technology[tech_zinc_smelting_2].prerequisites = {tech_ore_processing_2, tech_zinc_smelting_1, tech_powder_metallurgy_3, tech_chlorine_processing_1}
zinc_ingot_2 = "angels-ingot-zinc-2"
data_technology[tech_zinc_smelting_2].effects =
{
    {type = unlock_recipe, recipe = zinc_processed},
    {type = unlock_recipe, recipe = zinc_oxide},
    {type = unlock_recipe, recipe = zinc_gas},
    {type = unlock_recipe, recipe = zinc_ingot_2},
    {type = unlock_recipe, recipe = zinc_powder},
    {type = unlock_recipe, recipe = magnesium_chloride_from_magnesium_chloride_solution}
}

data_technology[tech_zinc_smelting_3].prerequisites = {tech_ore_processing_3, tech_zinc_smelting_2, tech_sulfur_processing_1}
zinc_oxide_2 = "angels-solid-zinc-oxide-2"
zinc_ingot_3 = "angels-ingot-zinc-3"
data_technology[tech_zinc_smelting_3].effects =
{
    {type = unlock_recipe, recipe = zinc_pellet},
    {type = unlock_recipe, recipe = zinc_oxide_2},
    {type = unlock_recipe, recipe = zinc_sulfate_solution},
    {type = unlock_recipe, recipe = zinc_cathode},
    {type = unlock_recipe, recipe = zinc_ingot_3}
}

-- SILVER
data_technology[tech_silver_smelting_1].prerequisites = {tech_ore_floatation, tech_metallurgy_2}

data_technology[tech_silver_smelting_2].prerequisites = {tech_ore_processing_2, tech_silver_smelting_1, tech_powder_metallurgy_3, tech_nitrogen_processing_2}

data_technology[tech_silver_smelting_3].prerequisites = {tech_ore_processing_3, tech_silver_smelting_2, tech_sodium_processing_2}
silver_ingot_3 = "angels-ingot-silver-3"
data_technology[tech_silver_smelting_3].effects =
{
    {type = unlock_recipe, recipe = silver_pellet},
    {type = unlock_recipe, recipe = sodium_dicyanoargentate_I},
    {type = unlock_recipe, recipe = sodium_dicyanoargentate_I_solution},
    {type = unlock_recipe, recipe = silver_cathode},
    {type = unlock_recipe, recipe = silver_ingot_3},
    {type = unlock_recipe, recipe = sodium_peroxide_reprocess},
    {type = unlock_recipe, recipe = sodium_cyanide_solution_alt}
}

-- TITANIUM
titanium_ingot_2 = "angels-ingot-titanium-2"
data_technology[tech_titanium_smelting_3].prerequisites = {tech_ore_processing_4, tech_titanium_smelting_2, tech_bio_processing_green}
data_technology[tech_titanium_smelting_3].effects =
{
    {type = unlock_recipe, recipe = titanium_pellet},
    {type = unlock_recipe, recipe = titanium_iodide_IV_gas},
    {type = unlock_recipe, recipe = titanium_ingot_2},
    {type = unlock_recipe, recipe = iodine_gas}
}

-- GOLD
data_technology[tech_gold_smelting_3].prerequisites = {tech_ore_processing_4, tech_gold_smelting_2, tech_sodium_processing_2}
gold_cathode_2 = "angels-cathode-gold-2"
data_technology[tech_gold_smelting_3].effects =
{
    {type = unlock_recipe, recipe = gold_pellet},
    {type = unlock_recipe, recipe = sodium_dicyanoaurate_I},
    {type = unlock_recipe, recipe = sodium_dicyanoaurate_I_solution},
    {type = unlock_recipe, recipe = gold_cathode_2},
    {type = unlock_recipe, recipe = sodium_peroxide_reprocess},
    {type = unlock_recipe, recipe = sodium_cyanide_solution_alt}
}

-- COBALT
data_technology[tech_cobalt_smelting_1].effects =
{
    {type = unlock_recipe, recipe = cobalt_ingot},
    {type = unlock_recipe, recipe = cobalt_oxide_II_III},
    {type = unlock_recipe, recipe = cobalt_molten_angels}
}

data_technology[tech_cobalt_smelting_3].prerequisites = {tech_ore_processing_4, tech_cobalt_smelting_2, tech_chlorine_processing_1}
cobalt_oxide_II_III_3 = "angels-solid-cobalt-oxide-3"
data_technology[tech_cobalt_smelting_3].effects =
{
    {type = unlock_recipe, recipe = cobalt_pellet},
    {type = unlock_recipe, recipe = cobalt_chloride_II_solution},
    {type = unlock_recipe, recipe = cobalt_hydroxide_II},
    {type = unlock_recipe, recipe = cobalt_oxide_II_III_3}
}

-- CHROMIUM
data_technology[tech_chromium_smelting_1].localised_name = {"technology-name.chromium-smelting-1"}
data_technology[tech_chromium_smelting_1].effects =
{
    {type = unlock_recipe, recipe = chromium_oxide_VI},
    {type = unlock_recipe, recipe = chromic_acid},
    {type = unlock_recipe, recipe = chromium_cathode},
    {type = unlock_recipe, recipe = chromium_ingot},
    {type = unlock_recipe, recipe = chromium_molten_angels}
}

data_technology[tech_chromium_smelting_2].localised_name = {"technology-name.chromium-smelting-2"}
data_technology[tech_chromium_smelting_2].prerequisites = {tech_ore_processing_4, tech_chromium_smelting_1, tech_zinc_smelting_3}
chromium_ingot_2 = "angels-ingot-chrome-2"
data_technology[tech_chromium_smelting_2].effects =
{
    {type = unlock_recipe, recipe = chromium_processed},
    {type = unlock_recipe, recipe = chromium_sulfate_II_solution},
    {type = unlock_recipe, recipe = chromium_ingot_2}
}

data_technology[tech_chromium_smelting_3].localised_name = {"technology-name.chromium-smelting-3"}
data_technology[tech_chromium_smelting_3].prerequisites = {tech_ore_processing_5, tech_chromium_smelting_2, tech_aluminium_smelting_3, tech_potassium_processing}
chromium_ingot_3 = "angels-ingot-chrome-3"
data_technology[tech_chromium_smelting_3].effects =
{
    {type = unlock_recipe, recipe = chromium_pellet},
    {type = unlock_recipe, recipe = chromium_oxide_III},
    {type = unlock_recipe, recipe = potassium_chromate_solution},
    {type = unlock_recipe, recipe = potassium_dichromate_solution},
    {type = unlock_recipe, recipe = chromium_sulfate_III},
    {type = unlock_recipe, recipe = chromium_hydroxide_III},
    {type = unlock_recipe, recipe = chromium_ingot_3},
    {type = unlock_recipe, recipe = lithium_tetraethoxy_aluminate_solution_ether},
    {type = unlock_recipe, recipe = lithium_tetraethoxy_aluminate_solution_ether_reprocess},
    {type = unlock_recipe, recipe = lithium_chloride_solution_from_lithium_hydroxide},
    {type = unlock_recipe, recipe = aluminium_chloride_solution_from_aluminium_hydroxide},
    {type = unlock_recipe, recipe = potassium_hydroxide_solution_from_potassium_sulfate_solution}
}

-- TUNGSTEN
tungsten_plate_angels = "angels-plate-tungsten"
table.insert(data_technology[tech_tungsten_smelting_1].prerequisites, tech_powellite_processing_2)
data_technology[tech_tungsten_smelting_1].effects =
{
    {type = unlock_recipe, recipe = tungsten_oxide_VI},
    {type = unlock_recipe, recipe = tungsten_fluoride_VI_gas},
    {type = unlock_recipe, recipe = tungsten_powder},
    {type = unlock_recipe, recipe = tungsten_plate_angels},
    {type = unlock_recipe, recipe = silicon_oxide_IV_from_silicon_fluoride_IV_gas},
    {type = unlock_recipe, recipe = magnesium_silicide_ingot},
    {type = unlock_recipe, recipe = silane_gas_from_magnesium_silicide_ingot}
}

tungsten_oxide_VI_2 = "angels-solid-tungsten-oxide-2"
data_technology[tech_tungsten_smelting_2].prerequisites = {tech_ore_processing_4, tech_powder_metallurgy_5}
data_technology[tech_tungsten_smelting_2].effects =
{
    {type = unlock_recipe, recipe = tungsten_processed},
    {type = unlock_recipe, recipe = ammonium_paratungstate},
    {type = unlock_recipe, recipe = tungsten_oxide_VI_2}
}

ammonium_paratungstate_2 = "angels-solid-ammonium-paratungstate-2"
data_technology[tech_tungsten_smelting_3].effects =
{
    {type = unlock_recipe, recipe = tungsten_pellet},
    {type = unlock_recipe, recipe = peroxo_tungstic_acid},
    {type = unlock_recipe, recipe = tungstic_acid},
    {type = unlock_recipe, recipe = ammonium_tungstate_solution},
    {type = unlock_recipe, recipe = ammonium_paratungstate_2}
}

-- PLATINUM
data_technology[tech_platinum_smelting_1].effects =
{
    {type = unlock_recipe, recipe = platinum_chloride_II},
    {type = unlock_recipe, recipe = platinum_fluoride_IV},
    {type = unlock_recipe, recipe = platinum_ingot},
    {type = unlock_recipe, recipe = platinum_molten_angels},
    {type = unlock_recipe, recipe = platinum_plate},
    {type = unlock_recipe, recipe = platinum_cable}
}

data_technology[tech_platinum_smelting_2].effects =
{
    {type = unlock_recipe, recipe = platinum_processed},
    {type = unlock_recipe, recipe = hexachloroplatinic_acid},
    {type = unlock_recipe, recipe = ammonium_hexachloroplatinate_IV},
    {type = unlock_recipe, recipe = platinum_ingot_2},
    {type = unlock_recipe, recipe = formic_acid},
    {type = unlock_recipe, recipe = copper_nitrate_II_solution},
    {type = unlock_recipe, recipe = copper_hydroxide_II_from_copper_nitrate_II_solution}
}

data_technology[tech_platinum_smelting_3].effects =
{
    {type = unlock_recipe, recipe = platinum_pellet},
    {type = unlock_recipe, recipe = sodium_hexachloroplatinate_IV_solution},
    {type = unlock_recipe, recipe = platinum_hydroxide_IV},
    {type = unlock_recipe, recipe = sodium_hexahydroxoplatinate_IV_solution},
    {type = unlock_recipe, recipe = platinum_ingot_3}
}

-- LITHIUM
algae_brown_lithium_chloride = "angels-algae-brown-burning"
data_technology[tech_lithium_processing].effects =
{
    {type = unlock_recipe, recipe = lithium_chloride_angels},
    {type = unlock_recipe, recipe = algae_brown_lithium_chloride},
    {type = unlock_recipe, recipe = lithium_chloride_solution},
    {type = unlock_recipe, recipe = lithium_perchlorate_solution},
    {type = unlock_recipe, recipe = lithium_perchlorate_bob},
    {type = unlock_recipe, recipe = lithium_bob}
}

-- ANGELS METALLURGY CASTING
-- IRON and STEEL
local iron_casting_2 = "angels-iron-casting-2"
data_technology[iron_casting_2].prerequisites = {tech_manganese_smelting_1, tech_magnesium_smelting_1, tech_strand_casting_1}
iron_molten_2 = "angels-liquid-molten-iron-2"
iron_plate_2 = "angels-plate-iron-2"
data_technology[iron_casting_2].effects =
{
    {type = unlock_recipe, recipe = iron_molten_2},
    {type = unlock_recipe, recipe = iron_roll},
    {type = unlock_recipe, recipe = iron_plate_2}
}

local iron_casting_3 = "angels-iron-casting-3"
data_technology[iron_casting_3].prerequisites = {iron_casting_2, tech_strand_casting_2}

iron_roll_2 = "angels-roll-iron-2"
data_technology[iron_casting_3].effects =
{
    {type = unlock_recipe, recipe = iron_roll_2}
}

data_technology[tech_steel_smelting_1].prerequisites = {tech_metallurgy_1, tech_coal_processing_1}

data_technology[tech_steel_smelting_2].prerequisites = {tech_strand_casting_1, tech_iron_smelting_2, tech_manganese_smelting_1, tech_magnesium_smelting_1, tech_steel_smelting_1}
steel_molten_2 = "angels-liquid-molten-steel-2"
steel_plate_2 = "angels-plate-steel-2"
data_technology[tech_steel_smelting_2].effects =
{
    {type = unlock_recipe, recipe = steel_ingot_2},
    {type = unlock_recipe, recipe = steel_molten_2},
    {type = unlock_recipe, recipe = steel_roll},
    {type = unlock_recipe, recipe = steel_plate_2}
}

data_technology[tech_steel_smelting_3].prerequisites = {tech_strand_casting_2, tech_steel_smelting_2, tech_iron_smelting_2}
steel_roll_2 = "angels-roll-steel-2"
data_technology[tech_steel_smelting_3].effects =
{
    {type = unlock_recipe, recipe = steel_ingot_3},
    {type = unlock_recipe, recipe = steel_roll_2}
}

-- COPPER

-- LEAD

-- TIN

-- SILICON

-- MANGANESE

-- NICKEL

-- ALUMINIUM
local aluminium_casting_2 = "angels-aluminium-casting-2"
data_technology[aluminium_casting_2].prerequisites = {tech_strand_casting_2, tech_aluminium_smelting_1, tech_manganese_smelting_2, tech_magnesium_smelting_2}
aluminium_molten_2 = "angels-liquid-molten-aluminium-2"
aluminium_plate_2 = "angels-plate-aluminium-2"
data_technology[aluminium_casting_2].effects =
{
    {type = unlock_recipe, recipe = aluminium_molten_2},
    {type = unlock_recipe, recipe = aluminium_roll},
    {type = unlock_recipe, recipe = aluminium_plate_2}
}

local aluminium_casting_3 = "angels-aluminium-casting-3"
data_technology[aluminium_casting_3].prerequisites = {tech_strand_casting_3, aluminium_casting_2, tech_chromium_smelting_1}
aluminium_molten_3 = "angels-liquid-molten-aluminium-3"
aluminium_roll_2 = "angels-roll-aluminium-2"
data_technology[aluminium_casting_3].effects =
{
    {type = unlock_recipe, recipe = aluminium_molten_3},
    {type = unlock_recipe, recipe = aluminium_roll_2}
}

-- ZINC

-- SILVER

-- TITANIUM

local titanium_casting_2 = "angels-titanium-casting-2"
data_technology[titanium_casting_2].prerequisites = {tech_strand_casting_3, tech_titanium_smelting_1, tech_manganese_smelting_3, tech_magnesium_smelting_3}
titanium_molten_2 = "angels-liquid-molten-titanium-2"
titanium_plate_2 = "angels-plate-titanium-2"
data_technology[titanium_casting_2].effects =
{
    {type = unlock_recipe, recipe = titanium_molten_2},
    {type = unlock_recipe, recipe = titanium_roll},
    {type = unlock_recipe, recipe = titanium_plate_2}
}

local titanium_casting_3 = "angels-titanium-casting-3"
data_technology[titanium_casting_3].prerequisites = {tech_strand_casting_4, titanium_casting_2, tech_chromium_smelting_1}

titanium_molten_3 = "angels-liquid-molten-titanium-3"
titanium_roll_2 = "angels-roll-titanium-2"
data_technology[titanium_casting_3].effects =
{
    {type = unlock_recipe, recipe = titanium_molten_3},
    {type = unlock_recipe, recipe = titanium_roll_2}
}

-- GOLD

-- TUNGSTEN

-- PLATINUM

-- GLASS
glass_mixture_2 = "angels-solid-glass-mixture-2"
data_technology["angels-glass-smelting-2"].effects =
{
    {type = unlock_recipe, recipe = glass_mixture_2},
    {type = unlock_recipe, recipe = glass_coil_fiber},
    {type = unlock_recipe, recipe = glass_fiber_board}
}
glass_mixture_3 = "angels-solid-glass-mixture-3"
glass_mixture_4 = "angels-solid-glass-mixture-4"
glass_coil_fiber_2 = "angels-coil-glass-fiber-2"
data_technology["angels-glass-smelting-3"].effects =
{
    {type = unlock_recipe, recipe = glass_mixture_3},
    {type = unlock_recipe, recipe = glass_mixture_4},
    {type = unlock_recipe, recipe = glass_coil_fiber_2}
}

-- STONE
data_technology[concrete].effects =
{
    {type = unlock_recipe, recipe = concrete},
    {type = unlock_recipe, recipe = hazard_concrete},
    {type = unlock_recipe, recipe = hazard_concrete_processing},
    {type = unlock_recipe, recipe = iron_rod},
    {type = unlock_recipe, recipe = reinforced_concrete},
    {type = unlock_recipe, recipe = reinforced_hazard_concrete},
    {type = unlock_recipe, recipe = reinforced_hazard_concrete_processing}
}

if settings.startup[setting_early_sintering_oven].value == true then data_technology[tech_stone_smelting_1].prerequisites = {tech_water_washing_1, logistic_science_pack} end

concrete_2 = "angels-concrete"
data_technology[tech_stone_smelting_2].effects =
{
    {type = unlock_recipe, recipe = cement},
    {type = unlock_recipe, recipe = concrete_liquid},
    {type = unlock_recipe, recipe = concrete_brick},
    {type = unlock_recipe, recipe = concrete_2},
    {type = unlock_recipe, recipe = reinforced_concrete_2}
}

data_technology[tech_stone_smelting_3].prerequisites = {tech_powder_metallurgy_3, tech_iron_smelting_2, tech_titanium_smelting_1, production_science_pack}
cement_2 = "angels-solid-cement-2"
data_technology[tech_stone_smelting_3].effects =
{
    {type = unlock_recipe, recipe = titanium_oxide_IV},
    {type = unlock_recipe, recipe = cement_2},
    {type = unlock_recipe, recipe = "angels-liquid-concrete-2"},
    {type = unlock_recipe, recipe = reinforced_concrete_brick}
}

-- SOLDER
solder_angels = "angels-solder"
data_technology[tech_solder_smelting_1].effects =
{
    {type = unlock_recipe, recipe = solder_molten_angels},
    {type = unlock_recipe, recipe = solder_angels}
}

data_technology[tech_solder_smelting_2].prerequisites = {tech_strand_casting_1, tech_zinc_smelting_1, tech_solder_smelting_1}
solder_molten_2 = "angels-liquid-molten-solder-2"
solder_2 = "angels-solder-2"
data_technology[tech_solder_smelting_2].effects =
{
    {type = unlock_recipe, recipe = solder_molten_2},
    {type = unlock_recipe, recipe = solder_roll},
    {type = unlock_recipe, recipe = solder_2}
}

data_technology[tech_solder_smelting_3].prerequisites = {tech_strand_casting_2, tech_silver_smelting_2, tech_solder_smelting_2}
solder_molten_3 = "angels-liquid-molten-solder-3"
solder_roll_2 = "angels-roll-solder-2"
data_technology[tech_solder_smelting_3].effects =
{
    {type = unlock_recipe, recipe = solder_molten_3},
    {type = unlock_recipe, recipe = solder_roll_2}
}

-- ALLOYS
-- BRONZE
data_technology[tech_bronze_smelting_2].prerequisites = {tech_bronze_smelting_1, tech_lead_smelting_2}
data_technology[tech_bronze_smelting_3].prerequisites = {tech_bronze_smelting_2, tech_metallurgy_3, tech_zinc_smelting_1}

-- BRASS
data_technology[tech_brass_smelting_2].prerequisites = {tech_tin_smelting_3, tech_metallurgy_3}
data_technology[tech_brass_smelting_3].prerequisites = {tech_brass_smelting_2, tech_metallurgy_4, tech_lead_smelting_3}

-- GUNMETAL
data_technology[tech_gunmetal_smelting_1].prerequisites = {tech_copper_smelting_2, tech_tin_smelting_2, tech_zinc_smelting_1}

-- INVAR
data_technology[tech_invar_smelting_1].prerequisites = {tech_iron_smelting_2, tech_nickel_smelting_1}

-- COBALT-STEEL
data_technology[tech_cobalt_steel_smelting_1].prerequisites = {tech_steel_smelting_2, tech_cobalt_smelting_1}

-- NITINOL
data_technology[tech_nitinol_smelting_1].prerequisites = {tech_titanium_smelting_1, tech_nickel_smelting_2, tech_metallurgy_4}

if settings.startup[setting_early_sintering_oven].value == true then
    data_technology[tech_powder_metallurgy_1].prerequisites = {tech_stone_smelting_1, logistic_science_pack, tech_steel_processing}
    data_technology[tech_powder_metallurgy_1].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1}
    }
end

data_technology[tech_ore_processing_1].effects =
{
    {type = unlock_recipe, recipe = ore_processing_machine_1},
    {type = unlock_recipe, recipe = coke_processed}
}

data_technology[tech_ore_processing_2].prerequisites = {tech_ore_processing_1, tech_metallurgy_3}
data_technology[tech_ore_processing_2].effects =
{
    {type = unlock_recipe, recipe = ore_processing_machine_2},
    {type = unlock_recipe, recipe = pellet_press_1},
    {type = unlock_recipe, recipe = coke_pellet_angels}
}

table.insert(data_technology[tech_ore_processing_5].prerequisites, tech_stone_smelting_5)

data_technology[tech_metallurgy_5].prerequisites =
{
    advanced_processing_unit,
    tech_tungsten_processing,
    utility_science_pack,
    tech_iron_smelting_3,
    tech_copper_smelting_3,
    tech_aluminium_smelting_3,
    tech_silver_smelting_3,
    tech_stone_smelting_4
}
data_technology[tech_metallurgy_5].effects =
{
    {type = unlock_recipe, recipe = "angels-chemical-furnace-4"},
    {type = unlock_recipe, recipe = iron_oxide_III_from_iron_sulfate_II},
    {type = unlock_recipe, recipe = iron_hydroxide_II_from_iron_sulfate_II_solution},
    {type = unlock_recipe, recipe = copper_hydroxide_II_from_copper_sulfate_II_solution},
    {type = unlock_recipe, recipe = copper_chloride_I},
    {type = unlock_recipe, recipe = copper_chloride_I_alt},
    {type = unlock_recipe, recipe = ammonium_chloride_solution_alt},
    {type = unlock_recipe, recipe = ammonium_dichlorocuprate_I_solution},
    {type = unlock_recipe, recipe = acrylonitrile},
    {type = unlock_recipe, recipe = liquid_plastic_4},
    {type = unlock_recipe, recipe = acetone_cyanohydrin},
    {type = unlock_recipe, recipe = methyl_methacrylate},
    {type = unlock_recipe, recipe = liquid_plastic_5}
}

-- ANGELS WATER TREATMENT
water_saline_from_water = "angels-water-saline-from-water"
data_technology[tech_water_treatment_3].effects =
{
    {type = unlock_recipe, recipe = heavy_offshore_pump},
    {type = unlock_recipe, recipe = hydro_plant_3},
    {type = unlock_recipe, recipe = washing_plant_3},
    {type = unlock_recipe, recipe = salination_plant_1},
    {type = unlock_recipe, recipe = water_saline_from_water},
    {type = unlock_recipe, recipe = salt_angels}
}

data_technology[tech_water_treatment_4].prerequisites = {tech_stone_smelting_3, tech_titanium_processing, tech_water_treatment_3, processing_unit}
solid_salt_from_saline = "angels-solid-salt-from-saline"
data_technology[tech_water_treatment_4].effects =
{
    {type = unlock_recipe, recipe = hydro_plant_4},
    {type = unlock_recipe, recipe = washing_plant_4},
    {type = unlock_recipe, recipe = salination_plant_2},
    {type = unlock_recipe, recipe = solid_salt_from_saline}
}

data_technology[electric_boiler_3].prerequisites = {electric_boiler_2, tech_advanced_chemistry_4, utility_science_pack, tech_tungsten_alloy_processing}

data_technology["angels-coolant-1"].prerequisites = {"angels-cooling", "angels-slag-processing-2", "angels-oil-processing", tech_battery_2}

-- ANGELS PETROCHEM REFINING
data_technology[tech_coal_processing_3].prerequisites = {tech_coal_processing_2}
data_technology[tech_coal_processing_3].effects = {{type = unlock_recipe, recipe = coke_purification_2}}

sodium_nitrate_processing = "angels-solid-sodium-nitrate-processing"
sodium_nitrate_acid_processing = "angels-sodium-nitrate-acid-processing"
data_technology[tech_nitrogen_processing_2].effects =
{
    {type = unlock_recipe, recipe = air_filter_2},
    {type = unlock_recipe, recipe = ammonia_angels},
    {type = unlock_recipe, recipe = nitrogen_monoxide_angels},
    {type = unlock_recipe, recipe = nitrogen_dioxide_angels},
    {type = unlock_recipe, recipe = sodium_nitrate_processing},
    {type = unlock_recipe, recipe = sodium_nitrate},
    {type = unlock_recipe, recipe = sodium_nitrate_solution},
    {type = unlock_recipe, recipe = urea_solution_angels},
    {type = unlock_recipe, recipe = nitric_acid_angels},
    {type = unlock_recipe, recipe = sodium_nitrate_acid_processing}
}

solid_fuel_hydrazine = "angels-solid-fuel-hydrazine"
data_technology[tech_nitrogen_processing_3].effects =
{
    {type = unlock_recipe, recipe = air_filter_3},
    {type = unlock_recipe, recipe = melamine_solution_angels},
    {type = unlock_recipe, recipe = sodium_hypochlorite_angels},
    {type = unlock_recipe, recipe = sodium_hypochlorite_solution},
    {type = unlock_recipe, recipe = sodium_hypochlorite_solution_from_sodium_hydroxide_solution},
    {type = unlock_recipe, recipe = monochloramine_angels},
    {type = unlock_recipe, recipe = hydrazine_angels},
    {type = unlock_recipe, recipe = solid_fuel_hydrazine}
}

data_technology[tech_nitrogen_processing_4].prerequisites = {tech_nitrogen_processing_3, tech_tungsten_alloy_processing, tech_advanced_chemistry_5, tech_metallurgy_5}
data_technology[tech_nitrogen_processing_4].effects =
{
    {type = unlock_recipe, recipe = air_filter_4},
    {type = unlock_recipe, recipe = dinitrogen_tetroxide_angels},
    {type = unlock_recipe, recipe = methylamine_angels},
    {type = unlock_recipe, recipe = dimethylamine_angels},
    {type = unlock_recipe, recipe = dimethylhydrazine_angels},
    {type = unlock_recipe, recipe = ammonium_chloride_solution_angels},
    {type = unlock_recipe, recipe = dicyandiamide_solution},
    {type = unlock_recipe, recipe = melamine_solution_from_dicyandiamide_solution},
    {type = unlock_recipe, recipe = ammonium_sulfate_solution_alt},
    {type = unlock_recipe, recipe = ammonium_hydrosulfate_reprocess}
}

sodium_sulfate_solution_electrolysis = "angels-solid-sodium-sulfate-separation"
sodium_chloride_solution_electrolysis = "angels-solid-salt-separation"
sodium_hypochlorite_decomposition = "angels-solid-sodium-hypochlorite-decomposition"
data_technology[tech_sodium_processing_1].effects =
{
    {type = unlock_recipe, recipe = sodium_sulfate_solution_electrolysis},
    {type = unlock_recipe, recipe = sodium_chloride_solution_electrolysis},
    {type = unlock_recipe, recipe = sodium_hydroxide_angels},
    {type = unlock_recipe, recipe = sodium_chloride},
    {type = unlock_recipe, recipe = sodium_chloride_solution},
    {type = unlock_recipe, recipe = sodium_sulfate_angels},
    {type = unlock_recipe, recipe = sodium_sulfate},
    {type = unlock_recipe, recipe = sodium_sulfate_solution},
    {type = unlock_recipe, recipe = sodium_hypochlorite_decomposition}
}

sodium_hydroxide_solution_reverse = "angels-liquid-aqueous-sodium-hydroxide-reverse"
sodium_carbonate_solution_electrolysis = "angels-solid-sodium-carbonate-electrolysis"
data_technology[tech_sodium_processing_2].effects =
{
    {type = unlock_recipe, recipe = sodium_angels},
    {type = unlock_recipe, recipe = sodium_hydroxide_solution_reverse},
    {type = unlock_recipe, recipe = sodium_carbonate_solution_electrolysis},
    {type = unlock_recipe, recipe = sodium_carbonate_angels},
    {type = unlock_recipe, recipe = sodium_carbonate},
    {type = unlock_recipe, recipe = sodium_carbonate_solution},
    {type = unlock_recipe, recipe = sodium_cyanide_angels},
    {type = unlock_recipe, recipe = sodium_cyanide_solution}
}

sulfur_gas_calcium_sulfate = "angels-gas-sulfur-dioxide-calcium-sulfate"
data_technology[tech_sulfur_processing_1].effects =
{
    {type = unlock_recipe, recipe = sulfur_dioxide_angels},
    {type = unlock_recipe, recipe = sulfur_gas_calcium_sulfate},
    {type = unlock_recipe, recipe = sulfur_trioxide_gas},
    {type = unlock_recipe, recipe = sulfuric_acid_angels},
    {type = unlock_recipe, recipe = hydrogen_fluoride_angels},
    {type = unlock_recipe, recipe = hydrofluoric_acid_angels},
    {type = unlock_recipe, recipe = peroxydisulfuric_acid},
    {type = unlock_recipe, recipe = hydrogen_peroxide}
}

table.insert(data_technology[tech_chlorine_processing_2].effects, {type = unlock_recipe, recipe = sodium_hydroxide_solution_angels})
table.insert(data_technology[tech_chlorine_processing_2].effects, {type = unlock_recipe, recipe = ethane_angels})
table.insert(data_technology[tech_chlorine_processing_2].effects, {type = unlock_recipe, recipe = chloroethane_gas})
table.insert(data_technology[tech_chlorine_processing_2].effects, {type = unlock_recipe, recipe = butane_angels})

hydrochloric_acid_from_sodium_chloride = "angels-liquid-hydrochloric-acid-solid-sodium-sulfate"
data_technology[tech_chlorine_processing_3].effects = {{type = unlock_recipe, recipe = hydrochloric_acid_from_sodium_chloride}}

data_technology[tech_chlorine_processing_4].effects =
{
    {type = unlock_recipe, recipe = sodium_chlorate_angels},
    {type = unlock_recipe, recipe = sodium_chlorate_solution},
    {type = unlock_recipe, recipe = sodium_chlorate_solution_from_sodium_hypochlorite_solution},
    {type = unlock_recipe, recipe = sodium_perchlorate_angels},
    {type = unlock_recipe, recipe = sodium_perchlorate_solution},
    {type = unlock_recipe, recipe = sodium_perchlorate_solution_from_sodium_chlorate_solution},
    {type = unlock_recipe, recipe = perchloric_acid_angels}
}

steam_cracking_methane = "angels-steam-cracking-methane"
catalyst_steam_cracking_naphtha = "angels-catalyst-steam-cracking-naphtha"
steam_cracking_butane = "angels-steam-cracking-butane"
data_technology[tech_steam_cracking_1].effects =
{
    {type = unlock_recipe, recipe = steam_cracker_1},
    {type = unlock_recipe, recipe = steam_cracking_methane},
    {type = unlock_recipe, recipe = ethylene_angels},
    {type = unlock_recipe, recipe = butene_gas},
    {type = unlock_recipe, recipe = propene_angels},
    {type = unlock_recipe, recipe = catalyst_steam_cracking_naphtha},
    {type = unlock_recipe, recipe = steam_cracking_butane},
    {type = unlock_recipe, recipe = butadiene_angels},
    {type = unlock_recipe, recipe = residual_angels}
}

table.insert(data_technology[tech_advanced_chemistry_2].effects, {type = unlock_recipe, recipe = butene_gas_from_butane_gas})

table.insert(data_technology[tech_advanced_chemistry_3].effects, {type = unlock_recipe, recipe = lubricant})
table.insert(data_technology[tech_advanced_chemistry_3].effects, {type = unlock_recipe, recipe = lubricant_from_naphtha})
table.insert(data_technology[tech_advanced_chemistry_3].effects, {type = unlock_recipe, recipe = methane_from_ethane})
table.insert(data_technology[tech_advanced_chemistry_3].effects, {type = unlock_recipe, recipe = methane_and_propene_from_butane})
table.insert(data_technology[tech_advanced_chemistry_3].effects, {type = unlock_recipe, recipe = ethane_and_ethylene_from_butane})

data_technology[tech_advanced_chemistry_4].prerequisites = {tech_titanium_processing, tech_stone_smelting_3, processing_unit}
table.insert(data_technology[tech_advanced_chemistry_4].effects, {type = unlock_recipe, recipe = sulfur_trioxide_separation})
table.insert(data_technology[tech_advanced_chemistry_4].effects, {type = unlock_recipe, recipe = sulfuric_acid_from_hydrogen_peroxide})

cumene_process = "angels-cumene-process"
table.insert(data_technology[tech_advanced_chemistry_5].prerequisites, tech_stone_smelting_4)
data_technology[tech_advanced_chemistry_5].effects =
{
    {type = unlock_recipe, recipe = advanced_chemical_plant_3},
    {type = unlock_recipe, recipe = gas_refinery_4},
    {type = unlock_recipe, recipe = advanced_gas_refinery_3},
    {type = unlock_recipe, recipe = oil_refinery_4},
    {type = unlock_recipe, recipe = separator_4},
    {type = unlock_recipe, recipe = steam_cracker_4},
    {type = unlock_recipe, recipe = phenol},
    {type = unlock_recipe, recipe = acetone_angels},
    {type = unlock_recipe, recipe = cumene_process},
    {type = unlock_recipe, recipe = bisphenol_a},
    {type = unlock_recipe, recipe = catalyst_yellow},
    {type = unlock_recipe, recipe = nitrogen_monoxide_2},
    {type = unlock_recipe, recipe = calcium_sulfate_angels},
    {type = unlock_recipe, recipe = lime_from_calcium_hydroxide},
    {type = unlock_recipe, recipe = calcium_carbide},
    {type = unlock_recipe, recipe = calcium_cyanamide},
    {type = unlock_recipe, recipe = calcium_hydroxide},
    {type = unlock_recipe, recipe = calcium_hydroxide_from_calcium_cyanamide},
    {type = unlock_recipe, recipe = limestone_from_calcium_cyanamide},
    {type = unlock_recipe, recipe = limestone_from_calcium_hydroxide_solution},
    {type = unlock_recipe, recipe = calcium_chloride_solution},
    {type = unlock_recipe, recipe = calcium_hydroxide_solution},
    {type = unlock_recipe, recipe = methane_from_acetylene_gas},
    {type = unlock_recipe, recipe = ethane_from_acetylene_gas},
    {type = unlock_recipe, recipe = chloroethane_from_acetylene_gas}
}

local explosives_1 = "angels-explosives-1"
data_technology[explosives_1].prerequisites = {explosives, tech_sodium_processing_2, military_science_pack}

explosives_nitroglycerin = "angels-solid-nitroglycerin"
data_technology[explosives_1].effects =
{
    {type = unlock_recipe, recipe = chlorine_oxide_gas},
    {type = unlock_recipe, recipe = hypochlorous_acid},
    {type = unlock_recipe, recipe = glycerol_dichlorohydrin},
    {type = unlock_recipe, recipe = glycerol_angels},
    {type = unlock_recipe, recipe = explosives_nitroglycerin},
    {type = unlock_recipe, recipe = sodium_chloride_solution_from_sodium_bicarbonate_solution},
    {type = unlock_recipe, recipe = sodium_sulfate_from_sodium_bicarbonate_solution},
    {type = unlock_recipe, recipe = carbonic_acid_reversed}
}

-- ANGELS BIOPROCESSING
data_technology[tech_bio_processing_brown].effects =
{
    {type = unlock_recipe, recipe = "angels-algae-farm"},
    {type = unlock_recipe, recipe = algae_green},
    {type = unlock_recipe, recipe = cellulose_fiber_angels}
}

data_technology[tech_bio_processing_green].prerequisites = {tech_bio_processing_brown, tech_basic_chemistry_2, tech_electronics}
algae_green_simple = "angels-algae-green-simple"
methanol_from_wood = "angels-gas-methanol-from-wood"
algae_brown_sodium_carbonate = "angels-algae-brown-burning-wash"
data_technology[tech_bio_processing_green].effects =
{
    {type = unlock_recipe, recipe = "angels-algae-farm-2"},
    {type = unlock_recipe, recipe = algae_brown},
    {type = unlock_recipe, recipe = algae_green_simple},
    {type = unlock_recipe, recipe = methanol_from_wood},
    {type = unlock_recipe, recipe = algae_brown_sodium_carbonate},
    {type = unlock_recipe, recipe = water_mineralized_angels}
}

data_technology[tech_bio_refugium_fish_2].effects =
{
    {type = unlock_recipe, recipe = factorian_fish},
    {type = unlock_recipe, recipe = levac_fish},
    {type = unlock_recipe, recipe = dorflurp_jellyfish},
    {type = unlock_recipe, recipe = santa_ray}
}

raw_meat_from_factorian_fish = "angels-fish-butchery-0"
raw_meat_from_levac_fish = "angels-fish-butchery-1"
raw_meat_from_dorflurp_jelly_fish = "angels-fish-butchery-2"
raw_meat_from_santa_ray_fish = "angels-fish-butchery-3"
data_technology[tech_bio_refugium_butchery_1].effects =
{
    {type = unlock_recipe, recipe = "angels-bio-butchery"},
    {type = unlock_recipe, recipe = raw_meat_from_factorian_fish},
    {type = unlock_recipe, recipe = raw_meat_from_levac_fish},
    {type = unlock_recipe, recipe = raw_meat_from_dorflurp_jelly_fish},
    {type = unlock_recipe, recipe = raw_meat_from_santa_ray_fish},
    {type = unlock_recipe, recipe = polluted_water_for_fish}
}


crystal_splinter_1 = "angels-crystal-splinter-crystalization-1"
data_technology[tech_bio_processing_crystal_splinter_1].effects =
{
    {type = unlock_recipe, recipe = crystal_splinter_1},
    {type = unlock_recipe, recipe = crystal_splinter_blue_cut},
    {type = unlock_recipe, recipe = crystal_splinter_green_cut},
    {type = unlock_recipe, recipe = crystal_splinter_red_cut},
    {type = unlock_recipe, recipe = crystal_splinter_blue},
    {type = unlock_recipe, recipe = crystal_splinter_green},
    {type = unlock_recipe, recipe = crystal_splinter_red},
    {type = unlock_recipe, recipe = crystal_grindstone}
}

crystal_shard_1 = "angels-crystal-shard-crystalization-1"
data_technology[tech_bio_processing_crystal_shard_1].effects =
{
    {type = unlock_recipe, recipe = puffer_egg_shell_powder},
    {type = unlock_recipe, recipe = egg_shell_seed},
    {type = unlock_recipe, recipe = crystal_shard_1},
    {type = unlock_recipe, recipe = crystal_shard_blue_cut},
    {type = unlock_recipe, recipe = crystal_shard_green_cut},
    {type = unlock_recipe, recipe = crystal_shard_red_cut},
    {type = unlock_recipe, recipe = crystal_shard_blue},
    {type = unlock_recipe, recipe = crystal_shard_green},
    {type = unlock_recipe, recipe = crystal_shard_red}
}

crystal_full_blue_powder = "angels-crystal-powder-full-blue"
crystal_full_green_powder = "angels-crystal-powder-full-green"
crystal_full_red_powder = "angels-crystal-powder-full-red"
data_technology[tech_bio_processing_crystal_full].effects =
{
    {type = unlock_recipe, recipe = crystal_full_blue_cut},
    {type = unlock_recipe, recipe = crystal_full_green_cut},
    {type = unlock_recipe, recipe = crystal_full_red_cut},
    {type = unlock_recipe, recipe = crystal_full_blue},
    {type = unlock_recipe, recipe = crystal_full_green},
    {type = unlock_recipe, recipe = crystal_full_red},
    {type = unlock_recipe, recipe = crystal_full_blue_powder},
    {type = unlock_recipe, recipe = crystal_full_green_powder},
    {type = unlock_recipe, recipe = crystal_full_red_powder},
    {type = unlock_recipe, recipe = crystal_full_harmonic}
}

-- MODULE
if mods [bobmodules] then
    -- SPEED
    data_technology[speed_module_2].prerequisites = {speed_module_1, tech_modules_2}
    data_technology[speed_module_2].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1}
    }

    data_technology[speed_module_3].prerequisites = {speed_module_2, tech_modules_3}
    data_technology[speed_module_3].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1}
    }

    data_technology[speed_module_4].prerequisites = {speed_module_3, tech_modules_4}
    data_technology[speed_module_4].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1}
    }

    data_technology[speed_module_5].prerequisites = {speed_module_4, tech_modules_5}
    data_technology[speed_module_5].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    -- EFFICIENCY
    data_technology[efficiency_module_2].prerequisites = {efficiency_module_1, tech_modules_2}
    data_technology[efficiency_module_2].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1}
    }

    data_technology[efficiency_module_3].prerequisites = {efficiency_module_2, tech_modules_3}
    data_technology[efficiency_module_3].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1}
    }

    data_technology[efficiency_module_4].prerequisites = {efficiency_module_3, tech_modules_4}
    data_technology[efficiency_module_4].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1}
    }

    data_technology[efficiency_module_5].prerequisites = {efficiency_module_4, tech_modules_5}
    data_technology[efficiency_module_5].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    -- PRODUCTIVITY
    data_technology[productivity_module_2].prerequisites = {productivity_module_1, tech_modules_2}
    data_technology[productivity_module_2].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1}
    }

    data_technology[productivity_module_3].prerequisites = {productivity_module_2, tech_modules_3}
    data_technology[productivity_module_3].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1}
    }

    data_technology[productivity_module_4].prerequisites = {productivity_module_3, tech_modules_4}
    data_technology[productivity_module_4].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1}
    }

    data_technology[productivity_module_5].prerequisites = {productivity_module_4, tech_modules_5}
    data_technology[productivity_module_5].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }

    -- QUALITY
    data_technology[quality_module_2].prerequisites = {quality_module_1, tech_modules_2}
    data_technology[quality_module_2].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1}
    }

    data_technology[quality_module_3].prerequisites = {quality_module_2, tech_modules_3}
    data_technology[quality_module_3].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1}
    }

    data_technology[quality_module_4].prerequisites = {quality_module_3, tech_modules_4}
    data_technology[quality_module_4].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1}
    }

    data_technology[quality_module_5].prerequisites = {quality_module_4, tech_modules_5}
    data_technology[quality_module_5].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
end

-- OTHERS
data_technology[rocket_fuel].prerequisites = {tech_nitrogen_processing_4}