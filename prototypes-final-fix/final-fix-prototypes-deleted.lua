local delete_prototypes =
{
    -- LOGISTICS
    "bob-brass-chest",
    "bob-passive-provider-chest-2",
    "bob-active-provider-chest-2",
    "bob-storage-chest-2",
    "bob-buffer-chest-2",
    "bob-requester-chest-2",
    "logistic-system-2",

    "bob-titanium-chest",
    "bob-passive-provider-chest-3",
    "bob-active-provider-chest-3",
    "bob-storage-chest-3",
    "bob-buffer-chest-3",
    "bob-requester-chest-3",
    "logistic-system-3",

    -- ADVANCED LOGISTICS
    "bob-armoured-locomotive",
    "bob-armoured-cargo-wagon",
    "bob-armoured-fluid-wagon",
    "bob-armoured-railway",

    "bob-armoured-locomotive-2",
    "bob-armoured-cargo-wagon-2",
    "bob-armoured-fluid-wagon-2",
    "bob-armoured-railway-2",

    "bob-logistic-zone-interface",

    -- PRODUCTION
    "bob-burner-reactor",
    "bob-burner-reactor-1",
    "bob-burner-reactor-2",
    "bob-fluid-reactor",
    "bob-fluid-reactor-2",
    "bob-fluid-reactor-from-fluid-furnace",

    "bob-oil-boiler",
    "bob-oil-boiler-1",
    "bob-oil-boiler-2",
    "bob-oil-boiler-3",
    "bob-oil-boiler-4",

    "bob-fast-accumulator",
    "bob-fast-accumulator-2",
    "bob-fast-accumulator-3",

    "bob-slow-accumulator",
    "bob-slow-accumulator-2",
    "bob-slow-accumulator-3",

    "bob-valve",
    "bob-overflow-valve",
    "bob-topup-valve",
    "bob-void-pump",

    "bob-air-pump", "bob-air-compressor-1", "bob-nitrogen-processing", "bob-void-fluid",
    "bob-air-pump-2", "bob-air-compressor-2",
    "bob-air-pump-3", "bob-air-compressor-3",
    "bob-air-pump-4", "bob-air-compressor-4",

    "bob-water-pump", "bob-water-bore-1",
    "bob-water-pump-2", "bob-water-bore-2",
    "bob-water-pump-3", "bob-water-bore-3",
    "bob-water-pump-4", "bob-water-bore-4",

    -- COMBAT
    "bob-distractor-artillery-shell",
    "bob-explosive-artillery-shell",
    "bob-fire-artillery-shell",
    "bob-poison-artillery-shell",

    "bob-robot-drone-frame",
    "bob-robot-drone-frame-large",
    "bob-robot-gun-drone",
    "bob-robot-laser-drone",
    "bob-robot-flamethrower-drone",
    "bob-robot-plasma-drone",

    "bob-uranium-bullet-projectile",
    "bob-uranium-bullet",
    "bob-scatter-cannon-shell",
    "bob-scatter-cannon-shells",
    "bob-reinforced-wall",
    "bob-reinforced-gate",
    "bob-distractor-mine",
    "bob-artifact-radar"
}
TIMSABA.functions.delete_prototypes(delete_prototypes)

data_roboport["bob-logistic-zone-interface"] = nil

data_gate["bob-reinforced-gate"] = nil

data_radar["bob-artifact-radar"] = nil

bobmods.lib.recipe.replace_ingredient("bob-player-frame-2", "bob-titanium-chest", "steel-chest")
bobmods.lib.recipe.update_recycling_recipe({"bob-player-frame-2"})

local train_types = {locomotive, wagon_cargo, wagon_fluid}
for _, t_type in ipairs(train_types) do
    if data.raw[t_type] then
        for _, entity in pairs(data.raw[t_type]) do
            if entity.additional_pastable_entities then
                for i = #entity.additional_pastable_entities, 1, -1 do
                    local target_name = entity.additional_pastable_entities[i]
                    local exists = false
                    for _, check_type in ipairs(train_types) do
                        if data.raw[check_type] and data.raw[check_type][target_name] then
                            exists = true
                            break
                        end
                    end
                    if not exists then
                        table.remove(entity.additional_pastable_entities, i)
                    end
                end
            end
        end
    end
