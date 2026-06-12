-- BACTERIA
data_item[saphirite_bacteria].localised_name = {"item-name.saphirite-bacteria"}
data_item[saphirite_bacteria].subgroup = is_bacteria_ore
data_item[saphirite_bacteria].order = a
data_item[saphirite_bacteria].stack_size = 200
data_item[saphirite_bacteria].spoil_result = ore_saphirite
data_recipe[saphirite_bacteria].localised_name = {"item-name.saphirite-bacteria"}
data_recipe[saphirite_bacteria].subgroup = is_bacteria_ore
data_recipe[saphirite_bacteria].icons = TWO_D_I(jelly, nil, saphirite_bacteria, spoilage)
data_recipe[saphirite_bacteria].order = a
data_recipe[saphirite_bacteria].ingredients[1].amount = 4
data_recipe[saphirite_bacteria].results =
{
    {type = item, name = saphirite_bacteria, amount = 1, probability = 0.25},
    {type = item, name = spoilage, amount = 4}
}

data_item[stiratite_bacteria].localised_name = {"item-name.stiratite-bacteria"}
data_item[stiratite_bacteria].subgroup = is_bacteria_ore
data_item[stiratite_bacteria].order = c
data_item[stiratite_bacteria].stack_size = 200
data_item[stiratite_bacteria].spoil_result = ore_stiratite
data_recipe[stiratite_bacteria].localised_name = {"item-name.stiratite-bacteria"}
data_recipe[stiratite_bacteria].subgroup = is_bacteria_ore
data_recipe[stiratite_bacteria].icons = TWO_D_I(yumako, nil, stiratite_bacteria, spoilage)
data_recipe[stiratite_bacteria].order = c
data_recipe[stiratite_bacteria].ingredients[1].amount = 4
data_recipe[stiratite_bacteria].results =
{
    {type = item, name = stiratite_bacteria, amount = 1, probability = 0.25},
    {type = item, name = spoilage, amount = 4}
}

data_recipe[saphirite_bacteria_cultivation].localised_name = {"recipe-name.saphirite-bacteria-cultivation"}
data_recipe[saphirite_bacteria_cultivation].subgroup = is_bacteria_cultivation
data_recipe[saphirite_bacteria_cultivation].icons = STONKS_I(stonks_png, saphirite_bacteria)
data_recipe[saphirite_bacteria_cultivation].order = a
data_recipe[saphirite_bacteria_cultivation].ingredients =
{
    {type = item, name = saphirite_bacteria, amount = 2},
    {type = item, name = bioflux, amount = 1}
}

data_recipe[stiratite_bacteria_cultivation].localised_name = {"recipe-name.stiratite-bacteria-cultivation"}
data_recipe[stiratite_bacteria_cultivation].subgroup = is_bacteria_cultivation
data_recipe[stiratite_bacteria_cultivation].icons = STONKS_I(stonks_png, stiratite_bacteria)
data_recipe[stiratite_bacteria_cultivation].order = c
data_recipe[stiratite_bacteria_cultivation].ingredients =
{
    {type = item, name = stiratite_bacteria, amount = 2},
    {type = item, name = bioflux, amount = 1}
}

-- SPOILAGE
data_item[spoilage].subgroup = is_spoilage
data_item[spoilage].order = a
data_item[spoilage].fuel_category = base_fuel
data_item[spoilage].fuel_value = 225 .. kJ

data_recipe[burnt_spoilage].subgroup = is_spoilage
data_recipe[burnt_spoilage].icons = TWO_I(spoilage, carbon_angels)
data_recipe[burnt_spoilage].order = b
data_recipe[burnt_spoilage].energy_required = 16
data_recipe[burnt_spoilage].ingredients[1].amount = 8

-- NUTRIENTS
data_item[nutrients].subgroup = is_nutrients
data_item[nutrients].order = a
data_item[nutrients].stack_size = 200

