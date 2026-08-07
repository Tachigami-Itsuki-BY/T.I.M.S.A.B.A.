local is_water_treatment_fluid = "angels-water-treatment-fluid"
data_item_subgroup[is_water_treatment_fluid].order = a

data_fluid[water].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O"} or nil
TIMSABA.barreling.add_simple_fluid(water)

data_fluid[water_purified_angels].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O"} or nil
TIMSABA.barreling.add_simple_fluid(water_purified_angels)
data_recipe[water_purified_angels].icons = FOUR_R_I(water, water_saline_angels, nil, water_purified_angels)
data_recipe[water_purified_angels].ingredients[1].amount = 120
data_recipe[water_purified_angels].results[1].amount = 30
data_recipe[water_purified_angels].results[2].amount = 60

data_fluid[steam].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O"} or nil
data_fluid[steam].subgroup = is_water_treatment_fluid
data_fluid[steam].order = c

local steam_water = "angels-steam-water"
data_recipe[steam_water].subgroup = is_water_treatment_fluid
data_recipe[steam_water].icons = TWO_I(water, steam)
data_recipe[steam_water].order = c_a
data_recipe[steam_water].ingredients[1].amount = 30
data_recipe[steam_water].results[1].amount = 30

local steam_water_purified = "angels-steam-water-purified"
data_recipe[steam_water_purified].subgroup = is_water_treatment_fluid
data_recipe[steam_water_purified].icons = TWO_I(water_purified_angels, steam)
data_recipe[steam_water_purified].order = c_b
data_recipe[steam_water_purified].ingredients[1].amount = 30
data_recipe[steam_water_purified].results[1].amount = 30

local coolant_cool_steam = "angels-coolant-cool-steam"
data_recipe[coolant_cool_steam].subgroup = is_water_treatment_fluid
data_recipe[coolant_cool_steam].icons = TWO_I(steam, water_purified_angels)
data_recipe[coolant_cool_steam].order = c_c
data_recipe[coolant_cool_steam].ingredients[1].amount = 30
data_recipe[coolant_cool_steam].results[1].amount = 30

data_fluid[water_mineralized_angels].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O"} or nil
TIMSABA.barreling.add_simple_fluid(water_mineralized_angels)
data_recipe[water_mineralized_angels].icons = THREE_I(stone_crushed_angels, water_purified_angels, water_mineralized_angels)
data_recipe[water_mineralized_angels].ingredients[1].name = water_purified_angels
data_recipe[water_mineralized_angels].ingredients[1].amount = 120
data_recipe[water_mineralized_angels].ingredients[2].amount = 8
data_recipe[water_mineralized_angels].results[1].amount = 120

data_recipe[water_saline_from_water].subgroup = is_water_treatment_fluid
data_recipe[water_saline_from_water].icons = TWO_I(water, water_saline_angels)
data_recipe[water_saline_from_water].order = e_a
data_recipe[water_saline_from_water].energy_required = 4
data_recipe[water_saline_from_water].ingredients[1].amount = 960
data_recipe[water_saline_from_water].results[1].amount = 240

data_recipe[solid_salt_from_saline].subgroup = is_water_treatment_fluid
data_recipe[solid_salt_from_saline].icons = TWO_I(water_saline_angels, salt_angels)
data_recipe[solid_salt_from_saline].order = e_b
data_recipe[solid_salt_from_saline].energy_required = 4
data_recipe[solid_salt_from_saline].ingredients[1].amount = 960
data_recipe[solid_salt_from_saline].results[1].amount = 16

local is_water_washing_fluid = "angels-water-washing-fluid"
data_item_subgroup[is_water_washing_fluid].order = b

data_fluid[water_viscous_mud].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(mud)"} or nil
TIMSABA.barreling.add_simple_fluid(water_viscous_mud)
data_recipe[water_viscous_mud].icons = THREE_I(mud_angels, water, water_viscous_mud)
data_recipe[water_viscous_mud].energy_required = 4
data_recipe[water_viscous_mud].ingredients[1].amount = 8
data_recipe[water_viscous_mud].ingredients[2].amount = 120
data_recipe[water_viscous_mud].results[1].amount = 120

