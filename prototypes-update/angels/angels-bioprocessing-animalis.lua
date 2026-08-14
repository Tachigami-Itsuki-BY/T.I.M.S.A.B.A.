-- FISH FLUID
local is_bio_fish_breeding = "angels-bio-fish-breeding"
data_item_subgroup[is_bio_fish_breeding].order = a

data_fluid[water_for_fish].subgroup = is_bio_fish_breeding
data_fluid[water_for_fish].order = a
TIMSABA.barreling.add_simple_fluid(water_for_fish)
data_recipe[water_for_fish].subgroup = is_bio_fish_breeding
data_recipe[water_for_fish].icons = THREE_I(water, water_saline_angels, water_for_fish)
data_recipe[water_for_fish].order = a
data_recipe[water_for_fish].ingredients[1].amount = 60
data_recipe[water_for_fish].ingredients[2].amount = 60
data_recipe[water_for_fish].results[1].amount = 120

data_fluid[polluted_water_for_fish].subgroup = is_bio_fish_breeding
data_fluid[polluted_water_for_fish].order = b
TIMSABA.barreling.add_simple_fluid(polluted_water_for_fish)

data_item[raw_meat].subgroup = is_bio_fish_breeding
data_item[raw_meat].order = c
data_item[raw_meat].spoil_ticks = 90 * minute
data_item[raw_meat].spoil_result = spoilage
TIMSABA.void.freezing_organics(raw_meat)

data_item[fish_pulp].subgroup = is_bio_fish_breeding
data_item[fish_pulp].order = d
data_item[fish_pulp].spoil_ticks = 90 * minute
data_item[fish_pulp].spoil_result = spoilage
TIMSABA.void.freezing_organics(fish_pulp)

data_fluid[raw_fish_oil].subgroup = is_bio_fish_breeding
data_fluid[raw_fish_oil].order = e
TIMSABA.barreling.add_simple_fluid(raw_fish_oil)

data_fluid[fish_oil].subgroup = is_bio_fish_breeding
data_fluid[fish_oil].order = f
TIMSABA.barreling.add_simple_fluid(fish_oil)

-- FISH
local is_bio_fish = "angels-bio-fish"
data_item_subgroup[is_bio_fish].order = b

data_capsule[factorian_fish].subgroup = is_bio_fish
data_capsule[factorian_fish].order = a
data_capsule[factorian_fish].stack_size = 200
data_capsule[factorian_fish].spoil_ticks = 3 * hour
TIMSABA.void.freezing_organics(factorian_fish)
data_recipe[factorian_fish].subgroup = is_bio_fish
data_recipe[factorian_fish].order = a
data_recipe[factorian_fish].energy_required = 64
data_recipe[factorian_fish].reset_freshness_on_craft = true

data_capsule[levac_fish].subgroup = is_bio_fish
data_capsule[levac_fish].order = b
data_capsule[levac_fish].stack_size = 200
data_capsule[levac_fish].spoil_ticks = 3 * hour
data_capsule[levac_fish].spoil_result = spoilage
TIMSABA.void.freezing_organics(levac_fish)
data_recipe[levac_fish].subgroup = is_bio_fish
data_recipe[levac_fish].order = b
data_recipe[levac_fish].energy_required = 64
data_recipe[levac_fish].ingredients[3].amount = 30
data_recipe[levac_fish].ingredients[4].amount = 120
data_recipe[levac_fish].results[1].amount_min = 4
data_recipe[levac_fish].results[1].amount_max = 8
data_recipe[levac_fish].results[2].amount = 120
data_recipe[levac_fish].reset_freshness_on_craft = true

data_capsule[dorflurp_jellyfish].subgroup = is_bio_fish
data_capsule[dorflurp_jellyfish].order = c
data_capsule[dorflurp_jellyfish].stack_size = 200
data_capsule[dorflurp_jellyfish].spoil_ticks = 3 * hour
data_capsule[dorflurp_jellyfish].spoil_result = spoilage
TIMSABA.void.freezing_organics(dorflurp_jellyfish)
data_recipe[dorflurp_jellyfish].subgroup = is_bio_fish
data_recipe[dorflurp_jellyfish].order = c
data_recipe[dorflurp_jellyfish].energy_required = 64
data_recipe[dorflurp_jellyfish].ingredients[3].amount = 30
data_recipe[dorflurp_jellyfish].ingredients[4].amount = 120
data_recipe[dorflurp_jellyfish].results[1].amount_min = 4
data_recipe[dorflurp_jellyfish].results[1].amount_max = 8
data_recipe[dorflurp_jellyfish].results[2].amount = 120
data_recipe[dorflurp_jellyfish].reset_freshness_on_craft = true

data_capsule[santa_ray].subgroup = is_bio_fish
data_capsule[santa_ray].order = d
data_capsule[santa_ray].stack_size = 200
data_capsule[santa_ray].spoil_ticks = 3 * hour
data_capsule[santa_ray].spoil_result = spoilage
TIMSABA.void.freezing_organics(santa_ray)
data_recipe[santa_ray].subgroup = is_bio_fish
data_recipe[santa_ray].order = d
data_recipe[santa_ray].energy_required = 64
data_recipe[santa_ray].ingredients[3].amount = 30
data_recipe[santa_ray].ingredients[4].amount = 120
data_recipe[santa_ray].results[1].amount_min = 4
data_recipe[santa_ray].results[1].amount_max = 8
data_recipe[santa_ray].results[2].amount = 120
data_recipe[santa_ray].reset_freshness_on_craft = true

-- FISH KEEPING
local factorian_fish_keeping = "angels-fish-keeping-0"
data_recipe[factorian_fish_keeping].subgroup = is_bio_fish_petting
data_recipe[factorian_fish_keeping].icons = TWO_I(factorian_fish, polluted_water_for_fish)
data_recipe[factorian_fish_keeping].order = a
data_recipe[factorian_fish_keeping].energy_required = 32
data_recipe[factorian_fish_keeping].ingredients[2].amount = 30
data_recipe[factorian_fish_keeping].ingredients[3].amount = 120
data_recipe[factorian_fish_keeping].results =
{
    {type = item, name = factorian_fish, amount = 2, ignored_by_productivity = 2, ignored_by_stats = 2},
    {type = item, name = factorian_fish, amount = 1, probability = 0.5, ignored_by_productivity = 1, ignored_by_stats = 1, show_details_in_recipe_tooltip = false},
    {type = fluid, name = polluted_water_for_fish, amount = 120}
}
data_recipe[factorian_fish_keeping].reset_freshness_on_craft = true

local levac_fish_keeping = "angels-fish-keeping-1"
data_recipe[levac_fish_keeping].subgroup = is_bio_fish_petting
data_recipe[levac_fish_keeping].icons = TWO_I(levac_fish, polluted_water_for_fish)
data_recipe[levac_fish_keeping].order = b
data_recipe[levac_fish_keeping].energy_required = 32
data_recipe[levac_fish_keeping].ingredients[2].amount = 30
data_recipe[levac_fish_keeping].ingredients[3].amount = 120
data_recipe[levac_fish_keeping].results =
{
    {type = item, name = levac_fish, amount = 3, ignored_by_productivity = 3, ignored_by_stats = 3},
    {type = item, name = levac_fish, amount = 1, probability = 0.75, ignored_by_productivity = 1, ignored_by_stats = 1, show_details_in_recipe_tooltip = false},
    {type = fluid, name = polluted_water_for_fish, amount = 120}
}
data_recipe[levac_fish_keeping].reset_freshness_on_craft = true

local dorflurp_jelly_fish_keeping = "angels-fish-keeping-2"
data_recipe[dorflurp_jelly_fish_keeping].subgroup = is_bio_fish_petting
data_recipe[dorflurp_jelly_fish_keeping].icons = TWO_I(dorflurp_jellyfish, polluted_water_for_fish)
data_recipe[dorflurp_jelly_fish_keeping].order = c
data_recipe[dorflurp_jelly_fish_keeping].energy_required = 32
data_recipe[dorflurp_jelly_fish_keeping].ingredients[2].amount = 30
data_recipe[dorflurp_jelly_fish_keeping].ingredients[3].amount = 120
data_recipe[dorflurp_jelly_fish_keeping].results =
{
    {type = item, name = dorflurp_jellyfish, amount = 3, ignored_by_productivity = 3, ignored_by_stats = 3},
    {type = item, name = dorflurp_jellyfish, amount = 1, probability = 0.75, ignored_by_productivity = 1, ignored_by_stats = 1, show_details_in_recipe_tooltip = false},
    {type = fluid, name = polluted_water_for_fish, amount = 120}
}
data_recipe[dorflurp_jelly_fish_keeping].reset_freshness_on_craft = true