local nutrients_from_spoilage = "nutrients-from-spoilage"
data_recipe[nutrients_from_spoilage].localised_name = {"recipe-name.nutrients-from-spoilage"}
data_recipe[nutrients_from_spoilage].subgroup = is_nutrients
data_recipe[nutrients_from_spoilage].icons = TWO_I(spoilage, nutrients)
data_recipe[nutrients_from_spoilage].order = a_a
data_recipe[nutrients_from_spoilage].ingredients[1].amount = 8

data_recipe[nutrients_from_yumako_mash].localised_name = {"recipe-name.nutrients-from-yumako-mash"}
data_recipe[nutrients_from_yumako_mash].subgroup = is_nutrients
data_recipe[nutrients_from_yumako_mash].icons = TWO_I(yumako_mash, nutrients)
data_recipe[nutrients_from_yumako_mash].order = a_c
data_recipe[nutrients_from_yumako_mash].ingredients[1].amount = 4

local nutrients_from_bioflux = "nutrients-from-bioflux"
data_recipe[nutrients_from_bioflux].localised_name = {"recipe-name.nutrients-from-bioflux"}
data_recipe[nutrients_from_bioflux].subgroup = is_nutrients
data_recipe[nutrients_from_bioflux].icons = TWO_I(bioflux, nutrients)
data_recipe[nutrients_from_bioflux].order = a_d
data_recipe[nutrients_from_bioflux].ingredients[1].amount = 4
data_recipe[nutrients_from_bioflux].results[1].amount = 32

local nutrients_from_biter_egg = "nutrients-from-biter-egg"
data_recipe[nutrients_from_biter_egg].category = organic
data_recipe[nutrients_from_biter_egg].localised_name = {"recipe-name.nutrients-from-biter-egg"}
data_recipe[nutrients_from_biter_egg].subgroup = is_nutrients
data_recipe[nutrients_from_biter_egg].icons = TWO_I(biter_egg, nutrients)
data_recipe[nutrients_from_biter_egg].order = a_e
data_recipe[nutrients_from_biter_egg].results[1].amount = 16

data_recipe[nutrients_from_factorian_fish].localised_name = {"recipe-name.nutrients-from-factorian-fish"}
data_recipe[nutrients_from_factorian_fish].category = organic
data_recipe[nutrients_from_factorian_fish].subgroup = is_nutrients
data_recipe[nutrients_from_factorian_fish].icons = TWO_I(factorian_fish, nutrients)
data_recipe[nutrients_from_factorian_fish].order = a_r
data_recipe[nutrients_from_factorian_fish].results[1].amount = 16
data_recipe[nutrients_from_factorian_fish].allow_productivity = true
data_recipe[nutrients_from_factorian_fish].allow_quality = true

if mods [corrundum_mods] then
    local calcium_sulfate_bioflux = "calcium-sulfate-bioflux"
    data_recipe[calcium_sulfate_bioflux].subgroup = is_nutrients
    data_recipe[calcium_sulfate_bioflux].icons = THREE_D_I(bioflux, carbon_angels, calcium_sulfate_angels, nutrients)
    data_recipe[calcium_sulfate_bioflux].order = "a-d-a"

    local calcium_sulfate_egg = "calcium-sulfate-egg"
    data_recipe[calcium_sulfate_egg].subgroup = is_nutrients
    data_recipe[calcium_sulfate_egg].icons = THREE_D_I(biter_egg, carbon_angels, calcium_sulfate_angels, nutrients)
    data_recipe[calcium_sulfate_egg].order = "a-e-a"

    local calcium_sulfate_fish = "calcium-sulfate-fish"
    data_recipe[calcium_sulfate_fish].subgroup = is_nutrients
    data_recipe[calcium_sulfate_fish].icons = THREE_D_I(factorian_fish, carbon_angels, calcium_sulfate_angels, nutrients)
    data_recipe[calcium_sulfate_fish].order = "a-f-a"
end

-- JELLYNUT
data_capsule[jellynut].subgroup = is_jellynut
data_capsule[jellynut].order = a
data_capsule[jellynut].stack_size = 200
data_capsule[jellynut].fuel_category = base_fuel
data_capsule[jellynut].fuel_value = 7200 .. kJ

