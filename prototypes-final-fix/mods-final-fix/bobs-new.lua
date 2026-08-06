data_item[wolframite_ore].icon = "__space-age__/graphics/icons/tungsten-ore.png"
data_item[wolframite_ore].icon_size = 64
data_item[wolframite_ore].pictures =
{
    {size = 64, filename = "__space-age__/graphics/icons/tungsten-ore.png",   scale = 0.5, mipmap_count = 4},
    {size = 64, filename = "__space-age__/graphics/icons/tungsten-ore-1.png", scale = 0.5, mipmap_count = 4},
    {size = 64, filename = "__space-age__/graphics/icons/tungsten-ore-2.png", scale = 0.5, mipmap_count = 4},
    {size = 64, filename = "__space-age__/graphics/icons/tungsten-ore-3.png", scale = 0.5, mipmap_count = 4}
}

data_resource[wolframite_ore].icon = "__space-age__/graphics/icons/tungsten-ore.png"
data_resource[wolframite_ore].icon_size = 64
data_resource[wolframite_ore].stages.sheet.filename = "__space-age__/graphics/entity/tungsten-ore/tungsten-ore.png"

data_recipe[wolframite_crushed].icons = THREE_R_I(wolframite_ore, wolframite_crushed, stone_crushed_angels)

data_item[cobalt_steel_gear_wheel].hidden = false
data_item[cobalt_steel_gear_wheel].hidden_in_factoriopedia = false
data_item[cobalt_steel_gear_wheel].localised_name = {"item-name.bob-cobalt-steel-gear-wheel"}
data_recipe[cobalt_steel_gear_wheel].hidden = false
data_recipe[cobalt_steel_gear_wheel].hidden_in_factoriopedia = false
data_recipe[cobalt_steel_gear_wheel].localised_name = {"item-name.bob-cobalt-steel-gear-wheel"}
data_recipe[cobalt_steel_gear_wheel].results = {{type = item, name = cobalt_steel_gear_wheel, amount = 1}}
data_recipe[cobalt_steel_gear_wheel].main_product = cobalt_steel_gear_wheel

data_item[cobalt_steel_bearing_ball].hidden = false
data_item[cobalt_steel_bearing_ball].hidden_in_factoriopedia = false
data_item[cobalt_steel_bearing_ball].localised_name = {"item-name.bob-cobalt-steel-bearing-ball"}
data_recipe[cobalt_steel_bearing_ball].hidden = false
data_recipe[cobalt_steel_bearing_ball].hidden_in_factoriopedia = false
data_recipe[cobalt_steel_bearing_ball].localised_name = {"item-name.bob-cobalt-steel-bearing-ball"}
data_recipe[cobalt_steel_bearing_ball].results = {{type = item, name = cobalt_steel_bearing_ball, amount = 8}}
data_recipe[cobalt_steel_bearing_ball].main_product = cobalt_steel_bearing_ball

data_item[cobalt_steel_bearing].hidden = false
data_item[cobalt_steel_bearing].hidden_in_factoriopedia = false
data_item[cobalt_steel_bearing].localised_name = {"item-name.bob-cobalt-steel-bearing"}
data_recipe[cobalt_steel_bearing].hidden = false
data_recipe[cobalt_steel_bearing].hidden_in_factoriopedia = false
data_recipe[cobalt_steel_bearing].localised_name = {"item-name.bob-cobalt-steel-bearing"}
data_recipe[cobalt_steel_bearing].results = {{type = item, name = cobalt_steel_bearing, amount = 2}}
data_recipe[cobalt_steel_bearing].main_product = cobalt_steel_bearing

local tech_cobalt_processing = "bob-cobalt-processing"
data_technology[tech_cobalt_processing].enabled = true
data_technology[tech_cobalt_processing].hidden = false
data_technology[tech_cobalt_processing].hidden_in_factoriopedia = false
data_technology[tech_cobalt_processing].effects =
{
    {type = unlock_recipe, recipe = cobalt_steel_gear_wheel},
    {type = unlock_recipe, recipe = cobalt_steel_bearing_ball},
    {type = unlock_recipe, recipe = cobalt_steel_bearing}
}