data_fluid[water_heavy_mud].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(geode)"} or nil
TIMSABA.barreling.add_simple_fluid(water_heavy_mud)
data_recipe[water_heavy_mud].icons = THREE_I(water_viscous_mud, water, water_heavy_mud)
data_recipe[water_heavy_mud].energy_required = 4
data_recipe[water_heavy_mud].ingredients[1].amount = 240
data_recipe[water_heavy_mud].ingredients[2].amount = 60
data_recipe[water_heavy_mud].results[1].amount = 240
data_recipe[water_heavy_mud].results[2].amount_max = 4

data_fluid[water_concentrated_mud].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(Al[font=default-tiny-bold]2[/font]Si[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font]O[font=default-tiny-bold]9[/font])"} or nil
TIMSABA.barreling.add_simple_fluid(water_concentrated_mud)
data_recipe[water_concentrated_mud].icons = THREE_I(water_heavy_mud, water, water_concentrated_mud)
data_recipe[water_concentrated_mud].energy_required = 4
data_recipe[water_concentrated_mud].ingredients[1].amount = 240
data_recipe[water_concentrated_mud].ingredients[2].amount = 60
data_recipe[water_concentrated_mud].results[1].amount = 240
data_recipe[water_concentrated_mud].results[2].amount_max = 4

data_fluid[water_light_mud].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(CaCO[font=default-tiny-bold]3[/font])"} or nil
TIMSABA.barreling.add_simple_fluid(water_light_mud)
data_recipe[water_light_mud].icons = THREE_I(water_concentrated_mud, water, water_light_mud)
data_recipe[water_light_mud].energy_required = 4
data_recipe[water_light_mud].ingredients[1].amount = 240
data_recipe[water_light_mud].ingredients[2].amount = 60
data_recipe[water_light_mud].results[1].amount = 240
data_recipe[water_light_mud].results[2].amount_max = 4

data_fluid[water_thin_mud].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(SiO[font=default-tiny-bold]2[/font])"} or nil
TIMSABA.barreling.add_simple_fluid(water_thin_mud)
data_recipe[water_thin_mud].icons = THREE_I(water_light_mud, water, water_thin_mud)
data_recipe[water_thin_mud].energy_required = 4
data_recipe[water_thin_mud].ingredients[1].amount = 240
data_recipe[water_thin_mud].ingredients[2].amount = 60
data_recipe[water_thin_mud].results[1].amount = 240
data_recipe[water_thin_mud].results[2].amount_max = 4

data_fluid[water_saline_angels].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(NaCl/KCl*MgCl[font=default-tiny-bold]2[/font]*6H[font=default-tiny-bold]2[/font]O)"} or nil
TIMSABA.barreling.add_simple_fluid(water_saline_angels)
data_recipe[water_saline_angels].icons = THREE_I(water_thin_mud, water, water_saline_angels)
data_recipe[water_saline_angels].energy_required = 4
data_recipe[water_saline_angels].ingredients[1].amount = 240
data_recipe[water_saline_angels].ingredients[2].amount = 60
data_recipe[water_saline_angels].results[1].amount = 240
data_recipe[water_saline_angels].results[2].amount_max = 4

data_fluid[water_thermal_angels].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(LiCl/Hg)"} or nil
data_fluid[water_thermal_angels].subgroup = is_water_washing_fluid
data_fluid[water_thermal_angels].order = g
TIMSABA.barreling.add_simple_fluid(water_thermal_angels)

local is_water_salination = "angels-water-salination"
data_item_subgroup[is_water_salination].order = c

data_item[mud_angels].order = a

