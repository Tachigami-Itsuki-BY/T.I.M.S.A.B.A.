-- LOGISTICS
local tier_configs =
{
    {suffix = "-2", normal_chest = "bob-brass-chest",    tech = "logistic-system-2"},
    {suffix = "-3", normal_chest = "bob-titanium-chest", tech = "logistic-system-3"}
}

local logistic_bases =
{
    "bob-passive-provider-chest",
    "bob-active-provider-chest",
    "bob-storage-chest",
    "bob-buffer-chest",
    "bob-requester-chest"
}
for _, tier in ipairs(tier_configs) do
    local nc = tier.normal_chest
    data_item[nc] = nil
    data_recipe[nc] = nil
    data_recipe[nc .. _recycling] = nil
    data_container[nc] = nil
    if mods[panglia_mods] then
        data_recipe[item_ .. nc .. _panglia_crushing] = nil
    end

    data_technology[tier.tech] = nil

    for _, base_name in ipairs(logistic_bases) do
        local name = base_name .. tier.suffix

        data_item[name] = nil
        data_recipe[name] = nil
        data_recipe[name .. _recycling] = nil
        data_logistic_container[name] = nil

        if mods[panglia_mods] then
            data_recipe[item_ .. name .. _panglia_crushing] = nil
        end
    end
end

if not data_item["bob-titanium-chest"] then
  bobmods.lib.recipe.replace_ingredient("bob-player-frame-2", "bob-titanium-chest", "steel-chest")

  bobmods.lib.recipe.update_recycling_recipe({"bob-player-frame-2"})
end

-- ADVANCED LOGISTICS
local rail_suffixes =
{
    {suffix = "",   tech = "bob-armoured-railway"},
    {suffix = "-2", tech = "bob-armoured-railway-2"}
}
for _, tier in ipairs(rail_suffixes) do
    data_technology[tier.tech] = nil

    local components =
    {
        {name = "bob-armoured-locomotive" .. tier.suffix,  tbl = data_locomotive},
        {name = "bob-armoured-cargo-wagon" .. tier.suffix, tbl = data_wagon_cargo},
        {name = "bob-armoured-fluid-wagon" .. tier.suffix, tbl = data_wagon_fluid, is_fluid = true}
    }

    for _, comp in ipairs(components) do
        local name = comp.name
        data_item_entity[name] = nil
        data_recipe[name] = nil
        data_recipe[name .. _recycling] = nil
        comp.tbl[name] = nil

        if mods[panglia_mods] then
            data_recipe[item_ .. name .. _panglia_crushing] = nil
        end

        if comp.is_fluid then
            data_technology[name] = nil
        end
    end
end

local shells =
{
    "bob-distractor-artillery-shell",
    "bob-explosive-artillery-shell",
    "bob-fire-artillery-shell",
    "bob-poison-artillery-shell"
}
for _, shell in ipairs(shells) do
    data_ammo[shell] = nil
    data_recipe[shell] = nil
    data_recipe[shell .. _recycling] = nil

    if mods[panglia_mods] then
        data_recipe[ammo_ .. shell .. _panglia_crushing] = nil
    end

    data_technology[shell .. s] = nil
end

local items_to_clean =
{
    {name = "bob-robot-drone-frame"},
    {name = "bob-robot-drone-frame-large"},

    {name = "bob-robot-gun-drone",          is_drone = true},
    {name = "bob-robot-laser-drone",        is_drone = true},
    {name = "bob-robot-flamethrower-drone", is_drone = true},
    {name = "bob-robot-plasma-drone",       is_drone = true},

    {name = "bob-logistic-zone-interface",  custom_table = data_roboport}
}
for _, item in ipairs(items_to_clean) do
    local name = item.name

    data_item[name] = nil
    data_recipe[name] = nil
    data_recipe[name .. _recycling] = nil

    if mods[panglia_mods] then
        data_recipe[item_ .. name .. _panglia_crushing] = nil
    end

    if item.is_drone then
        data_unit[name] = nil
        data_technology[name .. s] = nil
    end

    if item.custom_table then
        item.custom_table[name] = nil
    end
end

-- PRODUCTION
local tech_FR_from_FF = "bob-fluid-reactor-from-fluid-furnace"
if data_recipe[tech_FR_from_FF] then
    data_recipe[tech_FR_from_FF] = nil
end

local reactor_tiers =
{
    {tech = "bob-burner-reactor-1", suffix = ""},
    {tech = "bob-burner-reactor-2", suffix = "-2"}
}
for _, tier in ipairs(reactor_tiers) do
    if data_technology[tier.tech] then
        data_technology[tier.tech] = nil

        for _, prefix in ipairs({"bob-burner-reactor", "bob-fluid-reactor"}) do
            local name = prefix .. tier.suffix

            data_item[name] = nil
            data_recipe[name] = nil
            data_recipe[name .. _recycling] = nil

            if mods[panglia_mods] then
                data_recipe[item_ .. name .. _panglia_crushing] = nil
            end

            data_reactor[name] = nil
        end
    end