local jellynut_seed = "jellynut-seed"
data_item[jellynut_seed].subgroup = is_jellynut
data_item[jellynut_seed].order = b
data_item[jellynut_seed].stack_size = 200
data_item[jellynut_seed].fuel_category = base_fuel
data_item[jellynut_seed].fuel_value = 3600 .. kJ

data_capsule[jelly].subgroup = is_jellynut
data_capsule[jelly].order = c
data_capsule[jelly].stack_size = 200
data_capsule[jelly].fuel_category = base_fuel
data_capsule[jelly].fuel_value = 900 .. kJ
data_capsule[jelly].spoil_ticks = 5 * minute

local jellynut_processing = "jellynut-processing"
data_recipe[jellynut_processing].subgroup = is_jellynut
data_recipe[jellynut_processing].icons = TWO_D_I(jellynut, nil, jelly, jellynut_seed)
data_recipe[jellynut_processing].order = c_a
data_recipe[jellynut_processing].results =
{
    {type = item, name = jelly, amount = 4},
    {type = item, name = jellynut_seed, amount = 1, probability = 0.03125}
}

local artificial_jellynut_soil = "artificial-jellynut-soil"
data_item[artificial_jellynut_soil].subgroup = is_jellynut
data_item[artificial_jellynut_soil].order = d
data_item[artificial_jellynut_soil].stack_size = 200
data_recipe[artificial_jellynut_soil].subgroup = is_jellynut
data_recipe[artificial_jellynut_soil].order = d
data_recipe[artificial_jellynut_soil].ingredients[2].amount = 64
data_recipe[artificial_jellynut_soil].ingredients[3].amount = 4

local overgrowth_jellynut_soil = "overgrowth-jellynut-soil"
data_item[overgrowth_jellynut_soil].subgroup = is_jellynut
data_item[overgrowth_jellynut_soil].order = e
data_item[overgrowth_jellynut_soil].stack_size = 200
data_recipe[overgrowth_jellynut_soil].subgroup = is_jellynut
data_recipe[overgrowth_jellynut_soil].order = e
data_recipe[overgrowth_jellynut_soil].ingredients[2].amount = 4
data_recipe[overgrowth_jellynut_soil].ingredients[3].amount = 8
data_recipe[overgrowth_jellynut_soil].ingredients[4].amount = 64
data_recipe[overgrowth_jellynut_soil].ingredients[5].amount = 120

-- YUMAKO
data_capsule[yumako].subgroup = is_yumako
data_capsule[yumako].order = a
data_capsule[yumako].stack_size = 200
data_capsule[yumako].fuel_category = base_fuel
data_capsule[yumako].fuel_value = 1800 .. kJ

local yumako_seed = "yumako-seed"
data_item[yumako_seed].subgroup = is_yumako
data_item[yumako_seed].order = b
data_item[yumako_seed].stack_size = 200
data_item[yumako_seed].fuel_category = base_fuel
data_item[yumako_seed].fuel_value = 3600 .. kJ

data_capsule[yumako_mash].subgroup = is_yumako
data_capsule[yumako_mash].order = c
data_capsule[yumako_mash].stack_size = 200
data_capsule[yumako_mash].fuel_category = base_fuel
data_capsule[yumako_mash].fuel_value = 900 .. kJ
data_capsule[yumako_mash].spoil_ticks = 5 * minute

local yumako_processing = "yumako-processing"
data_recipe[yumako_processing].subgroup = is_yumako
data_recipe[yumako_processing].icons = TWO_D_I(yumako, nil, yumako_mash, yumako_seed)
data_recipe[yumako_processing].order = c_a
data_recipe[yumako_processing].results =
{
    {type = item, name = yumako_mash, amount = 4},
    {type = item, name = yumako_seed, amount = 1, probability = 0.03125}
}

local artificial_yumako_soil = "artificial-yumako-soil"
data_item[artificial_yumako_soil].subgroup = is_yumako
data_item[artificial_yumako_soil].order = d
data_item[artificial_yumako_soil].stack_size = 200
data_recipe[artificial_yumako_soil].subgroup = is_yumako
data_recipe[artificial_yumako_soil].order = d
data_recipe[artificial_yumako_soil].ingredients[2].amount = 64
data_recipe[artificial_yumako_soil].ingredients[3].amount = 4

