data_technology[tech_automation_1].effects = {{type = unlock_recipe, recipe = assembling_machine_1}}

--[[-- ШАГ 1: Ваш изначальный код (обрабатывает ВСЕ технологии, включая формулы и лимиты)
local base_costs = {}
for _, tech in pairs(data.raw.technology) do
    local unit = tech.unit
    if unit then
        -- Округляем время исследования
        if unit.time and unit.time > 0 then
            local exp_time = math.floor(math.log(unit.time) / math.log(2) + 0.5)
            unit.time = math.pow(2, exp_time)
        end

        -- Округляем обычную стоимость (пакеты)
        if unit.count and type(unit.count) == "number" and unit.count > 0 then
            local exp_count = math.floor(math.log(unit.count) / math.log(2) + 0.5)
            unit.count = math.pow(2, exp_count)

            -- ОДНОВРЕМЕННО ЗАПОМИНАЕМ БАЗУ ДЛЯ ТЕХНОЛОГИЙ 1-ГО УРОВНЯ
            local base_name, level_str = tech.name:match("^(.-)[-_%s]?(%d+)$")
            local level = level_str and tonumber(level_str) or 1
            if not level_str then base_name = tech.name end

            if level == 1 then
                base_costs[base_name] = unit.count
            end
        end

        if unit.count_formula then
            unit.count_formula = "L*128"
        end

        if tech.max_level == "infinite" or (type(tech.max_level) == "number" and tech.max_level > 30) then
            tech.max_level = 30
        end
    end
end

-- ШАГ 2: Корректируем уровни со 2 по 6 (умножаем на номер уровня)
for _, tech in pairs(data.raw.technology) do
    local unit = tech.unit
    if unit and unit.count and type(unit.count) == "number" and unit.count > 0 then
        local base_name, level_str = tech.name:match("^(.-)[-_%s]?(%d+)$")

        if level_str then
            local level = tonumber(level_str)
            if level and level >= 2 and level <= 6 then

                -- Если технология началась сразу со 2+ уровня, её база уже округлена на Шаге 1
                if not base_costs[base_name] then
                    base_costs[base_name] = unit.count
                end

                -- Применяем умножение стоимости на уровень
                unit.count = base_costs[base_name] * level
            end
        end
    end
end]]
-- ШАГ 1: Обрабатывает технологии, округляет время и стоимость
local base_costs = {}

for _, tech in pairs(data.raw.technology) do
    local unit = tech.unit
    if unit then
        -- Округляем время исследования
        if unit.time and unit.time > 0 then
            local exp_time = math.floor(math.log(unit.time) / math.log(2) + 0.5)
            unit.time = math.pow(2, exp_time)
        end

        -- Округляем обычную стоимость (пакеты)
        if unit.count and type(unit.count) == "number" and unit.count > 0 then
            local exp_count = math.floor(math.log(unit.count) / math.log(2) + 0.5)
            unit.count = math.pow(2, exp_count)

            -- ОДНОВРЕМЕННО ЗАПОМИНАЕМ БАЗУ ДЛЯ ТЕХНОЛОГИЙ 1-ГО УРОВНЯ
            local base_name, level_str = tech.name:match("^(.-)[-_%s]?(%d+)$")
            local level = level_str and tonumber(level_str) or 1
            if not level_str then base_name = tech.name end

            if level == 1 then
                base_costs[base_name] = unit.count
            end
        end

        -- ИСПРАВЛЕНО ДЛЯ 2.0+: Безопасный формат математической формулы, 
        -- который C++ ядро игры гарантированно сможет скомпилировать без зацикливания
        if unit.count_formula then
            unit.count_formula = "l*128" -- В Factorio 2.0+ используется строго маленькая буква "l"
        end

        -- Ограничиваем максимальный уровень бесконечных технологий
        if tech.max_level == "infinite" or (type(tech.max_level) == "number" and tech.max_level > 30) then
            tech.max_level = 30
        end
    end
end

-- ШАГ 2: Корректируем уровни со 2 по 6 (умножаем на номер уровня)
for _, tech in pairs(data.raw.technology) do
    local unit = tech.unit
    if unit and unit.count and type(unit.count) == "number" and unit.count > 0 then
        local base_name, level_str = tech.name:match("^(.-)[-_%s]?(%d+)$")

        if level_str then
            local level = tonumber(level_str)
            if level and level >= 2 and level <= 6 then

                -- Если технология началась сразу со 2+ уровня, её база уже округлена на Шаге 1
                if not base_costs[base_name] then
                    base_costs[base_name] = unit.count
                end

                -- Применяем умножение стоимости на уровень
                unit.count = base_costs[base_name] * level
            end
        end
    end
end

data_technology[logistic_science_pack].unit.time = 16

for _, tech in pairs(data.raw.technology) do
    if tech.research_trigger then
        if tech.research_trigger.count then
            tech.research_trigger.count = 256
        end
        if tech.research_trigger.amount then
            tech.research_trigger.amount = 960
        end
    end
