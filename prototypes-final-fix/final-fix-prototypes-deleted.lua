local bob_air_pump_1 = "bob-air-pump"
local replace_prototypes =
{
    [bob_air_pump_1] = air_filter_1,
}
TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

local delete_prototypes =
{
    -- LOGISTICS
    "bob-brass-chest",
    "bob-passive-provider-chest-2",
    "bob-active-provider-chest-2",
    "bob-storage-chest-2",
    "bob-buffer-chest-2",
    "bob-requester-chest-2",
    "logistic-system-2",

    "bob-titanium-chest",
    "bob-passive-provider-chest-3",
    "bob-active-provider-chest-3",
    "bob-storage-chest-3",
    "bob-buffer-chest-3",
    "bob-requester-chest-3",
    "logistic-system-3",

    -- ADVANCED LOGISTICS
    "bob-armoured-locomotive",
    "bob-armoured-cargo-wagon",
    "bob-armoured-fluid-wagon",
    "bob-armoured-railway",

    "bob-armoured-locomotive-2",
    "bob-armoured-cargo-wagon-2",
    "bob-armoured-fluid-wagon-2",
    "bob-armoured-railway-2",

    "bob-logistic-zone-interface",

    -- PRODUCTION
    "bob-burner-reactor",
    "bob-burner-reactor-1",
    "bob-burner-reactor-2",
    "bob-fluid-reactor",
    "bob-fluid-reactor-2",
    "bob-fluid-reactor-from-fluid-furnace",

    "bob-oil-boiler",
    "bob-oil-boiler-1",
    "bob-oil-boiler-2",
    "bob-oil-boiler-3",
    "bob-oil-boiler-4",

    "bob-fast-accumulator",
    "bob-fast-accumulator-2",
    "bob-fast-accumulator-3",

    "bob-slow-accumulator",
    "bob-slow-accumulator-2",
    "bob-slow-accumulator-3",

    "bob-valve",
    "bob-overflow-valve",
    "bob-topup-valve",
    "bob-void-pump",

    bob_air_pump_1, "bob-air-compressor-1", "bob-nitrogen-processing", "bob-void-fluid",
    "bob-air-pump-2", "bob-air-compressor-2",
    "bob-air-pump-3", "bob-air-compressor-3",
    "bob-air-pump-4", "bob-air-compressor-4",

    "bob-water-pump", "bob-water-bore-1",
    "bob-water-pump-2", "bob-water-bore-2",
    "bob-water-pump-3", "bob-water-bore-3",
    "bob-water-pump-4", "bob-water-bore-4",

    "bob-fluid-furnace",
    "bob-fluid-chemical-furnace",
    "bob-fluid-mixing-furnace",

    "bob-water-miner-1",
    "bob-water-miner-2",
    "bob-water-miner-3",
    "bob-water-miner-4",

    "bob-electronics-machine-1",
    "bob-electronics-machine-2",
    "bob-electronics-machine-3",

    -- COMBAT
    "bob-distractor-artillery-shell", "bob-distractor-artillery-shells",
    "bob-explosive-artillery-shell", "bob-explosive-artillery-shells",
    "bob-fire-artillery-shell", "bob-fire-artillery-shells",
    "bob-poison-artillery-shell", "bob-poison-artillery-shells",

    "bob-robot-drone-frame",
    "bob-robot-drone-frame-large",
    "bob-robot-gun-drone",
    "bob-robot-laser-drone",
    "bob-robot-flamethrower-drone",
    "bob-robot-plasma-drone",

    "bob-uranium-bullet-projectile",
    "bob-uranium-bullet",
    "bob-scatter-cannon-shell",
    "bob-scatter-cannon-shells",
    "bob-reinforced-wall",
    "bob-reinforced-gate",
    "bob-distractor-mine",
    "bob-artifact-radar"
}
TIMSABA.functions.delete_prototypes(delete_prototypes)

data_roboport["bob-logistic-zone-interface"] = nil

