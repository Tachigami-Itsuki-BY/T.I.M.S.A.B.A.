-- ШАГ 1: Обрабатывает технологии, округляет время и стоимость
local base_costs = {}

for _, tech in pairs(data_technology) do
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

        if settings.startup[setting_infinite_research].value == false then
            -- Ограничиваем максимальный уровень бесконечных технологий
            if tech.max_level == "infinite" or (type(tech.max_level) == "number" and tech.max_level > 30) then
                tech.max_level = 30
            end
        end
    end
end

-- ШАГ 2: Корректируем уровни со 2 по 6 (умножаем на номер уровня)
for _, tech in pairs(data_technology) do
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

for _, tech in pairs(data_technology) do
    if tech.research_trigger then
        if tech.research_trigger.count then
            tech.research_trigger.count = 256
        end
        if tech.research_trigger.amount then
            tech.research_trigger.amount = 960
        end
    end
end

data_technology[tech_steam_power].research_trigger.count = 32

data_technology[tech_electronics_0].research_trigger.count = 16

data_technology[tech_automation_1].effects = {{type = unlock_recipe, recipe = assembling_machine_1}}

data_technology[logistic_science_pack].unit.time = 16

data_technology[tech_holmium_smelting_1].research_trigger.count = 4096

if data_technology[tech_logistics_0] then
    data_technology[tech_logistics_0].research_trigger.count = 32
end

data_technology[steel_plate .. _productivity].effects =
{
    {type = change_recipe_productivity, recipe = casting_steel, change = 0.1},
    {type = change_recipe_productivity, recipe = steel_plate_1, change = 0.1},
    {type = change_recipe_productivity, recipe = steel_plate_2, change = 0.1}
}

data_technology["bob-infinite-character-logistic-trash-slots-1"].effects = {{type = "character-logistic-trash-slots", modifier = 5}}