local santa_ray_fish_keeping = "angels-fish-keeping-3"
data_recipe[santa_ray_fish_keeping].subgroup = is_bio_fish_petting
data_recipe[santa_ray_fish_keeping].icons = TWO_I(santa_ray, polluted_water_for_fish)
data_recipe[santa_ray_fish_keeping].order = d
data_recipe[santa_ray_fish_keeping].energy_required = 32
data_recipe[santa_ray_fish_keeping].ingredients[2].amount = 30
data_recipe[santa_ray_fish_keeping].ingredients[3].amount = 120
data_recipe[santa_ray_fish_keeping].results =
{
    {type = item, name = santa_ray, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1},
    {type = fluid, name = polluted_water_for_fish, amount = 120}
}
data_recipe[santa_ray_fish_keeping].reset_freshness_on_craft = true

-- RAW MEAT from FISH
data_item_subgroup["angels-bio-fish-butchery"].order = b_b

data_recipe[raw_meat_from_factorian_fish].icons = TWO_I(factorian_fish, raw_meat)
data_recipe[raw_meat_from_factorian_fish].energy_required = 8
data_recipe[raw_meat_from_factorian_fish].reset_freshness_on_craft = true

data_recipe[raw_meat_from_levac_fish].icons = TWO_I(levac_fish, raw_meat)
data_recipe[raw_meat_from_levac_fish].energy_required = 8
data_recipe[raw_meat_from_levac_fish].reset_freshness_on_craft = true

data_recipe[raw_meat_from_dorflurp_jelly_fish].icons = TWO_I(dorflurp_jellyfish, raw_meat)
data_recipe[raw_meat_from_dorflurp_jelly_fish].energy_required = 8
data_recipe[raw_meat_from_dorflurp_jelly_fish].reset_freshness_on_craft = true

data_recipe[raw_meat_from_santa_ray_fish].icons = TWO_I(santa_ray, raw_meat)
data_recipe[raw_meat_from_santa_ray_fish].energy_required = 8
data_recipe[raw_meat_from_santa_ray_fish].reset_freshness_on_craft = true

-- RAW FISH OIL
data_item_subgroup["angels-bio-processor-press-fish"].order = b_c

local raw_fish_oil_from_factorian_fish = "angels-fish-pressing-0"
data_recipe[raw_fish_oil_from_factorian_fish].icons = THREE_R_I(factorian_fish, fish_pulp, raw_fish_oil)
data_recipe[raw_fish_oil_from_factorian_fish].energy_required = 16
data_recipe[raw_fish_oil_from_factorian_fish].results[1].amount = 240
data_recipe[raw_fish_oil_from_factorian_fish].results[2].amount = 4
data_recipe[raw_fish_oil_from_factorian_fish].reset_freshness_on_craft = true

local raw_fish_oil_from_levac_fish = "angels-fish-pressing-1"
data_recipe[raw_fish_oil_from_levac_fish].icons = THREE_R_I(levac_fish, fish_pulp, raw_fish_oil)
data_recipe[raw_fish_oil_from_levac_fish].energy_required = 8
data_recipe[raw_fish_oil_from_levac_fish].results[1].amount = 240
data_recipe[raw_fish_oil_from_levac_fish].reset_freshness_on_craft = true

local raw_fish_oil_from_dorflurp_jelly_fish = "angels-fish-pressing-2"
data_recipe[raw_fish_oil_from_dorflurp_jelly_fish].icons = THREE_R_I(dorflurp_jellyfish, fish_pulp, raw_fish_oil)
data_recipe[raw_fish_oil_from_dorflurp_jelly_fish].results[1].amount = 120
data_recipe[raw_fish_oil_from_dorflurp_jelly_fish].reset_freshness_on_craft = true

local raw_fish_oil_from_santa_ray_fish = "angels-fish-pressing-3"
data_recipe[raw_fish_oil_from_santa_ray_fish].icons = THREE_R_I(santa_ray, fish_pulp, raw_fish_oil)
data_recipe[raw_fish_oil_from_santa_ray_fish].energy_required = 4
data_recipe[raw_fish_oil_from_santa_ray_fish].results[1].amount = 60
data_recipe[raw_fish_oil_from_santa_ray_fish].reset_freshness_on_craft = true

local fish_oil_filtration_1 = "angels-liquid-raw-fish-oil-filtering-1"
data_recipe[fish_oil_filtration_1].icons = TWO_D_I(raw_fish_oil, water_thermal_angels, fish_oil, mineral_oil_angels)
data_recipe[fish_oil_filtration_1].ingredients[1].amount = 120
data_recipe[fish_oil_filtration_1].ingredients[2].amount = 60
data_recipe[fish_oil_filtration_1].results[1].amount = 60
data_recipe[fish_oil_filtration_1].results[2].amount = 120

local fish_oil_filtration_2 = "angels-liquid-raw-fish-oil-filtering-2"
data_recipe[fish_oil_filtration_2].icons = TWO_D_I(raw_fish_oil, water_thermal_angels, mineral_oil_angels, fish_oil)
data_recipe[fish_oil_filtration_2].ingredients[1].amount = 120
data_recipe[fish_oil_filtration_2].ingredients[2].amount = 60
data_recipe[fish_oil_filtration_2].results[1].amount = 120
data_recipe[fish_oil_filtration_2].results[2].amount = 60

local fish_oil_refining = "angels-liquid-fish-oil-refining"
data_recipe[fish_oil_refining].category = chemistry
data_recipe[fish_oil_refining].icons = FOUR_R_I(fish_oil, fermentation_fluid, nil, lubricant)
data_recipe[fish_oil_refining].ingredients[1].amount = 120
data_recipe[fish_oil_refining].results[1].amount = 30
data_recipe[fish_oil_refining].results[2].amount = 60

local advanced_fish_oil_refining = "angels-advanced-liquid-fish-oil-refining"
data_recipe[advanced_fish_oil_refining].category = chemistry
data_recipe[advanced_fish_oil_refining].icons = FOUR_R_I(fish_oil, fermentation_fluid, nil, mineral_oil_angels)
data_recipe[advanced_fish_oil_refining].ingredients[1].amount = 120
data_recipe[advanced_fish_oil_refining].results[1].amount = 60
data_recipe[advanced_fish_oil_refining].results[2].amount = 30

local fish_pulp_to_nutrient_pulp = "angels-fish-pulp-nutrients"
data_recipe[fish_pulp_to_nutrient_pulp].icons = TWO_I(fish_pulp, nutrient_pulp)
data_recipe[fish_pulp_to_nutrient_pulp].ingredients[1].amount = 4
data_recipe[fish_pulp_to_nutrient_pulp].results[1].amount = 15

-- PUFFER FLUID
data_fluid[puffer_atmosphere].subgroup = is_bio_puffer_breeding
data_fluid[puffer_atmosphere].order = a
data_recipe[puffer_atmosphere].subgroup = is_bio_puffer_breeding
data_recipe[puffer_atmosphere].icons = FOUR_I(sulfur_dioxide_angels, hydrogen_fluoride_angels, oxygen_angels, puffer_atmosphere)
data_recipe[puffer_atmosphere].order = a
data_recipe[puffer_atmosphere].energy_required = 32
data_recipe[puffer_atmosphere].ingredients[1].amount = 30
data_recipe[puffer_atmosphere].ingredients[2].amount = 15
data_recipe[puffer_atmosphere].ingredients[3].amount = 15

-- PUFFER EGG
data_item_subgroup["angels-bio-puffer-egg"].order = d

data_item[gaseous_puffer_egg].spoil_ticks = 3 * hour
data_item[gaseous_puffer_egg].spoil_result = spoilage
TIMSABA.void.freezing_organics(gaseous_puffer_egg)
data_recipe[gaseous_puffer_egg].energy_required = 64
data_recipe[gaseous_puffer_egg].ingredients[2].amount = 4
data_recipe[gaseous_puffer_egg].ingredients[3].amount = 30
data_recipe[gaseous_puffer_egg].ingredients[4].amount = 30
data_recipe[gaseous_puffer_egg].results[2].amount = 30
data_recipe[gaseous_puffer_egg].reset_freshness_on_craft = true

