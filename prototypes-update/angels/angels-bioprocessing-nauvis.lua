local _C6H10O5n_ = "(C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]10[/font]O[font=default-tiny-bold]5[/font])[font=default-tiny-bold]n[/font]"
local kJ = "kJ"
-- GREEN
local is_bio_green = "angels-bio-processing-green"
data_item[algae_green].order = a
data_item[algae_green].spoil_ticks = 180 * minute
data_item[algae_green].spoil_result = spoilage
data_recipe[algae_green].category = angels_bio_processing_1
data_recipe[algae_green].icons = THREE_R_I(water, algae_green, algae_brown)
data_recipe[algae_green].order = a
data_recipe[algae_green].energy_required = 32
data_recipe[algae_green].ingredients = {{type = fluid, name = water, amount = 120}}
data_recipe[algae_green].results =
{
    {type = item, name = algae_green, amount = 16},
    {type = item, name = algae_brown, amount = 4}
}
data_recipe[algae_green].main_product = algae_green

data_recipe[algae_green_simple].category = angels_bio_processing_2
data_recipe[algae_green_simple].icons = THREE_I(water_mineralized_angels, carbon_dioxide_angels, algae_green)
data_recipe[algae_green_simple].order = a_a
data_recipe[algae_green_simple].energy_required = 32
data_recipe[algae_green_simple].ingredients =
{
    {type = fluid, name = water_mineralized_angels, amount = 60},
    {type = fluid, name = carbon_dioxide_angels, amount = 60}
}
data_recipe[algae_green_simple].results = {{type = item, name = algae_green, amount = 32}}

data_item[cellulose_fiber_angels].localised_description = show_formula and {chemical_formula, _C6H10O5n_} or nil
data_item[cellulose_fiber_angels].subgroup = is_bio_green
data_item[cellulose_fiber_angels].order = b
data_item[cellulose_fiber_angels].fuel_value = 900 .. kJ
data_item[cellulose_fiber_angels].fuel_category = base_fuel
data_recipe[cellulose_fiber_angels].subgroup = is_bio_green
data_recipe[cellulose_fiber_angels].icons = TWO_I(algae_green, cellulose_fiber_angels)
data_recipe[cellulose_fiber_angels].order = b
data_recipe[cellulose_fiber_angels].energy_required = 4
data_recipe[cellulose_fiber_angels].ingredients[1].amount = 8
data_recipe[cellulose_fiber_angels].results[1].amount = 4

data_recipe[methanol_from_wood].icons = TWO_I(cellulose_fiber_angels, methanol_angels)
data_recipe[methanol_from_wood].order = b_a
data_recipe[methanol_from_wood].energy_required = 32 -- (C₆H₁₀O₅)n --> CH₄O
data_recipe[methanol_from_wood].ingredients[1].amount = 16
data_recipe[methanol_from_wood].results[1].amount = 120

data_item[paste_cellulose].order = c
data_recipe[paste_cellulose].icons = THREE_D_I(sodium_hydroxide_angels, cellulose_fiber_angels, chloromethane_angels, paste_cellulose)
data_recipe[paste_cellulose].order = c
data_recipe[paste_cellulose].ingredients[1].amount = 4
data_recipe[paste_cellulose].ingredients[2].amount = 4
data_recipe[paste_cellulose].ingredients[3].amount = 15
data_recipe[paste_cellulose].results[1].amount = 8

-- BROWN
data_item[algae_brown].stack_size = 200
data_item[algae_brown].spoil_ticks = 360 * minute
data_item[algae_brown].spoil_result = spoilage
data_recipe[algae_brown].icons = TWO_I(water_saline_angels, algae_brown)
data_recipe[algae_brown].energy_required = 32
data_recipe[algae_brown].ingredients[1].amount = 120
data_recipe[algae_brown].results[1].amount = 16

data_recipe[algae_brown_sodium_carbonate].category = angels_blast_smelting_1
data_recipe[algae_brown_sodium_carbonate].icons = THREE_I(algae_brown, carbon_dioxide_angels, sodium_carbonate_angels)
data_recipe[algae_brown_sodium_carbonate].energy_required = 8
data_recipe[algae_brown_sodium_carbonate].ingredients[1].amount = 16
data_recipe[algae_brown_sodium_carbonate].ingredients[2].name = carbon_dioxide_angels
data_recipe[algae_brown_sodium_carbonate].ingredients[2].amount = 60

data_recipe[algae_brown_lithium_chloride].category = angels_blast_smelting_3
data_recipe[algae_brown_lithium_chloride].icons = TWO_I(algae_brown, lithium_chloride_angels)
data_recipe[algae_brown_lithium_chloride].energy_required = 8
data_recipe[algae_brown_lithium_chloride].ingredients[1].amount = 16

local alginic_acid = "angels-solid-alginic-acid"
data_item[alginic_acid].localised_description = show_formula and {chemical_formula, "(C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]8[/font]O[font=default-tiny-bold]6[/font])[font=default-tiny-bold]n[/font]"} or nil
data_recipe[alginic_acid].category = angels_liquifying
data_recipe[alginic_acid].icons = TWO_I(algae_brown, alginic_acid)
data_recipe[alginic_acid].energy_required = 8
data_recipe[alginic_acid].ingredients[1].amount = 8

-- RED
data_item[algae_red].spoil_ticks = 540 * minute
data_item[algae_red].spoil_result = spoilage
data_recipe[algae_red].icons = THREE_I(water_thermal_angels, ammonia_angels, algae_red)
data_recipe[algae_red].energy_required = 32
data_recipe[algae_red].ingredients[1].amount = 120
data_recipe[algae_red].ingredients[2].amount = 120
data_recipe[algae_red].results[1].amount = 16

local cellulose_fiber_red = "angels-red-cellulose-fiber"
data_recipe[cellulose_fiber_red].icons = TWO_I(algae_red, cellulose_fiber_red)
data_recipe[cellulose_fiber_red].energy_required = 4
data_recipe[cellulose_fiber_red].ingredients[1].amount = 16
data_recipe[cellulose_fiber_red].results[1].amount = 4

data_item[calcium_carbonate].localised_description = show_formula and {chemical_formula, "CaCO[font=default-tiny-bold]3[/font]"} or nil
data_recipe[calcium_carbonate].icons = TWO_I(cellulose_fiber_red, calcium_carbonate)
data_recipe[calcium_carbonate].energy_required = 32
data_recipe[calcium_carbonate].ingredients[1].amount = 8
data_recipe[calcium_carbonate].results[1].amount = 4

-- BLUE
data_item[algae_blue].spoil_ticks = 720 * minute
data_item[algae_blue].spoil_result = spoilage
data_recipe[algae_blue].icons = THREE_I(water_yellow_waste, carbon_dioxide_angels, algae_blue)
data_recipe[algae_blue].energy_required = 32
data_recipe[algae_blue].ingredients[1].amount = 120
data_recipe[algae_blue].ingredients[2].amount = 120
data_recipe[algae_blue].results[1].amount = 16

local cellulose_fiber_blue = "angels-blue-cellulose-fiber"
data_recipe[cellulose_fiber_blue].icons = TWO_I(algae_red, cellulose_fiber_blue)
data_recipe[cellulose_fiber_blue].energy_required = 4
data_recipe[cellulose_fiber_blue].ingredients[1].amount = 8
data_recipe[cellulose_fiber_blue].results[1].amount = 4

