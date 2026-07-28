-- BASIC PETROCHEN
local is_basics = "angels-petrochem-basics"
data_item_subgroup[is_basics].order = a

local dirt_water_separation = "angels-dirt-water-separation"
data_recipe[dirt_water_separation].icons = FOUR_R_I(water, hydrogen_angels, slag_angels, oxygen_angels, number_1)
data_recipe[dirt_water_separation].order = a_a
-- 2H₂O --> 2H₂ + O₂
data_recipe[dirt_water_separation].ingredients[1].amount = 120
data_recipe[dirt_water_separation].results =
{
    {type = item, name = slag_angels, amount = 1},
    {type = fluid, name = hydrogen_angels, amount = 120},
    {type = fluid, name = oxygen_angels, amount = 60}
}

local dirt_water_separation_2 = "angels-dirt-water-separation-2"
data_recipe[dirt_water_separation_2].icons = FOUR_R_I(water, hydrogen_angels, slag_angels, oxygen_angels, number_2)
data_recipe[dirt_water_separation_2].order = a_b
-- 2H₂O --> 2H₂ + O₂
data_recipe[dirt_water_separation_2].ingredients =
{
    {type = item, name = electrode, amount = 1},
    {type = fluid, name = water, amount = 120}
}
data_recipe[dirt_water_separation_2].results =
{
    {type = item, name = slag_angels, amount = 1},
    {type = item, name = electrode_used, amount = 1},
    {type = fluid, name = hydrogen_angels, amount = 120},
    {type = fluid, name = oxygen_angels, amount = 60}
}

local water_separation = "angels-water-separation"
data_recipe[water_separation].icons = FOUR_R_I(water_purified_angels, hydrogen_angels, nil, oxygen_angels, number_1)
data_recipe[water_separation].order = b_a
-- 2H₂O --> 2H₂ + O₂
data_recipe[water_separation].ingredients[1].amount = 120
data_recipe[water_separation].results =
{
    {type = fluid, name = hydrogen_angels, amount = 120},
    {type = fluid, name = oxygen_angels, amount = 60}
}

local water_separation_2 = "angels-water-separation-2"
data_recipe[water_separation_2].icons = FOUR_R_I(water_purified_angels, hydrogen_angels, nil, oxygen_angels, number_2)
data_recipe[water_separation_2].order = b_b
-- 2H₂O --> 2H₂ + O₂
data_recipe[water_separation_2].ingredients =
{
    {type = item, name = electrode, amount = 1},
    {type = fluid, name = water_purified_angels, amount = 120}
}
data_recipe[water_separation_2].results =
{
    {type = item, name = electrode_used, amount = 1},
    {type = fluid, name = hydrogen_angels, amount = 120},
    {type = fluid, name = oxygen_angels, amount = 60}
}

local water_synthesis = "angels-water-synthesis"
data_recipe[water_synthesis].icons = THREE_I(hydrogen_angels, oxygen_angels, water_purified_angels)
data_recipe[water_synthesis].order = b_c
data_recipe[water_synthesis].energy_required = 8 -- 2H₂ + O₂ --> 2H₂O
data_recipe[water_synthesis].ingredients =
{
    {type = fluid, name = hydrogen_angels, amount = 120},
    {type = fluid, name = oxygen_angels, amount = 60}
}
data_recipe[water_synthesis].results[1].amount = 120

local heavy_water_separation = "angels-heavy-water-separation"
data_recipe[heavy_water_separation].icons = FOUR_R_I(water_heavy_angels, deuterium_angels, nil, oxygen_angels, number_1)
data_recipe[heavy_water_separation].order = c_a
-- 2D₂O --> 2D₂ + O₂
data_recipe[heavy_water_separation].ingredients[1].amount = 120
data_recipe[heavy_water_separation].results =
{
    {type = fluid, name = deuterium_angels, amount = 120},
    {type = fluid, name = oxygen_angels, amount = 60}
}

local heavy_water_separation_2 = "angels-heavy-water-separation-2"
data_recipe[heavy_water_separation_2].icons = FOUR_R_I(water_heavy_angels, deuterium_angels, nil, oxygen_angels, number_2)
data_recipe[heavy_water_separation_2].order = c_b
-- 2D₂O --> 2D₂ + O₂
data_recipe[heavy_water_separation_2].ingredients =
{
    {type = item, name = electrode, amount = 1},
    {type = fluid, name = water_heavy_angels, amount = 120, maximum_temperature = 30}
}
data_recipe[heavy_water_separation_2].results =
{
    {type = item, name = electrode_used, amount = 1},
    {type = fluid, name = deuterium_angels, amount = 120},
    {type = fluid, name = oxygen_angels, amount = 60}
}

local water_saline_separation = "angels-water-saline-separation"
data_recipe[water_saline_separation].subgroup = is_basics
data_recipe[water_saline_separation].icons = FOUR_R_I(water_saline_angels, hydrogen_angels, sodium_hydroxide_angels, chlorine_angels)
data_recipe[water_saline_separation].order = d_a
-- 8H₂O(2(NaCl/KCl*MgCl₂*6H₂O)) --> 2NaOH + 7H₂ + 4Cl₂ + 3O₂
data_recipe[water_saline_separation].ingredients[1].amount = 120
data_recipe[water_saline_separation].results =
{
    {type = item, name = sodium_hydroxide_angels, amount = 2},
    {type = fluid, name = hydrogen_angels, amount = 60}, -- 105
    {type = fluid, name = chlorine_angels, amount = 60},
    --{type = fluid, name = oxygen_angels, amount = 30} -- 45
}

-- BASIC PETROCHEN FLUIDS
local is_basic_fluids = "angels-petrochem-basic-fluids"
data_item_subgroup[is_basic_fluids].order = a_a

data_fluid[compressed_air].order = a
data_recipe[compressed_air].icons = nil data_recipe[compressed_air].icon = data_fluid[compressed_air].icon
data_recipe[compressed_air].energy_required = 8
data_recipe[compressed_air].results[1].amount = 240
data_recipe[compressed_air].surface_conditions =
{
    {property = "gravity", min = 10, max = 20},
    {property = "pressure", min = 1000, max = 2000}
}

data_fluid[hydrogen_angels].order = b

data_fluid[deuterium_angels].order = c

--data_fluid[tritium_gas].order = d

data_fluid[nitrogen_angels].subgroup = is_basic_fluids
data_fluid[nitrogen_angels].order = e

data_fluid[oxygen_angels].order = f

data_fluid[chlorine_angels].subgroup = is_basic_fluids
data_fluid[chlorine_angels].order = g

-- CARBON
data_item_subgroup[is_coal].order = b

data_item[coal].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]a[/font]H[font=default-tiny-bold]b[/font]O[font=default-tiny-bold]c[/font]N[font=default-tiny-bold]d[/font]S[font=default-tiny-bold]e[/font]"} or nil
data_item[coal].order = a
data_item[coal].fuel_category = base_fuel
data_item[coal].fuel_value = 3600 .. kJ

data_item[coal_crushed_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]a[/font]H[font=default-tiny-bold]b[/font]O[font=default-tiny-bold]c[/font]N[font=default-tiny-bold]d[/font]S[font=default-tiny-bold]e[/font]"} or nil
data_item[coal_crushed_angels].order = b
data_item[coal_crushed_angels].fuel_category = base_fuel
data_item[coal_crushed_angels].fuel_value = 1800 .. kJ
data_recipe[coal_crushed_angels].icons = TWO_I(coal, coal_crushed_angels)
data_recipe[coal_crushed_angels].order = b

data_item[coke_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]a[/font]H[font=default-tiny-bold]b[/font]O[font=default-tiny-bold]c[/font]N[font=default-tiny-bold]d[/font]S[font=default-tiny-bold]e[/font]"} or nil
data_item[coke_angels].order = c
data_item[coke_angels].fuel_category = base_fuel
data_item[coke_angels].fuel_value = 3600 .. kJ
data_recipe[coke_angels].icons = TWO_I(coal_crushed_angels, coke_angels, number_1)
data_recipe[coke_angels].order = c

local solid_coke_sulfur = "angels-solid-coke-sulfur"
data_recipe[solid_coke_sulfur].icons = TWO_D_I(coal_crushed_angels, water_purified_angels, coke_angels, water_yellow_waste, number_2)
data_recipe[solid_coke_sulfur].order = c_a
data_recipe[solid_coke_sulfur].ingredients[1].amount = 4
data_recipe[solid_coke_sulfur].ingredients[2].amount = 60
data_recipe[solid_coke_sulfur].results[1].amount = 4
data_recipe[solid_coke_sulfur].results[2].amount = 60

data_item[carbon_angels].localised_description = show_formula and {chemical_formula, "C"} or nil
data_item[carbon_angels].order = d
data_item[carbon_angels].fuel_category = base_fuel
data_item[carbon_angels].fuel_value = 3600 .. kJ
data_recipe[carbon_angels].category = smelting
data_recipe[carbon_angels].icons = TWO_I(coke_angels, carbon_angels, number_1)
data_recipe[carbon_angels].order = d
data_recipe[carbon_angels].energy_required = 1
data_recipe[carbon_angels].ingredients = {{type = item, name = coke_angels, amount = 2}}
data_recipe[carbon_angels].results[1].amount = 2

data_recipe[coke_purification_2].icons = TWO_D_I(coke_angels, water_purified_angels, carbon_angels, water_yellow_waste, number_2)
data_recipe[coke_purification_2].order = d_a
data_recipe[coke_purification_2].energy_required = 4
data_recipe[coke_purification_2].ingredients =
{
    {type = item, name = coke_angels, amount = 4},
    {type = fluid, name = water_purified_angels, amount = 60}
}
data_recipe[coke_purification_2].results =
{
    {type = item, name = carbon_angels, amount = 4},
    {type = fluid, name = water_yellow_waste, amount = 60}
}

data_item[coke_pellet_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]a[/font]H[font=default-tiny-bold]b[/font]O[font=default-tiny-bold]c[/font]N[font=default-tiny-bold]d[/font]S[font=default-tiny-bold]e[/font]"} or nil
data_item[coke_pellet_angels].order = f
data_item[coke_pellet_angels].fuel_category = base_fuel
data_item[coke_pellet_angels].fuel_value = 14400 .. kJ
data_recipe[coke_pellet_angels].category = angels_pellet_pressing_1
data_recipe[coke_pellet_angels].icons = TWO_I(coke_processed, coke_pellet_angels)
data_recipe[coke_pellet_angels].order = f
data_recipe[coke_pellet_angels].ingredients[1].name = coke_processed
data_recipe[coke_pellet_angels].ingredients[1].amount = 1

local coal_cracking_1 = "angels-coal-cracking-1"
data_recipe[coal_cracking_1].icons = FOUR_R_I(coal, methane_angels, ethane_angels, butane_angels)
data_recipe[coal_cracking_1].order = f_a
-- Coal -cat-> Coke + CH₄ + C₂H₆ + C₄H₁₀
data_recipe[coal_cracking_1].ingredients[1].amount = 8
data_recipe[coal_cracking_1].results =
{
    {type = item, name = coke_angels, amount = 4},
    {type = fluid, name = methane_angels, amount = 60},
    {type = fluid, name = ethane_angels, amount = 60},
    {type = fluid, name = butane_angels, amount = 60}
}

local coal_cracking_2 = "angels-coal-cracking-2"
data_recipe[coal_cracking_2].icons = FOUR_R_I(coal, mineral_oil_angels, fuel_oil_angels, naphtha_angels)
data_recipe[coal_cracking_2].order = f_b
-- Coal + 16H₂ -cat-> C₃₀H₆₂ + C₂₀H₄₂ + C₈H₁₈
data_recipe[coal_cracking_2].ingredients =
{
    {type = item, name = coal, amount = 16},
    {type = fluid, name = hydrogen_angels, amount = 480},
    {type = item, name = catalyst_blue, amount = 1}
}
data_recipe[coal_cracking_2].results =
{
    {type = fluid, name = mineral_oil_angels, amount = 60},
    {type = fluid, name = fuel_oil_angels, amount = 60},
    {type = fluid, name = naphtha_angels, amount = 60},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}

local coal_cracking_3 = "angels-coal-cracking-3"
data_recipe[coal_cracking_3].icons = FOUR_R_I(coal, synthesis_angels, residual_angels, hydrogen_sulfide_angels)
data_recipe[coal_cracking_3].order = f_c
-- Coal + H₂O + O₂ -cat-> (H₂ + CO) + (CH₄ + CO₂) + H₂S
data_recipe[coal_cracking_3].ingredients =
{
    {type = item, name = coal, amount = 8},
    {type = fluid, name = steam, amount = 60},
    {type = fluid, name = oxygen_angels, amount = 60},
    {type = item, name = catalyst_blue, amount = 1}
}
data_recipe[coal_cracking_3].results =
{
    {type = fluid, name = synthesis_angels, amount = 60},
    {type = fluid, name = residual_angels, amount = 60},
    {type = fluid, name = hydrogen_sulfide_angels, amount = 60},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}

-- CARBON FLUIDS ONE
data_fluid[carbon_monoxide_angels].subgroup = is_carbon_fluids_1
data_fluid[carbon_monoxide_angels].order = a
data_recipe[carbon_monoxide_angels].category = chemistry
data_recipe[carbon_monoxide_angels].subgroup = is_carbon_fluids_1
data_recipe[carbon_monoxide_angels].icons = TWO_D_I(carbon_angels, water_purified_angels, carbon_monoxide_angels, hydrogen_angels)
data_recipe[carbon_monoxide_angels].order = a
-- C + H₂O --> CO + H₂
data_recipe[carbon_monoxide_angels].ingredients =
{
    {type = item, name = carbon_angels, amount = 2},
    {type = fluid, name = water_purified_angels, amount = 60}
}
data_recipe[carbon_monoxide_angels].results =
{
    {type = fluid, name = carbon_monoxide_angels, amount = 60},
    {type = fluid, name = hydrogen_angels, amount = 60}
}
data_recipe[carbon_monoxide_angels].main_product = carbon_monoxide_angels

local water_gas_shift_1 = "angels-water-gas-shift-1"
data_recipe[water_gas_shift_1].subgroup = is_carbon_fluids_1
data_recipe[water_gas_shift_1].icons = TWO_D_I(carbon_monoxide_angels, steam, carbon_dioxide_angels, hydrogen_angels)
data_recipe[water_gas_shift_1].order = a_a
-- CO + H₂O --> CO₂ + H₂
data_recipe[water_gas_shift_1].ingredients[1].amount = 60
data_recipe[water_gas_shift_1].ingredients[2].amount = 60
data_recipe[water_gas_shift_1].results[1].amount = 60
data_recipe[water_gas_shift_1].results[2].amount = 60

