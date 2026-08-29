-- BASE
data_fish["fish"].minable.count = 4 -- = {mining_time = 0.4, result = factorian_fish, count = 4}

for tree_name, tree_data in pairs(data.raw.tree) do
    if string.find(tree_name, "tree") and not string.find(tree_name, "angels") and not string.find(tree_name, "ashland%-lichen") and tree_data.minable then
        local minable = tree_data.minable
        local already_has_seed = false
        if minable.results then
            for _, drop in ipairs(minable.results) do
                if drop.name == "tree-seed" then
                    already_has_seed = true
                    break
                end
            end
        elseif minable.result then
            local wood_name = minable.result or wood
            local wood_count = minable.count or 4
            minable.results = {{type = item, name = wood_name, amount = wood_count}}
            minable.result = nil
            minable.count = nil
        end
        if not already_has_seed then
            if not minable.results then
                minable.results = {}
            end
            table.insert(minable.results,
            {
                type = item,
                name = tree_seed,
                amount = 1,
                probability = 0.5
            })
        end
    end
end

local yumako_tree = "yumako-tree"
data_plant[yumako_tree].minable.results[1].amount = 64

local jellystem = "jellystem"
data_plant["jellystem"].minable.results[1].amount = 64

data_tree["slipstack"].minable.results[1].amount = 8

data_tree["funneltrunk"].minable.results[2].amount = 8

local hairyclubnub = "hairyclubnub"
data_tree[hairyclubnub].minable.results[1].amount = 4
data_tree[hairyclubnub].minable.results[2].amount = 4

local teflilly = "teflilly"
data_tree[teflilly].minable.results[1].amount = 4
data_tree[teflilly].minable.results[2].amount = 4

data_tree["lickmaw"].minable.results[1].amount = 8

data_tree["boompuff"].minable.results[1].amount = 8

data_tree["sunnycomb"].minable.results[1].amount = 8

local big_sand_rock = "big-sand-rock"
data_entity[big_sand_rock].minable.results =
{
    {type = item, name = stone, amount_min = 8, amount_max = 16},
    {type = item, name = sand_angels, amount_min = 16, amount_max = 32}
}

local big_rock = "big-rock"
data_entity[big_rock].minable.count = 16

local huge_rock = "huge-rock"
data_entity[huge_rock].minable.results =
{
    {type = item, name = stone, amount_min = 32, amount_max = 64},
    {type = item, name = coal, amount_min = 32, amount_max = 64}
}

local big_volcanic_rock = "big-volcanic-rock"
data_entity[big_volcanic_rock].minable.results =
{
    {type = item, name = stone, amount_min = 2, amount_max = 16},
    {type = item, name = ore_saphirite, amount_min = 4, amount_max = 8},
    {type = item, name = ore_jivolite, amount_min = 4, amount_max = 8},
    {type = item, name = ore_stiratite, amount_min = 4, amount_max = 8},
    {type = item, name = ore_crotinnium, amount_min = 4, amount_max = 8},
    {type = item, name = ore_rubyte, amount_min = 4, amount_max = 8},
    {type = item, name = ore_bobmonium, amount_min = 4, amount_max = 8},
    {type = item, name = wolframite_ore, amount_min = 2, amount_max = 8}
}

local huge_volcanic_rock = "huge-volcanic-rock"
data_entity[huge_volcanic_rock].minable.results =
{
    {type = item, name = stone, amount_min = 8, amount_max = 16},
    {type = item, name = ore_saphirite, amount_min = 8, amount_max = 32},
    {type = item, name = ore_jivolite, amount_min = 8, amount_max = 32},
    {type = item, name = ore_stiratite, amount_min = 8, amount_max = 32},
    {type = item, name = ore_crotinnium, amount_min = 8, amount_max = 32},
    {type = item, name = ore_rubyte, amount_min = 8, amount_max = 32},
    {type = item, name = ore_bobmonium, amount_min = 8, amount_max = 32},
    {type = item, name = wolframite_ore, amount_min = 4, amount_max = 16}
}

local vulcanus_chimney_short = "vulcanus-chimney-short"
data_entity[vulcanus_chimney_short].minable.results[1].amount_min = 8
data_entity[vulcanus_chimney_short].minable.results[1].amount_max = 16

local vulcanus_chimney_truncated = "vulcanus-chimney-truncated"
data_entity[vulcanus_chimney_truncated].minable.results[1].amount_min = 8
data_entity[vulcanus_chimney_truncated].minable.results[1].amount_max = 16

local vulcanus_chimney = "vulcanus-chimney"
if mods[vulcanus_sulfuric_bacteria_mods] then
    data_entity[vulcanus_chimney].minable.results =
    {
        {type = item, name = stone, amount_min = 8, amount_max = 16},
        {type = item, name = sulfur, amount_min = 0, amount_max = 4},
        {type = item, name = sulfuric_bacteria, amount_min = 4, amount_max = 8}
    }
else
    data_entity[vulcanus_chimney].minable.results =
    {
        {type = item, name = stone, amount_min = 8, amount_max = 16},
        {type = item, name = sulfur, amount_min = 0, amount_max = 4}
    }
end

local vulcanus_chimney_cold = "vulcanus-chimney-cold"
data_entity[vulcanus_chimney_cold].minable.results[1].amount_min = 8
data_entity[vulcanus_chimney_cold].minable.results[1].amount_max = 16
data_entity[vulcanus_chimney_cold].minable.results[2].amount_min = 0
data_entity[vulcanus_chimney_cold].minable.results[2].amount_max = 4

