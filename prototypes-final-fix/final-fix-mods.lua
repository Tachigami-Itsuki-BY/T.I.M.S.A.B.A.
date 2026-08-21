-- COMBAT
if mods[bobwarfare] then
    data_recipe["bob-gun-cotton"].ingredients =
    {
        {type = item, name = cellulose_fiber_angels, amount = 4},
        {type = fluid, name = nitric_acid_angels, amount = 60},
        {type = fluid, name = sulfuric_acid_angels, amount = 60}
    }
end

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

if mods[panglia_mods] then
    for recipe_name, _ in pairs(data_recipe) do
        if string.find(recipe_name, "dormant%-panglia_crushing") then
            data_recipe[recipe_name] = nil
        end
    end
end

data_resource[ore_saphirite].icons = nil
data_resource[ore_saphirite].icon = data_item[ore_saphirite].icon
data_resource[ore_saphirite].icon_size = data_item[ore_saphirite].icon_size

data_item[lead_oxide_II].hidden = false
data_item[lead_oxide_II].hidden_in_factoriopedia = false
if mods[muria_mods] then
    data_item[lead_powder].hidden = false
    data_item[lead_powder].hidden_in_factoriopedia = false
end
data_item[silicon_powder].hidden = false
data_item[silicon_powder].hidden_in_factoriopedia = false
data_recipe[silicon_powder].hidden = false
data_recipe[silicon_powder].hidden_in_factoriopedia = false
data_item[aluminium_oxide].hidden = false
data_item[aluminium_oxide].hidden_in_factoriopedia = false
data_recipe[zinc_oxide].hidden = false
data_recipe[zinc_oxide].hidden_in_factoriopedia = false
data_item[silver_nitrate_I].hidden = false
data_item[silver_nitrate_I].hidden_in_factoriopedia = false
data_item[cobalt_oxide_II_III].hidden = false
data_item[cobalt_oxide_II_III].hidden_in_factoriopedia = false
data_item[tungsten_powder].hidden = false
data_item[tungsten_powder].hidden_in_factoriopedia = false
data_item[tungsten_oxide_VI].hidden = false
data_item[tungsten_oxide_VI].hidden_in_factoriopedia = false
data_item[platinum_powder].hidden = false
data_item[platinum_powder].hidden_in_factoriopedia = false

data_item[steel_rod].hidden = false
data_item[steel_rod].hidden_in_factoriopedia = false
data_recipe[steel_rod].hidden = false
data_recipe[steel_rod].hidden_in_factoriopedia = false
data_recipe[lead_plate_bob].hidden = false
data_recipe[lead_plate_bob].hidden_in_factoriopedia = false
data_recipe[tin_plate_bob].hidden = false
data_recipe[tin_plate_bob].hidden_in_factoriopedia = false
data_item[tin_cable].hidden = false
data_item[tin_cable].hidden_in_factoriopedia = false
data_recipe[tin_cable].hidden = false
data_recipe[tin_cable].hidden_in_factoriopedia = false
data_fluid[manganese_molten_angels].hidden = false
data_fluid[manganese_molten_angels].hidden_in_factoriopedia = false
data_item[gold_cable].hidden = false
data_item[gold_cable].hidden_in_factoriopedia = false
data_recipe[gold_cable].hidden = false
data_recipe[gold_cable].hidden_in_factoriopedia = false
data_fluid[cobalt_molten_angels].hidden = false
data_fluid[cobalt_molten_angels].hidden_in_factoriopedia = false
data_recipe[glass_bob].hidden = false
data_recipe[glass_bob].hidden_in_factoriopedia = false
data_recipe[solder_molten_angels].hidden = false
data_recipe[solder_molten_angels].hidden_in_factoriopedia = false

data_item[nuclear_fuel].fuel_category = transport_fuel

-- BOBS FIX
if mods[bobwarfare] then
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
end

data_recipe[lithium_perchlorate_bob].category = angels_liquifying

-- NUCLEAR FIX
if not mods[shattered_mods] then
    data_recipe["angels-plutonium-239-recycling"] = nil
    data_recipe["angels-thorium-232-recycling"] = nil
end

