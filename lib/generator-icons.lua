local path = "path"

local Public = {}

local function get_item_data(item_name)
    if not item_name or item_name == "" then
        return nil, nil
    end
    local item_type = "item"
    local types = {"item", "fluid", "tool", "surface", "planet", "resource", "capsule", "module", "ammo", "item-with-entity-data"}
    for _, t in ipairs(types) do
        if data.raw[t] and data.raw[t][item_name] then
            item_type = t
            break
        end
    end
    local prototype = data.raw[item_type] and data.raw[item_type][item_name]
    if prototype then
        return prototype, item_type
    else
        log("Item data not found for: " .. tostring(item_name))
        return nil, nil
    end
end

local function create_icon_entry(prototype_data_or_path, item_name, item_type, scale_base, shift_pos)
    if not prototype_data_or_path then
        return nil
    end
    local icon_properties = {}
    if type(prototype_data_or_path) == "string" and item_type == path then
        icon_properties.icon = prototype_data_or_path
        icon_properties.scale = scale_base
        icon_properties.shift = shift_pos
    else
        local icon_data = prototype_data_or_path.icons and prototype_data_or_path.icons[1] or prototype_data_or_path

        icon_properties.icon = icon_data.icon
        icon_properties.icon_size = icon_data.icon_size
        icon_properties.scale = scale_base
        icon_properties.draw_background = true
        icon_properties.tint = icon_data.tint
        icon_properties.shift = shift_pos

        if icon_properties.icon_size then
            icon_properties.scale = icon_properties.scale * 64 / icon_properties.icon_size
        end
    end
    if not shift_pos then
        icon_properties.shift = nil
    end
    if not icon_properties.icon then
        log("ERROR in create_icon_entry: Missing icon property for: " .. (item_name or tostring(prototype_data_or_path)))
        return nil
    end

    return icon_properties
end

local function add_optional_icon(icons, index, item_name_or_path, scale, shift)
    if item_name_or_path then
        local icon_entry
        if string.find(item_name_or_path, "%.") or string.find(item_name_or_path, "[/\\]") then
            icon_entry = create_icon_entry(item_name_or_path, nil, path, scale, shift)
        else
            local data, type = get_item_data(item_name_or_path)
            icon_entry = create_icon_entry(data, item_name_or_path, type, scale, shift)
        end
        if icon_entry then
            icons[index] = icon_entry
            return index + 1
        end
    end
    return index
end

local function build_icons(defs)
    local icons = {}
    local index = 1
    for _, parametr in ipairs(defs) do
        index = add_optional_icon(icons, index, parametr[1], parametr[2], parametr[3])
    end
    return icons
end

