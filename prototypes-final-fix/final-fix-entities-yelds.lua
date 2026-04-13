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

data_plant["yumako-tree"].minable.results[1].amount = 64
data_plant["jellystem"].minable.results[1].amount = 64

data_tree["slipstack"].minable.results[1].amount = 8
data_tree["funneltrunk"].minable.results[2].amount = 8
data_tree["hairyclubnub"].minable.results[1].amount = 4
data_tree["hairyclubnub"].minable.results[2].amount = 4
data_tree["teflilly"].minable.results[1].amount = 4
data_tree["teflilly"].minable.results[2].amount = 4
data_tree["lickmaw"].minable.results[1].amount = 8
data_tree["boompuff"].minable.results[1].amount = 8
data_tree["sunnycomb"].minable.results[1].amount = 8

data_entity["big-sand-rock"].minable.results =
{
    {type = item, name = stone, amount_min = 8, amount_max = 16},
    {type = item, name = sand_angels, amount_min = 16, amount_max = 32}
}
data_entity["big-rock"].minable.count = 16 -- = {mining_particle = "stone-particle", mining_time = 2, result = stone, count = 20}
data_entity["huge-rock"].minable.results[1].amount_min = 32
data_entity["huge-rock"].minable.results[1].amount_max = 64
data_entity["huge-rock"].minable.results[2].amount_min = 32
data_entity["huge-rock"].minable.results[2].amount_max = 64
data_entity["big-volcanic-rock"].minable.results =
{
    {type = item, name = stone, amount_min = 2, amount_max = 16},
    {type = item, name = saphirite, amount_min = 4, amount_max = 8},
    {type = item, name = jivolite, amount_min = 4, amount_max = 8},
    {type = item, name = stiratite, amount_min = 4, amount_max = 8},
    {type = item, name = crotinnium, amount_min = 4, amount_max = 8},
    {type = item, name = rubyte, amount_min = 4, amount_max = 8},
    {type = item, name = bobmonium, amount_min = 4, amount_max = 8},
    {type = item, name = tungsten_ore_bob, amount_min = 2, amount_max = 8}
}
data_entity["huge-volcanic-rock"].minable.results =
{
    {type = item, name = stone, amount_min = 8, amount_max = 16},
    {type = item, name = saphirite, amount_min = 8, amount_max = 32},
    {type = item, name = jivolite, amount_min = 8, amount_max = 32},
    {type = item, name = stiratite, amount_min = 8, amount_max = 32},
    {type = item, name = crotinnium, amount_min = 8, amount_max = 32},
    {type = item, name = rubyte, amount_min = 8, amount_max = 32},
    {type = item, name = bobmonium, amount_min = 8, amount_max = 32},
    {type = item, name = tungsten_ore_bob, amount_min = 4, amount_max = 16}
}
data_entity["vulcanus-chimney-short"].minable.results[1].amount_min = 8
data_entity["vulcanus-chimney-short"].minable.results[1].amount_max = 16
data_entity["vulcanus-chimney-truncated"].minable.results[1].amount_min = 8
data_entity["vulcanus-chimney-truncated"].minable.results[1].amount_max = 16
if not mods [vulcanus_sulfuric_bacteria_mods] then
    data_entity["vulcanus-chimney"].minable.results =
    {
        {type = item, name = stone, amount_min = 8, amount_max = 16},
        {type = item, name = sulfur, amount_min = 0, amount_max = 4}
    }
else
    data_entity["vulcanus-chimney"].minable.results =
    {
        {type = item, name = stone, amount_min = 8, amount_max = 16},
        {type = item, name = sulfur, amount_min = 0, amount_max = 4},
        {type = item, name = sulfuric_bacteria, amount_min = 4, amount_max = 8}
    }
end
data_entity["vulcanus-chimney-cold"].minable.results[1].amount_min = 8
data_entity["vulcanus-chimney-cold"].minable.results[1].amount_max = 16
data_entity["vulcanus-chimney-cold"].minable.results[2].amount_min = 0
data_entity["vulcanus-chimney-cold"].minable.results[2].amount_max = 4
data_entity["vulcanus-chimney-faded"].minable.results[1].amount_min = 8
data_entity["vulcanus-chimney-faded"].minable.results[1].amount_max = 16
data_entity["vulcanus-chimney-faded"].minable.results[2].amount_min = 0
data_entity["vulcanus-chimney-faded"].minable.results[2].amount_max = 4
if not mods [vulcanus_sulfuric_bacteria_mods] then
    data_entity["small-demolisher-corpse"].minable.results = {{type = item, name = tungsten_ore_bob, amount_min = 0, amount_max = 32}}
    data_entity["medium-demolisher-corpse"].minable.results = {{type = item, name = tungsten_ore_bob, amount_min = 0, amount_max = 32}}
    data_entity["big-demolisher-corpse"].minable.results = {{type = item, name = tungsten_ore_bob, amount_min = 0, amount_max = 32}}
