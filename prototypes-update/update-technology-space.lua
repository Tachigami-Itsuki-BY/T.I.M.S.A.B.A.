-- SPACE
table.insert(data_technology[rocket_silo].prerequisites, tech_molybdenum_processing)
table.insert(data_technology[rocket_silo].prerequisites, tech_rhenium_processing)
table.insert(data_technology[rocket_silo].prerequisites, tech_molybdenum_rhenium_processing)
table.insert(data_technology[rocket_silo].prerequisites, tech_robots_4)
if not mods [muluna_mods] then
    data_technology[rocket_silo].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1}
    }
else
    data_technology[rocket_silo].research_trigger.item = "bob-logistic-robot-5"
end

if not mods [muluna_mods] then
    data_technology["space-platform-thruster"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
end

asteroid_collector = "asteroid-collector"
cargo_bay = "cargo-bay"
metallic_asteroid_crushing_1 = "metallic-asteroid-crushing"
carbonic_asteroid_crushing_1 = "carbonic-asteroid-crushing"
oxide_asteroid_crushing_1 = "oxide-asteroid-crushing"
hydrogen_chloride_separation = "angels-gas-hydrogen-chloride-separation"
if not mods [muluna_mods] then
    data_technology[space_platform].effects =
    {
        {type = unlock_recipe, recipe = cargo_bay},
        {type = unlock_recipe, recipe = asteroid_collector},
        {type = unlock_recipe, recipe = crusher},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_1},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_2},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_3},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_4},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_5},
        {type = unlock_recipe, recipe = metallic_asteroid_crushing_6},
        {type = unlock_recipe, recipe = carbonic_asteroid_crushing_1},
        {type = unlock_recipe, recipe = oxide_asteroid_crushing_1},
        {type = unlock_recipe, recipe = oxide_asteroid_crushing_2},
        {type = unlock_recipe, recipe = oxide_asteroid_crushing_3},
        {type = unlock_recipe, recipe = nitrogen_oxide_separation},
        {type = unlock_recipe, recipe = chlorine_oxide_separation},
        {type = unlock_recipe, recipe = hydrogen_chloride_separation},
        {type = unlock_recipe, recipe = nitrogen_monoxide_space},
        {type = unlock_recipe, recipe = hydrazine_space},
        {type = unlock_recipe, recipe = dinitrogen_tetroxide_space},
    }
end

advanced_metallic_asteroid_crushing_1 = "advanced-metallic-asteroid-crushing"
advanced_carbonic_asteroid_crushing_1 = "advanced-carbonic-asteroid-crushing"
advanced_oxide_asteroid_crushing_1 = "advanced-oxide-asteroid-crushing"
data_technology[tech_advanced_asteroid_processing].effects =
{
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_1},
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_2},
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_3},
    {type = unlock_recipe, recipe = advanced_metallic_asteroid_crushing_4},
    {type = unlock_recipe, recipe = advanced_carbonic_asteroid_crushing_1},
    {type = unlock_recipe, recipe = advanced_carbonic_asteroid_crushing_2},
    {type = unlock_recipe, recipe = advanced_oxide_asteroid_crushing_1},
    {type = unlock_recipe, recipe = advanced_oxide_asteroid_crushing_2},
    {type = unlock_recipe, recipe = lime_space},
    {type = unlock_recipe, recipe = sodium_hydroxide_space}
}
data_technology[tech_advanced_asteroid_processing].prerequisites = {electromagnetic_science_pack, agricultural_science_pack, metallurgic_science_pack}
data_technology[tech_advanced_asteroid_processing].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {electromagnetic_science_pack, 1},
    {agricultural_science_pack, 1},
    {metallurgic_science_pack, 1}
}

tech_asteroid_productivity = "asteroid-productivity"
data_technology[tech_asteroid_productivity].effects =
{
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_2, change = 0.1},
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_3, change = 0.1},
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_4, change = 0.1},
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_5, change = 0.1},
    {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_6, change = 0.1},
    {type = change_recipe_productivity, recipe = carbonic_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = oxide_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = oxide_asteroid_crushing_2, change = 0.1},
    {type = change_recipe_productivity, recipe = oxide_asteroid_crushing_3, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_2, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_3, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_4, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_carbonic_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_carbonic_asteroid_crushing_2, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_oxide_asteroid_crushing_1, change = 0.1},
    {type = change_recipe_productivity, recipe = advanced_oxide_asteroid_crushing_2, change = 0.1}
}
data_technology[tech_asteroid_productivity].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {electromagnetic_science_pack, 1},
    {agricultural_science_pack, 1},
    {metallurgic_science_pack, 1}
}
data_technology[tech_asteroid_productivity].max_level = 30

