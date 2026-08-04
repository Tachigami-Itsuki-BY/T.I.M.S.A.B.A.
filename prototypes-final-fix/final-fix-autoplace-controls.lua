local data_autoplace_control = data.raw["autoplace-control"]
-- PLANETS
data_autoplace_control[coal].order = a
data_autoplace_control[ore_saphirite].order = a_a
data_autoplace_control[ore_jivolite].order = a_b
data_autoplace_control[ore_stiratite].order = a_c
data_autoplace_control[ore_crotinnium].order = a_d
data_autoplace_control[ore_rubyte].order = a_e
data_autoplace_control[ore_bobmonium].order = a_f
-- a_g
-- a_h
data_autoplace_control[crude_oil].order = a_i
local natural_gas = "angels-natural-gas"
data_autoplace_control[natural_gas].order = a_j
data_autoplace_control["angels-fissure"].order = a_k

data_autoplace_control["vulcanus_coal"].order = b
local wolframite_ore_ac = "tungsten_ore"
data_autoplace_control[wolframite_ore_ac].localised_name = {"", "[item=tungsten-ore] ", {"entity-name.wolframite"}}
data_autoplace_control[wolframite_ore_ac].order = b_a
data_autoplace_control[calcite].order = b_b
data_autoplace_control["sulfuric_acid_geyser"].order = b_c

data_autoplace_control["gleba_stone"].order = b_d

data_autoplace_control[scrap].order = b_e

data_autoplace_control["aquilo_crude_oil"].order = b_f
local thermal_water_geyser_ac = "lithium_brine"
data_autoplace_control[thermal_water_geyser_ac].localised_name = {"", "[entity=lithium-brine] ", {"entity-name.thermal-water-geyser"}}
data_autoplace_control[thermal_water_geyser_ac].order = b_g
data_autoplace_control["fluorine_vent"].order = b_h

-- MOSHINE
if mods[moshine_mods] then
    data_autoplace_control["multi_ore"].order = c
    data_autoplace_control["steam_geyser"].order = c_a
end

-- ARIG
if mods[arig_mods] then
    data_autoplace_control["arig_stone"].order = c_b
    data_autoplace_control["heavy-oil-geyser"].order = c_c
end

-- HYARION
if mods[hyarion_mods] then
    data_autoplace_control["hyarion_iron"].order = c_d
    data_autoplace_control["hyarion_carbon"].order = c_e
    data_autoplace_control["hyarion_quartz"].order = c_f
    data_autoplace_control["hyarion_ruby"].order = c_g
    data_autoplace_control["hyarion_sapphire"].order = c_h
    data_autoplace_control["hyarion_emerald"].order = c_i
end

-- TELLUS
if mods[tellus_mods] then
    data_autoplace_control["tellus_stone"].order = c_j
end

-- PARACELSIN
if mods[paracelsin_mods] then
    data_autoplace_control[vaterite].order = c_k
    data_autoplace_control[sphalerite_ore].order = c_l
    data_autoplace_control[tetrahedrite_ore].order = c_m
    data_autoplace_control["water_cryovolcano"].order = c_n
end

-- CORRUNDUM
if mods[corrundum_mods] then
    data_autoplace_control["platinum_ore"].order = c_o
    data_autoplace_control["chalcopyrite_ore"].order = c_p
    data_autoplace_control["sulfur_ore"].order = c_q
end

-- MOONS
-- MULUNA
if mods[muluna_mods] then
    data_autoplace_control[metallic_asteroid_chunk].localised_name = {"", "[entity=metallic-asteroid-chunk] ", {"entity-name.metallic-chunk"}}
    data_autoplace_control[metallic_asteroid_chunk].order = d
    data_autoplace_control[carbonic_asteroid_chunk].localised_name = {"", "[entity=carbonic-asteroid-chunk] ", {"entity-name.carbonic-chunk"}}
    data_autoplace_control[carbonic_asteroid_chunk].order = d_a
    data_autoplace_control[oxide_asteroid_chunk].localised_name = {"", "[entity=oxide-asteroid-chunk] ", {"entity-name.oxide-chunk"}}
    data_autoplace_control[oxide_asteroid_chunk].order = d_b
    data_autoplace_control[anorthite_chunk].order = d_c
end

-- FROZETA
if mods[secretas_frozeta_mods] then
    data_autoplace_control["spaceship_scrap"].order = d_d
end

-- TERRAPALUS
if mods[terrapalus_mods] then
    local vanilla_resources = {iron_ore, copper_ore, stone}
    local angels_resources = {ore_saphirite, ore_jivolite, ore_stiratite, ore_crotinnium, ore_rubyte, ore_bobmonium, natural_gas}

    -- Ссылка на карту генерации для удобства
    local map_gen = data_planet[planet_terrapalus].map_gen_settings

    -- ИСПРАВЛЕНИЕ: Инициализируем autoplace_settings, если оригинальный мод этого не сделал
    if not map_gen.autoplace_settings then
        map_gen.autoplace_settings = {entity = {settings = {}}}
    end

    -- 1. Вырезаем ванильные ресурсы
    for _, res_name in ipairs(vanilla_resources) do
        map_gen.autoplace_controls[res_name] = nil
        if map_gen.autoplace_settings.entity.settings then
            map_gen.autoplace_settings.entity.settings[res_name] = nil
        end
        if data_resource[res_name] then
            data_resource[res_name].location = nil
        end
    end

    -- 2. Внедряем руды Ангела (ИСПРАВЛЕНО на ipairs)
    for _, res_name in ipairs(angels_resources) do
        -- Добавляем ползунок (строка, которая вас смущала - она верна!)
        map_gen.autoplace_controls[res_name] = {}

        -- Прописываем саму сущность в настройки генерации планеты
        map_gen.autoplace_settings.entity.settings[res_name] = {}

        -- Намертво привязываем отображение к Факторопедии Террапалуса
        if data_resource[res_name] then
            -- Убедитесь, что planet_terrapalus здесь - это строка, например "terrapalus"
            data_resource[res_name].location = planet_terrapalus
        end
    end

    data_autoplace_control[palusium_ore].order = d_e
end