-- SPACE AGE
data_armor[mech_armor].resistances =
{
    {type = "physical", decrease = 20, percent = 50 },
    {type = "acid", decrease = 16, percent = 85},
    {type = "explosion", decrease = 80, percent = 50},
    {type = "impact", decrease = 20, percent = 50},
    {type = "poison", decrease = 10, percent = 70},
    {type = "fire", decrease = 15, percent = 90},
    {type = "laser", decrease = 20, percent = 50},
    {type = "electric", decrease = 15, percent = 50}
}

if mods[bobwarfare] then
    table.insert(data_armor[mech_armor].resistances, {type = "bob-pierce", percent = 45})
    table.insert(data_armor[mech_armor].resistances, {type = "bob-plasma", percent = 100})
end

tech_rocket_part_productivity = "rocket-part-productivity"
data_technology[tech_rocket_part_productivity].effects = {{type = change_recipe_productivity, recipe = rocket_part, change = 0.1}}
table.insert(data_technology[tech_rocket_part_productivity].unit.ingredients, {utility_science_pack, 1})

data_recipe[casting_low_density_structure].ingredients =
{
    {type = item, name = plastic, amount = 4},
    {type = fluid, name = aluminium_molten_angels, amount = 240},
    {type = fluid, name = titanium_molten_angels, amount = 30}
}