local overgrowth_yumako_soil = "overgrowth-yumako-soil"
data_item[overgrowth_yumako_soil].subgroup = is_yumako
data_item[overgrowth_yumako_soil].order = e
data_item[overgrowth_yumako_soil].stack_size = 200
data_recipe[overgrowth_yumako_soil].subgroup = is_yumako
data_recipe[overgrowth_yumako_soil].order = e
data_recipe[overgrowth_yumako_soil].ingredients[2].amount = 4
data_recipe[overgrowth_yumako_soil].ingredients[3].amount = 8
data_recipe[overgrowth_yumako_soil].ingredients[4].amount = 64
data_recipe[overgrowth_yumako_soil].ingredients[5].amount = 120

-- PENTAPOD EGG AND BIOFLUX
data_item[pentapod_egg].subgroup = is_pentapod_egg_and_bioflux
data_item[pentapod_egg].order = a
data_item[pentapod_egg].stack_size = 200
data_item[pentapod_egg].fuel_category = base_fuel
data_item[pentapod_egg].fuel_value = 7200 .. kJ
data_recipe[pentapod_egg].subgroup = is_pentapod_egg_and_bioflux
data_recipe[pentapod_egg].icons = STONKS_I(stonks_png, pentapod_egg)
data_recipe[pentapod_egg].order = a
data_recipe[pentapod_egg].energy_required = 16
data_recipe[pentapod_egg].ingredients[2].amount = 32

if mods [secretas_frozeta_mods] then
    local pentapod_egg_unrestricted = "pentapod-egg-unrestricted"
    data_recipe[pentapod_egg_unrestricted].subgroup = is_pentapod_egg_and_bioflux
    data_recipe[pentapod_egg_unrestricted].icons = THREE_D_I(pentapod_egg, nutrients, water, pentapod_egg, nil, nil, number_2)
    data_recipe[pentapod_egg_unrestricted].order = a_a
end

data_capsule[bioflux].subgroup = is_pentapod_egg_and_bioflux
data_capsule[bioflux].order = b
data_capsule[bioflux].stack_size = 200
data_recipe[bioflux].subgroup = is_pentapod_egg_and_bioflux
data_recipe[bioflux].icons = THREE_I(jelly, yumako_mash, bioflux)
data_recipe[bioflux].order = b
data_recipe[bioflux].energy_required = 8
data_recipe[bioflux].ingredients[1].amount = 16
data_recipe[bioflux].ingredients[2].amount = 16

local bioplastic = "bioplastic"
data_recipe[bioplastic].subgroup = is_pentapod_egg_and_bioflux
data_recipe[bioplastic].icons = THREE_I(yumako_mash, bioflux, plastic)
data_recipe[bioplastic].order = b_a
data_recipe[bioplastic].results[1].amount = 4

local rocket_fuel_from_jelly = "rocket-fuel-from-jelly"
data_recipe[rocket_fuel_from_jelly].subgroup = is_pentapod_egg_and_bioflux
data_recipe[rocket_fuel_from_jelly].icons = BUILDING_R_I(rocket_fuel, planet_gleba)
data_recipe[rocket_fuel_from_jelly].order = b_c
data_recipe[rocket_fuel_from_jelly].energy_required = 8
data_recipe[rocket_fuel_from_jelly].ingredients[2].amount = 32

local biosulfur = "biosulfur"
data_recipe[biosulfur].subgroup = is_pentapod_egg_and_bioflux
data_recipe[biosulfur].icons = THREE_I(spoilage, bioflux, sulfur)
data_recipe[biosulfur].order = b_d
data_recipe[biosulfur].ingredients[1].amount = 4

local biolubricant = "biolubricant"
data_recipe[biolubricant].subgroup = is_pentapod_egg_and_bioflux
data_recipe[biolubricant].icons = TWO_I(jelly, lubricant)
data_recipe[biolubricant].order = b_e
data_recipe[biolubricant].energy_required = 4
data_recipe[biolubricant].ingredients[1].amount = 64
data_recipe[biolubricant].results[1].amount = 30

