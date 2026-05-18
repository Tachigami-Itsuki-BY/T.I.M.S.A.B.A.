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

data_item[lead_oxide_II].hidden = false
data_item[lead_oxide_II].hidden_in_factoriopedia = false
data_item[silicon_powder].hidden = false
data_item[silicon_powder].hidden_in_factoriopedia = false
data_recipe[silicon_powder].hidden = false
data_recipe[silicon_powder].hidden_in_factoriopedia = false
data_item[aluminium_oxide].hidden = false
data_item[aluminium_oxide].hidden_in_factoriopedia = false
data_item[silver_nitrate_I].hidden = false
data_item[silver_nitrate_I].hidden_in_factoriopedia = false
data_item[cobalt_oxide_II_III].hidden = false
data_item[cobalt_oxide_II_III].hidden_in_factoriopedia = false
data_item[tungsten_powder].hidden = false
data_item[tungsten_powder].hidden_in_factoriopedia = false
data_item[tungsten_oxide_VI].hidden = false
data_item[tungsten_oxide_VI].hidden_in_factoriopedia = false

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
        {name = "electric-mining-drill-ground-digger",   order = a, tier = 1, energy_usage = 120},
        {name = "bob-mining-drill-1-ground-digger",      order = b, tier = 2, energy_usage = 240},
        {name = "bob-mining-drill-2-ground-digger",      order = c, tier = 3, energy_usage = 360},
        {name = "bob-mining-drill-3-ground-digger",      order = d, tier = 4, energy_usage = 480},
        {name = "bob-mining-drill-4-ground-digger",      order = e, tier = 5, energy_usage = 600},
        {name = "electric-mining-drill-6-ground-digger", order = f, tier = 6, energy_usage = 720}
    }
    for _, BUILD in pairs(muluna_mining_machine) do
        data_assembling[BUILD.name].subgroup = is_extraction_machine_muluna
        data_assembling[BUILD.name].order = BUILD.order
        data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.tier * drain)) .. kW
        data_assembling[BUILD.name].energy_source.drain = (BUILD.tier * drain) .. kW
        data_assembling[BUILD.name].fixed_recipe = lunar_regolith
    end
    local big_mining_drill_gd = "big-mining-drill-ground-digger"
    data_assembling[big_mining_drill_gd].energy_usage = (2400 - 480) .. kW
    data_assembling[big_mining_drill_gd].energy_source.drain = 480 .. kW
    data_assembling[big_mining_drill_gd].fixed_recipe = lunar_regolith
    if data_item[area_mining_drill_1] then
        local muluna_large_area_mining_machine =
        {
            {name = "bob-area-mining-drill-1-ground-digger", order = g, tier = 1, energy_usage = 240},
            {name = "bob-area-mining-drill-2-ground-digger", order = h, tier = 2, energy_usage = 480},
            {name = "bob-area-mining-drill-3-ground-digger", order = i, tier = 3, energy_usage = 720},
            {name = "bob-area-mining-drill-4-ground-digger", order = j, tier = 4, energy_usage = 960}
        }
        for _, BUILD in pairs(muluna_large_area_mining_machine) do
            data_assembling[BUILD.name].subgroup = is_extraction_machine_muluna
            data_assembling[BUILD.name].order = BUILD.order
            data_assembling[BUILD.name].energy_usage = (BUILD.energy_usage - (BUILD.tier * (drain * 2))) .. kW
            data_assembling[BUILD.name].energy_source.drain = (BUILD.tier * (drain * 2)) .. kW
            data_assembling[BUILD.name].fixed_recipe = lunar_regolith
        end
    end

    data_assembling[vacuum_heating_tower].subgroup = is_muluna_heating
    data_assembling[vacuum_heating_tower].icons = nil
    data_assembling[vacuum_heating_tower].icon = "__TIMSABA__/graphics/icons/muluna/muluna-vacuum-heating-tower.png"
    data_assembling[vacuum_heating_tower].order = z
    data_assembling[vacuum_heating_tower].crafting_speed = 64
    data_assembling[vacuum_heating_tower].energy_usage = 14400 .. kW
    data_assembling[vacuum_heating_tower].energy_source.fuel_categories = {base_fuel, advanced_fuel}
    data_assembling[vacuum_heating_tower].energy_source.effectivity = 4
    data_assembling[vacuum_heating_tower].fixed_recipe = heat

    local vacuum_heating_tower_reactor = "heat-assembling-machine-muluna-vacuum-heating-tower-reactor"
    data_reactor[vacuum_heating_tower_reactor].subgroup = is_muluna_heating
    data_reactor[vacuum_heating_tower_reactor].icons = nil
    data_reactor[vacuum_heating_tower_reactor].icon = "__TIMSABA__/graphics/icons/muluna/muluna-vacuum-heating-tower.png"
    data_reactor[vacuum_heating_tower_reactor].order = z
    data_reactor[vacuum_heating_tower_reactor].consumption = 86400 .. kW
    data_reactor[vacuum_heating_tower_reactor].heat_buffer.max_temperature = 2000
    data_reactor[vacuum_heating_tower_reactor].heat_buffer.specific_heat = 10800 .. kJ
    data_reactor[vacuum_heating_tower_reactor].heat_buffer.max_transfer = 10800000 .. kW
    data_reactor[vacuum_heating_tower_reactor].heat_buffer.minimum_glow_temperature = 250
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