data_technology[tech_advanced_full_asteroid_processing].prerequisites = {tech_molybdenum_synthesis, tech_rhenium_synthesis, tech_holmium_synthesis}

if mods ["CargoBayLimitResearch"] then
    data_technology["cargo-bay-limit-1"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
    data_technology["cargo-bay-limit-2"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
    data_technology["cargo-bay-limit-3"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1}
    }
end

-- VULCANUS
table.insert(data_technology[planet_discovery_vulcanus].effects, {type = unlock_recipe, recipe = vulcanus_air})
table.insert(data_technology[planet_discovery_vulcanus].effects, {type = unlock_recipe, recipe = vulcanus_air_separation})
data_technology[planet_discovery_vulcanus].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1}
}

data_technology[tungsten_carbide].prerequisites = {tech_wolframite_processing_1, tech_powder_metallurgy_6}
data_technology[tungsten_carbide].effects =
{
    {type = unlock_recipe, recipe = carbon},
    {type = unlock_recipe, recipe = tungsten_carbide}
}
data_technology[tungsten_carbide].research_trigger =
{
    type = craft_item,
    item = wolframite_crushed,
    count = 256
}

saphirite_from_lava = "molten-iron-from-lava"
stiratite_from_lava = "molten-copper-from-lava"
molten_iron = "molten-iron"
molten_copper = "molten-copper"
casting_iron = "casting-iron"
casting_steel = "casting-steel"
casting_copper = "casting-copper"
casting_iron_rod = "casting-iron-stick"
casting_iron_gear_wheel = "casting-iron-gear-wheel"
casting_low_density_structure = "casting-low-density-structure"
casting_copper_cable = "casting-copper-cable"
casting_iron_pipe = "casting-pipe"
casting_iron_pipe_to_ground = "casting-pipe-to-ground"
data_technology[foundry].effects =
{
    {type = unlock_recipe, recipe = foundry},
    -- LAVA
    {type = unlock_recipe, recipe = lava},
    {type = unlock_recipe, recipe = saphirite_from_lava},
    {type = unlock_recipe, recipe = jivolite_from_lava},
    {type = unlock_recipe, recipe = stiratite_from_lava},
    {type = unlock_recipe, recipe = crotinnium_from_lava},
    {type = unlock_recipe, recipe = rubyte_from_lava},
    {type = unlock_recipe, recipe = bobmonium_from_lava},
    -- MOLTEN
    {type = unlock_recipe, recipe = molten_iron},
    {type = unlock_recipe, recipe = molten_steel},
    {type = unlock_recipe, recipe = molten_copper},
    {type = unlock_recipe, recipe = molten_lead},
    {type = unlock_recipe, recipe = molten_tin},
    {type = unlock_recipe, recipe = molten_manganese},
    {type = unlock_recipe, recipe = molten_magnesium},
    {type = unlock_recipe, recipe = molten_nickel},
    {type = unlock_recipe, recipe = molten_aluminium},
    {type = unlock_recipe, recipe = molten_zinc},
    {type = unlock_recipe, recipe = molten_silver},
    {type = unlock_recipe, recipe = molten_titanium},
    {type = unlock_recipe, recipe = molten_gold},
    {type = unlock_recipe, recipe = molten_cobalt},
    {type = unlock_recipe, recipe = molten_chromium},
    {type = unlock_recipe, recipe = molten_platinum},
    {type = unlock_recipe, recipe = molten_glass},
    {type = unlock_recipe, recipe = molten_solder},
    {type = unlock_recipe, recipe = molten_bronze},
    {type = unlock_recipe, recipe = molten_brass},
    {type = unlock_recipe, recipe = molten_invar},
    {type = unlock_recipe, recipe = molten_cobalt_steel},
    {type = unlock_recipe, recipe = molten_nitinol},
    -- PLATE
    {type = unlock_recipe, recipe = casting_iron},
    {type = unlock_recipe, recipe = casting_steel},
    {type = unlock_recipe, recipe = casting_copper},
    {type = unlock_recipe, recipe = casting_lead},
    {type = unlock_recipe, recipe = casting_tin},
    {type = unlock_recipe, recipe = casting_nickel},
    {type = unlock_recipe, recipe = casting_aluminium},
    {type = unlock_recipe, recipe = casting_zinc},
    {type = unlock_recipe, recipe = casting_silver},
    {type = unlock_recipe, recipe = casting_titanium},
    {type = unlock_recipe, recipe = casting_gold},
    {type = unlock_recipe, recipe = casting_platinum},
    {type = unlock_recipe, recipe = casting_glass},
    {type = unlock_recipe, recipe = casting_solder},
    {type = unlock_recipe, recipe = casting_bronze},
    {type = unlock_recipe, recipe = casting_brass},
    {type = unlock_recipe, recipe = casting_invar},
    {type = unlock_recipe, recipe = casting_cobalt_steel},
    {type = unlock_recipe, recipe = casting_nitinol},
    -- ROD
    {type = unlock_recipe, recipe = casting_iron_rod},
    {type = unlock_recipe, recipe = casting_steel_rod},
    {type = unlock_recipe, recipe = casting_titanium_rod},
    -- GEAR WHEEL
    {type = unlock_recipe, recipe = casting_iron_gear_wheel},
    {type = unlock_recipe, recipe = casting_steel_gear_wheel},
    {type = unlock_recipe, recipe = casting_brass_gear_wheel},
    {type = unlock_recipe, recipe = casting_cobalt_steel_gear_wheel},
    {type = unlock_recipe, recipe = casting_titanium_gear_wheel},
    {type = unlock_recipe, recipe = casting_nitinol_gear_wheel},
    -- BEARING BALL
    {type = unlock_recipe, recipe = casting_iron_bearing_ball},
    {type = unlock_recipe, recipe = casting_steel_bearing_ball},
    {type = unlock_recipe, recipe = casting_brass_bearing_ball},
    {type = unlock_recipe, recipe = casting_cobalt_steel_bearing_ball},
    {type = unlock_recipe, recipe = casting_titanium_bearing_ball},
    {type = unlock_recipe, recipe = casting_nitinol_bearing_ball},
    -- BEARING
    {type = unlock_recipe, recipe = casting_iron_bearing},
    {type = unlock_recipe, recipe = casting_steel_bearing},
    {type = unlock_recipe, recipe = casting_brass_bearing},
    {type = unlock_recipe, recipe = casting_cobalt_steel_bearing},
    {type = unlock_recipe, recipe = casting_titanium_bearing},
    {type = unlock_recipe, recipe = casting_nitinol_bearing},
    -- CABLE
    {type = unlock_recipe, recipe = casting_copper_cable},
    {type = unlock_recipe, recipe = casting_tin_cable},
    {type = unlock_recipe, recipe = casting_silver_cable},
    {type = unlock_recipe, recipe = casting_gold_cable},
    {type = unlock_recipe, recipe = casting_platinum_cable},
    -- PIPE
    {type = unlock_recipe, recipe = casting_iron_pipe},
    {type = unlock_recipe, recipe = casting_copper_pipe},
    {type = unlock_recipe, recipe = casting_bronze_pipe},
    {type = unlock_recipe, recipe = casting_steel_pipe},
    {type = unlock_recipe, recipe = casting_brass_pipe},
    {type = unlock_recipe, recipe = casting_titanium_pipe},
    {type = unlock_recipe, recipe = casting_nitinol_pipe},
    -- PIPE TO GROUND
    {type = unlock_recipe, recipe = casting_iron_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_copper_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_bronze_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_steel_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_brass_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_titanium_pipe_to_ground},
    {type = unlock_recipe, recipe = casting_nitinol_pipe_to_ground},
    -- OTHERS
    {type = unlock_recipe, recipe = casting_low_density_structure},
}
data_technology[foundry].research_trigger =
{
    type = craft_item,
    item = tungsten_carbide_plate_bob,
    count = 256
}