end

-- ANGELS RESOURCE REFINING
data_technology["angels-thermal-water-processing"] = nil

-- ANGELS METALLURGY SMELTING and CASTING
data_recipe["angels-solid-iron-hydroxide-smelting"] = nil

data_recipe["angels-liquid-molten-iron-3"] = nil
data_recipe["angels-liquid-molten-iron-4"] = nil
data_recipe["angels-liquid-molten-iron-5"] = nil

data_technology["angels-iron-casting-4"] = nil

data_recipe["angels-liquid-molten-steel-3"] = nil
data_recipe["angels-liquid-molten-steel-4"] = nil
data_recipe["angels-liquid-molten-steel-5"] = nil

data_technology["angels-steel-smelting-4"] = nil

data_recipe["angels-liquid-molten-titanium-4"] = nil
data_recipe["angels-liquid-molten-titanium-5"] = nil

-- ANGELS WATER TREATMENT
data_recipe["angels-thermal-water-filtering-1"] = nil
data_recipe["angels-thermal-water-filtering-2"] = nil

-- ANGELS BIOPROCESSING
-- Таблица, куда мы соберем точные имена всего, от чего нужно избавиться
local delete_prototypes = {}

-- 1. Собираем рецепты-пустоты (void рецепты Ангела)
local prefixes =
{
    "angels%-water%-void",
    "angels%-chemical%-void",
    "angels%-bio%-void"
}
for recipe_name, _ in pairs(data.raw.recipe) do
    for i = 1, #prefixes do
        if string.find(recipe_name, "^" .. prefixes[i]) then
            -- Добавляем в список на удаление
            table.insert(delete_prototypes, recipe_name)
            break
        end
    end
end

-- 2. Собираем все предметы, содержащие "dormant" в названии
-- Используем data.raw.item вместо кастомных таблиц для надежности 2.0
for item_name, _ in pairs(data_item) do
    if string.find(item_name, "dormant") then
        table.insert(delete_prototypes, item_name)
    end
end

-- 3. Собираем специфичные рецепты переработки дормантов
for recipe_name, _ in pairs(data_recipe) do
    if string.find(recipe_name, "dormant%-recycling") then
        table.insert(delete_prototypes, recipe_name)
    -- Проверка на панглию (лучше проверять mods["имя_мода"], у вас это panglia_mods)
    elseif mods[panglia_mods] and string.find(recipe_name, "dormant%-panglia_crushing") then
        table.insert(delete_prototypes, recipe_name)
    end
end

-- 4. ЗАПУСКАЕМ ВАШУ УНИВЕРСАЛЬНУЮ ФУНКЦИЮ
-- Она физически сотрет сами предметы/рецепты И автоматически каскадом 
-- отключит (через .hidden = true) все ящики (cargo-crate) и другие связанные скрытые рецепты
TIMSABA.functions.delete_prototypes(delete_prototypes)

-- MODS
if mods[clowns_nuclear] then
    local delete_prototypes =
    {
        "thermonuclear-bomb",
        "plutonium-atomic-bomb",
        "artillery-shell-nuclear",
        "artillery-shell-thermonuclear"
    }
    TIMSABA.functions.delete_prototypes(delete_prototypes)
end

-- GLOBAL
-- Кэшируем функции для максимального быстродействия в Factorio
local sub = string.sub
local find = string.find
local remove = table.remove