local ammonia_from_cellulose_fiber_blue = "angels-gas-ammonia-from-blue-fiber"
data_recipe[ammonia_from_cellulose_fiber_blue].icons = TWO_I(cellulose_fiber_blue, ammonia_angels)
data_recipe[ammonia_from_cellulose_fiber_blue].energy_required = 32
data_recipe[ammonia_from_cellulose_fiber_blue].ingredients[1].amount = 16
data_recipe[ammonia_from_cellulose_fiber_blue].results[1].amount = 120

-- OTHERS
data_item_subgroup["angels-bio-wood"].order = e

data_item[compost_angels].order = a

data_item[fertilizer_angels].order = b
data_recipe[fertilizer_angels].icons = THREE_I(compost_angels, urea_solution_angels, fertilizer_angels)
data_recipe[fertilizer_angels].order = b
data_recipe[fertilizer_angels].ingredients[2].amount = 30

data_item[fertilizer_alienated].order = c
data_recipe[fertilizer_alienated].icons = THREE_I(fertilizer_angels, alien_goo, fertilizer_alienated)
data_recipe[fertilizer_alienated].order = c
data_recipe[fertilizer_alienated].ingredients[2].amount = 30

data_item[soil_angels].order = d
data_recipe[soil_angels].icons = THREE_I(mud_angels, compost_angels, soil_angels)
data_recipe[soil_angels].order = d

local soil_alt = "angels-solid-soil-alternative"
data_recipe[soil_alt].icons = THREE_I(sand_angels, compost_angels, soil_angels)
data_recipe[soil_alt].order = d_a

local saw = "angels-solid-saw"
data_item[saw].order = e
data_recipe[saw].icons = TWO_I(iron_plate, saw)
data_recipe[saw].order = e
data_recipe[saw].energy_required = 1
data_recipe[saw].results[1].amount = 8

local saw_crystal_tipped = "angels-solid-crystal-tipped-saw"
data_item[saw_crystal_tipped].order = f
data_recipe[saw_crystal_tipped].icons = THREE_I(saw, crystal_splinter_harmonic, saw_crystal_tipped)
data_recipe[saw_crystal_tipped].order = f
data_recipe[saw_crystal_tipped].energy_required = 1
data_recipe[saw_crystal_tipped].ingredients[1].amount = 8
data_recipe[saw_crystal_tipped].results[1].amount = 8

local saw_crystal_full = "angels-solid-crystal-full-saw"
data_item[saw_crystal_full].order = g
data_recipe[saw_crystal_full].icons = THREE_I(saw_crystal_tipped, crystal_shard_harmonic, saw_crystal_full)
data_recipe[saw_crystal_full].order = g
data_recipe[saw_crystal_full].energy_required = 1
data_recipe[saw_crystal_full].ingredients[1].amount = 8
data_recipe[saw_crystal_full].results[1].amount = 8

-- WOOD and SEED
data_item_subgroup["angels-bio-processing-wood"].order = f

data_item[wood].localised_description = show_formula and {chemical_formula, _C6H10O5n_} or nil
data_item[wood].fuel_value = 1800 .. kJ
data_item[wood].fuel_category = base_fuel

local wood_1 = "angels-wood-sawing-1"
data_recipe[wood_1].icons = TWO_I(tree_angels, wood, number_1)
data_recipe[wood_1].results = {{type = item, name = wood, amount = 8}}

local wood_2 = "angels-wood-sawing-2"
data_recipe[wood_2].icons = TWO_I(tree_angels, wood, number_2)
data_recipe[wood_2].results = {{type = item, name = wood, amount = 16}}

local wood_3 = "angels-wood-sawing-3"
data_recipe[wood_3].icons = TWO_I(tree_angels, wood, number_3)
data_recipe[wood_3].results = {{type = item, name = wood, amount = 32}}

local cellulose_fiber_raw_wood = "angels-cellulose-fiber-raw-wood"
if mods [muluna_mods] then
    data_recipe[cellulose_fiber_raw_wood].icons = TWO_I(wood, cellulose_fiber_angels, number_1)
else
    data_recipe[cellulose_fiber_raw_wood].icons = TWO_I(wood, cellulose_fiber_angels)
end
data_recipe[cellulose_fiber_raw_wood].order = b_a
data_recipe[cellulose_fiber_raw_wood].energy_required = 4
data_recipe[cellulose_fiber_raw_wood].ingredients[1].amount = 4
data_recipe[cellulose_fiber_raw_wood].results[1].amount = 8

local wood_pellets = "angels-wood-pellets"
data_item[wood_pellets].localised_description = show_formula and {chemical_formula, _C6H10O5n_} or nil
data_item[wood_pellets].order = c
data_item[wood_pellets].fuel_value = 7200 .. kJ
data_item[wood_pellets].fuel_category = base_fuel
data_recipe[wood_pellets].icons = TWO_I(cellulose_fiber_angels, wood_pellets)
data_recipe[wood_pellets].order = c
data_recipe[wood_pellets].ingredients[1].amount = 8

local carbon_dioxide_from_wood = "angels-gas-carbon-dioxide-from-wood"
data_recipe[carbon_dioxide_from_wood].icons = TWO_I(wood_pellets, carbon_dioxide_angels)
data_recipe[carbon_dioxide_from_wood].order = c_a
-- (C₆H₁₀O₅)n --> CO₂
data_recipe[carbon_dioxide_from_wood].results[1].amount = 60

local wood_bricks = "angels-wood-bricks"
data_item[wood_bricks].localised_description = show_formula and {chemical_formula, _C6H10O5n_} or nil
data_item[wood_bricks].order = d
data_item[wood_bricks].fuel_value = 28800 .. kJ
data_item[wood_bricks].fuel_category = base_fuel
data_recipe[wood_bricks].icons = TWO_I(wood_pellets, wood_bricks)
data_recipe[wood_bricks].order = d

local wood_charcoal = "angels-wood-charcoal"
data_item[wood_charcoal].localised_description = show_formula and {chemical_formula, "C"} or nil
data_item[wood_charcoal].order = e
data_item[wood_charcoal].fuel_value = 3600 .. kJ
data_item[wood_charcoal].fuel_category = base_fuel
data_recipe[wood_charcoal].icons = TWO_I(wood_pellets, wood_charcoal)
data_recipe[wood_charcoal].order = e
data_recipe[wood_charcoal].results[1].amount = 4

local carbon_from_charcoal = "angels-carbon-from-charcoal"
data_recipe[carbon_from_charcoal].icons = THREE_I(wood_charcoal, oxygen_angels, carbon_angels)
data_recipe[carbon_from_charcoal].order = e_a
data_recipe[carbon_from_charcoal].ingredients[2].amount = 30

-- SEED and TREE
local is_bio_arboretum = "angels-bio-arboretum"

data_item[tree_seed].subgroup = is_bio_arboretum
data_item[tree_seed].order = a
data_item[tree_seed].stack_size = 200
data_item[tree_seed].fuel_value = 225 .. kJ
data_item[tree_seed].fuel_category = base_fuel

local tree_seed_1 = "angels-tree-seed"
data_recipe[tree_seed_1].icons = THREE_D_I(tree_angels, nil, water, tree_seed, number_1)
data_recipe[tree_seed_1].order = a_a
data_recipe[tree_seed_1].energy_required = 16
data_recipe[tree_seed_1].ingredients[1].name = tree_angels
data_recipe[tree_seed_1].ingredients[1].amount = 2
data_recipe[tree_seed_1].ingredients[2].amount = 60