data_technology[big_mining_drill].prerequisites = {foundry, tech_drills_6}

data_technology[metallurgic_science_pack].research_trigger =
{
    type = craft_item,
    item = tungsten_plate_bob,
    count = 256
}

data_technology[vulcanus_transport_belt].localised_name = {"technology-name.vulcanus-transport-belt"}
data_technology[vulcanus_transport_belt].prerequisites = {metallurgic_science_pack, tech_logistics_5}
data_technology[vulcanus_transport_belt].effects =
{
    {type = unlock_recipe, recipe = vulcanus_transport_belt},
    {type = unlock_recipe, recipe = vulcanus_underground_belt},
    {type = unlock_recipe, recipe = vulcanus_splitter}
}
if mods [bobtech] then
    data_technology[vulcanus_transport_belt].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {transport_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }
else
    data_technology[vulcanus_transport_belt].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }
end

data_technology["asteroid-reprocessing"].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {metallurgic_science_pack, 1}
}

if mods [vulcanus_sulfuric_bacteria_mods] then
    data_technology["sulfuric-bacteria-melting"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }
end

if settings.startup[setting_early_cliff_explosives].value then
    data_technology[cliff_explosives].prerequisites = {explosives, "bob-fluid-barrel-processing", military_science_pack, tech_stone_smelting_1}
    data_technology[cliff_explosives].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1}
    }