data_recipe[casting_cobalt_steel_gear_wheel].results[1].name = cobalt_steel_gear_wheel
data_recipe[casting_cobalt_steel_gear_wheel].main_product = cobalt_steel_gear_wheel
data_recipe[casting_cobalt_steel_bearing_ball].results[1].name = cobalt_steel_bearing_ball
data_recipe[casting_cobalt_steel_bearing_ball].main_product = cobalt_steel_bearing_ball
data_recipe[casting_cobalt_steel_bearing].results[1].name = cobalt_steel_bearing
data_recipe[casting_cobalt_steel_bearing].main_product = cobalt_steel_bearing

local brass_bearing_ball = "bob-brass-bearing-ball"
for _, recipe in pairs(data_recipe) do
    -- Проверяем, есть ли вообще ингредиенты у рецепта (у некоторых модов их может не быть)
    if recipe.ingredients then
        for _, ingredient in pairs(recipe.ingredients) do
            -- Вариант 1: Ингредиент записан в виде таблицы с ключами (например, {name = "...", amount = 1})
            if ingredient.name == brass_bearing_ball then
                ingredient.name = cobalt_steel_bearing_ball
            -- Вариант 2: Ингредиент записан в виде простого массива (например, {"iron-plate", 5})
            -- В Lua первый элемент массива [1] — это всегда имя предмета
            elseif ingredient[1] == brass_bearing_ball then
                ingredient[1] = cobalt_steel_bearing_ball
            end
        end
    end
end
data_item[brass_bearing_ball] = nil
data_recipe[brass_bearing_ball] = nil
data_recipe[brass_bearing_ball .. _recycling] = nil
if mods[panglia_mods] then
    data_recipe[item_ .. brass_bearing_ball .. _panglia_crushing] = nil
end

local brass_bearing = "bob-brass-bearing"
for _, recipe in pairs(data.raw.recipe) do
    -- 1. ПРОВЕРКА ИНГРЕДИЕНТОВ (Ваш текущий код)
    if recipe.ingredients then
        for _, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == brass_bearing then
                ingredient.name = cobalt_steel_bearing
            elseif ingredient[1] == brass_bearing then
                ingredient[1] = cobalt_steel_bearing
            end
        end
    end

    -- 2. ПРОВЕРКА ОДИНОЧНОГО РЕЗУЛЬТАТА (Формат: result = "имя")
    if recipe.result == brass_bearing then
        recipe.result = cobalt_steel_bearing
    end

    -- 3. ПРОВЕРКА ТАБЛИЦЫ РЕЗУЛЬТАТОВ (Формат: results = {{type="item", name="...", amount=1}})
    if recipe.results then
        for _, result in pairs(recipe.results) do
            if result.name == brass_bearing then
                result.name = cobalt_steel_bearing
            elseif result[1] == brass_bearing then
                result[1] = cobalt_steel_bearing
            end
        end
    end

    -- 4. ПРОВЕРКА ГЛАВНОГО ПРОДУКТА (На всякий случай, если он задан)
    if recipe.main_product == brass_bearing then
        recipe.main_product = cobalt_steel_bearing
    end
end

-- Удаление предметов и ваших рецептов (Ваш текущий код)
data_item[brass_bearing] = nil
data_recipe[brass_bearing] = nil
data_recipe[brass_bearing .. _recycling] = nil
if mods[panglia_mods] then
    data_recipe[item_ .. brass_bearing .. _panglia_crushing] = nil
end

data_recipe["bob-carbon-from-acid"] = nil