data_fluid[carbon_dioxide_angels].subgroup = is_carbon_fluids_1
data_fluid[carbon_dioxide_angels].order = b
data_recipe[carbon_dioxide_angels].subgroup = is_carbon_fluids_1
data_recipe[carbon_dioxide_angels].icons = THREE_I(coal, oxygen_angels, carbon_dioxide_angels)
data_recipe[carbon_dioxide_angels].order = b
-- C + O₂ --> CO₂
data_recipe[carbon_dioxide_angels].ingredients =
{
    {type = item, name = coal, amount = 2},
    {type = fluid, name = oxygen_angels, amount = 60}
}
data_recipe[carbon_dioxide_angels].results[1].amount = 60

local water_gas_shift_2 = "angels-water-gas-shift-2"
data_recipe[water_gas_shift_2].subgroup = is_carbon_fluids_1
data_recipe[water_gas_shift_2].icons = TWO_D_I(carbon_dioxide_angels, hydrogen_angels, carbon_monoxide_angels, water_purified_angels)
data_recipe[water_gas_shift_2].order = b_a
data_recipe[water_gas_shift_2].energy_required = 8 -- CO₂ + H₂ --> CO + H₂O
data_recipe[water_gas_shift_2].ingredients[1].amount = 60
data_recipe[water_gas_shift_2].ingredients[2].amount = 60
data_recipe[water_gas_shift_2].results[1].amount = 60
data_recipe[water_gas_shift_2].results[2].amount = 60

-- NITROGEN
local is_nitrogen = "angels-petrochem-nitrogen"
data_item_subgroup[is_nitrogen].order = c

data_item[ammonium_nitrate_angels].localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]NO[font=default-tiny-bold]3[/font]"} or nil
data_item[ammonium_nitrate_angels].order = a
data_recipe[ammonium_nitrate_angels].icons = THREE_I(ammonia_angels, nitric_acid_angels, ammonium_nitrate_angels)
data_recipe[ammonium_nitrate_angels].order = a
-- NH₃ + NHO₃ --> NH₄NO₃
data_recipe[ammonium_nitrate_angels].ingredients[1].amount = 60
data_recipe[ammonium_nitrate_angels].ingredients[2].amount = 60
data_recipe[ammonium_nitrate_angels].results[1].amount = 4

data_item[ammonium_perchlorate_angels].localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]ClO[font=default-tiny-bold]4[/font]"} or nil
data_item[ammonium_perchlorate_angels].order = b
data_recipe[ammonium_perchlorate_angels].icons = THREE_I(ammonia_angels, perchloric_acid_angels, ammonium_perchlorate_angels)
data_recipe[ammonium_perchlorate_angels].order = b
-- NH₃ + HClO₄ --> NH₄ClO₄
data_recipe[ammonium_perchlorate_angels].ingredients[1].amount = 60
data_recipe[ammonium_perchlorate_angels].ingredients[2].amount = 60
data_recipe[ammonium_perchlorate_angels].results = {{type = item, name = ammonium_perchlorate_angels, amount = 4}}

data_item[rocket_booster_angels].subgroup = is_nitrogen
data_item[rocket_booster_angels].order = c
data_item[rocket_booster_angels].fuel_category = transport_fuel
data_item[rocket_booster_angels].fuel_value = 7200 .. kJ
data_item[rocket_booster_angels].fuel_acceleration_multiplier = 1.75
data_recipe[rocket_booster_angels].subgroup = is_nitrogen
data_recipe[rocket_booster_angels].icons = THREE_I(iron_plate, ammonium_nitrate_angels, rocket_booster_angels)
data_recipe[rocket_booster_angels].order = c
data_recipe[rocket_booster_angels].ingredients =
{
    {type = item, name = iron_plate, amount = 1},
    {type = item, name = ammonium_nitrate_angels, amount = 4}
}

local rocket_booster_2 = "angels-rocket-booster-2"
data_recipe[rocket_booster_2].subgroup = is_nitrogen
data_recipe[rocket_booster_2].icons = THREE_I(iron_plate, ammonium_perchlorate_angels, rocket_booster_angels)
data_recipe[rocket_booster_2].order = c_a
data_recipe[rocket_booster_2].ingredients =
{
    {type = item, name = iron_plate, amount = 1},
    {type = item, name = ammonium_perchlorate_angels, amount = 4}
}
data_recipe[rocket_booster_2].results[1].amount = 4

data_item_subgroup[is_nitrogen_fluids].order = c_a

local air_separation = "angels-air-separation"
data_recipe[air_separation].subgroup = is_nitrogen_fluids
data_recipe[air_separation].icons = THREE_R_I(compressed_air, nitrogen_angels, oxygen_angels)
data_recipe[air_separation].order = a
data_recipe[air_separation].ingredients[1].amount = 120
data_recipe[air_separation].results[1].amount = 60
data_recipe[air_separation].results[2].amount = 30

data_fluid[ammonia_angels].order = b
data_recipe[ammonia_angels].icons = THREE_I(hydrogen_angels, nitrogen_angels, ammonia_angels)
data_recipe[ammonia_angels].order = b
-- 3H₂ + N₂ -cat-> 2NH₃
data_recipe[ammonia_angels].ingredients[1].amount = 90
data_recipe[ammonia_angels].ingredients[2].amount = 30
data_recipe[ammonia_angels].results[1].amount = 60

data_fluid[nitrogen_monoxide_angels].order = c
data_recipe[nitrogen_monoxide_angels].icons = TWO_D_I(ammonia_angels, oxygen_angels, nitrogen_monoxide_angels, steam, number_1)
data_recipe[nitrogen_monoxide_angels].order = c
-- 4NH₃ + 5O₂ -cat-> 4NO + 6H₂O
data_recipe[nitrogen_monoxide_angels].ingredients[1].amount = 60
data_recipe[nitrogen_monoxide_angels].ingredients[2].amount = 75
data_recipe[nitrogen_monoxide_angels].results =
{
    {type = fluid, name = nitrogen_monoxide_angels, amount = 30}, -- 60
    {type = fluid, name = steam, amount = 30}, -- 90
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}
data_recipe[nitrogen_monoxide_angels].main_product = nitrogen_monoxide_angels

data_fluid[nitrogen_dioxide_angels].order = d
data_recipe[nitrogen_dioxide_angels].icons = THREE_I(oxygen_angels, nitrogen_monoxide_angels, nitrogen_dioxide_angels)
data_recipe[nitrogen_dioxide_angels].order = d
-- 2NO + O₂ --> 2NO₂
data_recipe[nitrogen_dioxide_angels].ingredients[1].amount = 30
data_recipe[nitrogen_dioxide_angels].ingredients[2].amount = 60
data_recipe[nitrogen_dioxide_angels].results[1].amount = 60

data_fluid[urea_solution_angels].localised_name = {"fluid-name.urea-solution"}
data_fluid[urea_solution_angels].localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]2[/font])[font=default-tiny-bold]2[/font]CO[font=default-tiny-bold](aq)[/font]"} or nil
data_fluid[urea_solution_angels].order = e
data_recipe[urea_solution_angels].icons = THREE_I(ammonia_angels, carbon_dioxide_angels, urea_solution_angels)
data_recipe[urea_solution_angels].order = e
-- 2NH₃ + CO₂ --> N₂H₄CO(aq)
data_recipe[urea_solution_angels].ingredients[1].amount = 60
data_recipe[urea_solution_angels].ingredients[2].amount = 30
data_recipe[urea_solution_angels].results = {{type = fluid, name = urea_solution_angels, amount = 30}}

data_fluid[nitric_acid_angels].order = f
data_recipe[nitric_acid_angels].category = angels_advanced_chemistry
data_recipe[nitric_acid_angels].icons = THREE_D_I(nitrogen_dioxide_angels, oxygen_angels, water_purified_angels, nitric_acid_angels)
data_recipe[nitric_acid_angels].order = f
-- 4NO₂ + O₂ + 2H₂O --> 4HNO₃
data_recipe[nitric_acid_angels].ingredients =
{
    {type = fluid, name = nitrogen_dioxide_angels, amount = 60},
    {type = fluid, name = oxygen_angels, amount = 15},
    {type = fluid, name = water_purified_angels, amount = 30}
}
data_recipe[nitric_acid_angels].results[1].amount = 60

data_recipe[sodium_nitrate_acid_processing].subgroup = is_nitrogen_fluids
data_recipe[sodium_nitrate_acid_processing].icons = TWO_D_I(sodium_nitrate_angels, sulfuric_acid_angels, nitric_acid_angels, sodium_sulfate_angels)
data_recipe[sodium_nitrate_acid_processing].order = f_a
-- 2NaNO₃ + H₂SO₄ --> Na₂SO₄ + 2HNO₃
data_recipe[sodium_nitrate_acid_processing].ingredients[1].amount = 4
data_recipe[sodium_nitrate_acid_processing].ingredients[2].amount = 30
data_recipe[sodium_nitrate_acid_processing].results =
{
    {type = item, name = sodium_sulfate_angels, amount = 2},
    {type = fluid, name = nitric_acid_angels, amount = 60}
}

data_fluid[melamine_solution_angels].localised_name = {"fluid-name.melamine-solution"}
data_fluid[melamine_solution_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]6[/font]N[font=default-tiny-bold]6(aq)[/font]"} or nil
data_fluid[melamine_solution_angels].order = g
data_recipe[melamine_solution_angels].category = angels_advanced_chemistry
data_recipe[melamine_solution_angels].icons = FOUR_R_I(urea_solution_angels, ammonia_solution, melamine_solution_angels, carbon_dioxide_angels)
data_recipe[melamine_solution_angels].order = g
-- 6N₂H₄CO(aq) + H₂O -cat-> C₃H₆N₆(aq) + 6NH₃(aq) + 3CO₂
data_recipe[melamine_solution_angels].ingredients =
{
    {type = fluid, name = urea_solution_angels, amount = 90},
    {type = fluid, name = water_purified_angels, amount = 15},
    {type = item, name = catalyst_blue, amount = 1, ignored_by_stats = 1}
}
data_recipe[melamine_solution_angels].results =
{
    {type = fluid, name = ammonia_solution, amount = 30}, -- 90
    {type = fluid, name = melamine_solution_angels, amount = 15},
    {type = fluid, name = carbon_dioxide_angels, amount = 15}, -- 45
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}
data_recipe[melamine_solution_angels].main_product = melamine_solution_angels

data_fluid[monochloramine_angels].order = h
data_recipe[monochloramine_angels].category = chemistry
data_recipe[monochloramine_angels].icons = TWO_D_I(ammonia_angels, sodium_hypochlorite_solution, monochloramine_angels, sodium_hydroxide_solution_angels)
data_recipe[monochloramine_angels].order = h
-- NaClO + NH₃ --> NH₂Cl + NaOH
data_recipe[monochloramine_angels].ingredients[1].type = fluid
data_recipe[monochloramine_angels].ingredients[1].name = ammonia_angels
data_recipe[monochloramine_angels].ingredients[1].amount = 60
data_recipe[monochloramine_angels].ingredients[2].type = fluid
data_recipe[monochloramine_angels].ingredients[2].name = sodium_hypochlorite_solution
data_recipe[monochloramine_angels].ingredients[2].amount = 60
data_recipe[monochloramine_angels].results =
{
    {type = fluid, name = monochloramine_angels, amount = 60},
    {type = fluid, name = sodium_hydroxide_solution_angels, amount = 30} -- 60
}
data_recipe[monochloramine_angels].main_product = monochloramine_angels

data_fluid[hydrazine_angels].localised_name = {"fluid-name.hydrazine-liquid"}
data_fluid[hydrazine_angels].order = j
data_fluid[hydrazine_angels].fuel_value = 150 .. kJ
data_recipe[hydrazine_angels].icons = TWO_D_I(monochloramine_angels, ammonia_angels, hydrazine_angels, hydrogen_chloride_angels)
data_recipe[hydrazine_angels].order = j
-- NH₂Cl + NH₃ --> N₂H₄ + HCl
data_recipe[hydrazine_angels].ingredients[1].amount = 60
data_recipe[hydrazine_angels].ingredients[2].amount = 60
data_recipe[hydrazine_angels].results[1].amount = 60
data_recipe[hydrazine_angels].results[2].amount = 30 -- 60

data_fluid[dinitrogen_tetroxide_angels].order = k
data_recipe[dinitrogen_tetroxide_angels].icons = TWO_I(nitrogen_dioxide_angels, dinitrogen_tetroxide_angels)
data_recipe[dinitrogen_tetroxide_angels].order = k
-- 2NO₂ --> N₂O₄
data_recipe[dinitrogen_tetroxide_angels].ingredients[1].amount = 60
data_recipe[dinitrogen_tetroxide_angels].results[1].amount = 30

data_fluid[methylamine_angels].order = l
data_recipe[methylamine_angels].icons = TWO_D_I(ammonia_angels, methanol_angels, methylamine_angels, water_purified_angels)
data_recipe[methylamine_angels].order = l
-- CH₄O + NH₃ --> CH₅N + H₂O
data_recipe[methylamine_angels].ingredients[1].amount = 60
data_recipe[methylamine_angels].ingredients[2].amount = 60
data_recipe[methylamine_angels].results[1].amount = 60
data_recipe[methylamine_angels].results[2].amount = 30 -- 60

data_fluid[dimethylamine_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]7[/font]N"} or nil
data_fluid[dimethylamine_angels].order = m
data_recipe[dimethylamine_angels].icons = TWO_D_I(methylamine_angels, methanol_angels, dimethylamine_angels, water_purified_angels)
data_recipe[dimethylamine_angels].order = m
-- CH₅N + CH₄O --> C₂H₇N + H₂O
data_recipe[dimethylamine_angels].ingredients[1].amount = 60
data_recipe[dimethylamine_angels].ingredients[2].amount = 60
data_recipe[dimethylamine_angels].results[1].amount = 60
data_recipe[dimethylamine_angels].results[2].amount = 30 -- 60

data_fluid[dimethylhydrazine_angels].localised_name = {"fluid-name.dimethylhydrazine-liquid"}
data_fluid[dimethylhydrazine_angels].order = n
data_recipe[dimethylhydrazine_angels].icons = TWO_D_I(dimethylamine_angels, monochloramine_angels, dimethylhydrazine_angels, hydrogen_chloride_angels)
data_recipe[dimethylhydrazine_angels].order = n
-- C₂H₇N + NH₂Cl --> C₂H₈N₂ + HCl
data_recipe[dimethylhydrazine_angels].ingredients[1].amount = 60
data_recipe[dimethylhydrazine_angels].ingredients[2].amount = 60
data_recipe[dimethylhydrazine_angels].results[1].amount = 60
data_recipe[dimethylhydrazine_angels].results[2].name = hydrogen_chloride_angels
data_recipe[dimethylhydrazine_angels].results[2].amount = 30 -- 60

