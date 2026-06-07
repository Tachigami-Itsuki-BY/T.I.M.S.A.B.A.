local path = "path"

local Public = {}

local function get_item_or_fluid(item_name, expected_type)
    if not item_name or item_name == "" then
        return nil, nil
    end

    if data.raw[expected_type] and data.raw[expected_type][item_name] then
        return data.raw[expected_type][item_name], expected_type
    else
        log("Item/Fluid data not found for: " .. tostring(item_name) .. " (expected " .. expected_type .. ")")
        return nil, nil
    end
end

local function create_icon_entry(prototype_data_or_path, item_name, item_type, scale_base, shift_pos)
    if not prototype_data_or_path then
        return nil
    end
    local icon_properties = {}
    if type(prototype_data_or_path) == "string" and item_type == "path" then
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

local function add_icon(icons, index, name, expected_type, scale, shift)
    if not name then return index end

    if expected_type == path then
        local icon_entry = create_icon_entry(name, nil, path, scale, shift)
        if icon_entry then
            icons[index] = icon_entry
            return index + 1
        end
    else
        local data, type = get_item_or_fluid(name, expected_type)
        local icon_entry = create_icon_entry(data, name, type, scale, shift)
        if icon_entry then
            icons[index] = icon_entry
            return index + 1
        end
    end
    return index
end

local function build_icons(parametrs)
    local icons = {}
    local index = 1
    for _, parametr in ipairs(parametrs) do
        index = add_icon(icons, index, parametr[1], parametr[2], parametr[3], parametr[4])
    end
    return icons
end

function Public.item_item_icon(name_item_1, name_item_2, number_path)
    return build_icons{
        {name_item_1,   item, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_item_2,   item, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number_path,   path, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.item_fluid_icon(name_item_1, name_fluid_1, number_path)
    return build_icons{
        {name_item_1,   item, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_fluid_1, fluid, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number_path,   path, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.fluid_item_icon(name_fluid_1, name_item_1, number_path)
    return build_icons{
        {name_fluid_1, fluid, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_item_1,   item, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number_path,   path, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.item_item_item_icon(name_item_1, name_item_2, name_item_3, number_path)
    return build_icons{
        {name_item_1,   item, 0.312500, {0,-14}},  -- Up (сверху)
        {name_item_2,   item, 0.312500, {14,0}},   -- Right (справо)
        {name_item_3,   item, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number_path,   path, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.fluid_fluid_item_icon(name_fluid_1, name_fluid_2, name_item_3, number_path)
    return build_icons{
        {name_fluid_1, fluid, 0.312500, {0,-14}},  -- Up (сверху)
        {name_fluid_2, fluid, 0.312500, {14,0}},   -- Right (справо)
        {name_item_3,   item, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number_path,   path, 0.750000, {0,0}},    -- number (номер)
    }
end

function Public.alt_AR_item_item_fluid_item_icon(name_item_1, name_item_2, name_fluid_3, name_item_4, number_path)
    return build_icons{
        {name_item_1,   item, 0.375000, {12,-12}}, -- Up right corner (верхний правый угол)
        {name_item_2,   item, 0.312500, {0,-14}},  -- Up (сверху)
        {name_fluid_3, fluid, 0.312500, {14,0}},   -- Right (справо)
        {name_item_4,   item, 0.437500, {-10,10}}, -- Down left corner (нижний левый угол)
        {number_path,   path, 0.750000, {0,0}},    -- number (номер)
    }
end

return Public