if mods [bobtech] and mods [space_age_science_packs] then
    local list_base_or_space = {}
    if settings.startup[setting_science_pack_nostalgia].value then
        list_base_or_space =
        {
            "metallurgic-science-pack",
            "electromagnetic-science-pack",
            "cryogenic-science-pack",
            "promethium-science-pack",
            "agricultural-science-pack"
        }
    else
        list_base_or_space =
        {
            "military-science-pack",
            "automation-science-pack",
            "chemical-science-pack",
            "space-science-pack",
            "logistic-science-pack",
            "utility-science-pack",
            "production-science-pack"
        }
    end

    for _, pack in pairs(list_base_or_space) do
        data_technology[pack].icon = "__sa-science-packs__/graphics/techs/sasp-" .. pack .. ".png"
        data_technology[pack].icon_size = 256
        data_technology[pack].icons = nil
    end

    local tech_transport_science_pack = "bob-advanced-logistic-science-pack"
    data_technology[tech_transport_science_pack].icon = "__TIMSABA__/graphics/icons/bobs/technology/sasp-transport-science-pack-technology.png"
    data_technology[tech_transport_science_pack].icon_size = 256
    data_technology[tech_transport_science_pack].icons = nil
    local tech_alien_research = "bob-alien-research"
    data_technology[tech_alien_research].icon = "__TIMSABA__/graphics/icons/bobs/technology/sasp-gold-science-pack-technology.png"
    data_technology[tech_alien_research].icon_size = 256
    data_technology[tech_alien_research].icons = nil
end

-- MULUNA
if mods[muluna_mods] then
    local memo = {}
    local function leads_to_root(tech_name)
        if tech_name == interstellar_science_pack then return true end
        if memo[tech_name] ~= nil then return memo[tech_name] end
        local tech = data.raw.technology[tech_name]
        if not tech or not tech.prerequisites then
            memo[tech_name] = false
            return false
        end
        for _, prereq in ipairs(tech.prerequisites) do
            if leads_to_root(prereq) then
                memo[tech_name] = true
                return true
            end
        end
        memo[tech_name] = false
        return false
    end

    for tech_name, tech in pairs(data.raw.technology) do
        if tech_name ~= interstellar_science_pack and leads_to_root(tech_name) then
            if tech.unit and tech.unit.ingredients and #tech.unit.ingredients > 0 then
                local has_pack = false
                for _, ingredient in ipairs(tech.unit.ingredients) do
                    if type(ingredient) == "table" then
                        if ingredient[1] == interstellar_science_pack then
                            has_pack = true
                            break
                        end
                        if ingredient.name == interstellar_science_pack then
                            has_pack = true
                            break
                        end
                    elseif ingredient == interstellar_science_pack then
                        has_pack = true
                        break
                    end
                end
                if not has_pack then
                    table.insert(tech.unit.ingredients, {interstellar_science_pack, 1})
                end
            end
        end
    end
end