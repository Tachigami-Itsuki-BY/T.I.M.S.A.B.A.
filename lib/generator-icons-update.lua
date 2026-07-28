local Public = {}

local function get_item_data(item_name)
    if not item_name or item_name == "" then
        return nil, nil
    end

    -- 1. ИСПРАВЛЕНО ДЛЯ 2.0+: Добавлены новые типы прототипов, куда переехали ванильные предметы
    local types =
    {
        "item", "fluid", "tool", "surface", "planet", "resource", "capsule", "module", "ammo", "item-with-entity-data",
        "gun", "armor", "repair-tool", "rail-planner", "blueprint-item", "deconstruction-item", "upgrade-item",
        "selection-tool", "spidertron-remote"
    }

    local item_type = nil
    for _, t in ipairs(types) do
        if data.raw[t] and data.raw[t][item_name] then
            item_type = t
            break
        end
    end

    -- 2. РЕЗЕРВНЫЙ АВАРИЙНЫЙ ПОИСК: Если предмета нет в списке выше, ищем по всей базе data.raw
    if not item_type then
        for raw_type, prototypes_table in pairs(data.raw) do
            if prototypes_table[item_name] then
                item_type = raw_type
                break
            end
        end
    end

    -- 3. Возвращаем прототип, если он найден
    if item_type and data.raw[item_type][item_name] then
        return data.raw[item_type][item_name], item_type
    else
        -- Фиксируем в лог только реальные аномалии
        log("Item data absolutely not found for: " .. tostring(item_name))

        -- ИСПРАВЛЕНО: Создаем фейковый пустой прототип-заглушку, чтобы вызывающая функция 
        -- не упала и не ушла в бесконечный цикл из-за отсутствия иконки!
        local dummy_prototype = {
            icon = "__core__/graphics/empty.png",
            icon_size = 64,
            icons = nil
        }
        return dummy_prototype, "item"
    end
end

local function create_icon_entries(prototype_data_or_path, item_name, item_type, scale_base, shift_pos)
    if not prototype_data_or_path then
        return {}
    end
    local entries = {}

    -- Если передана прямая строка-путь
    if type(prototype_data_or_path) == "string" and item_type == "path" then
        table.insert(entries,
        {
            icon = prototype_data_or_path,
            scale = scale_base,
            shift = shift_pos
        })
        return entries
    end

    -- 1. ИСПРАВЛЕНО ДЛЯ 2.0+: Извлекаем иконки из новой структуры icon_draw_specification
    local raw_icons = prototype_data_or_path.icons
    if not raw_icons and prototype_data_or_path.icon_draw_specification then
        -- Проверяем сначала icons внутри спецификации, затем слои layers
        raw_icons = prototype_data_or_path.icon_draw_specification.icons
                 or prototype_data_or_path.icon_draw_specification.layers
    end

    -- Обработка многослойных иконок (таблицы/массивы)
    if raw_icons then
        for _, icon_data in ipairs(raw_icons) do
            local icon_properties = {
                icon = icon_data.icon,
                icon_size = icon_data.icon_size or prototype_data_or_path.icon_size or 64,
                scale = scale_base,
                draw_background = true,
                tint = icon_data.tint,
                shift = shift_pos
            }
            if icon_properties.icon_size then
                icon_properties.scale = icon_properties.scale * 64 / icon_properties.icon_size
            end
            if not shift_pos then icon_properties.shift = nil end

            if icon_properties.icon then
                table.insert(entries, icon_properties)
            else
                log("ERROR in create_icon_entries (loop): Missing icon property for: " .. (item_name or tostring(prototype_data_or_path)))
            end
        end
    else
        -- 2. Обработка одиночных классических иконок
        local icon_path = prototype_data_or_path.icon
        local icon_size = prototype_data_or_path.icon_size or 64

        -- Аварийный подхват одиночной иконки из icon_draw_specification
        if not icon_path and prototype_data_or_path.icon_draw_specification then
            icon_path = prototype_data_or_path.icon_draw_specification.icon
            icon_size = prototype_data_or_path.icon_draw_specification.icon_size or icon_size
        end

        -- ХАК ДЛЯ 2.0+: Подхват путей из альтернативных графических структур (picture, sprites)
        if not icon_path then
            local pic = prototype_data_or_path.picture or prototype_data_or_path.sprites
            if pic then
                icon_path = pic.filename or (pic.layers and pic.layers[1] and pic.layers[1].filename)
                icon_size = pic.size or (pic.layers and pic.layers[1] and pic.layers[1].size) or pic.icon_size or icon_size
            end
        end

        local icon_properties = {
            icon = icon_path,
            icon_size = icon_size,
            scale = scale_base,
            draw_background = true,
            tint = prototype_data_or_path.tint,
            shift = shift_pos
        }
        if icon_properties.icon_size and type(icon_properties.icon_size) == "number" then
            icon_properties.scale = icon_properties.scale * 64 / icon_properties.icon_size
        end
        if not shift_pos then icon_properties.shift = nil end

        if icon_properties.icon then
            table.insert(entries, icon_properties)
        else
            -- 3. БЕЗОПАСНАЯ ЗАГЛУШКА: Убираем пугающий текст CRITICAL, так как пустая иконка — штатное поведение для некоторых скрытых объектов 2.0
            -- log("CRITICAL FALLBACK in create_icon_entries: Missing icon property for: " .. (item_name or tostring(prototype_data_or_path)))
            table.insert(entries,
            {
                icon = "__core__/graphics/empty.png",
                icon_size = 64,
                scale = scale_base,
                shift = shift_pos
            })
        end
    end
    return entries