local tree_seed_2 = "angels-tree-seed-2"
data_recipe[tree_seed_2].icons = THREE_D_I(tree_angels, fertilizer_angels, water, tree_seed, nil, nil, number_2)
data_recipe[tree_seed_2].order = a_b
data_recipe[tree_seed_2].energy_required = 16
data_recipe[tree_seed_2].ingredients[1].name = tree_angels
data_recipe[tree_seed_2].ingredients[1].amount = 2
data_recipe[tree_seed_2].ingredients[3].amount = 60
data_recipe[tree_seed_2].results[1].amount = 8

local tree_seed_3 = "angels-tree-seed-3"
data_recipe[tree_seed_3].icons = FOUR_D_I(tree_angels, fertilizer_angels, water, carbon_dioxide_angels, tree_seed, nil, nil, nil, number_3)
data_recipe[tree_seed_3].order = a_c
data_recipe[tree_seed_3].energy_required = 16
data_recipe[tree_seed_3].ingredients[1].name = tree_angels
data_recipe[tree_seed_3].ingredients[1].amount = 2
data_recipe[tree_seed_3].ingredients[3].amount = 60
data_recipe[tree_seed_3].ingredients[4].amount = 60
data_recipe[tree_seed_3].results[1].amount = 16

data_item[tree_angels].subgroup = is_bio_arboretum
data_item[tree_angels].order = b
data_recipe[tree_angels].icons = THREE_D_I(tree_seed, nil, water, tree_angels, number_1)
data_recipe[tree_angels].order = b
data_recipe[tree_angels].energy_required = 32
data_recipe[tree_angels].ingredients[1].amount = 4
data_recipe[tree_angels].ingredients[2].amount = 4
data_recipe[tree_angels].ingredients[3].amount = 60

local tree_2 = "angels-solid-tree-2"
data_recipe[tree_2].icons = THREE_D_I(tree_seed, fertilizer_angels, water, tree_angels, nil, nil, number_2)
data_recipe[tree_2].order = b_a
data_recipe[tree_2].energy_required = 32
data_recipe[tree_2].ingredients[1].amount = 4
data_recipe[tree_2].ingredients[2].amount = 4
data_recipe[tree_2].ingredients[4].amount = 60
data_recipe[tree_2].results[1].amount = 8

local tree_3 = "angels-solid-tree-3"
data_recipe[tree_3].icons = FOUR_D_I(tree_seed, fertilizer_angels, water, carbon_dioxide_angels, tree_angels, nil, nil, nil, number_3)
data_recipe[tree_3].order = b_b
data_recipe[tree_3].energy_required = 32
data_recipe[tree_3].ingredients[1].amount = 4
data_recipe[tree_3].ingredients[2].amount = 4
data_recipe[tree_3].ingredients[4].amount = 60
data_recipe[tree_3].ingredients[5].name = carbon_dioxide_angels
data_recipe[tree_3].ingredients[5].amount = 60
data_recipe[tree_3].results[1].amount = 16

local tree_arboretum_0 = "angels-tree-arboretum-0"
data_recipe[tree_arboretum_0].icons = FOUR_R_I(bio_token, tree_temperate, tree_swamp, tree_desert)
data_recipe[tree_arboretum_0].order = b_c
data_recipe[tree_arboretum_0].energy_required = 32
data_recipe[tree_arboretum_0].ingredients[2].amount = 8
data_recipe[tree_arboretum_0].ingredients[3].amount = 8
data_recipe[tree_arboretum_0].ingredients[4].amount = 240
data_recipe[tree_arboretum_0].results =
{
    {type = item, name = tree_temperate, amount = 1},
    {type = item, name = tree_swamp, amount = 1},
    {type = item, name = tree_desert, amount = 1}
}

-- SEED and TREE TEMPERATE
local is_bio_arboretum_temperate = "angels-bio-arboretum-temperate"

local tree_temperate_seed = "angels-tree-temperate-seed"
data_item[tree_temperate_seed].subgroup = is_bio_arboretum_temperate
data_item[tree_temperate_seed].order = a
data_item[tree_temperate_seed].stack_size = 200
data_recipe[tree_temperate_seed].subgroup = is_bio_arboretum_temperate
data_recipe[tree_temperate_seed].icons = THREE_D_I(tree_temperate, nil, water, tree_temperate_seed, nil, nil, number_1)
data_recipe[tree_temperate_seed].order = a
data_recipe[tree_temperate_seed].energy_required = 16
data_recipe[tree_temperate_seed].ingredients[1].name = tree_temperate
data_recipe[tree_temperate_seed].ingredients[1].amount = 1
data_recipe[tree_temperate_seed].ingredients[2].amount = 60

local tree_temperate_seed_2 = "angels-tree-temperate-seed-2"
data_recipe[tree_temperate_seed_2].icons = THREE_D_I(tree_temperate, fertilizer_angels, water, tree_temperate_seed, nil, nil, number_2)
data_recipe[tree_temperate_seed_2].order = a_a
data_recipe[tree_temperate_seed_2].energy_required = 16
data_recipe[tree_temperate_seed_2].ingredients[1].name = tree_temperate
data_recipe[tree_temperate_seed_2].ingredients[1].amount = 1
data_recipe[tree_temperate_seed_2].ingredients[3].amount = 60
data_recipe[tree_temperate_seed_2].results[1].amount = 8

local tree_temperate_seed_3 = "angels-tree-temperate-seed-3"
data_recipe[tree_temperate_seed_3].icons = FOUR_D_I(tree_temperate, fertilizer_angels, water, carbon_dioxide_angels, tree_temperate_seed, nil, nil, nil, number_3)
data_recipe[tree_temperate_seed_3].order = a_b
data_recipe[tree_temperate_seed_3].energy_required = 16
data_recipe[tree_temperate_seed_3].ingredients[1].name = tree_temperate
data_recipe[tree_temperate_seed_3].ingredients[1].amount = 1
data_recipe[tree_temperate_seed_3].ingredients[3].amount = 60
data_recipe[tree_temperate_seed_3].ingredients[4].amount = 60
data_recipe[tree_temperate_seed_3].results[1].amount = 16

data_item[tree_temperate].order = b
data_item[tree_temperate].stack_size = 200
data_recipe[tree_temperate].icons = FOUR_D_I(tree_temperate_seed, bio_token, fertilizer_alienated, water, tree_temperate)
data_recipe[tree_temperate].order = b
data_recipe[tree_temperate].energy_required = 32
data_recipe[tree_temperate].ingredients[4].amount = 60
data_recipe[tree_temperate].results = {{type = item, name = tree_temperate, amount = 1}}

local bio_resin = "angels-bio-resin"
data_item[bio_resin].subgroup = is_bio_arboretum_temperate
data_item[bio_resin].order = c
data_item[bio_resin].stack_size = 200
data_recipe[bio_resin].subgroup = is_bio_arboretum_temperate
data_recipe[bio_resin].icons = THREE_D_I(tree_temperate_seed, soil_angels, water, bio_resin, nil, tree_temperate, number_1)
data_recipe[bio_resin].order = c
data_recipe[bio_resin].energy_required = 32
data_recipe[bio_resin].ingredients[2].amount = 4
data_recipe[bio_resin].ingredients[3].amount = 60
data_recipe[bio_resin].results[2].name = tree_temperate