else
    data_technology[cliff_explosives].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }
end

-- GLEBA
data_technology[planet_discovery_gleba].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1}
}

table.insert(data_technology[jellynut].effects, {type = unlock_recipe, recipe = jivolite_bacteria})
table.insert(data_technology[yumako].effects, {type = unlock_recipe, recipe = crotinnium_bacteria})
nutrients_from_yumako_mash = "nutrients-from-yumako-mash"
burnt_spoilage = "burnt-spoilage"
data_technology[biochamber].effects =
{
    {type = unlock_recipe, recipe = biochamber},
    {type = unlock_recipe, recipe = "nutrients-from-jelly"},
    {type = unlock_recipe, recipe = nutrients_from_yumako_mash},
    {type = unlock_recipe, recipe = burnt_spoilage},
    {type = unlock_recipe, recipe = pentapod_egg},
    {type = unlock_recipe, recipe = rubyte_bacteria},
    {type = unlock_recipe, recipe = bobmonium_bacteria}
}

local bacteria_cultivation = "bacteria-cultivation"
saphirite_bacteria_cultivation = "iron-bacteria-cultivation"
stiratite_bacteria_cultivation = "copper-bacteria-cultivation"
data_technology[bacteria_cultivation].effects =
{
    {type = unlock_recipe, recipe = saphirite_bacteria_cultivation},
    {type = unlock_recipe, recipe = jivolite_bacteria_cultivation},
    {type = unlock_recipe, recipe = stiratite_bacteria_cultivation},
    {type = unlock_recipe, recipe = crotinnium_bacteria_cultivation},
    {type = unlock_recipe, recipe = rubyte_bacteria_cultivation},
    {type = unlock_recipe, recipe = bobmonium_bacteria_cultivation}
}
data_technology[bacteria_cultivation].research_trigger =
{
    type = craft_item,
    item = bioflux,
    count = 256
}

toolbelt_eq = "toolbelt-equipment"
data_technology[toolbelt_eq].prerequisites = {carbon_fiber}

factorian_fish_breeding = "fish-breeding"
nutrients_from_factorian_fish = "nutrients-from-fish"
data_technology[factorian_fish_breeding].effects =
{
    {type = unlock_recipe, recipe = factorian_fish_breeding},
    {type = unlock_recipe, recipe = nutrients_from_factorian_fish},
    {type = unlock_recipe, recipe = "breeding-angels-alien-fish-1-raw"},
    {type = unlock_recipe, recipe = "nutrients-from-angels-alien-fish-1-raw"},
    {type = unlock_recipe, recipe = "breeding-angels-alien-fish-2-raw"},
    {type = unlock_recipe, recipe = "nutrients-from-angels-alien-fish-2-raw"},
    {type = unlock_recipe, recipe = "breeding-angels-alien-fish-3-raw"},
    {type = unlock_recipe, recipe = "nutrients-from-angels-alien-fish-3-raw"}
}