data_fluid[ammonium_chloride_solution_angels].localised_name = {"fluid-name.ammonium-chloride-solution"}
data_fluid[ammonium_chloride_solution_angels].localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]Cl[font=default-tiny-bold](aq)[/font]"} or nil
data_fluid[ammonium_chloride_solution_angels].order = o
data_recipe[ammonium_chloride_solution_angels].icons = THREE_I(ammonia_angels, hydrochloric_acid_angels, ammonium_chloride_solution_angels)
data_recipe[ammonium_chloride_solution_angels].order = o
-- NH₃ + HCl(aq) --> NH₄Cl(aq)
data_recipe[ammonium_chloride_solution_angels].ingredients[1].amount = 30
data_recipe[ammonium_chloride_solution_angels].ingredients[2].name = hydrochloric_acid_angels
data_recipe[ammonium_chloride_solution_angels].ingredients[2].amount = 30
data_recipe[ammonium_chloride_solution_angels].results[1].amount = 30

-- FLUORINE FLUIDS
data_fluid[hydrogen_fluoride_angels].subgroup = is_fluorine_fluids
data_fluid[hydrogen_fluoride_angels].order = a
data_recipe[hydrogen_fluoride_angels].category = angels_liquifying
data_recipe[hydrogen_fluoride_angels].subgroup = is_fluorine_fluids
data_recipe[hydrogen_fluoride_angels].icons = TWO_D_I(fluorite_angels, sulfuric_acid_angels, hydrogen_fluoride_angels, calcium_sulfate_angels)
data_recipe[hydrogen_fluoride_angels].order = a
-- CaF₂ + H₂SO₄ --> CaSO₄ + 2HF 
data_recipe[hydrogen_fluoride_angels].ingredients =
{
    {type = item, name = fluorite_angels, amount = 4},
    {type = fluid, name = sulfuric_acid_angels, amount = 60}
}
data_recipe[hydrogen_fluoride_angels].results =
{
    {type = fluid, name = hydrogen_fluoride_angels, amount = 120},
    {type = item, name = calcium_sulfate_angels, amount = 4}
}

data_fluid[hydrofluoric_acid_angels].localised_description = show_formula and {chemical_formula, "HF[font=default-tiny-bold](aq)[/font]"} or nil
data_fluid[hydrofluoric_acid_angels].subgroup = is_fluorine_fluids
data_fluid[hydrofluoric_acid_angels].order = b
data_recipe[hydrofluoric_acid_angels].category = chemistry
data_recipe[hydrofluoric_acid_angels].subgroup = is_fluorine_fluids
data_recipe[hydrofluoric_acid_angels].icons = THREE_I(hydrogen_fluoride_angels, water_purified_angels, hydrofluoric_acid_angels)
data_recipe[hydrofluoric_acid_angels].order = b
-- HF + H₂O --> HF(aq)
data_recipe[hydrofluoric_acid_angels].ingredients =
{
    {type = fluid, name = hydrogen_fluoride_angels, amount = 60},
    {type = fluid, name = water_purified_angels, amount = 60}
}
data_recipe[hydrofluoric_acid_angels].results = {{type = fluid, name = hydrofluoric_acid_angels, amount = 60}}
data_recipe[hydrofluoric_acid_angels].main_product = hydrofluoric_acid_angels