local vulcanus_chimney_faded = "vulcanus-chimney-faded"
data_entity[vulcanus_chimney_faded].minable.results[1].amount_min = 8
data_entity[vulcanus_chimney_faded].minable.results[1].amount_max = 16
data_entity[vulcanus_chimney_faded].minable.results[2].amount_min = 0
data_entity[vulcanus_chimney_faded].minable.results[2].amount_max = 4

local small_demolisher_corpse = "small-demolisher-corpse"
local medium_demolisher_corpse = "medium-demolisher-corpse"
local big_demolisher_corpse = "big-demolisher-corpse"
if mods[vulcanus_sulfuric_bacteria_mods] then
    data_entity[small_demolisher_corpse].minable.results =
    {
        {type = item, name = wolframite_ore, amount_min = 0, amount_max = 32},
        {type = item, name = sulfuric_bacteria, amount_min = 16, amount_max = 32}
    }
    data_entity[medium_demolisher_corpse].minable.results =
    {
        {type = item, name = wolframite_ore, amount_min = 0, amount_max = 32},
        {type = item, name = sulfuric_bacteria, amount_min = 32, amount_max = 64}
    }
    data_entity[big_demolisher_corpse].minable.results =
    {
        {type = item, name = wolframite_ore, amount_min = 0, amount_max = 32},
        {type = item, name = sulfuric_bacteria, amount_min = 64, amount_max = 128}
    }
else
    data_entity[small_demolisher_corpse].minable.results = {{type = item, name = wolframite_ore, amount_min = 0, amount_max = 32}}
    data_entity[medium_demolisher_corpse].minable.results = {{type = item, name = wolframite_ore, amount_min = 0, amount_max = 32}}
    data_entity[big_demolisher_corpse].minable.results = {{type = item, name = wolframite_ore, amount_min = 0, amount_max = 32}}
end

data_entity["copper-stromatolite"].minable.results =
{
    {type = item, name = stone, amount_min = 4, amount_max = 8},
    {type = item, name = ore_stiratite, amount_min = 8, amount_max = 16},
    {type = item, name = ore_crotinnium, amount_min = 8, amount_max = 16},
    {type = item, name = stiratite_bacteria, amount_min = 16, amount_max = 32},
    {type = item, name = crotinnium_bacteria, amount_min = 16, amount_max = 32}
}

data_entity["iron-stromatolite"].minable.results =
{
    {type = item, name = stone, amount_min = 4, amount_max = 8},
    {type = item, name = ore_saphirite, amount_min = 8, amount_max = 16},
    {type = item, name = ore_jivolite, amount_min = 8, amount_max = 16},
    {type = item, name = saphirite_bacteria, amount_min = 16, amount_max = 32},
    {type = item, name = jivolite_bacteria, amount_min = 16, amount_max = 32}
}

data_entity["big-stomper-shell"].minable.results =
{
    {type = item, name = stone, amount_min = 0, amount_max = 8},
    {type = item, name = spoilage, amount_min = 0, amount_max = 8},
    {type = item, name = pentapod_egg, amount_min = 0, amount_max = 1}
}

data_entity["medium-stomper-shell"].minable.results =
{
    {type = item, name = stone, amount_min = 0, amount_max = 4},
    {type = item, name = spoilage, amount_min = 0, amount_max = 4},
    {type = item, name = pentapod_egg, amount_min = 0, amount_max = 1}
}

data_entity["small-stomper-shell"].minable.results =
{
    {type = item, name = stone, amount_min = 0, amount_max = 2},
    {type = item, name = spoilage, amount_min = 0, amount_max = 2},
    {type = item, name = pentapod_egg, amount_min = 0, amount_max = 1}
}

local big_fulgora_rock = "big-fulgora-rock"
data_entity[big_fulgora_rock].minable.results[1].amount_min = 16
data_entity[big_fulgora_rock].minable.results[1].amount_max = 32

data_entity["fulgurite-small"].minable.results =
{
    {type = item, name = stone, amount_min = 8, amount_max = 16},
    {type = item, name = brannerite_ore, amount_min = 4, amount_max = 8}
}

data_entity["fulgurite"].minable.results =
{
    {type = item, name = stone, amount_min = 4, amount_max = 8},
    {type = item, name = brannerite_ore, amount_min = 8, amount_max = 16}
}

data_lightning_attractor["fulgoran-ruin-attractor"].minable.results =
{
    {type = item, name = scrap, amount = 8},
    {type = item, name = construction_scrap, amount = 4},
    {type = item, name = machinery_scrap, amount = 4}
}

data_entity["fulgoran-ruin-small"].minable.results =
{
    {type = item, name = scrap, amount_min = 4, amount_max = 8},
    {type = item, name = construction_scrap, amount_min = 2, amount_max = 4},
    {type = item, name = machinery_scrap, amount_min = 2, amount_max = 4}
}

data_entity["fulgoran-ruin-medium"].minable.results =
{
    {type = item, name = scrap, amount_min = 4, amount_max = 16},
    {type = item, name = construction_scrap, amount_min = 2, amount_max = 8},
    {type = item, name = machinery_scrap, amount_min = 2, amount_max = 8}
}

data_entity["fulgoran-ruin-stonehenge"].minable.results =
{
    {type = item, name = scrap, amount_min = 8, amount_max = 32},
    {type = item, name = construction_scrap, amount_min = 4, amount_max = 16},
    {type = item, name = machinery_scrap, amount_min = 4, amount_max = 16}
}

data_entity["fulgoran-ruin-big"].minable.results =
{
    {type = item, name = scrap, amount_min = 8, amount_max = 32},
    {type = item, name = construction_scrap, amount_min = 4, amount_max = 16},
    {type = item, name = machinery_scrap, amount_min = 4, amount_max = 16}
}