end

local boilers =
{
    {name = "bob-oil-boiler",   tech = "bob-oil-boiler-1" },
    {name = "bob-oil-boiler-2", tech = "bob-oil-boiler-2" },
    {name = "bob-oil-boiler-3", tech = "bob-oil-boiler-3" },
    {name = "bob-oil-boiler-4", tech = "bob-oil-boiler-4" }
}
for _, boiler in ipairs(boilers) do
    if data_technology[boiler.tech] then
        local name = boiler.name

        data_item[name] = nil
        data_recipe[name] = nil
        data_recipe[name .. _recycling] = nil

        if mods[panglia_mods] then
            data_recipe[item_ .. name .. _panglia_crushing] = nil
        end

        data_boiler[name] = nil

        data_technology[boiler.tech] = nil
    end
end

local suffixes = {"", "-2", "-3"}
for _, suffix in ipairs(suffixes) do
    for _, prefix in ipairs({"bob-fast-accumulator", "bob-slow-accumulator"}) do
        local name = prefix .. suffix

        data_item[name] = nil
        data_recipe[name] = nil
        data_recipe[name .. _recycling] = nil
        data_accumulator[name] = nil

        if mods[panglia_mods] then
            data_recipe[item_ .. name .. _panglia_crushing] = nil
        end

        if mods [solar_productivity] then
            for i = 1, 99 do
                local sp_prefix = "sp-" .. i .. "-"
                if sp_prefix then
                    data_accumulator[sp_prefix .. name] = nil
                end
            end
        end
    end
end

local fluid_elements =
{
    {name = "bob-valve",          tbl = data_valve},
    {name = "bob-overflow-valve", tbl = data_valve},
    {name = "bob-topup-valve",    tbl = data_valve},

    {name = "bob-void-pump",      tbl = data_furnace},

    {name = "bob-air-pump",       tbl = data_assembling, techs = {"bob-air-compressor-1", "bob-nitrogen-processing", "bob-void-fluid"}},
    {name = "bob-air-pump-2",     tbl = data_assembling, techs = {"bob-air-compressor-2"}},
    {name = "bob-air-pump-3",     tbl = data_assembling, techs = {"bob-air-compressor-3"}},
    {name = "bob-air-pump-4",     tbl = data_assembling, techs = {"bob-air-compressor-4"}},

    {name = "bob-water-pump",     tbl = data_assembling, techs = {"bob-water-bore-1"}},
    {name = "bob-water-pump-2",   tbl = data_assembling, techs = {"bob-water-bore-2"}},
    {name = "bob-water-pump-3",   tbl = data_assembling, techs = {"bob-water-bore-3"}},
    {name = "bob-water-pump-4",   tbl = data_assembling, techs = {"bob-water-bore-4"}}
}
for _, element in ipairs(fluid_elements) do
    local name = element.name

    data_item[name] = nil
    data_recipe[name] = nil
    data_recipe[name .. _recycling] = nil
    element.tbl[name] = nil

    if mods[panglia_mods] then
        data_recipe[item_ .. name .. _panglia_crushing] = nil
    end

    if element.techs then
        for _, tech in ipairs(element.techs) do
            data_technology[tech] = nil
        end
    end
end

-- COMBAT
local items_to_clean =
{
    {name = "bob-uranium-bullet-projectile", type = item},
    {name = "bob-uranium-bullet",            type = item},
    {name = "bob-scatter-cannon-shell",      type = ammo,      tech = "bob-scatter-cannon-shell" .. s},
    {name = "bob-reinforced-wall",           type = item,      tech = true, custom_table = data_wall},
    {name = "bob-reinforced-gate",           type = item,      custom_table = data_gate},
    {name = "bob-distractor-mine",           type = item,      tech = true, custom_table = data_land_mine},
    {name = "bob-artifact-radar",            type = item,      tech = true, custom_table = data_radar}
}

local type_tables =
{
    item = {main = data_item, prefix = item_},
    ammo = {main = data_ammo, prefix = ammo_}
}
for _, config in ipairs(items_to_clean) do
    local name = config.name
    local t = type_tables[config.type]

    t.main[name] = nil
    data_recipe[name] = nil
    data_recipe[name .. _recycling] = nil

    if mods[panglia_mods] then
        data_recipe[t.prefix .. name .. _panglia_crushing] = nil
    end

    if config.custom_table then
        config.custom_table[name] = nil
    end

    if config.tech then
        local tech_name = (config.tech == true) and name or config.tech
        data_technology[tech_name] = nil
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

if mods [clowns_nuclear] then
    local bombs =
    {
        "thermonuclear-bomb",
        "plutonium-atomic-bomb",
        "artillery-shell-nuclear",
        "artillery-shell-thermonuclear"
    }
    for _, bomb in ipairs(bombs) do
        data_ammo[bomb] = nil
        data_recipe[bomb] = nil
        data_recipe[bomb .. _recycling] = nil

        if mods[panglia_mods] then
            data_recipe[ammo_ .. bomb .. _panglia_crushing] = nil
        end

        if bomb == "thermonuclear-bomb" then
            data_technology[bomb] = nil
        end
    end