-- LITHIUM
data_technology[tech_lithium_processing].enabled = true
data_technology[tech_lithium_processing].hidden = false
data_technology[tech_lithium_processing].hidden_in_factoriopedia = false

-- BATTERY
data_technology[tech_battery_3].effects =
{
    {type = unlock_recipe, recipe = silver_oxide_I_bob},
    {type = unlock_recipe, recipe = battery_silver_zinc}
}

-- HEAT SHIELD
data_technology[tech_heat_shield].prerequisites = {tech_ceramics, tech_powder_metallurgy_4, tech_tungsten_processing}
table.insert(data_technology[tech_heat_shield].unit.ingredients, {production_science_pack, 1})

-- VULCANUS
data_recipe[tungsten_carbide].results[1].amount = 1
data_recipe[tungsten_plate].hidden = false
data_recipe[tungsten_plate].hidden_in_factoriopedia = false

data_technology["tungsten-steel"].effects = {{type = unlock_recipe, recipe = tungsten_plate}}

-- AQUILO
data_recipe[lithium_plate].category = smelting

data_technology[tech_logistics_4].effects =
{
    {type = unlock_recipe, recipe = T4_transport_belt},
    {type = unlock_recipe, recipe = T4_underground_belt},
    {type = unlock_recipe, recipe = T4_splitter}
}
if mods[loaders_modernized_integrations] and settings.startup["mdrn-unlock-technology"].allowed_values == "belt" then
    table.insert(data_technology[tech_logistics_4].effects, {type = unlock_recipe, recipe = T4_loader})
end

data_item[vulcanus_transport_belt].icons = nil
data_item[vulcanus_transport_belt].icon = "__space-age__/graphics/icons/turbo-transport-belt.png"
data_item[vulcanus_transport_belt].icon_size = 64
data_transport_belt[vulcanus_transport_belt].icons = nil
data_transport_belt[vulcanus_transport_belt].icon = "__space-age__/graphics/icons/turbo-transport-belt.png"
data_transport_belt[vulcanus_transport_belt].icon_size = 64

data_item[vulcanus_underground_belt].icons = nil
data_item[vulcanus_underground_belt].icon = "__space-age__/graphics/icons/turbo-underground-belt.png"
data_item[vulcanus_underground_belt].icon_size = 64
data_underground_belt[vulcanus_underground_belt].icons = nil
data_underground_belt[vulcanus_underground_belt].icon = "__space-age__/graphics/icons/turbo-underground-belt.png"
data_underground_belt[vulcanus_underground_belt].icon_size = 64

data_item[vulcanus_splitter].icons = nil
data_item[vulcanus_splitter].icon = "__space-age__/graphics/icons/turbo-splitter.png"
data_item[vulcanus_splitter].icon_size = 64
data_splitter[vulcanus_splitter].icons = nil
data_splitter[vulcanus_splitter].icon = "__space-age__/graphics/icons/turbo-splitter.png"
data_splitter[vulcanus_splitter].icon_size = 64

data_technology[vulcanus_transport_belt].hidden = false
data_technology[vulcanus_transport_belt].hidden_in_factoriopedia = false
data_technology[vulcanus_transport_belt].enabled = true
data_technology[vulcanus_transport_belt].visible_when_disabled = true
data_technology[vulcanus_transport_belt].effects =
{
    {type = unlock_recipe, recipe = vulcanus_transport_belt},
    {type = unlock_recipe, recipe = vulcanus_underground_belt},
    {type = unlock_recipe, recipe = vulcanus_splitter}
}