data_entity["fulgoran-ruin-colossal"].minable.results =
{
    {type = item, name = scrap, amount_min = 32, amount_max = 128},
    {type = item, name = construction_scrap, amount_min = 16, amount_max = 64},
    {type = item, name = machinery_scrap, amount_min = 16, amount_max = 64}
}

data_entity["fulgoran-ruin-huge"].minable.results =
{
    {type = item, name = scrap, amount_min = 16, amount_max = 64},
    {type = item, name = construction_scrap, amount_min = 8, amount_max = 32},
    {type = item, name = machinery_scrap, amount_min = 8, amount_max = 32}
}

data_entity["fulgoran-ruin-vault"].minable.results =
{
    {type = item, name = scrap, amount_min = 128, amount_max = 512},
    {type = item, name = construction_scrap, amount_min = 64, amount_max = 256},
    {type = item, name = machinery_scrap, amount_min = 64, amount_max = 256}
}

data_entity["lithium-iceberg-big"].minable.results =
{
    {type = item, name = ice_platform, amount = 1},
    {type = item, name = ice, amount_min = 4, amount_max = 8},
    {type = item, name = antimonite_ore, amount_min = 8, amount_max = 16},
    {type = item, name = germanite_ore, amount_min = 8, amount_max = 16},
    {type = item, name = lithium_chloride_angels, amount_min = 1, amount_max = 2}
}

data_entity["lithium-iceberg-huge"].minable.results =
{
    {type = item, name = ice_platform, amount_min = 2, amount_max = 4},
    {type = item, name = ice, amount_min = 8, amount_max = 16},
    {type = item, name = antimonite_ore, amount_min = 16, amount_max = 32},
    {type = item, name = germanite_ore, amount_min = 16, amount_max = 32},
    {type = item, name = lithium_chloride_angels, amount_min = 2, amount_max = 4}
}

-- Fluid
data_resource[crude_oil].order = a
data_resource[crude_oil].minable.results[1].amount_min = 30
data_resource[crude_oil].minable.results[1].amount_max = 30

local natural_gas = "angels-natural-gas"
data_resource[natural_gas].order = b
data_resource[natural_gas].minable.results[1].amount_min = 30
data_resource[natural_gas].minable.results[1].amount_max = 30

local fissure = "angels-fissure"
data_resource[fissure].order = c
data_resource[fissure].minable.results[1].amount_min = 30
data_resource[fissure].minable.results[1].amount_max = 30
data_resource[fissure].minable.mining_time = 2

local sulfuric_acid_geyser = "sulfuric-acid-geyser"
data_resource[sulfuric_acid_geyser].order = d
data_resource[sulfuric_acid_geyser].minable.results[1].amount_min = 30
data_resource[sulfuric_acid_geyser].minable.results[1].amount_max = 30

local thermal_geyser = "lithium-brine"
data_resource[thermal_geyser].order = e
data_resource[thermal_geyser].localised_name = {"entity-name.thermal-water-geyser"}
data_resource[thermal_geyser].minable.results[1].amount_min = 30
data_resource[thermal_geyser].minable.results[1].amount_max = 30

local fluorine_vent = "fluorine-vent"
data_resource[fluorine_vent].order = f
data_resource[fluorine_vent].minable.results[1].amount_min = 30
data_resource[fluorine_vent].minable.results[1].amount_max = 30

-- BOB
local hardened_bile = "bob-hardened-bile"
if mods[bobenemies] then
    if mods["graille-bob-hardened-bile-remover"] then
        data_entity[hardened_bile].minable = data_entity[hardened_bile].minable or {mining_time = 1}
        data_entity[hardened_bile].minable.results = {{type = item, name = resin_bob, amount_min = 8, amount_max = 16}}
    else
        data_entity[hardened_bile].minable.results[1].amount_min = 8
        data_entity[hardened_bile].minable.results[1].amount_max = 16
    end
end

-- ANGELS
data_fish["angels-alien-fish-1"].minable = {mining_time = 0.5, result = levac_fish, count = 4}
data_fish["angels-alien-fish-2"].minable = {mining_time = 0.5, result = dorflurp_jellyfish, count = 4}
data_fish["angels-alien-fish-3"].minable = {mining_time = 0.5, result = santa_ray, count = 4}

data_tree["angels-puffer-nest"].order = z

data_tree[garden_temperate].order = z_a
data_tree[garden_temperate].minable.results =
{
    {type = item, name = garden_temperate, amount = 1},
    {type = item, name = wheaton, amount = 4, probability = 0.125},
    {type = item, name = tianaton, amount = 4, probability = 0.125},
    {type = item, name = okarinome, amount = 4, probability = 0.125},
    {type = item, name = quillnoa, amount = 4, probability = 0.0625},
    {type = item, name = kendallion, amount = 4, probability = 0.0625}
}
data_tree[garden_swamp].order = z_b
data_tree[garden_swamp].minable.results =
{
    {type = item, name = garden_swamp, amount = 1},
    {type = item, name = elendilomone, amount = 4, probability = 0.125},
    {type = item, name = zombieecalyptus, amount = 4, probability = 0.125},
    {type = item, name = saundsrcress, amount = 4, probability = 0.125},
    {type = item, name = nexeflax, amount = 4, probability = 0.0625},
    {type = item, name = mushredtato, amount = 4, probability = 0.0625}
}
data_tree[garden_desert].order = z_c
data_tree[garden_desert].minable.results =
{
    {type = item, name = garden_desert, amount = 1},
    {type = item, name = binafran, amount = 4, probability = 0.125},
    {type = item, name = primedeadelion, amount = 4, probability = 0.125},
    {type = item, name = nilaubergine, amount = 4, probability = 0.125},
    {type = item, name = zelosquash, amount = 4, probability = 0.0625},
    {type = item, name = arumbiphila, amount = 4, probability = 0.0625}
}
data_tree[tree_temperate].order = z_d
data_tree[tree_temperate].minable.results[1].amount = 128
data_tree[tree_swamp].order = z_e
data_tree[tree_swamp].minable.results[1].amount = 128
data_tree[tree_desert].order = z_f
data_tree[tree_desert].minable.results[1].amount = 128