-- Универсальная и безопасная функция проверки прототипа
local function prototype_exists(product)
    if not product then return false end

    -- Строгий формат TIMSABA: читаем поля напрямую
    local p_name = product.name
    local p_type = product.type

    -- Защита от кривых таблиц сторонних модов
    if not p_name or type(p_name) ~= "string" then return false end

    -- Если в имени предмета есть "par-", он гарантированно существует
    if find(p_name, "par%-") then
        return true
    end

    -- Проверка жидкости
    if p_type == "fluid" then
        return data_fluid[p_name] ~= nil
    end

    -- Проверка всех типов предметов в Factorio 2.0
    return data_item[p_name] ~= nil
    or data_capsule[p_name] ~= nil
    or data_tool[p_name] ~= nil
    or data_ammo[p_name] ~= nil
    or data_armor[p_name] ~= nil
    or data_gun[p_name] ~= nil
    or data_module[p_name] ~= nil
    or data_spidertron_remote[p_name] ~= nil
    or data_repair_tool[p_name] ~= nil
    or data_rail_planner[p_name] ~= nil
    or data_item_entity[p_name] ~= nil
    or data_SP_starter_pack[p_name] ~= nil
end

-- Он найдет все "сломанные" ссылки в технологиях, которые остались от удаленных рецептов
for tech_name, technology in pairs(data_technology) do
    if technology.effects then
        for i = #technology.effects, 1, -1 do
            local effect = technology.effects[i]
            -- Проверяем эффекты открытия рецептов
            if effect.type == unlock_recipe then
                -- Если рецепта с таким именем больше НЕТ в игре, удаляем этот эффект из технологии
                if not data_recipe[effect.recipe] then
                    table.remove(technology.effects, i)
                end
            -- Проверяем эффекты продуктивности рецептов
            elseif effect.type == change_recipe_productivity then
                if not data_recipe[effect.recipe] then
                    table.remove(technology.effects, i)
                end
            end
        end
    end
end

-- Очередь на удаление (хеш-таблица для мгновенного поиска O(1))
local to_delete = {}

-- Один цикл для обработки всех рецептов игры
for recipe_name, recipe in pairs(data_recipe) do

    -- Условие пропуска рецепта (безопасные префиксы и суффиксы)
    local is_protected = sub(recipe_name, 1, 4) == "par-"
    or sub(recipe_name, -10) == "-preserved"
    or sub(recipe_name, -15) == "-depreservation"
    or (find(recipe_name, "par%-") and find(recipe_name, "request-"))

    if not is_protected then
        local should_delete = false

        -- 1. Проверяем ингредиенты
        if recipe.ingredients then
            for i = 1, #recipe.ingredients do
                if not prototype_exists(recipe.ingredients[i]) then
                    should_delete = true
                    break
                end
            end
        end

        -- 2. Проверяем выходы рецепта (результаты)
        if not should_delete and recipe.results then
            for i = 1, #recipe.results do
                if not prototype_exists(recipe.results[i]) then
                    should_delete = true
                    break
                end
            end
        end

        -- Если нашли "призрака" — маркируем в таблице
        if should_delete then
            to_delete[recipe_name] = true
        end
    end
end

-- Безопасноая очистка технологий
if next(to_delete) then
    -- 1. Скрываем рецепты
    for recipe_name in pairs(to_delete) do
        local recipe = data_recipe[recipe_name]
        if recipe then
            recipe.enabled = false
            recipe.hidden = true
        end
    end

    -- 2. Вырезаем эффекты из технологий
    for tech_name, technology in pairs(data_technology) do
        if technology.effects then
            for i = #technology.effects, 1, -1 do
                local effect = technology.effects[i]
                if effect.type == unlock_recipe and to_delete[effect.recipe] then
                    remove(technology.effects, i)
                end
                if effect.type == change_recipe_productivity and to_delete[effect.recipe] then
                    remove(technology.effects, i)
                end
            end
        end
    end
end

-- Он найдет все "сломанные" ссылки на технологии в prerequisites (предварительные требования), которые остались от удаленных технологий
for tech_name, technology in pairs(data_technology) do
    if technology.prerequisites then
        -- Перебираем массив с конца, чтобы корректно удалять элементы через table.remove
        for i = #technology.prerequisites, 1, -1 do
            local prereq_name = technology.prerequisites[i]

            -- Если технологии с таким именем больше НЕТ в игре, удаляем её из списка требований этой технологии
            if not data_technology[prereq_name] then
                table.remove(technology.prerequisites, i)
            end
        end
    end
end