if mods[reskins_bobs] then
    local reskin_vanilla_entity = reskins.lib.settings.get_value("reskins-lib-customize-tier-colors")
    local make_tier_labels = reskins.lib.settings.get_value("reskins-bobs-do-belt-entity-tier-labeling") and true or false
    -- TRANSPORT BELTS
    local transport_belts =
    {
        [T4_transport_belt] = {tier = 4, use_express_spritesheet = true},
        [vulcanus_transport_belt] = {tier = 6, use_express_spritesheet = true}
    }
    for name, map in pairs(transport_belts) do
        reskins.lib.apply_skin.transport_belt(name, map.tier, nil, make_tier_labels, map.use_express_spritesheet, map.reskin_vanilla_entity)
    end

    -- UNDERGROUND BELTS
    local underground_belts =
    {
        [T4_underground_belt] = {tier = 4},
        [vulcanus_underground_belt] = {tier = 6}
    }
    for name, map in pairs(underground_belts) do
        reskins.lib.apply_skin.underground_belt(name, map.tier, nil, make_tier_labels, map.reskin_vanilla_entity)
    end

    -- SPLITTERS
    local splitters =
    {
        [T4_splitter] = {tier = 4},
        [vulcanus_splitter] = {tier = 6}
    }
    for name, map in pairs(splitters) do
        reskins.lib.apply_skin.splitter(name, map.tier, nil, make_tier_labels, map.reskin_vanilla_entity)
    end
end

if mods[prismatic_belts] then
    local api_timsaba = require("lib.api")
    local sprite_utils =
    {
        icons = require("__reskins-sprite-utils__.icons"),
        colors = require("__reskins-sprite-utils__.colors"),
    }

    local transport_belts =
    {
        [T4_transport_belt] = {mask_tint = sprite_utils.colors.from_argb("D1A510E5"), logistics_technology = tech_logistics_4},
        [vulcanus_transport_belt] = {mask_tint = sprite_utils.colors.from_argb("FFc2682c"), logistics_technology = vulcanus_transport_belt}
    }

    local is_reskin_adaptation_needed = mods[reskins_library] and not (reskins.bobs and (reskins.bobs.triggers.logistics.entities == false))
    transport_belts[T4_transport_belt].tier = 4
    transport_belts[T4_transport_belt].mask_tint = reskins.lib.tiers.get_belt_tint(4)
    transport_belts[vulcanus_transport_belt].tier = 6
    transport_belts[vulcanus_transport_belt].mask_tint = reskins.lib.tiers.get_belt_tint(6)

    for name, options in pairs(transport_belts) do
        local entity = data_transport_belt[name]
        if not entity then
            goto continue
        end

        local icon_data = api_timsaba.get_transport_belt_icon({mask_tint = options.mask_tint})

        ---@type DeferrableIconData
        local assignable_belt_icon =
        {
            name = entity.name,
            type_name = entity.type,
            icon_data = icon_data
        }

        if is_reskin_adaptation_needed then
            local do_labels = reskins.lib.settings.get_value("reskins-bobs-do-belt-entity-tier-labeling") == true
            assignable_belt_icon.icon_data = do_labels and reskins.lib.tiers.add_tier_labels_to_icons(options.tier, icon_data) or icon_data
            assignable_belt_icon.pictures = do_labels and reskins.lib.sprites.create_sprite_from_icons(icon_data, 1.0) or nil
        end

        sprite_utils.icons.assign_deferrable_icon(assignable_belt_icon)

        local animation_set = api_timsaba.get_transport_belt_animation_set
        ({
            mask_tint = options.mask_tint,
            belt_sprites = api_timsaba.defines.belt_sprites.turbo,
        })
        api_timsaba.apply_belt_animation_set_and_update_related_connectables(entity, animation_set)

        api_timsaba.create_or_update_remnants(entity.name, {mask_tint = options.mask_tint})

        ---@type DeferrableIconData
        local assignable_tech_icon =
        {
            name = entity.name,
            type_name = technology,
            icon_data = api_timsaba.get_transport_belt_technology_icon({mask_tint = options.mask_tint}),
        }
        sprite_utils.icons.assign_deferrable_icon(assignable_tech_icon)

        ::continue::
    end

    --[[---@type TIMSABA.TransportBeltInputsMapping
    local transport_belts = {[vulcanus_transport_belt] = {preset = api_timsaba.defines.belt_presets.turbo, logistics_technology_name = vulcanus_transport_belt}}

    api_timsaba.transform_belts_and_related_connectables(transport_belts)]]