data_entity["angels-crystal-rock"].minable.results =
{
    {type = item, name = stone, amount = 32},
    {type = item, name = geode_blue, amount_min = 0, amount_max = 8},
    {type = item, name = geode_cyan, amount_min = 0, amount_max = 2},
    {type = item, name = geode_lightgreen, amount_min = 0, amount_max = 2},
    {type = item, name = geode_purple, amount_min = 0, amount_max = 4},
    {type = item, name = geode_red, amount_min = 0, amount_max = 8},
    {type = item, name = geode_yellow, amount = 2}
}

-- PLANETS
-- MOSHINE
if mods[moshine_mods] then
    data_entity["moshine-" .. huge_volcanic_rock].minable.results =
    {
        {type = item, name = stone, amount_min = 4, amount_max = 8},
        {type = item, name = monazite_ore, amount_min = 4, amount_max = 16},
        {type = item, name = barite, amount_min = 4, amount_max = 16},
        {type = item, name = biotite_mica, amount_min = 4, amount_max = 16}
    }
    data_entity["moshine-big-fulgora-rock"].minable.results =
    {
        {type = item, name = stone, amount_min = 16, amount_max = 32},
        {type = item, name = coal, amount_min = 16, amount_max = 32}
    }

    data_tile["moshine-lava"].fluid = lava

    local fulgoran_data_source = "fulgoran-data-source"
    data_resource[fulgoran_data_source].order = g
    data_resource[fulgoran_data_source].minable.results[1].amount_min = 120
    data_resource[fulgoran_data_source].minable.results[1].amount_max = 120

    local steam_geyser = "steam-geyser"
    data_resource[steam_geyser].icon = "__TIMSABA__/graphics/icons/moshine/steam-geyser.png"
    data_resource[steam_geyser].stages.layers[1].filename = "__TIMSABA__/graphics/icons/moshine/steam-geyser-entity.png"
    data_resource[steam_geyser].order = g
    data_resource[steam_geyser].minable.results[1] = {type = fluid, name = steam, amount_min = 30, amount_max = 30, temperature = 915}
end

-- ARIG
if mods[arig_mods] then
    data_entity["arig-medium-sand-rock"].minable.results =
    {
        {type = item, name = stone, amount_min = 4, amount_max = 16},
        {type = item, name = coal, amount_min = 4, amount_max = 16},
        {type = item, name = ore_saphirite, amount_min = 4, amount_max = 16},
        {type = item, name = ore_jivolite, amount_min = 4, amount_max = 16},
        {type = item, name = ore_stiratite, amount_min = 4, amount_max = 16},
        {type = item, name = ore_crotinnium, amount_min = 4, amount_max = 16},
        {type = item, name = ore_rubyte, amount_min = 4, amount_max = 16},
        {type = item, name = ore_bobmonium, amount_min = 4, amount_max = 16}
    }

    data_entity["arig-" .. big_sand_rock].minable.results =
    {
        {type = item, name = stone, amount_min = 16, amount_max = 32},
        {type = item, name = coal, amount_min = 16, amount_max = 32},
        {type = item, name = ore_saphirite, amount_min = 16, amount_max = 32},
        {type = item, name = ore_jivolite, amount_min = 16, amount_max = 32},
        {type = item, name = ore_stiratite, amount_min = 16, amount_max = 32},
        {type = item, name = ore_crotinnium, amount_min = 16, amount_max = 32},
        {type = item, name = ore_rubyte, amount_min = 16, amount_max = 32},
        {type = item, name = ore_bobmonium, amount_min = 16, amount_max = 32}
    }

    data_entity["arig-crash"].minable.results =
    {
        {type = item, name = advanced_processing_unit, amount_min = 16, amount_max = 32},
        {type = item, name = niobium_titanium_plate, amount_min = 16, amount_max = 32},
        {type = item, name = niobium_titanium_cable, amount_min = 8, amount_max = 16},
        {type = item, name = niobium_iron_plate, amount_min = 16, amount_max = 32},
        {type = item, name = niobium_iron_bearing, amount_min = 16, amount_max = 32},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount_min = 16, amount_max = 32},
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount_min = 16, amount_max = 32},
        {type = item, name = vulcanus_transport_belt, amount_min = 16, amount_max = 32},
        {type = item, name = T5_inserter, amount_min = 8, amount_max = 16}
    }

    data_plant["tree-plant"].minable.results[2].amount = 960

    data_plant[yumako_tree].minable.results[2] = {type = fluid, name = steam, amount = 960, temperature = 915}

    data_plant[jellystem].minable.results[2].amount = 960

    local cactus_plant = "planetaris-cactus-plant"
    data_plant[cactus_plant].minable.results[1].amount = 4
    data_plant[cactus_plant].minable.results[2].amount = 960

    local heavy_oil_geyser = "heavy-oil-geyser"
    data_resource[heavy_oil_geyser].minable.results[1].name = heavy_oil_timsaba
    data_resource[heavy_oil_geyser].minable.results[1].amount_min = 30
    data_resource[heavy_oil_geyser].minable.results[1].amount_max = 30
end