end

-- Кэшируем функции для максимального быстродействия в Factorio
local sub = string.sub
local find = string.find

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

-- Очередь на удаление
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

        -- Если нашли "призрака" — отправляем в очередь на вырезание
        if should_delete then
            to_delete[#to_delete + 1] = recipe_name
        end
    end
end

-- Безопасное удаление без нарушения итератора pairs
for i = 1, #to_delete do
    data_recipe[to_delete[i]] = nil
end

--[[-- Функция проверки: существует ли прототип в игре
local function prototype_exists(product)
    local p_name = product.name or product[1]

    -- БЕЗОПАСНОСТЬ: Если имени нет (мало ли), пропускаем, чтобы не упасть с ошибкой
    if not p_name then return false end

    -- НОВОЕ: Если имя НАЧИНАЕТСЯ на par-, считаем, что прототип "существует" (не трогаем его)
    if string.match(p_name, "^par%-") then
        return true
    end

    local p_type = product.type or item -- На всякий случай, хотя в 2.0 type обязателен

    if p_type == fluid then
        return data_fluid[p_name] ~= nil
    else
        -- Проверяем все основные типы предметов в 2.0
        return data_item[p_name] ~= nil
        or data_capsule[p_name] ~= nil
        or data_tool[p_name] ~= nil
        or data_ammo[p_name] ~= nil
        or data_armor[p_name] ~= nil
        or data_gun[p_name] ~= nil
        or data_module[p_name] ~= nil
        or data.raw["spidertron-remote"] ~= nil
    end
end

-- Основной цикл очистки рецептов
for recipe_name, recipe in pairs(data_recipe) do
    if string.find(recipe_name, "^par%-") then
        -- ничего не делаем, пропускаем удаление
    elseif string.find(recipe_name, "^preserved%-") and string.find(recipe_name, "^depreservation%-") then
        -- ничего не делаем, пропускаем удаление
    else
        local should_delete = false

        -- 1. Проверяем выходы рецепта
        if recipe.results then
            for _, product in ipairs(recipe.results) do
                if not prototype_exists(product) then
                    should_delete = true
                    break
                end
            end
        end

        -- 2. Проверяем ингредиенты (защита от крашей, если у мода рецепт требует удалённый флюид)
        if not should_delete and recipe.ingredients then
            for _, ingredient in ipairs(recipe.ingredients) do
                if not prototype_exists(ingredient) then
                    should_delete = true
                    break
                end
            end
        end

        -- Если нашли "призрака" — полностью вырезаем рецепт из data.raw
        if should_delete then
            data_recipe[recipe_name] = nil
        end
    end
end

-- Функция проверки: существует ли прототип в игре
local function request_prototype_exists(product)
    local p_name, p_type

    if type(product) == "table" then
        -- В 2.0 имя может быть в product.name или в первом элементе массива product[1]
        p_name = product.name or product[1]
        p_type = product.type or item
    else
        p_name = product
        p_type = item
    end

    if not p_name or type(p_name) == "table" then return false end

    -- НОВОЕ: Если в имени предмета/жидкости есть "par-", считаем, что он существует (не трогаем)
    if string.find(p_name, "par%-") then
        return true
    end

    if p_type == fluid then
        return data_fluid[p_name] ~= nil
    else
        return data_item[p_name] ~= nil
        or data_capsule[p_name] ~= nil
        or data_tool[p_name] ~= nil
        or data_ammo[p_name] ~= nil
        or data_armor[p_name] ~= nil
        or data_gun[p_name] ~= nil
        or data_module[p_name] ~= nil
        or (data.raw["spidertron-remote"] and data.raw["spidertron-remote"][p_name] ~= nil)
    end
end

-- Цикл очистки ТОЛЬКО для request- рецептов
for recipe_name, recipe in pairs(data_recipe) do
    -- Строгий фильтр: работаем только если в имени рецепта есть "request-"
    -- НОВОЕ: И полностью игнорируем рецепт, если в его названии есть "par-"
    if string.find(recipe_name, "request-") and not string.find(recipe_name, "par%-") then
        local should_delete = false

        -- 1. Проверяем результаты
        if recipe.results then
            for _, product in pairs(recipe.results) do
                if not request_prototype_exists(product) then
                    should_delete = true
                    break
                end
            end
        end

        -- 2. Проверяем ингредиенты
        if not should_delete and recipe.ingredients then
            for _, ingredient in pairs(recipe.ingredients) do
                if not request_prototype_exists(ingredient) then
                    should_delete = true
                    break
                end
            end
        end

        -- Если нашли удаленный предмет — стираем этот конкретный request-рецепт
        if should_delete then
            data_recipe[recipe_name] = nil
        end
    end
end]]