-- MULUNA
if mods[muluna_mods] then
    -- ROCKET PART
    table.insert(data_technology[tech_rocket_part_productivity].effects, {type = change_recipe_productivity, recipe = rocket_part_muluna, change = 0.1})

    local tech_rocket_part_productivity_2 = "rocket-part-productivity-2"
    table.insert(data_technology[tech_rocket_part_productivity_2].unit.ingredients, {utility_science_pack, 1})
    data_technology[tech_rocket_part_productivity_2].effects =
    {
        {type = change_recipe_productivity, recipe = rocket_part, change = 0.1},
        {type = change_recipe_productivity, recipe = rocket_part_muluna, change = 0.1}
    }

    local tech_rocket_part_productivity_3 = "rocket-part-productivity-3"
    table.insert(data_technology[tech_rocket_part_productivity_3].unit.ingredients, {utility_science_pack, 1})
    data_technology[tech_rocket_part_productivity_3].effects =
    {
        {type = change_recipe_productivity, recipe = rocket_part, change = 0.1},
        {type = change_recipe_productivity, recipe = rocket_part_muluna, change = 0.1}
    }

    local tech_rocket_part_productivity_4 = "rocket-part-productivity-4"
    table.insert(data_technology[tech_rocket_part_productivity_4].unit.ingredients, {utility_science_pack, 1})
    data_technology[tech_rocket_part_productivity_4].effects =
    {
        {type = change_recipe_productivity, recipe = rocket_part, change = 0.1},
        {type = change_recipe_productivity, recipe = rocket_part_muluna, change = 0.1}
    }

    tech_rocket_part_productivity_vulcanus = "rocket-part-productivity-vulcanus"
    data_technology[tech_rocket_part_productivity_vulcanus].effects =
    {
        {type = change_recipe_productivity, recipe = rocket_part, change = 0.1},
        {type = change_recipe_productivity, recipe = rocket_part_muluna, change = 0.1}
    }
    table.insert(data_technology[tech_rocket_part_productivity_vulcanus].unit.ingredients, {utility_science_pack, 1})

    local tech_rocket_part_productivity_vulcanus_2 = "rocket-part-productivity-vulcanus-2"
    table.insert(data_technology[tech_rocket_part_productivity_vulcanus_2].unit.ingredients, {utility_science_pack, 1})
    data_technology[tech_rocket_part_productivity_vulcanus].effects =
    {
        {type = change_recipe_productivity, recipe = rocket_part, change = 0.1},
        {type = change_recipe_productivity, recipe = rocket_part_muluna, change = 0.1}
    }

    tech_rocket_part_productivity_gleba = "rocket-part-productivity-gleba"
    data_technology[tech_rocket_part_productivity_gleba].effects =
    {
        {type = change_recipe_productivity, recipe = rocket_part, change = 0.1},
        {type = change_recipe_productivity, recipe = rocket_part_muluna, change = 0.1}
    }
    table.insert(data_technology[tech_rocket_part_productivity_gleba].unit.ingredients, {utility_science_pack, 1})

    local tech_rocket_part_productivity_gleba_2 = "rocket-part-productivity-gleba-2"
    data_technology[tech_rocket_part_productivity_gleba_2].effects =
    {
        {type = change_recipe_productivity, recipe = rocket_part, change = 0.1},
        {type = change_recipe_productivity, recipe = rocket_part_muluna, change = 0.1}
    }
    table.insert(data_technology[tech_rocket_part_productivity_gleba_2].unit.ingredients, {utility_science_pack, 1})

    tech_rocket_part_productivity_fulgora = "rocket-part-productivity-fulgora"
    data_technology[tech_rocket_part_productivity_fulgora].effects =
    {
        {type = change_recipe_productivity, recipe = rocket_part, change = 0.1},
        {type = change_recipe_productivity, recipe = rocket_part_muluna, change = 0.1}
    }
    table.insert(data_technology[tech_rocket_part_productivity_fulgora].unit.ingredients, {utility_science_pack, 1})

    local tech_rocket_part_productivity_fulgora_2 = "rocket-part-productivity-fulgora-2"
    data_technology[tech_rocket_part_productivity_gleba_2].effects =
    {
        {type = change_recipe_productivity, recipe = rocket_part, change = 0.1},
        {type = change_recipe_productivity, recipe = rocket_part_muluna, change = 0.1}
    }
    table.insert(data_technology[tech_rocket_part_productivity_fulgora_2].unit.ingredients, {utility_science_pack, 1})

    tech_rocket_part_productivity_aquilo = "rocket-part-productivity-aquilo"
    data_technology[tech_rocket_part_productivity_aquilo].effects =
    {
        {type = change_recipe_productivity, recipe = rocket_part, change = 0.1},
        {type = change_recipe_productivity, recipe = rocket_part_muluna, change = 0.1}
    }
    table.insert(data_technology[tech_rocket_part_productivity_aquilo].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[tech_rocket_part_productivity_aquilo].unit.ingredients, {metallurgic_science_pack, 1})
    table.insert(data_technology[tech_rocket_part_productivity_aquilo].unit.ingredients, {agricultural_science_pack, 1})
    table.insert(data_technology[tech_rocket_part_productivity_aquilo].unit.ingredients, {electromagnetic_science_pack, 1})

    if mods[arig_mods] then
        table.insert(data_technology[tech_rocket_part_productivity].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_2].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_3].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_4].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_vulcanus].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_vulcanus_2].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_gleba].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_gleba_2].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_fulgora].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_fulgora_2].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_aquilo].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
    end

    if mods[hyarion_mods] then
        table.insert(data_technology[tech_rocket_part_productivity].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_2].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_3].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_4].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_vulcanus].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_vulcanus_2].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_gleba].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_gleba_2].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_fulgora].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_fulgora_2].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_aquilo].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
    end

    if mods[tellus_mods] then
        table.insert(data_technology[tech_rocket_part_productivity].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_2].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_3].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_4].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_vulcanus].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_vulcanus_2].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_gleba].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_gleba_2].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_fulgora].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_fulgora_2].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_aquilo].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
    end

    if mods[maraxsis_mods] then
        table.insert(data_technology[tech_rocket_part_productivity].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_2].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_3].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_4].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_vulcanus].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_vulcanus_2].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_gleba].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_gleba_2].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_fulgora].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_fulgora_2].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_aquilo].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
    end

    if mods[muria_mods] then
        table.insert(data_technology[tech_rocket_part_productivity].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_2].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_3].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_4].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_vulcanus].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_vulcanus_2].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_gleba].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_gleba_2].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_fulgora].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_fulgora_2].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
        table.insert(data_technology[tech_rocket_part_productivity_aquilo].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
    end

    data_recipe[casting_low_density_structure_muluna].ingredients =
    {
        {type = item, name = plastic, amount = 4},
        {type = fluid, name = aluminium_molten_angels, amount = 240},
        {type = fluid, name = titanium_molten_angels, amount = 30}
    }
end

if not mods[muluna_mods] and mods[arig_mods] then
    table.insert(data_technology[tech_rocket_part_productivity].effects, {type = change_recipe_productivity, recipe = rocket_part_arig, change = 0.1})
end

if not mods[muluna_mods] and mods[hyarion_mods] then
    table.insert(data_technology[tech_rocket_part_productivity].effects, {type = change_recipe_productivity, recipe = rocket_part_hyarion, change = 0.1})
end

if not mods[muluna_mods] and mods[tellus_mods] then
    table.insert(data_technology[tech_rocket_part_productivity].effects, {type = change_recipe_productivity, recipe = rocket_part_tellus, change = 0.1})
end

if not mods[muluna_mods] and mods[maraxsis_mods] then
    table.insert(data_technology[tech_rocket_part_productivity].effects, {type = change_recipe_productivity, recipe = rocket_part_maraxsis, change = 0.1})
end

if not mods[muluna_mods] and mods[muria_mods] then
    table.insert(data_technology[tech_rocket_part_productivity].effects, {type = change_recipe_productivity, recipe = rocket_part_muria, change = 0.1})
end

if mods[muluna_mods] then
    local muluna_mining_machine =
    {
        {name = electric_mining_drill_1, order = a, tier = 1, energy_usage = 120},
        {name = electric_mining_drill_2, order = b, tier = 2, energy_usage = 240},
        {name = electric_mining_drill_3, order = c, tier = 3, energy_usage = 360},
        {name = electric_mining_drill_4, order = d, tier = 4, energy_usage = 480},
        {name = electric_mining_drill_5, order = e, tier = 5, energy_usage = 600},
        {name = electric_mining_drill_6, order = f, tier = 6, energy_usage = 720}
    }
    for _, BUILD in pairs(muluna_mining_machine) do
        data_assembling[BUILD.name .. _ground_digger].subgroup = is_extraction_machine_muluna
        data_assembling[BUILD.name .. _ground_digger].icons = R_P_IS(BUILD.name, lunar_regolith)
        data_assembling[BUILD.name .. _ground_digger].order = BUILD.order
        data_assembling[BUILD.name .. _ground_digger].energy_usage = (BUILD.energy_usage - (BUILD.tier * drain)) .. kW
        data_assembling[BUILD.name .. _ground_digger].energy_source.drain = (BUILD.tier * drain) .. kW
    end

    data_assembling[big_mining_drill .. _ground_digger].icons = R_P_I(big_mining_drill, lunar_regolith)
    data_assembling[big_mining_drill .. _ground_digger].energy_usage = (2400 - 480) .. kW
    data_assembling[big_mining_drill .. _ground_digger].energy_source.drain = 480 .. kW

    if data_item[area_mining_drill_1] then
        local muluna_large_area_mining_machine =
        {
            {name = area_mining_drill_1, order = g, tier = 1, energy_usage = 240},
            {name = area_mining_drill_2, order = h, tier = 2, energy_usage = 480},
            {name = area_mining_drill_3, order = i, tier = 3, energy_usage = 720},
            {name = area_mining_drill_4, order = j, tier = 4, energy_usage = 960}
        }
        for _, BUILD in pairs(muluna_large_area_mining_machine) do
            data_assembling[BUILD.name .. _ground_digger].subgroup = is_extraction_machine_muluna
            data_assembling[BUILD.name .. _ground_digger].icons = R_P_IS(BUILD.name, lunar_regolith)
            data_assembling[BUILD.name .. _ground_digger].order = BUILD.order
            data_assembling[BUILD.name .. _ground_digger].energy_usage = (BUILD.energy_usage - (BUILD.tier * (drain * 2))) .. kW
            data_assembling[BUILD.name .. _ground_digger].energy_source.drain = (BUILD.tier * (drain * 2)) .. kW
            data_assembling[BUILD.name .. _ground_digger].fixed_recipe = lunar_regolith
        end
    end

    if mods[hyarion_mods] then
        data_assembling[geode_mining_drill .. _ground_digger].icons = R_P_I(geode_mining_drill, lunar_regolith)
        data_assembling[geode_mining_drill .. _ground_digger].energy_usage = (240 - drain) .. kW
        data_assembling[geode_mining_drill .. _ground_digger].energy_source.drain = drain .. kW
        data_assembling[geode_mining_drill .. _ground_digger].fixed_recipe = lunar_regolith
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

-- MOSHINE
if mods[moshine_mods] then
    data_recipe[boron].category = smelting_filtering
end

-- ARIG
if mods[arig_mods] then
    if mods[loaders_modernized_integrations] then
        data_item[stack_loader].subgroup = is_gleba_logistics
        data_item[stack_loader].order = b
        data_recipe[stack_loader].subgroup = is_gleba_logistics
        data_recipe[stack_loader].order = b
        data_loader_1x1[stack_loader].subgroup = is_gleba_logistics
        data_loader_1x1[stack_loader].order = b

        data_item[hyper_loader_arig].stack_size = 32
        data_item[hyper_loader_arig].weight = 31250
        data_recipe[hyper_loader_arig].ingredients =
        {
            {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 8},
            {type = item, name = niobium_iron_bearing, amount = 8},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = niobium_titanium_plate, amount = 8},
            {type = item, name = vulcanus_loader, amount = 2},
            {type = item, name = hyper_underground_belt_arig, amount = 2}
        }
        data_recipe[hyper_loader_arig].results[1].amount = 2
        if settings.startup[setting_mdrn_use_electricity].value then
            data_loader_1x1[hyper_loader_arig].energy_per_item = ((60 * 16) - (7.5 * 16)) .. kW
            data_loader_1x1[hyper_loader_arig].energy_source.drain = (15 * 16) .. kW
        end
        data_loader_1x1[hyper_loader_arig].next_upgrade = stack_loader

        bobmods.lib.recipe.update_recycling_recipe({hyper_loader_arig})
    end

    if mods[hyarion_mods] then
        if mods[loaders_modernized_integrations] then
            data_item[hyper_loader_arig].subgroup = is_hyarion_logistics
            data_item[hyper_loader_arig].order = e
            data_recipe[hyper_loader_arig].subgroup = is_hyarion_logistics
            data_recipe[hyper_loader_arig].order = e
            data_recipe[hyper_loader_arig].ingredients[3].name = simulating_unit
            data_loader_1x1[hyper_loader_arig].subgroup = is_hyarion_logistics
            data_loader_1x1[hyper_loader_arig].order = e
        end
    else
        if mods[loaders_modernized_integrations] then
            data_item[hyper_loader_arig].subgroup = is_arig_logistics
            data_item[hyper_loader_arig].order = k
            data_recipe[hyper_loader_arig].subgroup = is_arig_logistics
            data_recipe[hyper_loader_arig].order = k
            data_loader_1x1[hyper_loader_arig].subgroup = is_arig_logistics
            data_loader_1x1[hyper_loader_arig].order = k
        end
    end