local solid_geodes = "angels-solid-geodes"
data_recipe[solid_geodes].subgroup = is_water_salination
data_recipe[solid_geodes].icons = THREE_I(water_heavy_mud, water, geode_yellow)
data_recipe[solid_geodes].order = b
data_recipe[solid_geodes].energy_required = 4
data_recipe[solid_geodes].ingredients[1].amount = 60
data_recipe[solid_geodes].ingredients[2].amount = 30
data_recipe[solid_geodes].results =
{
    {type = item, name = geode_blue, amount_min = 0, amount_max = 4},
    {type = item, name = geode_cyan, amount_min = 0, amount_max = 1},
    {type = item, name = geode_lightgreen, amount_min = 0, amount_max = 1},
    {type = item, name = geode_purple, amount_min = 0, amount_max = 2},
    {type = item, name = geode_red, amount_min = 0, amount_max = 4},
    {type = item, name = geode_yellow, amount = 1}
}

data_item[clay_angels].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]Si[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font]O[font=default-tiny-bold]9[/font]"} or nil
data_item[clay_angels].order = c
data_recipe[clay_angels].icons = THREE_I(water_concentrated_mud, water, clay_angels)
data_recipe[clay_angels].order = c
data_recipe[clay_angels].energy_required = 4
data_recipe[clay_angels].ingredients[1].amount = 60
data_recipe[clay_angels].ingredients[2].amount = 30
data_recipe[clay_angels].results[1].amount = 4

data_item[limestone_angels].localised_description = show_formula and {chemical_formula, "CaCO[font=default-tiny-bold]3[/font]"} or nil
data_item[limestone_angels].order = d
data_recipe[limestone_angels].icons = THREE_I(water_light_mud, water, limestone_angels)
data_recipe[limestone_angels].order = d
data_recipe[limestone_angels].energy_required = 4
data_recipe[limestone_angels].ingredients[1].amount = 60
data_recipe[limestone_angels].ingredients[2].amount = 30
data_recipe[limestone_angels].results[1].amount = 4

data_item[sand_angels].localised_description = show_formula and {chemical_formula, "SiO[font=default-tiny-bold]2[/font]"} or nil
data_item[sand_angels].order = e
data_recipe[sand_angels].icons = THREE_I(water_thin_mud, water, sand_angels)
data_recipe[sand_angels].order = e
data_recipe[sand_angels].energy_required = 4
data_recipe[sand_angels].ingredients[1].amount = 60
data_recipe[sand_angels].ingredients[2].amount = 30
data_recipe[sand_angels].results[1].amount = 4

data_item[salt_angels].localised_description = show_formula and {chemical_formula, "NaCl"} or nil
data_item[salt_angels].order = f
data_recipe[salt_angels].icons = TWO_I(water, salt_angels)
data_recipe[salt_angels].order = f
data_recipe[salt_angels].energy_required = 4
data_recipe[salt_angels].ingredients[1].amount = 960
data_recipe[salt_angels].results[1].amount = 2

data_item[lithium_chloride_angels].localised_description = show_formula and {chemical_formula, "LiCl"} or nil
data_item[lithium_chloride_angels].order = g
data_recipe[lithium_chloride_angels].icons = TWO_I(water_thermal_angels, lithium_chloride_angels)
data_recipe[lithium_chloride_angels].order = g
data_recipe[lithium_chloride_angels].energy_required = 4
data_recipe[lithium_chloride_angels].ingredients[1].amount = 960
data_recipe[lithium_chloride_angels].results[1].amount = 16
data_recipe[lithium_chloride_angels].surface_conditions = {{property = "pressure", min = 1000, max = 1000}}

data_item_subgroup["angels-water-cleaning-fluid"].order = d

data_fluid[water_yellow_waste].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(S)"} or nil
TIMSABA.barreling.add_simple_fluid(water_yellow_waste)

data_fluid[water_greenyellow_waste].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(CaF[font=default-tiny-bold]2[/font])"} or nil
TIMSABA.barreling.add_simple_fluid(water_greenyellow_waste)

data_fluid[water_green_waste].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(NaCl)"} or nil
TIMSABA.barreling.add_simple_fluid(water_green_waste)

data_fluid[water_red_waste].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(NaNO[font=default-tiny-bold]3[/font])"} or nil
TIMSABA.barreling.add_simple_fluid(water_red_waste)

data_item_subgroup["angels-water-cleaning"].order = e