local hydrogen_fluoride_dissolving = "angels-hydrogen-fluoride-dissolving"
data_recipe[hydrogen_fluoride_dissolving].subgroup = is_fluorine_fluids
data_recipe[hydrogen_fluoride_dissolving].icons = THREE_R_I(hydrofluoric_acid_angels, hydrogen_fluoride_angels, steam)
data_recipe[hydrogen_fluoride_dissolving].order = b_a
-- HF(aq) --> HF + H₂O
data_recipe[hydrogen_fluoride_dissolving].ingredients = {{type = fluid, name = hydrofluoric_acid_angels, amount = 60}}
data_recipe[hydrogen_fluoride_dissolving].results =
{
    {type = fluid, name = hydrogen_fluoride_angels, amount = 60},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[hydrogen_fluoride_dissolving].main_product = hydrogen_fluoride_angels

-- SODIUM
data_item_subgroup[is_sodium].order = e

data_item[sodium_angels].localised_description = show_formula and {chemical_formula, "Na"} or nil
data_item[sodium_angels].order = a
data_recipe[sodium_angels].icons = FOUR_R_I(sodium_hydroxide_solution_angels, hydrogen_angels, sodium_angels, oxygen_angels)
data_recipe[sodium_angels].order = a
data_recipe[sodium_angels].energy_required = 8 -- 2(NaOH + H₂O) -electrode/electrolys-> 2Na + 3H₂ + 2O₂
data_recipe[sodium_angels].ingredients =
{
    {type = fluid, name = sodium_hydroxide_solution_angels, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[sodium_angels].results =
{
    {type = item, name = sodium_angels, amount = 16},
    {type = fluid, name = hydrogen_angels, amount = 120}, -- 360
    {type = fluid, name = oxygen_angels, amount = 120}, -- 240
    {type = item, name = electrode_used, amount = 1}
}

data_recipe[sodium_sulfate_solution_electrolysis].localised_name = {"recipe-name.sodium-sulfate-solution-electrolysis"}
data_recipe[sodium_sulfate_solution_electrolysis].icons = FOUR_R_I(sodium_sulfate_solution, hydrogen_sulfide_angels, sodium_angels, hydrogen_peroxide)
data_recipe[sodium_sulfate_solution_electrolysis].order = a_a
data_recipe[sodium_sulfate_solution_electrolysis].energy_required = 8 -- (Na₂SO₄ + H₂O) -electrode/electrolys-> 2Na + SO₃ + H₂O₂
data_recipe[sodium_sulfate_solution_electrolysis].ingredients =
{
    {type = fluid, name = sodium_sulfate_solution, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[sodium_sulfate_solution_electrolysis].results =
{
    {type = item, name = sodium_angels, amount = 32},
    {type = fluid, name = sulfur_trioxide_gas, amount = 120}, -- 240
    {type = fluid, name = hydrogen_peroxide, amount = 120}, -- 240
    {type = item, name = electrode_used, amount = 1}
}

data_recipe[sodium_chloride_solution_electrolysis].localised_name = {"recipe-name.sodium-chloride-solution-electrolysis"}
data_recipe[sodium_chloride_solution_electrolysis].icons = FOUR_R_I(sodium_chloride_solution, hydrogen_chloride_angels, sodium_angels, hydrogen_peroxide)
data_recipe[sodium_chloride_solution_electrolysis].order = a_b
data_recipe[sodium_chloride_solution_electrolysis].energy_required = 8 -- 2(NaCl + H₂O) -electrode/electrolys-> 2Na + 2HCl + H₂O₂
data_recipe[sodium_chloride_solution_electrolysis].ingredients =
{
    {type = fluid, name = sodium_chloride_solution, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[sodium_chloride_solution_electrolysis].results =
{
    {type = item, name = sodium_angels, amount = 16},
    {type = fluid, name = hydrogen_chloride_angels, amount = 120}, -- 240
    {type = fluid, name = hydrogen_peroxide, amount = 60}, -- 120
    {type = item, name = electrode_used, amount = 1}
}

data_recipe[sodium_carbonate_solution_electrolysis].localised_name = {"recipe-name.sodium-carbonate-solution-electrolysis"}
data_recipe[sodium_carbonate_solution_electrolysis].subgroup = is_sodium
data_recipe[sodium_carbonate_solution_electrolysis].icons = FOUR_R_I(sodium_carbonate_solution, carbon_dioxide_angels, sodium_angels, hydrogen_peroxide)
data_recipe[sodium_carbonate_solution_electrolysis].order = a_c
data_recipe[sodium_carbonate_solution_electrolysis].energy_required = 8 -- (Na₂CO₃ + H₂O) -electrolys-> 2Na + CO₂ + H₂O₂
data_recipe[sodium_carbonate_solution_electrolysis].ingredients =
{
    {type = fluid, name = sodium_carbonate_solution, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[sodium_carbonate_solution_electrolysis].results =
{
    {type = item, name = sodium_angels, amount = 32},
    {type = fluid, name = carbon_dioxide_angels, amount = 120}, -- 240
    {type = fluid, name = hydrogen_peroxide, amount = 120}, -- 240
    {type = item, name = electrode_used, amount = 1}
}
data_recipe[sodium_carbonate_solution_electrolysis].main_product = sodium_angels

data_item[sodium_hydroxide_angels].localised_description = show_formula and {chemical_formula, "NaOH"} or nil
data_item[sodium_hydroxide_angels].order = b
data_recipe[sodium_hydroxide_angels].icons = TWO_D_I(sodium_angels, water_purified_angels, sodium_hydroxide_angels, hydrogen_angels)
data_recipe[sodium_hydroxide_angels].order = b
-- 2Na + 2H₂O --> 2NaOH + H₂
data_recipe[sodium_hydroxide_angels].ingredients[1].amount = 4
data_recipe[sodium_hydroxide_angels].ingredients[2].amount = 60
data_recipe[sodium_hydroxide_angels].results =
{
    {type = item, name = sodium_hydroxide_angels, amount = 4},
    {type = fluid, name = hydrogen_angels, amount = 30}
}
data_recipe[sodium_hydroxide_angels].main_product = sodium_hydroxide_angels

data_recipe[sodium_hydroxide_solution_reverse].category = chemistry
data_recipe[sodium_hydroxide_solution_reverse].icons = THREE_R_I(sodium_hydroxide_solution_angels, sodium_hydroxide_angels, steam)
data_recipe[sodium_hydroxide_solution_reverse].order = b_a
-- NaOH(aq) --> NaOH + H₂O
data_recipe[sodium_hydroxide_solution_reverse].ingredients[1].amount = 60
data_recipe[sodium_hydroxide_solution_reverse].results[1].amount = 4
data_recipe[sodium_hydroxide_solution_reverse].results[2].name = steam
data_recipe[sodium_hydroxide_solution_reverse].results[2].amount = 60

data_recipe[sodium_nitrate_processing].localised_name = {"recipe-name.nitric-gasses-from-sodium-nitrate-solution"}
data_recipe[sodium_nitrate_processing].category = angels_advanced_chemistry
data_recipe[sodium_nitrate_processing].subgroup = is_sodium
data_recipe[sodium_nitrate_processing].icons = FOUR_R_I(sodium_nitrate_solution, nitrogen_monoxide_angels, sodium_hydroxide_angels, nitrogen_dioxide_angels)
data_recipe[sodium_nitrate_processing].order = b_b
-- 2(NaNO₃ + H₂O) + N₂ -cat-> 2NaOH + 2NO + 2NO₂ + H₂
data_recipe[sodium_nitrate_processing].ingredients =
{
    {type = fluid, name = sodium_nitrate_solution, amount = 60},
    {type = fluid, name = nitrogen_angels, amount = 30},
    {type = item, name = catalyst_green, amount = 1}
}
data_recipe[sodium_nitrate_processing].results =
{
    {type = item, name = sodium_hydroxide_angels, amount = 4},
    {type = fluid, name = nitrogen_monoxide_angels, amount = 60},
    {type = fluid, name = nitrogen_dioxide_angels, amount = 60},
    {type = fluid, name = hydrogen_angels, amount = 30},
    {type = item, name = catalyst_carrier, amount = 1}
}

data_item[sodium_sulfate_angels].localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4[/font]"} or nil
data_item[sodium_sulfate_angels].order = d
data_item[sodium_sulfate_angels].weight = 5000
data_recipe[sodium_sulfate_angels].icons = TWO_D_I(sodium_hydroxide_angels, sulfuric_acid_angels, sodium_sulfate_angels, steam)
data_recipe[sodium_sulfate_angels].order = d
-- 2NaOH + H₂SO₄ --> Na₂SO₄ + 2H₂O
data_recipe[sodium_sulfate_angels].ingredients[1].amount = 4
data_recipe[sodium_sulfate_angels].ingredients[2].amount = 30
data_recipe[sodium_sulfate_angels].results[1].amount = 2
data_recipe[sodium_sulfate_angels].results[2].name = steam
data_recipe[sodium_sulfate_angels].results[2].amount = 60

data_item[sodium_carbonate_angels].localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]CO[font=default-tiny-bold]3[/font]"} or nil
data_item[sodium_carbonate_angels].order = e
data_recipe[sodium_carbonate_angels].category = chemistry
data_recipe[sodium_carbonate_angels].icons = TWO_D_I(sodium_angels, carbon_dioxide_angels, sodium_carbonate_angels, carbon_angels)
data_recipe[sodium_carbonate_angels].order = e
-- 4Na + 3CO₂ --> 2Na₂CO₃ + C
data_recipe[sodium_carbonate_angels].ingredients[1].amount = 4
data_recipe[sodium_carbonate_angels].ingredients[2].amount = 60
data_recipe[sodium_carbonate_angels].results =
{
    {type = item, name = sodium_carbonate_angels, amount = 2},
    {type = item, name = carbon_angels, amount = 1}
}
data_recipe[sodium_carbonate_angels].main_product = sodium_carbonate_angels

data_item[sodium_cyanide_angels].localised_description = show_formula and {chemical_formula, "NaCN"} or nil
data_item[sodium_cyanide_angels].order = f
data_recipe[sodium_cyanide_angels].icons = THREE_D_I(sodium_angels, carbon_angels, ammonia_angels, sodium_cyanide_angels, nil, hydrogen_angels)
data_recipe[sodium_cyanide_angels].order = f
data_recipe[sodium_cyanide_angels].energy_required = 8 -- 2Na + 2C + 2NH₃ -cat-> 2NaCN + 3H₂
data_recipe[sodium_cyanide_angels].ingredients[1].amount = 16
data_recipe[sodium_cyanide_angels].ingredients[2].amount = 16
data_recipe[sodium_cyanide_angels].ingredients[3].amount = 240
data_recipe[sodium_cyanide_angels].results[1].amount = 16
data_recipe[sodium_cyanide_angels].results[2].amount = 120 -- 360

data_item[sodium_nitrate_angels].localised_description = show_formula and {chemical_formula, "NaNO[font=default-tiny-bold]3[/font]"} or nil
data_item[sodium_nitrate_angels].order = g

data_item[sodium_hypochlorite_angels].localised_description = show_formula and {chemical_formula, "NaClO"} or nil
data_item[sodium_hypochlorite_angels].order = h
data_recipe[sodium_hypochlorite_angels].category = chemistry
data_recipe[sodium_hypochlorite_angels].icons = THREE_R_I(sodium_hypochlorite_solution, sodium_hypochlorite_angels, steam)
data_recipe[sodium_hypochlorite_angels].order = h
-- NaClO(aq) --> NaClO + H₂O
data_recipe[sodium_hypochlorite_angels].ingredients = {{type = fluid, name = sodium_hypochlorite_solution, amount = 60}}
data_recipe[sodium_hypochlorite_angels].results =
{
    {type = item, name = sodium_hypochlorite_angels, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[sodium_hypochlorite_angels].main_product = sodium_hypochlorite_angels

data_item[sodium_chlorate_angels].localised_description = show_formula and {chemical_formula, "NaClO[font=default-tiny-bold]3[/font]"} or nil
data_item[sodium_chlorate_angels].order = i
data_recipe[sodium_chlorate_angels].category = chemistry
data_recipe[sodium_chlorate_angels].icons = THREE_R_I(sodium_chlorate_solution, sodium_chlorate_angels, steam)
data_recipe[sodium_chlorate_angels].order = i
data_recipe[sodium_chlorate_angels].energy_required = 4 -- NaClO₃(aq) --> NaClO₃ + H₂O
data_recipe[sodium_chlorate_angels].ingredients = {{type = fluid, name = sodium_chlorate_solution, amount = 60}}
data_recipe[sodium_chlorate_angels].results =
{
    {type = item, name = sodium_chlorate_angels, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[sodium_chlorate_angels].main_product = sodium_chlorate_angels

data_item[sodium_perchlorate_angels].localised_description = show_formula and {chemical_formula, "NaClO[font=default-tiny-bold]4[/font]"} or nil
data_item[sodium_perchlorate_angels].order = j
data_recipe[sodium_perchlorate_angels].category = chemistry
data_recipe[sodium_perchlorate_angels].icons = THREE_R_I(sodium_perchlorate_solution, sodium_perchlorate_angels, steam)
data_recipe[sodium_perchlorate_angels].order = j
data_recipe[sodium_perchlorate_angels].energy_required = 4 -- NaClO₄(aq) --> NaClO₄ + H₂O
data_recipe[sodium_perchlorate_angels].ingredients = {{type = fluid, name = sodium_perchlorate_solution, amount = 60}}
data_recipe[sodium_perchlorate_angels].results =
{
    {type = item, name = sodium_perchlorate_angels, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[sodium_perchlorate_angels].main_product = sodium_perchlorate_angels

data_item[sodium_cobaltate_bob].localised_description = show_formula and {chemical_formula, "NaCoCO[font=default-tiny-bold]2[/font]"} or nil
data_item[sodium_cobaltate_bob].order = k
data_item[sodium_cobaltate_bob].stack_size = 200
data_recipe[sodium_cobaltate_bob].icons = THREE_I(cobalt_oxide_II_III, sodium_carbonate_angels, sodium_cobaltate_bob)
data_recipe[sodium_cobaltate_bob].order = k
data_recipe[sodium_cobaltate_bob].energy_required = 8 -- 4Co₃O₄ + 6Na₂CO₃ + O₂ --> 12NaCoCO₂ + 6CO₂
data_recipe[sodium_cobaltate_bob].ingredients =
{
    {type = item, name = cobalt_oxide_II_III, amount = 4},
    {type = item, name = sodium_carbonate_angels, amount = 6},
    {type = fluid, name = oxygen_angels, amount = 15}
}
data_recipe[sodium_cobaltate_bob].results =
{
    {type = item, name = sodium_cobaltate_bob, amount = 12},
    {type = fluid, name = carbon_dioxide_angels, amount = 60} -- 90
}

-- SODIUM FLUIDS
data_item_subgroup[is_sodium_fluids].order = e_a

data_fluid[sodium_hydroxide_solution_angels].localised_description = show_formula and {chemical_formula, "NaOH[font=default-tiny-bold](aq)[/font]"} or nil
data_fluid[sodium_hydroxide_solution_angels].subgroup = is_sodium_fluids
data_fluid[sodium_hydroxide_solution_angels].order = a
data_recipe[sodium_hydroxide_solution_angels].subgroup = is_sodium_fluids
data_recipe[sodium_hydroxide_solution_angels].icons = THREE_I(sodium_hydroxide_angels, water_purified_angels, sodium_hydroxide_solution_angels)
data_recipe[sodium_hydroxide_solution_angels].order = a
-- NaOH + H₂O --> NaOH(aq)
data_recipe[sodium_hydroxide_solution_angels].ingredients[1].amount = 4
data_recipe[sodium_hydroxide_solution_angels].ingredients[2].amount = 60
data_recipe[sodium_hydroxide_solution_angels].results[1].amount = 60

data_recipe[sodium_hypochlorite_decomposition].category = chemistry
data_recipe[sodium_hypochlorite_decomposition].subgroup = is_sodium_fluids
data_recipe[sodium_hypochlorite_decomposition].icons = THREE_R_I(sodium_hypochlorite_solution, sodium_chloride_solution, oxygen_angels)
data_recipe[sodium_hypochlorite_decomposition].order = f_b
-- 2NaClO(aq) --> 2NaCl(aq) + O₂
data_recipe[sodium_hypochlorite_decomposition].ingredients = {{type = fluid, name = sodium_hypochlorite_solution, amount = 60}}
data_recipe[sodium_hypochlorite_decomposition].results =
{
    {type = fluid, name = sodium_chloride_solution, amount = 60},
    {type = fluid, name = oxygen_angels, amount = 30}
}
data_recipe[sodium_hypochlorite_decomposition].main_product = sodium_chloride_solution

-- PHOSPHORUS

-- PHOSPHORUS FLUIDS

-- SULFUR
data_item_subgroup["angels-petrochem-sulfur"].order = f

data_item[sulfur].localised_description = show_formula and {chemical_formula, "S"} or nil
data_item[sulfur].order = a

local sulfur_angels = "angels-solid-sulfur"
data_recipe[sulfur_angels].icons = TWO_D_I(hydrogen_sulfide_angels, oxygen_angels, sulfur, steam)
data_recipe[sulfur_angels].order = a_a
-- 2H₂S + O₂ --> 2S + 2H₂O
data_recipe[sulfur_angels].ingredients[1].amount = 60
data_recipe[sulfur_angels].ingredients[2].amount = 30
data_recipe[sulfur_angels].results =
{
    {type = item, name = sulfur, amount = 4},
    {type = fluid, name = steam, amount = 60}
}

-- SULFUR FLUIDS
data_item_subgroup[is_sulfur_fluids].order = f_a

data_fluid[acid_angels].order = a

local acid_gas_catalyst = "angels-gas-acid-catalyst"
data_recipe[acid_gas_catalyst].subgroup = is_sulfur_fluids
data_recipe[acid_gas_catalyst].icons = FOUR_R_I(acid_angels, methane_angels, hydrogen_sulfide_angels, carbon_dioxide_angels)
data_recipe[acid_gas_catalyst].order = a_a
data_recipe[acid_gas_catalyst].energy_required = 16 -- CH₄(70-90%)/H₂S(0.1-30%)/CO₂(2-15%)
data_recipe[acid_gas_catalyst].ingredients[1].amount = 960
data_recipe[acid_gas_catalyst].results =
{
    {type = fluid, name = methane_angels, amount = 480},
    {type = fluid, name = hydrogen_sulfide_angels, amount = 240},
    {type = fluid, name = carbon_dioxide_angels, amount = 120},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}

data_fluid[hydrogen_sulfide_angels].order = b

data_fluid[enriched_hydrogen_sulfide_angels].localised_description = show_formula and {chemical_formula, "Enriched H[font=default-tiny-bold]2[/font]S"} or nil
data_fluid[enriched_hydrogen_sulfide_angels].order = c
data_recipe[enriched_hydrogen_sulfide_angels].icons = TWO_D_I(hydrogen_sulfide_angels, steam, enriched_hydrogen_sulfide_angels, water_purified_angels)
data_recipe[enriched_hydrogen_sulfide_angels].order = c
data_recipe[enriched_hydrogen_sulfide_angels].energy_required = 4
data_recipe[enriched_hydrogen_sulfide_angels].ingredients[1].amount = 60
data_recipe[enriched_hydrogen_sulfide_angels].ingredients[2].amount = 60
data_recipe[enriched_hydrogen_sulfide_angels].results[1].amount = 60
data_recipe[enriched_hydrogen_sulfide_angels].results[2].amount = 60

data_fluid[sulfur_dioxide_angels].subgroup = is_sulfur_fluids
data_fluid[sulfur_dioxide_angels].order = d
data_recipe[sulfur_dioxide_angels].subgroup = is_sulfur_fluids
data_recipe[sulfur_dioxide_angels].icons = THREE_I(sulfur, oxygen_angels, sulfur_dioxide_angels)
data_recipe[sulfur_dioxide_angels].order = d
-- S + O₂ --> SO₂
data_recipe[sulfur_dioxide_angels].ingredients[1].amount = 4
data_recipe[sulfur_dioxide_angels].ingredients[2].amount = 60

data_recipe[sulfur_gas_calcium_sulfate].category = chemistry
data_recipe[sulfur_gas_calcium_sulfate].subgroup = is_sulfur_fluids
data_recipe[sulfur_gas_calcium_sulfate].icons = THREE_D_I(calcium_sulfate_angels, nil, coal, sulfur_dioxide_angels, lime_angels, carbon_dioxide_angels)
data_recipe[sulfur_gas_calcium_sulfate].order = d_a
-- 2CaSO₄ + С --> 2SO₂ + 2CaO + CO₂
data_recipe[sulfur_gas_calcium_sulfate].ingredients =
{
    {type = item, name = calcium_sulfate_angels, amount = 4},
    {type = item, name = coal, amount = 2}
}
data_recipe[sulfur_gas_calcium_sulfate].results =
{
    {type = item, name = lime_angels, amount = 4},
    {type = fluid, name = sulfur_dioxide_angels, amount = 60},
    {type = fluid, name = carbon_dioxide_angels, amount = 60}
}

data_fluid[sulfuric_acid_angels].subgroup = is_sulfur_fluids
data_fluid[sulfuric_acid_angels].order = f
data_recipe[sulfuric_acid_angels].subgroup = is_sulfur_fluids
data_recipe[sulfuric_acid_angels].icons = THREE_I(sulfur_trioxide_gas, water_purified_angels, sulfuric_acid_angels)
data_recipe[sulfuric_acid_angels].order = f
-- SO₃ + H₂O --> H₂SO₄
data_recipe[sulfuric_acid_angels].ingredients =
{
    {type = fluid, name = sulfur_trioxide_gas, amount = 60},
    {type = fluid, name = water_purified_angels, amount = 60}
}
data_recipe[sulfuric_acid_angels].results = {{type = fluid, name = sulfuric_acid_angels, amount = 60}}

-- CHLORINE FLUIDS
data_item_subgroup[is_chlorine_fluids].order = g

data_fluid[hydrogen_chloride_angels].order = a
data_recipe[hydrogen_chloride_angels].icons = THREE_I(chlorine_angels, hydrogen_angels, hydrogen_chloride_angels)
data_recipe[hydrogen_chloride_angels].order = a
-- H₂ + Cl₂ --> 2HCl
data_recipe[hydrogen_chloride_angels].ingredients[1].amount = 60
data_recipe[hydrogen_chloride_angels].ingredients[2].amount = 60
data_recipe[hydrogen_chloride_angels].results[1].amount = 120

data_fluid[hydrochloric_acid_angels].order = b
data_recipe[hydrochloric_acid_angels].icons = THREE_I(hydrogen_chloride_angels, water_purified_angels, hydrochloric_acid_angels)
data_recipe[hydrochloric_acid_angels].order = b
-- HCl + H₂O --> HCl(aq)
data_recipe[hydrochloric_acid_angels].ingredients[1].amount = 60
data_recipe[hydrochloric_acid_angels].ingredients[2].amount = 60
data_recipe[hydrochloric_acid_angels].results[1].amount = 60

data_recipe[hydrochloric_acid_from_sodium_chloride].localised_name = {"recipe-name.hydrochloric-from-sodium-chlroide"}
data_recipe[hydrochloric_acid_from_sodium_chloride].category = chemistry
data_recipe[hydrochloric_acid_from_sodium_chloride].subgroup = is_chlorine_fluids
data_recipe[hydrochloric_acid_from_sodium_chloride].icons = TWO_D_I(sodium_chloride_solution, sulfuric_acid_angels, hydrochloric_acid_angels, sodium_sulfate_angels)
data_recipe[hydrochloric_acid_from_sodium_chloride].order = b_a
-- 2NaCl(aq) + H₂SO₄ --> 2HCl(aq) + Na₂SO₄
data_recipe[hydrochloric_acid_from_sodium_chloride].ingredients =
{
    {type = fluid, name = sodium_chloride_solution, amount = 60},
    {type = fluid, name = sulfuric_acid_angels, amount = 30}
}
data_recipe[hydrochloric_acid_from_sodium_chloride].results =
{
    {type = fluid, name = hydrochloric_acid_angels, amount = 60},
    {type = item, name = sodium_sulfate_angels, amount = 2},
}
data_recipe[hydrochloric_acid_from_sodium_chloride].main_product = hydrochloric_acid_angels

data_fluid[allyl_chloride_angels].localised_name = {"fluid-name.allyl-chlorid-liquid"}
data_fluid[allyl_chloride_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]5[/font]Cl"} or nil
data_fluid[allyl_chloride_angels].order = c
data_recipe[allyl_chloride_angels].icons = TWO_D_I(propene_angels, chlorine_angels, allyl_chloride_angels, hydrogen_chloride_angels)
data_recipe[allyl_chloride_angels].order = c
-- C₃H₆ + Cl₂ --> C₃H₅Cl + HCl
data_recipe[allyl_chloride_angels].ingredients[1].amount = 60
data_recipe[allyl_chloride_angels].ingredients[2].amount = 60
data_recipe[allyl_chloride_angels].results[1].amount = 60
data_recipe[allyl_chloride_angels].results[2].amount = 60

data_fluid[epichlorohydrin_angels].localised_name = {"fluid-name.epichlorohydrin-liquid"}
data_fluid[epichlorohydrin_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]5[/font]ClO"} or nil
data_fluid[epichlorohydrin_angels].order = d
data_recipe[epichlorohydrin_angels].category = angels_advanced_chemistry
data_recipe[epichlorohydrin_angels].icons = THREE_D_I(allyl_chloride_angels, sodium_hydroxide_solution_angels, chlorine_angels, epichlorohydrin_angels, sodium_chlorate_solution, water_purified_angels)
data_recipe[epichlorohydrin_angels].order = d
-- C₃H₅Cl + 2NaOH(aq) + Cl₂ --> C₃H₅ClO + 2NaCl(aq) + H₂O
data_recipe[epichlorohydrin_angels].ingredients =
{
    {type = fluid, name = allyl_chloride_angels, amount = 30},
    {type = fluid, name = sodium_hydroxide_solution_angels, amount = 60},
    {type = fluid, name = chlorine_angels, amount = 30}
}
data_recipe[epichlorohydrin_angels].results =
{
    {type = fluid, name = epichlorohydrin_angels, amount = 30},
    {type = fluid, name = sodium_chlorate_solution, amount = 60},
    {type = fluid, name = water_purified_angels, amount = 30}
}
data_recipe[epichlorohydrin_angels].main_product = epichlorohydrin_angels

data_fluid[chloromethane_angels].order = e
data_recipe[chloromethane_angels].icons = TWO_D_I(chlorine_angels, methane_angels, chloromethane_angels, hydrogen_chloride_angels)
data_recipe[chloromethane_angels].order = e
-- CH₄ + Cl₂ --> CH₃Cl + HCl
data_recipe[chloromethane_angels].ingredients[1].amount = 60
data_recipe[chloromethane_angels].ingredients[2].amount = 60
data_recipe[chloromethane_angels].results =
{
    {type = fluid, name = chloromethane_angels, amount = 60},
    {type = fluid, name = hydrogen_chloride_angels, amount = 60}
}
data_recipe[chloromethane_angels].main_product = chloromethane_angels

data_fluid[perchloric_acid_angels].order = f
data_recipe[perchloric_acid_angels].category = chemistry
data_recipe[perchloric_acid_angels].icons = TWO_D_I(sodium_perchlorate_angels, hydrochloric_acid_angels, perchloric_acid_angels, sodium_chloride_solution)
data_recipe[perchloric_acid_angels].order = f
-- NaClO₄ + HCl --> HClO₄ + NaCl(aq)
data_recipe[perchloric_acid_angels].ingredients[1].amount = 4
data_recipe[perchloric_acid_angels].ingredients[2].amount = 60
data_recipe[perchloric_acid_angels].results =
{
    {type = fluid, name = perchloric_acid_angels, amount = 60},
    {type = fluid, name = sodium_chloride_solution, amount = 60}
}
data_recipe[perchloric_acid_angels].main_product = perchloric_acid_angels

-- CALCIUM
data_item[fluorite_angels].localised_name = {"item-name.fluorite"}
data_item[fluorite_angels].localised_description = show_formula and {chemical_formula, "CaF[font=default-tiny-bold]2[/font]"} or nil
data_item[fluorite_angels].subgroup = is_calcium
data_item[fluorite_angels].order = b

data_item[calcium_sulfate_angels].localised_description = show_formula and {chemical_formula, "CaSO[font=default-tiny-bold]4[/font]"} or nil
data_item[calcium_sulfate_angels].subgroup = is_calcium
data_item[calcium_sulfate_angels].order = c

data_item[lime_angels].localised_description = show_formula and {chemical_formula, "CaO"} or nil
data_item[lime_angels].subgroup = is_calcium
data_item[lime_angels].order = d
data_recipe[lime_angels].subgroup = is_calcium
data_recipe[lime_angels].icons = THREE_R_I(limestone_angels, lime_angels, carbon_monoxide_angels)
data_recipe[lime_angels].order = d
data_recipe[lime_angels].energy_required = 8 -- CaCO₃ --> CaO + CO₂
data_recipe[lime_angels].ingredients[1].amount = 16
data_recipe[lime_angels].results[1].amount = 16
data_recipe[lime_angels].results[2].amount = 120 -- 240

data_item[calcium_chloride_angels].localised_description = show_formula and {chemical_formula, "CaCl[font=default-tiny-bold]2[/font]"} or nil
data_item[calcium_chloride_angels].subgroup = is_calcium
data_item[calcium_chloride_angels].order = e
data_recipe[calcium_chloride_angels].subgroup = is_calcium
data_recipe[calcium_chloride_angels].icons = THREE_R_I(calcium_chloride_solution, calcium_chloride_angels, steam)
data_recipe[calcium_chloride_angels].order = e
-- CaCl₂(aq) --> CaCl₂ + H₂O
data_recipe[calcium_chloride_angels].ingredients = {{type = fluid, name = calcium_chloride_solution, amount = 60}}
data_recipe[calcium_chloride_angels].results =
{
    {type = item, name = calcium_chloride_angels, amount = 4},
    {type = fluid, name = steam, amount = 30} -- 60
}
data_recipe[calcium_chloride_angels].main_product = calcium_chloride_angels

-- CALCIUM FLUIDS

-- OTHERS FLUIDS

-- NATURAL GAS
data_fluid[natural_gas_angels].subgroup = is_natural_gas
data_fluid[natural_gas_angels].order = a

local natural_gas_separation = "angels-gas-separation"
data_recipe[natural_gas_separation].subgroup = is_natural_gas
data_recipe[natural_gas_separation].icons = FOUR_R_I(natural_gas_angels, raw_gas_angels, condensates_angels, water_yellow_waste)
data_recipe[natural_gas_separation].order = a_a
data_recipe[natural_gas_separation].ingredients[1].amount = 120
data_recipe[natural_gas_separation].results[3].amount = 15

data_fluid[raw_gas_angels].subgroup = is_natural_gas
data_fluid[raw_gas_angels].order = b

local raw_gas_refining = "angels-gas-refining"
data_recipe[raw_gas_refining].subgroup = is_natural_gas
data_recipe[raw_gas_refining].icons = FOUR_R_I(raw_gas_angels, NGL_angels, nil, acid_angels)
data_recipe[raw_gas_refining].order = b_a
data_recipe[raw_gas_refining].energy_required = 4
data_recipe[raw_gas_refining].ingredients[1].amount = 120
data_recipe[raw_gas_refining].results[1].amount = 60
data_recipe[raw_gas_refining].results[2].amount = 30

data_fluid[NGL_angels].subgroup = is_natural_gas
data_fluid[NGL_angels].order = c

local NGL_fractioning = "angels-gas-fractioning"
data_recipe[NGL_fractioning].subgroup = is_natural_gas
data_recipe[NGL_fractioning].icons = FOUR_R_I(NGL_angels, methane_angels, ethane_angels, butane_angels, number_1)
data_recipe[NGL_fractioning].order = c_a
data_recipe[NGL_fractioning].energy_required = 4
data_recipe[NGL_fractioning].ingredients[1].amount = 120
data_recipe[NGL_fractioning].results[1].amount = 30
data_recipe[NGL_fractioning].results[3].amount = 30

local NGL_fractioning_synthesis = "angels-gas-fractioning-synthesis"
data_recipe[NGL_fractioning_synthesis].subgroup = is_natural_gas
data_recipe[NGL_fractioning_synthesis].icons = FOUR_R_I(NGL_angels, methane_angels, ethane_angels, butane_angels, number_2)
data_recipe[NGL_fractioning_synthesis].order = c_b
data_recipe[NGL_fractioning_synthesis].energy_required = 4
data_recipe[NGL_fractioning_synthesis].ingredients[1].amount = 120
data_recipe[NGL_fractioning_synthesis].ingredients[2].amount = 30
data_recipe[NGL_fractioning_synthesis].results[1].amount = 60
data_recipe[NGL_fractioning_synthesis].results[3].amount = 30
data_recipe[NGL_fractioning_synthesis].results[4].amount = 30

local NGL_fractioning_condensates = "angels-gas-fractioning-condensates"
data_recipe[NGL_fractioning_condensates].subgroup = is_natural_gas
data_recipe[NGL_fractioning_condensates].icons = FOUR_R_I(NGL_angels, methane_angels, ethane_angels, butane_angels, number_3)
data_recipe[NGL_fractioning_condensates].order = c_c
data_recipe[NGL_fractioning_condensates].energy_required = 4
data_recipe[NGL_fractioning_condensates].ingredients[1].amount = 120
data_recipe[NGL_fractioning_condensates].ingredients[2].amount = 30
data_recipe[NGL_fractioning_condensates].results[1].amount = 30
data_recipe[NGL_fractioning_condensates].results[3].amount = 60
data_recipe[NGL_fractioning_condensates].results[4].amount = 30

local NGL_fractioning_residual = "angels-gas-fractioning-residual"
data_recipe[NGL_fractioning_residual].subgroup = is_natural_gas
data_recipe[NGL_fractioning_residual].icons = FOUR_R_I(NGL_angels, methane_angels, ethane_angels, butane_angels, number_4)
data_recipe[NGL_fractioning_residual].order = c_d
data_recipe[NGL_fractioning_residual].energy_required = 4
data_recipe[NGL_fractioning_residual].ingredients[1].amount = 120
data_recipe[NGL_fractioning_residual].ingredients[2].amount = 30
data_recipe[NGL_fractioning_residual].results[1].amount = 30
data_recipe[NGL_fractioning_residual].results[2].amount = 60
data_recipe[NGL_fractioning_residual].results[3].amount = 30
data_recipe[NGL_fractioning_residual].results[4].amount = 30

data_fluid[condensates_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]7[/font]H[font=default-tiny-bold]16[/font]"} or nil
data_fluid[condensates_angels].subgroup = is_natural_gas
data_fluid[condensates_angels].order = d

local condensates_refining = "angels-condensates-refining"
data_recipe[condensates_refining].subgroup = is_natural_gas
data_recipe[condensates_refining].icons = FOUR_R_I(condensates_angels, methane_angels, ethane_angels, butane_angels)
data_recipe[condensates_refining].order = d_a
data_recipe[condensates_refining].energy_required = 4 -- C₇H₁₆ + 2H₂ --> CH₄ + C₂H₆ + C₄H₁₀
data_recipe[condensates_refining].ingredients =
{
    {type = fluid, name = condensates_angels, amount = 60},
    {type = fluid, name = hydrogen_angels, amount = 120}
}
data_recipe[condensates_refining].results =
{
    {type = fluid, name = methane_angels, amount = 60},
    {type = fluid, name = ethane_angels, amount = 60},
    {type = fluid, name = butane_angels, amount = 60}
}

-- MULTI-PHASE OIL
data_fluid[multi_phase_oil_angels].subgroup = is_multi_phase_oil
data_fluid[multi_phase_oil_angels].order = a

local oil_separation = "angels-oil-separation"
data_recipe[oil_separation].subgroup = is_multi_phase_oil
data_recipe[oil_separation].icons = FOUR_R_I(multi_phase_oil_angels, raw_gas_angels, crude_oil, water_yellow_waste)
data_recipe[oil_separation].order = a_a
data_recipe[oil_separation].ingredients[1].amount = 120
data_recipe[oil_separation].results[1].amount = 30
data_recipe[oil_separation].results[2].amount = 60
data_recipe[oil_separation].results[3].amount = 15

data_fluid[crude_oil].subgroup = is_multi_phase_oil
data_fluid[crude_oil].order = b

local crude_oil_refining = "angels-oil-refining"
data_recipe[crude_oil_refining].subgroup = is_multi_phase_oil
data_recipe[crude_oil_refining].icons = FOUR_R_I(crude_oil, mineral_oil_angels, fuel_oil_angels, naphtha_angels, number_1)
data_recipe[crude_oil_refining].order = b_a
data_recipe[crude_oil_refining].energy_required = 4
data_recipe[crude_oil_refining].ingredients[1].amount = 120
data_recipe[crude_oil_refining].results[1].amount = 30
data_recipe[crude_oil_refining].results[3].amount = 30

local advanced_crude_oil_refining = "angels-advanced-oil-refining"
data_recipe[advanced_crude_oil_refining].subgroup = is_multi_phase_oil
data_recipe[advanced_crude_oil_refining].icons = FOUR_R_I(crude_oil, mineral_oil_angels, fuel_oil_angels, naphtha_angels, number_2)
data_recipe[advanced_crude_oil_refining].order = b_b
data_recipe[advanced_crude_oil_refining].energy_required = 4
data_recipe[advanced_crude_oil_refining].ingredients[1].amount = 120
data_recipe[advanced_crude_oil_refining].ingredients[2].amount = 30
data_recipe[advanced_crude_oil_refining].results[1].amount = 30
data_recipe[advanced_crude_oil_refining].results[2].amount = 30
data_recipe[advanced_crude_oil_refining].results[3].amount = 60

local condensates_crude_oil_refining = "angels-condensates-oil-refining"
data_recipe[condensates_crude_oil_refining].subgroup = is_multi_phase_oil
data_recipe[condensates_crude_oil_refining].icons = FOUR_R_I(crude_oil, mineral_oil_angels, fuel_oil_angels, naphtha_angels, number_3)
data_recipe[condensates_crude_oil_refining].order = b_c
data_recipe[condensates_crude_oil_refining].energy_required = 4
data_recipe[condensates_crude_oil_refining].ingredients[1].amount = 120
data_recipe[condensates_crude_oil_refining].ingredients[2].amount = 30
data_recipe[condensates_crude_oil_refining].results[1].amount = 30
data_recipe[condensates_crude_oil_refining].results[3].amount = 60

local residual_crude_oil_refining = "angels-residual-oil-refining"
data_recipe[residual_crude_oil_refining].subgroup = is_multi_phase_oil
data_recipe[residual_crude_oil_refining].icons = FOUR_R_I(crude_oil, mineral_oil_angels, fuel_oil_angels, naphtha_angels, number_4)
data_recipe[residual_crude_oil_refining].order = b_d
data_recipe[residual_crude_oil_refining].energy_required = 4
data_recipe[residual_crude_oil_refining].ingredients[2].amount = 120
data_recipe[residual_crude_oil_refining].ingredients[2].amount = 30
data_recipe[residual_crude_oil_refining].results[2].amount = 30
data_recipe[residual_crude_oil_refining].results[3].amount = 30

data_item[oil_residual_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]n[/font]H[font=default-tiny-bold]2n+2[/font]"} or nil
data_item[oil_residual_angels].subgroup = is_multi_phase_oil
data_item[oil_residual_angels].order = c

data_fluid[residual_angels].localised_description = show_formula and {chemical_formula, "CH[font=default-tiny-bold]4[/font] + CO[font=default-tiny-bold]2[/font]"} or nil
data_fluid[residual_angels].subgroup = is_multi_phase_oil
data_fluid[residual_angels].order = d

local steam_cracking_oil_residual = "angels-steam-cracking-oil-residual"
data_recipe[steam_cracking_oil_residual].subgroup = is_multi_phase_oil
data_recipe[steam_cracking_oil_residual].icons = TWO_D_I(oil_residual_angels, steam, residual_angels, hydrogen_angels)
data_recipe[steam_cracking_oil_residual].order = d_a
-- 2C₂H₆ + 4H₂O --> 2(CH₄ + CO₂) + 6H₂ (n = 2)
data_recipe[steam_cracking_oil_residual].ingredients[1].amount = 4
data_recipe[steam_cracking_oil_residual].ingredients[2].amount = 120
data_recipe[steam_cracking_oil_residual].results =
{
    {type = fluid, name = residual_angels, amount = 60},
    {type = fluid, name = hydrogen_angels, amount = 120} -- 180
}

data_fluid[mineral_oil_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]30[/font]H[font=default-tiny-bold]62[/font]"} or nil
data_fluid[mineral_oil_angels].subgroup = is_multi_phase_oil
data_fluid[mineral_oil_angels].order = e

local mineral_oil_catalyst = "angels-liquid-mineral-oil-catalyst"
data_recipe[mineral_oil_catalyst].category = chemistry
data_recipe[mineral_oil_catalyst].subgroup = is_multi_phase_oil
data_recipe[mineral_oil_catalyst].icons = THREE_D_I(naphtha_angels, nil, residual_angels, mineral_oil_angels, oil_residual_angels, steam)
data_recipe[mineral_oil_catalyst].order = e_a
data_recipe[mineral_oil_catalyst].energy_required = 4 -- 4C₈H₁₈ + 4(CH₄ + CO₂) -cat-> C₃₀H₆₂ + 4H₂O + 4CH₄(oil_residual) or C₈H₁₈ + 11(CH₄ + CO₂) + 22H₂ -cat-> C₃₀H₆₂ + 22H₂O
data_recipe[mineral_oil_catalyst].ingredients =
{
    {type = fluid, name = naphtha_angels, amount = 60},
    {type = fluid, name = residual_angels, amount = 60},
    {type = item, name = catalyst_blue, amount = 1}
}
data_recipe[mineral_oil_catalyst].results =
{
    {type = fluid, name = mineral_oil_angels, amount = 15},
    {type = fluid, name = steam, amount = 60},
    {type = item, name = oil_residual_angels, amount = 4},
    {type = item, name = catalyst_carrier, amount = 1}
}

data_fluid[lubricant].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]40[/font]H[font=default-tiny-bold]82[/font]"} or nil
data_fluid[lubricant].subgroup = is_multi_phase_oil
data_fluid[lubricant].order = f

local mineral_oil_lubricant = "angels-mineral-oil-lubricant"
data_recipe[mineral_oil_lubricant].category = chemistry
data_recipe[mineral_oil_lubricant].subgroup = is_multi_phase_oil
data_recipe[mineral_oil_lubricant].icons = TWO_D_I(mineral_oil_angels, residual_angels, lubricant, steam)
data_recipe[mineral_oil_lubricant].order = f_a
-- C₃₀H₆₂ + 8(CH₄ + CO₂) -cat-> C₄₀H₈₂ + 2H₂O + 4CH₄(oil_residual)
data_recipe[mineral_oil_lubricant].ingredients =
{
    {type = fluid, name = mineral_oil_angels, amount = 30},
    {type = fluid, name = residual_angels, amount = 480},
    {type = item, name = catalyst_green, amount = 1},
}
data_recipe[mineral_oil_lubricant].results =
{
    {type = fluid, name = lubricant, amount = 30},
    {type = fluid, name = steam, amount = 60},
    {type = item, name = oil_residual_angels, amount = 4},
    {type = item, name = catalyst_carrier, amount = 1}
}

data_fluid[fuel_oil_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]20[/font]H[font=default-tiny-bold]42[/font]"} or nil
data_fluid[fuel_oil_angels].subgroup = is_multi_phase_oil
data_fluid[fuel_oil_angels].order = g

data_fluid[liquid_fuel_bob].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]16[/font]H[font=default-tiny-bold]34[/font]"} or nil
data_fluid[liquid_fuel_bob].subgroup = is_multi_phase_oil
data_fluid[liquid_fuel_bob].order = h
data_recipe[liquid_fuel_bob].category = angels_advanced_chemistry
data_recipe[liquid_fuel_bob].subgroup = is_multi_phase_oil
data_recipe[liquid_fuel_bob].icons = THREE_D_I(fuel_oil_angels, residual_angels, hydrogen_angels, liquid_fuel_bob, nil, steam)
data_recipe[liquid_fuel_bob].order = h
-- 2C₂₀H₄₂ + 4(CH₄ + CO₂) + 2H₂ -cat-> 3C₁₆H₃₄ + 8H₂O
data_recipe[liquid_fuel_bob].energy_required = 4
data_recipe[liquid_fuel_bob].ingredients =
{
    {type = fluid, name = fuel_oil_angels, amount = 60},
    {type = fluid, name = residual_angels, amount = 120},
    {type = fluid, name = hydrogen_angels, amount = 60},
    {type = item, name = catalyst_green, amount = 1},
}
data_recipe[liquid_fuel_bob].results =
{
    {type = fluid, name = liquid_fuel_bob, amount = 120}, -- 180
    {type = fluid, name = steam, amount = 240},
    {type = item, name = catalyst_carrier, amount = 1}
}
data_recipe[liquid_fuel_bob].main_product = liquid_fuel_bob

data_fluid[naphtha_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]8[/font]H[font=default-tiny-bold]18[/font]"} or nil
data_fluid[naphtha_angels].subgroup = is_multi_phase_oil
data_fluid[naphtha_angels].order = i

-- SYNTHESIS GAS
data_fluid[synthesis_angels].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font] + CO"} or nil
data_fluid[synthesis_angels].subgroup = is_synthesis_gas
data_fluid[synthesis_angels].order = a

local steam_cracking_mineral_oil = "angels-steam-cracking-mineral-oil"
data_recipe[steam_cracking_mineral_oil].subgroup = is_synthesis_gas
data_recipe[steam_cracking_mineral_oil].icons = TWO_D_I(mineral_oil_angels, steam, synthesis_angels, residual_angels)
data_recipe[steam_cracking_mineral_oil].order = a_a
-- 2C₃₀H₆₂ + 32H₂O --> 16(H₂ + CO) + 8(CH₄ + CO₂) or 2C₃₀H₆₂ + 60H₂O --> 30(H₂ + CO) + 15(CH₄ + CO₂) + 62H₂
data_recipe[steam_cracking_mineral_oil].ingredients[1].amount = 60
data_recipe[steam_cracking_mineral_oil].ingredients[2].amount = 960
data_recipe[steam_cracking_mineral_oil].results[1].amount = 480
data_recipe[steam_cracking_mineral_oil].results[2].amount = 240

local steam_cracking_fuel_oil = "angels-steam-cracking-fuel-oil"
data_recipe[steam_cracking_fuel_oil].subgroup = is_synthesis_gas
data_recipe[steam_cracking_fuel_oil].icons = TWO_D_I(fuel_oil_angels, steam, synthesis_angels, residual_angels)
data_recipe[steam_cracking_fuel_oil].order = a_b
-- 2C₂₀H₄₂ + 32H₂O --> 16(H₂ + CO) + 8(CH₄ + CO₂) or C₂₀H₄₂ + 20H₂O --> 10(H₂ + CO) + 5(CH₄ + CO₂) + 21H₂
data_recipe[steam_cracking_fuel_oil].ingredients[1].amount = 60
data_recipe[steam_cracking_fuel_oil].ingredients[2].amount = 960
data_recipe[steam_cracking_fuel_oil].results[1].amount = 480
data_recipe[steam_cracking_fuel_oil].results[2].amount = 240

local steam_cracking_naphtha = "angels-steam-cracking-naphtha"
data_recipe[steam_cracking_naphtha].subgroup = is_synthesis_gas
data_recipe[steam_cracking_naphtha].icons = TWO_D_I(naphtha_angels, steam, synthesis_angels, residual_angels)
data_recipe[steam_cracking_naphtha].order = a_c
-- 2C₈H₁₈ + 16H₂O --> 8(H₂ + CO) + 4(CH₄ + CO₂) or C₈H₁₈ + 8H₂O --> 4(H₂ + CO) + 2(CH₄ + CO₂) + 9H₂
data_recipe[steam_cracking_naphtha].ingredients[1].amount = 60
data_recipe[steam_cracking_naphtha].ingredients[2].amount = 480
data_recipe[steam_cracking_naphtha].results[1].amount = 240
data_recipe[steam_cracking_naphtha].results[2].amount = 120

local steam_cracking_gas_residual = "angels-steam-cracking-gas-residual"
data_recipe[steam_cracking_gas_residual].subgroup = is_synthesis_gas
data_recipe[steam_cracking_gas_residual].icons = TWO_I(residual_angels, synthesis_angels)
data_recipe[steam_cracking_gas_residual].order = a_d
-- (CH₄ + CO₂) -H₂O-> 2(H₂ + CO)
data_recipe[steam_cracking_gas_residual].ingredients[1].amount = 60
data_recipe[steam_cracking_gas_residual].ingredients[2].amount = 60
data_recipe[steam_cracking_gas_residual].results =
{
    {type = fluid, name = synthesis_angels, amount = 120},
    {type = fluid, name = steam, amount = 30}
}

local synthesis_gas_reforming = "angels-gas-synthesis-reforming"
data_recipe[synthesis_gas_reforming].subgroup = is_synthesis_gas
data_recipe[synthesis_gas_reforming].icons = THREE_I(carbon_monoxide_angels, hydrogen_angels, synthesis_angels)
data_recipe[synthesis_gas_reforming].order = a_e
-- CO + H₂ --> (H₂ + CO)
data_recipe[synthesis_gas_reforming].ingredients[1].amount = 60
data_recipe[synthesis_gas_reforming].ingredients[2].amount = 60
data_recipe[synthesis_gas_reforming].results[1].amount = 60

local synthesis_gas_separation = "angels-gas-synthesis-separation"
data_recipe[synthesis_gas_separation].subgroup = is_synthesis_gas
data_recipe[synthesis_gas_separation].icons = THREE_R_I(synthesis_angels, carbon_monoxide_angels, hydrogen_angels)
data_recipe[synthesis_gas_separation].order = a_f
-- (H₂ + CO) --> CO + H₂
data_recipe[synthesis_gas_separation].ingredients[1].amount = 60
data_recipe[synthesis_gas_separation].results[1].amount = 60
data_recipe[synthesis_gas_separation].results[2].amount = 60

local synthesis_gas_methanation = "angels-gas-synthesis-methanation"
data_recipe[synthesis_gas_methanation].subgroup = is_synthesis_gas
data_recipe[synthesis_gas_methanation].icons = FOUR_R_I(synthesis_angels, methane_angels, ethane_angels, butane_angels)
data_recipe[synthesis_gas_methanation].order = a_g
-- 8(H₂ + CO) + 4H₂ -cat-> 2CH₄ + C₂H₆ + C₄H₁₀
data_recipe[synthesis_gas_methanation].ingredients[1].amount = 240
data_recipe[synthesis_gas_methanation].ingredients[2].amount = 120
data_recipe[synthesis_gas_methanation].results =
{
    {type = fluid, name = methane_angels, amount = 60},
    {type = fluid, name = ethane_angels, amount = 30},
    {type = fluid, name = butane_angels, amount = 30},
    {type = item, name = catalyst_carrier, amount = 1}
}

local synthesis_gas_methanol = "angels-gas-synthesis-methanol"
data_recipe[synthesis_gas_methanol].category = angels_advanced_chemistry
data_recipe[synthesis_gas_methanol].subgroup = is_synthesis_gas
data_recipe[synthesis_gas_methanol].icons = THREE_D_I(synthesis_angels, carbon_dioxide_angels, hydrogen_angels, methanol_angels, nil, steam)
data_recipe[synthesis_gas_methanol].order = a_g
-- (H₂ + CO) + CO₂ + 4H₂ -cat-> 2CH₄O + H₂O
data_recipe[synthesis_gas_methanol].ingredients =
{
    {type = fluid, name = synthesis_angels, amount = 30},
    {type = fluid, name = carbon_dioxide_angels, amount = 30},
    {type = fluid, name = hydrogen_angels, amount = 120},
    {type = item, name = catalyst_green, amount = 1}
}
data_recipe[synthesis_gas_methanol].results =
{
    {type = fluid, name = methanol_angels, amount = 60},
    {type = fluid, name = steam, amount = 30},
    {type = item, name = catalyst_carrier, amount = 1}
}

local naphtha_catalyst = "angels-liquid-naphtha-catalyst"
data_recipe[naphtha_catalyst].category = chemistry
data_recipe[naphtha_catalyst].subgroup = is_synthesis_gas
data_recipe[naphtha_catalyst].icons = TWO_D_I(synthesis_angels, residual_angels, naphtha_angels, steam)
data_recipe[naphtha_catalyst].order = a_h
-- 8(H₂ + CO) + 4(CH₄ + CO₂) --> 2C₈H₁₈ + 16H₂O or 4(H₂ + CO) + 4CO₂ + 17H₂ -cat-> C₈H₁₈ + 12H₂O
data_recipe[naphtha_catalyst].ingredients =
{
    {type = fluid, name = synthesis_angels, amount = 120},
    {type = fluid, name = residual_angels, amount = 60},
    {type = item, name = catalyst_red, amount = 1}
}
data_recipe[naphtha_catalyst].results =
{
    {type = fluid, name = naphtha_angels, amount = 30},
    {type = fluid, name = steam, amount = 240},
    {type = item, name = catalyst_carrier, amount = 1}
}

-- FUEL
data_item_subgroup["angels-petrochem-fuel"].order = m

data_item[solid_fuel].order = a
data_item[solid_fuel].stack_size = 200
data_item[solid_fuel].fuel_category = advanced_fuel
data_item[solid_fuel].fuel_value = 14400 .. kJ
data_item[solid_fuel].fuel_acceleration_multiplier = nil
data_item[solid_fuel].fuel_top_speed_multiplier = nil
data_item[solid_fuel].fuel_emissions_multiplier = 1

local solid_fuel_methane = "angels-solid-fuel-methane"
data_recipe[solid_fuel_methane].icons = THREE_I(coke_angels, methane_angels, solid_fuel)
data_recipe[solid_fuel_methane].order = a_a
data_recipe[solid_fuel_methane].ingredients[2].amount = 30

local solid_fuel_naphtha = "angels-solid-fuel-naphtha"
data_recipe[solid_fuel_naphtha].icons = THREE_I(coke_angels, naphtha_angels, solid_fuel)
data_recipe[solid_fuel_naphtha].order = a_b
data_recipe[solid_fuel_naphtha].ingredients[2].amount = 30

local solid_fuel_fuel_oil = "angels-solid-fuel-fuel-oil"
data_recipe[solid_fuel_fuel_oil].icons = THREE_I(coke_angels, fuel_oil_angels, solid_fuel)
data_recipe[solid_fuel_fuel_oil].order = a_c
data_recipe[solid_fuel_fuel_oil].ingredients[2].amount = 30

local solid_fuel_synthesis = "angels-solid-fuel-synthesis"
data_recipe[solid_fuel_synthesis].icons = THREE_I(coke_angels, synthesis_angels, solid_fuel)
data_recipe[solid_fuel_synthesis].order = a_d
data_recipe[solid_fuel_synthesis].ingredients[2].amount = 30

data_recipe[solid_fuel_hydrazine].icons = TWO_I(hydrazine_angels, solid_fuel)
data_recipe[solid_fuel_hydrazine].order = a_e
data_recipe[solid_fuel_hydrazine].ingredients[1].amount = 60

data_item[enriched_fuel_bob].order = b
data_item[enriched_fuel_bob].stack_size = 50
data_item[enriched_fuel_bob].fuel_category = advanced_fuel
data_item[enriched_fuel_bob].fuel_value = 57600 .. kJ
data_item[enriched_fuel_bob].fuel_acceleration_multiplier = nil
data_item[enriched_fuel_bob].fuel_top_speed_multiplier = nil
data_item[enriched_fuel_bob].fuel_emissions_multiplier = 0.75
data_recipe[enriched_fuel_bob].icons = TWO_I(liquid_fuel_bob, enriched_fuel_bob)
data_recipe[enriched_fuel_bob].order = b
data_recipe[enriched_fuel_bob].energy_required = 4
data_recipe[enriched_fuel_bob].ingredients[1].amount = 30

data_item[oxidizer_capsule_angels].order = c
data_item[oxidizer_capsule_angels].stack_size = 200
data_recipe[oxidizer_capsule_angels].icons = THREE_I(nitric_acid_angels, dinitrogen_tetroxide_angels, oxidizer_capsule_angels)
data_recipe[oxidizer_capsule_angels].order = c
data_recipe[oxidizer_capsule_angels].energy_required = 4
data_recipe[oxidizer_capsule_angels].ingredients =
{
    {type = fluid, name = nitric_acid_angels, amount = 30},
    {type = fluid, name = dinitrogen_tetroxide_angels, amount = 30}
}

data_item[fuel_capsule_angels].order = d
data_item[fuel_capsule_angels].stack_size = 200
data_recipe[fuel_capsule_angels].icons = THREE_I(dimethylhydrazine_angels, hydrazine_angels, fuel_capsule_angels)
data_recipe[fuel_capsule_angels].order = d
data_recipe[fuel_capsule_angels].energy_required = 4

data_item[rocket_fuel].order = e
data_item[rocket_fuel].stack_size = 50
data_item[rocket_fuel].fuel_category = transport_fuel
data_item[rocket_fuel].fuel_value = 115200 .. kJ
data_item[rocket_fuel].fuel_acceleration_multiplier = 1.75
data_item[rocket_fuel].fuel_top_speed_multiplier = 1.25
data_item[rocket_fuel].fuel_emissions_multiplier = 1.25
data_recipe[rocket_fuel].icons = THREE_I(oxidizer_capsule_angels, fuel_capsule_angels, rocket_fuel)
data_recipe[rocket_fuel].order = e
data_recipe[rocket_fuel].energy_required = 16
data_recipe[rocket_fuel].ingredients[1].amount = 4
data_recipe[rocket_fuel].ingredients[2].amount = 4
data_recipe[rocket_fuel].results[1].amount = 4

data_item[nuclear_fuel].order = f
data_item[nuclear_fuel].stack_size = 50
data_item[nuclear_fuel].fuel_category = transport_fuel
data_item[nuclear_fuel].fuel_value = 921600 .. kJ
data_item[nuclear_fuel].fuel_acceleration_multiplier = 2.5
data_item[nuclear_fuel].fuel_top_speed_multiplier = 1.25
data_item[nuclear_fuel].fuel_emissions_multiplier = nil
data_recipe[nuclear_fuel].icons = THREE_I(rocket_fuel, uranium_235, nuclear_fuel)
data_recipe[nuclear_fuel].order = f
data_recipe[nuclear_fuel].energy_required = 128
data_recipe[nuclear_fuel].ingredients[1].name = rocket_fuel
data_recipe[nuclear_fuel].ingredients[2].name = uranium_235

data_item[plutonium_fuel_angels].order = g
data_item[plutonium_fuel_angels].stack_size = 50
data_item[plutonium_fuel_angels].fuel_category = transport_fuel
data_item[plutonium_fuel_angels].fuel_value = 1843200 .. kJ
data_item[plutonium_fuel_angels].fuel_top_speed_multiplier = 1.25
if mods [shattered_mods] then
    data_recipe[plutonium_fuel_angels].icons = THREE_I(rocket_fuel, plutonium_239_shattered, plutonium_fuel_angels)
else
    data_recipe[plutonium_fuel_angels].icons = THREE_I(rocket_fuel, plutonium_239_bob, plutonium_fuel_angels)
end
data_recipe[plutonium_fuel_angels].order = g
data_recipe[plutonium_fuel_angels].energy_required = 128
data_recipe[plutonium_fuel_angels].ingredients[1].name = rocket_fuel
data_recipe[plutonium_fuel_angels].ingredients[2].name = plutonium_239_bob

data_item[fusion_fuel_angels].order = h
data_item[fusion_fuel_angels].stack_size = 50
data_item[fusion_fuel_angels].fuel_category = transport_fuel
data_item[fusion_fuel_angels].fuel_value = 3686400 .. kJ
data_item[fusion_fuel_angels].fuel_top_speed_multiplier = 1.25
data_recipe[fusion_fuel_angels].icons = THREE_I(rocket_fuel, muon_fusion_catalyst, fusion_fuel_angels)
data_recipe[fusion_fuel_angels].order = g
data_recipe[fusion_fuel_angels].energy_required = 128
data_recipe[fusion_fuel_angels].ingredients =
{
    {type = item, name = rocket_fuel, amount = 4},
    {type = item, name = muon_fusion_catalyst, amount = 1}
}
data_recipe[fusion_fuel_angels].results[1].amount = 4

-- METHANE
data_fluid[methane_angels].subgroup = is_methane
data_fluid[methane_angels].order = a

data_fluid[methanol_angels].localised_name = {"fluid-name.methanol-liquid"}
data_fluid[methanol_angels].localised_description = show_formula and {chemical_formula, "CH[font=default-tiny-bold]3[/font]OH"} or nil
data_fluid[methanol_angels].subgroup = is_methane
data_fluid[methanol_angels].order = b
data_recipe[methanol_angels].subgroup = is_methane
data_recipe[methanol_angels].icons = THREE_I(carbon_dioxide_angels, hydrogen_angels, methanol_angels)
data_recipe[methanol_angels].order = b
-- CO₂ + 2H₂ -cat-> CH₄O
data_recipe[methanol_angels].ingredients[1].amount = 60
data_recipe[methanol_angels].ingredients[2].amount = 120
data_recipe[methanol_angels].results =
{
    {type = fluid, name = methanol_angels, amount = 60},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}

data_recipe[steam_cracking_methane].subgroup = is_methane
data_recipe[steam_cracking_methane].icons = TWO_I(methane_angels, methanol_angels)
data_recipe[steam_cracking_methane].order = b_a
data_recipe[steam_cracking_methane].ingredients[2].amount = 120
-- CH₄ + H₂O -H₂O-> CH₄O + H₂
data_recipe[steam_cracking_methane].results =
{
    {type = fluid, name = methanol_angels, amount = 60},
    {type = fluid, name = hydrogen_angels, amount = 60}
}

data_fluid[formaldehyde_angels].subgroup = is_methane
data_fluid[formaldehyde_angels].order = c
data_recipe[formaldehyde_angels].subgroup = is_methane
data_recipe[formaldehyde_angels].icons = TWO_I(methanol_angels, formaldehyde_angels)
data_recipe[formaldehyde_angels].order = c
-- 2CH₄O + O₂ -cat-> 2CH₂O + 2H₂O
data_recipe[formaldehyde_angels].ingredients =
{
    {type = fluid, name = methanol_angels, amount = 60},
    {type = fluid, name = oxygen_angels, amount = 30},
    {type = item, name = catalyst_green, amount = 1}
}
data_recipe[formaldehyde_angels].results =
{
    {type = fluid, name = formaldehyde_angels, amount = 60},
    {type = fluid, name = steam, amount = 60},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}

-- ETHANE
data_fluid[ethane_angels].subgroup = is_ethane
data_fluid[ethane_angels].order = a

data_fluid[ethylene_angels].subgroup = is_ethane
data_fluid[ethylene_angels].order = b
data_recipe[ethylene_angels].subgroup = is_ethane
data_recipe[ethylene_angels].icons = TWO_I(ethane_angels, ethylene_angels)
data_recipe[ethylene_angels].order = b
-- C₂H₆ -H₂O-> C₂H₄ + H₂
data_recipe[ethylene_angels].results[1].amount = 60
data_recipe[ethylene_angels].results[2].name = hydrogen_angels
data_recipe[ethylene_angels].results[2].amount = 15

data_fluid[propene_angels].subgroup = is_ethane
data_fluid[propene_angels].order = c
data_recipe[propene_angels].category = chemistry
data_recipe[propene_angels].subgroup = is_ethane
data_recipe[propene_angels].icons = THREE_I(ethane_angels, butene_gas, propene_angels)
data_recipe[propene_angels].order = c
-- C₂H₆ + C₄H₈ -cat-> 2C₃H₆ + H₂
data_recipe[propene_angels].ingredients =
{
    {type = fluid, name = ethane_angels, amount = 60},
    {type = fluid, name = butene_gas, amount = 60},
    {type = item, name = catalyst_green, amount = 1}
}
data_recipe[propene_angels].results =
{
    {type = fluid, name = propene_angels, amount = 120},
    {type = fluid, name = hydrogen_angels, amount = 60},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}

data_recipe[catalyst_steam_cracking_naphtha].subgroup = is_ethane
data_recipe[catalyst_steam_cracking_naphtha].icons = THREE_R_I(naphtha_angels, propene_angels, ethane_angels)
data_recipe[catalyst_steam_cracking_naphtha].order = c_a
-- C₈H₁₈ -H₂O-> 2C₃H₆ + C₂H₆
data_recipe[catalyst_steam_cracking_naphtha].ingredients[1].amount = 60
data_recipe[catalyst_steam_cracking_naphtha].ingredients[2].amount = 60
data_recipe[catalyst_steam_cracking_naphtha].results =
{
    {type = fluid, name = propene_angels, amount = 120},
    {type = fluid, name = ethane_angels, amount = 60},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}

-- BUTANE
data_fluid[butane_angels].subgroup = is_butane
data_fluid[butane_angels].order = a

data_fluid[benzene_angels].localised_name = {"fluid-name.benzene-liquid"}
data_fluid[benzene_angels].subgroup = is_butane
data_fluid[benzene_angels].order = c
data_recipe[benzene_angels].subgroup = is_butane
data_recipe[benzene_angels].icons = THREE_R_I(methane_angels, benzene_angels, ethane_angels)
data_recipe[benzene_angels].order = c
-- 8CH₄ -cat-> C₆H₆ + C₂H₆
data_recipe[benzene_angels].ingredients[1].amount = 120
data_recipe[benzene_angels].results =
{
    {type = fluid, name = benzene_angels, amount = 15},
    {type = fluid, name = ethane_angels, amount = 15},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}
data_recipe[benzene_angels].main_product = benzene_angels

data_recipe[steam_cracking_butane].subgroup = is_butane
data_recipe[steam_cracking_butane].icons = TWO_I(butane_angels, benzene_angels)
data_recipe[steam_cracking_butane].order = c_a
-- 4C₄H₁₀ -H₂O-> 2C₆H₆ + 4H₂
data_recipe[steam_cracking_butane].ingredients[1].amount = 120
data_recipe[steam_cracking_butane].ingredients[2].amount = 60
data_recipe[steam_cracking_butane].results[1].amount = 60
data_recipe[steam_cracking_butane].results[2].name = hydrogen_angels
data_recipe[steam_cracking_butane].results[2].amount = 120

data_fluid[butadiene_angels].subgroup = is_butane
data_fluid[butadiene_angels].order = d
data_recipe[butadiene_angels].subgroup = is_butane
data_recipe[butadiene_angels].icons = TWO_I(naphtha_angels, butadiene_angels)
data_recipe[butadiene_angels].order = d
-- C₈H₁₈ -H₂O-> 2C₄H₆ + 3H₂
data_recipe[butadiene_angels].results[1].amount = 60
data_recipe[butadiene_angels].results[2].name = hydrogen_angels
data_recipe[butadiene_angels].results[2].amount = 30

data_fluid[ethylbenzene_angels].subgroup = is_butane
data_fluid[ethylbenzene_angels].order = e
data_recipe[ethylbenzene_angels].category = chemistry
data_recipe[ethylbenzene_angels].subgroup = is_butane
data_recipe[ethylbenzene_angels].icons = THREE_I(benzene_angels, ethylene_angels, ethylbenzene_angels)
data_recipe[ethylbenzene_angels].order = e
-- C₂H₄ + C₆H₆ -cat-> C₈H₁₀
data_recipe[ethylbenzene_angels].ingredients =
{
    {type = fluid, name = benzene_angels, amount = 120},
    {type = fluid, name = ethylene_angels, amount = 120},
    {type = item, name = catalyst_green, amount = 1}
}
data_recipe[ethylbenzene_angels].results =
{
    {type = fluid, name = ethylbenzene_angels, amount = 120},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}
data_recipe[ethylbenzene_angels].main_product = ethylbenzene_angels

data_fluid[styrene_angels].subgroup = is_butane
data_fluid[styrene_angels].order = f
data_recipe[styrene_angels].category = angels_steam_cracking
data_recipe[styrene_angels].subgroup = is_butane
data_recipe[styrene_angels].icons = TWO_I(ethylbenzene_angels, styrene_angels)
data_recipe[styrene_angels].order = f
-- C₈H₁₀ -H₂O-> C₈H₈ + H₂
data_recipe[styrene_angels].ingredients =
{
    {type = fluid, name = ethylbenzene_angels, amount = 120},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[styrene_angels].results =
{
    {type = fluid, name = styrene_angels, amount = 120},
    {type = fluid, name = hydrogen_angels, amount = 120}
}

data_fluid[acetone_angels].localised_name = {"fluid-name.acetone-liquid"}
data_fluid[acetone_angels].subgroup = is_butane
data_fluid[acetone_angels].order = h

data_recipe[cumene_process].subgroup = is_butane
data_recipe[cumene_process].icons = FIVE_I(benzene_angels, oxygen_angels, propene_angels, phenol, acetone_angels)
data_recipe[cumene_process].order = h_a
-- C₆H₆ + C₃H₆ + O₂ -cat-> C₆H₆O + C₃H₆O
data_recipe[cumene_process].ingredients[1].amount = 60
data_recipe[cumene_process].ingredients[2].amount = 60
data_recipe[cumene_process].ingredients[3].amount = 60
data_recipe[cumene_process].results[1].type = item
data_recipe[cumene_process].results[1].name = phenol
data_recipe[cumene_process].results[1].amount = 4
data_recipe[cumene_process].results[2].amount = 60
data_recipe[cumene_process].main_product = phenol

-- CARBON FLUIDS 2
data_item_subgroup[is_carbon_fluids_2].order = n

-- PLASTIC
data_fluid[liquid_plastic_angels].subgroup = is_plastic
data_fluid[liquid_plastic_angels].order = a
data_recipe[liquid_plastic_angels].subgroup = is_plastic
data_recipe[liquid_plastic_angels].icons = TWO_I(propene_angels, liquid_plastic_angels)
data_recipe[liquid_plastic_angels].order = a
data_recipe[liquid_plastic_angels].ingredients[1].amount = 60
data_recipe[liquid_plastic_angels].results[1].amount = 15

local liquid_plastic_2 = "angels-liquid-plastic-2"
data_recipe[liquid_plastic_2].subgroup = is_plastic
data_recipe[liquid_plastic_2].icons = THREE_I(naphtha_angels, polyethylene, liquid_plastic_angels)
data_recipe[liquid_plastic_2].order = a_a
data_recipe[liquid_plastic_2].ingredients[1].amount = 30
data_recipe[liquid_plastic_2].ingredients[2].type = item
data_recipe[liquid_plastic_2].ingredients[2].name = polyethylene
data_recipe[liquid_plastic_2].ingredients[2].amount = 2
data_recipe[liquid_plastic_2].results[1].amount = 30

local liquid_plastic_3 = "angels-liquid-plastic-3"
data_recipe[liquid_plastic_3].subgroup = is_plastic
data_recipe[liquid_plastic_3].icons = THREE_I(formaldehyde_angels, phenol, liquid_plastic_angels)
data_recipe[liquid_plastic_3].order = a_b
data_recipe[liquid_plastic_3].ingredients[1].amount = 30
data_recipe[liquid_plastic_3].ingredients[2].type = item
data_recipe[liquid_plastic_3].ingredients[2].name = phenol
data_recipe[liquid_plastic_3].ingredients[2].amount = 2
data_recipe[liquid_plastic_3].results[1].amount = 60

data_item[plastic].subgroup = is_plastic
data_item[plastic].order = b
data_item[plastic].stack_size = 200

local plastic_angels = "angels-solid-plastic"
data_recipe[plastic_angels].category = angels_liquifying
data_recipe[plastic_angels].subgroup = is_plastic
data_recipe[plastic_angels].icons = TWO_I(liquid_plastic_angels, plastic)
data_recipe[plastic_angels].order = b_b
data_recipe[plastic_angels].ingredients[1].amount = 60

-- RESIN
data_fluid[liquid_resin_angels].subgroup = is_resin
data_fluid[liquid_resin_angels].order = a
data_recipe[liquid_resin_angels].subgroup = is_resin
data_recipe[liquid_resin_angels].icons = THREE_I(urea_solution_angels, formaldehyde_angels, liquid_resin_angels)
data_recipe[liquid_resin_angels].order = a
data_recipe[liquid_resin_angels].ingredients[1].amount = 30
data_recipe[liquid_resin_angels].ingredients[2].amount = 30
data_recipe[liquid_resin_angels].results[1].amount = 15

local liquid_resin_2 = "angels-liquid-resin-2"
data_recipe[liquid_resin_2].subgroup = is_resin
data_recipe[liquid_resin_2].icons = THREE_I(melamine_solution_angels, formaldehyde_angels, liquid_resin_angels)
data_recipe[liquid_resin_2].order = a_a
data_recipe[liquid_resin_2].ingredients[1].amount = 30
data_recipe[liquid_resin_2].ingredients[2].amount = 30
data_recipe[liquid_resin_2].results[1].amount = 30

local liquid_resin_3 = "angels-liquid-resin-3"
data_recipe[liquid_resin_3].subgroup = is_resin
data_recipe[liquid_resin_3].icons = THREE_I(bisphenol_a, epichlorohydrin_angels, liquid_resin_angels)
data_recipe[liquid_resin_3].order = a_b
data_recipe[liquid_resin_3].ingredients[1].type = item
data_recipe[liquid_resin_3].ingredients[1].name = bisphenol_a
data_recipe[liquid_resin_3].ingredients[1].amount = 2
data_recipe[liquid_resin_3].ingredients[2].amount = 30
data_recipe[liquid_resin_3].results[1].amount = 60

data_item[resin_bob].subgroup = is_resin
data_item[resin_bob].order = b
data_item[resin_bob].stack_size = 200

local resin_angels = "angels-solid-resin"
data_recipe[resin_angels].category = angels_liquifying
data_recipe[resin_angels].subgroup = is_resin
data_recipe[resin_angels].icons = TWO_I(liquid_resin_angels, resin_bob)
data_recipe[resin_angels].order = b_b
data_recipe[resin_angels].ingredients[1].amount = 60

-- RUBBER
data_fluid[liquid_rubber_angels].subgroup = is_rubber
data_fluid[liquid_rubber_angels].order = a
data_recipe[liquid_rubber_angels].subgroup = is_rubber
data_recipe[liquid_rubber_angels].icons = THREE_I(styrene_angels, butadiene_angels, liquid_rubber_angels)
data_recipe[liquid_rubber_angels].order = a
data_recipe[liquid_rubber_angels].ingredients[1].amount = 30
data_recipe[liquid_rubber_angels].ingredients[2].amount = 30
data_recipe[liquid_rubber_angels].results[1].amount = 15

data_item[rubber_bob].subgroup = is_rubber
data_item[rubber_bob].order = b
data_item[rubber_bob].stack_size = 200

local rubber_angels = "angels-solid-rubber"
data_recipe[rubber_angels].category = angels_liquifying
data_recipe[rubber_angels].subgroup = is_rubber
data_recipe[rubber_angels].icons = TWO_I(liquid_rubber_angels, rubber_bob)
data_recipe[rubber_angels].order = b_b
data_recipe[rubber_angels].ingredients[1].amount = 60

data_item[insulated_cable].subgroup = is_rubber
data_item[insulated_cable].order = c
data_recipe[insulated_cable].subgroup = is_rubber
data_recipe[insulated_cable].icons = THREE_I(copper_cable, rubber_bob, insulated_cable)
data_recipe[insulated_cable].order = c
data_recipe[insulated_cable].ingredients[1].amount = 4
data_recipe[insulated_cable].ingredients[2].name = copper_cable
data_recipe[insulated_cable].ingredients[2].amount = 1
data_recipe[insulated_cable].results[1].amount = 1

-- EXPLOSIVES
data_item[explosives].subgroup = is_explosives
data_item[explosives].order = a
data_item[explosives].stack_size = 200
data_recipe[explosives].subgroup = is_explosives
data_recipe[explosives].icons = THREE_D_I(coal, sulfur, water_purified_angels, explosives, nil, nil, number_1)
data_recipe[explosives].order = a
data_recipe[explosives].ingredients =
{
    {type = item, name = coal, amount = 1},
    {type = item, name = sulfur, amount = 1},
    {type = fluid, name = water_purified_angels, amount = 15}
}
data_recipe[explosives].results[1].amount = 1

data_recipe[explosives_nitroglycerin].subgroup = is_explosives
data_recipe[explosives_nitroglycerin].icons = FOUR_D_I(coal, glycerol_angels, sulfuric_acid_angels, nitric_acid_angels, explosives, nil, nil, nil, number_2)
data_recipe[explosives_nitroglycerin].order = a_a
data_recipe[explosives_nitroglycerin].ingredients =
{
    {type = item, name = coal, amount = 2},
    {type = fluid, name = glycerol_angels, amount = 60},
    {type = fluid, name = sulfuric_acid_angels, amount = 30},
    {type = fluid, name = nitric_acid_angels, amount = 30}
}
data_recipe[explosives_nitroglycerin].results[1].amount = 2

local explosives_trinitrotoluene = "angels-solid-trinitrotoluene"
data_recipe[explosives_trinitrotoluene].subgroup = is_explosives
data_recipe[explosives_trinitrotoluene].icons = THREE_D_I(toluene_angels, sulfuric_acid_angels, nitric_acid_angels, explosives, nil, nil, number_3)
data_recipe[explosives_trinitrotoluene].order = a_b
data_recipe[explosives_trinitrotoluene].ingredients =
{
    {type = fluid, name = toluene_angels, amount = 60},
    {type = fluid, name = sulfuric_acid_angels, amount = 30},
    {type = fluid, name = nitric_acid_angels, amount = 30}
}
data_recipe[explosives_trinitrotoluene].results = {{type = item, name = explosives, amount = 4}}

data_fluid[glycerol_angels].subgroup = is_explosives
data_fluid[glycerol_angels].order = c
data_recipe[glycerol_angels].subgroup = is_explosives
data_recipe[glycerol_angels].icons = THREE_D_I(glycerol_dichlorohydrin, water_purified_angels, sodium_hydroxide_solution_angels, glycerol_angels, nil, sodium_chloride_solution)
data_recipe[glycerol_angels].order = c
-- C₃H₆Cl₂O + H₂O + 2NaOH --> C₃H₈O₃ + 2NaCl
data_recipe[glycerol_angels].ingredients =
{
    {type = fluid, name = glycerol_dichlorohydrin, amount = 30},
    {type = fluid, name = water_purified_angels, amount = 30},
    {type = fluid, name = sodium_hydroxide_solution_angels, amount = 60}
}
data_recipe[glycerol_angels].results =
{
    {type = fluid, name = glycerol_angels, amount = 30},
    {type = fluid, name = sodium_chloride_solution, amount = 60}
}
data_recipe[glycerol_angels].main_product = glycerol_angels

if mods [bobwarfare] then
    data_fluid[nitroglycerin_bob].localised_name = {"fluid-name.nitroglycerin-liquid"}
    data_fluid[nitroglycerin_bob].localised_description = show_formula and {chemical_formula, "С[font=default-tiny-bold]3[/font]H[font=default-tiny-bold]5[/font](ONO[font=default-tiny-bold]2[/font])[font=default-tiny-bold]3[/font]"} or nil
    data_recipe[nitroglycerin_bob].localised_name = {"fluid-name.nitroglycerin-liquid"}
    data_recipe[nitroglycerin_bob].icons = TWO_D_I(glycerol_angels, nitric_acid_angels, nitroglycerin_bob, water_purified_angels)
    data_recipe[nitroglycerin_bob].energy_required = 2 -- C₃H₈O₃ + HNO₃ -H₂SO₄-> C₃H₅N₃O₉ + H₂O
    data_recipe[nitroglycerin_bob].ingredients =
    {
        {type = fluid, name = glycerol_angels, amount = 30},
        {type = fluid, name = nitric_acid_angels, amount = 30},
        {type = fluid, name = sulfuric_acid_angels, amount = 30}
    }
    data_recipe[nitroglycerin_bob].results =
    {
        {type = fluid, name = nitroglycerin_bob, amount = 30},
        {type = fluid, name = water_purified_angels, amount = 30},
        {type = fluid, name = sulfuric_acid_angels, amount = 15}
    }
    data_recipe[nitroglycerin_bob].main_product = nitroglycerin_bob
end

data_fluid[toluene_angels].subgroup = is_explosives
data_fluid[toluene_angels].order = e
data_recipe[toluene_angels].subgroup = is_explosives
data_recipe[toluene_angels].icons = THREE_I(naphtha_angels, hydrogen_angels, toluene_angels)
data_recipe[toluene_angels].order = e
data_recipe[toluene_angels].ingredients[1].amount = 120
data_recipe[toluene_angels].ingredients[2].amount = 120
data_recipe[toluene_angels].results[1].amount = 120

local toluene_from_benzene = "angels-liquid-toluene-from-benzene"
data_recipe[toluene_from_benzene].subgroup = is_explosives
data_recipe[toluene_from_benzene].icons = TWO_D_I(benzene_angels, chloromethane_angels, toluene_angels, hydrogen_chloride_angels)
data_recipe[toluene_from_benzene].order = e_a
-- C₆H₆ + CH₃Cl -cat-> C₇H₈ + HCl
data_recipe[toluene_from_benzene].ingredients[1].amount = 120
data_recipe[toluene_from_benzene].ingredients[2].amount = 120
data_recipe[toluene_from_benzene].results[1].amount = 120
data_recipe[toluene_from_benzene].results[2].amount = 120

data_capsule[cliff_explosives].subgroup = is_explosives
data_capsule[cliff_explosives].order = f
data_recipe[cliff_explosives].subgroup = is_explosives
data_recipe[cliff_explosives].order = f
if settings.startup[setting_early_cliff_explosives].value then
    data_recipe[cliff_explosives].ingredients =
    {
        {type = item, name = grenade, amount = 4},
        {type = item, name = explosives, amount = 4},
        {type = item, name = barrel, amount = 4},
        {type = item, name = limestone_angels, amount = 4}
    }
else
    data_recipe[cliff_explosives].ingredients =
    {
        {type = item, name = grenade, amount = 4},
        {type = item, name = explosives, amount = 4},
        {type = item, name = barrel, amount = 4},
        {type = item, name = calcite, amount = 4}
    }
end

-- OTHERS
data_item[electrode].subgroup = is_buildings_electrolyser
data_item[electrode].order = e
data_recipe[electrode].subgroup = is_buildings_electrolyser
data_recipe[electrode].icons = THREE_I(steel_plate, carbon_angels, electrode)
data_recipe[electrode].order = e

data_item[electrode_used].subgroup = is_buildings_electrolyser
data_item[electrode_used].order = f
data_recipe[electrode_used].subgroup = is_buildings_electrolyser
data_recipe[electrode_used].icons = THREE_D_I(electrode_used, nil, water_purified_angels, electrode, water_mineralized_angels, water)
data_recipe[electrode_used].order = e_a
data_recipe[electrode_used].ingredients[2].amount = 60
data_recipe[electrode_used].results[2].amount = 30
data_recipe[electrode_used].results[3].amount = 30

data_item[catalyst_carrier].subgroup = is_buildings_chemical_plant
data_item[catalyst_carrier].order = e
data_recipe[catalyst_carrier].subgroup = is_buildings_chemical_plant
data_recipe[catalyst_carrier].icons = TWO_I(iron_plate, catalyst_carrier)
data_recipe[catalyst_carrier].order = e
data_recipe[catalyst_carrier].ingredients[1].amount = 4
data_recipe[catalyst_carrier].results[1].amount = 8

data_item[catalyst_red].subgroup = is_buildings_chemical_plant
data_item[catalyst_red].order = f
data_recipe[catalyst_red].subgroup = is_buildings_chemical_plant
data_recipe[catalyst_red].icons = AR_FOUR_I(catalyst_carrier, iron_ore, copper_ore, catalyst_red)
data_recipe[catalyst_red].order = f
data_recipe[catalyst_red].ingredients[1].amount = 8
data_recipe[catalyst_red].results[1].amount = 8

data_item[catalyst_green].subgroup = is_buildings_chemical_plant
data_item[catalyst_green].order = g
data_recipe[catalyst_green].subgroup = is_buildings_chemical_plant
data_recipe[catalyst_green].icons = AR_FOUR_I(catalyst_carrier, aluminium_ore_bob, silver_ore_bob, catalyst_green)
data_recipe[catalyst_green].order = g
data_recipe[catalyst_green].ingredients[1].amount = 8
data_recipe[catalyst_green].results[1].amount = 8

data_item[catalyst_blue].subgroup = is_buildings_chemical_plant
data_item[catalyst_blue].order = h
data_recipe[catalyst_blue].subgroup = is_buildings_chemical_plant
data_recipe[catalyst_blue].icons = AR_FOUR_I(catalyst_carrier, titanium_ore_bob, gold_ore_bob, catalyst_blue)
data_recipe[catalyst_blue].order = h
data_recipe[catalyst_blue].ingredients[1].amount = 8
data_recipe[catalyst_blue].results[1].amount = 8

data_item[catalyst_yellow].subgroup = is_buildings_chemical_plant
data_item[catalyst_yellow].order = i
data_recipe[catalyst_yellow].subgroup = is_buildings_chemical_plant
data_recipe[catalyst_yellow].icons = AR_FOUR_I(catalyst_carrier, tungsten_ore_bob, platinum_ore_angels, catalyst_yellow)
data_recipe[catalyst_yellow].order = h
data_recipe[catalyst_yellow].ingredients[1].amount = 8
data_recipe[catalyst_yellow].ingredients[2].name = tungsten_ore_bob
data_recipe[catalyst_yellow].ingredients[3].name = platinum_ore_angels
data_recipe[catalyst_yellow].results[1].amount = 8