data_tool[agricultural_science_pack].subgroup = is_pentapod_egg_and_bioflux
data_tool[agricultural_science_pack].order = c
data_recipe[agricultural_science_pack].subgroup = is_pentapod_egg_and_bioflux
data_recipe[agricultural_science_pack].order = c

data_item[carbon_fiber].subgroup = is_pentapod_egg_and_bioflux
data_item[carbon_fiber].order = d
data_item[carbon_fiber].stack_size = 200
data_recipe[carbon_fiber].subgroup = is_pentapod_egg_and_bioflux
data_recipe[carbon_fiber].icons = THREE_I(carbon_angels, yumako_mash, carbon_fiber)
data_recipe[carbon_fiber].order = d
data_recipe[carbon_fiber].energy_required = 4
data_recipe[carbon_fiber].ingredients[1].amount = 8

-- GLEBA RECIPE
data_item[biter_egg].subgroup = is_gleba_recipe
data_item[biter_egg].order = a
data_item[biter_egg].stack_size = 200
data_item[biter_egg].fuel_category = base_fuel
data_item[biter_egg].fuel_value = 7200 .. kJ
data_recipe[biter_egg].subgroup = is_gleba_recipe
data_recipe[biter_egg].order = a
data_recipe[biter_egg].energy_required = 8
data_recipe[biter_egg].results[1].amount = 4

if mods [panglia_mods] then
    local cloning_biter_egg = "cloning-biter-egg"
    data_recipe[cloning_biter_egg].subgroup = is_gleba_recipe
    data_recipe[cloning_biter_egg].icons = STONKS_I(stonks_png, biter_egg)
    data_recipe[cloning_biter_egg].order = a_a
    data_recipe[cloning_biter_egg].energy_required = 32
    data_recipe[cloning_biter_egg].ingredients =
    {
        {type = item, name = bioflux, amount = 4},
        {type = item, name = biter_egg, amount = 2}
    }
end

local coal_synthesis = "coal-synthesis"
data_recipe[coal_synthesis].subgroup = is_gleba_recipe
data_recipe[coal_synthesis].icons = THREE_D_I(carbon_angels, sulfur, water, coal)
data_recipe[coal_synthesis].order = b_a
data_recipe[coal_synthesis].ingredients[1].amount = 4
data_recipe[coal_synthesis].ingredients[3].amount = 15

local wood_processing = "wood-processing"
data_recipe[wood_processing].icons = TWO_I(wood, tree_seed)
data_recipe[wood_processing].category = "angels-seed-extractor"
data_recipe[wood_processing].subgroup = is_gleba_recipe
data_recipe[wood_processing].order = c_a
data_recipe[wood_processing].surface_conditions = nil

data_recipe[factorian_fish_breeding].category = "angels-bio-refugium-fish"
data_recipe[factorian_fish_breeding].localised_name = {"recipe-name.breeding-factorian-fish"}
data_recipe[factorian_fish_breeding].subgroup = is_gleba_recipe
data_recipe[factorian_fish_breeding].icons = STONKS_I(stonks_png, factorian_fish)
data_recipe[factorian_fish_breeding].order = d_a
data_recipe[factorian_fish_breeding].energy_required = 32
data_recipe[factorian_fish_breeding].ingredients =
{
    {type = item, name = factorian_fish, amount = 2},
    {type = item, name = nutrients, amount = 64},
    {type = fluid, name = nutrient_pulp, amount = 120},
    {type = fluid, name = water_for_fish, amount = 120}
}
data_recipe[factorian_fish_breeding].results =
{
    {type = item, name = factorian_fish, amount_min = 4, amount_max = 8},
    {type = fluid, name = polluted_water_for_fish, amount = 120, ignored_by_productivity = 120}
}
data_recipe[factorian_fish_breeding].allow_productivity = true
data_recipe[factorian_fish_breeding].surface_conditions = nil