data_item[rancid_puffer_egg].spoil_ticks = 3 * hour
data_item[rancid_puffer_egg].spoil_result = spoilage
TIMSABA.void.freezing_organics(rancid_puffer_egg)
data_recipe[rancid_puffer_egg].energy_required = 64
data_recipe[rancid_puffer_egg].ingredients[2].amount = 4
data_recipe[rancid_puffer_egg].ingredients[3].amount = 30
data_recipe[rancid_puffer_egg].ingredients[4].amount = 30
data_recipe[rancid_puffer_egg].results[2].amount = 30
data_recipe[rancid_puffer_egg].reset_freshness_on_craft = true

data_item[blazing_puffer_egg].spoil_ticks = 3 * hour
data_item[blazing_puffer_egg].spoil_result = spoilage
TIMSABA.void.freezing_organics(blazing_puffer_egg)
data_recipe[blazing_puffer_egg].energy_required = 64
data_recipe[blazing_puffer_egg].ingredients[2].amount = 4
data_recipe[blazing_puffer_egg].ingredients[3].amount = 30
data_recipe[blazing_puffer_egg].ingredients[4].amount = 30
data_recipe[blazing_puffer_egg].results[2].amount = 30
data_recipe[blazing_puffer_egg].reset_freshness_on_craft = true

data_item[acidic_puffer_egg].spoil_ticks = 3 * hour
data_item[acidic_puffer_egg].spoil_result = spoilage
TIMSABA.void.freezing_organics(acidic_puffer_egg)
data_recipe[acidic_puffer_egg].energy_required = 64
data_recipe[acidic_puffer_egg].ingredients[2].amount = 4
data_recipe[acidic_puffer_egg].ingredients[3].amount = 30
data_recipe[acidic_puffer_egg].ingredients[4].amount = 30
data_recipe[acidic_puffer_egg].results[2].amount = 30
data_recipe[acidic_puffer_egg].reset_freshness_on_craft = true

data_item[corrosive_puffer_egg].spoil_ticks = 3 * hour
data_item[corrosive_puffer_egg].spoil_result = spoilage
TIMSABA.void.freezing_organics(corrosive_puffer_egg)
data_recipe[corrosive_puffer_egg].energy_required = 64
data_recipe[corrosive_puffer_egg].ingredients[2].amount = 4
data_recipe[corrosive_puffer_egg].ingredients[3].amount = 30
data_recipe[corrosive_puffer_egg].ingredients[4].amount = 30
data_recipe[corrosive_puffer_egg].results[2].amount = 30
data_recipe[corrosive_puffer_egg].reset_freshness_on_craft = true

-- PUFFER
local is_puffer_1 = "angels-bio-puffer-1"
data_item_subgroup[is_puffer_1].order = d_a

data_item[gaseous_puffer].spoil_ticks = 6 * hour
data_item[gaseous_puffer].spoil_result = spoilage
TIMSABA.void.freezing_organics(gaseous_puffer)
data_recipe[gaseous_puffer].icons = THREE_D_I(gaseous_puffer_egg, nil, nil, puffer_egg_shell, gaseous_puffer, rancid_puffer)
data_recipe[gaseous_puffer].energy_required = 8
data_recipe[gaseous_puffer].reset_freshness_on_craft = true

data_item[rancid_puffer].spoil_ticks = 6 * hour
data_item[rancid_puffer].spoil_result = spoilage
TIMSABA.void.freezing_organics(rancid_puffer)
data_recipe[rancid_puffer].icons = THREE_D_I(rancid_puffer_egg, nil, nil, puffer_egg_shell, rancid_puffer, gaseous_puffer)
data_recipe[rancid_puffer].energy_required = 8
data_recipe[rancid_puffer].reset_freshness_on_craft = true

data_item[blazing_puffer].spoil_ticks = 6 * hour
data_item[blazing_puffer].spoil_result = spoilage
TIMSABA.void.freezing_organics(blazing_puffer)
data_recipe[blazing_puffer].icons = THREE_D_I(blazing_puffer_egg, nil, nil, puffer_egg_shell, blazing_puffer, gaseous_puffer)
data_recipe[blazing_puffer].energy_required = 8
data_recipe[blazing_puffer].reset_freshness_on_craft = true

data_item[acidic_puffer].spoil_ticks = 6 * hour
data_item[acidic_puffer].spoil_result = spoilage
TIMSABA.void.freezing_organics(acidic_puffer)
data_recipe[acidic_puffer].icons = THREE_D_I(acidic_puffer_egg, nil, nil, puffer_egg_shell, acidic_puffer, gaseous_puffer)
data_recipe[acidic_puffer].energy_required = 8
data_recipe[acidic_puffer].reset_freshness_on_craft = true

data_item[corrosive_puffer].spoil_ticks = 6 * hour
data_item[corrosive_puffer].spoil_result = spoilage
TIMSABA.void.freezing_organics(corrosive_puffer)
data_recipe[corrosive_puffer].icons = THREE_D_I(corrosive_puffer_egg, nil, nil, puffer_egg_shell, corrosive_puffer, gaseous_puffer)
data_recipe[corrosive_puffer].energy_required = 8
data_recipe[corrosive_puffer].reset_freshness_on_craft = true

data_item[puffer_egg_shell].subgroup = is_puffer_1
data_item[puffer_egg_shell].order = y

data_item[puffer_egg_shell_powder].subgroup = is_puffer_1
data_item[puffer_egg_shell_powder].order = z
data_recipe[puffer_egg_shell_powder].subgroup = is_puffer_1
data_recipe[puffer_egg_shell_powder].icons = TWO_I(puffer_egg_shell, puffer_egg_shell_powder)
data_recipe[puffer_egg_shell_powder].order = z
data_recipe[puffer_egg_shell_powder].ingredients[1].amount = 4
data_recipe[puffer_egg_shell_powder].results[1].amount = 4

-- PUFFER PUFFING
local gaseous_puffer_puffing = "angels-puffer-puffing-1"
data_recipe[gaseous_puffer_puffing].subgroup = is_puffer_puffing
data_recipe[gaseous_puffer_puffing].icons = THREE_I(gaseous_puffer, compressed_air, acid_angels)
data_recipe[gaseous_puffer_puffing].order = a
data_recipe[gaseous_puffer_puffing].energy_required = 16
data_recipe[gaseous_puffer_puffing].ingredients[2].amount = 30
data_recipe[gaseous_puffer_puffing].ingredients[3].amount = 30
data_recipe[gaseous_puffer_puffing].ingredients[4].amount = 120
data_recipe[gaseous_puffer_puffing].results[3].amount = 240
data_recipe[gaseous_puffer_puffing].reset_freshness_on_craft = true

local rancid_puffer_puffing = "angels-puffer-puffing-2"
data_recipe[rancid_puffer_puffing].subgroup = is_puffer_puffing
data_recipe[rancid_puffer_puffing].icons = THREE_I(rancid_puffer, natural_gas_angels, raw_gas_angels)
data_recipe[rancid_puffer_puffing].order = b
data_recipe[rancid_puffer_puffing].energy_required = 16
data_recipe[rancid_puffer_puffing].ingredients[2].amount = 30
data_recipe[rancid_puffer_puffing].ingredients[3].amount = 30
data_recipe[rancid_puffer_puffing].ingredients[4].name = natural_gas_angels
data_recipe[rancid_puffer_puffing].ingredients[4].amount = 120
data_recipe[rancid_puffer_puffing].results =
{
    {type = item, name = rancid_puffer, amount = 3, ignored_by_productivity = 3, ignored_by_stats = 3},
    {type = item, name = rancid_puffer, amount = 1, probability = 0.95, ignored_by_productivity = 1, ignored_by_stats = 1, show_details_in_recipe_tooltip = false},
    {type = fluid, name = raw_gas_angels, amount = 240}
}
data_recipe[rancid_puffer_puffing].reset_freshness_on_craft = true

local blazing_puffer_puffing = "angels-puffer-puffing-3"
data_recipe[blazing_puffer_puffing].subgroup = is_puffer_puffing
data_recipe[blazing_puffer_puffing].icons = THREE_I(blazing_puffer, carbon_monoxide_angels, urea_solution_angels)
data_recipe[blazing_puffer_puffing].order = c
data_recipe[blazing_puffer_puffing].energy_required = 16
data_recipe[blazing_puffer_puffing].ingredients[2].amount = 30
data_recipe[blazing_puffer_puffing].ingredients[3].amount = 30
data_recipe[blazing_puffer_puffing].ingredients[4].amount = 120
data_recipe[blazing_puffer_puffing].results =
{
    {type = item, name = blazing_puffer, amount = 3, ignored_by_productivity = 3, ignored_by_stats = 3},
    {type = item, name = blazing_puffer, amount = 1, probability = 0.95, ignored_by_productivity = 1, ignored_by_stats = 1, show_details_in_recipe_tooltip = false},
    {type = fluid, name = urea_solution_angels, amount = 240}
}
data_recipe[blazing_puffer_puffing].reset_freshness_on_craft = true

