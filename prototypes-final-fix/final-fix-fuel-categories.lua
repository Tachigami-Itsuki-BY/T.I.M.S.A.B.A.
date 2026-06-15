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

if data_assembling[burner_assembling_machine] then
    building_exceptions[burner_assembling_machine] = true
end

if mods [hyarion_mods] then
    building_exceptions[quartz_furnace] = true
end

local building_types = {boiler, burner_generator, furnace, assembling_machine}

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