end

data_technology[tech_holmium_smelting_1].research_trigger.count = 4096

data_technology["steam-power"].research_trigger.count = 32
data_technology["electronics"].research_trigger.count = 16
data_technology["logistics-0"].research_trigger.count = 32

data_technology["steel-plate-productivity"].effects =
{
    {type = "change-recipe-productivity", recipe = casting_steel, change = 0.1},
    {type = "change-recipe-productivity", recipe = steel_plate_1, change = 0.1},
    {type = "change-recipe-productivity", recipe = steel_plate_2, change = 0.1}
}

data_technology["bob-infinite-character-logistic-trash-slots-1"].effects = {{type = "character-logistic-trash-slots", modifier = 5}}

-- MULUNA
--[[if mods[muluna_mods] then
    local memo = {}
    local function leads_to_root(tech_name)
        if tech_name == interstellar_science_pack then return true end
        if memo[tech_name] ~= nil then return memo[tech_name] end
        local tech = data.raw.technology[tech_name]
        if not tech or not tech.prerequisites then
            memo[tech_name] = false
            return false
        end
        for _, prereq in ipairs(tech.prerequisites) do
            if leads_to_root(prereq) then
                memo[tech_name] = true
                return true
            end
        end
        memo[tech_name] = false
        return false
    end

    for tech_name, tech in pairs(data.raw.technology) do
        if tech_name ~= interstellar_science_pack and leads_to_root(tech_name) then
            if tech.unit and tech.unit.ingredients and #tech.unit.ingredients > 0 then
                local has_pack = false
                local has_datacell = false
                local has_science_pack = false

                -- Проверяем все текущие ингредиенты технологии
                for _, ingredient in ipairs(tech.unit.ingredients) do
                    local name = ""
                    if type(ingredient) == "table" then
                        name = ingredient.name or ingredient[1] or ""
                    else
                        name = ingredient or ""
                    end

                    -- Проверка на interstellar_science_pack
                    if name == interstellar_science_pack then
                        has_pack = true
                    end

                    -- Ищем подстроки в именах ингредиентов
                    if string.find(name, "datacell%-") then
                        has_datacell = true
                    end
                    if string.find(name, "%-science%-pack") then
                        has_science_pack = true
                    end
                end

                -- Условие исключения: если есть datacell-, но нет -science-pack, то пропускаем
                local should_exclude = has_datacell and not has_science_pack

                -- Добавляем пак, только если его еще нет и технология не подлежит исключению
                if not has_pack and not should_exclude then
                    table.insert(tech.unit.ingredients, {interstellar_science_pack, 1})
                end
            end
        end
    end
end]]

-- MULUNA
if mods[muluna_mods] then
    local memo = {}

    local function leads_to_root(tech_name, visited)
        if tech_name == interstellar_science_pack then return true end
        if memo[tech_name] ~= nil then return memo[tech_name] end

        -- Инициализируем список посещенных для текущей ветки, если его нет
        visited = visited or {}
        -- Если мы уже заходили в эту технологию на текущем пути — это петля! Прерываем.
        if visited[tech_name] then
            return false
        end

        local tech = data.raw.technology[tech_name]
        if not tech or not tech.prerequisites then
            memo[tech_name] = false
            return false
        end

        -- Помечаем технологию как посещенную в текущем проходе
        visited[tech_name] = true

        for _, prereq in ipairs(tech.prerequisites) do
            -- Передаем visited дальше по цепочке
            if leads_to_root(prereq, visited) then
                memo[tech_name] = true
                visited[tech_name] = nil -- очищаем перед выходом
                return true
            end
        end

        visited[tech_name] = nil -- очищаем перед выходом
        memo[tech_name] = false
        return false
    end

    for tech_name, tech in pairs(data.raw.technology) do
        -- Передаем пустую таблицу visited для каждого нового независимого поиска
        if tech_name ~= interstellar_science_pack and leads_to_root(tech_name, {}) then
            if tech.unit and tech.unit.ingredients and #tech.unit.ingredients > 0 then
                local has_pack = false
                local has_datacell = false
                local has_science_pack = false

                -- Проверяем все текущие ингредиенты технологии
                for _, ingredient in ipairs(tech.unit.ingredients) do
                    local name = ""
                    if type(ingredient) == "table" then
                        name = ingredient.name or ingredient[1] or ""
                    else
                        name = ingredient or ""
                    end

                    if name == interstellar_science_pack then
                        has_pack = true
                    end
                    if string.find(name, "datacell%-") then
                        has_datacell = true
                    end
                    if string.find(name, "%-science%-pack") then
                        has_science_pack = true
                    end
                end

                local should_exclude = has_datacell and not has_science_pack

                if not has_pack and not should_exclude then
                    table.insert(tech.unit.ingredients, {interstellar_science_pack, 1})
                end
            end
        end
    end
end