end

-- HYARION
if mods[hyarion_mods] then
    data_item[raw_quartz_arig].subgroup = is_arig_recipe
    data_recipe[raw_quartz_arig].subgroup = is_arig_recipe
    data_recipe[raw_quartz_arig].icons = TWO_I(sandstone_brick, raw_quartz_arig, number_1)

    -- RECIPE
    remelting_of_metal_ore_1 = "planetaris-iron-metallic-sifting"
    data_recipe[remelting_of_metal_ore_1].localised_name = {"recipe-name.remelting-of-metal-ore", {"item-name." .. iron_ore}}
    data_recipe[remelting_of_metal_ore_1].category = metallurgy
    data_recipe[remelting_of_metal_ore_1].subgroup = is_hyarion_recipe_ore
    data_recipe[remelting_of_metal_ore_1].icons = THREE_I(metallic_ore, lava, iron_ore)
    data_recipe[remelting_of_metal_ore_1].order = a_a
    data_recipe[remelting_of_metal_ore_1].energy_required = 8
    data_recipe[remelting_of_metal_ore_1].ingredients =
    {
        {type = item, name = metallic_ore, amount = 4},
        {type = fluid, name = lava, amount = 60}
    }
    data_recipe[remelting_of_metal_ore_1].results[1].amount = 8

    remelting_of_metal_ore_2 = "planetaris-copper-metallic-sifting"
    data_recipe[remelting_of_metal_ore_2].localised_name = {"recipe-name.remelting-of-metal-ore", {"item-name." .. copper_ore}}
    data_recipe[remelting_of_metal_ore_2].category = metallurgy
    data_recipe[remelting_of_metal_ore_2].subgroup = is_hyarion_recipe_ore
    data_recipe[remelting_of_metal_ore_2].icons = THREE_I(metallic_ore, lava, copper_ore)
    data_recipe[remelting_of_metal_ore_2].order = a_b
    data_recipe[remelting_of_metal_ore_2].energy_required = 8
    data_recipe[remelting_of_metal_ore_2].ingredients =
    {
        {type = item, name = metallic_ore, amount = 4},
        {type = fluid, name = lava, amount = 60}
    }
    data_recipe[remelting_of_metal_ore_2].results[1].amount = 8

    data_recipe[carbon_nanotube_hyarion].localised_name = {"item-name.carbon-nanotube"}

    -- BUILDING
    local lamp_post = "lamp-post"
    data_item[lamp_post].subgroup = is_hyarion_building
    data_item[lamp_post].order = i
    data_item[lamp_post].stack_size = 32
    data_item[lamp_post].weight = 31250
    data_recipe[lamp_post].subgroup = is_hyarion_building
    data_recipe[lamp_post].order = i
    data_recipe[lamp_post].energy_required = 16
    data_recipe[lamp_post].ingredients =
    {
        {type = item, name = small_lamp, amount = 1},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 1},
        {type = item, name = charged_alexandrite_hyarion, amount = 1}
    }
    data_lamp[lamp_post].subgroup = is_hyarion_building
    data_lamp[lamp_post].order = h
    data_lamp[lamp_post].energy_usage_per_tick = (drain / 4) .. kW

    bobmods.lib.recipe.update_recycling_recipe({lamp_post})

    -- SPACE
    data_recipe[rocket_part_hyarion].icons = R_P_I(rocket_part, planet_hyarion)
    data_recipe[rocket_part_hyarion].order = b_h
    data_recipe[rocket_part_hyarion].energy_required = 4
    data_recipe[rocket_part_hyarion].ingredients =
    {
        {type = item, name = low_density_structure, amount = 4},
        {type = item, name = beryllium_plate, amount = 16},
        {type = item, name = simulating_unit, amount = 4},
        {type = item, name = carbon_nanotube, amount = 16},
        {type = item, name = rocket_fuel, amount = 8}
    }

    -- TECHNOLOGY
    table.insert(data_technology[hyper_transport_belt_arig].prerequisites, simulating_unit)
    table.insert(data_technology[hyper_transport_belt_arig].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[hyper_transport_belt_arig].unit.ingredients, {electromagnetic_science_pack, 1})
    if mods[bobtech] then
        table.insert(data_technology[hyper_transport_belt_arig].unit.ingredients, {transport_science_pack, 1})
    end

    table.insert(data_technology[stack_inserter].unit.ingredients, {electromagnetic_science_pack, 1})

    table.insert(data_technology[tech_transport_belt_capacity_1].unit.ingredients, {electromagnetic_science_pack, 1})

    table.insert(data_technology[tech_transport_belt_capacity_2].unit.ingredients, {electromagnetic_science_pack, 1})

    data_technology["planetaris-metallic-ore-processing"].effects =
    {
        {type = unlock_recipe, recipe = refraction_ray_collector},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_1},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_2},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_3},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_4},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_5},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_6},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_7},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_8},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_9},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_10},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_11},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_12},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_13},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_14},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_15},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_16},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_17},
        {type = unlock_recipe, recipe = remelting_of_metal_ore_18}
    }