end

local simulations = require("prototypes.factoriopedia-simulations")

data_underground_belt[T4_underground_belt].factoriopedia_simulation = simulations.factoriopedia_T4_underground_belt_2_1_0
data_pipe_to_ground[stone_pipe_to_ground].factoriopedia_simulation = simulations.factoriopedia_stone_pipe_to_ground_2_1_0
data_pipe_to_ground[nitinol_pipe_to_ground].factoriopedia_simulation = simulations.factoriopedia_nitinol_pipe_to_ground_2_1_0

local aluminium_pipe = "bob-aluminium-pipe"
data_item[aluminium_pipe] = nil
data_recipe[aluminium_pipe] = nil
data_recipe[aluminium_pipe .. _recycling] = nil
if mods[panglia_mods] then
    data_recipe[item_ .. aluminium_pipe .. _panglia_crushing] = nil
end
data_pipe[aluminium_pipe] = nil

local aluminium_pipe_to_ground = "bob-aluminium-pipe-to-ground"
data_item[aluminium_pipe_to_ground] = nil
data_recipe[aluminium_pipe_to_ground] = nil
data_recipe[aluminium_pipe_to_ground .. _recycling] = nil
if mods[panglia_mods] then
    data_recipe[item_ .. aluminium_pipe_to_ground .. _panglia_crushing] = nil
end
data_pipe_to_ground[aluminium_pipe_to_ground] = nil

data_transport_belt[T3_transport_belt].next_upgrade = T4_transport_belt
data_transport_belt[T4_transport_belt].next_upgrade = T5_transport_belt
data_transport_belt[T5_transport_belt].next_upgrade = vulcanus_transport_belt

data_underground_belt[T3_underground_belt].next_upgrade = T4_underground_belt
data_underground_belt[T4_underground_belt].next_upgrade = T5_underground_belt
data_underground_belt[T5_underground_belt].next_upgrade = vulcanus_underground_belt

data_splitter[T3_splitter].next_upgrade = T4_splitter
data_splitter[T4_splitter].next_upgrade = T5_splitter
data_splitter[T5_splitter].next_upgrade = vulcanus_splitter

-- FIXED ALL TECHNOLOGIES
-- === ТОЧЕЧНЫЙ ФИКС ДЛЯ bob-battery-3 ===
local target_tech = data_technology[tech_battery_3]
if target_tech then
    -- 1. Удаляем cryogenic-science-pack из списка предварительных условий (prerequisites)
    if target_tech.prerequisites then
        for i = #target_tech.prerequisites, 1, -1 do
            if target_tech.prerequisites[i] == cryogenic_science_pack then
                table.remove(target_tech.prerequisites, i)
                log("!!! TIMSABA MANUAL FIX: Удалена зависимость [cryogenic-science-pack] из [bob-battery-3]")
            end
        end
    end

    -- 2. Удаляем научную колбу cryogenic-science-pack из стоимости исследования (ingredients)
    if target_tech.unit and target_tech.unit.ingredients then
        for i = #target_tech.unit.ingredients, 1, -1 do
            local ingredient = target_tech.unit.ingredients[i]
            -- Ингредиент может быть записан как {"имя", количество} или {name="имя", amount=количество}
            if ingredient[1] == cryogenic_science_pack or ingredient.name == cryogenic_science_pack then
                table.remove(target_tech.unit.ingredients, i)
                log("!!! TIMSABA MANUAL FIX: Удален научный пакет [cryogenic-science-pack] из стоимости [bob-battery-3]")
            end
        end
    end
end