local acidic_puffer_puffing = "angels-puffer-puffing-4"
data_recipe[acidic_puffer_puffing].subgroup = is_puffer_puffing
data_recipe[acidic_puffer_puffing].icons = THREE_I(acidic_puffer, steam, synthesis_angels)
data_recipe[acidic_puffer_puffing].order = d
data_recipe[acidic_puffer_puffing].energy_required = 16
data_recipe[acidic_puffer_puffing].ingredients[2].amount = 30
data_recipe[acidic_puffer_puffing].ingredients[3].amount = 30
data_recipe[acidic_puffer_puffing].ingredients[4].name = steam
data_recipe[acidic_puffer_puffing].ingredients[4].amount = 120
data_recipe[acidic_puffer_puffing].results =
{
    {type = item, name = acidic_puffer, amount = 3, ignored_by_productivity = 3, ignored_by_stats = 3},
    {type = item, name = acidic_puffer, amount = 1, probability = 0.95, ignored_by_productivity = 1, ignored_by_stats = 1, show_details_in_recipe_tooltip = false},
    {type = fluid, name = synthesis_angels, amount = 240}
}
data_recipe[acidic_puffer_puffing].reset_freshness_on_craft = true

local corrosive_puffer_puffing = "angels-puffer-puffing-5"
data_recipe[corrosive_puffer_puffing].subgroup = is_puffer_puffing
data_recipe[corrosive_puffer_puffing].icons = THREE_I(corrosive_puffer, ammonia_angels, hydrazine_angels)
data_recipe[corrosive_puffer_puffing].order = e
data_recipe[corrosive_puffer_puffing].energy_required = 16
data_recipe[corrosive_puffer_puffing].ingredients[2].amount = 30
data_recipe[corrosive_puffer_puffing].ingredients[3].amount = 30
data_recipe[corrosive_puffer_puffing].ingredients[4].name = ammonia_angels
data_recipe[corrosive_puffer_puffing].ingredients[4].amount = 120
data_recipe[corrosive_puffer_puffing].results =
{
    {type = item, name = corrosive_puffer, amount = 3, ignored_by_productivity = 3, ignored_by_stats = 3},
    {type = item, name = corrosive_puffer, amount = 1, probability = 0.95, ignored_by_productivity = 1, ignored_by_stats = 1, show_details_in_recipe_tooltip = false},
    {type = fluid, name = hydrazine_angels, amount = 240}
}
data_recipe[corrosive_puffer_puffing].reset_freshness_on_craft = true

-- PUFFER ATMOSPHERE and WASTE
data_item_subgroup["angels-bio-puffer-2"].order = d_c

local puffer_atmosphere_2_3 = "angels-puffer-puffing-23"
data_recipe[puffer_atmosphere_2_3].energy_required = 16
data_recipe[puffer_atmosphere_2_3].ingredients[3].amount = 30
data_recipe[puffer_atmosphere_2_3].ingredients[4].amount = 30
data_recipe[puffer_atmosphere_2_3].ingredients[5].amount = 120
data_recipe[puffer_atmosphere_2_3].results[5].amount = 30
data_recipe[puffer_atmosphere_2_3].results[5].ignored_by_productivity = 30
data_recipe[puffer_atmosphere_2_3].results[6].amount = 120
data_recipe[puffer_atmosphere_2_3].reset_freshness_on_craft = true

local puffer_waste_1_2 = "angels-puffer-puffing-12"
data_recipe[puffer_waste_1_2].energy_required = 16
data_recipe[puffer_waste_1_2].ingredients[3].amount = 30
data_recipe[puffer_waste_1_2].ingredients[4].amount = 30
data_recipe[puffer_waste_1_2].ingredients[5].amount = 120
data_recipe[puffer_waste_1_2].results[5].amount = 30
data_recipe[puffer_waste_1_2].results[5].ignored_by_productivity = 30
data_recipe[puffer_waste_1_2].results[6].amount = 120
data_recipe[puffer_waste_1_2].reset_freshness_on_craft = true

local puffer_waste_1_3 = "angels-puffer-puffing-13"
data_recipe[puffer_waste_1_3].energy_required = 16
data_recipe[puffer_waste_1_3].ingredients[3].amount = 30
data_recipe[puffer_waste_1_3].ingredients[4].amount = 30
data_recipe[puffer_waste_1_3].ingredients[5].amount = 120
data_recipe[puffer_waste_1_3].results[5].amount = 30
data_recipe[puffer_waste_1_3].results[5].ignored_by_productivity = 30
data_recipe[puffer_waste_1_3].results[6].amount = 120
data_recipe[puffer_waste_1_3].reset_freshness_on_craft = true

local puffer_waste_1_4 = "angels-puffer-puffing-14"
data_recipe[puffer_waste_1_4].energy_required = 16
data_recipe[puffer_waste_1_4].ingredients[3].amount = 30
data_recipe[puffer_waste_1_4].ingredients[4].amount = 30
data_recipe[puffer_waste_1_4].ingredients[5].amount = 120
data_recipe[puffer_waste_1_4].results[5].amount = 30
data_recipe[puffer_waste_1_4].results[5].ignored_by_productivity = 30
data_recipe[puffer_waste_1_4].results[6].amount = 120
data_recipe[puffer_waste_1_4].reset_freshness_on_craft = true

local puffer_waste_1_5 = "angels-puffer-puffing-15"
data_recipe[puffer_waste_1_5].energy_required = 16
data_recipe[puffer_waste_1_5].ingredients[3].amount = 30
data_recipe[puffer_waste_1_5].ingredients[4].amount = 30
data_recipe[puffer_waste_1_5].ingredients[5].amount = 120
data_recipe[puffer_waste_1_5].results[5].amount = 30
data_recipe[puffer_waste_1_5].results[5].ignored_by_productivity = 30
data_recipe[puffer_waste_1_5].results[6].amount = 120
data_recipe[puffer_waste_1_5].reset_freshness_on_craft = true

-- MIXED PUFFER
data_item_subgroup["angels-bio-puffer-breeding-2"].order = d_d

local puffer_mixed_2_3 = "angels-puffer-breeding-23"
data_recipe[puffer_mixed_2_3].energy_required = 64
data_recipe[puffer_mixed_2_3].ingredients[3].amount = 4
data_recipe[puffer_mixed_2_3].ingredients[4].amount = 30
data_recipe[puffer_mixed_2_3].ingredients[5].amount = 30
data_recipe[puffer_mixed_2_3].results[3].amount = 30
data_recipe[puffer_mixed_2_3].results[3].ignored_by_productivity = 30
data_recipe[puffer_mixed_2_3].reset_freshness_on_craft = true

local puffer_mixed_1_2 = "angels-puffer-breeding-12"
data_recipe[puffer_mixed_1_2].energy_required = 64
data_recipe[puffer_mixed_1_2].ingredients[3].amount = 4
data_recipe[puffer_mixed_1_2].ingredients[4].amount = 30
data_recipe[puffer_mixed_1_2].ingredients[5].amount = 30
data_recipe[puffer_mixed_1_2].results[3].amount = 30
data_recipe[puffer_mixed_1_2].results[3].ignored_by_productivity = 30
data_recipe[puffer_mixed_1_2].reset_freshness_on_craft = true

local puffer_mixed_1_3 = "angels-puffer-breeding-13"
data_recipe[puffer_mixed_1_3].energy_required = 64
data_recipe[puffer_mixed_1_3].ingredients[3].amount = 4
data_recipe[puffer_mixed_1_3].ingredients[4].amount = 30
data_recipe[puffer_mixed_1_3].ingredients[5].amount = 30
data_recipe[puffer_mixed_1_3].results[3].amount = 30
data_recipe[puffer_mixed_1_3].results[3].ignored_by_productivity = 30
data_recipe[puffer_mixed_1_3].reset_freshness_on_craft = true

local puffer_mixed_1_4 = "angels-puffer-breeding-14"
data_recipe[puffer_mixed_1_4].energy_required = 64
data_recipe[puffer_mixed_1_4].ingredients[3].amount = 4
data_recipe[puffer_mixed_1_4].ingredients[4].amount = 30
data_recipe[puffer_mixed_1_4].ingredients[5].amount = 30
data_recipe[puffer_mixed_1_4].results[3].amount = 30
data_recipe[puffer_mixed_1_4].results[3].ignored_by_productivity = 30
data_recipe[puffer_mixed_1_4].reset_freshness_on_craft = true