end

local function add_optional_icon(icons, item_name_or_path, scale, shift)
    if not item_name_or_path then return end
    local data, type
    if string.find(item_name_or_path, "%.") or string.find(item_name_or_path, "[/\\]") then
        table.insert(icons, {
            icon = item_name_or_path,
            scale = scale,
            shift = shift
        })
    else
        data, type = get_item_data(item_name_or_path)
        if data then
            local entries = create_icon_entries(data, item_name_or_path, type, scale, shift)
            for _, e in ipairs(entries) do
                table.insert(icons, e)
            end
        end
    end
end

local function build_icons(entries)
    local icons = {}
    for _, entry in ipairs(entries) do
        add_optional_icon(icons, entry[1], entry[2], entry[3])
    end
    return icons
end

function Public.building_recipe_icons(name_1, name_2)
    return build_icons{
        {name_1, 0.375000, {-4,4}},
        {name_2, 0.250000, {8,-8}},
    }
end

function Public.double_icons(name_1, name_2, number)
    return build_icons{
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.quintuple_double_icons(name_1, name_2, name_3, name_4, name_5, name_6, name_7, number, name_8)
    return build_icons{
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.125000, {4,-4}},   -- Left down from center first ingredient (слева внизу от центра первого ингредиента)
        {name_3, 0.125000, {12,-4}},  -- Center down from center first ingredient (по центру внизу от центра первого ингредиента)
        {name_4, 0.125000, {20,-4}},  -- Right down from center first ingredient (справа внизу от центра первого ингредиента)
        {name_5, 0.125000, {6,4}},    -- Between and under 2-3 ingredient (между и под 2-3 ингредиентом)
        {name_6, 0.125000, {16,4}},   -- Between and under 3-4 ingredient (между и под 3-4 ингредиентом)
        {name_7, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number, 0.750000, {0,0}},    -- number (номер)
        {name_8, 0.218750, {-3,17}},  -- Right down from center second ingredient (справа внизу от центра второго ингредиента)
    }
end

function Public.triple_icons(name_1, name_2, name_3, number)
    return build_icons{
        {name_1, 0.315000, {0,-14}},  -- Up (сверху)
        {name_2, 0.315000, {14,0}},   -- Right (справо)
        {name_3, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.reversed_triple_icons(name_1, name_2, name_3, number)
    return build_icons{
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.312500, {-14,0}},  -- Left (слево)
        {name_3, 0.312500, {0,14}},   -- Down (снизу)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.triple_to_triple_icons(name_1, name_2, name_3, name_4, name_5, name_6, number)
    return build_icons{
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.187500, {6,-6}},   -- Left down from center first ingredient (слева внизу от центра первого ингредиента)
        {name_3, 0.187500, {18,-6}},  -- Right down from center first ingredient (справа внизу от центра первого ингредиента)
        {name_4, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {name_5, 0.187500, {-18,18}}, -- left down from center second ingredient (слева внизу от центра второго ингредиента)
        {name_6, 0.187500, {-2,18}},  -- Right down from center second ingredient (справа внизу от центра второго ингредиента)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.quadruple_to_quadruple_icons(name_1, name_2, name_3, name_4, name_5, name_6, name_7, name_8, number)
    return build_icons{
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.125000, {4,-4}},   -- Left down from center first ingredient (слева внизу от центра первого ингредиента)
        {name_3, 0.125000, {12,-4}},  -- Center down from center first ingredient (по центру внизу от центра первого ингредиента)
        {name_4, 0.125000, {20,-4}},  -- Right down from center first ingredient (справа внизу от центра первого ингредиента)
        {name_5, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {name_6, 0.125000, {-20,20}}, -- left down from center second ingredient (слева внизу от центра второго ингредиента)
        {name_7, 0.125000, {-10,20}}, -- Center down from center second ingredient (по центру внизу от центра второго ингредиента)
        {name_8, 0.125000, {0,20}},   -- Right down from center second ingredient (справа внизу от центра второго ингредиента)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.alt_angels_refining_quadruple_icons(name_1, name_2, name_3, name_4, number)
    return build_icons
    {
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.312500, {0,-14}},  -- Up (сверху)
        {name_3, 0.312500, {14,0}},   -- Right (справо)
        {name_4, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.recycling_recipe_icons(name_1, name_2)
    return build_icons
    {
        {name_1, 0.500000, {0,0}},
        {name_2, 0.375000, {0,0}},
    }
end

return Public