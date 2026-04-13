-- BASE

-- COMBAT
data_recipe["bob-gun-cotton"].ingredients =
{
    {type = item, name = cellulose_fiber_angels, amount = 4},
    {type = fluid, name = nitric_acid_angels, amount = 60},
    {type = fluid, name = sulfuric_acid_angels, amount = 60}
}

-- ANGELS FIX
local oil_refinery_1 = "oil-refinery"
data_item[oil_refinery_1].order = a
data_recipe[oil_refinery_1].order = a
data_assembling[oil_refinery_1].order = a

data_storage_tank["angels-storage-tank-2"].fluid_box.volume = 180000
data_storage_tank["angels-storage-tank-1"].fluid_box.volume = 180000

local prefixes =
{
    "angels%-water%-void",
    "angels%-chemical%-void",
    "angels%-bio%-void"
}
for recipe_name, _ in pairs(data.raw.recipe) do
    for _, prefix in ipairs(prefixes) do
        if string.find(recipe_name, "^" .. prefix) then
            data.raw.recipe[recipe_name] = nil
            break
        end
    end
end

for item_name, _ in pairs(data_item) do
    if string.find(item_name, "dormant") then
        data_item[item_name] = nil
    end
end

for recipe_name, _ in pairs(data_recipe) do
    if string.find(recipe_name, "dormant%-recycling") then
        data_recipe[recipe_name] = nil
    end
end

data_item[lead_oxide].hidden = false
data_item[lead_oxide].hidden_in_factoriopedia = false
data_item[silicon_powder].hidden = false
data_item[silicon_powder].hidden_in_factoriopedia = false
data_recipe[silicon_powder].hidden = false
data_recipe[silicon_powder].hidden_in_factoriopedia = false
data_item[aluminium_oxide].hidden = false
data_item[aluminium_oxide].hidden_in_factoriopedia = false
data_item[silver_nitrate].hidden = false
data_item[silver_nitrate].hidden_in_factoriopedia = false
data_item[cobalt_oxide].hidden = false
data_item[cobalt_oxide].hidden_in_factoriopedia = false
data_item[tungsten_powder].hidden = false
data_item[tungsten_powder].hidden_in_factoriopedia = false
data_item[tungsten_oxide].hidden = false
data_item[tungsten_oxide].hidden_in_factoriopedia = false

-- BOBS FIX
data_fluid[nitroglycerin_bob].subgroup = is_explosives
data_fluid[nitroglycerin_bob].order = d
data_recipe[nitroglycerin_bob].subgroup = is_explosives
data_recipe[nitroglycerin_bob].order = d
data_recipe[nitroglycerin_bob].ingredients =
{
    {type = fluid, name = glycerol_angels, amount = 30},
    {type = fluid, name = nitric_acid_angels, amount = 30},
    {type = fluid, name = sulfuric_acid_angels, amount = 30}
}

data_recipe[lithium_perchlorate_bob].category = angels_liquifying

-- NUCLEAR FIX
if not mods [shattered_mods] then
    data_recipe["angels-plutonium-239-recycling"] = nil
    data_recipe["angels-thorium-232-recycling"] = nil
end

-- SPACE AGE

-- MODS
if mods [muluna_mods] then
    local muluna_mining_machine =
    {
        {name = "electric-mining-drill-ground-digger", order = a},
        {name = "bob-mining-drill-1-ground-digger",    order = b},
        {name = "bob-mining-drill-2-ground-digger",    order = c},
        {name = "bob-mining-drill-3-ground-digger",    order = d},
        {name = "bob-mining-drill-4-ground-digger",    order = e}
    }
    for _, MMM in pairs(muluna_mining_machine) do
        data_assembling[MMM.name].subgroup = is_extraction_machine_muluna
        data_assembling[MMM.name].order = MMM.order
    end

    -- is_extraction_machine_maraxsis

    local vacuum_heating_tower = "muluna-vacuum-heating-tower"
    data_assembling[vacuum_heating_tower].subgroup = is_muluna_heating
    data_assembling[vacuum_heating_tower].icons = nil
    data_assembling[vacuum_heating_tower].icon = "__TIMSABA__/graphics/icons/muluna/muluna-vacuum-heating-tower.png"
    data_assembling[vacuum_heating_tower].order = a
end

if mods [shchierbin_mods] and mods [maraxsis_mods] then
    local salt_v = "salt-v"
    data_recipe[salt_v].subgroup = is_shchierbin_recipe
    data_recipe[salt_v].icons = THREE_R_I(water_saline_angels, salt_angels, water)
    data_recipe[salt_v].order = g

    data_recipe[salt_mods] = nil
end

if mods ["RPGsystem"] then
    data_capsule["rpg_amnesia_potion"].subgroup = nil
    data_capsule["rpg_big_healing_potion"].subgroup = nil
    data_capsule["rpg_big_xp_potion"].subgroup = nil
    data_capsule["rpg_crafting_potion"].subgroup = nil
    data_capsule["rpg_level_up_potion"].subgroup = nil
    data_capsule["rpg_small_healing_potion"].subgroup = nil
    data_capsule["rpg_small_xp_potion"].subgroup = nil
    data_capsule["rpg_speed_potion"].subgroup = nil
end