data_technology[carbon_fiber].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {agricultural_science_pack, 1}
}

data_technology[toolbelt_eq].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {agricultural_science_pack, 1}
}

data_technology[rocket_turret].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {military_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {agricultural_science_pack, 1}
}

data_technology["health"].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {military_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {agricultural_science_pack, 1}
}

data_technology[plastic .. _productivity].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {agricultural_science_pack, 1}
}

data_technology[rocket_fuel .. _productivity].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {agricultural_science_pack, 1}
}

data_technology["tree-seeding"].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {agricultural_science_pack, 1}
}

data_technology[factorian_fish_breeding].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {agricultural_science_pack, 1}
}

tech_transport_belt_capacity_1 = "transport-belt-capacity-1"
tech_transport_belt_capacity_2 = "transport-belt-capacity-2"
if mods [loaders_modernized] then
    data_technology[stack_inserter].prerequisites = {carbon_fiber, "bob-bulk-inserter-4", vulcanus_transport_belt}
    data_technology[stack_inserter].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology[tech_transport_belt_capacity_1].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology[tech_transport_belt_capacity_2].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1},
        {metallurgic_science_pack, 1}
    }
else
    data_technology[stack_inserter].prerequisites = {carbon_fiber, "bob-bulk-inserter-4"}
end

if mods [bobtech] then
    table.insert(data_technology[stack_inserter].unit.ingredients, {transport_science_pack, 1})
    table.insert(data_technology[tech_transport_belt_capacity_1].unit.ingredients, {transport_science_pack, 1})
    table.insert(data_technology[tech_transport_belt_capacity_2].unit.ingredients, {transport_science_pack, 1})
end

data_technology["captivity"].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1},
    {agricultural_science_pack, 1}
}

-- FULGORA
table.insert(data_technology[planet_discovery_fulgora].prerequisites, tech_electric_energy_accumulators_4)
table.insert(data_technology[planet_discovery_fulgora].effects, {type = unlock_recipe, recipe = steel_rod})
table.insert(data_technology[planet_discovery_fulgora].effects, {type = unlock_recipe, recipe = fulgora_air})
table.insert(data_technology[planet_discovery_fulgora].effects, {type = unlock_recipe, recipe = fulgora_air_separation})
data_technology[planet_discovery_fulgora].unit.ingredients =
{
    {automation_science_pack, 1},
    {logistic_science_pack, 1},
    {chemical_science_pack, 1},
    {production_science_pack, 1},
    {utility_science_pack, 1},
    {space_science_pack, 1}
}

table.insert(data_technology[recycling].effects, {type = unlock_recipe, recipe = construction_scrap_recycling})
table.insert(data_technology[recycling].effects, {type = unlock_recipe, recipe = machinery_scrap_recycling})

data_technology[tech_holmium_processing].prerequisites = {tech_brannerite_processing_1}
data_technology[tech_holmium_processing].effects =
{
    {type = unlock_recipe, recipe = calcium_chloride_solution_from_lime},
    {type = unlock_recipe, recipe = calcium},
    {type = unlock_recipe, recipe = holmium_chloride_III_solution},
    {type = unlock_recipe, recipe = holmium_fluoride_III},
    {type = unlock_recipe, recipe = holmium_cathode},
    {type = unlock_recipe, recipe = holmium_ingot},
    {type = unlock_recipe, recipe = holmium_powder},
    {type = unlock_recipe, recipe = holmium_molten},
    {type = unlock_recipe, recipe = holmium_plate}
}
data_technology[tech_holmium_processing].research_trigger =
{
    type = craft_item,
    item = holmium_ore,
    count = 256
}

data_technology[electromagnetic_science_pack].research_trigger =
{
    type = craft_item,
    item = supercapacitor,
    count = 256
}

data_technology[mech_armor].prerequisites = {electromagnetic_science_pack, "bob-power-armor-5"}
table.insert(data_technology[mech_armor].unit.ingredients, {production_science_pack, 1})