local water_yellow_waste_purification = "angels-yellow-waste-water-purification"
data_recipe[water_yellow_waste_purification].icons = FOUR_R_I(water_yellow_waste, water_mineralized_angels, sulfur, water_purified_angels)
data_recipe[water_yellow_waste_purification].order = a
data_recipe[water_yellow_waste_purification].ingredients[1].amount = 120
data_recipe[water_yellow_waste_purification].results[1].amount = 30
data_recipe[water_yellow_waste_purification].results[2].amount = 60
data_recipe[water_yellow_waste_purification].results[3].amount = 2

local water_greenyellow_waste_purification = "angels-greenyellow-waste-water-purification"
data_recipe[water_greenyellow_waste_purification].icons = FOUR_R_I(water_greenyellow_waste, water_mineralized_angels, fluorite_angels, water_purified_angels)
data_recipe[water_greenyellow_waste_purification].order = b
data_recipe[water_greenyellow_waste_purification].ingredients[1].amount = 120
data_recipe[water_greenyellow_waste_purification].results =
{
    {type = fluid, name = water_mineralized_angels, amount = 30},
    {type = fluid, name = water_purified_angels, amount = 60},
    {type = item, name = fluorite_angels, amount = 2}
}

local water_green_waste_purification = "angels-green-waste-water-purification"
data_recipe[water_green_waste_purification].icons = FOUR_R_I(water_green_waste, water_saline_angels, salt_angels, water_purified_angels)
data_recipe[water_green_waste_purification].order = c
data_recipe[water_green_waste_purification].ingredients[1].amount = 120
data_recipe[water_green_waste_purification].results =
{
    {type = fluid, name = water_saline_angels, amount = 30},
    {type = fluid, name = water_purified_angels, amount = 60},
    {type = item, name = salt_angels, amount = 2}
}

local water_red_waste_purification = "angels-red-waste-water-purification"
data_recipe[water_red_waste_purification].icons = FOUR_R_I(water_red_waste, water_mineralized_angels, sodium_nitrate_angels, water_purified_angels)
data_recipe[water_red_waste_purification].order = d
data_recipe[water_red_waste_purification].ingredients[1].amount = 120
data_recipe[water_red_waste_purification].results =
{
    {type = fluid, name = water_mineralized_angels, amount = 30},
    {type = fluid, name = water_purified_angels, amount = 60},
    {type = item, name = sodium_nitrate_angels, amount = 2}
}

local is_coolant = "angels-coolant"
data_item_subgroup[is_coolant].order = f

data_fluid[coolant].localised_description = show_formula and {chemical_formula, "С[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font](OH)[font=default-tiny-bold]2[/font]"} or nil
data_fluid[coolant].subgroup = is_coolant
data_fluid[coolant].order = a
TIMSABA.barreling.add_dangerous_fluid(coolant)
data_recipe[coolant].category = angels_advanced_chemistry
data_recipe[coolant].subgroup = is_coolant
data_recipe[coolant].icons = THREE_I(water_purified_angels, ethylene_oxide, coolant)
data_recipe[coolant].order = a
-- С₂H₄O + H₂O -H₂SO₄-> C₂H₆O₂
data_recipe[coolant].ingredients =
{
    {type = fluid, name = water_purified_angels, amount = 120},
    {type = fluid, name = ethylene_oxide, amount = 120},
    {type = fluid, name = sulfuric_acid_angels, amount = 60}
}
data_recipe[coolant].results =
{
    {type = fluid, name = coolant, amount = 120},
    {type = fluid, name = sulfuric_acid_angels, amount = 30} -- 60
}
data_recipe[coolant].main_product = coolant

data_fluid[coolant_used].subgroup = is_coolant
data_fluid[coolant_used].order = b
data_fluid[coolant_used].localised_description = show_formula and {chemical_formula, "С[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]4[/font](OH)[font=default-tiny-bold]2[/font]"} or nil