local puffer_mixed_1_5 = "angels-puffer-breeding-15"
data_recipe[puffer_mixed_1_5].energy_required = 64
data_recipe[puffer_mixed_1_5].ingredients[3].amount = 4
data_recipe[puffer_mixed_1_5].ingredients[4].amount = 30
data_recipe[puffer_mixed_1_5].ingredients[5].amount = 30
data_recipe[puffer_mixed_1_5].results[3].amount = 30
data_recipe[puffer_mixed_1_5].results[3].ignored_by_productivity = 30
data_recipe[puffer_mixed_1_5].reset_freshness_on_craft = true

-- RAW MEAT from PUFFER
data_item_subgroup["angels-bio-puffer-butchery"].order = d_e

local gaseous_puffer_butchery = "angels-puffer-butchery-1"
data_recipe[gaseous_puffer_butchery].icons = TWO_I(gaseous_puffer, raw_meat)
data_recipe[gaseous_puffer_butchery].energy_required = 16
data_recipe[gaseous_puffer_butchery].reset_freshness_on_craft = true

local rancid_puffer_butchery = "angels-puffer-butchery-2"
data_recipe[rancid_puffer_butchery].icons = TWO_I(rancid_puffer, raw_meat)
data_recipe[rancid_puffer_butchery].energy_required = 16
data_recipe[rancid_puffer_butchery].reset_freshness_on_craft = true

local blazing_puffer_butchery = "angels-puffer-butchery-3"
data_recipe[blazing_puffer_butchery].icons = TWO_I(blazing_puffer, raw_meat)
data_recipe[blazing_puffer_butchery].energy_required = 16
data_recipe[blazing_puffer_butchery].reset_freshness_on_craft = true

local acidic_puffer_butchery = "angels-puffer-butchery-4"
data_recipe[acidic_puffer_butchery].icons = TWO_I(acidic_puffer, raw_meat)
data_recipe[acidic_puffer_butchery].energy_required = 16
data_recipe[acidic_puffer_butchery].reset_freshness_on_craft = true

local corrosive_puffer_butchery = "angels-puffer-butchery-5"
data_recipe[corrosive_puffer_butchery].icons = TWO_I(corrosive_puffer, raw_meat)
data_recipe[corrosive_puffer_butchery].energy_required = 16
data_recipe[corrosive_puffer_butchery].reset_freshness_on_craft = true

-- SMALL BITER
local is_biter_1 = "angels-bio-biter"
data_item_subgroup[is_biter_1].order = e

