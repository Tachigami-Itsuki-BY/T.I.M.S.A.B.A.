if settings.startup[setting_no_spoilage].value then
    local types_to_clean = {item, ammo, "gun", capsule, tool, repair_tool, "item-with-entity-data", "selection-tool"}
    for _, type_name in pairs(types_to_clean) do
        if data.raw[type_name] then
            for _, proto in pairs(data.raw[type_name]) do
                if proto.spoil_ticks then
                    proto.spoil_ticks = nil
                    proto.spoil_result = nil
                end
            end
        end
    end

    local function spoil_recipe(parameters)
        local recipe_data =
        {
            type = recipe,
            name = parameters.ore,
            category = "angels-bio-void",
            subgroup = parameters.subgroup,
            icons = TWO_I(saphirite_bacteria, parameters.ore),
            order = parameters.order,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = parameters.bacteria, amount = 1}},
            results = {{type = item, name = parameters.ore, amount = 1}},
            main_product = parameters.ore
        }
        data:extend({recipe_data})
    end
    spoil_recipe({ore = ore_saphirite, bacteria = saphirite_bacteria, order = a, subgroup = is_ores})
    spoil_recipe({ore = ore_jivolite, bacteria = jivolite_bacteria, order = b, subgroup = is_ores})
    spoil_recipe({ore = ore_stiratite, bacteria = stiratite_bacteria, order = c, subgroup = is_ores})
    spoil_recipe({ore = ore_crotinnium, bacteria = crotinnium_bacteria, order = d, subgroup = is_ores})
    spoil_recipe({ore = ore_rubyte, bacteria = rubyte_bacteria, order = e, subgroup = is_ores})
    spoil_recipe({ore = ore_bobmonium, bacteria = bobmonium_bacteria, order = f, subgroup = is_ores})

    spoil_recipe({ore = spoilage, bacteria = compost_angels, order = a, subgroup = is_spoilage})

    if mods[tellus_mods] then
        spoil_recipe({ore = magnesium_ore, bacteria = magnesium_bacteria, order = a, subgroup = is_magnesium})
    end
end

-- BUILDING SPEEDS
local speed_types = {data_mining_drill, data_assembling, data_furnace, data_lab, data_rocket_silo}
for _, type_name in pairs(speed_types) do
    if type_name then
        for _, building in pairs(type_name) do
            if building.mining_speed then
                building.mining_speed = building.mining_speed * 0.9375
            end
            if building.crafting_speed then
                building.crafting_speed = building.crafting_speed * 0.9375
            end
            if building.researching_speed then
                building.researching_speed = building.researching_speed * 0.9375
            end
        end
    end
end

-- FUEL
-- Функция для безопасного умножения энергетических строк (например, "4MJ", "500kJ")
local function scale_fuel_value(value_str, multiplier)
    -- Ищем число (включая дробные) и буквы в конце строки
    local number, unit = string.match(value_str, "([%d%.]+)%s*(%a+)")
    if number and unit then
        local new_number = tonumber(number) / multiplier
        -- Собираем обратно, округляя до 4 знаков после запятой для красоты
        return string.format("%.4f%s", new_number, unit)
    end
    return value_str -- Если формат не распознан, возвращаем как было
end

local fuel_types = {data_item, data_capsule, data_fluid}
for _, type_name in pairs(fuel_types) do
    if type_name then
        for _, item in pairs(type_name) do
            if item.fuel_value then
                item.fuel_value = scale_fuel_value(item.fuel_value, 0.9375)
            end
        end
    end
end

-- FLUIDS IN THE RECIPES
-- Функция для обработки списка жидкостей
local function scale_fluids(list)
    if not list then return end
    for _, entry in pairs(list) do
        if entry.type == fluid and entry.amount then
            entry.amount = entry.amount / 0.9375
        elseif entry.type == fluid and (entry.amount_min or entry.amount_max) then
            if entry.amount_min then entry.amount_min = entry.amount_min / 0.9375 end
            if entry.amount_max then entry.amount_max = entry.amount_max / 0.9375 end
        end
    end
end

-- Проходим по всем рецептам Space Age
for _, recipe in pairs(data_recipe) do
    scale_fluids(recipe.ingredients)
    scale_fluids(recipe.results)
end

-- FLUIDS IN THE RESOURCE
-- Проходим по всем месторождениям (ресурсам) на карте
for _, resource in pairs(data_resource) do
    if resource.minable then
        -- 1. Проверяем стандартную таблицу результатов (results)
        if resource.minable.results then
            for _, entry in pairs(resource.minable.results) do
                if entry.type == fluid and entry.amount then
                    entry.amount = entry.amount / 0.9375
                -- Если в моде используется диапазон добычи (минимум/максимум)
                elseif entry.type == fluid and (entry.amount_min or entry.amount_max) then
                    if entry.amount_min then entry.amount_min = entry.amount_min / 0.9375 end
                    if entry.amount_max then entry.amount_max = entry.amount_max / 0.9375 end
                end
            end
        end
    end
end