local bio_resin_2 = "angels-bio-resin-2"
data_recipe[bio_resin_2].icons = FOUR_THREE_I(tree_temperate_seed, soil_angels, fertilizer_angels, water, bio_resin, nil, tree_temperate, number_2)
data_recipe[bio_resin_2].order = c_a
data_recipe[bio_resin_2].energy_required = 32
data_recipe[bio_resin_2].ingredients[2].amount = 4
data_recipe[bio_resin_2].ingredients[4].amount = 60
data_recipe[bio_resin_2].results[1].amount = 8
data_recipe[bio_resin_2].results[2].name = tree_temperate
data_recipe[bio_resin_2].results[2].amount = 4
data_recipe[bio_resin_2].results[2].ignored_by_productivity = 4

local bio_resin_tree = "angels-bio-resin-tree"
data_recipe[bio_resin_tree].icons = TWO_I(tree_temperate, bio_resin)
data_recipe[bio_resin_tree].order = c_b
data_recipe[bio_resin_tree].energy_required = 32
data_recipe[bio_resin_tree].results[1].amount = 8

local liquid_resin_from_bio_resin = "angels-liquid-resin-bio"
data_recipe[liquid_resin_from_bio_resin].icons = THREE_I(bio_resin, ethanol_angels, liquid_resin_angels)
data_recipe[liquid_resin_from_bio_resin].order = d_a
data_recipe[liquid_resin_from_bio_resin].ingredients[1].amount = 60
data_recipe[liquid_resin_from_bio_resin].results[1].amount = 15

local resin_from_wood = "angels-bio-resin-wood-reprocessing"
data_recipe[resin_from_wood].icons = TWO_I(wood, resin_bob)
data_recipe[resin_from_wood].order = e_a
data_recipe[resin_from_wood].energy_required = 4
data_recipe[resin_from_wood].ingredients[1].amount = 8

local liquid_resin_from_resin = "angels-bio-resin-resin-liquification"
data_recipe[liquid_resin_from_resin].icons = THREE_I(resin_bob, ethanol_angels, liquid_resin_angels)
data_recipe[liquid_resin_from_resin].order = e_b
data_recipe[liquid_resin_from_resin].energy_required = 8
data_recipe[liquid_resin_from_resin].ingredients[1].amount = 120
data_recipe[liquid_resin_from_resin].results[1].amount = 30

-- SEED and TREE SWAMP
local is_bio_arboretum_swamp = "angels-bio-arboretum-swamp"

local tree_swamp_seed = "angels-tree-swamp-seed"
data_item[tree_swamp_seed].subgroup = is_bio_arboretum_swamp
data_item[tree_swamp_seed].order = a
data_item[tree_swamp_seed].stack_size = 200
data_recipe[tree_swamp_seed].subgroup = is_bio_arboretum_swamp
data_recipe[tree_swamp_seed].icons = THREE_D_I(tree_swamp, nil, water_light_mud, tree_swamp_seed, nil, nil, number_1)
data_recipe[tree_swamp_seed].order = a
data_recipe[tree_swamp_seed].energy_required = 16
data_recipe[tree_swamp_seed].ingredients[1].name = tree_swamp
data_recipe[tree_swamp_seed].ingredients[1].amount = 1
data_recipe[tree_swamp_seed].ingredients[2].amount = 60

local tree_swamp_seed_2 = "angels-tree-swamp-seed-2"
data_recipe[tree_swamp_seed_2].icons = THREE_D_I(tree_swamp, fertilizer_angels, water_light_mud, tree_swamp_seed, nil, nil, number_2)
data_recipe[tree_swamp_seed_2].order = a_a
data_recipe[tree_swamp_seed_2].energy_required = 16
data_recipe[tree_swamp_seed_2].ingredients[1].name = tree_swamp
data_recipe[tree_swamp_seed_2].ingredients[1].amount = 1
data_recipe[tree_swamp_seed_2].ingredients[3].amount = 60
data_recipe[tree_swamp_seed_2].results[1].amount = 8

local tree_swamp_seed_3 = "angels-tree-swamp-seed-3"
data_recipe[tree_swamp_seed_3].icons = FOUR_D_I(tree_swamp, fertilizer_angels, water_light_mud, nitrogen_angels, tree_swamp_seed, nil, nil, nil, number_3)
data_recipe[tree_swamp_seed_3].order = a_b
data_recipe[tree_swamp_seed_3].energy_required = 16
data_recipe[tree_swamp_seed_3].ingredients[1].name = tree_swamp
data_recipe[tree_swamp_seed_3].ingredients[1].amount = 1
data_recipe[tree_swamp_seed_3].ingredients[3].amount = 60
data_recipe[tree_swamp_seed_3].ingredients[4].amount = 60
data_recipe[tree_swamp_seed_3].results[1].amount = 16

data_item[tree_swamp].subgroup = is_bio_arboretum_swamp
data_item[tree_swamp].order = b
data_item[tree_swamp].stack_size = 200
data_recipe[tree_swamp].subgroup = is_bio_arboretum_swamp
data_recipe[tree_swamp].icons = FOUR_D_I(tree_swamp_seed, bio_token, fertilizer_alienated, water, tree_swamp)
data_recipe[tree_swamp].order = b
data_recipe[tree_swamp].energy_required = 32
data_recipe[tree_swamp].ingredients[4].amount = 60
data_recipe[tree_swamp].results = {{type = item, name = tree_swamp, amount = 1}}

local bio_plastic = "angels-bio-plastic"
data_item[bio_plastic].order = c
data_item[bio_plastic].stack_size = 200
data_recipe[bio_plastic].icons = THREE_D_I(tree_swamp_seed, soil_angels, water, bio_plastic, nil, tree_swamp, number_1)
data_recipe[bio_plastic].order = c
data_recipe[bio_plastic].energy_required = 32
data_recipe[bio_plastic].ingredients[2].amount = 4
data_recipe[bio_plastic].ingredients[3].amount = 60
data_recipe[bio_plastic].results[2].name = tree_swamp

local bio_plastic_2 = "angels-bio-plastic-2"
data_recipe[bio_plastic_2].icons = FOUR_THREE_I(tree_swamp_seed, soil_angels, fertilizer_angels, water, bio_plastic, nil, tree_swamp, number_2)
data_recipe[bio_plastic_2].order = c_a
data_recipe[bio_plastic_2].energy_required = 32
data_recipe[bio_plastic_2].ingredients[2].amount = 4
data_recipe[bio_plastic_2].ingredients[4].amount = 60
data_recipe[bio_plastic_2].results[1].amount = 8
data_recipe[bio_plastic_2].results[2].name = tree_swamp
data_recipe[bio_plastic_2].results[2].amount = 4
data_recipe[bio_plastic_2].results[2].ignored_by_productivity = 4

local bio_plastic_tree = "angels-bio-plastic-tree"
data_recipe[bio_plastic_tree].icons = TWO_I(tree_swamp, bio_plastic)
data_recipe[bio_plastic_tree].order = c_b
data_recipe[bio_plastic_tree].energy_required = 32
data_recipe[bio_plastic_tree].results[1].amount = 8

local liquid_plastic_from_bio_plastic = "angels-liquid-plastic-bio"
data_recipe[liquid_plastic_from_bio_plastic].icons = THREE_I(bio_plastic, acetone_angels, liquid_plastic_angels)
data_recipe[liquid_plastic_from_bio_plastic].order = d_a
data_recipe[liquid_plastic_from_bio_plastic].ingredients[1].amount = 60
data_recipe[liquid_plastic_from_bio_plastic].results[1].amount = 15