-- LOGISTICS
local RS_SI = 1800/21600
data_item[stack_inserter].subgroup = is_gleba_logistics
data_item[stack_inserter].order = a
data_item[stack_inserter].stack_size = 32
data_item[stack_inserter].weight = 31250
data_recipe[stack_inserter].subgroup = is_gleba_logistics
data_recipe[stack_inserter].order = a
data_recipe[stack_inserter].ingredients =
{
    {type = item, name = advanced_processing_unit, amount = 1},
    {type = item, name = T5_bulk_inserter, amount = 1},
    {type = item, name = jelly, amount = 8},
    {type = item, name = carbon_fiber, amount = 2}
}
data_inserter[stack_inserter].subgroup = is_gleba_logistics
data_inserter[stack_inserter].order = a
data_inserter[stack_inserter].rotation_speed = RS_SI
data_inserter[stack_inserter].extension_speed = 0.20
data_inserter[stack_inserter].energy_per_rotation = (600 / 2) / (RS_SI * 60) .. kJ
data_inserter[stack_inserter].energy_per_movement = (600 / 2) / (0.20 * 60) .. kJ

-- BUILDING
data_item[agricultural_tower].subgroup = is_gleba_building
data_item[agricultural_tower].order = a
data_item[agricultural_tower].stack_size = 32
data_item[agricultural_tower].weight = 31250
data_recipe[agricultural_tower].subgroup = is_gleba_building
data_recipe[agricultural_tower].order = a
data_recipe[agricultural_tower].energy_required = 8
data_recipe[agricultural_tower].ingredients[1].name = molybdenum_rhenium_plate
data_recipe[agricultural_tower].ingredients[1].amount = 8
data_recipe[agricultural_tower].ingredients[2].name = advanced_processing_unit
data_recipe[agricultural_tower].ingredients[2].amount = 4
data_recipe[agricultural_tower].ingredients[3].amount = 16
data_agricultural_tower[agricultural_tower].subgroup = is_gleba_building
data_agricultural_tower[agricultural_tower].order = a
data_agricultural_tower[agricultural_tower].energy_usage = 120 .. kW

data_item[heating_tower].subgroup = is_gleba_building
data_item[heating_tower].order = b
data_item[heating_tower].stack_size = 32
data_item[heating_tower].weight = 31250
data_recipe[heating_tower].subgroup = is_gleba_building
data_recipe[heating_tower].order = b
data_recipe[heating_tower].energy_required = 8
data_recipe[heating_tower].ingredients =
{
    {type = item, name = boiler_4, amount = 2},
    {type = item, name = heat_pipe_2, amount = 4},
    {type = item, name = reinforced_concrete, amount = 16}
}
data_reactor[heating_tower].subgroup = is_gleba_building
data_reactor[heating_tower].order = b
data_reactor[heating_tower].consumption = 14400 .. kW
data_reactor[heating_tower].energy_source.fuel_categories = {base_fuel, advanced_fuel}
data_reactor[heating_tower].energy_source.effectivity = 2
data_reactor[heating_tower].energy_source.emissions_per_minute.pollution = 128
data_reactor[heating_tower].heat_buffer.max_temperature = 1250
data_reactor[heating_tower].heat_buffer.specific_heat = 1440 .. kJ
data_reactor[heating_tower].heat_buffer.max_transfer = 7200000 .. kW
data_reactor[heating_tower].heat_buffer.minimum_glow_temperature = 250

data_item[biochamber].subgroup = is_gleba_building
data_item[biochamber].order = c
data_item[biochamber].stack_size = 32
data_item[biochamber].weight = 31250
data_recipe[biochamber].subgroup = is_gleba_building
data_recipe[biochamber].order = c
data_recipe[biochamber].energy_required = 16
data_recipe[biochamber].ingredients[1].amount = 4
data_recipe[biochamber].ingredients[3].name = molybdenum_rhenium_plate
data_recipe[biochamber].ingredients[3].amount = 16
data_recipe[biochamber].ingredients[4].name = advanced_processing_unit
data_recipe[biochamber].ingredients[4].amount = 4
data_assembling[biochamber].subgroup = is_gleba_building
data_assembling[biochamber].order = c

