-- 1. Обновленная функция полной замены категорий топлива
local function set_exclusive_fuel_categories(energy_source, new_categories_table)
    -- Проверяем, что источник энергии существует и это твердотопливный ("burner")
    if not energy_source or energy_source.type ~= "burner" then return end

    -- Полностью заменяем массив на ваш новый список
    energy_source.fuel_categories = new_categories_table
end

-- 2. ОБРАБОТКА БУРОВ
if data_mining_drill then
    for _, drills in pairs(data_mining_drill) do
        if drills.energy_source then
            set_exclusive_fuel_categories(drills.energy_source, {base_fuel})
        end
    end
end

-- 3. ОБРАБОТКА ЗДАНИЙ
-- Таблица исключений
local building_exceptions =
{
    [stone_furnace] = true,
    [steel_furnace] = true,
    [stone_mixing_furnace] = true,
    [steel_mixing_furnace] = true,
    [burner_ore_crusher] = true
}

if mods[hyarion_mods] then
    building_exceptions[quartz_furnace] = true
end

local building_types = {boiler, burner_generator, furnace, assembling_machine, agricultural_tower, lab, rocket_silo, radar}

for _, t_type in pairs(building_types) do
    if data.raw[t_type] then
        for _, building in pairs(data.raw[t_type]) do
            if building.name == biochamber then
                goto continue
            end
            if building.name == "captive-biter-spawner" then
                goto continue
            end
            if building.energy_source then
                -- Проверяем, находится ли имя текущего здания в нашем списке исключений
                if building_exceptions[building.name] then
                    -- Если это одно из N зданий, даем ТОЛЬКО base_fuel
                    set_exclusive_fuel_categories(building.energy_source, {base_fuel})
                else
                    -- Для всех остальных зданий, даем оба вида топлива
                    set_exclusive_fuel_categories(building.energy_source, {base_fuel, advanced_fuel})
                end
            end
            if building.burner then
                set_exclusive_fuel_categories(building.burner, {base_fuel, advanced_fuel})
            end

            ::continue::
        end
    end
end

-- 4. ОБРАБОТКА ТРАНСПОРТА
local transport_types = {"car", "locomotive", "spider-vehicle"}

for _, t_type in pairs(transport_types) do
    if data.raw[t_type] then
        for _, vehicle in pairs(data.raw[t_type]) do
            if vehicle.energy_source then
                -- Передаем категории транспорта одним массивом в { }
                set_exclusive_fuel_categories(vehicle.energy_source, {base_fuel, advanced_fuel, transport_fuel})
            end
        end
    end
end

if mods[moshine_mods] then
    data_locomotive[space_locomotive].energy_source.fuel_categories = {"electrical"}
end

if mods[pelagos_mods] then
    data_assembling[captive_copper_biter_spawner].energy_source =
    {
        type = "burner",
        fuel_categories = {"food"},
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = {pollution = -1},
        burner_usage = "food",
        light_flicker =
        {
            minimum_intensity = 0,
            maximum_intensity = 0,
            derivation_change_frequency = 0,
            derivation_change_deviation = 0,
            border_fix_speed = 0,
            minimum_light_size = 0,
            light_intensity_to_size_coefficient = 0,
            color = {0, 0, 0, 1}
        }
    }
end

if mods[apia_carnova_mods] then
    data_assembling[artificial_hive].energy_source =
    {
        type = "burner",
        fuel_categories = {"food"},
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = {pollution = -1},
        burner_usage = "food",
        light_flicker =
        {
            minimum_intensity = 0,
            maximum_intensity = 0,
            derivation_change_frequency = 0,
            derivation_change_deviation = 0,
            border_fix_speed = 0,
            minimum_light_size = 0,
            light_intensity_to_size_coefficient = 0,
            color = {0, 0, 0, 1}
        }
    }
end

if mods[lignumis_mods] then
    data_assembling[quality_assembler].energy_source.fuel_categories = {"quality-catalyst"}
end

if mods[foliax_mods] then
    data_agricultural_tower[burner_agricultural_tower_foliax].energy_source.fuel_categories = {"foliax-arcane"}

    local foliax_building = {"foliax-assembler"}
    if mods[crucible_mods] then
        for _, name in ipairs(foliax_building) do
            for i = 25, 2400, 25 do
                if data_assembling[name .. __rigor_module_mod__ .. i] then
                    data_assembling[name .. __rigor_module_mod__ .. i].energy_source.fuel_categories = {"foliax-arcane"}
                end
            end
        end
    end
end

if mods[obsidiax_mods] then
    data_assembling[foundry_obsidiax].energy_source.fuel_categories = {"obsidian-cube"}
    data_assembling[foundry_obsidiax .. "-mk2"].energy_source.fuel_categories = {"obsidian-cube"}
    data_assembling[foundry_ice_obsidiax].energy_source.fuel_categories = {"obsidian-cube"}
    data_assembling[foundry_ice_obsidiax .. "-mk2"].energy_source.fuel_categories = {"obsidian-cube"}

    data_agricultural_tower["obsidiax-" .. agricultural_tower].energy_source.fuel_categories = {"obsidian-cube"}

    local obsidiax_building =
    {
        foundry_obsidiax,
        foundry_obsidiax .. "-mk2",
        foundry_ice_obsidiax,
        foundry_ice_obsidiax .. "-mk2",
        "obsidiax-" .. agricultural_tower
    }
    if mods[crucible_mods] then
        for _, name in ipairs(obsidiax_building) do
            for i = 25, 2400, 25 do
                if data_assembling[name .. __rigor_module_mod__ .. i] then
                    data_assembling[name .. __rigor_module_mod__ .. i].energy_source.fuel_categories = {"obsidian-cube"}
                end
                if data_agricultural_tower[name .. __rigor_module_mod__ .. i] then
                    data_agricultural_tower[name .. __rigor_module_mod__ .. i].energy_source.fuel_categories = {"obsidian-cube"}
                end
            end
        end
    end
end