-- SEED and TREE DESERT
local is_bio_arboretum_desert = "angels-bio-arboretum-desert"

local tree_desert_seed = "angels-tree-desert-seed"
data_item[tree_desert_seed].subgroup = is_bio_arboretum_desert
data_item[tree_desert_seed].order = a
data_item[tree_desert_seed].stack_size = 200
data_recipe[tree_desert_seed].subgroup = is_bio_arboretum_desert
data_recipe[tree_desert_seed].icons = THREE_D_I(tree_desert, nil, water_saline_angels, tree_desert_seed, nil, nil, number_1)
data_recipe[tree_desert_seed].order = a
data_recipe[tree_desert_seed].energy_required = 16
data_recipe[tree_desert_seed].ingredients[1].name = tree_desert
data_recipe[tree_desert_seed].ingredients[1].amount = 1
data_recipe[tree_desert_seed].ingredients[2].amount = 60

local tree_desert_seed_2 = "angels-tree-desert-seed-2"
data_recipe[tree_desert_seed_2].icons = THREE_D_I(tree_desert, fertilizer_angels, water_saline_angels, tree_desert_seed, nil, nil, number_2)
data_recipe[tree_desert_seed_2].order = a_a
data_recipe[tree_desert_seed_2].energy_required = 16
data_recipe[tree_desert_seed_2].ingredients[1].name = tree_desert
data_recipe[tree_desert_seed_2].ingredients[1].amount = 1
data_recipe[tree_desert_seed_2].ingredients[3].amount = 60
data_recipe[tree_desert_seed_2].results[1].amount = 8

local tree_desert_seed_3 = "angels-tree-desert-seed-3"
data_recipe[tree_desert_seed_3].icons = FOUR_D_I(tree_desert, fertilizer_angels, water_saline_angels, nitrogen_angels, tree_desert_seed, nil, nil, nil, number_3)
data_recipe[tree_desert_seed_3].order = a_b
data_recipe[tree_desert_seed_3].energy_required = 16
data_recipe[tree_desert_seed_3].ingredients[1].name = tree_desert
data_recipe[tree_desert_seed_3].ingredients[1].amount = 1
data_recipe[tree_desert_seed_3].ingredients[3].amount = 60
data_recipe[tree_desert_seed_3].ingredients[4].amount = 60
data_recipe[tree_desert_seed_3].results[1].amount = 16

data_item[tree_desert].subgroup = is_bio_arboretum_desert
data_item[tree_desert].order = b
data_item[tree_desert].stack_size = 200
data_recipe[tree_desert].subgroup = is_bio_arboretum_desert
data_recipe[tree_desert].icons = FOUR_D_I(tree_desert_seed, bio_token, fertilizer_alienated, water, tree_desert)
data_recipe[tree_desert].order = b
data_recipe[tree_desert].energy_required = 32
data_recipe[tree_desert].ingredients[4].amount = 60
data_recipe[tree_desert].results = {{type = item, name = tree_desert, amount = 1}}

local bio_rubber = "angels-bio-rubber"
data_item[bio_rubber].subgroup = is_bio_arboretum_desert
data_item[bio_rubber].order = c
data_item[bio_rubber].stack_size = 200
data_recipe[bio_rubber].subgroup = is_bio_arboretum_desert
data_recipe[bio_rubber].icons = THREE_D_I(tree_desert_seed, soil_angels, water, bio_rubber, nil, tree_desert, number_1)
data_recipe[bio_rubber].order = c
data_recipe[bio_rubber].energy_required = 32
data_recipe[bio_rubber].ingredients[2].amount = 4
data_recipe[bio_rubber].ingredients[3].amount = 60
data_recipe[bio_rubber].results[2].name = tree_desert

local bio_rubber_2 = "angels-bio-rubber-2"
data_recipe[bio_rubber_2].icons = FOUR_THREE_I(tree_desert_seed, soil_angels, fertilizer_angels, water, bio_rubber, nil, tree_desert, number_2)
data_recipe[bio_rubber_2].order = c_a
data_recipe[bio_rubber_2].energy_required = 32
data_recipe[bio_rubber_2].ingredients[2].amount = 4
data_recipe[bio_rubber_2].ingredients[4].amount = 60
data_recipe[bio_rubber_2].results[1].amount = 8
data_recipe[bio_rubber_2].results[2].name = tree_desert
data_recipe[bio_rubber_2].results[2].amount = 4
data_recipe[bio_rubber_2].results[2].ignored_by_productivity = 4

local bio_rubber_tree = "angels-bio-rubber-tree"
data_recipe[bio_rubber_tree].icons = TWO_I(tree_desert, bio_rubber)
data_recipe[bio_rubber_tree].order = c_b
data_recipe[bio_rubber_tree].energy_required = 32
data_recipe[bio_rubber_tree].results[1].amount = 8

local liquid_rubber_from_bio_rubber = "angels-liquid-rubber-bio"
data_recipe[liquid_rubber_from_bio_rubber].icons = THREE_I(bio_rubber, acetone_angels, liquid_rubber_angels)
data_recipe[liquid_rubber_from_bio_rubber].order = d_a
data_recipe[liquid_rubber_from_bio_rubber].ingredients[1].amount = 60
data_recipe[liquid_rubber_from_bio_rubber].results[1].amount = 15

-- LIQUOR
local pulping_liquor = "angels-liquid-pulping-liquor"
data_fluid[pulping_liquor].order = a
data_recipe[pulping_liquor].icons = FOUR_I(sulfur_dioxide_angels, oxygen_angels, water, pulping_liquor)
data_recipe[pulping_liquor].order = a
data_recipe[pulping_liquor].ingredients[1].amount = 120
data_recipe[pulping_liquor].ingredients[2].amount = 30
data_recipe[pulping_liquor].ingredients[3].amount = 60
data_recipe[pulping_liquor].results[1].amount = 120

local brown_liquor = "angels-liquid-brown-liquor"
data_fluid[brown_liquor].order = b

local brown_liquor_recovery = "angels-brown-liquor-recovery"
data_recipe[brown_liquor_recovery].icons = TWO_D_I(sodium_hydroxide_angels, brown_liquor, sodium_sulfate_angels, nitrogen_angels)
data_recipe[brown_liquor_recovery].order = b_a
data_recipe[brown_liquor_recovery].ingredients[1].amount = 60
data_recipe[brown_liquor_recovery].results[2].name = nitrogen_angels
data_recipe[brown_liquor_recovery].results[2].amount = 60

local white_liquor = "angels-liquid-white-liquor"
data_fluid[white_liquor].order = c
data_recipe[white_liquor].icons = FOUR_I(sodium_hydroxide_angels, water, sodium_sulfate_angels, white_liquor)
data_recipe[white_liquor].order = c
data_recipe[white_liquor].ingredients[3].amount = 30
data_recipe[white_liquor].results[1].amount = 30

local black_liquor = "angels-liquid-black-liquor"
data_fluid[black_liquor].order = d

local green_liquor = "angels-liquid-green-liquor"
data_fluid[green_liquor].order = e
data_recipe[green_liquor].icons = TWO_I(black_liquor, green_liquor)
data_recipe[green_liquor].order = e
data_recipe[green_liquor].ingredients[1].amount = 60
data_recipe[green_liquor].results[1].amount = 45

local kraft_process = "angels-kraft-causting"
data_recipe[kraft_process].icons = THREE_D_I(green_liquor, lime_angels, water, white_liquor, nil, limestone_angels)
data_recipe[kraft_process].order = e_a
data_recipe[kraft_process].results[1].amount = 60

