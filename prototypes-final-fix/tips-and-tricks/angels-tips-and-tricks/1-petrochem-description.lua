local description = {"tips-and-tricks-description.angels-petrochem"}

local function get_item_from_name(item_name, item_type, before)
    before = before or "- "
    item_type = item_type or "item"
    return
    {
        "",
        before .. "[" .. "img=" .. item_type .. "/" .. item_name .. "] ",
        { item_type .. "-name." .. item_name },
        "\n",
    }
end
local one = {""}
table.insert(one, get_item_from_name("plastic-bar"))
table.insert(one, get_item_from_name("explosives"))
table.insert(one, get_item_from_name(data.raw.item["bob-resin"] and "bob-resin" or "angels-solid-resin"))
table.insert(one, get_item_from_name(data.raw.item["bob-rubber"] and "bob-rubber" or "angels-solid-rubber"))
table.insert(one, get_item_from_name("angels-liquid-sulfuric-acid", "fluid"))
table.insert(one, {"tips-and-tricks-description.various-fuels"})
table.insert(description, one)

local two = {""}
table.insert(two, get_item_from_name("angels-natural-gas", "entity", ""))

table.insert(description, two)

return description

--[[local description = {"", {"tips-and-tricks-description.angels-petrochem"}}

local function get_item_from_name(item_name, item_type, before)
    before = before or "- "
    item_type = item_type or "item"
    return
    {
        "",
        before .. "[img=" .. item_type .. "/" .. item_name .. "] ",
        {item_type .. "-name." .. item_name},
        "\n",
    }
end

-- Первый блок: Продукты химии и топлива
local one = {""}
local has_one = false

if data_item["plastic-bar"] then
    has_one = true
    table.insert(one, get_item_from_name("plastic-bar"))
end

if data_item["explosives"] then
    has_one = true
    table.insert(one, get_item_from_name("explosives"))
end

-- Проверка смолы (Боб или Ангел)
local resin_name = data_item["bob-resin"] and "bob-resin" or (data_item["angels-solid-resin"] and "angels-solid-resin")
if resin_name then
    has_one = true
    table.insert(one, get_item_from_name(resin_name))
end

-- Проверка резины (Боб или Ангел)
local rubber_name = data_item["bob-rubber"] and "bob-rubber" or (data_item["angels-solid-rubber"] and "angels-solid-rubber")
if rubber_name then
    has_one = true
    table.insert(one, get_item_from_name(rubber_name))
end

if data_fluid["angels-liquid-sulfuric-acid"] then
    has_one = true
    table.insert(one, get_item_from_name("angels-liquid-sulfuric-acid", "fluid"))
end

-- Заголовок для топлива добавляем только если блок вообще существует
if has_one then
    table.insert(one, {"tips-and-tricks-description.various-fuels"})
    table.insert(description, one)
end

-- Второй блок: Природный газ
local two = {""}
if data_entity["angels-natural-gas"] then
    table.insert(two, get_item_from_name("angels-natural-gas", "entity", ""))
    table.insert(description, two)
end

return description]]