-- AQUILO
if mods ["AsteroidBelt"] then
    local space_discovery_asteroid_belt = "space-discovery-asteroid-belt"
    table.insert(data_technology[space_discovery_asteroid_belt].prerequisites, tech_advanced_ore_refining_6)
    table.insert(data_technology[space_discovery_asteroid_belt].prerequisites, tech_water_treatment_6)
    data_technology[space_discovery_asteroid_belt].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1}
    }
end

local planet_discovery_aquilo = "planet-discovery-aquilo"
table.insert(data_technology[planet_discovery_aquilo].prerequisites, tech_advanced_ore_refining_6)
table.insert(data_technology[planet_discovery_aquilo].prerequisites, tech_water_treatment_6)

table.insert(data_technology[planet_discovery_aquilo].effects, {type = unlock_recipe, recipe = antimonite_asteroid_crushing})
table.insert(data_technology[planet_discovery_aquilo].effects, {type = unlock_recipe, recipe = germanite_asteroid_crushing})
table.insert(data_technology[planet_discovery_aquilo].effects, {type = unlock_recipe, recipe = aquilo_air})
table.insert(data_technology[planet_discovery_aquilo].effects, {type = unlock_recipe, recipe = aquilo_air_separation})
table.insert(data_technology[planet_discovery_aquilo].effects, {type = unlock_recipe, recipe = nitrogen_trifluoride_gas})
table.insert(data_technology[planet_discovery_aquilo].effects, {type = unlock_recipe, recipe = nitrogen_trifluoride_liquefied})
table.insert(data_technology[planet_discovery_aquilo].effects, {type = unlock_recipe, recipe = nitrogen_trifluoride_liquefied_elecrolysis})

data_technology[heating_tower].effects = {{type = unlock_recipe, recipe = heating_tower}}

local tech_lithium_processing = "lithium-processing"
data_technology[tech_lithium_processing].effects =
{
    {type = unlock_recipe, recipe = lithium},
    {type = unlock_recipe, recipe = lithium_plate}
}

table.insert(data_technology[cryogenic_plant].prerequisites, tech_antimony_smelting_1)
table.insert(data_technology[cryogenic_plant].prerequisites, tech_germanium_smelting_1)
data_technology[cryogenic_plant].effects =
{
    {type = unlock_recipe, recipe = nitrobenzene_liquid},
    {type = unlock_recipe, recipe = aniline_liquid},
    {type = unlock_recipe, recipe = sodium_nitrite},
    {type = unlock_recipe, recipe = benzenediazonium_chloride_solution},
    {type = unlock_recipe, recipe = hydrocyanic_acid},
    {type = unlock_recipe, recipe = lactic_acid},
    {type = unlock_recipe, recipe = ethanol_from_chloroethane_gas},
    {type = unlock_recipe, recipe = ethyl_lactate_liquid},
    {type = unlock_recipe, recipe = photoresist_liquid},
    {type = unlock_recipe, recipe = semiconductor},
    {type = unlock_recipe, recipe = cryogenic_plant},
    {type = unlock_recipe, recipe = hydogen_fluoride_gas},
    {type = unlock_recipe, recipe = chloroform_liquid},
    {type = unlock_recipe, recipe = difluorochloromethane_gas},
    {type = unlock_recipe, recipe = tetrafluoroethylene_gas},
    {type = unlock_recipe, recipe = hexafluoropropylene_gas},
    {type = unlock_recipe, recipe = hexafluoropropylene_oxide_gas},
    {type = unlock_recipe, recipe = fluoroketone_hot},
    {type = unlock_recipe, recipe = fluoroketone_cold},
    {type = unlock_recipe, recipe = nitrogen_liquid}
}
data_technology[cryogenic_plant].research_trigger =
{
    type = craft_item,
    item = lithium_bob,
    count = 256
}

table.insert(data_technology[fusion_reactor].prerequisites, tech_tritium_power)
table.insert(data_technology[fusion_reactor].effects, {type = unlock_recipe, recipe = advanced_tritium_fuel_cell_reprocessing})

if mods [bobequipment] then
    data_technology[fusion_reactor_eq].prerequisites = {fusion_reactor, fission_reactor_4}
else
    data_technology[fusion_reactor_eq].prerequisites = {fusion_reactor, fission_reactor_1}
end