-- CELLULOSE PULP and PAPER
data_recipe[cellulose_pulp].icons = THREE_D_I(cellulose_fiber_angels, alginic_acid, water, cellulose_pulp, nil, nil, number_1)
data_recipe[cellulose_pulp].energy_required = 16
data_recipe[cellulose_pulp].ingredients[1].amount = 16
data_recipe[cellulose_pulp].ingredients[2].amount = 4
data_recipe[cellulose_pulp].ingredients[3].amount = 30
data_recipe[cellulose_pulp].results[1].amount = 8

local cellulose_pulp_2 = "angels-sulfite-pulping"
data_recipe[cellulose_pulp_2].icons = FOUR_THREE_I(cellulose_fiber_angels, pulping_liquor, ammonia_angels, water, cellulose_pulp, nil, brown_liquor, number_2)
data_recipe[cellulose_pulp_2].energy_required = 8
data_recipe[cellulose_pulp_2].ingredients[1].amount = 16
data_recipe[cellulose_pulp_2].ingredients[2].amount = 60
data_recipe[cellulose_pulp_2].ingredients[3].amount = 30
data_recipe[cellulose_pulp_2].ingredients[4].amount = 60
data_recipe[cellulose_pulp_2].results[1].amount = 16
data_recipe[cellulose_pulp_2].results[2].amount = 60

local cellulose_pulp_3 = "angels-kraft-cooking-washing"
data_recipe[cellulose_pulp_3].icons = TWO_D_I(cellulose_fiber_angels, white_liquor, cellulose_pulp, black_liquor, number_3)
data_recipe[cellulose_pulp_3].energy_required = 8
data_recipe[cellulose_pulp_3].ingredients[1].amount = 16
data_recipe[cellulose_pulp_3].ingredients[2].amount = 60
data_recipe[cellulose_pulp_3].results[1].amount = 32
data_recipe[cellulose_pulp_3].results[2].amount = 60

data_recipe[paper].icons = TWO_I(cellulose_pulp, paper, number_1)
data_recipe[paper].results[1].amount = 2

local paper_2 = "angels-solid-paper-2"
data_recipe[paper_2].category = chemistry
data_recipe[paper_2].icons = THREE_D_I(cellulose_pulp, sodium_hydroxide_solution_angels, chlorine_angels, paper, nil, sodium_hypochlorite_solution, number_2)
data_recipe[paper_2].ingredients[2].type = fluid
data_recipe[paper_2].ingredients[2].name = sodium_hydroxide_solution_angels
data_recipe[paper_2].ingredients[2].amount = 30
data_recipe[paper_2].ingredients[3].amount = 60
data_recipe[paper_2].results[2].type = fluid
data_recipe[paper_2].results[2].name = sodium_hypochlorite_solution
data_recipe[paper_2].results[2].amount = 30

local paper_3 = "angels-solid-paper-3"
data_recipe[paper_3].icons = FOUR_D_I(cellulose_pulp, sodium_hydroxide_angels, sulfur_dioxide_angels, water, paper, sodium_angels, oxygen_angels, water_yellow_waste, number_3)
data_recipe[paper_3].ingredients[3].amount = 60
data_recipe[paper_3].ingredients[4].amount = 240
data_recipe[paper_3].results[1].amount = 4
data_recipe[paper_3].results[2].name = sodium_angels
data_recipe[paper_3].results[3].amount = 60
data_recipe[paper_3].results[4].amount = 240

-- ALIEN ARTIFACTS
data_item_subgroup[is_bio_processing_paste].group = ig_bio_processing_nauvis
data_item_subgroup[is_bio_processing_paste].order = l

local paste_tungsten = "angels-paste-tungsten"
data_item[paste_tungsten].order = a
data_recipe[paste_tungsten].icons = THREE_I(tungsten_powder, paste_cellulose, paste_tungsten)
data_recipe[paste_tungsten].order = a

local paste_cobalt = "angels-paste-cobalt"
data_item[paste_cobalt].order = b
data_recipe[paste_cobalt].icons = THREE_I(cobalt_powder, paste_cellulose, paste_cobalt)
data_recipe[paste_cobalt].order = b

local paste_gold = "angels-paste-gold"
data_item[paste_gold].order = c
data_recipe[paste_gold].icons = THREE_I(gold_powder, paste_cellulose, paste_gold)
data_recipe[paste_gold].order = c

local paste_titanium = "angels-paste-titanium"
data_item[paste_titanium].order = d
data_recipe[paste_titanium].icons = THREE_I(titanium_powder, paste_cellulose, paste_titanium)
data_recipe[paste_titanium].order = d

local paste_zinc = "angels-paste-zinc"
data_item[paste_zinc].order = e
data_recipe[paste_zinc].icons = THREE_I(zinc_powder, paste_cellulose, paste_zinc)
data_recipe[paste_zinc].order = e

local paste_copper = "angels-paste-copper"
data_item[paste_copper].order = f
data_recipe[paste_copper].icons = THREE_I(copper_powder, paste_cellulose, paste_copper)
data_recipe[paste_copper].order = f

local paste_iron = "angels-paste-iron"
data_item[paste_iron].order = g
data_recipe[paste_iron].icons = THREE_I(iron_powder, paste_cellulose, paste_iron)
data_recipe[paste_iron].order = g

data_item_subgroup[is_bio_processing_alien_pre].group = ig_bio_processing_nauvis
data_item_subgroup[is_bio_processing_alien_pre].order = m

local alien_pre_artifact_orange = "angels-alien-pre-artifact-orange"
data_item[alien_pre_artifact_orange].order = a
data_recipe[alien_pre_artifact_orange].icons = THREE_D_I(paste_tungsten, cut_topaz_bob, seeded_dish, alien_pre_artifact_orange)
data_recipe[alien_pre_artifact_orange].order = a
data_recipe[alien_pre_artifact_orange].energy_required = 4

local alien_pre_artifact_blue = "angels-alien-pre-artifact-blue"
data_item[alien_pre_artifact_blue].order = b
data_recipe[alien_pre_artifact_blue].icons = THREE_D_I(paste_cobalt, cut_sapphire_bob, seeded_dish, alien_pre_artifact_blue)
data_recipe[alien_pre_artifact_blue].order = b
data_recipe[alien_pre_artifact_blue].energy_required = 4

local alien_pre_artifact_yellow = "angels-alien-pre-artifact-yellow"
data_item[alien_pre_artifact_yellow].order = c
data_recipe[alien_pre_artifact_yellow].icons = THREE_D_I(paste_gold, cut_diamond_bob, seeded_dish, alien_pre_artifact_yellow)
data_recipe[alien_pre_artifact_yellow].order = c
data_recipe[alien_pre_artifact_yellow].energy_required = 4

local alien_pre_artifact_purple = "angels-alien-pre-artifact-purple"
data_item[alien_pre_artifact_purple].order = d
data_recipe[alien_pre_artifact_purple].icons = THREE_D_I(paste_titanium, cut_amethyst_bob, seeded_dish, alien_pre_artifact_purple)
data_recipe[alien_pre_artifact_purple].order = d
data_recipe[alien_pre_artifact_purple].energy_required = 4