data_item[biolab].subgroup = is_gleba_building
data_item[biolab].order = d
data_item[biolab].stack_size = 16
data_item[biolab].weight = 62500
data_recipe[biolab].subgroup = is_gleba_building
data_recipe[biolab].order = d
data_recipe[biolab].energy_required = 8
if mods [bobtech] then
    data_recipe[biolab].ingredients[1].name = lab_2
end
data_recipe[biolab].ingredients[2].amount = 8
data_recipe[biolab].ingredients[3].amount = 32
data_recipe[biolab].ingredients[5].amount = 4
data_lab[biolab].subgroup = is_gleba_building
data_lab[biolab].order = d
data_lab[biolab].energy_usage = 240 .. kW

local captive_biter_spawner = "captive-biter-spawner"
data_item[captive_biter_spawner].subgroup = is_gleba_building
data_item[captive_biter_spawner].order = e
data_recipe[captive_biter_spawner].subgroup = is_gleba_building
data_recipe[captive_biter_spawner].order = e
data_recipe[captive_biter_spawner].energy_required = 8
data_recipe[captive_biter_spawner].ingredients[1].amount = 8
data_recipe[captive_biter_spawner].ingredients[3].amount = 16
data_recipe[captive_biter_spawner].ingredients[4].amount = 120
data_assembling[captive_biter_spawner].subgroup = is_gleba_building
data_assembling[captive_biter_spawner].order = e

-- WAR
local capture_robot_rocket = "capture-robot-rocket"
data_ammo[capture_robot_rocket].subgroup = is_gleba_war
data_ammo[capture_robot_rocket].order = a
data_ammo[capture_robot_rocket].stack_size = 64
data_ammo[capture_robot_rocket].weight = 15625
data_recipe[capture_robot_rocket].subgroup = is_gleba_war
data_recipe[capture_robot_rocket].order = a
data_recipe[capture_robot_rocket].energy_required = 8
data_recipe[capture_robot_rocket].ingredients[1].name = flying_robot_frame_4
data_recipe[capture_robot_rocket].ingredients[2].name = molybdenum_rhenium_plate
data_recipe[capture_robot_rocket].ingredients[3].amount = 16
data_recipe[capture_robot_rocket].ingredients[4].name = advanced_processing_unit

data_item[rocket_turret].subgroup = is_gleba_war
data_item[rocket_turret].order = b
data_recipe[rocket_turret].subgroup = is_gleba_war
data_recipe[rocket_turret].order = b
data_recipe[rocket_turret].ingredients[2].name = advanced_processing_unit
data_recipe[rocket_turret].ingredients[3].amount = 16
data_recipe[rocket_turret].ingredients[4].name = molybdenum_rhenium_plate
data_recipe[rocket_turret].ingredients[4].amount = 16
data_recipe[rocket_turret].ingredients[5].name = molybdenum_gear_wheel
data_ammo_turret[rocket_turret].subgroup = is_gleba_war
data_ammo_turret[rocket_turret].order = b
data_ammo_turret[rocket_turret].attack_parameters.min_range = 16
data_ammo_turret[rocket_turret].attack_parameters.range = 40

data_item[toolbelt_eq].subgroup = is_gleba_war
data_item[toolbelt_eq].order = c
data_item[toolbelt_eq].stack_size = 8
data_item[toolbelt_eq].weight = 125000
data_recipe[toolbelt_eq].subgroup = is_gleba_war
data_recipe[toolbelt_eq].order = c
data_recipe[toolbelt_eq].energy_required = 8
data_recipe[toolbelt_eq].ingredients[1].name = advanced_processing_unit
data_recipe[toolbelt_eq].ingredients[1].amount = 4
data_recipe[toolbelt_eq].ingredients[2].amount = 8

bobmods.lib.recipe.update_recycling_recipe
({
    stack_inserter,
    agricultural_tower,
    biochamber,
    capture_robot_rocket,
    rocket_turret,
    toolbelt_eq
})