-- HYARION
if mods[hyarion_mods] then
    local pointy_crystal = "hyarion-pointy-crystal"
    data_tree[pointy_crystal].minable.results[1].amount_min = 16
    data_tree[pointy_crystal].minable.results[1].amount_max = 32

    data_entity["hyarion-" .. big_volcanic_rock].minable.results =
    {
        {type = item, name = carbon_angels, amount_min = 8, amount_max = 16},
        {type = item, name = raw_quartz_arig, amount_min = 8, amount_max = 16}
    }

    data_entity["hyarion-" .. huge_volcanic_rock].minable.results =
    {
        {type = item, name = carbon_angels, amount_min = 8, amount_max = 16},
        {type = item, name = raw_quartz_arig, amount_min = 8, amount_max = 16}
    }

    local hyarion_chimney_short = "hyarion-chimney-short"
    data_entity[hyarion_chimney_short].minable.results[1].amount_min = 8
    data_entity[hyarion_chimney_short].minable.results[1].amount_max = 16

    local hyarion_chimney_truncated = "hyarion-chimney-truncated"
    data_entity[hyarion_chimney_truncated].minable.results[1].amount_min = 8
    data_entity[hyarion_chimney_truncated].minable.results[1].amount_max = 16

    data_entity["hyarion-chimney"].minable.results =
    {
        {type = item, name = carbon_angels, amount_min = 8, amount_max = 16},
        {type = item, name = metallic_ore, amount_min = 0, amount_max = 4}
    }

    data_entity["hyarion-chimney-cold"].minable.results =
    {
        {type = item, name = carbon_angels, amount_min = 8, amount_max = 16},
        {type = item, name = metallic_ore, amount_min = 0, amount_max = 4}
    }

    data_entity["hyarion-chimney-faded"].minable.results =
    {
        {type = item, name = carbon_angels, amount_min = 8, amount_max = 16},
        {type = item, name = metallic_ore, amount_min = 0, amount_max = 4}
    }
end

-- TELLUS
if mods[tellus_mods] then
    data_plant["mushell"].minable.results =
    {
        {type = item, name = wood, amount = 8},
        {type = item, name = mushell_seed, amount_min = 1, amount_max = 4}
    }

    data_plant["mushell-plant"].minable.results =
    {
        {type = item, name = wood, amount = 8},
        {type = item, name = mushell_seed, amount_min = 1, amount_max = 4}
    }

    data_tree["moldant"].minable.results =
    {
        {type = item, name = wood, amount = 4},
        {type = item, name = spoilage, amount = 4}
    }

    data_plant["carbolyte"].minable.results =
    {
        {type = item, name = carbolyte_crust, amount = 64},
        {type = fluid, name = sulfuric_acid_angels, amount = 480}
    }

    data_plant["holmiumnite"].minable.results =
    {
        {type = item, name = holmiumnite_bulb, amount = 64},
        {type = fluid, name = multi_phase_oil_angels, amount = 480}
    }

    if mods[hyarion_mods] then
        data_plant["planetaris-big-charged-crystal"].minable.results =
        {
            {type = item, name = unstable_crystal, amount = 64},
            {type = fluid, name = lava, amount = 240}
        }
    end

    data_plant["myceliae"].minable.results =
    {
        {type = item, name = mushroom_cap, amount = 64},
        {type = fluid, name = water, amount = 240}
    }

    data_plant["chloroplast"].minable.results =
    {
        {type = item, name = chloroplast_fruit, amount = 64},
        {type = fluid, name = chlorophyll, amount = 240}
    }

    data_entity["planetaris-magnesium-stromatolite"].minable.results =
    {
        {type = item, name = stone, amount_min = 4, amount_max = 8},
        {type = item, name = magnesium_ore, amount_min = 8, amount_max = 16},
        {type = item, name = ore_saphirite, amount_min = 4, amount_max = 8},
        {type = item, name = ore_jivolite, amount_min = 4, amount_max = 8},
        {type = item, name = magnesium_bacteria, amount_min = 16, amount_max = 32},
        {type = item, name = saphirite_bacteria, amount_min = 8, amount_max = 16},
        {type = item, name = jivolite_bacteria, amount_min = 8, amount_max = 16}
    }
end

-- PARACELSIN
if mods[paracelsin_mods] then
    data_tile["nitrogen-lake"].fluid = nitrogen_liquid

    local water_cryovolcan = "water-cryovolcano"
    data_resource[water_cryovolcan].minable.results[1].amount_min = 30
    data_resource[water_cryovolcan].minable.results[1].amount_max = 30

    data_entity["big-metallic-rock"].minable.results =
    {
        {type = item, name = stone, amount_min = 0, amount_max = 4},
        {type = item, name = vaterite, amount_min = 1, amount_max = 2},
        {type = item, name = ore_saphirite, amount_min = 4, amount_max = 16},
        {type = item, name = ore_jivolite, amount_min = 4, amount_max = 16},
        {type = item, name = ore_stiratite, amount_min = 4, amount_max = 16},
        {type = item, name = ore_crotinnium, amount_min = 4, amount_max = 16},
        {type = item, name = ore_rubyte, amount_min = 4, amount_max = 16},
        {type = item, name = ore_bobmonium, amount_min = 4, amount_max = 16},
        {type = item, name = sphalerite_ore, amount_min = 4, amount_max = 16},
        {type = item, name = tetrahedrite_ore, amount_min = 4, amount_max = 16},
        {type = item, name = sulfur, amount_min = 2, amount_max = 8}
    }

    data_entity["crashed-fulgoran-pod"].minable.results =
    {
        {type = item, name = advanced_processing_unit, amount_min = 16, amount_max = 32},
        {type = item, name = niobium_titanium_plate, amount_min = 16, amount_max = 32},
        {type = item, name = niobium_titanium_cable, amount_min = 8, amount_max = 16},
        {type = item, name = niobium_iron_plate, amount_min = 16, amount_max = 32},
        {type = item, name = niobium_iron_bearing, amount_min = 16, amount_max = 32},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount_min = 16, amount_max = 32},
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount_min = 16, amount_max = 32},
        {type = item, name = vulcanus_transport_belt, amount_min = 16, amount_max = 32},
        {type = item, name = T5_inserter, amount_min = 8, amount_max = 16}
    }