data_item[biter_small_egg].subgroup = is_biter_1
data_item[biter_small_egg].order = a
data_item[biter_small_egg].spoil_ticks = 30 * minute
data_item[biter_small_egg].spoil_to_trigger_result =
{
    items_per_trigger = 1,
    trigger =
    {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            source_effects =
            {
                {
                    type = "create-entity",
                    entity_name = "small-biter",
                    affects_target = true,
                    show_in_tooltip = true,
                    as_enemy = true,
                    find_non_colliding_position = true,
                    abort_if_over_space = true,
                    offset_deviation = {{-5, -5}, {5, 5}},
                    non_colliding_fail_result =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "instant",
                            source_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = "small-biter",
                                    affects_target = true,
                                    show_in_tooltip = false,
                                    as_enemy = true,
                                    offset_deviation = {{-1, -1}, {1, 1}}
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
TIMSABA.void.freezing_organics(biter_small_egg)
data_recipe[biter_small_egg].category = organic_assembling
data_recipe[biter_small_egg].subgroup = is_biter_1
data_recipe[biter_small_egg].icons = TWO_I(blazing_puffer_egg, biter_small_egg)
data_recipe[biter_small_egg].order = a
data_recipe[biter_small_egg].energy_required = 64
data_recipe[biter_small_egg].reset_freshness_on_craft = true

data_item[biter_small].order = b
data_item[biter_small].spoil_ticks = 3 * hour
data_item[biter_small].spoil_result = spoilage
TIMSABA.void.freezing_organics(biter_small)
data_recipe[biter_small].icons = TWO_I(biter_small_egg, biter_small)
data_recipe[biter_small].order = b
data_recipe[biter_small].energy_required = 64
data_recipe[biter_small].ingredients[3].amount = 15
data_recipe[biter_small].reset_freshness_on_craft = true

local biter_small_keeping = "angels-biter-small-keeping"
data_recipe[biter_small_keeping].icons = TWO_I(biter_small, crystal_splinter)
data_recipe[biter_small_keeping].order = b_a
data_recipe[biter_small_keeping].energy_required = 32
data_recipe[biter_small_keeping].ingredients[3].amount = 30
data_recipe[biter_small_keeping].reset_freshness_on_craft = true

data_item[biter_queen_small].order = c
data_item[biter_queen_small].spoil_ticks = 3 * hour
data_item[biter_queen_small].spoil_result = spoilage
TIMSABA.void.freezing_organics(biter_queen_small)

local biter_small_breeding = "angels-biter-small-breeding"
data_recipe[biter_small_breeding].order = c_a
data_recipe[biter_small_breeding].energy_required = 64
data_recipe[biter_small_breeding].ingredients[3].amount = 30
data_recipe[biter_small_breeding].reset_freshness_on_craft = true

local biter_small_butchering = "angels-biter-small-butchering"
data_recipe[biter_small_butchering].subgroup = is_biter_1
data_recipe[biter_small_butchering].icons = TWO_I(biter_small, raw_meat)
data_recipe[biter_small_butchering].order = y
data_recipe[biter_small_butchering].energy_required = 32
data_recipe[biter_small_butchering].results =
{
    {type = item, name = raw_meat, amount = 1},
    {type = item, name = crystal_splinter, amount = 1, probability = 0.5}
}
data_recipe[biter_small_butchering].reset_freshness_on_craft = true

local biter_queen_small_butchering = "angels-biter-queen-small-butchering"
data_recipe[biter_queen_small_butchering].subgroup = is_biter_1
data_recipe[biter_queen_small_butchering].icons = TWO_I(biter_queen_small, raw_meat)
data_recipe[biter_queen_small_butchering].order = z
data_recipe[biter_queen_small_butchering].energy_required = 32
data_recipe[biter_queen_small_butchering].results =
{
    {type = item, name = raw_meat, amount_min = 1, amount_max = 2},
    {type = item, name = crystal_splinter, amount = 1}
}
data_recipe[biter_queen_small_butchering].reset_freshness_on_craft = true

-- MEDIUM BITER
data_item[biter_medium_egg].subgroup = is_biter_2
data_item[biter_medium_egg].order = a
data_item[biter_medium_egg].spoil_ticks = 45 * minute
data_item[biter_medium_egg].spoil_to_trigger_result =
{
    items_per_trigger = 1,
    trigger =
    {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            source_effects =
            {
                {
                    type = "create-entity",
                    entity_name = "medium-biter",
                    affects_target = true,
                    show_in_tooltip = true,
                    as_enemy = true,
                    find_non_colliding_position = true,
                    abort_if_over_space = true,
                    offset_deviation = {{-5, -5}, {5, 5}},
                    non_colliding_fail_result =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "instant",
                            source_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = "medium-biter",
                                    affects_target = true,
                                    show_in_tooltip = false,
                                    as_enemy = true,
                                    offset_deviation = {{-1, -1}, {1, 1}}
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
TIMSABA.void.freezing_organics(biter_medium_egg)
data_recipe[biter_medium_egg].category = organic_assembling
data_recipe[biter_medium_egg].subgroup = is_biter_2
data_recipe[biter_medium_egg].icons = TWO_D_I(acidic_puffer_egg, crystal_splinter, biter_medium_egg)
data_recipe[biter_medium_egg].order = a
data_recipe[biter_medium_egg].energy_required = 64
data_recipe[biter_medium_egg].reset_freshness_on_craft = true

data_item[biter_medium].subgroup = is_biter_2
data_item[biter_medium].order = b
data_item[biter_medium].spoil_ticks = 6 * hour
data_item[biter_medium].spoil_result = spoilage
TIMSABA.void.freezing_organics(biter_medium)
data_recipe[biter_medium].subgroup = is_biter_2
data_recipe[biter_medium].icons = TWO_I(biter_medium_egg, biter_medium)
data_recipe[biter_medium].order = b
data_recipe[biter_medium].energy_required = 64
data_recipe[biter_medium].ingredients[3].amount = 30
data_recipe[biter_medium].reset_freshness_on_craft = true

local biter_medium_keeping = "angels-biter-medium-keeping"
data_recipe[biter_medium_keeping].subgroup = is_biter_2
data_recipe[biter_medium_keeping].icons = TWO_I(biter_medium, crystal_shard)
data_recipe[biter_medium_keeping].order = b_a
data_recipe[biter_medium_keeping].energy_required = 32
data_recipe[biter_medium_keeping].ingredients[3].amount = 60
data_recipe[biter_medium_keeping].reset_freshness_on_craft = true

data_item[biter_queen_medium].subgroup = is_biter_2
data_item[biter_queen_medium].order = c
data_item[biter_queen_medium].spoil_ticks = 6 * hour
data_item[biter_queen_medium].spoil_result = spoilage
TIMSABA.void.freezing_organics(biter_queen_medium)

local biter_medium_breeding = "angels-biter-medium-breeding"
data_recipe[biter_medium_breeding].subgroup = is_biter_2
data_recipe[biter_medium_breeding].order = c_a
data_recipe[biter_medium_breeding].energy_required = 64
data_recipe[biter_medium_breeding].ingredients[3].amount = 60
data_recipe[biter_medium_breeding].reset_freshness_on_craft = true

local biter_medium_butchering = "angels-biter-medium-butchering"
data_recipe[biter_medium_butchering].subgroup = is_biter_2
data_recipe[biter_medium_butchering].icons = TWO_I(biter_medium, raw_meat)
data_recipe[biter_medium_butchering].order = y
data_recipe[biter_medium_butchering].energy_required = 32
data_recipe[biter_medium_butchering].results =
{
    {type = item, name = raw_meat, amount = 2},
    {type = item, name = crystal_shard, amount = 1, probability = 0.5}
}
data_recipe[biter_medium_butchering].reset_freshness_on_craft = true

local biter_queen_medium_butchering = "angels-biter-queen-medium-butchering"
data_recipe[biter_queen_medium_butchering].subgroup = is_biter_2
data_recipe[biter_queen_medium_butchering].icons = TWO_I(biter_queen_medium, raw_meat)
data_recipe[biter_queen_medium_butchering].order = z
data_recipe[biter_queen_medium_butchering].energy_required = 32
data_recipe[biter_queen_medium_butchering].results =
{
    {type = item, name = raw_meat, amount_min = 2, amount_max = 4},
    {type = item, name = crystal_shard, amount = 1}
}
data_recipe[biter_queen_medium_butchering].reset_freshness_on_craft = true

-- BIG BITER
data_item[biter_big_egg].subgroup = is_biter_3
data_item[biter_big_egg].order = a
data_item[biter_big_egg].spoil_ticks = 1 * hour
data_item[biter_big_egg].spoil_to_trigger_result =
{
    items_per_trigger = 1,
    trigger =
    {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            source_effects =
            {
                {
                    type = "create-entity",
                    entity_name = "big-biter",
                    affects_target = true,
                    show_in_tooltip = true,
                    as_enemy = true,
                    find_non_colliding_position = true,
                    abort_if_over_space = true,
                    offset_deviation = {{-5, -5}, {5, 5}},
                    non_colliding_fail_result =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "instant",
                            source_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = "big-biter",
                                    affects_target = true,
                                    show_in_tooltip = false,
                                    as_enemy = true,
                                    offset_deviation = {{-1, -1}, {1, 1}}
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
TIMSABA.void.freezing_organics(biter_big_egg)
data_recipe[biter_big_egg].category = organic_assembling
data_recipe[biter_big_egg].subgroup = is_biter_3
data_recipe[biter_big_egg].icons = TWO_D_I(corrosive_puffer_egg, crystal_shard, biter_big_egg)
data_recipe[biter_big_egg].order = a
data_recipe[biter_big_egg].energy_required = 64
data_recipe[biter_big_egg].reset_freshness_on_craft = true

data_item[biter_big].subgroup = is_biter_3
data_item[biter_big].order = b
data_item[biter_big].spoil_ticks = 9 * hour
data_item[biter_big].spoil_result = spoilage
TIMSABA.void.freezing_organics(biter_big)
data_recipe[biter_big].subgroup = is_biter_3
data_recipe[biter_big].icons = TWO_I(biter_big_egg, biter_big)
data_recipe[biter_big].order = b
data_recipe[biter_big].energy_required = 64
data_recipe[biter_big].ingredients[3].amount = 60
data_recipe[biter_big].reset_freshness_on_craft = true

local biter_big_keeping = "angels-biter-big-keeping"
data_recipe[biter_big_keeping].subgroup = is_biter_3
data_recipe[biter_big_keeping].icons = TWO_I(biter_big, crystal_full)
data_recipe[biter_big_keeping].order = b_a
data_recipe[biter_big_keeping].energy_required = 32
data_recipe[biter_big_keeping].ingredients[3].amount = 120
data_recipe[biter_big_keeping].reset_freshness_on_craft = true

data_item[biter_queen_big].subgroup = is_biter_3
data_item[biter_queen_big].order = c
data_item[biter_queen_big].spoil_ticks = 9 * hour
data_item[biter_queen_big].spoil_result = spoilage
TIMSABA.void.freezing_organics(biter_queen_big)

local biter_big_breeding = "angels-biter-big-breeding"
data_recipe[biter_big_breeding].subgroup = is_biter_3
data_recipe[biter_big_breeding].order = c_a
data_recipe[biter_big_breeding].energy_required = 64
data_recipe[biter_big_breeding].ingredients[3].amount = 120
data_recipe[biter_big_breeding].reset_freshness_on_craft = true

local biter_big_butchering = "angels-biter-big-butchering"
data_recipe[biter_big_butchering].subgroup = is_biter_3
data_recipe[biter_big_butchering].icons = TWO_I(biter_big, raw_meat)
data_recipe[biter_big_butchering].order = y
data_recipe[biter_big_butchering].energy_required = 32
data_recipe[biter_big_butchering].results =
{
    {type = item, name = raw_meat, amount = 4},
    {type = item, name = crystal_full, amount = 1, probability = 0.5}
}
data_recipe[biter_big_butchering].reset_freshness_on_craft = true

local biter_queen_big_butchering = "angels-biter-queen-big-butchering"
data_recipe[biter_queen_big_butchering].subgroup = is_biter_3
data_recipe[biter_queen_big_butchering].icons = TWO_I(biter_queen_big, raw_meat)
data_recipe[biter_queen_big_butchering].order = z
data_recipe[biter_queen_big_butchering].energy_required = 32
data_recipe[biter_queen_big_butchering].results =
{
    {type = item, name = raw_meat, amount_min = 4, amount_max = 8},
    {type = item, name = crystal_full, amount = 1}
}
data_recipe[biter_queen_big_butchering].reset_freshness_on_craft = true

-- BIO ALIEN ITERMEDIATE
data_item_subgroup["angels-bio-processing-alien-intermediate"].order = f

data_recipe[alien_spores].icons = FOUR_R_I(polluted_water_for_fish, alien_spores, nil, water_yellow_waste)
data_recipe[alien_spores].energy_required = 8
data_recipe[alien_spores].ingredients[1].amount = 120
data_recipe[alien_spores].results =
{
    {type = fluid, name = alien_spores, amount = 60},
    {type = fluid, name = water_yellow_waste, amount = 60}
}

data_recipe[alien_bacteria].icons = FOUR_I(calcium_carbonate, alien_spores, hydrochloric_acid_angels, alien_bacteria)
data_recipe[alien_bacteria].energy_required = 4
data_recipe[alien_bacteria].ingredients[1].amount = 60
data_recipe[alien_bacteria].ingredients[3].amount = 60

data_recipe[alien_goo].icons = TWO_I(alien_bacteria, alien_goo)
data_recipe[alien_goo].energy_required = 4
data_recipe[alien_goo].results = {{type = fluid, name = alien_goo, amount = 15}}

data_item[alien_meat].spoil_ticks = 1 * hour
data_item[alien_meat].spoil_result = alien_bacteria
TIMSABA.void.freezing_organics(alien_meat)
data_recipe[alien_meat].category = angels_liquifying
data_recipe[alien_meat].icons = THREE_I(raw_meat, alien_goo, alien_meat)
data_recipe[alien_meat].ingredients[1].amount = 15
data_recipe[alien_meat].reset_freshness_on_craft = true

-- BIO ITERMEDIATE
local petri_dish = "angels-petri-dish"
data_item[petri_dish].subgroup = is_bio_processing_intermediate
data_recipe[petri_dish].subgroup = is_bio_processing_intermediate
data_recipe[petri_dish].icons = TWO_I(glass_bob, petri_dish)

local substrate_dish = "angels-substrate-dish"
data_item[substrate_dish].subgroup = is_bio_processing_intermediate
data_recipe[substrate_dish].subgroup = is_bio_processing_intermediate
data_recipe[substrate_dish].icons = THREE_I(paste_cellulose, petri_dish, substrate_dish)
data_recipe[substrate_dish].energy_required = 4
data_recipe[substrate_dish].ingredients[1].amount = 4
data_recipe[substrate_dish].results[1].amount = 4

data_item[seeded_dish].subgroup = is_bio_processing_intermediate
data_recipe[seeded_dish].subgroup = is_bio_processing_intermediate
data_recipe[seeded_dish].icons = THREE_I(alien_bacteria, petri_dish, seeded_dish)
data_recipe[seeded_dish].ingredients[1].amount = 4
data_recipe[seeded_dish].results[1].amount = 4

local crystal_seed = "angels-crystal-seed"
data_item[crystal_seed].subgroup = is_bio_processing_intermediate
data_recipe[crystal_seed].subgroup = is_bio_processing_intermediate
data_recipe[crystal_seed].icons = THREE_I(crystal_dust, seeded_dish, crystal_seed)

data_item[egg_shell_seed].subgroup = is_bio_processing_intermediate
data_recipe[egg_shell_seed].subgroup = is_bio_processing_intermediate
data_recipe[egg_shell_seed].icons = THREE_I(puffer_egg_shell_powder, seeded_dish, egg_shell_seed)

local crystal_enhancer = "angels-crystal-enhancer"
data_item[crystal_enhancer].subgroup = is_bio_processing_intermediate
data_recipe[crystal_enhancer].subgroup = is_bio_processing_intermediate
data_recipe[crystal_enhancer].icons = AR_FOUR_ALT_I(crystal_catalyst, crystal_powder, seeded_dish, crystal_enhancer)

data_item[crystal_grindstone].subgroup = is_bio_processing_intermediate
data_recipe[crystal_grindstone].subgroup = is_bio_processing_intermediate
data_recipe[crystal_grindstone].icons = THREE_I(wheel_grinding_bob, crystal_powder, crystal_grindstone)
data_recipe[crystal_grindstone].ingredients[2].amount = 8

-- CRYSTAL SPLINTER
data_item[crystal_splinter].subgroup = is_crystals_splinter_1
data_item[crystal_splinter].order = a

data_recipe[crystal_splinter_1].subgroup = is_crystals_splinter_1
data_recipe[crystal_splinter_1].icons = TWO_I(polluted_water_for_fish, crystal_splinter, number_1)
data_recipe[crystal_splinter_1].order = a_a
data_recipe[crystal_splinter_1].ingredients[1].amount = 60
data_recipe[crystal_splinter_1].results[1].probability = 0.5

local crystal_splinter_2 = "angels-crystal-splinter-crystalization-2"
data_recipe[crystal_splinter_2].subgroup = is_crystals_splinter_1
data_recipe[crystal_splinter_2].icons = TWO_D_I(polluted_water_for_fish, crystal_seed, crystal_splinter, nil, number_2)
data_recipe[crystal_splinter_2].order = a_b
data_recipe[crystal_splinter_2].ingredients[1].amount = 60

data_item[crystal_splinter_blue_cut].subgroup = is_crystals_splinter_2
data_item[crystal_splinter_blue_cut].order = a

data_item[crystal_splinter_green_cut].subgroup = is_crystals_splinter_2
data_item[crystal_splinter_green_cut].order = b

data_item[crystal_splinter_red_cut].subgroup = is_crystals_splinter_2
data_item[crystal_splinter_red_cut].order = c

data_item[crystal_splinter_blue].subgroup = is_crystals_splinter_3
data_item[crystal_splinter_blue].order = a
data_recipe[crystal_splinter_blue].subgroup = is_crystals_splinter_3
data_recipe[crystal_splinter_blue].icons = TWO_D_I(crystal_splinter_blue_cut, slurry_crystal, crystal_splinter_blue)
data_recipe[crystal_splinter_blue].order = a
data_recipe[crystal_splinter_blue].ingredients[3].amount = 15
data_recipe[crystal_splinter_blue].results[2].probability = 0.75

data_item[crystal_splinter_green].subgroup = is_crystals_splinter_3
data_item[crystal_splinter_green].order = b
data_recipe[crystal_splinter_green].subgroup = is_crystals_splinter_3
data_recipe[crystal_splinter_green].icons = TWO_D_I(crystal_splinter_green_cut, slurry_crystal, crystal_splinter_green)
data_recipe[crystal_splinter_green].order = b
data_recipe[crystal_splinter_green].ingredients[3].amount = 15
data_recipe[crystal_splinter_green].results[2].probability = 0.75

data_item[crystal_splinter_red].subgroup = is_crystals_splinter_3
data_item[crystal_splinter_red].order = c
data_recipe[crystal_splinter_red].subgroup = is_crystals_splinter_3
data_recipe[crystal_splinter_red].icons = TWO_D_I(crystal_splinter_red_cut, slurry_crystal, crystal_splinter_red)
data_recipe[crystal_splinter_red].order = c
data_recipe[crystal_splinter_red].ingredients[3].amount = 15
data_recipe[crystal_splinter_red].results[2].probability = 0.75

data_item[crystal_splinter_harmonic].subgroup = is_crystals_splinter_3
data_item[crystal_splinter_harmonic].order = d
data_recipe[crystal_splinter_harmonic].subgroup = is_crystals_splinter_3
data_recipe[crystal_splinter_harmonic].icons = FOUR_I(crystal_splinter_blue, crystal_splinter_green, crystal_splinter_red, crystal_splinter_harmonic)
data_recipe[crystal_splinter_harmonic].order = d

local crystal_splinter_blue_powder = "angels-crystal-powder-splinter-blue"
data_recipe[crystal_splinter_blue_powder].subgroup = is_crystals_splinter_powder
data_recipe[crystal_splinter_blue_powder].icons = TWO_I(crystal_splinter_blue_cut, crystal_powder)
data_recipe[crystal_splinter_blue_powder].order = a
data_recipe[crystal_splinter_blue_powder].ingredients[1].amount = 4
data_recipe[crystal_splinter_blue_powder].results[1].amount = 4

local crystal_splinter_green_powder = "angels-crystal-powder-splinter-green"
data_recipe[crystal_splinter_green_powder].subgroup = is_crystals_splinter_powder
data_recipe[crystal_splinter_green_powder].icons = TWO_I(crystal_splinter_green_cut, crystal_powder)
data_recipe[crystal_splinter_green_powder].order = b
data_recipe[crystal_splinter_green_powder].ingredients[1].amount = 4
data_recipe[crystal_splinter_green_powder].results[1].amount = 4

local crystal_splinter_red_powder = "angels-crystal-powder-splinter-red"
data_recipe[crystal_splinter_red_powder].subgroup = is_crystals_splinter_powder
data_recipe[crystal_splinter_red_powder].icons = TWO_I(crystal_splinter_red_cut, crystal_powder)
data_recipe[crystal_splinter_red_powder].order = c
data_recipe[crystal_splinter_red_powder].ingredients[1].amount = 4
data_recipe[crystal_splinter_red_powder].results[1].amount = 4

-- CRYSTAL SHARD
data_item[crystal_shard].subgroup = is_crystals_shard_1
data_item[crystal_shard].order = a

data_recipe[crystal_shard_1].subgroup = is_crystals_shard_1
data_recipe[crystal_shard_1].icons = TWO_D_I(polluted_water_for_fish, egg_shell_seed, crystal_shard, nil, number_1)
data_recipe[crystal_shard_1].order = a_a
data_recipe[crystal_shard_1].ingredients[1].amount = 60
data_recipe[crystal_shard_1].results[1].probability = 0.5

local crystal_shard_2 = "angels-crystal-shard-crystalization-2"
data_recipe[crystal_shard_2].subgroup = is_crystals_shard_1
data_recipe[crystal_shard_2].icons = THREE_D_I(polluted_water_for_fish, egg_shell_seed, crystal_enhancer, crystal_shard, nil, nil, number_2)
data_recipe[crystal_shard_2].order = a_b
data_recipe[crystal_shard_2].ingredients[1].amount = 60

data_item[crystal_shard_blue_cut].subgroup = is_crystals_shard_2
data_item[crystal_shard_blue_cut].order = a

data_item[crystal_shard_green_cut].subgroup = is_crystals_shard_2
data_item[crystal_shard_green_cut].order = b

data_item[crystal_shard_red_cut].subgroup = is_crystals_shard_2
data_item[crystal_shard_red_cut].order = c

data_item[crystal_shard_blue].subgroup = is_crystals_shard_3
data_item[crystal_shard_blue].order = a
data_recipe[crystal_shard_blue].subgroup = is_crystals_shard_3
data_recipe[crystal_shard_blue].icons = TWO_D_I(crystal_shard_blue_cut, slurry_crystal, crystal_shard_blue)
data_recipe[crystal_shard_blue].order = a
data_recipe[crystal_shard_blue].ingredients[3].amount = 15
data_recipe[crystal_shard_blue].results[2].probability = 0.75

data_item[crystal_shard_green].subgroup = is_crystals_shard_3
data_item[crystal_shard_green].order = b
data_recipe[crystal_shard_green].subgroup = is_crystals_shard_3
data_recipe[crystal_shard_green].icons = TWO_D_I(crystal_shard_green_cut, slurry_crystal, crystal_shard_green)
data_recipe[crystal_shard_green].order = b
data_recipe[crystal_shard_green].ingredients[3].amount = 15
data_recipe[crystal_shard_green].results[2].probability = 0.75

data_item[crystal_shard_red].subgroup = is_crystals_shard_3
data_item[crystal_shard_red].order = c
data_recipe[crystal_shard_red].subgroup = is_crystals_shard_3
data_recipe[crystal_shard_red].icons = TWO_D_I(crystal_shard_red_cut, slurry_crystal, crystal_shard_red)
data_recipe[crystal_shard_red].order = c
data_recipe[crystal_shard_red].ingredients[3].amount = 15
data_recipe[crystal_shard_red].results[2].probability = 0.75

data_item[crystal_shard_harmonic].subgroup = is_crystals_shard_3
data_item[crystal_shard_harmonic].order = d
data_recipe[crystal_shard_harmonic].subgroup = is_crystals_shard_3
data_recipe[crystal_shard_harmonic].icons = FOUR_I(crystal_shard_blue, crystal_shard_green, crystal_shard_red, crystal_shard_harmonic)
data_recipe[crystal_shard_harmonic].order = d

local crystal_shard_blue_powder = "angels-crystal-powder-shard-blue"
data_recipe[crystal_shard_blue_powder].subgroup = is_crystals_shard_powder
data_recipe[crystal_shard_blue_powder].icons = TWO_I(crystal_shard_blue_cut, crystal_powder)
data_recipe[crystal_shard_blue_powder].order = a
data_recipe[crystal_shard_blue_powder].ingredients[1].amount = 4
data_recipe[crystal_shard_blue_powder].results[1].amount = 8

local crystal_shard_green_powder = "angels-crystal-powder-shard-green"
data_recipe[crystal_shard_green_powder].subgroup = is_crystals_shard_powder
data_recipe[crystal_shard_green_powder].icons = TWO_I(crystal_shard_green_cut, crystal_powder)
data_recipe[crystal_shard_green_powder].order = b
data_recipe[crystal_shard_green_powder].ingredients[1].amount = 4
data_recipe[crystal_shard_green_powder].results[1].amount = 8

local crystal_shard_red_powder = "angels-crystal-powder-shard-red"
data_recipe[crystal_shard_red_powder].subgroup = is_crystals_shard_powder
data_recipe[crystal_shard_red_powder].icons = TWO_I(crystal_shard_red_cut, crystal_powder)
data_recipe[crystal_shard_red_powder].order = c
data_recipe[crystal_shard_red_powder].ingredients[1].amount = 4
data_recipe[crystal_shard_red_powder].results[1].amount = 8

-- CRYSTAL FULL
data_item[crystal_full].subgroup = is_crystals_full_1
data_item[crystal_full].order = a

data_item[crystal_full_blue_cut].subgroup = is_crystals_full_2
data_item[crystal_full_blue_cut].order = a

data_item[crystal_full_green_cut].subgroup = is_crystals_full_2
data_item[crystal_full_green_cut].order = b

data_item[crystal_full_red_cut].subgroup = is_crystals_full_2
data_item[crystal_full_red_cut].order = c

data_item[crystal_full_blue].subgroup = is_crystals_full_3
data_item[crystal_full_blue].order = a
data_recipe[crystal_full_blue].subgroup = is_crystals_full_3
data_recipe[crystal_full_blue].icons = TWO_D_I(crystal_full_blue_cut, slurry_crystal, crystal_full_blue)
data_recipe[crystal_full_blue].order = a
data_recipe[crystal_full_blue].ingredients[3].amount = 15
data_recipe[crystal_full_blue].results[2].probability = 0.75

data_item[crystal_full_green].subgroup = is_crystals_full_3
data_item[crystal_full_green].order = b
data_recipe[crystal_full_green].subgroup = is_crystals_full_3
data_recipe[crystal_full_green].icons = TWO_D_I(crystal_full_green_cut, slurry_crystal, crystal_full_green)
data_recipe[crystal_full_green].order = b
data_recipe[crystal_full_green].ingredients[3].amount = 15
data_recipe[crystal_full_green].results[2].probability = 0.75

data_item[crystal_full_red].subgroup = is_crystals_full_3
data_item[crystal_full_red].order = c
data_recipe[crystal_full_red].subgroup = is_crystals_full_3
data_recipe[crystal_full_red].icons = TWO_D_I(crystal_full_red_cut, slurry_crystal, crystal_full_red)
data_recipe[crystal_full_red].order = c
data_recipe[crystal_full_red].ingredients[3].amount = 15
data_recipe[crystal_full_red].results[2].probability = 0.75

data_item[crystal_full_harmonic].subgroup = is_crystals_full_3
data_item[crystal_full_harmonic].order = d
data_recipe[crystal_full_harmonic].subgroup = is_crystals_full_3
data_recipe[crystal_full_harmonic].icons = FOUR_I(crystal_full_blue, crystal_full_green, crystal_full_red, crystal_full_harmonic)
data_recipe[crystal_full_harmonic].order = d

data_recipe[crystal_full_blue_powder].subgroup = is_crystals_full_powder
data_recipe[crystal_full_blue_powder].icons = TWO_I(crystal_full_blue_cut, crystal_powder)
data_recipe[crystal_full_blue_powder].order = a
data_recipe[crystal_full_blue_powder].ingredients[1].amount = 4
data_recipe[crystal_full_blue_powder].results[1].amount = 16

data_recipe[crystal_full_green_powder].subgroup = is_crystals_full_powder
data_recipe[crystal_full_green_powder].icons = TWO_I(crystal_full_green_cut, crystal_powder)
data_recipe[crystal_full_green_powder].order = b
data_recipe[crystal_full_green_powder].ingredients[1].amount = 4
data_recipe[crystal_full_green_powder].results[1].amount = 16

data_recipe[crystal_full_red_powder].subgroup = is_crystals_full_powder
data_recipe[crystal_full_red_powder].icons = TWO_I(crystal_full_red_cut, crystal_powder)
data_recipe[crystal_full_red_powder].order = c
data_recipe[crystal_full_red_powder].ingredients[1].amount = 4
data_recipe[crystal_full_red_powder].results[1].amount = 16

-- CRYSTALS POWDERS
data_item[crystal_powder].subgroup = is_crystals_powders
data_item[crystal_powder].order = a

local crystal_powder_from_dust = "angels-crystal-powder-from-dust"
data_recipe[crystal_powder_from_dust].subgroup = is_crystals_powders
data_recipe[crystal_powder_from_dust].icons = TWO_I(crystal_dust, crystal_powder)
data_recipe[crystal_powder_from_dust].order = a_a
data_recipe[crystal_powder_from_dust].ingredients[1].amount = 8
data_recipe[crystal_powder_from_dust].results[1].amount = 16

local slurry_crystal_from_powder = "angels-crystal-powder-slurry"
data_recipe[slurry_crystal_from_powder].subgroup = is_crystals_powders
data_recipe[slurry_crystal_from_powder].icons = THREE_I(crystal_powder, water_purified_angels, slurry_crystal)
data_recipe[slurry_crystal_from_powder].order = a_b
data_recipe[slurry_crystal_from_powder].ingredients[1].amount = 8
data_recipe[slurry_crystal_from_powder].ingredients[2].amount = 15
data_recipe[slurry_crystal_from_powder].results[1].amount = 15