local alien_pre_artifact_green = "angels-alien-pre-artifact-green"
data_item[alien_pre_artifact_green].order = e
data_recipe[alien_pre_artifact_green].icons = THREE_D_I(paste_zinc, cut_emerald_bob, seeded_dish, alien_pre_artifact_green)
data_recipe[alien_pre_artifact_green].order = e
data_recipe[alien_pre_artifact_green].energy_required = 4

local alien_pre_artifact_red = "angels-alien-pre-artifact-red"
data_item[alien_pre_artifact_red].order = f
data_recipe[alien_pre_artifact_red].icons = THREE_D_I(paste_copper, cut_ruby_bob, seeded_dish, alien_pre_artifact_red)
data_recipe[alien_pre_artifact_red].order = f
data_recipe[alien_pre_artifact_red].energy_required = 4

local alien_pre_artifact_base = "angels-alien-pre-artifact-base"
data_item[alien_pre_artifact_base].order = g
data_recipe[alien_pre_artifact_base].icons = THREE_D_I(paste_iron, nil, seeded_dish, alien_pre_artifact_base)
data_recipe[alien_pre_artifact_base].order = g
data_recipe[alien_pre_artifact_base].energy_required = 4

local is_bio_processing_alien_small = "angels-bio-processing-alien-small"
data_item_subgroup[is_bio_processing_alien_small].group = ig_bio_processing_nauvis
data_item_subgroup[is_bio_processing_alien_small].order = n

local alien_small_artifact_orange = "bob-small-alien-artifact-orange"
local alien_small_artifact_blue = "bob-small-alien-artifact-blue"
local alien_small_artifact_yellow = "bob-small-alien-artifact-yellow"
local alien_small_artifact_purple = "bob-small-alien-artifact-purple"
local alien_small_artifact_green = "bob-small-alien-artifact-green"
local alien_small_artifact_red = "bob-small-alien-artifact-red"
local alien_small_artifact = "bob-small-alien-artifact"
if data_item[alien_small_artifact] then
    data_item[alien_small_artifact_orange].order = a
    data_item[alien_small_artifact_blue].order = b
    data_item[alien_small_artifact_yellow].order = c
    data_item[alien_small_artifact_purple].order = d
    data_item[alien_small_artifact_green].order = e
    data_item[alien_small_artifact_red].order = f
    data_item[alien_small_artifact].order = g
end
local alien_small_artifact_orange_recipe = "angels-small-alien-artifact-orange"
data_recipe[alien_small_artifact_orange_recipe].subgroup = is_bio_processing_alien_small_recipe
data_recipe[alien_small_artifact_orange_recipe].icons = TWO_I(alien_pre_artifact_orange, alien_small_artifact_orange)
data_recipe[alien_small_artifact_orange_recipe].order = a
data_recipe[alien_small_artifact_orange_recipe].energy_required = 4

local alien_small_artifact_blue_recipe = "angels-small-alien-artifact-blue"
data_recipe[alien_small_artifact_blue_recipe].subgroup = is_bio_processing_alien_small_recipe
data_recipe[alien_small_artifact_blue_recipe].icons = TWO_I(alien_pre_artifact_blue, alien_small_artifact_blue)
data_recipe[alien_small_artifact_blue_recipe].order = b
data_recipe[alien_small_artifact_blue_recipe].energy_required = 4

local alien_small_artifact_yellow_recipe = "angels-small-alien-artifact-yellow"
data_recipe[alien_small_artifact_yellow_recipe].subgroup = is_bio_processing_alien_small_recipe
data_recipe[alien_small_artifact_yellow_recipe].icons = TWO_I(alien_pre_artifact_yellow, alien_small_artifact_yellow)
data_recipe[alien_small_artifact_yellow_recipe].order = c
data_recipe[alien_small_artifact_yellow_recipe].energy_required = 4

local alien_small_artifact_purple_recipe = "angels-small-alien-artifact-purple"
data_recipe[alien_small_artifact_purple_recipe].subgroup = is_bio_processing_alien_small_recipe
data_recipe[alien_small_artifact_purple_recipe].icons = TWO_I(alien_pre_artifact_purple, alien_small_artifact_purple)
data_recipe[alien_small_artifact_purple_recipe].order = d
data_recipe[alien_small_artifact_purple_recipe].energy_required = 4

local alien_small_artifact_green_recipe = "angels-small-alien-artifact-green"
data_recipe[alien_small_artifact_green_recipe].subgroup = is_bio_processing_alien_small_recipe
data_recipe[alien_small_artifact_green_recipe].icons = TWO_I(alien_pre_artifact_green, alien_small_artifact_green)
data_recipe[alien_small_artifact_green_recipe].order = e
data_recipe[alien_small_artifact_green_recipe].energy_required = 4

local alien_small_artifact_red_recipe = "angels-small-alien-artifact-red"
data_recipe[alien_small_artifact_red_recipe].subgroup = is_bio_processing_alien_small_recipe
data_recipe[alien_small_artifact_red_recipe].icons = TWO_I(alien_pre_artifact_red, alien_small_artifact_red)
data_recipe[alien_small_artifact_red_recipe].order = f
data_recipe[alien_small_artifact_red_recipe].energy_required = 4

local alien_small_artifact_recipe = "angels-small-alien-artifact"
data_recipe[alien_small_artifact_recipe].subgroup = is_bio_processing_alien_small_recipe
data_recipe[alien_small_artifact_recipe].icons = TWO_I(alien_pre_artifact_base, alien_small_artifact)
data_recipe[alien_small_artifact_recipe].order = g
data_recipe[alien_small_artifact_recipe].energy_required = 4