end

-- CORRUNDUM
if mods[corrundum_mods] then
    data_tile["petroleum-tile"].fluid = multi_phase_oil_angels

    data_entity["huge-corrundum-rock"].minable.results =
    {
        {type = item, name = stone, amount_min = 16, amount_max = 64},
        {type = item, name = carbon_angels, amount_min = 16, amount_max = 32},
        {type = item, name = ore_saphirite, amount_min = 16, amount_max = 32},
        {type = item, name = ore_jivolite, amount_min = 16, amount_max = 32},
        {type = item, name = ore_stiratite, amount_min = 16, amount_max = 32},
        {type = item, name = ore_crotinnium, amount_min = 16, amount_max = 32},
        {type = item, name = ore_rubyte, amount_min = 16, amount_max = 32},
        {type = item, name = ore_bobmonium, amount_min = 16, amount_max = 32},
        {type = item, name = chalcopyrite_ore, amount_min = 4, amount_max = 16},
        {type = item, name = sulfur, amount_min = 8, amount_max = 32}
    }
end

-- CASTRA
if mods[castra_mods] then
    data_tile["light-oil-ocean-deep"].fluid = fuel_oil_angels

    data_resource[uranium_ore] = nil

    local hydrogen_sulfide_vent = "hydrogen-sulfide-vent"
    data_resource[hydrogen_sulfide_vent].minable.results[1].amount_min = 30
    data_resource[hydrogen_sulfide_vent].minable.results[1].amount_max = 30

    local vanilla_resources = {copper_ore, stone, uranium_ore}
    local angels_resources = {ore_stiratite, ore_crotinnium, ore_rubyte, ore_bobmonium}

    local map_gen = data_planet[planet_castra].map_gen_settings

    if not map_gen.autoplace_settings then
        map_gen.autoplace_settings = {entity = {settings = {}}}
    end

    -- 1. Вырезаем ванильные ресурсы
    for _, res_name in ipairs(vanilla_resources) do
        map_gen.autoplace_controls[res_name] = nil
        if map_gen.autoplace_settings.entity.settings then
            map_gen.autoplace_settings.entity.settings[res_name] = nil
        end
        if data_resource[res_name] then
            data_resource[res_name].location = nil
        end
    end

    -- 2. Внедряем руды Ангела
    for _, res_name in ipairs(angels_resources) do
        map_gen.autoplace_controls[res_name] = {}

        map_gen.autoplace_settings.entity.settings[res_name] = {}

        if data_resource[res_name] then
            data_resource[res_name].location = planet_castra
        end
    end

    local data_collector = "data-collector"
    data_unit_spawner[data_collector].loot =
    {
        {item = advanced_circuit,      probability = 1, count_min = 4, count_max = 8},
        {item = nickel_plate_bob,      probability = 1, count_min = 4, count_max = 16},
        {item = electronic_circuit,    probability = 1, count_min = 8, count_max = 32},
        {item = low_density_structure, probability = 1, count_min = 4, count_max = 12},
        {item = electric_engine_unit,  probability = 1, count_min = 4, count_max = 8}
    }
end

-- SHCHIERBIN
if mods[shchierbin_mods] then
    local natural_gas_geyser = "natural-gas-geyser"
    data_resource[natural_gas_geyser].icon = "__TIMSABA__/graphics/icons/shchierbin/natural-gas-geyser.png"
    data_resource[natural_gas_geyser].stages.layers[1].filename = "__TIMSABA__/graphics/icons/shchierbin/natural-gas-geyser-entity.png"
    data_resource[natural_gas_geyser].minable.results[1].amount_min = 30
    data_resource[natural_gas_geyser].minable.results[1].amount_max = 30

    local vanilla_resources = {iron_ore, stone}
    local angels_resources = {ore_saphirite, ore_jivolite}

    local map_gen = data_planet[planet_shchierbin].map_gen_settings

    if not map_gen.autoplace_settings then
        map_gen.autoplace_settings = {entity = {settings = {}}}
    end

    -- 1. Вырезаем ванильные ресурсы
    for _, res_name in ipairs(vanilla_resources) do
        map_gen.autoplace_controls[res_name] = nil
        if map_gen.autoplace_settings.entity.settings then
            map_gen.autoplace_settings.entity.settings[res_name] = nil
        end
        if data_resource[res_name] then
            data_resource[res_name].location = nil
        end
    end

    -- 2. Внедряем руды Ангела
    for _, res_name in ipairs(angels_resources) do
        map_gen.autoplace_controls[res_name] = {}

        map_gen.autoplace_settings.entity.settings[res_name] = {}

        if data_resource[res_name] then
            data_resource[res_name].location = planet_shchierbin
        end
    end
end

-- MARAXSIS
if mods[maraxsis_mods] then
    for i = 1, 15 do
        data_unit[tropical_fish_maraxsis .. "-" .. i].minable.results[1].amount = 4
    end

    data_tree["maraxsis-polylplast"].minable.results =
    {
        {type = item, name = coral_maraxsis, amount_min = 16, amount_max = 32},
        {type = item, name = stone, amount_min = 4, amount_max = 8}
    }

    data_entity["maraxsis-mollusk-husk"].minable.results =
    {
        {type = item, name = limestone_angels, amount_min = 16, amount_max = 32}
    }
end