local coolant_used_filtration_1 = "angels-coolant-used-filtration-1"
data_recipe[coolant_used_filtration_1].icons = TWO_I(coolant_used, coolant, number_1)
data_recipe[coolant_used_filtration_1].order = c
data_recipe[coolant_used_filtration_1].energy_required = 4
data_recipe[coolant_used_filtration_1].ingredients[1].amount = 240
data_recipe[coolant_used_filtration_1].results[1].amount = 240

local coolant_used_filtration_2 = "angels-coolant-used-filtration-2"
data_recipe[coolant_used_filtration_2].icons = TWO_I(coolant_used, coolant, number_2)
data_recipe[coolant_used_filtration_2].order = d
data_recipe[coolant_used_filtration_2].energy_required = 2
data_recipe[coolant_used_filtration_2].ingredients[1].amount = 240
data_recipe[coolant_used_filtration_2].results[1].amount = 240

local coolant_cool_100 = "angels-coolant-cool-100"
data_recipe[coolant_cool_100].icons = CORNER_I(_C2H4_O2H2_, nil, water_purified_angels, cooling_png, steam, number_1)
data_recipe[coolant_cool_100].ingredients[1].amount = 240
data_recipe[coolant_cool_100].ingredients[2].name = water_purified_angels
data_recipe[coolant_cool_100].ingredients[2].amount = 60
data_recipe[coolant_cool_100].results[1].amount = 240
data_recipe[coolant_cool_100].results[2].amount = 30

local coolant_cool_200 = "angels-coolant-cool-200"
data_recipe[coolant_cool_200].icons = CORNER_I(_C2H4_O2H2_, nil, water_purified_angels, cooling_png, steam, number_2)
data_recipe[coolant_cool_200].ingredients[1].amount = 240
data_recipe[coolant_cool_200].ingredients[2].name = water_purified_angels
data_recipe[coolant_cool_200].ingredients[2].amount = 60
data_recipe[coolant_cool_200].results[1].amount = 240
data_recipe[coolant_cool_200].results[2].amount = 30

local coolant_cool_300 = "angels-coolant-cool-300"
data_recipe[coolant_cool_300].icons = CORNER_I(_C2H4_O2H2_, nil, water_purified_angels, cooling_png, steam, number_3)
data_recipe[coolant_cool_300].ingredients[1].amount = 240
data_recipe[coolant_cool_300].ingredients[2].name = water_purified_angels
data_recipe[coolant_cool_300].ingredients[2].amount = 60
data_recipe[coolant_cool_300].results[1].amount = 240
data_recipe[coolant_cool_300].results[2].amount = 30

data_item_subgroup["angels-water-enrichment"].order = g

data_fluid[water_semiheavy_1].localised_description = show_formula and {chemical_formula, "HDO"} or nil
data_fluid[water_semiheavy_1].order = a
data_recipe[water_semiheavy_1].icons = TWO_I(water_purified_angels, water_semiheavy_1, number_1)
data_recipe[water_semiheavy_1].order = a
data_recipe[water_semiheavy_1].energy_required = 4 -- H₂O + HDS --> 7.5%HDO + H₂S
data_recipe[water_semiheavy_1].ingredients[2].amount = 60
data_recipe[water_semiheavy_1].ingredients[3].amount = 120
data_recipe[water_semiheavy_1].results[1].amount = 60 -- 120
data_recipe[water_semiheavy_1].results[2].amount = 60
data_recipe[water_semiheavy_1].results[3].amount = 30 -- 60

local water_enriched_cooling_1 = "angels-water-enriched-cooling-1"
data_recipe[water_enriched_cooling_1].icons = CORNER_I(water_semiheavy_1, nil, water_purified_angels, cooling_png, steam, number_1)
data_recipe[water_enriched_cooling_1].order = a_a
data_recipe[water_enriched_cooling_1].ingredients[1].amount = 240
data_recipe[water_enriched_cooling_1].ingredients[2].amount = 60
data_recipe[water_enriched_cooling_1].results[1].amount = 240
data_recipe[water_enriched_cooling_1].results[2].amount = 30