end

-- PARACELSIN
if mods[paracelsin_mods] then
    local tech_concrete_productivity = "concrete-productivity"
    data_technology[tech_concrete_productivity].effects =
    {
        {type = change_recipe_productivity, recipe = concrete, change = 0.1},
        {type = change_recipe_productivity, recipe = concrete_2, change = 0.1},
        {type = change_recipe_productivity, recipe = reinforced_concrete, change = 0.1},
        {type = change_recipe_productivity, recipe = reinforced_concrete_2, change = 0.1}
    }
    data_technology[tech_concrete_productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {galvanization_science_pack, 1},
        {interstellar_science_pack, 1}
    }
    data_technology[tech_concrete_productivity].PlanetsLib_recipe_productivity_effects.effects =
    {
        {type = item, name = concrete, change = 0.1},
        {type = item, name = reinforced_concrete, change = 0.1}
    }

    data_technology[processing_unit .. _productivity].effects =
    {
        {type = change_recipe_productivity, recipe = processing_unit, change = 0.1},
        {type = change_recipe_productivity, recipe = processing_unit_from_panglite_fiber, change = 0.1}
    }
end

-- CASTRA
if mods[castra_mods] then
    table.insert(data_technology[processing_unit .. _productivity].effects, {type = change_recipe_productivity, recipe = processing_unit_battlefield_data, change = 0.1})
