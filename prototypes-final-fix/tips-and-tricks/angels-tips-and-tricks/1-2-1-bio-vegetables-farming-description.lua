local description = {"", {"tips-and-tricks-description.angels-vegetables-farming"}}
local tnt = angelsmods.functions.TNT

local items = {""}
local mid_string = {"tips-and-tricks-description.equivalent-seed"}
table.insert(items, tnt.get_item_from_name("angels-temperate-garden", "item", "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({ "angels-temperate-1", "angels-temperate-1-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-temperate-2", "angels-temperate-2-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-temperate-3", "angels-temperate-3-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-temperate-4", "angels-temperate-4-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-temperate-5", "angels-temperate-5-seed" }, "item", mid_string))
table.insert(items, tnt.get_item_from_name("angels-swamp-garden", "item", "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({ "angels-swamp-1", "angels-swamp-1-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-swamp-2", "angels-swamp-2-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-swamp-3", "angels-swamp-3-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-swamp-4", "angels-swamp-4-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-swamp-5", "angels-swamp-5-seed" }, "item", mid_string))
table.insert(items, tnt.get_item_from_name("angels-desert-garden", "item", "\n[font=default-bold]"))
table.insert(items, tnt.get_items_from_name({ "angels-desert-1", "angels-desert-1-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-desert-2", "angels-desert-2-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-desert-3", "angels-desert-3-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-desert-4", "angels-desert-4-seed" }, "item", mid_string))
table.insert(items, tnt.get_items_from_name({ "angels-desert-5", "angels-desert-5-seed" }, "item", mid_string))

table.insert(items, {"", {"tips-and-tricks-sub.angels-farm-seeds-to-crops"}, "\n"})

table.insert(description, items)

return description

--[[local description = {"", {"tips-and-tricks-description.angels-vegetables-farming"}}
local tnt = angelsmods.functions.TNT

local items = {""}
local mid_string = {"tips-and-tricks-description.equivalent-seed"}

-- ==================== TEMPERATE GARDEN (УМЕРЕННЫЙ) ====================
if data_item["angels-temperate-garden"] then
    -- Создаем заголовок через локализацию вместо жесткого текста
    table.insert(items, {"", "\n[font=default-bold]", {"item-name.angels-temperate-garden"}, "[/font]\n"})

    -- Безопасно добавляем элементы, если они есть в базе данных игры
    if data_item["angels-temperate-1"] then table.insert(items, tnt.get_items_from_name({ "angels-temperate-1", "angels-temperate-1-seed" }, "item", mid_string)) end
    if data_item["angels-temperate-2"] then table.insert(items, tnt.get_items_from_name({ "angels-temperate-2", "angels-temperate-2-seed" }, "item", mid_string)) end
    if data_item["angels-temperate-3"] then table.insert(items, tnt.get_items_from_name({ "angels-temperate-3", "angels-temperate-3-seed" }, "item", mid_string)) end
    if data_item["angels-temperate-4"] then table.insert(items, tnt.get_items_from_name({ "angels-temperate-4", "angels-temperate-4-seed" }, "item", mid_string)) end
    if data_item["angels-temperate-5"] then table.insert(items, tnt.get_items_from_name({ "angels-temperate-5", "angels-temperate-5-seed" }, "item", mid_string)) end
end

-- ==================== SWAMP GARDEN (БОЛОТНЫЙ) ====================
if data_item["angels-swamp-garden"] then
    -- Создаем заголовок через локализацию
    table.insert(items, {"", "\n[font=default-bold]", {"item-name.angels-swamp-garden"}, "[/font]\n"})

    if data_item["angels-swamp-1"] then table.insert(items, tnt.get_items_from_name({ "angels-swamp-1", "angels-swamp-1-seed" }, "item", mid_string)) end
    if data_item["angels-swamp-2"] then table.insert(items, tnt.get_items_from_name({ "angels-swamp-2", "angels-swamp-2-seed" }, "item", mid_string)) end
    if data_item["angels-swamp-3"] then table.insert(items, tnt.get_items_from_name({ "angels-swamp-3", "angels-swamp-3-seed" }, "item", mid_string)) end
    if data_item["angels-swamp-4"] then table.insert(items, tnt.get_items_from_name({ "angels-swamp-4", "angels-swamp-4-seed" }, "item", mid_string)) end
    if data_item["angels-swamp-5"] then table.insert(items, tnt.get_items_from_name({ "angels-swamp-5", "angels-swamp-5-seed" }, "item", mid_string)) end
end

-- ==================== DESERT GARDEN (ПУСТЫННЫЙ) ====================
if data_item["angels-desert-garden"] then
    -- Создаем заголовок через локализацию
    table.insert(items, {"", "\n[font=default-bold]", {"item-name.angels-desert-garden"}, "[/font]\n"})

    if data_item["angels-desert-1"] then table.insert(items, tnt.get_items_from_name({ "angels-desert-1", "angels-desert-1-seed" }, "item", mid_string)) end
    if data_item["angels-desert-2"] then table.insert(items, tnt.get_items_from_name({ "angels-desert-2", "angels-desert-2-seed" }, "item", mid_string)) end
    if data_item["angels-desert-3"] then table.insert(items, tnt.get_items_from_name({ "angels-desert-3", "angels-desert-3-seed" }, "item", mid_string)) end
    if data_item["angels-desert-4"] then table.insert(items, tnt.get_items_from_name({ "angels-desert-4", "angels-desert-4-seed" }, "item", mid_string)) end
    if data_item["angels-desert-5"] then table.insert(items, tnt.get_items_from_name({ "angels-desert-5", "angels-desert-5-seed" }, "item", mid_string)) end
end

-- Добавляем финальную заметку
table.insert(items, {"", {"tips-and-tricks-sub.angels-farm-seeds-to-crops"}, "\n"})

table.insert(description, items)

return description]]