data_gate["bob-reinforced-gate"] = nil

bobmods.lib.recipe.replace_ingredient("bob-player-frame-2", "bob-titanium-chest", "steel-chest")
bobmods.lib.recipe.update_recycling_recipe({"bob-player-frame-2"})

local train_types = {locomotive, wagon_cargo, wagon_fluid}
for _, t_type in ipairs(train_types) do
    if data.raw[t_type] then
        for _, entity in pairs(data.raw[t_type]) do
            if entity.additional_pastable_entities then
                for i = #entity.additional_pastable_entities, 1, -1 do
                    local target_name = entity.additional_pastable_entities[i]
                    local exists = false
                    for _, check_type in ipairs(train_types) do
                        if data.raw[check_type] and data.raw[check_type][target_name] then
                            exists = true
                            break
                        end
                    end
                    if not exists then
                        table.remove(entity.additional_pastable_entities, i)
                    end
                end
            end
        end
    end
end

-- ANGELS RESOURCE REFINING
data_technology["angels-thermal-water-processing"] = nil

-- ANGELS METALLURGY SMELTING and CASTING
data_recipe["angels-solid-iron-hydroxide-smelting"] = nil

data_recipe["angels-liquid-molten-iron-3"] = nil
data_recipe["angels-liquid-molten-iron-4"] = nil
data_recipe["angels-liquid-molten-iron-5"] = nil

data_technology["angels-iron-casting-4"] = nil

data_recipe["angels-liquid-molten-steel-3"] = nil
data_recipe["angels-liquid-molten-steel-4"] = nil
data_recipe["angels-liquid-molten-steel-5"] = nil

data_technology["angels-steel-smelting-4"] = nil

data_recipe["angels-liquid-molten-titanium-4"] = nil
data_recipe["angels-liquid-molten-titanium-5"] = nil

-- ANGELS WATER TREATMENT
data_recipe["angels-thermal-water-filtering-1"] = nil
data_recipe["angels-thermal-water-filtering-2"] = nil

-- ANGELS BIOPROCESSING
local delete_prototypes = {}

local prefixes =
{
    "angels%-water%-void",
    "angels%-chemical%-void",
    "angels%-bio%-void"
}
for recipe_name, _ in pairs(data_recipe) do
    for i = 1, #prefixes do
        if string.find(recipe_name, "^" .. prefixes[i]) then
            table.insert(delete_prototypes, recipe_name)
            break
        end
    end
end

local function replace_dormant_in_table(tbl)
    if not tbl then return end
    for i = 1, #tbl do
        local entry = tbl[i]
        if type(entry) == "string" then
            if string.find(entry, "dormant")
            and entry ~= "dormant-microcube"
            and entry ~= "inverted-dormant-microcube"
            then
                local new_name = string.gsub(entry, "%-?dormant%-?", "")
                tbl[i] = new_name
            end
        elseif type(entry) == "table" then
            if entry.name and string.find(entry.name, "dormant")
            and entry.name ~= "dormant-microcube"
            and entry.name ~= "inverted-dormant-microcube"
            then
                entry.name = string.gsub(entry.name, "%-?dormant%-?", "")
            elseif entry[1] and type(entry[1]) == "string" and string.find(entry[1], "dormant")
            and entry.name ~= "dormant-microcube"
            and entry.name ~= "inverted-dormant-microcube"
            then
                entry[1] = string.gsub(entry[1], "%-?dormant%-?", "")
            end
        end
    end
end

for recipe_name, recipe in pairs(data_recipe) do
    replace_dormant_in_table(recipe.ingredients)
    replace_dormant_in_table(recipe.results)

    if recipe.result and string.find(recipe.result, "dormant") then
        recipe.result = string.gsub(recipe.result, "%-?dormant%-?", "")
    end
end

for item_name, _ in pairs(data_item) do
    if string.find(item_name, "dormant")
    and item_name ~= "dormant-microcube"
    and item_name ~= "inverted-dormant-microcube"
    then
        table.insert(delete_prototypes, item_name)
    end