-- VESTA
if mods[vesta_mods] then
    data_entity["vesta_rock_huge"].minable.results =
    {
        {type = item, name = stone, amount_min = 2, amount_max = 4},
        {type = item, name = algea_nutrient_clump, amount_min = 0, amount_max = 2},
        {type = item, name = algea_clump_iron, amount_min = 4, amount_max = 16},
        {type = item, name = algea_clump_copper, amount_min = 2, amount_max = 8}
    }

    data_entity["vesta-petrite"].minable.results =
    {
        {type = item, name = algea_petrite_clump, amount_min = 2, amount_max = 4},
        {type = item, name = algea_nutrient_clump, amount_min = 0, amount_max = 2},
        {type = item, name = algea_clump_iron, amount_min = 2, amount_max = 4},
        {type = item, name = algea_clump_copper, amount_min = 2, amount_max = 4}
    }
end

-- SHATTERED
if mods[shattered_mods] then
    local uranium_ore_shattered = "shattered_uranium_ore"
    data_resource[uranium_ore_shattered] = nil

    local vanilla_resources = {uranium_ore_shattered}
    local angels_resources = {ore_rubyte, ore_bobmonium}

    local map_gen = data_planet[planet_shattered].map_gen_settings

    if not map_gen.autoplace_settings then
        map_gen.autoplace_settings = {entity = {settings = {}}}
    end

    -- 1. Вырезаем ванильные ресурсы
    for _, res_name in ipairs(vanilla_resources) do
        map_gen.autoplace_controls[res_name] = nil
        if map_gen.autoplace_settings.entity.settings then
            map_gen.autoplace_settings.entity.settings[res_name] = nil
        end
        if data_resource[res_name] then
            data_resource[res_name].location = nil
        end
    end

    -- 2. Внедряем руды Ангела
    for _, res_name in ipairs(angels_resources) do
        map_gen.autoplace_controls[res_name] = {}

        map_gen.autoplace_settings.entity.settings[res_name] = {}

        if data_resource[res_name] then
            data_resource[res_name].location = planet_shattered
        end
    end
end

-- MURIA
if mods[muria_mods] then
    data_plant["metallic-lichen-colony"].minable.results =
    {
        {type = item, name = acidophile_lichen, amount_min = 0, amount_max = 4},
        {type = item, name = ore_saphirite, amount_min = 2, amount_max = 8},
        {type = item, name = ore_jivolite, amount_min = 2, amount_max = 8},
        {type = item, name = ore_stiratite, amount_min = 2, amount_max = 8},
        {type = item, name = ore_crotinnium, amount_min = 2, amount_max = 8}
    }

    data_plant["cotunnite-lichen-colony"].minable.results =
    {
        {type = item, name = acidophile_lichen, amount_min = 0, amount_max = 1},
        {type = item, name = lead_ore_bob, amount_min = 2, amount_max = 4}
    }

    data_plant["eschatotaxite"].minable.results =
    {
        {type = item, name = eschatotaxite_sprout, amount_min = 0, amount_max = 4},
        {type = item, name = carbon_angels, amount_min = 0, amount_max = 4},
        {type = item, name = spoilage, amount_min = 0, amount_max = 4},
        {type = item, name = sulfur, amount_min = 0, amount_max = 1}
    }

    data_entity["big-chloric-rock"].minable.results =
    {
        {type = item, name = stone, amount_min = 4, amount_max = 16},
        {type = item, name = chlorine_salts, amount_min = 2, amount_max = 4}
    }
end

-- PELAGOS
if mods[pelagos_mods] then
    local offshore_oil = "offshore-oil"
    data_resource[offshore_oil].minable.results[1].amount_min = 30
    data_resource[offshore_oil].minable.results[1].amount_max = 30

    data_resource[methane_mods].icon = util.table.deepcopy(data_fluid[methane_angels].icon)
    data_resource[methane_mods].minable.results[1].amount_min = 30
    data_resource[methane_mods].minable.results[1].amount_max = 30

    data_resource[titanium_sludge].icon = util.table.deepcopy(data_fluid[titanium_sludge].icon)
    data_resource[titanium_sludge].minable.results[1].amount_min = 30
    data_resource[titanium_sludge].minable.results[1].amount_max = 30

    local coconut_palm = "coconut-palm"
    data_plant[coconut_palm].minable.results =
    {
        {type = item, name = coconut, amount = 8},
        {type = item, name = wood, amount = 4},
    }

    data_entity["pelagos-big-rock"].minable.results =
    {
        {type = item, name = stone, amount_min = 16, amount_max = 32},
        {type = item, name = fermentation_bacteria, amount_min = 4, amount_max = 8},
        {type = item, name = spoilage, amount_min = 2, amount_max = 4}
    }

    data_entity["pelagos-copper-stromatolite"].minable.results =
    {
        {type = item, name = stone, amount_min = 4, amount_max = 8},
        {type = item, name = copper_ore, amount_min = 16, amount_max = 32}
    }

    local vanilla_resources = {iron_ore}
    local angels_resources = {ore_saphirite, ore_jivolite}

    local map_gen = data_planet[planet_pelagos].map_gen_settings

    if not map_gen.autoplace_settings then
        map_gen.autoplace_settings = {entity = {settings = {}}}
    end

    -- 1. Вырезаем ванильные ресурсы
    for _, res_name in ipairs(vanilla_resources) do
        map_gen.autoplace_controls[res_name] = nil
        if map_gen.autoplace_settings.entity.settings then
            map_gen.autoplace_settings.entity.settings[res_name] = nil
        end
        if data_resource[res_name] then
            data_resource[res_name].location = nil
        end
    end

    -- 2. Внедряем руды Ангела
    for _, res_name in ipairs(angels_resources) do
        map_gen.autoplace_controls[res_name] = {}

        map_gen.autoplace_settings.entity.settings[res_name] = {}

        if data_resource[res_name] then
            data_resource[res_name].location = planet_pelagos
        end
    end
