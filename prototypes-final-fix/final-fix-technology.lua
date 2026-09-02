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

TIMSABA.functions.auto_added_science_pack(promethium_science_pack, promethium_science_pack)

-- MULUNA
if mods[muluna_mods] then
    TIMSABA.functions.auto_added_science_pack(interstellar_science_pack, interstellar_science_pack)
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
    TIMSABA.functions.auto_added_science_pack(compression_science_pack, tech_compression_science)
end

-- HYARION
if mods[hyarion_mods] then
    TIMSABA.functions.auto_added_science_pack(polishing_science_pack, polishing_science_pack)
    TIMSABA.functions.auto_added_science_pack(refraction_science_pack, refraction_science_pack)
end

-- TELLUS
if mods[tellus_mods] then
    TIMSABA.functions.auto_added_science_pack(bioengineering_science_pack, bioengineering_science_pack)
    TIMSABA.functions.auto_added_science_pack(pathological_science_pack, pathological_science_pack)
end

-- PARACELSIN
if mods[paracelsin_mods] then
    TIMSABA.functions.auto_added_science_pack(galvanization_science_pack, galvanization_science_pack)
end

-- CORRUNDUM
if mods[corrundum_mods] then
    data_technology[electrochemical_science_pack].research_trigger.count = 1

    TIMSABA.functions.auto_added_science_pack(electrochemical_science_pack, electrochemical_science_pack)
end

-- FROZETA
if mods[secretas_frozeta_mods] then
    TIMSABA.functions.auto_added_science_pack(golden_science_pack, golden_science_pack)
end

-- CASTRA
if mods[castra_mods] then
    TIMSABA.functions.auto_added_science_pack(battlefield_science_pack, battlefield_science_pack)
end

-- SHCHIERBIN
if mods[shchierbin_mods] then
    TIMSABA.functions.auto_added_science_pack(vanadium_science_pack, vanadium_science_pack)
end

-- MARAXSIS
if mods[shchierbin_mods] then
    TIMSABA.functions.auto_added_science_pack(hydraulic_science_pack, hydraulic_science_pack)
end

-- VESTA
if mods[vesta_mods] then
    data_technology[tech_algea_extracting].research_trigger.count = 1
    data_technology[tech_gas_manipulation_science_pack].research_trigger.count = 1

    TIMSABA.functions.auto_added_science_pack(gas_manipulation_science_pack, tech_gas_manipulation_science_pack)
end

-- MURIA
if mods[muria_mods] then
    TIMSABA.functions.auto_added_science_pack(muriatic_science_pack, muriatic_science_pack)
end

-- PELAGOS
if mods[pelagos_mods] then
    TIMSABA.functions.auto_added_science_pack(spoilage_science_pack, spoilage_science_pack)
end

-- APIA and CARNOVA
if mods[apia_carnova_mods] then
    TIMSABA.functions.auto_added_science_pack(apicultural_science_pack, apicultural_science_pack)
end

-- LIGNUMIS
if mods[lignumis_mods] then
    TIMSABA.functions.auto_added_science_pack(wood_science_pack, wood_science_pack)
    TIMSABA.functions.auto_added_science_pack(steam_science_pack, steam_science_pack)
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