end

for recipe_name, _ in pairs(data_recipe) do
    if string.find(recipe_name, "dormant%-recycling") then
        table.insert(delete_prototypes, recipe_name)
    elseif mods[panglia_mods] and string.find(recipe_name, "dormant%-panglia_crushing") then
        table.insert(delete_prototypes, recipe_name)
    end
end

TIMSABA.functions.delete_prototypes(delete_prototypes)

-- MODS
if mods[clowns_nuclear] then
    local delete_prototypes =
    {
        "thermonuclear-bomb",
        "plutonium-atomic-bomb",
        "artillery-shell-nuclear",
        "artillery-shell-thermonuclear"
    }
    TIMSABA.functions.delete_prototypes(delete_prototypes)
end

-- GLOBAL
local sub = string.sub
local find = string.find
local remove = table.remove

local function prototype_exists(product)
    if not product then return false end

    local p_name = product.name
    local p_type = product.type

    if not p_name or type(p_name) ~= "string" then return false end

    if find(p_name, "par%-") then
        return true
    end

    if p_type == "fluid" then
        return data_fluid[p_name] ~= nil
    end

    return data_item[p_name] ~= nil
    or data_capsule[p_name] ~= nil
    or data_tool[p_name] ~= nil
    or data_ammo[p_name] ~= nil
    or data_armor[p_name] ~= nil
    or data_gun[p_name] ~= nil
    or data_module[p_name] ~= nil
    or data_spidertron_remote[p_name] ~= nil
    or data_repair_tool[p_name] ~= nil
    or data_rail_planner[p_name] ~= nil
    or data_item_entity[p_name] ~= nil
    or data_SP_starter_pack[p_name] ~= nil
end

for tech_name, technology in pairs(data_technology) do
    if technology.effects then
        for i = #technology.effects, 1, -1 do
            local effect = technology.effects[i]
            if effect.type == unlock_recipe then
                if not data_recipe[effect.recipe] then
                    table.remove(technology.effects, i)
                end
            elseif effect.type == change_recipe_productivity then
                if not data_recipe[effect.recipe] then
                    table.remove(technology.effects, i)
                end
            end
        end
    end
end

local to_delete = {}

for recipe_name, recipe in pairs(data_recipe) do

    local is_protected = sub(recipe_name, 1, 4) == "par-"
    or sub(recipe_name, -10) == "-preserved"
    or sub(recipe_name, -15) == "-depreservation"
    or (find(recipe_name, "par%-") and find(recipe_name, "request-"))

    if not is_protected then
        local should_delete = false

        if recipe.ingredients then
            for i = 1, #recipe.ingredients do
                if not prototype_exists(recipe.ingredients[i]) then
                    should_delete = true
                    break
                end
            end
        end

        if not should_delete and recipe.results then
            for i = 1, #recipe.results do
                if not prototype_exists(recipe.results[i]) then
                    should_delete = true
                    break
                end
            end
        end

        if should_delete then
            to_delete[recipe_name] = true
        end
    end
end

if next(to_delete) then
    for recipe_name in pairs(to_delete) do
        local recipe = data_recipe[recipe_name]
        if recipe then
            recipe.enabled = false
            recipe.hidden = true
        end
    end

    for tech_name, technology in pairs(data_technology) do
        if technology.effects then
            for i = #technology.effects, 1, -1 do
                local effect = technology.effects[i]
                if effect.type == unlock_recipe and to_delete[effect.recipe] then
                    remove(technology.effects, i)
                end
                if effect.type == change_recipe_productivity and to_delete[effect.recipe] then
                    remove(technology.effects, i)
                end
            end
        end
    end
end

for tech_name, technology in pairs(data_technology) do
    if technology.prerequisites then
        for i = #technology.prerequisites, 1, -1 do
            local prereq_name = technology.prerequisites[i]

            if not data_technology[prereq_name] then
                table.remove(technology.prerequisites, i)
            end
        end
    end
end