-- БЛОК ПО СОРТИРОВКИ ТЕХНОЛОГИЙ (НЕ РАБОТАЕТ ТАК КАК ЗАДУМЫВАЛОСЬ)
--[[local pack_priorities =
{
    [automation_science_pack]      = {weight = 1, prefix = a},
    [logistic_science_pack]        = {weight = 2, prefix = b},
    [military_science_pack]        = {weight = 3, prefix = c},
    [chemical_science_pack]        = {weight = 4, prefix = d},
    [production_science_pack]      = {weight = 4.1, prefix = d_a},
    [utility_science_pack]         = {weight = 4.2, prefix = d_b},
    [space_science_pack]           = {weight = 5, prefix = g},
    [metallurgic_science_pack]     = {weight = 5.1, prefix = g_a},
    [agricultural_science_pack]    = {weight = 5.2, prefix = g_b},
    [electromagnetic_science_pack] = {weight = 5.3, prefix = g_c},
    [cryogenic_science_pack]       = {weight = 6, prefix = h},
    [promethium_science_pack]      = {weight = 7, prefix = i},
}

if mods[bobtech] then
    pack_priorities[transport_science_pack] = {weight = 4.3, prefix = d_c}
    if mods[bobenemies] then
        pack_priorities[gold_science_pack_bob] = {weight = 4.4, prefix = d_d}
    end
end

if mods[arig_mods] then
    pack_priorities[compression_science_pack] = {weight = 5.11, prefix = g_a .. "-" .. a}
end

if mods[muluna_mods] then
    pack_priorities[interstellar_science_pack] = {weight = 5.9, prefix = g_z}
end

if mods[hyarion_mods] then
    pack_priorities[polishing_science_pack] = {weight = 5.91, prefix = g_z .. "-" .. a}
    pack_priorities[refraction_science_pack] = {weight = 5.92, prefix = g_z .. "-" .. b}
end

if mods[tellus_mods] then
    pack_priorities[bioengineering_science_pack] = {weight = 5.93, prefix = g_z .. "-" .. c}
    pack_priorities[pathological_science_pack] = {weight = 5.94, prefix = g_z .. "-" .. d}
end

if mods[paracelsin_mods] then
    pack_priorities[galvanization_science_pack] = {weight = 6.1, prefix = h .. "-" .. a}
end

for tech_name, tech in pairs(data_technology) do
    if tech.unit and tech.unit.ingredients then
        local highest_weight = 0
        local highest_prefix = a

        for _, ingredient in ipairs(tech.unit.ingredients) do
            local pack_name = nil

            if type(ingredient) == "table" then
                pack_name = ingredient[1] or ingredient.name

            elseif type(ingredient) == "string" then
                pack_name = ingredient
            end

            if pack_name and pack_priorities[pack_name] then
                if pack_priorities[pack_name].weight > highest_weight then
                    highest_weight = pack_priorities[pack_name].weight
                    highest_prefix = pack_priorities[pack_name].prefix
                end
            end
        end

        local tech_to_pack_exceptions = {}

        if mods[bobtech] and mods[bobenemies] then
            tech_to_pack_exceptions[tech_alien_research] = gold_science_pack_bob
        end

        if mods[arig_mods] then
            tech_to_pack_exceptions[tech_compression_science] = compression_science_pack
        end

        local lookup_name = tech_to_pack_exceptions[tech_name] or tech_name

        if pack_priorities[lookup_name] then
            highest_weight = pack_priorities[lookup_name].weight
            highest_prefix = pack_priorities[lookup_name].prefix
        end

        local base_name, level = tech_name:match("^(.-)-(%d+)$")
        local order_suffix = ""
        if base_name and level then
            order_suffix = string.format("%s-%03d", base_name, tonumber(level))
        else
            order_suffix = tech_name
        end

        tech.order = highest_prefix .. "-" .. order_suffix
    end
end

data_technology[tech_electronics_0].order = a
data_technology[tech_steam_power].order = a .. a
data_technology[automation_science_pack].order = a .. a .. a
data_technology[tech_logistics_0].order = a .. a .. "-" .. tech_logistics_0 .. "00"
data_technology[tech_logistics_1].order = a .. "-" .. tech_logistics_1 .. "-001"

data_technology[logistic_science_pack].order = b

data_technology[military_science_pack].order = c

data_technology[chemical_science_pack].order = d

data_technology[production_science_pack].order = d_a

data_technology[utility_science_pack].order = d_b

if data_technology[transport_science_pack] then
    data_technology[transport_science_pack].order = d_c
end

if data_technology[tech_alien_research] then
    data_technology[tech_alien_research].order = d_d
end

data_technology[space_science_pack].order = g

data_technology[metallurgic_science_pack].order = g_a

if mods[arig_mods] then
    data_technology[tech_compression_science].order = g_a .. "-" .. a
end

data_technology[agricultural_science_pack].order = g_b

data_technology[electromagnetic_science_pack].order = g_c

if mods[muluna_mods] then
    data_technology[interstellar_science_pack].order = g_z
end

if mods[hyarion_mods] then
    data_technology[polishing_science_pack].order = g_z .. "-" .. a
    data_technology[refraction_science_pack].order = g_z .. "-" .. b
end

if mods[tellus_mods] then
    data_technology[bioengineering_science_pack].order = g_z .. "-" .. c
    data_technology[pathological_science_pack].order = g_z .. "-" .. d
end

data_technology[cryogenic_science_pack].order = h

if mods[paracelsin_mods] then
    data_technology[galvanization_science_pack].order = h .. "-" .. a
end

data_technology[promethium_science_pack].order = i]]

local function auto_added_science_pack(science_pack_name, technology_name)
    local memo = {} -- Хранит глобальный результат: true (ведет к цели) или false (не ведет)

    local function leads_to_root(tech_name, current_path)
        -- Если мы пришли в целевую технологию — путь найден
        if tech_name == technology_name then
            return true
        end

        -- Возвращаем уже посчитанный ранее результат
        if memo[tech_name] ~= nil then
            return memo[tech_name]
        end

        -- Проверка на циклы: если tech_name уже есть в текущей ветке поиска
        if current_path[tech_name] then
            return false
        end

        local tech = data.raw.technology[tech_name] -- В Factorio данные лежат в data.raw.technology
        if not tech or not tech.prerequisites then
            memo[tech_name] = false
            return false
        end
        -- Шаг вперед: добавляем технологию в текущий путь исследования
        current_path[tech_name] = true
        -- Проверяем все требования технологии
        for _, prereq in ipairs(tech.prerequisites) do
            if leads_to_root(prereq, current_path) then
                memo[tech_name] = true
                current_path[tech_name] = nil -- Убираем из пути перед выходом
                return true
            end
        end
        -- Шаг назад: убираем технологию из пути, так как ветка не привела к цели
        current_path[tech_name] = nil
        memo[tech_name] = false
        return false
    end

    -- Перебираем все технологии в игре
    for tech_name, tech in pairs(data_technology) do
        -- Не проверяем целевую технологию саму на себя
        if tech_name ~= technology_name and leads_to_root(tech_name, {}) then
            if tech.unit and tech.unit.ingredients and #tech.unit.ingredients > 0 then
                local has_pack = false
                local has_datacell = false
                local has_science_pack = false
                -- Проверяем текущие ингредиенты
                for _, ingredient in ipairs(tech.unit.ingredients) do
                    local name -- Убрали = ""
                    if type(ingredient) == "table" then
                        name = ingredient.name or ingredient[1]
                    else
                        name = ingredient
                    end
                    -- Добавляем проверку на случай, если name остался nil или пришел как объект
                    if name then
                        -- Принудительно приводим к строке, чтобы string.find не ругался
                        name = tostring(name)

                        if name == science_pack_name then has_pack = true end
                        if string.find(name, "datacell%-") then has_datacell = true end
                        if string.find(name, "%-science%-pack") then has_science_pack = true end
                    end
                end
                -- Логика исключения (для Space Age / дата-ячеек)
                local should_exclude = has_datacell and not has_science_pack
                -- Добавляем пак, если его нет и технология не подпадает под исключение
                if not has_pack and not should_exclude then
                    table.insert(tech.unit.ingredients, {science_pack_name, 1})
                end
            end
        end
    end