end

-- MARAXSIS
if mods[maraxsis_mods] then
    local maraxsis_mining_machine = {{name = electric_mining_drill_1, order = a, tier = 1, energy_usage = 120}}
    for _, BUILD in pairs(maraxsis_mining_machine) do
        data_assembling[BUILD.name .. _sand_extractor].subgroup = is_extraction_machine_maraxsis
        data_assembling[BUILD.name .. _sand_extractor].icons = R_P_IS(BUILD.name, sand_angels)
        data_assembling[BUILD.name .. _sand_extractor].order = BUILD.order
        data_assembling[BUILD.name .. _sand_extractor].energy_usage = (BUILD.energy_usage - (BUILD.tier * drain)) .. kW
        data_assembling[BUILD.name .. _sand_extractor].energy_source.drain = (BUILD.tier * drain) .. kW
    end

    data_assembling[big_mining_drill .. _sand_extractor].icons = R_P_I(big_mining_drill, sand_angels)
    data_assembling[big_mining_drill .. _sand_extractor].crafting_speed = 8
    data_assembling[big_mining_drill .. _sand_extractor].energy_usage = (2400 - 480) .. kW
    data_assembling[big_mining_drill .. _sand_extractor].energy_source.drain = 480 .. kW

    -- ПРОВЕРИТЬ РЕЦЕПТЫ
    if not mods.pystellarexpedition then
        local electricity_description = {""}

        for _, quality in pairs(data.raw.quality) do
            if quality.hidden then goto continue end
            local quality_name = quality.localised_name or {"quality-name." .. quality.name}

            local quality_level = quality.level
            local fluid_amount = 16 * quality_level * quality_level + 16

            table.insert(electricity_description, {"recipe-description.maraxsis-molten-salt-quality-description", quality.name, quality_name, tostring(fluid_amount)})
            table.insert(electricity_description, "\n")
            ::continue::
        end
        electricity_description[#electricity_description] = nil

        electricity_description = maraxsis.shorten_localised_string(electricity_description)

        data_recipe[molten_salt_mods].localised_description = {"recipe-description.molten-salt", electricity_description}
    end
end

-- MODS
if mods["RPGsystem"] then
    data_capsule["rpg_amnesia_potion"].subgroup = nil
    data_capsule["rpg_big_healing_potion"].subgroup = nil
    data_capsule["rpg_big_xp_potion"].subgroup = nil
    data_capsule["rpg_crafting_potion"].subgroup = nil
    data_capsule["rpg_level_up_potion"].subgroup = nil
    data_capsule["rpg_small_healing_potion"].subgroup = nil
    data_capsule["rpg_small_xp_potion"].subgroup = nil
    data_capsule["rpg_speed_potion"].subgroup = nil
end

if mods[bobtech] and mods[space_age_science_packs] then
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
    if data_technology[tech_alien_research] then
        data_technology[tech_alien_research].icon = "__TIMSABA__/graphics/icons/bobs/technology/sasp-gold-science-pack-technology.png"
        data_technology[tech_alien_research].icon_size = 256
        data_technology[tech_alien_research].icons = nil
    end
end

local tech_stack_loader = "mdrn-stack-loader"
if mods[loaders_modernized_integrations] and data_technology[tech_stack_loader] then
    data_technology[tech_stack_loader].prerequisites = {stack_inserter, T5_loader}
end