local is_bio_processing_alien_large = "angels-bio-processing-alien-large"
data_item_subgroup[is_bio_processing_alien_large].group = ig_bio_processing_nauvis
data_item_subgroup[is_bio_processing_alien_large].order = o
if data_item[alien_artifact] then
    data_item[alien_artifact_orange].order = a
    data_recipe[alien_artifact_orange].icons = TWO_I(alien_small_artifact_orange, alien_artifact_orange)
    data_recipe[alien_artifact_orange].order = a
    data_recipe[alien_artifact_orange].ingredients = {{type = item, name = alien_small_artifact_orange, amount = 32}}
    data_recipe[alien_artifact_orange].results[1].amount = 1

    data_item[alien_artifact_blue].order = b
    data_recipe[alien_artifact_blue].icons = TWO_I(alien_small_artifact_blue, alien_artifact_blue)
    data_recipe[alien_artifact_blue].order = b
    data_recipe[alien_artifact_blue].ingredients = {{type = item, name = alien_small_artifact_blue, amount = 32}}
    data_recipe[alien_artifact_blue].results[1].amount = 1

    data_item[alien_artifact_yellow].order = c
    data_recipe[alien_artifact_yellow].icons = TWO_I(alien_small_artifact_yellow, alien_artifact_yellow)
    data_recipe[alien_artifact_yellow].order = c
    data_recipe[alien_artifact_yellow].ingredients = {{type = item, name = alien_small_artifact_yellow, amount = 32}}
    data_recipe[alien_artifact_yellow].results[1].amount = 1

    data_item[alien_artifact_purple].order = d
    data_recipe[alien_artifact_purple].icons = TWO_I(alien_small_artifact_purple, alien_artifact_purple)
    data_recipe[alien_artifact_purple].order = d
    data_recipe[alien_artifact_purple].ingredients = {{type = item, name = alien_small_artifact_purple, amount = 32}}
    data_recipe[alien_artifact_purple].results[1].amount = 1

    data_item[alien_artifact_green].order = e
    data_recipe[alien_artifact_green].icons = TWO_I(alien_small_artifact_green, alien_artifact_green)
    data_recipe[alien_artifact_green].order = e
    data_recipe[alien_artifact_green].ingredients = {{type = item, name = alien_small_artifact_green, amount = 32}}
    data_recipe[alien_artifact_green].results[1].amount = 1

    data_item[alien_artifact_red].order = f
    data_recipe[alien_artifact_red].icons = TWO_I(alien_small_artifact_red, alien_artifact_red)
    data_recipe[alien_artifact_red].order = f
    data_recipe[alien_artifact_red].ingredients = {{type = item, name = alien_small_artifact_red, amount = 32}}
    data_recipe[alien_artifact_red].results[1].amount = 1

    data_item[alien_artifact].order = g
    data_recipe[alien_artifact].icons = TWO_I(alien_small_artifact, alien_artifact)
    data_recipe[alien_artifact].order = g
    data_recipe[alien_artifact].ingredients[1].amount = 32

    local alien_artifact_orange_from_small = "bob-alien-artifact-orange-from-small"
    data_recipe[alien_artifact_orange_from_small].subgroup = is_bio_processing_alien_large_recipe
    data_recipe[alien_artifact_orange_from_small].icons = TWO_D_I(alien_artifact, alien_artifact_orange, alien_artifact_orange)
    data_recipe[alien_artifact_orange_from_small].order = a
    data_recipe[alien_artifact_orange_from_small].ingredients =
    {
        {type = item, name = alien_artifact, amount = 4},
        {type = item, name = alien_artifact_orange, amount = 1}
    }
    data_recipe[alien_artifact_orange_from_small].results[1].amount = 4

    local alien_artifact_blue_from_small = "bob-alien-artifact-blue-from-small"
    data_recipe[alien_artifact_blue_from_small].subgroup = is_bio_processing_alien_large_recipe
    data_recipe[alien_artifact_blue_from_small].icons = TWO_D_I(alien_artifact, alien_artifact_blue, alien_artifact_blue)
    data_recipe[alien_artifact_blue_from_small].order = b
    data_recipe[alien_artifact_blue_from_small].ingredients =
    {
        {type = item, name = alien_artifact, amount = 4},
        {type = item, name = alien_artifact_blue, amount = 1}
    }
    data_recipe[alien_artifact_blue_from_small].results[1].amount = 4

    local alien_artifact_yellow_from_small = "bob-alien-artifact-yellow-from-small"
    data_recipe[alien_artifact_yellow_from_small].subgroup = is_bio_processing_alien_large_recipe
    data_recipe[alien_artifact_yellow_from_small].icons = TWO_D_I(alien_artifact, alien_artifact_yellow, alien_artifact_yellow)
    data_recipe[alien_artifact_yellow_from_small].order = c
    data_recipe[alien_artifact_yellow_from_small].ingredients =
    {
        {type = item, name = alien_artifact, amount = 4},
        {type = item, name = alien_artifact_yellow, amount = 1}
    }
    data_recipe[alien_artifact_yellow_from_small].results[1].amount = 4

    local alien_artifact_purple_from_small = "bob-alien-artifact-purple-from-small"
    data_recipe[alien_artifact_purple_from_small].subgroup = is_bio_processing_alien_large_recipe
    data_recipe[alien_artifact_purple_from_small].icons = TWO_D_I(alien_artifact, alien_artifact_purple, alien_artifact_purple)
    data_recipe[alien_artifact_purple_from_small].order = d
    data_recipe[alien_artifact_purple_from_small].ingredients =
    {
        {type = item, name = alien_artifact, amount = 4},
        {type = item, name = alien_artifact_purple, amount = 1}
    }
    data_recipe[alien_artifact_purple_from_small].results[1].amount = 4

    local alien_artifact_green_from_small = "bob-alien-artifact-green-from-small"
    data_recipe[alien_artifact_green_from_small].subgroup = is_bio_processing_alien_large_recipe
    data_recipe[alien_artifact_green_from_small].icons = TWO_D_I(alien_artifact, alien_artifact_green, alien_artifact_green)
    data_recipe[alien_artifact_green_from_small].order = e
    data_recipe[alien_artifact_green_from_small].ingredients =
    {
        {type = item, name = alien_artifact, amount = 4},
        {type = item, name = alien_artifact_green, amount = 1}
    }
    data_recipe[alien_artifact_green_from_small].results[1].amount = 4

    local alien_artifact_red_from_small = "bob-alien-artifact-red-from-small"
    data_recipe[alien_artifact_red_from_small].subgroup = is_bio_processing_alien_large_recipe
    data_recipe[alien_artifact_red_from_small].icons = TWO_D_I(alien_artifact, alien_artifact_red, alien_artifact_red)
    data_recipe[alien_artifact_red_from_small].order = f
    data_recipe[alien_artifact_red_from_small].ingredients =
    {
        {type = item, name = alien_artifact, amount = 4},
        {type = item, name = alien_artifact_red, amount = 1}
    }
    data_recipe[alien_artifact_red_from_small].results[1].amount = 4

    local is_alien_resource = "bob-alien-resource"
    data_item_subgroup[is_alien_resource].group = ig_bio_processing_nauvis
    data_item_subgroup[is_alien_resource].order = p

    data_item[orange_alloy].order = a
    data_recipe[orange_alloy].icons = TWO_D_I(alien_artifact_orange, gold_plate_bob, orange_alloy)
    data_recipe[orange_alloy].order = a
    data_recipe[orange_alloy].ingredients[2].amount = 8
    data_recipe[orange_alloy].results[1].amount = 8

    data_item[blue_alloy].order = b
    data_recipe[blue_alloy].icons = TWO_D_I(alien_artifact_blue, cobalt_steel_plate_bob, blue_alloy)
    data_recipe[blue_alloy].order = b
    data_recipe[blue_alloy].ingredients[2].amount = 8
    data_recipe[blue_alloy].results[1].amount = 8

    data_fluid[yellow_fluid].order = c
    data_recipe[yellow_fluid].icons = THREE_D_I(alien_artifact_yellow, coal, sulfur, yellow_fluid)
    data_recipe[yellow_fluid].order = c
    data_recipe[yellow_fluid].ingredients[2].amount = 4
    data_recipe[yellow_fluid].ingredients[3].amount = 4
    data_recipe[yellow_fluid].results[1].amount = 120

    data_fluid[purple_fluid].order = d
    data_recipe[purple_fluid].icons = TWO_D_I(alien_artifact_purple, sulfuric_acid_angels, purple_fluid)
    data_recipe[purple_fluid].order = d
    data_recipe[purple_fluid].ingredients[2].amount = 120
    data_recipe[purple_fluid].results[1].amount = 120

    data_fluid[green_fluid].order = e
    data_recipe[green_fluid].icons = TWO_D_I(alien_artifact_green, nitric_acid_angels, green_fluid)
    data_recipe[green_fluid].order = e
    data_recipe[green_fluid].ingredients =
    {
        {type = item, name = alien_artifact_green, amount = 1},
        {type = fluid, name = nitric_acid_angels, amount = 120}
    }
    data_recipe[green_fluid].results[1].amount = 120

    data_fluid[red_fluid].order = f
    data_recipe[red_fluid].icons = THREE_D_I(alien_artifact_red, naphtha_angels, fuel_oil_angels, red_fluid)
    data_recipe[red_fluid].order = f
    data_recipe[red_fluid].results[1].amount = 120
end