-- Aвтоматический поиск петель
local function break_cyclic_prerequisites()
    local memo = {}

    -- Рекурсивная функция для поиска петель в графе
    local function check_cycle(tech_name, current_path)
        if memo[tech_name] ~= nil then return memo[tech_name] end

        -- Если технология уже есть в текущем пути — мы нашли петлю!
        if current_path[tech_name] then
            return true, tech_name
        end

        local tech = data.raw.technology[tech_name]
        if not tech or not tech.prerequisites then
            memo[tech_name] = false
            return false
        end

        current_path[tech_name] = true

        -- Перебираем все зависимости
        for i = #tech.prerequisites, 1, -1 do
            local prereq = tech.prerequisites[i]
            local has_cycle, cyclic_name = check_cycle(prereq, current_path)

            if has_cycle then
                -- Логгируем, чтобы вы видели, кто кого закольцевал
                log("!!! TIMSABA FIX: Обнаружена петля! Удаляем зависимость [" .. prereq .. "] из технологии [" .. tech_name .. "]")

                -- Аккуратно удаляем именно то условие, которое создало петлю
                table.remove(tech.prerequisites, i)

                -- Сбрасываем кэш проверки, так как граф изменился
                memo = {}
                current_path[tech_name] = nil
                return true, cyclic_name
            end
        end

        current_path[tech_name] = nil
        memo[tech_name] = false
        return false
    end

    -- Запускаем проверку для абсолютно всех технологий в игре
    local loop_found = true
    while loop_found do
        loop_found = false
        for tech_name, _ in pairs(data.raw.technology) do
            local has_cycle = check_cycle(tech_name, {})
            if has_cycle then
                loop_found = true
                break -- Перезапускаем глобальный цикл, так как граф изменился
            end
        end
    end
end

-- Запускаем глобальную инженерную зачистку дерева исследований
break_cyclic_prerequisites()

-- FIXED PREREQUISITES
local function tech_prerequisites(name, tech)
    -- Если не передано имя или ID требования, вообще ничего не делаем
    if not name or not tech then return end

    -- Если такой технологии нет в базе игры, выходим
    if not data_technology[name] then return end

    -- Создаем таблицу требований, если её не было
    if not data_technology[name].prerequisites then
        data_technology[name].prerequisites = {}
    end

    table.insert(data_technology[name].prerequisites, tech)
end
-- COPPER-TUNGSTEN PROCESSING
tech_prerequisites(boiler_5, tech_tungsten_alloy_processing)
tech_prerequisites(hydrazine_generator, tech_tungsten_alloy_processing)
tech_prerequisites(heat_exchanger_4, tech_tungsten_alloy_processing)
tech_prerequisites(tech_advanced_material_processing_4, tech_tungsten_alloy_processing)
tech_prerequisites(tech_multi_purpose_furnace_2, tech_tungsten_alloy_processing)
tech_prerequisites(vehicle_plasma_cannon_eq_3, tech_tungsten_alloy_processing)
tech_prerequisites(tech_plasma_turret_3, tech_tungsten_alloy_processing)
tech_prerequisites(tech_fluid_handling_4, tech_tungsten_alloy_processing)
-- LITHIUM PROCESSING
tech_prerequisites(tech_battery_2, tech_lithium_processing)
-- COBALT-STEEL PROCESSING
tech_prerequisites(tech_cobalt_processing, tech_cobalt_steel_smelting_1)
tech_prerequisites(tech_logistics_3, tech_cobalt_processing)
tech_prerequisites(tech_T3_inserter, tech_cobalt_processing)
tech_prerequisites(tech_robots_1, tech_cobalt_processing)
tech_prerequisites(tech_exoskeleton_eq_2, tech_cobalt_processing)
tech_prerequisites(tech_sniper_turret_2, tech_cobalt_processing)
-- SPACE LOGISTICS
--tech_prerequisites(vulcanus_transport_belt, tech_logistics_5)
tech_prerequisites(stack_inserter, vulcanus_transport_belt)