-- MOSHINE
if mods [moshine_mods] then
    data_technology["moshine-tech-neural_computer"].research_trigger =
    {
        type = craft_item,
        item = neural_computer,
        count = 4
    }
end

-- ARIG
if mods[arig_mods] then
    local memo = {}

    local function leads_to_root(tech_name, visited)
        if tech_name == tech_compression_science then return true end
        if memo[tech_name] ~= nil then return memo[tech_name] end

        -- Инициализируем список посещенных для текущей ветки, если его нет
        visited = visited or {}
        -- Если мы уже заходили в эту технологию на текущем пути — это петля! Прерываем.
        if visited[tech_name] then
            return false
        end

        local tech = data.raw.technology[tech_name]
        if not tech or not tech.prerequisites then
            memo[tech_name] = false
            return false
        end

        -- Помечаем технологию как посещенную в текущем проходе
        visited[tech_name] = true

        for _, prereq in ipairs(tech.prerequisites) do
            -- Передаем visited дальше по цепочке
            if leads_to_root(prereq, visited) then
                memo[tech_name] = true
                visited[tech_name] = nil -- очищаем перед выходом
                return true
            end
        end

        visited[tech_name] = nil -- очищаем перед выходом
        memo[tech_name] = false
        return false
    end

    for tech_name, tech in pairs(data.raw.technology) do
        -- Передаем пустую таблицу visited для каждого нового независимого поиска
        if tech_name ~= tech_compression_science and leads_to_root(tech_name, {}) then
            if tech.unit and tech.unit.ingredients and #tech.unit.ingredients > 0 then
                local has_pack = false
                local has_datacell = false
                local has_science_pack = false

                -- Проверяем все текущие ингредиенты технологии
                for _, ingredient in ipairs(tech.unit.ingredients) do
                    local name = ""
                    if type(ingredient) == "table" then
                        name = ingredient.name or ingredient[1] or ""
                    else
                        name = ingredient or ""
                    end

                    if name == compression_science_pack then
                        has_pack = true
                    end
                    if string.find(name, "datacell%-") then
                        has_datacell = true
                    end
                    if string.find(name, "%-science%-pack") then
                        has_science_pack = true
                    end
                end

                local should_exclude = has_datacell and not has_science_pack

                if not has_pack and not should_exclude then
                    table.insert(tech.unit.ingredients, {compression_science_pack, 1})
                end
            end
        end
    end
end

-- HYARION
if mods[hyarion_mods] then
    local memo = {}

    -- Определяем списки целевых технологий и пакетов для добавления
    local target_techs =
    {
        [polishing_science_pack] = true,
        [refraction_science_pack] = true
    }
    local packs_to_add =
    {
        {polishing_science_pack, 1},
        {refraction_science_pack, 1}
    }

    local function leads_to_root(tech_name, visited)
        -- Изменено: проверяем, является ли технология одной из целевых
        if target_techs[tech_name] then return true end
        if memo[tech_name] ~= nil then return memo[tech_name] end

        visited = visited or {}
        if visited[tech_name] then
            return false
        end

        local tech = data.raw.technology[tech_name]
        if not tech or not tech.prerequisites then
            memo[tech_name] = false
            return false
        end

        visited[tech_name] = true

        for _, prereq in ipairs(tech.prerequisites) do
            if leads_to_root(prereq, visited) then
                memo[tech_name] = true
                visited[tech_name] = nil
                return true
            end
        end

        visited[tech_name] = nil
        memo[tech_name] = false
        return false
    end

    for tech_name, tech in pairs(data.raw.technology) do
        -- Изменено: исключаем обе целевые технологии из поиска путей к самим себе
        if not target_techs[tech_name] and leads_to_root(tech_name, {}) then
            if tech.unit and tech.unit.ingredients and #tech.unit.ingredients > 0 then

                -- Таблица для отслеживания уже имеющихся целевых пакетов в технологии
                local has_pack =
                {
                    [polishing_science_pack] = false,
                    [refraction_science_pack] = false
                }
                local has_datacell = false
                local has_science_pack = false

                for _, ingredient in ipairs(tech.unit.ingredients) do
                    local name = ""
                    if type(ingredient) == "table" then
                        name = ingredient.name or ingredient[1] or ""
                    else
                        name = ingredient or ""
                    end

                    -- Изменено: отмечаем, если найден один из целевых пакетов
                    if has_pack[name] ~= nil then
                        has_pack[name] = true
                    end
                    if string.find(name, "datacell%-") then
                        has_datacell = true
                    end
                    if string.find(name, "%-science%-pack") then
                        has_science_pack = true
                    end
                end

                local should_exclude = has_datacell and not has_science_pack

                -- Изменено: поочередно проверяем и добавляем каждый недостающий пакет
                if not should_exclude then
                    for _, pack_data in ipairs(packs_to_add) do
                        local pack_name = pack_data[1]
                        if not has_pack[pack_name] then
                            table.insert(tech.unit.ingredients, {pack_name, pack_data[2]})
                        end
                    end
                end
            end
        end
    end
end