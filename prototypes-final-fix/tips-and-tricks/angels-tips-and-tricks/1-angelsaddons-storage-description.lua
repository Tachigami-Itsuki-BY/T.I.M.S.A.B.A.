local description = {"", {"tips-and-tricks-description.angelsaddons-storage"}}

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

local available_storage = {""}
if angelsmods.addons.storage.silos then
    table.insert(available_storage, {"tips-and-tricks-description.STORAGE-SILOS"})
    table.insert(available_storage, get_item_from_name("angels-silo"))
    table.insert(available_storage, {"tips-and-tricks-description.STORAGE-SILOS-description"})
end
if angelsmods.addons.storage.oresilos then
    table.insert(available_storage, {"tips-and-tricks-description.ORE-SILOS"})
    table.insert(available_storage, get_item_from_name("angels-silo-ore2"))
    table.insert(available_storage, {"tips-and-tricks-description.ORE-SILOS-description"})
end
if angelsmods.addons.storage.warehouses then
    table.insert(available_storage, {"tips-and-tricks-description.WAREHOUSES"})
    table.insert(available_storage, get_item_from_name("angels-warehouse"))
    table.insert(available_storage, {"tips-and-tricks-description.WAREHOUSES-description"})
end
if angelsmods.addons.storage.pressuretank or (angelsmods.addons.storage.inlinetank and not mods["angelspetrochem"]) then
    table.insert(available_storage, {"tips-and-tricks-description.FLUID-STORAGE"})
end
if angelsmods.addons.storage.inlinetank and not mods["angelspetrochem"] then
    table.insert(available_storage, get_item_from_name("angels-storage-tank-3"))
end
if angelsmods.addons.storage.pressuretank then
    table.insert(available_storage, get_item_from_name("angels-pressure-tank-1"))
end

table.insert(description, available_storage)
table.insert(description, {"tips-and-tricks-description.angelsaddons-storage-notes"})
return description