end

auto_added_science_pack(promethium_science_pack, promethium_science_pack)

-- MULUNA
if mods[muluna_mods] then
    auto_added_science_pack(interstellar_science_pack, interstellar_science_pack)
end

-- MOSHINE
if mods[moshine_mods] then
    data_technology["moshine-tech-neural_computer"].research_trigger =
    {
        type = craft_item,
        item = neural_computer,
        count = 4
    }
end

-- ARIG
if mods[arig_mods] then
    auto_added_science_pack(compression_science_pack, tech_compression_science)
end

-- HYARION
if mods[hyarion_mods] then
    auto_added_science_pack(polishing_science_pack, polishing_science_pack)
    auto_added_science_pack(refraction_science_pack, refraction_science_pack)
end

-- TELLUS
if mods[tellus_mods] then
    auto_added_science_pack(bioengineering_science_pack, bioengineering_science_pack)
    auto_added_science_pack(pathological_science_pack, pathological_science_pack)
end

-- PARACELSIN
if mods[paracelsin_mods] then
    auto_added_science_pack(galvanization_science_pack, galvanization_science_pack)
end

-- CORRUNDUM
if mods[corrundum_mods] then
    data_technology[electrochemical_science_pack].research_trigger.count = 1

    auto_added_science_pack(electrochemical_science_pack, electrochemical_science_pack)
end

-- FROZETA
if mods[secretas_frozeta_mods] then
    auto_added_science_pack(golden_science_pack, golden_science_pack)
end

-- CASTRA
if mods[castra_mods] then
    auto_added_science_pack(battlefield_science_pack, battlefield_science_pack)
end

-- SHCHIERBIN
if mods[shchierbin_mods] then
    auto_added_science_pack(vanadium_science_pack, vanadium_science_pack)
end

-- MARAXSIS
if mods[shchierbin_mods] then
    auto_added_science_pack(hydraulic_science_pack, hydraulic_science_pack)
end

-- VESTA
if mods[vesta_mods] then
    data_technology[tech_algea_extracting].research_trigger.count = 1
    data_technology[tech_gas_manipulation_science_pack].research_trigger.count = 1

    auto_added_science_pack(gas_manipulation_science_pack, tech_gas_manipulation_science_pack)
end

-- MURIA
if mods[muria_mods] then
    auto_added_science_pack(muriatic_science_pack, muriatic_science_pack)
end

-- PELAGOS
if mods[pelagos_mods] then
    auto_added_science_pack(spoilage_science_pack, spoilage_science_pack)
end

-- APIA and CARNOVA
if mods[apia_carnova_mods] then
    auto_added_science_pack(apicultural_science_pack, apicultural_science_pack)
end

-- OBSIDIAX
if mods[obsidiax_mods] then
    -- УБРАТЬ или ИЗМЕНИТЬ после корректировки технологий
    table.insert(data_lab[lab].inputs, obsidian_cube_sp)
end

-- LINOX
if mods[linox_mods] then
    -- УБРАТЬ или ИЗМЕНИТЬ после корректировки технологий
    table.insert(data_lab[lab].inputs, lava_data_card)
    table.insert(data_lab[lab].inputs, rare_data_card)
    table.insert(data_lab[lab].inputs, samarium_data_card)
    table.insert(data_lab[lab].inputs, dysprosium_data_card)
    table.insert(data_lab[lab].inputs, neodymium_data_card)
end