end

-- APIA and CARNOVA
if mods[apia_carnova_mods] then
    data_fish["larvae"].minable.count = 4
    data_tree["honey-mushroom"].minable.results =
    {
        {type = item, name = wood, amount = 4},
        {type = item, name = honey, amount = 16}
    }
    data_entity["wild-hive"].minable.results =
    {
        {type = item, name = spoilage, amount = 16},
        {type = item, name = honeycombs, amount = 32}
    }

    data_unit_spawner["piranha-spawner"].loot = {{item = piranha_roe, probability = 1, count_min = 4, count_max = 8}}
    data_entity["bone-nodes"].minable.results = {{type = item, name = bones, amount = 16}}
    data_entity["flesh-tree"].minable.results =
    {
        {type = item, name = wood, amount = 2},
        {type = item, name = spoilage, amount = 8},
        {type = item, name = flesh, amount = 4}
    }
    data_entity["flesh-antenna"].minable.results =
    {
        {type = item, name = stone, amount = 16},
        {type = item, name = spoilage, amount = 8},
        {type = item, name = flesh, amount = 128}
    }
    local lymph_brine = "lymph-brine"
    data_resource[lymph_brine].minable.results[1].amount_min = 30
    data_resource[lymph_brine].minable.results[1].amount_max = 30
end

-- ? REGIA ?
if mods[reigia_mods] then
    local vanilla_resources = {iron_ore, copper_ore, stone}
    local angels_resources = {ore_saphirite, ore_jivolite, ore_stiratite, ore_crotinnium}

    local map_gen = data_planet[planet_reigia].map_gen_settings

    if not map_gen.autoplace_settings then
        map_gen.autoplace_settings = {entity = {settings = {}}}
    end

    -- 1. Вырезаем ванильные ресурсы
    for _, res_name in ipairs(vanilla_resources) do
        map_gen.autoplace_controls[res_name] = nil
        if map_gen.autoplace_settings.entity.settings then
            map_gen.autoplace_settings.entity.settings[res_name] = nil
        end
        if data_resource[res_name] then
            data_resource[res_name].location = nil
        end
    end

    -- 2. Внедряем руды Ангела
    for _, res_name in ipairs(angels_resources) do
        map_gen.autoplace_controls[res_name] = {}

        map_gen.autoplace_settings.entity.settings[res_name] = {}

        if data_resource[res_name] then
            data_resource[res_name].location = planet_reigia
        end
    end
end

-- MOONS
-- MULUNA
if mods[muluna_mods] then
    data_entity["lunar-rock"].minable.results =
    {
        {type = item, name = sulfur, amount = 2},
        {type = item, name = stone, amount = 16}
    }

    data_entity["lunar-huge-rock"].minable.results =
    {
        {type = item, name = sulfur, amount = 4},
        {type = item, name = stone, amount = 32}
    }
end

-- PANGLIA
if mods[panglia_mods] then
    data_entity["panglia-huge-panglite-rock"].minable.results = {{type = item, name = panglite, amount_min = 16, amount_max = 32}}

    data_entity["panglia-big-panglite-rock"].minable.results = {{type = item, name = panglite, amount_min = 4, amount_max = 16}}

    data_entity["panglia-huge-igneous-rock"].minable.results = {{type = item, name = igneous_rock, amount_min = 32, amount_max = 128}}

    data_entity["panglia-big-rock"].minable.results =
    {
        {type = item, name = ore_saphirite, amount_min = 0, amount_max = 32},
        {type = item, name = ore_jivolite, amount_min = 0, amount_max = 32},
        {type = item, name = ore_stiratite, amount_min = 0, amount_max = 32},
        {type = item, name = ore_crotinnium, amount_min = 0, amount_max = 32},
        {type = item, name = ore_rubyte, amount_min = 0, amount_max = 32},
        {type = item, name = ore_bobmonium, amount_min = 0, amount_max = 32},
        {type = item, name = stone, amount_min = 0, amount_max = 16}
    }
end

-- TERRAPALUS
if mods[terrapalus_mods] then
    local vanilla_resources = {iron_ore, copper_ore, stone}
    local angels_resources = {ore_saphirite, ore_jivolite, ore_stiratite, ore_crotinnium, natural_gas}

    local map_gen = data_planet[planet_terrapalus].map_gen_settings

    if not map_gen.autoplace_settings then
        map_gen.autoplace_settings = {entity = {settings = {}}}
    end

    -- 1. Вырезаем ванильные ресурсы
    for _, res_name in ipairs(vanilla_resources) do
        map_gen.autoplace_controls[res_name] = nil
        if map_gen.autoplace_settings.entity.settings then
            map_gen.autoplace_settings.entity.settings[res_name] = nil
        end
        if data_resource[res_name] then
            data_resource[res_name].location = nil
        end
    end

    -- 2. Внедряем руды Ангела
    for _, res_name in ipairs(angels_resources) do
        map_gen.autoplace_controls[res_name] = {}

        map_gen.autoplace_settings.entity.settings[res_name] = {}

        if data_resource[res_name] then
            data_resource[res_name].location = planet_terrapalus
        end
    end
end

-- MODS
if mods[vulcanus_sulfuric_bacteria_mods] then
    data_entity["sulfuric-stromatolite"].minable.results =
    {
        {type = item, name = stone, amount_min = 4, amount_max = 16},
        {type = item, name = sulfur, amount_min = 0, amount_max = 16},
        {type = item, name = sulfuric_bacteria, amount_min = 16, amount_max = 32}
    }
end