function Public.double_icon(name_1, name_2, number)
    return build_icons
    {
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.double_to_double_icon(name_1, name_2, name_3, name_4, number)
    return build_icons
    {
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.187500, {18,-6}},  -- Right down from center first ingredient (справа внизу от центра первого ингредиента)
        {name_3, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {name_4, 0.187500, {-2,18}},  -- Right down from center second ingredient (справа внизу от центра второго ингредиента)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.quintuple_double_icon(name_1, name_2, name_3, name_4, name_5, name_6, name_7, number, name_8)
    return build_icons
    {
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

function Public.sextuple_double_icon(name_1, name_2, name_3, name_4, name_5, name_6, name_7, name_8, number, name_9)
    return build_icons
    {
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.125000, {4,-4}},   -- Left down from center first ingredient (слева внизу от центра первого ингредиента)
        {name_3, 0.125000, {12,-4}},  -- Center down from center first ingredient (по центру внизу от центра первого ингредиента)
        {name_4, 0.125000, {20,-4}},  -- Right down from center first ingredient (справа внизу от центра первого ингредиента)
        {name_5, 0.125000, {4,4}},    -- under 2 ingredient (под 2 ингредиентом)
        {name_6, 0.125000, {12,4}},   -- under 3 ingredient (под 3 ингредиентом)
        {name_7, 0.125000, {20,4}},   -- under 4 ingredient (под 4 ингредиентом)
        {name_8, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number, 0.750000, {0,0}},    -- number (номер)
        {name_9, 0.218750, {-3,17}},  -- Right down from center second ingredient (справа внизу от центра второго ингредиента)
    }
end

function Public.triple_icon(name_1, name_2, name_3, number)
    return build_icons
    {
        {name_1, 0.312500, {0,-14}},  -- Up (сверху)
        {name_2, 0.312500, {14,0}},   -- Right (справо)
        {name_3, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.reversed_triple_icon(name_1, name_2, name_3, number)
    return build_icons
    {
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.312500, {-14,0}},  -- Left (слево)
        {name_3, 0.312500, {0,14}},   -- Down (снизу)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.triple_to_triple_icon(name_1, name_2, name_3, name_4, name_5, name_6, number)
    return build_icons
    {
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.187500, {6,-6}},   -- Left down from center first ingredient (слева внизу от центра первого ингредиента)
        {name_3, 0.187500, {18,-6}},  -- Right down from center first ingredient (справа внизу от центра первого ингредиента)
        {name_4, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {name_5, 0.187500, {-18,18}}, -- left down from center second ingredient (слева внизу от центра второго ингредиента)
        {name_6, 0.187500, {-2,18}},  -- Right down from center second ingredient (справа внизу от центра второго ингредиента)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.quadruple_icon(name_1, name_2, name_3, name_4)
    return build_icons
    {
        {name_1, 0.250000, {-16,-16}},-- Up left corner (верхний левый угол)
        {name_2, 0.250000, {0,-16}},  -- Up (сверху)
        {name_3, 0.250000, {16,-16}}, -- Up right corner (верхний правый угол)
        {name_4, 0.500000, {0,8}},    -- Down (снизу)
    }
end

function Public.reversed_quadruple_icon(name_1, name_2, name_3, name_4, number)
    return build_icons
    {
        {name_1, 0.500000, {0,-8}},   -- Up (сверху)
        {name_2, 0.250000, {-16,16}}, -- Down left corner (нижний левый угол)
        {name_3, 0.250000, {0,16}},   -- Down (снизу)
        {name_4, 0.250000, {16,16}},  -- Down right corner (нижний правый угол)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.quadruple_to_quadruple_icon(name_1, name_2, name_3, name_4, name_5, name_6, name_7, name_8, number)
    return build_icons
    {
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

function Public.triple_quadruple_icon(name_1, name_2, name_3, name_4, name_5, name_6, name_7, number)
    return build_icons
    {
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.125000, {4,-4}},   -- Left down from center first ingredient (слева внизу от центра первого ингредиента)
        {name_3, 0.125000, {12,-4}},  -- Center down from center first ingredient (по центру внизу от центра первого ингредиента)
        {name_4, 0.125000, {20,-4}},  -- Right down from center first ingredient (справа внизу от центра первого ингредиента)
        {name_5, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {name_6, 0.187500, {-18,18}}, -- left down from center second ingredient (слева внизу от центра второго ингредиента)
        {name_7, 0.187500, {-2,18}},  -- Right down from center second ingredient (справа внизу от центра второго ингредиента)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.reversed_triple_quadruple_icon(name_1, name_2, name_3, name_4, name_5, name_6, name_7, number)
    return build_icons
    {
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.187500, {6,-6}},   -- Left down from center first ingredient (слева внизу от центра первого ингредиента)
        {name_3, 0.187500, {18,-6}},  -- Right down from center first ingredient (справа внизу от центра первого ингредиента)
        {name_4, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {name_5, 0.125000, {-20,20}}, -- left down from center second ingredient (слева внизу от центра второго ингредиента)
        {name_6, 0.125000, {-10,20}}, -- Center down from center second ingredient (по центру внизу от центра второго ингредиента)
        {name_7, 0.125000, {0,20}},   -- Right down from center second ingredient (справа внизу от центра второго ингредиента)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.quintuple_icon(name_1, name_2, name_3, name_4, name_5)
    return build_icons
    {
        {name_1, 0.250000, {-16,-16}},-- Up left corner (верхний левый угол)
        {name_2, 0.250000, {0,-16}},  -- Up (сверху)
        {name_3, 0.250000, {16,-16}}, -- Up right corner (верхний правый угол)
        {name_4, 0.375000, {-12,12}}, -- Down and slightly to the left (вниз и немного влево)
        {name_5, 0.375000, {12,12}},  -- Down and slightly to the right (вниз и немного вправо)
    }
end

function Public.reversed_quintuple_icon(name_1, name_2, name_3, name_4, name_5)
    return build_icons
    {
        {name_1, 0.375000, {-12,-12}},-- Up and slightly to the left (вверх и немного влево)
        {name_2, 0.375000, {12,-12}}, -- Up and slightly to the right (вверх и немного вправо)
        {name_3, 0.250000, {-16,16}}, -- Down left corner (нижний левый угол)
        {name_4, 0.250000, {0,16}},   -- Down (снизу)
        {name_5, 0.250000, {16,16}},  -- Down right corner (нижний правый угол)
    }
end

function Public.corner_icon(name_1, name_2, name_3, name_4, name_5, number, name_6, name_7, name_8, name_9)
    return build_icons
    {
        {name_1, 0.500000, {0,0}},    -- center (по центру)
        {name_2, 0.250000, {-16,-16}},-- Up left corner (верхний левый угол)
        {name_3, 0.250000, {16,-16}}, -- Up right corner (верхний правый угол)
        {name_4, 0.250000, {-16,16}}, -- Down left corner (нижний левый угол)
        {name_5, 0.250000, {16,16}},  -- Down right corner (нижний правый угол)
        {number, 0.750000, {0,0}},    -- number (номер)
        {name_6, 0.250000, {0,16}},   -- Down (снизу)
        {name_7, 0.250000, {0,-16}},  -- Up (сверху)
        {name_8, 0.250000, {-16,0}},  -- left (слева)
        {name_9, 0.250000, {16,0}},   -- right (справа)
    }
end

function Public.angels_refining_quadruple_icon(name_1, name_2, name_3, name_4, number)
    return build_icons
    {
        {name_1, 0.250000, {8,-8}},   -- Up right corner (верхний правый угол)
        {name_2, 0.187500, {0,-10}},  -- Up (сверху)
        {name_3, 0.187500, {10,0}},   -- Right (справо)
        {name_4, 0.312500, {-6,6}},   -- Down left corner (нижний левый угол)
        {number, 0.500000, {0,0}},    -- number (номер)
    }
end

function Public.alt_angels_refining_quadruple_icon(name_1, name_2, name_3, name_4, number)
    return build_icons
    {
        {name_1, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_2, 0.312500, {0,-14}},  -- Up (сверху)
        {name_3, 0.312500, {14,0}},   -- Right (справо)
        {name_4, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.recipe_planet_icon(name_1, name_2, name_3, number, name_4)
    return build_icons
    {
        {name_1, 0.500000, {0,0}},
        {name_2, 0.187500, {10,-10}},
        {name_3, 0.187500, {-10,-10}},
        {number, 0.500000, {0,0}},
        {name_4, 0.187500, {10,10}},
    }
end

function Public.building_recipe_icon(name_1, name_2)
    return build_icons
    {
        {name_1, 0.375000, {-4,4}},
        {name_2, 0.250000, {8,-8}},
    }
end

function Public.recycling_recipe_icon(name_1, name_2)
    return build_icons
    {
        {name_1, 0.500000, {0,0}},
        {name_2, 0.375000, {0,0}},
    }
end

function Public.galaxy_icon(name_1, name_2)
    return build_icons
    {
        {name_1, 0.500000, {0,0}},
        {name_2, 0.250000, {8,8}},
    }
end

function Public.bearing_fluid_icon(fluid, name_1, name_2, name_3, number)
    return build_icons
    {
        {fluid,  0.312500, {14,-14}}, -- fluid (жидкость)
        {name_1, 0.312500, {0,-14}},  -- Up (сверху)
        {name_2, 0.312500, {14,0}},   -- Right (справо)
        {name_3, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.stonks_icon(name_1, name_2)
    return build_icons
    {
        {name_1, 0.500000, {0,0}},
        {name_2, 0.250000, {-8,-8}},
    }
end
return Public