else
    data_entity["small-demolisher-corpse"].minable.results =
    {
        {type = item, name = tungsten_ore_bob, amount_min = 0, amount_max = 32},
        {type = item, name = sulfuric_bacteria, amount_min = 16, amount_max = 32}
    }
    data_entity["medium-demolisher-corpse"].minable.results =
    {
        {type = item, name = tungsten_ore_bob, amount_min = 0, amount_max = 32},
        {type = item, name = sulfuric_bacteria, amount_min = 32, amount_max = 64}
    }
    data_entity["big-demolisher-corpse"].minable.results =
    {
        {type = item, name = tungsten_ore_bob, amount_min = 0, amount_max = 32},
        {type = item, name = sulfuric_bacteria, amount_min = 64, amount_max = 128}
    }
end
data_entity["copper-stromatolite"].minable.results =
{
    {type = item, name = stone, amount_min = 4, amount_max = 8},
    {type = item, name = stiratite, amount_min = 8, amount_max = 16},
    {type = item, name = crotinnium, amount_min = 8, amount_max = 16},
    {type = item, name = stiratite_bacteria, amount_min = 16, amount_max = 32},
    {type = item, name = crotinnium_bacteria, amount_min = 16, amount_max = 32}
}
data_entity["iron-stromatolite"].minable.results =
{
    {type = item, name = stone, amount_min = 4, amount_max = 8},
    {type = item, name = saphirite, amount_min = 8, amount_max = 16},
    {type = item, name = jivolite, amount_min = 8, amount_max = 16},
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
data_entity["big-fulgora-rock"].minable.results[1].amount_min = 16
data_entity["big-fulgora-rock"].minable.results[1].amount_max = 32
data_entity["fulgurite-small"].minable.results =
{
    {type = item, name = stone, amount_min = 8, amount_max = 16},
    {type = item, name = holmium_ore, amount_min = 4, amount_max = 8}
}
data_entity["fulgurite"].minable.results =
{
    {type = item, name = stone, amount_min = 4, amount_max = 8},
    {type = item, name = holmium_ore, amount_min = 8, amount_max = 16}
}
data_lightning_attractor["fulgoran-ruin-attractor"].minable.results =
{
    {type = item, name = scrap, amount = 8},
    {type = item, name = copper_cable, amount = 8},
    {type = item, name = steel_plate, amount = 4},
    {type = item, name = stone_brick, amount = 2}
}
data_entity["fulgoran-ruin-small"].minable.results =
{
    {type = item, name = scrap, amount_min = 4, amount_max = 8},
    {type = item, name = copper_cable, amount = 4},
    {type = item, name = steel_plate, amount = 4},
    {type = item, name = stone, amount = 4},
    {type = item, name = iron_rod, amount = 2},
    {type = item, name = iron_gear_wheel, amount = 4}
}
data_entity["fulgoran-ruin-medium"].minable.results =
{
    {type = item, name = scrap, amount_min = 4, amount_max = 16},
    {type = item, name = copper_cable, amount = 4},
    {type = item, name = steel_plate, amount = 4},
    {type = item, name = stone, amount = 4},
    {type = item, name = iron_rod, amount = 4},
    {type = item, name = iron_gear_wheel, amount = 4}
}
data_entity["fulgoran-ruin-stonehenge"].minable.results =
{
    {type = item, name = scrap, amount_min = 8, amount_max = 32},
    {type = item, name = copper_cable, amount = 8},
    {type = item, name = steel_plate, amount = 8},
    {type = item, name = stone, amount = 8},
    {type = item, name = iron_rod, amount = 4},
    {type = item, name = iron_gear_wheel, amount = 8}
}
data_entity["fulgoran-ruin-big"].minable.results =
{
    {type = item, name = scrap, amount_min = 8, amount_max = 32},
    {type = item, name = copper_cable, amount = 8},
    {type = item, name = steel_plate, amount = 8},
    {type = item, name = stone, amount = 8},
    {type = item, name = iron_rod, amount = 4},
    {type = item, name = iron_gear_wheel, amount = 8}
}
data_entity["fulgoran-ruin-colossal"].minable.results =
{
    {type = item, name = scrap, amount_min = 32, amount_max = 128},
    {type = item, name = copper_cable, amount = 32},
    {type = item, name = steel_plate, amount = 32},
    {type = item, name = stone, amount = 32},
    {type = item, name = iron_rod, amount = 16},
    {type = item, name = iron_gear_wheel, amount = 32}
}
data_entity["fulgoran-ruin-huge"].minable.results =
{
    {type = item, name = scrap, amount_min = 16, amount_max = 64},
    {type = item, name = copper_cable, amount = 16},
    {type = item, name = steel_plate, amount = 16},
    {type = item, name = stone, amount = 16},
    {type = item, name = iron_rod, amount = 16},
    {type = item, name = iron_gear_wheel, amount = 16}
}
data_entity["fulgoran-ruin-vault"].minable.results =
{
    {type = item, name = scrap, amount_min = 128, amount_max = 512},
    {type = item, name = copper_cable, amount = 128},
    {type = item, name = steel_plate, amount = 128},
    {type = item, name = stone, amount = 64},
    {type = item, name = iron_rod, amount = 128},
    {type = item, name = iron_gear_wheel, amount = 128}
}
data_entity["lithium-iceberg-big"].minable.results =
{
    {type = item, name = ice_platform, amount = 1},
    {type = item, name = ice, amount_min = 4, amount_max = 8},
    {type = item, name = antimony_ore, amount_min = 8, amount_max = 16},
    {type = item, name = lithium_chloride_angels, amount_min = 1, amount_max = 2}
}
data_entity["lithium-iceberg-huge"].minable.results =
{
    {type = item, name = ice_platform, amount_min = 2, amount_max = 4},
    {type = item, name = ice, amount_min = 8, amount_max = 16},
    {type = item, name = antimony_ore, amount_min = 16, amount_max = 32},
    {type = item, name = lithium_chloride_angels, amount_min = 2, amount_max = 4}
}

data_resource[crude_oil].minable.results[1].amount_min = 15
data_resource[crude_oil].minable.results[1].amount_max = 15
data_resource["sulfuric-acid-geyser"].minable.results[1].amount_min = 15
data_resource["sulfuric-acid-geyser"].minable.results[1].amount_max = 15
data_resource["lithium-brine"].localised_name = {"entity-name.thermal-water-geyser"}
data_resource["lithium-brine"].minable.results[1].amount_min = 15
data_resource["lithium-brine"].minable.results[1].amount_max = 15
data_resource["fluorine-vent"].minable.results[1].amount_min = 15
data_resource["fluorine-vent"].minable.results[1].amount_max = 15

-- BOB
if not mods ["graille-bob-hardened-bile-remover"] then
    data_entity["bob-hardened-bile"].minable.results[1].amount_min = 8
    data_entity["bob-hardened-bile"].minable.results[1].amount_max = 16
else
    data_entity["bob-hardened-bile"].minable = data_entity["bob-hardened-bile"].minable or {mining_time = 1}
    data_entity["bob-hardened-bile"].minable.results = {{type = item, name = resin_bob, amount_min = 8, amount_max = 16}}
end

-- ANGELS
data_fish["angels-alien-fish-1"].minable = {mining_time = 0.4, result = levac_fish, count = 4}
data_fish["angels-alien-fish-2"].minable = {mining_time = 0.4, result = dorflurp_jellyfish, count = 4}
data_fish["angels-alien-fish-3"].minable = {mining_time = 0.4, result = santa_ray, count = 4}

data_tree[garden_temperate].minable.results =
{
    {type = item, name = garden_temperate, amount = 1},
    {type = item, name = wheaton, amount = 4, probability = 0.4},
    {type = item, name = tianaton, amount = 4, probability = 0.3},
    {type = item, name = okarinome, amount = 4, probability = 0.2},
    {type = item, name = quillnoa, amount = 4, probability = 0.1},
    {type = item, name = kendallion, amount = 4, probability = 0.05}
}
data_tree[garden_swamp].minable.results =
{
    {type = item, name = garden_swamp, amount = 1},
    {type = item, name = elendilomone, amount = 4, probability = 0.4},
    {type = item, name = zombieecalyptus, amount = 4, probability = 0.3},
    {type = item, name = saundsrcress, amount = 4, probability = 0.2},
    {type = item, name = nexeflax, amount = 4, probability = 0.1},
    {type = item, name = mushredtato, amount = 4, probability = 0.05}
}
data_tree[garden_desert].minable.results =
{
    {type = item, name = garden_desert, amount = 1},
    {type = item, name = binafran, amount = 4, probability = 0.4},
    {type = item, name = primedeadelion, amount = 4, probability = 0.3},
    {type = item, name = nilaubergine, amount = 4, probability = 0.2},
    {type = item, name = zelosquash, amount = 4, probability = 0.1},
    {type = item, name = arumbiphila, amount = 4, probability = 0.05}
}
data_tree[tree_temperate].minable.results[1].amount = 128
data_tree[tree_swamp].minable.results[1].amount = 128
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

data_resource["angels-fissure"].minable.results[1].amount_min = 30
data_resource["angels-fissure"].minable.results[1].amount_max = 30
data_resource["angels-natural-gas"].minable.results[1].amount_min = 30
data_resource["angels-natural-gas"].minable.results[1].amount_max = 30

-- MODS
if mods [vulcanus_sulfuric_bacteria_mods] then
    data_entity["sulfuric-stromatolite"].minable.results =
    {
        {type = item, name = stone, amount_min = 4, amount_max = 16},
        {type = item, name = sulfur, amount_min = 0, amount_max = 16},
        {type = item, name = sulfuric_bacteria, amount_min = 16, amount_max = 32}
    }
end