data_fluid[water_semiheavy_2].localised_description = show_formula and {chemical_formula, "HDO"} or nil
data_fluid[water_semiheavy_2].order = b
data_recipe[water_semiheavy_2].icons = TWO_I(water_semiheavy_1, water_semiheavy_2, number_2)
data_recipe[water_semiheavy_2].order = b
data_recipe[water_semiheavy_2].energy_required = 4 -- HDO + HDS --> 12.5%HDO + H₂S 
data_recipe[water_semiheavy_2].ingredients[2].amount = 60
data_recipe[water_semiheavy_2].ingredients[3].amount = 120
data_recipe[water_semiheavy_2].results[1].amount = 60 -- 120
data_recipe[water_semiheavy_2].results[2].amount = 60
data_recipe[water_semiheavy_2].results[3].amount = 30 -- 60

local water_enriched_cooling_2 = "angels-water-enriched-cooling-2"
data_recipe[water_enriched_cooling_2].icons = CORNER_I(water_semiheavy_2, nil, water_purified_angels, cooling_png, steam, number_2)
data_recipe[water_enriched_cooling_2].order = b_a
data_recipe[water_enriched_cooling_2].ingredients[1].amount = 240
data_recipe[water_enriched_cooling_2].ingredients[2].amount = 60
data_recipe[water_enriched_cooling_2].results[1].amount = 240
data_recipe[water_enriched_cooling_2].results[2].amount = 30

data_fluid[water_semiheavy_3].localised_description = show_formula and {chemical_formula, "HDO"} or nil
data_fluid[water_semiheavy_3].order = c
data_recipe[water_semiheavy_3].icons = TWO_I(water_semiheavy_2, water_semiheavy_3, number_3)
data_recipe[water_semiheavy_3].order = c
data_recipe[water_semiheavy_3].energy_required = 4 -- HDO + HDS --> 15%HDO + H₂S 
data_recipe[water_semiheavy_3].ingredients[2].amount = 60
data_recipe[water_semiheavy_3].ingredients[3].amount = 120
data_recipe[water_semiheavy_3].results[1].amount = 60 -- 120
data_recipe[water_semiheavy_3].results[2].amount = 60
data_recipe[water_semiheavy_3].results[3].amount = 30 -- 60

local water_enriched_cooling_3 = "angels-water-enriched-cooling-3"
data_recipe[water_enriched_cooling_3].icons = CORNER_I(water_semiheavy_3, nil, water_purified_angels, cooling_png, steam, number_3)
data_recipe[water_enriched_cooling_3].order = c_a
data_recipe[water_enriched_cooling_3].ingredients[1].amount = 240
data_recipe[water_enriched_cooling_3].ingredients[2].amount = 60
data_recipe[water_enriched_cooling_3].results[1].amount = 240
data_recipe[water_enriched_cooling_3].results[2].amount = 30

data_fluid[water_heavy_angels].localised_description = show_formula and {chemical_formula, "D[font=default-tiny-bold]2[/font]O"} or nil
data_fluid[water_heavy_angels].order = d
data_recipe[water_heavy_angels].icons = TWO_D_I(water_semiheavy_3, nil, water_heavy_angels, steam)
data_recipe[water_heavy_angels].order = d
data_recipe[water_heavy_angels].energy_required = 4 -- 15%HDO --> D₂O + H₂O
data_recipe[water_heavy_angels].ingredients[1].amount = 120
data_recipe[water_heavy_angels].results[1].amount = 60
data_recipe[water_heavy_angels].results[2].amount = 15

local water_heavy_cooling = "angels-heavy-water-cooling"
data_recipe[water_heavy_cooling].icons = CORNER_I(water_heavy_angels, nil, water_purified_angels, cooling_png, steam)
data_recipe[water_heavy_cooling].order = d_a
data_recipe[water_heavy_cooling].ingredients[1].amount = 120
data_recipe[water_heavy_cooling].ingredients[2].amount = 30
data_recipe[water_heavy_cooling].results[1].amount = 120
data_recipe[water_heavy_cooling].results[2].amount = 15

data_item_subgroup[is_water_treatment_building].order = z

data_item_subgroup[is_washing_building].order = z_b

data_item_subgroup[is_boiler_building].order = z_d