-- IRON and STEEL
data_item_subgroup["angels-iron"].order = a

data_item[iron_ore].localised_description = show_formula and {chemical_formula, "Fe"} or nil
data_item[iron_ore].order = a

data_item[iron_processed].localised_description = show_formula and {chemical_formula, "Fe"} or nil
data_item[iron_processed].order = b
data_recipe[iron_processed].icons = TWO_I(iron_ore, iron_processed)
data_recipe[iron_processed].order = b
data_recipe[iron_processed].results[1].amount = 4

data_item[iron_pellet].localised_description = show_formula and {chemical_formula, "Fe"} or nil
data_item[iron_pellet].order = c
data_recipe[iron_pellet].icons = TWO_I(iron_processed, iron_pellet)
data_recipe[iron_pellet].order = c
data_recipe[iron_pellet].ingredients[1].amount = 4

data_item[iron_ingot].localised_description = show_formula and {chemical_formula, "Fe"} or nil
data_item[iron_ingot].order = d
data_recipe[iron_ingot].icons = THREE_I(iron_ore, coke_angels, iron_ingot)
data_recipe[iron_ingot].order = d
data_recipe[iron_ingot].energy_required = 8 -- Fe -C-> Fe
data_recipe[iron_ingot].ingredients =
{
    {type = item, name = iron_ore, amount = 32},
    {type = item, name = coke_angels, amount = 8}
}
data_recipe[iron_ingot].results[1].amount = 16

data_recipe[iron_ingot_2].category = angels_chemical_smelting_1
data_recipe[iron_ingot_2].icons = THREE_D_I(iron_hydroxide_II, nil, coke_angels, iron_ingot, carbon_dioxide_angels, hydrogen_angels)
data_recipe[iron_ingot_2].order = d_a
data_recipe[iron_ingot_2].energy_required = 8 -- Fe(OH)₂ + C --> Fe + CO₂ + H₂
data_recipe[iron_ingot_2].ingredients =
{
    {type = item, name = iron_hydroxide_II, amount = 16},
    {type = item, name = coke_angels, amount = 16}
}
data_recipe[iron_ingot_2].results =
{
    {type = item, name = iron_ingot, amount = 16},
    {type = fluid, name = carbon_dioxide_angels, amount = 120}, -- 240
    {type = fluid, name = hydrogen_angels, amount = 120} -- 240
}

data_recipe[iron_ingot_3].icons = FOUR_THREE_I(iron_cathode, lime_angels, carbon_angels, oxygen_angels, iron_ingot, nil, limestone_angels)
data_recipe[iron_ingot_3].order = d_b
data_recipe[iron_ingot_3].energy_required = 8 -- Fe + CaO + C + O₂ --> Fe + CaCO₃
data_recipe[iron_ingot_3].ingredients =
{
    {type = item, name = iron_cathode, amount = 16},
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = carbon_angels, amount = 8},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[iron_ingot_3].results =
{
    {type = item, name = iron_ingot, amount = 16},
    {type = item, name = limestone_angels, amount = 4} -- 8
}

data_item[iron_powder].localised_description = show_formula and {chemical_formula, "Fe"} or nil
data_item[iron_powder].order = e
data_recipe[iron_powder].icons = TWO_I(iron_ingot, iron_powder)
data_recipe[iron_powder].order = e

-- IRON CHEMISTRY
data_item[iron_hydroxide_II].localised_name = {"item-name.iron-hydroxide-II"}
data_item[iron_hydroxide_II].localised_description = show_formula and {chemical_formula, "Fe(OH)[font=default-tiny-bold]2[/font]"} or nil
data_item[iron_hydroxide_II].subgroup = is_iron_chemistry
data_item[iron_hydroxide_II].order = a

-- STEEL
data_item[steel_ingot].localised_description = show_formula and {chemical_formula, "FeC"} or nil
data_item[steel_ingot].subgroup = is_steel
data_item[steel_ingot].order = a
data_recipe[steel_ingot].subgroup = is_steel
data_recipe[steel_ingot].icons = THREE_D_I(iron_ore, carbon_angels, oxygen_angels, steel_ingot)
data_recipe[steel_ingot].order = a
data_recipe[steel_ingot].energy_required = 8 -- Fe + C -O₂-> FeC
data_recipe[steel_ingot].ingredients =
{
    {type = item, name = iron_ore, amount = 32},
    {type = item, name = carbon_angels, amount = 16},
    {type = fluid, name = oxygen_angels, amount = 240}
}
data_recipe[steel_ingot].results[1].amount = 16

-- COPPER
data_item_subgroup["angels-copper"].order = b

data_item[copper_ore].localised_description = show_formula and {chemical_formula, "Cu"} or nil
data_item[copper_ore].order = a

data_item[copper_processed].localised_description = show_formula and {chemical_formula, "Cu"} or nil
data_item[copper_processed].order = b
data_recipe[copper_processed].icons = TWO_I(copper_ore, copper_processed)
data_recipe[copper_processed].order = b
data_recipe[copper_processed].results[1].amount = 4

data_item[copper_pellet].localised_description = show_formula and {chemical_formula, "Cu"} or nil
data_item[copper_pellet].order = c
data_recipe[copper_pellet].icons = TWO_I(copper_processed, copper_pellet)
data_recipe[copper_pellet].order = c
data_recipe[copper_pellet].ingredients[1].amount = 4

data_item[copper_ingot].localised_description = show_formula and {chemical_formula, "Cu"} or nil
data_item[copper_ingot].order = d
data_recipe[copper_ingot].icons = THREE_I(copper_ore, coke_angels, copper_ingot)
data_recipe[copper_ingot].order = d
data_recipe[copper_ingot].energy_required = 8 -- Cu -C-> Cu
data_recipe[copper_ingot].ingredients =
{
    {type = item, name = copper_ore, amount = 32},
    {type = item, name = coke_angels, amount = 8}
}
data_recipe[copper_ingot].results[1].amount = 16

data_recipe[copper_ingot_2].category = angels_chemical_smelting_1
data_recipe[copper_ingot_2].icons = THREE_D_I(copper_hydroxide_II, nil, coke_angels, copper_ingot, carbon_dioxide_angels, hydrogen_angels)
data_recipe[copper_ingot_2].order = d_a
data_recipe[copper_ingot_2].energy_required = 8 -- Cu(OH)₂ + C --> Cu + CO₂ + H₂
data_recipe[copper_ingot_2].ingredients =
{
    {type = item, name = copper_hydroxide_II, amount = 16},
    {type = item, name = coke_angels, amount = 16}
}
data_recipe[copper_ingot_2].results =
{
    {type = item, name = copper_ingot, amount = 16},
    {type = fluid, name = carbon_dioxide_angels, amount = 120}, -- 240
    {type = fluid, name = hydrogen_angels, amount = 120} -- 240
}

data_recipe[copper_ingot_3].category = angels_blast_smelting_3
data_recipe[copper_ingot_3].icons = FOUR_THREE_I(copper_cathode, lime_angels, carbon_angels, oxygen_angels, copper_ingot, nil, limestone_angels)
data_recipe[copper_ingot_3].order = d_b
data_recipe[copper_ingot_3].energy_required = 8 -- Cu + CaO + C + O₂ --> Cu + CaCO₃
data_recipe[copper_ingot_3].ingredients =
{
    {type = item, name = copper_cathode, amount = 16},
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = carbon_angels, amount = 8},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[copper_ingot_3].results =
{
    {type = item, name = copper_ingot, amount = 16},
    {type = item, name = limestone_angels, amount = 4} -- 8
}

data_item[copper_powder].localised_description = show_formula and {chemical_formula, "Cu"} or nil
data_item[copper_powder].order = e
data_recipe[copper_powder].icons = TWO_I(copper_ingot, copper_powder)
data_recipe[copper_powder].order = e

-- COPPER CHEMISTRY
data_item[copper_cathode].localised_name = {"item-name.copper-cathode"}
data_item[copper_cathode].localised_description = show_formula and {chemical_formula, "Cu"} or nil
data_item[copper_cathode].subgroup = is_copper_chemistry
data_item[copper_cathode].order = d
data_recipe[copper_cathode].category = angels_petrochem_electrolyser
data_recipe[copper_cathode].subgroup = is_copper_chemistry
data_recipe[copper_cathode].icons = FOUR_R_I(copper_sulfate_II_solution, sulfur_dioxide_angels, copper_cathode, hydrogen_peroxide)
data_recipe[copper_cathode].order = d
data_recipe[copper_cathode].energy_required = 8 -- 2(CuSO₄ + H₂O) + 2H₂SO₄ -electrode/electrolys-> 2Cu + 4SO₂ + 4H₂O₂ + O₂
data_recipe[copper_cathode].ingredients =
{
    {type = fluid, name = copper_sulfate_II_solution, amount = 240},
    {type = fluid, name = sulfuric_acid_angels, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[copper_cathode].results =
{
    {type = item, name = copper_cathode, amount = 16},
    {type = fluid, name = sulfur_dioxide_angels, amount = 240}, -- 480
    {type = fluid, name = hydrogen_peroxide, amount = 240}, -- 480
    --{type = fluid, name = oxygen_angels, amount = 60}, -- 120
    {type = item, name = electrode_used, amount = 1}
}
data_recipe[copper_cathode].main_product = copper_cathode

-- LEAD
data_item_subgroup[is_lead].order = c

data_item[lead_ore_bob].localised_description = show_formula and {chemical_formula, "Pb"} or nil
data_item[lead_ore_bob].order = a

data_item[lead_processed].localised_description = show_formula and {chemical_formula, "Pb"} or nil
data_item[lead_processed].order = b
data_recipe[lead_processed].icons = TWO_I(lead_ore_bob, lead_processed)
data_recipe[lead_processed].order = b
data_recipe[lead_processed].results[1].amount = 4

data_item[lead_pellet].localised_description = show_formula and {chemical_formula, "Pb"} or nil
data_item[lead_pellet].order = c
data_recipe[lead_pellet].icons = TWO_I(lead_processed, lead_pellet)
data_recipe[lead_pellet].order = c
data_recipe[lead_pellet].ingredients[1].amount = 4

data_item[lead_ingot].localised_description = show_formula and {chemical_formula, "Pb"} or nil
data_item[lead_ingot].order = d
data_recipe[lead_ingot].icons = THREE_I(lead_ore_bob, coke_angels, lead_ingot)
data_recipe[lead_ingot].order = d
data_recipe[lead_ingot].energy_required = 8 -- Pb -C-> Pb
data_recipe[lead_ingot].ingredients =
{
    {type = item, name = lead_ore_bob, amount = 32},
    {type = item, name = coke_angels, amount = 8}
}
data_recipe[lead_ingot].results = {{type = item, name = lead_ingot, amount = 16}}

data_recipe[lead_ingot_2].icons = TWO_D_I(lead_oxide_II, carbon_angels, lead_ingot, carbon_dioxide_angels)
data_recipe[lead_ingot_2].order = d_a
data_recipe[lead_ingot_2].energy_required = 8 -- 2PbO + C --> 2Pb + CO₂
data_recipe[lead_ingot_2].ingredients =
{
    {type = item, name = lead_oxide_II, amount = 16},
    {type = item, name = carbon_angels, amount = 8}
}
data_recipe[lead_ingot_2].results =
{
    {type = item, name = lead_ingot, amount = 16},
    {type = fluid, name = carbon_dioxide_angels, amount = 120}
}

data_recipe[lead_ingot_3].category = angels_blast_smelting_3
data_recipe[lead_ingot_3].icons = FOUR_THREE_I(lead_cathode, lime_angels, carbon_angels, oxygen_angels, lead_ingot, nil, limestone_angels)
data_recipe[lead_ingot_3].order = d_b
data_recipe[lead_ingot_3].energy_required = 8 -- Pb + CaO + C + O₂ --> Pb + CaCO₃
data_recipe[lead_ingot_3].ingredients =
{
    {type = item, name = lead_cathode, amount = 16},
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = carbon_angels, amount = 8},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[lead_ingot_3].results =
{
    {type = item, name = lead_ingot, amount = 16},
    {type = item, name = limestone_angels, amount = 4} -- 8
}

-- LEAD CHEMISTRY
data_item[lead_oxide_II].hidden = false
data_item[lead_oxide_II].hidden_in_factoriopedia = false
data_item[lead_oxide_II].localised_name = {"item-name.lead-oxide-II"}
data_item[lead_oxide_II].localised_description = show_formula and {chemical_formula, "PbO"} or nil
data_item[lead_oxide_II].subgroup = is_lead_chemistry
data_item[lead_oxide_II].order = a
data_recipe[lead_oxide_II].localised_name = {"item-name.lead-oxide-II"}
data_recipe[lead_oxide_II].subgroup = is_lead_chemistry
data_recipe[lead_oxide_II].icons = THREE_I(lead_processed, oxygen_angels, lead_oxide_II)
data_recipe[lead_oxide_II].order = a
data_recipe[lead_oxide_II].energy_required = 8 -- 2Pb + O₂ --> 2PbO
data_recipe[lead_oxide_II].ingredients =
{
    {type = item, name = lead_processed, amount = 16},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[lead_oxide_II].results = {{type = item, name = lead_oxide_II, amount = 16}}

data_item[lead_cathode].localised_name = {"item-name.lead-cathode"}
data_item[lead_cathode].localised_description = show_formula and {chemical_formula, "Pb"} or nil
data_item[lead_cathode].subgroup = is_lead_chemistry
data_item[lead_cathode].order = d
data_recipe[lead_cathode].category = angels_petrochem_electrolyser
data_recipe[lead_cathode].subgroup = is_lead_chemistry
data_recipe[lead_cathode].icons = FOUR_R_I(hexafluorosilicate_lead_II_solution, silicon_fluoride_IV_gas, lead_cathode, hydrogen_fluoride_angels)
data_recipe[lead_cathode].order = d
data_recipe[lead_cathode].energy_required = 8 -- (PbSiF₆ + H₂O) + (H₂SiF₆ + H₂O) -electrode/electrolys-> Pb + 2SiF₄ + 4HF + H₂O₂
data_recipe[lead_cathode].ingredients =
{
    {type = fluid, name = hexafluorosilicate_lead_II_solution, amount = 240},
    {type = fluid, name = hexafluorosilicic_acid, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[lead_cathode].results =
{
    {type = item, name = lead_cathode, amount = 16},
    {type = fluid, name = silicon_fluoride_IV_gas, amount = 240}, -- 480
    {type = fluid, name = hydrogen_fluoride_angels, amount = 480}, -- 960
    --{type = fluid, name = hydrogen_peroxide, amount = 120}, -- 240
    {type = item, name = electrode_used, amount = 1}
}
data_recipe[lead_cathode].main_product = lead_cathode

-- TIN
data_item_subgroup["angels-tin"].order = d

data_item[tin_ore_bob].localised_description = show_formula and {chemical_formula, "Sn"} or nil
data_item[tin_ore_bob].order = a

data_item[tin_processed].localised_description = show_formula and {chemical_formula, "Sn"} or nil
data_item[tin_processed].order = b
data_recipe[tin_processed].icons = TWO_I(tin_ore_bob, tin_processed)
data_recipe[tin_processed].order = b
data_recipe[tin_processed].results[1].amount = 4

data_item[tin_pellet].localised_description = show_formula and {chemical_formula, "Sn"} or nil
data_item[tin_pellet].order = c
data_recipe[tin_pellet].icons = TWO_I(tin_processed, tin_pellet)
data_recipe[tin_pellet].order = c
data_recipe[tin_pellet].ingredients[1].amount = 4

data_item[tin_ingot].localised_description = show_formula and {chemical_formula, "Sn"} or nil
data_item[tin_ingot].order = d
data_recipe[tin_ingot].icons = THREE_I(tin_ore_bob, coke_angels, tin_ingot)
data_recipe[tin_ingot].order = d
data_recipe[tin_ingot].energy_required = 8 -- Sn -C-> Sn
data_recipe[tin_ingot].ingredients =
{
    {type = item, name = tin_ore_bob, amount = 32},
    {type = item, name = coke_angels, amount = 8}
}
data_recipe[tin_ingot].results[1].amount = 16

data_recipe[tin_ingot_2].category = angels_chemical_smelting_1
data_recipe[tin_ingot_2].icons = TWO_D_I(tin_chloride_IV, hydrogen_angels, tin_ingot, hydrogen_chloride_angels)
data_recipe[tin_ingot_2].order = d_a
data_recipe[tin_ingot_2].energy_required = 8 -- SnCl₄ + 2H₂ --> Sn + 4HCl
data_recipe[tin_ingot_2].ingredients =
{
    {type = fluid, name = tin_chloride_IV, amount = 240},
    {type = fluid, name = hydrogen_angels, amount = 480}
}
data_recipe[tin_ingot_2].results =
{
    {type = item, name = tin_ingot, amount = 16},
    {type = fluid, name = hydrogen_chloride_angels, amount = 480} -- 960
}

data_recipe[tin_ingot_3].icons = FOUR_THREE_I(tin_cathode, lime_angels, carbon_angels, oxygen_angels, tin_ingot, nil, limestone_angels)
data_recipe[tin_ingot_3].order = d_b
data_recipe[tin_ingot_3].energy_required = 8 -- Sn + CaO + C + O₂ --> Sn + CaCO₃
data_recipe[tin_ingot_3].ingredients =
{
    {type = item, name = tin_cathode, amount = 16},
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = carbon_angels, amount = 8},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[tin_ingot_3].results =
{
    {type = item, name = tin_ingot, amount = 16},
    {type = item, name = limestone_angels, amount = 4} -- 8
}

-- MANGANESE
data_item_subgroup["angels-manganese"].order = e

data_item[manganese_ore_angels].localised_description = show_formula and {chemical_formula, "Mn"} or nil
data_item[manganese_ore_angels].order = a

data_item[manganese_processed].localised_description = show_formula and {chemical_formula, "Mn"} or nil
data_item[manganese_processed].order = b
data_recipe[manganese_processed].icons = TWO_I(manganese_ore_angels, manganese_processed)
data_recipe[manganese_processed].order = b
data_recipe[manganese_processed].results[1].amount = 4

data_item[manganese_pellet].localised_description = show_formula and {chemical_formula, "Mn"} or nil
data_item[manganese_pellet].order = c
data_recipe[manganese_pellet].icons = TWO_I(manganese_processed, manganese_pellet)
data_recipe[manganese_pellet].order = c
data_recipe[manganese_pellet].ingredients[1].amount = 4

data_item[manganese_ingot].localised_description = show_formula and {chemical_formula, "Mn"} or nil
data_item[manganese_ingot].order = d
data_recipe[manganese_ingot].icons = TWO_D_I(manganese_oxide_IV, coke_angels, manganese_ingot, carbon_monoxide_angels)
data_recipe[manganese_ingot].order = d
data_recipe[manganese_ingot].energy_required = 8 -- MnO₂ + C --> Mn + CO
data_recipe[manganese_ingot].ingredients =
{
    {type = item, name = manganese_oxide_IV, amount = 16},
    {type = item, name = coke_angels, amount = 16}
}
data_recipe[manganese_ingot].results =
{
    {type = item, name = manganese_ingot, amount = 16},
    {type = fluid, name = carbon_monoxide_angels, amount = 120} -- 240
}
data_recipe[manganese_ingot].main_product = manganese_ingot

data_recipe[manganese_ingot_2].icons = FOUR_THREE_I(manganese_cathode, lime_angels, carbon_angels, oxygen_angels, manganese_ingot, nil, limestone_angels)
data_recipe[manganese_ingot_2].order = d_a
data_recipe[manganese_ingot_2].energy_required = 8 -- Mn + CaO + C + O₂ --> Mn + CaCO₃
data_recipe[manganese_ingot_2].ingredients =
{
    {type = item, name = manganese_cathode, amount = 16},
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = carbon_angels, amount = 8},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[manganese_ingot_2].results =
{
    {type = item, name = manganese_ingot, amount = 16},
    {type = item, name = limestone_angels, amount = 4} -- 8
}

-- MANGANESE CHEMISTRY
data_item[manganese_oxide_II].localised_name = {"item-name.manganese-oxide-II"}
data_item[manganese_oxide_II].localised_description = show_formula and {chemical_formula, "MnO"} or nil
data_item[manganese_oxide_II].subgroup = is_manganese_chemistry
data_item[manganese_oxide_II].order = d

data_recipe[manganese_oxide_II_2].localised_name = {"item-name.manganese-oxide-II"}
data_recipe[manganese_oxide_II_2].category = angels_blast_smelting_3
data_recipe[manganese_oxide_II_2].subgroup = is_manganese_chemistry
data_recipe[manganese_oxide_II_2].icons = THREE_I(manganese_pellet, oxygen_angels, manganese_oxide_II)
data_recipe[manganese_oxide_II_2].order = d_a
data_recipe[manganese_oxide_II_2].energy_required = 8 -- 2Mn + O₂ --> 2MnO
data_recipe[manganese_oxide_II_2].ingredients =
{
    {type = item, name = manganese_pellet, amount = 8},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[manganese_oxide_II_2].results[1].amount = 16

data_item[manganese_cathode].localised_description = show_formula and {chemical_formula, "Mn"} or nil
data_item[manganese_cathode].subgroup = is_manganese_chemistry
data_item[manganese_cathode].order = e
data_recipe[manganese_cathode].category = angels_petrochem_electrolyser
data_recipe[manganese_cathode].subgroup = is_manganese_chemistry
data_recipe[manganese_cathode].icons = FOUR_R_I(manganese_sulfate_II_solution, sulfur_dioxide_angels, manganese_cathode, hydrogen_peroxide)
data_recipe[manganese_cathode].order = e
data_recipe[manganese_cathode].energy_required = 8 -- 2(MnSO₄ + H₂O) + 2H₂SO₄ -electrode/electrolys-> Mn + MnO₂ + 4SO₂ + 4H₂O₂
data_recipe[manganese_cathode].ingredients =
{
    {type = fluid, name = manganese_sulfate_II_solution, amount = 240},
    {type = fluid, name = sulfuric_acid_angels, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[manganese_cathode].results =
{
    {type = item, name = manganese_cathode, amount = 8},
    {type = item, name = manganese_oxide_II, amount = 8},
    {type = fluid, name = sulfur_dioxide_angels, amount = 240}, -- 480
    {type = fluid, name = hydrogen_peroxide, amount = 120}, -- 240
    {type = item, name = electrode_used, amount = 1}
}
data_recipe[manganese_cathode].main_product = manganese_cathode

data_recipe[manganese_cathode_2].category = angels_petrochem_electrolyser
data_recipe[manganese_cathode_2].subgroup = is_manganese_chemistry
data_recipe[manganese_cathode_2].icons = FOUR_R_I(manganese_sulfate_II_solution, sulfuric_acid_angels, manganese_cathode, ammonia_angels)
data_recipe[manganese_cathode_2].order = e_a
data_recipe[manganese_cathode_2].energy_required = 8 -- (MnSO₄ + H₂O) + ((NH₄)₂SO₄ + H₂O) -electrode/electrolys-> Mn + 2H₂SO₄ + 2NH₃ + H₂O₂
data_recipe[manganese_cathode_2].ingredients =
{
    {type = fluid, name = manganese_sulfate_II_solution, amount = 240},
    {type = fluid, name = ammonium_sulfate_solution, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[manganese_cathode_2].results =
{
    {type = item, name = manganese_cathode, amount = 16},
    {type = fluid, name = sulfuric_acid_angels, amount = 240}, -- 480
    {type = fluid, name = ammonia_angels, amount = 240}, -- 480
    --{type = fluid, name = hydrogen_peroxide, amount = 120}, -- 240
    {type = item, name = electrode_used, amount = 1}
}

-- SILICON
data_item_subgroup["angels-silicon"].order = g

data_item[silicon_ore_bob].localised_description = show_formula and {chemical_formula, "Si"} or nil
data_item[silicon_ore_bob].order = a

data_item[silicon_processed].localised_description = show_formula and {chemical_formula, "Si"} or nil
data_item[silicon_processed].order = b
data_recipe[silicon_processed].icons = TWO_I(silicon_ore_bob, silicon_processed)
data_recipe[silicon_processed].order = b
data_recipe[silicon_processed].results[1].amount = 4

data_item[silicon_pellet].localised_description = show_formula and {chemical_formula, "Si"} or nil
data_item[silicon_pellet].order = c
data_recipe[silicon_pellet].icons = TWO_I(silicon_processed, silicon_pellet)
data_recipe[silicon_pellet].order = c
data_recipe[silicon_pellet].ingredients[1].amount = 4

data_item[silicon_ingot].localised_description = show_formula and {chemical_formula, "Si"} or nil
data_item[silicon_ingot].order = d
data_recipe[silicon_ingot].icons = TWO_D_I(silicon_oxide_IV, magnesium_powder, silicon_ingot, magnesium_oxide)
data_recipe[silicon_ingot].order = d
data_recipe[silicon_ingot].energy_required = 8 -- SiO₂ + 2Mg --> Si + 2MgO
data_recipe[silicon_ingot].ingredients =
{
    {type = item, name = silicon_oxide_IV, amount = 16},
    {type = item, name = magnesium_powder, amount = 32}
}
data_recipe[silicon_ingot].results =
{
    {type = item, name = silicon_ingot, amount = 16},
    {type = item, name = magnesium_oxide, amount = 16} -- 32
}
data_recipe[silicon_ingot].main_product = silicon_ingot

local silicon_ingot_2 = "angels-ingot-silicon-2"
data_recipe[silicon_ingot_2].icons = THREE_D_I(trichlorosilane, nil, nil, silicon_ingot, silicon_chloride_IV_gas, hydrogen_angels)
data_recipe[silicon_ingot_2].order = d_a
data_recipe[silicon_ingot_2].energy_required = 8 -- 4HSiCl₃ --> Si + 3SiCl₄ + 2H₂
data_recipe[silicon_ingot_2].ingredients = {{type = fluid, name = trichlorosilane, amount = 240}}
data_recipe[silicon_ingot_2].results =
{
    {type = item, name = silicon_ingot, amount = 4},
    {type = fluid, name = silicon_chloride_IV_gas, amount = 180},
    {type = fluid, name = hydrogen_angels, amount = 60} -- 120
}

data_recipe[silicon_ingot_3].icons = THREE_R_I(silane_gas, silicon_ingot, hydrogen_angels)
data_recipe[silicon_ingot_3].order = d_b
data_recipe[silicon_ingot_3].energy_required = 8 -- SiH₄ --> Si + 2H₂
data_recipe[silicon_ingot_3].ingredients = {{type = fluid, name = silane_gas, amount = 240}}
data_recipe[silicon_ingot_3].results =
{
    {type = item, name = silicon_ingot, amount = 16},
    {type = fluid, name = hydrogen_angels, amount = 240}
}

data_item[silicon_powder].hidden = false
data_item[silicon_powder].hidden_in_factoriopedia = false
data_item[silicon_powder].localised_name = {"item-name.silicon-powder"}
data_item[silicon_powder].localised_description = show_formula and {chemical_formula, "Si"} or nil
data_item[silicon_powder].order = e
data_recipe[silicon_powder].hidden = false
data_recipe[silicon_powder].hidden_in_factoriopedia = false
data_recipe[silicon_powder].localised_name = {"item-name.silicon-powder"}
data_recipe[silicon_powder].icons = TWO_I(silicon_ingot, silicon_powder)
data_recipe[silicon_powder].order = e

-- SILICON CHEMISTRY
data_fluid[trichlorosilane].localised_description = show_formula and {chemical_formula, "HSiCl[font=default-tiny-bold]3[/font]"} or nil
data_fluid[trichlorosilane].subgroup = is_silicon_chemistry
data_fluid[trichlorosilane].order = b
data_recipe[trichlorosilane].subgroup = is_silicon_chemistry
data_recipe[trichlorosilane].icons = THREE_I(silicon_processed, hydrogen_chloride_angels, trichlorosilane)
data_recipe[trichlorosilane].order = b
data_recipe[trichlorosilane].energy_required = 8 -- Si + 3HCl --> HSiCl₃ + H₂
data_recipe[trichlorosilane].ingredients =
{
    {type = item, name = silicon_processed, amount = 16},
    {type = fluid, name = hydrogen_chloride_angels, amount = 720}
}
data_recipe[trichlorosilane].results =
{
    {type = fluid, name = trichlorosilane, amount = 240},
    {type = fluid, name = hydrogen_angels, amount = 120} -- 240
}

data_fluid[silane_gas].localised_description = show_formula and {chemical_formula, "SiH[font=default-tiny-bold]4[/font]"} or nil
data_fluid[silane_gas].subgroup = is_silicon_chemistry
data_fluid[silane_gas].order = d
data_recipe[silane_gas].subgroup = is_silicon_chemistry
data_recipe[silane_gas].icons = THREE_D_I(silicon_pellet, chlorine_angels, lithium_aluminium_hydride_solution_ether, silane_gas, aluminium_chloride_solution_ether, lithium_chloride_angels)
data_recipe[silane_gas].order = d
data_recipe[silane_gas].energy_required = 8 -- Si + 2Cl₂ + LiAlH₄(ether) --> SiH₄ + AlCl₃(ether) + LiCl
data_recipe[silane_gas].ingredients =
{
    {type = item, name = silicon_pellet, amount = 8},
    {type = fluid, name = chlorine_angels, amount = 480},
    {type = fluid, name = lithium_aluminium_hydride_solution_ether, amount = 240}
}
data_recipe[silane_gas].results =
{
    {type = fluid, name = silane_gas, amount = 240},
    {type = fluid, name = aluminium_chloride_solution_ether, amount = 120}, -- 240
    {type = item, name = lithium_chloride_angels, amount = 8} -- 16
}
data_recipe[silane_gas].main_product = silane_gas

data_item[silicon_carbide_bob].localised_description = show_formula and {chemical_formula, "SiC"} or nil
data_item[silicon_carbide_bob].subgroup = is_silicon_chemistry
data_item[silicon_carbide_bob].order = e
data_item[silicon_carbide_bob].stack_size = 200
data_recipe[silicon_carbide_bob].subgroup = is_silicon_chemistry
data_recipe[silicon_carbide_bob].icons = THREE_I(silicon_powder, carbon_angels, silicon_carbide_bob)
data_recipe[silicon_carbide_bob].order = e
data_recipe[silicon_carbide_bob].energy_required = 8 -- Si + C --> SiC
data_recipe[silicon_carbide_bob].ingredients[1].amount = 16
data_recipe[silicon_carbide_bob].ingredients[2].amount = 16
data_recipe[silicon_carbide_bob].results[1].amount = 16

data_item[silicon_nitride_bob].localised_description = show_formula and {chemical_formula, "Si[font=default-tiny-bold]3[/font]N[font=default-tiny-bold]4[/font]"} or nil
data_item[silicon_nitride_bob].subgroup = is_silicon_chemistry
data_item[silicon_nitride_bob].order = f
data_item[silicon_nitride_bob].stack_size = 200
data_recipe[silicon_nitride_bob].subgroup = is_silicon_chemistry
data_recipe[silicon_nitride_bob].icons = THREE_I(silicon_powder, nitrogen_angels, silicon_nitride_bob)
data_recipe[silicon_nitride_bob].order = f
data_recipe[silicon_nitride_bob].energy_required = 8 -- 3Si + 2N₂ --> Si₃N₄
data_recipe[silicon_nitride_bob].ingredients[1].amount = 12
data_recipe[silicon_nitride_bob].ingredients[2].amount = 120
data_recipe[silicon_nitride_bob].results[1].amount = 4

data_fluid[hexafluorosilicic_acid].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]SiF[font=default-tiny-bold]6(aq)[/font]"} or nil
data_fluid[hexafluorosilicic_acid].subgroup = is_silicon_chemistry
data_fluid[hexafluorosilicic_acid].order = h
data_recipe[hexafluorosilicic_acid].category = angels_chemical_smelting_2
data_recipe[hexafluorosilicic_acid].subgroup = is_silicon_chemistry
data_recipe[hexafluorosilicic_acid].icons = THREE_D_I(silicon_ingot, hydrogen_fluoride_angels, water_purified_angels, hexafluorosilicic_acid, nil, hydrogen_angels)
data_recipe[hexafluorosilicic_acid].order = h
data_recipe[hexafluorosilicic_acid].energy_required = 4 -- Si + 6HF + H₂O --> H₂SiF₆(aq) + 2H₂
data_recipe[hexafluorosilicic_acid].ingredients =
{
    {type = item, name = silicon_ingot, amount = 8},
    {type = fluid, name = hydrogen_fluoride_angels, amount = 720},
    {type = fluid, name = water_purified_angels, amount = 120}
}
data_recipe[hexafluorosilicic_acid].results =
{
    {type = fluid, name = hexafluorosilicic_acid, amount = 120},
    {type = fluid, name = hydrogen_angels, amount = 120} -- 240
}
data_recipe[hexafluorosilicic_acid].main_product = hexafluorosilicic_acid

-- NICKEL
data_item_subgroup["angels-nickel"].order = h

data_item[nickel_ore_bob].localised_description = show_formula and {chemical_formula, "Ni"} or nil
data_item[nickel_ore_bob].order = a

data_item[nickel_processed].localised_description = show_formula and {chemical_formula, "Ni"} or nil
data_item[nickel_processed].order = b
data_recipe[nickel_processed].icons = TWO_I(nickel_ore_bob, nickel_processed)
data_recipe[nickel_processed].order = b
data_recipe[nickel_processed].results[1].amount = 4

data_item[nickel_pellet].localised_description = show_formula and {chemical_formula, "Ni"} or nil
data_item[nickel_pellet].order = c
data_recipe[nickel_pellet].icons = TWO_I(nickel_processed, nickel_pellet)
data_recipe[nickel_pellet].order = c
data_recipe[nickel_pellet].ingredients[1].amount = 4

data_item[nickel_ingot].localised_description = show_formula and {chemical_formula, "Ni"} or nil
data_item[nickel_ingot].order = d
data_recipe[nickel_ingot].icons = THREE_I(nickel_ore_bob, carbon_angels, nickel_ingot)
data_recipe[nickel_ingot].order = d
data_recipe[nickel_ingot].energy_required = 8 -- Ni -C-> Ni
data_recipe[nickel_ingot].ingredients =
{
    {type = item, name = nickel_ore_bob, amount = 32},
    {type = item, name = carbon_angels, amount = 8},
}
data_recipe[nickel_ingot].results[1].amount = 16

data_recipe[nickel_ingot_2].icons = FOUR_THREE_I(nickel_cathode, lime_angels, carbon_angels, oxygen_angels, nickel_ingot, nil, limestone_angels)
data_recipe[nickel_ingot_2].order = d_a
data_recipe[nickel_ingot_2].energy_required = 8 -- Ni + CaO + C + O₂ --> Ni + CaCO₃
data_recipe[nickel_ingot_2].ingredients =
{
    {type = item, name = nickel_cathode, amount = 16},
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = carbon_angels, amount = 8},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[nickel_ingot_2].results =
{
    {type = item, name = nickel_ingot, amount = 16},
    {type = item, name = limestone_angels, amount = 4} -- 8
}

data_recipe[nickel_ingot_3].icons = TWO_D_I(tetracarbonyl_nickel, nil, nickel_ingot, carbon_monoxide_angels)
data_recipe[nickel_ingot_3].order = d_b
data_recipe[nickel_ingot_3].energy_required = 8 -- Ni(CO)₄ --> Ni + 4CO
data_recipe[nickel_ingot_3].ingredients = {{type = fluid, name = tetracarbonyl_nickel, amount = 240}}
data_recipe[nickel_ingot_3].results =
{
    {type = item, name = nickel_ingot, amount = 16},
    {type = fluid, name = carbon_monoxide_angels, amount = 480} -- 960
}

data_item[nickel_powder].hidden = true
data_item[nickel_powder].hidden_in_factoriopedia = true
data_item[nickel_powder].localised_description = show_formula and {chemical_formula, "Ni"} or nil
data_item[nickel_powder].order = e
data_recipe[nickel_powder].hidden = true
data_recipe[nickel_powder].hidden_in_factoriopedia = true
data_recipe[nickel_powder].icons = TWO_I(nickel_ingot, nickel_powder)
data_recipe[nickel_powder].order = e

-- NICKEL CHEMISTRY
data_item[nickel_sulfate_II].localised_name = {"item-name.nickel-sulfate-II"}
data_item[nickel_sulfate_II].localised_description = show_formula and {chemical_formula, "NiSO[font=default-tiny-bold]4[/font]"} or nil
data_item[nickel_sulfate_II].subgroup = is_nickel_chemistry
data_item[nickel_sulfate_II].order = a
data_recipe[nickel_sulfate_II].category = angels_chemical_smelting_2
data_recipe[nickel_sulfate_II].subgroup = is_nickel_chemistry
data_recipe[nickel_sulfate_II].icons = TWO_D_I(nickel_processed, sulfuric_acid_angels, nickel_sulfate_II, hydrogen_angels)
data_recipe[nickel_sulfate_II].order = a
data_recipe[nickel_sulfate_II].energy_required = 8 -- Ni + H₂SO₄ --> NiSO₄ + H₂
data_recipe[nickel_sulfate_II].ingredients =
{
    {type = item, name = nickel_processed, amount = 16},
    {type = fluid, name = sulfuric_acid_angels, amount = 240}
}
data_recipe[nickel_sulfate_II].results =
{
    {type = item, name = nickel_sulfate_II, amount = 16},
    {type = fluid, name = hydrogen_angels, amount = 120} -- 240
}
data_recipe[nickel_sulfate_II].main_product = nickel_sulfate_II

data_item[nickel_cathode].localised_description = show_formula and {chemical_formula, "Ni"} or nil
data_item[nickel_cathode].subgroup = is_nickel_chemistry
data_item[nickel_cathode].order = c
data_recipe[nickel_cathode].category = angels_petrochem_electrolyser
data_recipe[nickel_cathode].subgroup = is_nickel_chemistry
data_recipe[nickel_cathode].icons = FOUR_R_I(nickel_sulfate_II_solution, diborane_gas, nickel_cathode, sulfur_trioxide_gas)
data_recipe[nickel_cathode].order = c
data_recipe[nickel_cathode].energy_required = 8 -- 2(NiSO₄ + H₂O) + 2(H₃BO₃ + H₂O) -electrode/electrolys-> 2Ni + B₂H₆ + 2SO₃ + 4O₂ + 2H₂O₂
data_recipe[nickel_cathode].ingredients =
{
    {type = fluid, name = nickel_sulfate_II_solution, amount = 240},
    {type = fluid, name = boric_acid_solution, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[nickel_cathode].results =
{
    {type = item, name = nickel_cathode, amount = 16},
    {type = fluid, name = diborane_gas, amount = 60}, -- 120
    {type = fluid, name = sulfur_trioxide_gas, amount = 120}, -- 240
    --{type = fluid, name = oxygen_angels, amount = 240}, -- 480
    --{type = fluid, name = hydrogen_peroxide, amount = 120}, -- 240
    {type = item, name = electrode_used, amount = 1}
}
data_recipe[nickel_cathode].main_product = nickel_cathode

-- ALUMINIUM
data_item_subgroup["angels-aluminium"].order = i

data_item[aluminium_ore_bob].localised_description = show_formula and {chemical_formula, "Al"} or nil
data_item[aluminium_ore_bob].order = a

data_item[aluminium_processed].localised_description = show_formula and {chemical_formula, "Al"} or nil
data_item[aluminium_processed].order = b
data_recipe[aluminium_processed].icons = TWO_I(aluminium_ore_bob, aluminium_processed)
data_recipe[aluminium_processed].order = b
data_recipe[aluminium_processed].results[1].amount = 4

data_item[aluminium_pellet].localised_description = show_formula and {chemical_formula, "Al"} or nil
data_item[aluminium_pellet].order = c
data_recipe[aluminium_pellet].icons = TWO_I(aluminium_processed, aluminium_pellet)
data_recipe[aluminium_pellet].order = c
data_recipe[aluminium_pellet].ingredients[1].amount = 4

data_item[aluminium_ingot].localised_description = show_formula and {chemical_formula, "Al"} or nil
data_item[aluminium_ingot].order = d
data_recipe[aluminium_ingot].icons = TWO_D_I(aluminium_oxide, carbon_angels, aluminium_ingot, carbon_dioxide_angels)
data_recipe[aluminium_ingot].order = d
data_recipe[aluminium_ingot].energy_required = 8 -- 2Al₂O₃ + 3C --> 4Al + 3CO₂
data_recipe[aluminium_ingot].ingredients =
{
    {type = item, name = aluminium_oxide, amount = 8},
    {type = item, name = carbon_angels, amount = 12}
}
data_recipe[aluminium_ingot].results =
{
    {type = item, name = aluminium_ingot, amount = 16},
    {type = fluid, name = carbon_dioxide_angels, amount = 60} -- 180
}
data_recipe[aluminium_ingot].main_product = aluminium_ingot

-- ALUMINIUM CHEMISTRY
data_item[aluminium_hydroxide].localised_description = show_formula and {chemical_formula, "Al(OH)[font=default-tiny-bold]3[/font]"} or nil
data_item[aluminium_hydroxide].subgroup = is_aluminium_chemistry
data_item[aluminium_hydroxide].order = c
data_recipe[aluminium_hydroxide].category = angels_chemical_smelting_1
data_recipe[aluminium_hydroxide].subgroup = is_aluminium_chemistry
data_recipe[aluminium_hydroxide].icons = TWO_D_I(aluminium_chloride, sodium_hydroxide_solution_angels, aluminium_hydroxide, sodium_chloride_solution)
data_recipe[aluminium_hydroxide].order = c
data_recipe[aluminium_hydroxide].energy_required = 8 -- AlCl₃ + 3NaOH(aq) --> Al(OH)₃ + 3NaCl(aq)
data_recipe[aluminium_hydroxide].ingredients =
{
    {type = item, name = aluminium_chloride, amount = 16},
    {type = fluid, name = sodium_hydroxide_solution_angels, amount = 720}
}
data_recipe[aluminium_hydroxide].results =
{
    {type = item, name = aluminium_hydroxide, amount = 16},
    {type = fluid, name = sodium_chloride_solution, amount = 240} -- 720
}
data_recipe[aluminium_hydroxide].main_product = aluminium_hydroxide

data_recipe[aluminium_hydroxide_2].category = angels_chemical_smelting_2
data_recipe[aluminium_hydroxide_2].subgroup = is_aluminium_chemistry
data_recipe[aluminium_hydroxide_2].icons = THREE_D_I(aluminium_chloride, ammonia_angels, water_purified_angels, aluminium_hydroxide, ammonium_chloride)
data_recipe[aluminium_hydroxide_2].order = c_a
data_recipe[aluminium_hydroxide_2].energy_required = 8 -- AlCl₃ + 3NH₃ + 3H₂O --> Al(OH)₃ + 3NH₄Cl
data_recipe[aluminium_hydroxide_2].ingredients =
{
    {type = item, name = aluminium_chloride, amount = 16},
    {type = fluid, name = ammonia_angels, amount = 720},
    {type = fluid, name = water_purified_angels, amount = 720}
}
data_recipe[aluminium_hydroxide_2].results =
{
    {type = item, name = aluminium_hydroxide, amount = 16},
    {type = item, name = ammonium_chloride, amount = 16} -- 48
}

data_item[sodium_aluminate].localised_description = show_formula and {chemical_formula, "NaAlO[font=default-tiny-bold]2[/font]"} or nil
data_item[sodium_aluminate].subgroup = is_aluminium_chemistry
data_item[sodium_aluminate].order = d
data_recipe[sodium_aluminate].subgroup = is_aluminium_chemistry
data_recipe[sodium_aluminate].icons = TWO_D_I(aluminium_pellet, sodium_hydroxide_solution_angels, sodium_aluminate, hydrogen_angels)
data_recipe[sodium_aluminate].order = d
data_recipe[sodium_aluminate].energy_required = 8 -- 2Al + 2NaOH(aq) --> 2NaAlO₂ + 3H₂
data_recipe[sodium_aluminate].ingredients =
{
    {type = item, name = aluminium_pellet, amount = 8},
    {type = fluid, name = sodium_hydroxide_solution_angels, amount = 240}
}
data_recipe[sodium_aluminate].results =
{
    {type = item, name = sodium_aluminate, amount = 16},
    {type = fluid, name = hydrogen_angels, amount = 120} -- 360
}
data_recipe[sodium_aluminate].main_product = sodium_aluminate

data_item[aluminium_oxide].hidden = false
data_item[aluminium_oxide].hidden_in_factoriopedia = false
data_item[aluminium_oxide].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil
data_item[aluminium_oxide].subgroup = is_aluminium_chemistry
data_item[aluminium_oxide].order = e
data_recipe[aluminium_oxide].subgroup = is_aluminium_chemistry
data_recipe[aluminium_oxide].icons = THREE_R_I(aluminium_hydroxide, aluminium_oxide, steam)
data_recipe[aluminium_oxide].order = e
data_recipe[aluminium_oxide].energy_required = 8 -- 2Al(OH)₃ --> Al₂O₃ + 3H₂O
data_recipe[aluminium_oxide].ingredients[1].amount = 16
data_recipe[aluminium_oxide].results =
{
    {type = item, name = aluminium_oxide, amount = 8},
    {type = fluid, name = steam, amount = 120} -- 360
}
data_recipe[aluminium_oxide].main_product = aluminium_oxide

local aluminium_oxide_2 = "angels-solid-aluminium-oxide-2"
data_recipe[aluminium_oxide_2].category = angels_chemical_smelting_3
data_recipe[aluminium_oxide_2].subgroup = is_aluminium_chemistry
data_recipe[aluminium_oxide_2].icons = THREE_D_I(sodium_aluminate, hydrochloric_acid_angels, water_purified_angels, aluminium_oxide, salt_angels, steam)
data_recipe[aluminium_oxide_2].order = e_a
data_recipe[aluminium_oxide_2].energy_required = 8 -- 2NaAlO₂ + 2HCl(aq) + 2H₂O --> Al₂O₃ + 2NaCl(aq) + 3H₂O
data_recipe[aluminium_oxide_2].ingredients =
{
    {type = item, name = sodium_aluminate, amount = 16},
    {type = fluid, name = hydrochloric_acid_angels, amount = 240},
    {type = fluid, name = water_purified_angels, amount = 240}
}
data_recipe[aluminium_oxide_2].results =
{
    {type = item, name = aluminium_oxide, amount = 8},
    {type = fluid, name = sodium_chloride_solution, amount = 120}, -- 240
    {type = fluid, name = steam, amount = 120} -- 360
}

-- ZINC
data_item_subgroup["angels-zinc"].order = j

data_item[zinc_ore_bob].localised_description = show_formula and {chemical_formula, "Zn"} or nil
data_item[zinc_ore_bob].order = a

data_item[zinc_processed].localised_description = show_formula and {chemical_formula, "Zn"} or nil
data_item[zinc_processed].order = b
data_recipe[zinc_processed].icons = TWO_I(zinc_ore_bob, zinc_processed)
data_recipe[zinc_processed].order = b
data_recipe[zinc_processed].results[1].amount = 4

data_item[zinc_pellet].localised_description = show_formula and {chemical_formula, "Zn"} or nil
data_item[zinc_pellet].order = c
data_recipe[zinc_pellet].icons = TWO_I(zinc_processed, zinc_pellet)
data_recipe[zinc_pellet].order = c
data_recipe[zinc_pellet].ingredients[1].amount = 4

data_item[zinc_ingot].localised_description = show_formula and {chemical_formula, "Zn"} or nil
data_item[zinc_ingot].order = d
data_recipe[zinc_ingot].category = angels_chemical_smelting_1
data_recipe[zinc_ingot].icons = TWO_D_I(zinc_chloride_solution, manganese_ingot, zinc_ingot, magnesium_chloride_solution)
data_recipe[zinc_ingot].order = d
data_recipe[zinc_ingot].energy_required = 8 -- ZnCl₂(aq) + Mg --> Zn + MgCl₂(aq)
data_recipe[zinc_ingot].ingredients =
{
    {type = fluid, name = zinc_chloride_solution, amount = 240},
    {type = item, name = manganese_ingot, amount = 16},
}
data_recipe[zinc_ingot].results =
{
    {type = item, name = zinc_ingot, amount = 16},
    {type = fluid, name = magnesium_chloride_solution, amount = 120} -- 240
}
data_recipe[zinc_ingot].main_product = zinc_ingot

data_recipe[zinc_ingot_2].icons = TWO_I(zinc_gas, zinc_ingot)
data_recipe[zinc_ingot_2].order = d_a
data_recipe[zinc_ingot_2].energy_required = 8 -- Zn(g) -H₂O-> Zn
data_recipe[zinc_ingot_2].ingredients =
{
    {type = fluid, name = zinc_gas, amount = 240},
    {type = fluid, name = water_purified_angels, amount = 240},
}
data_recipe[zinc_ingot_2].results =
{
    {type = item, name = zinc_ingot, amount = 16},
    {type = fluid, name = steam, amount = 120} -- 240
}

data_recipe[zinc_ingot_3].icons = FOUR_THREE_I(zinc_cathode, lime_angels, carbon_angels, oxygen_angels, zinc_ingot, nil, limestone_angels)
data_recipe[zinc_ingot_3].order = d_b
data_recipe[zinc_ingot_3].energy_required = 8 -- Zn + CaO + C + O₂ --> Zn + CaCO₃
data_recipe[zinc_ingot_3].ingredients =
{
    {type = item, name = zinc_cathode, amount = 16},
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = carbon_angels, amount = 8},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[zinc_ingot_3].results =
{
    {type = item, name = zinc_ingot, amount = 16},
    {type = item, name = limestone_angels, amount = 4} -- 8
}

data_item[zinc_powder].localised_description = show_formula and {chemical_formula, "Zn"} or nil
data_item[zinc_powder].order = e
data_recipe[zinc_powder].icons = TWO_I(zinc_ingot, zinc_powder)
data_recipe[zinc_powder].order = e

-- ZINC CHEMISTRY
data_item[zinc_oxide].localised_description = show_formula and {chemical_formula, "ZnO"} or nil
data_item[zinc_oxide].subgroup = is_zinc_chemistry
data_item[zinc_oxide].order = c
data_recipe[zinc_oxide].hidden = false
data_recipe[zinc_oxide].hidden_in_factoriopedia = false
data_recipe[zinc_oxide].localised_name = {"item-name.angels-solid-zinc-oxide"}
data_recipe[zinc_oxide].category = angels_blast_smelting_3
data_recipe[zinc_oxide].subgroup = is_zinc_chemistry
data_recipe[zinc_oxide].icons = THREE_I(zinc_processed, oxygen_angels, zinc_oxide)
data_recipe[zinc_oxide].order = c
data_recipe[zinc_oxide].energy_required = 8 -- 2Zn + O₂ --> 2ZnO
data_recipe[zinc_oxide].ingredients =
{
    {type = item, name = zinc_processed, amount = 16},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[zinc_oxide].results = {{type = item, name = zinc_oxide, amount = 16}}

data_recipe[zinc_oxide_2].category = angels_blast_smelting_4
data_recipe[zinc_oxide_2].subgroup = is_zinc_chemistry
data_recipe[zinc_oxide_2].icons = THREE_I(zinc_pellet, oxygen_angels, zinc_oxide)
data_recipe[zinc_oxide_2].order = c_a
data_recipe[zinc_oxide_2].energy_required = 8 -- 2Zn + O₂ --> 2ZnO
data_recipe[zinc_oxide_2].ingredients[2].amount = 120
data_recipe[zinc_oxide_2].results = {{type = item, name = zinc_oxide, amount = 16}}

data_item[zinc_cathode].localised_description = show_formula and {chemical_formula, "Zn"} or nil
data_item[zinc_cathode].subgroup = is_zinc_chemistry
data_item[zinc_cathode].order = f
data_recipe[zinc_cathode].category = angels_petrochem_electrolyser
data_recipe[zinc_cathode].subgroup = is_zinc_chemistry
data_recipe[zinc_cathode].icons = FOUR_R_I(zinc_sulfate_solution, sulfur_dioxide_angels, zinc_cathode, hydrogen_peroxide)
data_recipe[zinc_cathode].order = f
data_recipe[zinc_cathode].energy_required = 8 -- 2ZnSO₄(aq) + 2H₂SO₄ -electrode/electrolys-> 2Zn + 4SO₂ + 4H₂O₂ + O₂
data_recipe[zinc_cathode].ingredients =
{
    {type = fluid, name = zinc_sulfate_solution, amount = 240},
    {type = fluid, name = sulfuric_acid_angels, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[zinc_cathode].results =
{
    {type = item, name = zinc_cathode, amount = 16},
    {type = fluid, name = sulfur_dioxide_angels, amount = 240}, -- 480
    {type = fluid, name = hydrogen_peroxide, amount = 240}, -- 480
    --{type = fluid, name = oxygen_angels, amount = 60}, -- 120
    {type = item, name = electrode_used, amount = 1}
}
data_recipe[zinc_cathode].main_product = zinc_cathode

-- SILVER
data_item_subgroup["angels-silver"].order = k

data_item[silver_ore_bob].localised_description = show_formula and {chemical_formula, "Ag"} or nil
data_item[silver_ore_bob].order = a

data_item[silver_processed].localised_description = show_formula and {chemical_formula, "Ag"} or nil
data_item[silver_processed].order = b
data_recipe[silver_processed].icons = TWO_I(silver_ore_bob, silver_processed)
data_recipe[silver_processed].order = b
data_recipe[silver_processed].results[1].amount = 4

data_item[silver_pellet].localised_description = show_formula and {chemical_formula, "Ag"} or nil
data_item[silver_pellet].order = c
data_recipe[silver_pellet].icons = TWO_I(silver_processed, silver_pellet)
data_recipe[silver_pellet].order = c
data_recipe[silver_pellet].ingredients[1].amount = 4

data_item[silver_ingot].localised_description = show_formula and {chemical_formula, "Ag"} or nil
data_item[silver_ingot].order = d
data_recipe[silver_ingot].icons = THREE_I(silver_ore_bob, carbon_angels, silver_ingot)
data_recipe[silver_ingot].order = d
data_recipe[silver_ingot].energy_required = 8 -- Ag -C-> Ag
data_recipe[silver_ingot].ingredients =
{
    {type = item, name = silver_ore_bob, amount = 32},
    {type = item, name = carbon_angels, amount = 8}
}
data_recipe[silver_ingot].results[1].amount = 16

local silver_ingot_2 = "angels-ingot-silver-2"
data_recipe[silver_ingot_2].category = angels_chemical_smelting_2
data_recipe[silver_ingot_2].icons = THREE_D_I(silver_nitrate_I, nil, nil, silver_ingot, nitrogen_monoxide_angels, oxygen_angels)
data_recipe[silver_ingot_2].order = d_a
data_recipe[silver_ingot_2].energy_required = 8 -- AgNO₃ --> Ag + NO + O₂
data_recipe[silver_ingot_2].ingredients[1].amount = 16
data_recipe[silver_ingot_2].results =
{
    {type = item, name = silver_ingot, amount = 16},
    {type = fluid, name = nitrogen_monoxide_angels, amount = 120}, -- 240
    {type = fluid, name = oxygen_angels, amount = 120} -- 240
}

data_recipe[silver_ingot_3].icons = FOUR_THREE_I(silver_cathode, lime_angels, carbon_angels, oxygen_angels, silver_ingot, nil, limestone_angels)
data_recipe[silver_ingot_3].order = d_b
data_recipe[silver_ingot_3].energy_required = 8 -- Ag + CaO + C + O₂ --> Ag + CaCO₃
data_recipe[silver_ingot_3].ingredients =
{
    {type = item, name = silver_cathode, amount = 16},
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = carbon_angels, amount = 8},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[silver_ingot_3].results =
{
    {type = item, name = silver_ingot, amount = 16},
    {type = item, name = limestone_angels, amount = 4} -- 8
}
data_recipe[silver_ingot_3].main_product = silver_ingot

-- SILVER CHEMISTRY
data_item[silver_nitrate_I].hidden = false
data_item[silver_nitrate_I].hidden_in_factoriopedia = false
data_item[silver_nitrate_I].localised_name = {"item-name.silver-nitrate-I"}
data_item[silver_nitrate_I].localised_description = show_formula and {chemical_formula, "AgNO[font=default-tiny-bold]3[/font]"} or nil
data_item[silver_nitrate_I].subgroup = is_silver_chemistry
data_item[silver_nitrate_I].order = a
data_recipe[silver_nitrate_I].localised_name = {"item-name.silver-nitrate-I"}
data_recipe[silver_nitrate_I].category = angels_chemical_smelting_2
data_recipe[silver_nitrate_I].subgroup = is_silver_chemistry
data_recipe[silver_nitrate_I].icons = THREE_D_I(silver_processed, nil, nitric_acid_angels, silver_nitrate_I, nitrogen_dioxide_angels, water_purified_angels)
data_recipe[silver_nitrate_I].order = a
data_recipe[silver_nitrate_I].energy_required = 8 -- Ag + 2HNO₃ --> AgNO₃ + NO₂ + H₂O
data_recipe[silver_nitrate_I].ingredients[1].amount = 16
data_recipe[silver_nitrate_I].ingredients[2].amount = 480
data_recipe[silver_nitrate_I].results =
{
    {type = item, name = silver_nitrate_I, amount = 16},
    {type = fluid, name = nitrogen_dioxide_angels, amount = 120}, -- 240
    {type = fluid, name = water_purified_angels, amount = 120} -- 240
}
data_recipe[silver_nitrate_I].main_product = silver_nitrate_I

data_item[sodium_dicyanoargentate_I].localised_name = {"item-name.sodium-dicyanoargentate-I"}
data_item[sodium_dicyanoargentate_I].localised_description = show_formula and {chemical_formula, "NaAg(CN)[font=default-tiny-bold]2[/font]"} or nil
data_item[sodium_dicyanoargentate_I].subgroup = is_silver_chemistry
data_item[sodium_dicyanoargentate_I].order = b
data_recipe[sodium_dicyanoargentate_I].subgroup = is_silver_chemistry
data_recipe[sodium_dicyanoargentate_I].icons = FOUR_THREE_I(silver_pellet, sodium_cyanide_angels, water_purified_angels, oxygen_angels, sodium_dicyanoargentate_I, nil, sodium_hydroxide_angels)
data_recipe[sodium_dicyanoargentate_I].order = b
data_recipe[sodium_dicyanoargentate_I].energy_required = 8 -- 4Ag + 8NaCN + O₂ + 2H₂O --> 4NaAg(CN)₂ + 4NaOH
data_recipe[sodium_dicyanoargentate_I].ingredients =
{
    {type = item, name = silver_pellet, amount = 8},
    {type = item, name = sodium_cyanide_angels, amount = 32},
    {type = fluid, name = water_purified_angels, amount = 120},
    {type = fluid, name = oxygen_angels, amount = 60}
}
data_recipe[sodium_dicyanoargentate_I].results =
{
    {type = item, name = sodium_dicyanoargentate_I, amount = 16},
    {type = item, name = sodium_hydroxide_angels, amount = 8} -- 16
}
data_recipe[sodium_dicyanoargentate_I].main_product = sodium_dicyanoargentate_I

data_item[silver_cathode].localised_description = show_formula and {chemical_formula, "Ag"} or nil
data_item[silver_cathode].subgroup = is_silver_chemistry
data_item[silver_cathode].order = d
data_recipe[silver_cathode].category = angels_petrochem_electrolyser
data_recipe[silver_cathode].subgroup = is_silver_chemistry
data_recipe[silver_cathode].icons = FOUR_R_I(sodium_dicyanoargentate_I_solution, hydrocyanic_acid, silver_cathode, hydrogen_angels)
data_recipe[silver_cathode].order = d
data_recipe[silver_cathode].energy_required = 8 -- 2(NaAg(CN)₂ + H₂O) + 4(NaCN + H₂O) -electrode/electrolys-> 2Ag + 2Na₂O₂ + 8HCN + 2NaOH + H₂
data_recipe[silver_cathode].ingredients =
{
    {type = fluid, name = sodium_dicyanoargentate_I_solution, amount = 240},
    {type = fluid, name = sodium_cyanide_solution, amount = 480},
    {type = item, name = electrode, amount = 1}
}
data_recipe[silver_cathode].results =
{
    {type = item, name = silver_cathode, amount = 16},
    {type = item, name = sodium_peroxide, amount = 8}, -- 16
    {type = item, name = sodium_hydroxide_angels, amount = 8}, -- 16
    {type = fluid, name = hydrocyanic_acid, amount = 480}, -- 960
    {type = fluid, name = hydrogen_angels, amount = 60}, -- 120
    {type = item, name = electrode_used, amount = 1}
}
data_recipe[silver_cathode].main_product = silver_cathode

data_item[silver_oxide_I_bob].localised_name = {"item-name.silver-oxide-I"}
data_item[silver_oxide_I_bob].localised_description = show_formula and {chemical_formula, "Ag[font=default-tiny-bold]2[/font]O"} or nil
data_item[silver_oxide_I_bob].subgroup = is_silver_chemistry
data_item[silver_oxide_I_bob].order = e
data_item[silver_oxide_I_bob].stack_size = 200
data_recipe[silver_oxide_I_bob].localised_name = {"item-name.silver-oxide-I"}
data_recipe[silver_oxide_I_bob].category = angels_chemical_smelting_3
data_recipe[silver_oxide_I_bob].subgroup = is_silver_chemistry
data_recipe[silver_oxide_I_bob].icons = THREE_D_I(silver_nitrate_I, nil, sodium_hydroxide_angels, silver_oxide_I_bob, sodium_nitrate_angels, water_purified_angels)
data_recipe[silver_oxide_I_bob].order = e
data_recipe[silver_oxide_I_bob].energy_required = 8 -- 2AgNO₃ + 2NaOH(aq) --> Ag₂O + 2NaNO₃(aq) + H₂O
data_recipe[silver_oxide_I_bob].ingredients =
{
    {type = item, name = silver_nitrate_I, amount = 16},
    {type = fluid, name = sodium_hydroxide_solution_angels, amount = 240}
}
data_recipe[silver_oxide_I_bob].results =
{
    {type = item, name = silver_oxide_I_bob, amount = 8},
    {type = fluid, name = sodium_nitrate_solution, amount = 120}, -- 240
    {type = fluid, name = water_purified_angels, amount = 60} -- 120
}
data_recipe[silver_oxide_I_bob].main_product = silver_oxide_I_bob

-- TITANIUM
data_item_subgroup["angels-titanium"].order = l

data_item[titanium_ore_bob].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_item[titanium_ore_bob].order = a

data_item[titanium_processed].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_item[titanium_processed].order = b
data_recipe[titanium_processed].icons = TWO_I(titanium_ore_bob, titanium_processed)
data_recipe[titanium_processed].order = b
data_recipe[titanium_processed].results[1].amount = 4

data_item[titanium_pellet].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_item[titanium_pellet].order = c
data_recipe[titanium_pellet].icons = TWO_I(titanium_processed, titanium_pellet)
data_recipe[titanium_pellet].order = c
data_recipe[titanium_pellet].ingredients[1].amount = 4

data_item[titanium_ingot].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_item[titanium_ingot].order = d
data_recipe[titanium_ingot].icons = TWO_I(titanium_sponge, titanium_ingot)
data_recipe[titanium_ingot].order = d
data_recipe[titanium_ingot].energy_required = 8 -- Ti --> Ti
data_recipe[titanium_ingot].ingredients[1].amount = 16
data_recipe[titanium_ingot].results[1].amount = 16

data_recipe[titanium_ingot_2].icons = THREE_R_I(titanium_iodide_IV_gas, titanium_ingot, iodine_gas)
data_recipe[titanium_ingot_2].order = d_a
data_recipe[titanium_ingot_2].energy_required = 8 -- TiI₄ --> Ti + 2I₂
data_recipe[titanium_ingot_2].ingredients = {{type = fluid, name = titanium_iodide_IV_gas, amount = 240}}
data_recipe[titanium_ingot_2].results =
{
    {type = item, name = titanium_ingot, amount = 16},
    {type = fluid, name = iodine_gas, amount = 240} -- 480
}

data_item[titanium_powder].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_item[titanium_powder].order = e
data_recipe[titanium_powder].icons = TWO_I(titanium_ingot, titanium_powder)
data_recipe[titanium_powder].order = e

-- TITANIUM CHEMISTRY
data_fluid[titanium_chloride_IV].subgroup = is_titanium_chemistry
data_fluid[titanium_chloride_IV].order = a
data_recipe[titanium_chloride_IV].subgroup = is_titanium_chemistry
data_recipe[titanium_chloride_IV].icons = THREE_I(titanium_ore_bob, chlorine_angels, titanium_chloride_IV)
data_recipe[titanium_chloride_IV].order = a
-- Ti + 2Cl₂ --> TiCl₄
data_recipe[titanium_chloride_IV].ingredients =
{
    {type = item, name = titanium_ore_bob, amount = 32},
    {type = fluid, name = chlorine_angels, amount = 480}
}
data_recipe[titanium_chloride_IV].results[1].amount = 240

local titanium_chloride_IV_2 = "angels-liquid-titanium-tetrachloride-2"
data_recipe[titanium_chloride_IV_2].subgroup = is_titanium_chemistry
data_recipe[titanium_chloride_IV_2].icons = THREE_I(titanium_processed, chlorine_angels, titanium_chloride_IV)
data_recipe[titanium_chloride_IV_2].order = a_a
-- Ti + 2Cl₂ --> TiCl₄
data_recipe[titanium_chloride_IV_2].ingredients =
{
    {type = item, name = titanium_processed, amount = 16},
    {type = fluid, name = chlorine_angels, amount = 480}
}
data_recipe[titanium_chloride_IV_2].results[1].amount = 240

data_item[titanium_sponge].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_item[titanium_sponge].subgroup = is_titanium_chemistry
data_item[titanium_sponge].order = b
data_recipe[titanium_sponge].subgroup = is_titanium_chemistry
data_recipe[titanium_sponge].icons = TWO_D_I(titanium_chloride_IV, magnesium_ingot, titanium_sponge, magnesium_chloride_gas)
data_recipe[titanium_sponge].order = b
data_recipe[titanium_sponge].energy_required = 8 -- TiCl₄ + 2Mg --> Ti + 2MgCl₂(g)
data_recipe[titanium_sponge].ingredients =
{
    {type = fluid, name = titanium_chloride_IV, amount = 240},
    {type = item, name = magnesium_ingot, amount = 32}
}
data_recipe[titanium_sponge].results =
{
    {type = item, name = titanium_sponge, amount = 16},
    {type = fluid, name = magnesium_chloride_gas, amount = 240} -- 480

}
data_recipe[titanium_sponge].main_product = titanium_sponge

-- GOLD
data_item_subgroup["angels-gold"].order = m

data_item[gold_ore_bob].localised_description = show_formula and {chemical_formula, "Au"} or nil
data_item[gold_ore_bob].order = a

data_item[gold_processed].localised_description = show_formula and {chemical_formula, "Au"} or nil
data_item[gold_processed].order = b
data_recipe[gold_processed].icons = TWO_I(gold_ore_bob, gold_processed)
data_recipe[gold_processed].order = b
data_recipe[gold_processed].results[1].amount = 4

data_item[gold_pellet].localised_description = show_formula and {chemical_formula, "Au"} or nil
data_item[gold_pellet].order = c
data_recipe[gold_pellet].icons = TWO_I(gold_processed, gold_pellet)
data_recipe[gold_pellet].order = c
data_recipe[gold_pellet].ingredients[1].amount = 4

data_item[gold_ingot].localised_description = show_formula and {chemical_formula, "Au"} or nil
data_item[gold_ingot].order = d
data_recipe[gold_ingot].icons = THREE_I(gold_ore_bob, carbon_angels, gold_ingot)
data_recipe[gold_ingot].order = d
data_recipe[gold_ingot].energy_required = 8 -- Au -C-> Au
data_recipe[gold_ingot].ingredients =
{
    {type = item, name = gold_ore_bob, amount = 32},
    {type = item, name = carbon_angels, amount = 16}
}
data_recipe[gold_ingot].results[1].amount = 16

local gold_ingot_2 = "angels-ingot-gold-2"
data_recipe[gold_ingot_2].icons = FOUR_THREE_I(gold_cathode, lime_angels, carbon_angels, oxygen_angels, gold_ingot, nil, limestone_angels)
data_recipe[gold_ingot_2].order = d_a
data_recipe[gold_ingot_2].energy_required = 8 -- Au + CaO + C + O₂ --> Au + CaCO₃
data_recipe[gold_ingot_2].ingredients =
{
    {type = item, name = gold_cathode, amount = 16},
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = carbon_angels, amount = 8},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[gold_ingot_2].results =
{
    {type = item, name = gold_ingot, amount = 16},
    {type = item, name = limestone_angels, amount = 4} -- 8
}
data_recipe[gold_ingot_2].main_product = gold_ingot

data_item[gold_powder].localised_description = show_formula and {chemical_formula, "Au"} or nil
data_item[gold_powder].order = e
data_recipe[gold_powder].icons = TWO_I(gold_ingot, gold_powder)
data_recipe[gold_powder].order = e

-- GOLD CHEMISTRY
data_fluid[chlorauric_acid].localised_description = show_formula and {chemical_formula, "HAuCl[font=default-tiny-bold]4(aq)[/font]"} or nil
data_fluid[chlorauric_acid].subgroup = is_gold_chemistry
data_fluid[chlorauric_acid].order = a
data_recipe[chlorauric_acid].category = angels_advanced_chemistry
data_recipe[chlorauric_acid].subgroup = is_gold_chemistry
data_recipe[chlorauric_acid].icons = THREE_D_I(gold_processed, nitric_acid_angels, hydrochloric_acid_angels, chlorauric_acid, nitrogen_dioxide_angels, water_purified_angels)
data_recipe[chlorauric_acid].order = a
data_recipe[chlorauric_acid].energy_required = 8 -- Au + HNO₃ + 4HCl(aq) --> HAuCl₄(aq) + NO₂ + 5H₂O
data_recipe[chlorauric_acid].ingredients =
{
    {type = item, name = gold_processed, amount = 16},
    {type = fluid, name = nitric_acid_angels, amount = 240},
    {type = fluid, name = hydrochloric_acid_angels, amount = 960}
}
data_recipe[chlorauric_acid].results =
{
    {type = fluid, name = chlorauric_acid, amount = 240},
    {type = fluid, name = nitrogen_dioxide_angels, amount = 120}, -- 240
    {type = fluid, name = water_purified_angels, amount = 480} -- 1200
}
data_recipe[chlorauric_acid].main_product = chlorauric_acid

data_item[sodium_dicyanoaurate_I].localised_name = {"item-name.sodium-dicyanoaurate-I"}
data_item[sodium_dicyanoaurate_I].localised_description = show_formula and {chemical_formula, "NaAu(CN)[font=default-tiny-bold]2[/font]"} or nil
data_item[sodium_dicyanoaurate_I].subgroup = is_gold_chemistry
data_item[sodium_dicyanoaurate_I].order = b
data_recipe[sodium_dicyanoaurate_I].subgroup = is_gold_chemistry
data_recipe[sodium_dicyanoaurate_I].icons = FOUR_THREE_I(gold_pellet, sodium_cyanide_angels, water_purified_angels, oxygen_angels, sodium_dicyanoaurate_I, nil, sodium_hydroxide_angels)
data_recipe[sodium_dicyanoaurate_I].order = b
data_recipe[sodium_dicyanoaurate_I].energy_required = 8 -- 4Au + 8NaCN + O₂ + 2H₂O --> 4NaAu(CN)₂ + 4NaOH
data_recipe[sodium_dicyanoaurate_I].ingredients =
{
    {type = item, name = gold_pellet, amount = 8},
    {type = item, name = sodium_cyanide_angels, amount = 32},
    {type = fluid, name = water_purified_angels, amount = 120},
    {type = fluid, name = oxygen_angels, amount = 60}
}
data_recipe[sodium_dicyanoaurate_I].results =
{
    {type = item, name = sodium_dicyanoaurate_I, amount = 16},
    {type = item, name = sodium_hydroxide_angels, amount = 8} -- 16
}
data_recipe[sodium_dicyanoaurate_I].main_product = sodium_dicyanoaurate_I

data_item[gold_cathode].localised_description = show_formula and {chemical_formula, "Au"} or nil
data_item[gold_cathode].subgroup = is_gold_chemistry
data_item[gold_cathode].order = d
data_recipe[gold_cathode].category = angels_petrochem_electrolyser
data_recipe[gold_cathode].subgroup = is_gold_chemistry
data_recipe[gold_cathode].icons = FOUR_R_I(chlorauric_acid, hydrogen_chloride_angels, gold_cathode, hydrogen_peroxide)
data_recipe[gold_cathode].order = d
data_recipe[gold_cathode].energy_required = 8 -- 2(HAuCl₄ + H₂O) + 4(HCl + H₂O) -electrode/electrolys-> 2Au + 12HCl + 3H₂O₂
data_recipe[gold_cathode].ingredients =
{
    {type = fluid, name = chlorauric_acid, amount = 240},
    {type = fluid, name = hydrochloric_acid_angels, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[gold_cathode].results =
{
    {type = item, name = gold_cathode, amount = 16},
    {type = fluid, name = hydrogen_chloride_angels, amount = 480}, -- 1440
    {type = fluid, name = hydrogen_peroxide, amount = 120}, -- 360
    {type = item, name = electrode_used, amount = 1}
}
data_recipe[gold_cathode].main_product = gold_cathode

data_recipe[gold_cathode_2].category = angels_petrochem_electrolyser
data_recipe[gold_cathode_2].subgroup = is_gold_chemistry
data_recipe[gold_cathode_2].icons = FOUR_R_I(sodium_dicyanoaurate_I_solution, hydrocyanic_acid, gold_cathode, hydrogen_angels)
data_recipe[gold_cathode_2].order = d_a
data_recipe[gold_cathode_2].energy_required = 8 -- 2(NaAu(CN)₂ + H₂O) + 4(NaCN + H₂O) -electrode/electrolys-> 2Au + 2Na₂O₂ + 8HCN + 2NaOH + H₂
data_recipe[gold_cathode_2].ingredients =
{
    {type = fluid, name = sodium_dicyanoaurate_I_solution, amount = 240},
    {type = fluid, name = sodium_cyanide_solution, amount = 480},
    {type = item, name = electrode, amount = 1}
}
data_recipe[gold_cathode_2].results =
{
    {type = item, name = gold_cathode, amount = 16},
    {type = item, name = sodium_peroxide, amount = 8}, -- 16
    {type = item, name = sodium_hydroxide_angels, amount = 8}, -- 16
    {type = fluid, name = hydrocyanic_acid, amount = 480}, -- 960
    {type = fluid, name = hydrogen_angels, amount = 60}, -- 120
    {type = item, name = electrode_used, amount = 1}
}
data_recipe[gold_cathode_2].main_product = gold_cathode

-- COBALT
data_item_subgroup["angels-cobalt"].order = n

data_item[cobalt_ore_bob].localised_description = show_formula and {chemical_formula, "Co"} or nil
data_item[cobalt_ore_bob].order = a

data_item[cobalt_processed].localised_description = show_formula and {chemical_formula, "Co"} or nil
data_item[cobalt_processed].order = b
data_recipe[cobalt_processed].icons = TWO_I(cobalt_ore_bob, cobalt_processed)
data_recipe[cobalt_processed].order = b
data_recipe[cobalt_processed].results[1].amount = 4

data_item[cobalt_pellet].localised_description = show_formula and {chemical_formula, "Co"} or nil
data_item[cobalt_pellet].order = c
data_recipe[cobalt_pellet].icons = TWO_I(cobalt_processed, cobalt_pellet)
data_recipe[cobalt_pellet].order = c
data_recipe[cobalt_pellet].ingredients[1].amount = 4

data_item[cobalt_ingot].localised_description = show_formula and {chemical_formula, "Co"} or nil
data_item[cobalt_ingot].order = d
data_recipe[cobalt_ingot].icons = THREE_I(cobalt_ore_bob, carbon_angels, cobalt_ingot)
data_recipe[cobalt_ingot].order = d
data_recipe[cobalt_ingot].energy_required = 8 -- Co -C-> Co
data_recipe[cobalt_ingot].ingredients[1].amount = 32
data_recipe[cobalt_ingot].ingredients[2].amount = 16
data_recipe[cobalt_ingot].results[1].amount = 16

local cobalt_ingot_2 = "angels-ingot-cobalt-2"
data_recipe[cobalt_ingot_2].icons = TWO_D_I(cobalt_oxide_II_III, carbon_monoxide_angels, cobalt_ingot, carbon_dioxide_angels)
data_recipe[cobalt_ingot_2].order = d_a
data_recipe[cobalt_ingot_2].energy_required = 8 -- Co₃O₄ + 4CO -T-> 3Co + 4CO₂
data_recipe[cobalt_ingot_2].ingredients =
{
    {type = item, name = cobalt_oxide_II_III, amount = 16},
    {type = fluid, name = carbon_monoxide_angels, amount = 960}
}
data_recipe[cobalt_ingot_2].results =
{
    {type = item, name = cobalt_ingot, amount = 48},
    {type = fluid, name = carbon_dioxide_angels, amount = 480} -- 960
}

data_item[cobalt_powder].localised_description = show_formula and {chemical_formula, "Co"} or nil
data_item[cobalt_powder].order = e
data_recipe[cobalt_powder].icons = TWO_I(cobalt_ingot, cobalt_powder)
data_recipe[cobalt_powder].order = e

-- COBALT CHEMISTRY
data_item[cobalt_oxide_II_III].hidden = false
data_item[cobalt_oxide_II_III].hidden_in_factoriopedia = false
data_item[cobalt_oxide_II_III].localised_name = {"item-name.cobalt-oxide-II-III"}
data_item[cobalt_oxide_II_III].localised_description = show_formula and {chemical_formula, "Co[font=default-tiny-bold]3[/font]O[font=default-tiny-bold]4[/font]"} or nil
data_item[cobalt_oxide_II_III].subgroup = is_cobalt_chemistry
data_item[cobalt_oxide_II_III].order = a
data_recipe[cobalt_oxide_II_III].localised_name = {"item-name.cobalt-oxide-II-III"}
data_recipe[cobalt_oxide_II_III].category = angels_blast_smelting_3
data_recipe[cobalt_oxide_II_III].subgroup = is_cobalt_chemistry
data_recipe[cobalt_oxide_II_III].icons = THREE_I(cobalt_ore_bob, oxygen_angels, cobalt_oxide_II_III)
data_recipe[cobalt_oxide_II_III].order = a
data_recipe[cobalt_oxide_II_III].energy_required = 8 -- 3Co + 2O₂ -T-> Co₃O₄
data_recipe[cobalt_oxide_II_III].ingredients =
{
    {type = item, name = cobalt_ore_bob, amount = 96},
    {type = fluid, name = oxygen_angels, amount = 480}
}
data_recipe[cobalt_oxide_II_III].results = {{type = item, name = cobalt_oxide_II_III, amount = 16}}
data_recipe[cobalt_oxide_II_III].main_product = cobalt_oxide_II_III

local cobalt_oxide_II_III_2 = "angels-solid-cobalt-oxide-2"
data_recipe[cobalt_oxide_II_III_2].localised_name = {"item-name.cobalt-oxide-II-III"}
data_recipe[cobalt_oxide_II_III_2].category = angels_blast_smelting_4
data_recipe[cobalt_oxide_II_III_2].subgroup = is_cobalt_chemistry
data_recipe[cobalt_oxide_II_III_2].icons = THREE_I(cobalt_processed, oxygen_angels, cobalt_oxide_II_III)
data_recipe[cobalt_oxide_II_III_2].order = a_a
data_recipe[cobalt_oxide_II_III_2].energy_required = 8 -- 3Co + 2O₂ -T-> Co₃O₄
data_recipe[cobalt_oxide_II_III_2].ingredients =
{
    {type = item, name = cobalt_processed, amount = 48},
    {type = fluid, name = oxygen_angels, amount = 480}
}
data_recipe[cobalt_oxide_II_III_2].results = {{type = item, name = cobalt_oxide_II_III, amount = 16}}

data_recipe[cobalt_oxide_II_III_3].localised_name = {"item-name.cobalt-oxide-II-III"}
data_recipe[cobalt_oxide_II_III_3].category = angels_blast_smelting_4
data_recipe[cobalt_oxide_II_III_3].subgroup = is_cobalt_chemistry
data_recipe[cobalt_oxide_II_III_3].icons = TWO_D_I(cobalt_hydroxide_II, oxygen_angels, cobalt_oxide_II_III, steam)
data_recipe[cobalt_oxide_II_III_3].order = a_b
data_recipe[cobalt_oxide_II_III_3].energy_required = 8 -- 6Co(OH)₂ + O₂ -T-> 2Co₃O₄ + 6H₂O
data_recipe[cobalt_oxide_II_III_3].ingredients =
{
    {type = item, name = cobalt_hydroxide_II, amount = 48},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[cobalt_oxide_II_III_3].results =
{
    {type = item, name = cobalt_oxide_II_III, amount = 16},
    {type = fluid, name = steam, amount = 240} -- 720
}

data_item[cobalt_hydroxide_II].localised_name = {"item-name.cobalt-hydroxide-II"}
data_item[cobalt_hydroxide_II].localised_description = show_formula and {chemical_formula, "Co(OH)[font=default-tiny-bold]2[/font]"} or nil
data_item[cobalt_hydroxide_II].subgroup = is_cobalt_chemistry
data_item[cobalt_hydroxide_II].order = c
data_recipe[cobalt_hydroxide_II].category = angels_chemical_smelting_4
data_recipe[cobalt_hydroxide_II].subgroup = is_cobalt_chemistry
data_recipe[cobalt_hydroxide_II].icons = THREE_D_I(cobalt_chloride_II_solution, nil, sodium_hydroxide_solution_angels, cobalt_hydroxide_II, sodium_chloride_solution, water_purified_angels)
data_recipe[cobalt_hydroxide_II].order = c
data_recipe[cobalt_hydroxide_II].energy_required = 8 -- CoCl₂(aq) + 2NaOH(aq) --> Co(OH)₂ + 2NaCl(aq) + H₂O
data_recipe[cobalt_hydroxide_II].ingredients =
{
    {type = fluid, name = cobalt_chloride_II_solution, amount = 240},
    {type = fluid, name = sodium_hydroxide_solution_angels, amount = 480}
}
data_recipe[cobalt_hydroxide_II].results =
{
    {type = item, name = cobalt_hydroxide_II, amount = 16},
    {type = fluid, name = sodium_chloride_solution, amount = 240}, -- 480
    {type = fluid, name = water_purified_angels, amount = 120} -- 240
}
data_recipe[cobalt_hydroxide_II].main_product = cobalt_hydroxide_II

-- CHROMIUM
data_item_subgroup["angels-chrome"].order = o

data_item[chromium_ore_angels].localised_name = {"item-name.chromium-ore"}
data_item[chromium_ore_angels].localised_description = show_formula and {chemical_formula, "Cr"} or nil
data_item[chromium_ore_angels].order = a

data_item[chromium_processed].localised_name = {"item-name.chromium-processed"}
data_item[chromium_processed].localised_description = show_formula and {chemical_formula, "Cr"} or nil
data_item[chromium_processed].order = b
data_recipe[chromium_processed].icons = TWO_I(chromium_ore_angels, chromium_processed)
data_recipe[chromium_processed].order = b
data_recipe[chromium_processed].results[1].amount = 4

data_item[chromium_pellet].localised_name = {"item-name.chromium-pellet"}
data_item[chromium_pellet].localised_description = show_formula and {chemical_formula, "Cr"} or nil
data_item[chromium_pellet].order = c
data_recipe[chromium_pellet].icons = TWO_I(chromium_processed, chromium_pellet)
data_recipe[chromium_pellet].order = c
data_recipe[chromium_pellet].ingredients[1].amount = 4

data_item[chromium_ingot].localised_name = {"item-name.chromium-ingot"}
data_item[chromium_ingot].localised_description = show_formula and {chemical_formula, "Cr"} or nil
data_item[chromium_ingot].order = d
data_recipe[chromium_ingot].category = angels_blast_smelting_4
data_recipe[chromium_ingot].icons = FOUR_THREE_I(chromium_cathode, lime_angels, carbon_angels, oxygen_angels, chromium_ingot, nil, limestone_angels)
data_recipe[chromium_ingot].order = d
data_recipe[chromium_ingot].energy_required = 8 -- Cr + CaO + C + O₂ --> Cr + CaCO₃
data_recipe[chromium_ingot].ingredients =
{
    {type = item, name = chromium_cathode, amount = 16},
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = carbon_angels, amount = 8},
    {type = fluid, name = oxygen_angels, amount = 120}
}
data_recipe[chromium_ingot].results =
{
    {type = item, name = chromium_ingot, amount = 16},
    {type = item, name = limestone_angels, amount = 4}
}
data_recipe[chromium_ingot].main_product = chromium_ingot

data_recipe[chromium_ingot_2].localised_name = {"item-name.chromium-ingot"}
data_recipe[chromium_ingot_2].category = angels_chemical_smelting_4
data_recipe[chromium_ingot_2].icons = TWO_D_I(chromium_sulfate_II_solution, zinc_ingot, chromium_ingot, zinc_sulfate_solution)
data_recipe[chromium_ingot_2].order = d_a
data_recipe[chromium_ingot_2].energy_required = 8 -- CrSO₄(aq) + Zn --> Cr + ZnSO₄(aq)
data_recipe[chromium_ingot_2].ingredients =
{
    {type = fluid, name = chromium_sulfate_II_solution, amount = 240},
    {type = item, name = zinc_ingot, amount = 16}
}
data_recipe[chromium_ingot_2].results =
{
    {type = item, name = chromium_ingot, amount = 16},
    {type = fluid, name = zinc_sulfate_solution, amount = 120} -- 240
}
data_recipe[chromium_ingot_2].main_product = chromium_ingot

data_recipe[chromium_ingot_3].localised_name = {"item-name.chromium-ingot"}
data_recipe[chromium_ingot_3].category = angels_blast_smelting_4
data_recipe[chromium_ingot_3].icons = THREE_D_I(chromium_hydroxide_III, nil, aluminium_ingot, chromium_ingot, aluminium_oxide, steam)
data_recipe[chromium_ingot_3].order = d_b
data_recipe[chromium_ingot_3].energy_required = 8 -- 2Cr(OH)₃ + 2Al --> 2Cr + Al₂O₃ + 3H₂O
data_recipe[chromium_ingot_3].ingredients =
{
    {type = item, name = chromium_hydroxide_III, amount = 16},
    {type = item, name = aluminium_ingot, amount = 16}
}
data_recipe[chromium_ingot_3].results =
{
    {type = item, name = chromium_ingot, amount = 16},
    {type = item, name = aluminium_oxide, amount = 4}, -- 8
    {type = fluid, name = steam, amount = 120} -- 360
}
data_recipe[chromium_ingot_3].main_product = chromium_ingot

-- CHROMIUM CHEMISTRY
data_item[chromium_oxide_III].localised_name = {"item-name.chromium-oxide-III"}
data_item[chromium_oxide_III].localised_description = show_formula and {chemical_formula, "Cr[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil
data_item[chromium_oxide_III].subgroup = is_chromium_chemistry
data_item[chromium_oxide_III].order = e
data_recipe[chromium_oxide_III].category = angels_blast_smelting_4
data_recipe[chromium_oxide_III].subgroup = is_chromium_chemistry
data_recipe[chromium_oxide_III].icons = THREE_I(chromium_pellet, oxygen_angels, chromium_oxide_III)
data_recipe[chromium_oxide_III].order = e
data_recipe[chromium_oxide_III].energy_required = 8 -- 4Сr + 3O₂ --> 2Cr₂O₃
data_recipe[chromium_oxide_III].ingredients =
{
    {type = item, name = chromium_pellet, amount = 16},
    {type = fluid, name = oxygen_angels, amount = 180}
}
data_recipe[chromium_oxide_III].results = {{type = item, name = chromium_oxide_III, amount = 16}}
data_recipe[chromium_oxide_III].main_product = chromium_oxide_III

data_item[chromium_sulfate_III].localised_name = {"item-name.chromium-sulfate-III"}
data_item[chromium_sulfate_III].localised_description = show_formula and {chemical_formula, "Cr[font=default-tiny-bold]2[/font](SO[font=default-tiny-bold]4[/font])[font=default-tiny-bold]3[/font]"} or nil
data_item[chromium_sulfate_III].subgroup = is_chromium_chemistry
data_item[chromium_sulfate_III].order = h
data_recipe[chromium_sulfate_III].category = angels_advanced_chemistry
data_recipe[chromium_sulfate_III].subgroup = is_chromium_chemistry
data_recipe[chromium_sulfate_III].icons = FOUR_THREE_R_I(potassium_dichromate_solution, ethanol_angels, sulfuric_acid_angels, chromium_sulfate_III, acetaldehyde, water_purified_angels, potassium_sulfate_solution)
data_recipe[chromium_sulfate_III].order = h
data_recipe[chromium_sulfate_III].energy_required = 8 -- K₂Cr₂O₇(aq) + 3C₂H₆O + 4H₂SO₄ --> Cr₂(SO₄)₃ + 3C₂H₄O + 7H₂O + K₂SO₄(aq)
data_recipe[chromium_sulfate_III].ingredients =
{
    {type = fluid, name = potassium_dichromate_solution, amount = 240},
    {type = fluid, name = ethanol_angels, amount = 720},
    {type = fluid, name = sulfuric_acid_angels, amount = 960}
}
data_recipe[chromium_sulfate_III].results =
{
    {type = item, name = chromium_sulfate_III, amount = 16},
    {type = fluid, name = acetaldehyde, amount = 240}, -- 720
    {type = fluid, name = water_purified_angels, amount = 480}, -- 1680
    {type = fluid, name = potassium_sulfate_solution, amount = 120} -- 240
}
data_recipe[chromium_sulfate_III].main_product = chromium_sulfate_III

data_item[chromium_hydroxide_III].localised_name = {"item-name.chromium-hydroxide-III"}
data_item[chromium_hydroxide_III].localised_description = show_formula and {chemical_formula, "Cr(OH)[font=default-tiny-bold]3[/font]"} or nil
data_item[chromium_hydroxide_III].subgroup = is_chromium_chemistry
data_item[chromium_hydroxide_III].order = i
data_recipe[chromium_hydroxide_III].category = angels_chemical_smelting_4
data_recipe[chromium_hydroxide_III].subgroup = is_chromium_chemistry
data_recipe[chromium_hydroxide_III].icons = THREE_D_I(chromium_sulfate_III, nil, potassium_hydroxide_solution, chromium_hydroxide_III, potassium_sulfate_solution, water_purified_angels)
data_recipe[chromium_hydroxide_III].order = i
data_recipe[chromium_hydroxide_III].energy_required = 4 -- Cr₂(SO₄)₃ + 6KOH(aq) --> 2Cr(OH)₃ + 3K₂SO₄(aq) + (3H₂O = aq)
data_recipe[chromium_hydroxide_III].ingredients =
{
    {type = item, name = chromium_sulfate_III, amount = 8},
    {type = fluid, name = potassium_hydroxide_solution, amount = 720}
}
data_recipe[chromium_hydroxide_III].results =
{
    {type = item, name = chromium_hydroxide_III, amount = 16},
    {type = fluid, name = potassium_sulfate_solution, amount = 120}, -- 360
    {type = fluid, name = water_purified_angels, amount = 120} -- 360
}
data_recipe[chromium_hydroxide_III].main_product = chromium_hydroxide_III

-- TUNGSTEN
data_item_subgroup[is_tungsten].order = p

data_item[tungsten_ore_bob].localised_description = show_formula and {chemical_formula, "W"} or nil
data_item[tungsten_ore_bob].order = a

data_item[tungsten_processed].localised_description = show_formula and {chemical_formula, "W"} or nil
data_item[tungsten_processed].order = b
data_recipe[tungsten_processed].icons = TWO_I(tungsten_ore_bob, tungsten_processed)
data_recipe[tungsten_processed].order = b
data_recipe[tungsten_processed].ingredients[1].name = tungsten_ore_bob
data_recipe[tungsten_processed].results[1].amount = 4

data_item[tungsten_pellet].localised_description = show_formula and {chemical_formula, "W"} or nil
data_item[tungsten_pellet].order = c
data_recipe[tungsten_pellet].icons = TWO_I(tungsten_processed, tungsten_pellet)
data_recipe[tungsten_pellet].order = c
data_recipe[tungsten_pellet].ingredients[1].amount = 4

data_item[tungsten_powder].hidden = false
data_item[tungsten_powder].hidden_in_factoriopedia = false
data_item[tungsten_powder].localised_description = show_formula and {chemical_formula, "W"} or nil
data_item[tungsten_powder].stack_size = 200
data_item[tungsten_powder].order = d
data_recipe[tungsten_powder].category = angels_chemical_smelting_3
data_recipe[tungsten_powder].icons = THREE_D_I(tungsten_fluoride_VI_gas, nil, silane_gas, tungsten_powder, silicon_fluoride_IV_gas, hydrogen_angels)
data_recipe[tungsten_powder].order = d
data_recipe[tungsten_powder].energy_required = 8 -- 2WF₆ + 3SiH₄ --> 2W + 3SiF₄ + 6H₂
data_recipe[tungsten_powder].ingredients =
{
    {type = fluid, name = tungsten_fluoride_VI_gas, amount = 240},
    {type = fluid, name = silane_gas, amount = 360}
}
data_recipe[tungsten_powder].results =
{
    {type = item, name = tungsten_powder, amount = 16},
    {type = fluid, name = silicon_fluoride_IV_gas, amount = 120}, -- 360
    {type = fluid, name = hydrogen_angels, amount = 240} -- 720
}
data_recipe[tungsten_powder].main_product = tungsten_powder

-- TUNGSTEN CHEMISTRY
data_item[tungsten_oxide_VI].hidden = false
data_item[tungsten_oxide_VI].hidden_in_factoriopedia = false
data_item[tungsten_oxide_VI].localised_name = {"item-name.tungsten-oxide-VI"}
data_item[tungsten_oxide_VI].localised_description = show_formula and {chemical_formula, "WO[font=default-tiny-bold]3[/font]"} or nil
data_item[tungsten_oxide_VI].stack_size = 200
data_item[tungsten_oxide_VI].subgroup = is_tungsten_chemistry
data_item[tungsten_oxide_VI].order = a
data_recipe[tungsten_oxide_VI].localised_name = {"item-name.tungsten-oxide-VI"}
data_recipe[tungsten_oxide_VI].subgroup = is_tungsten_chemistry
data_recipe[tungsten_oxide_VI].icons = THREE_I(tungsten_ore_bob, oxygen_angels, tungsten_oxide_VI)
data_recipe[tungsten_oxide_VI].order = a
data_recipe[tungsten_oxide_VI].energy_required = 8 -- 2W + 3O₂ --> 2WO₃
data_recipe[tungsten_oxide_VI].ingredients =
{
    {type = item, name = tungsten_ore_bob, amount = 32},
    {type = fluid, name = oxygen_angels, amount = 360}
}
data_recipe[tungsten_oxide_VI].results[1].amount = 16
data_recipe[tungsten_oxide_VI].main_product = tungsten_oxide_VI

data_recipe[tungsten_oxide_VI_2].localised_name = {"item-name.tungsten-oxide-VI"}
data_recipe[tungsten_oxide_VI_2].category = angels_chemical_smelting_4
data_recipe[tungsten_oxide_VI_2].subgroup = is_tungsten_chemistry
data_recipe[tungsten_oxide_VI_2].icons = THREE_D_I(ammonium_paratungstate, nil, nil, tungsten_oxide_VI, ammonia_angels, steam)
data_recipe[tungsten_oxide_VI_2].order = a_a
data_recipe[tungsten_oxide_VI_2].energy_required = 8 -- (NH₄)₁₀H₂W₁₂O₄₂ --> 12WO₃ + 10NH₃ + 6H₂O
data_recipe[tungsten_oxide_VI_2].ingredients = {{type = item, name = ammonium_paratungstate, amount = 1}}
data_recipe[tungsten_oxide_VI_2].results =
{
    {type = item, name = tungsten_oxide_VI, amount = 16}, -- 12
    {type = fluid, name = ammonia_angels, amount = 120}, -- 150 / 240
    {type = fluid, name = steam, amount = 60} -- 90 / 120
}

data_fluid[tungsten_fluoride_VI_gas].subgroup = is_tungsten_chemistry
data_fluid[tungsten_fluoride_VI_gas].order = b
data_recipe[tungsten_fluoride_VI_gas].category = angels_chemical_smelting_3
data_recipe[tungsten_fluoride_VI_gas].subgroup = is_tungsten_chemistry
data_recipe[tungsten_fluoride_VI_gas].icons = TWO_D_I(tungsten_oxide_VI, hydrogen_fluoride_angels, tungsten_fluoride_VI_gas, water_purified_angels)
data_recipe[tungsten_fluoride_VI_gas].order = b
data_recipe[tungsten_fluoride_VI_gas].energy_required = 4 -- WO₃ + 6HF --> WF₆ + 3H₂O
data_recipe[tungsten_fluoride_VI_gas].ingredients =
{
    {type = item, name = tungsten_oxide_VI, amount = 8},
    {type = fluid, name = hydrogen_fluoride_angels, amount = 720}
}
data_recipe[tungsten_fluoride_VI_gas].results =
{
    {type = fluid, name = tungsten_fluoride_VI_gas, amount = 120},
    {type = fluid, name = water_purified_angels, amount = 120} -- 360
}
data_recipe[tungsten_fluoride_VI_gas].main_product = tungsten_fluoride_VI_gas

data_item[ammonium_paratungstate].localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]4[/font])[font=default-tiny-bold]10[/font]H[font=default-tiny-bold]2[/font]W[font=default-tiny-bold]12[/font]O[font=default-tiny-bold]42[/font]"} or nil
data_item[ammonium_paratungstate].subgroup = is_tungsten_chemistry
data_item[ammonium_paratungstate].order = c
data_recipe[ammonium_paratungstate].category = angels_advanced_chemistry
data_recipe[ammonium_paratungstate].subgroup = is_tungsten_chemistry
data_recipe[ammonium_paratungstate].icons = FOUR_D_I(tungsten_processed, carbon_angels, ammonia_angels, water_purified_angels, ammonium_paratungstate)
data_recipe[ammonium_paratungstate].order = c
data_recipe[ammonium_paratungstate].energy_required = 8 -- 12W + 18O₂ + 10NH₃ + 6H₂O --> (NH₄)₁₀H₂W₁₂O₄₂
data_recipe[ammonium_paratungstate].ingredients =
{
    {type = item, name = tungsten_processed, amount = 16}, -- 12
    {type = fluid, name = oxygen_angels, amount = 360}, -- 270
    {type = fluid, name = ammonia_angels, amount = 240}, -- 150
    {type = fluid, name = water_purified_angels, amount = 120} -- 90
}
data_recipe[ammonium_paratungstate].results = {{type = item, name = ammonium_paratungstate, amount = 1}}
data_recipe[ammonium_paratungstate].main_product = ammonium_paratungstate

data_recipe[ammonium_paratungstate_2].subgroup = is_tungsten_chemistry
data_recipe[ammonium_paratungstate_2].icons = THREE_D_I(ammonium_tungstate_solution, nil, nil, ammonium_paratungstate, ammonia_angels, water_purified_angels)
data_recipe[ammonium_paratungstate_2].order = c_a
data_recipe[ammonium_paratungstate_2].energy_required = 8 -- 12(NH₄)₂WO₄(aq) --> (NH₄)₁₀H₂W₁₂O₄₂ + 14NH₃ + 6H₂O + 12H₂O
data_recipe[ammonium_paratungstate_2].ingredients = {{type = fluid, name = ammonium_tungstate_solution, amount = 240}} -- 180
data_recipe[ammonium_paratungstate_2].results =
{
    {type = item, name = ammonium_paratungstate, amount = 1},
    {type = fluid, name = ammonia_angels, amount = 120}, -- 210 / 240
    {type = fluid, name = water_purified_angels, amount = 120} -- 270 / 360
}
data_recipe[ammonium_paratungstate_2].main_product = ammonium_paratungstate

data_fluid[ammonium_tungstate_solution].localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]WO[font=default-tiny-bold]4(aq)[/font]"} or nil
data_fluid[ammonium_tungstate_solution].subgroup = is_tungsten_chemistry
data_fluid[ammonium_tungstate_solution].order = f
data_recipe[ammonium_tungstate_solution].category =  angels_chemical_smelting_4
data_recipe[ammonium_tungstate_solution].subgroup = is_tungsten_chemistry
data_recipe[ammonium_tungstate_solution].icons = THREE_D_I(tungstic_acid, ammonia_angels, water_purified_angels, ammonium_tungstate_solution)
data_recipe[ammonium_tungstate_solution].order = f
data_recipe[ammonium_tungstate_solution].energy_required = 8 -- H₂WO₄ + 2NH₃ + H₂O --> (NH₄)₂WO₄(aq)
data_recipe[ammonium_tungstate_solution].ingredients =
{
    {type = item, name = tungstic_acid, amount = 16},
    {type = fluid, name = ammonia_angels, amount = 480},
    {type = fluid, name = water_purified_angels, amount = 240}
}
data_recipe[ammonium_tungstate_solution].results = {{type = fluid, name = ammonium_tungstate_solution, amount = 240}}
data_recipe[ammonium_tungstate_solution].main_product = ammonium_tungstate_solution

-- PLATINUM
data_item_subgroup["angels-platinum"].order = q

data_item[platinum_ore_angels].localised_description = show_formula and {chemical_formula, "Pt"} or nil
data_item[platinum_ore_angels].order = a

data_item[platinum_processed].localised_description = show_formula and {chemical_formula, "Pt"} or nil
data_item[platinum_processed].order = b

data_item[platinum_pellet].localised_description = show_formula and {chemical_formula, "Pt"} or nil
data_item[platinum_pellet].order = c

data_item[platinum_ingot].localised_description = show_formula and {chemical_formula, "Pt"} or nil
data_item[platinum_ingot].order = d

-- PLATINUM CHEMISTRY
data_fluid[hexachloroplatinic_acid].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]PtCl[font=default-tiny-bold]6(aq)[/font]"} or nil
data_fluid[hexachloroplatinic_acid].subgroup = is_platinum_chemistry
data_fluid[hexachloroplatinic_acid].order = c

data_item[ammonium_hexachloroplatinate_IV].localised_name = {"item-name.ammonium-hexachloroplatinate-IV"}
data_item[ammonium_hexachloroplatinate_IV].localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]PtCl[font=default-tiny-bold]6[/font]"} or nil
data_item[ammonium_hexachloroplatinate_IV].subgroup = is_platinum_chemistry
data_item[ammonium_hexachloroplatinate_IV].order = d

-- LITHIUM
data_item_subgroup[is_alloys].order = t

data_item[lithium_perchlorate_bob].localised_description = show_formula and {chemical_formula, "LiClO[font=default-tiny-bold]4[/font]"} or nil
data_item[lithium_perchlorate_bob].order = d
data_recipe[lithium_perchlorate_bob].category = chemistry
data_recipe[lithium_perchlorate_bob].icons = THREE_R_I(lithium_perchlorate_solution, lithium_perchlorate_bob, steam)
data_recipe[lithium_perchlorate_bob].order = d
data_recipe[lithium_perchlorate_bob].energy_required = 4 -- LiClO₄(aq) --> LiClO₄ + H₂O
data_recipe[lithium_perchlorate_bob].ingredients = {{type = fluid, name = lithium_perchlorate_solution, amount = 60}}
data_recipe[lithium_perchlorate_bob].results =
{
    {type = item, name = lithium_perchlorate_bob, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[lithium_perchlorate_bob].main_product = lithium_perchlorate_bob

data_item[lithium_cobalt_oxide_III_bob].localised_name = {"item-name.lithium-cobalt-oxide-III"}
data_item[lithium_cobalt_oxide_III_bob].localised_description = show_formula and {chemical_formula, "LiCoO[font=default-tiny-bold]2[/font]"} or nil
data_item[lithium_cobalt_oxide_III_bob].order = e
data_recipe[lithium_cobalt_oxide_III_bob].category = chemistry
data_recipe[lithium_cobalt_oxide_III_bob].icons = THREE_D_I(cobalt_oxide_II_III, lithium_bob, oxygen_angels, lithium_cobalt_oxide_III_bob)
data_recipe[lithium_cobalt_oxide_III_bob].order = e
data_recipe[lithium_cobalt_oxide_III_bob].energy_required = 4 -- Co₃O₄ + 3Li + O₂ --> 3LiCoO₂
data_recipe[lithium_cobalt_oxide_III_bob].ingredients =
{
    {type = item, name = cobalt_oxide_II_III, amount = 4},
    {type = item, name = lithium_bob, amount = 12},
    {type = fluid, name = oxygen_angels, amount = 60}
}
data_recipe[lithium_cobalt_oxide_III_bob].results[1].amount = 12

data_item[lithium_bob].localised_description = show_formula and {chemical_formula, "Li"} or nil
data_item[lithium_bob].order = f
data_recipe[lithium_bob].category = angels_petrochem_electrolyser
data_recipe[lithium_bob].icons = FOUR_R_I(lithium_chloride_solution, hydrogen_chloride_angels, lithium_bob, hydrogen_peroxide)
data_recipe[lithium_bob].order = f
data_recipe[lithium_bob].allow_productivity = false
data_recipe[lithium_bob].energy_required = 8 -- 2(LiCl + H₂O) -electrode/electrolys-> 2Li + 2HCl + H₂O₂
data_recipe[lithium_bob].ingredients =
{
    {type = fluid, name = lithium_chloride_solution, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[lithium_bob].results =
{
    {type = item, name = lithium_bob, amount = 16},
    {type = fluid, name = hydrogen_chloride_angels, amount = 120}, -- 240
    {type = fluid, name = hydrogen_peroxide, amount = 60}, -- 120
    {type = item, name = electrode_used, amount = 1}
}
data_recipe[lithium_bob].main_product = lithium_bob

-- GLASS
data_item_subgroup["angels-glass"].order = x

data_recipe[glass_mixture].icons = TWO_I(silicon_oxide_IV, glass_mixture, number_1)
data_recipe[glass_mixture].energy_required = 8 -- 2 = 1
data_recipe[glass_mixture].ingredients[1].name = silicon_oxide_IV
data_recipe[glass_mixture].results[1].amount = 1

data_recipe[glass_mixture_2].icons = TWO_D_I(silicon_oxide_IV, lead_oxide_II, glass_mixture, nil, number_2)
data_recipe[glass_mixture_2].energy_required = 8 -- 4 = 4
data_recipe[glass_mixture_2].ingredients[1].name = silicon_oxide_IV
data_recipe[glass_mixture_2].ingredients[1].amount = 2
data_recipe[glass_mixture_2].ingredients[2].name = lead_oxide_II
data_recipe[glass_mixture_2].ingredients[2].amount = 2
data_recipe[glass_mixture_2].results[1].amount = 4

data_recipe[glass_mixture_3].icons = THREE_D_I(silicon_oxide_IV, aluminium_oxide, lead_oxide_II, glass_mixture, nil, nil, number_3)
data_recipe[glass_mixture_3].energy_required = 8 -- 6 = 8
data_recipe[glass_mixture_3].ingredients[1].name = silicon_oxide_IV
data_recipe[glass_mixture_3].ingredients[1].amount = 2
data_recipe[glass_mixture_3].ingredients[2].name = lead_oxide_II
data_recipe[glass_mixture_3].ingredients[2].amount = 2
data_recipe[glass_mixture_3].ingredients[3].amount = 2
data_recipe[glass_mixture_3].results[1].amount = 8

data_recipe[glass_mixture_4].icons = FOUR_D_I(sand_angels, sodium_sulfate_angels, sodium_carbonate_angels, limestone_angels, glass_mixture)
data_recipe[glass_mixture_4].energy_required = 8 -- 70%SiO₂ + 15%Na₂CO₃ + 10%CaCO₃ + 5%Na₂SO₄ / 12 = 16
data_recipe[glass_mixture_4].ingredients =
{
    {type = item, name = sand_angels, amount = 4},
    {type = item, name = sodium_sulfate_angels, amount = 1},
    {type = item, name = sodium_carbonate_angels, amount = 1},
    {type = item, name = limestone_angels, amount = 4}
}
data_recipe[glass_mixture_4].results[1].amount = 16

-- STONE
data_item_subgroup["angels-stone"].order = y

data_item[cement].order = a
data_recipe[cement].icons = THREE_D_I(lime_angels, silicon_oxide_IV, slag_angels, cement, nil, nil, number_1)
data_recipe[cement].order = a
data_recipe[cement].energy_required = 16
data_recipe[cement].ingredients =
{
    {type = item, name = lime_angels, amount = 2},
    {type = item, name = silicon_oxide_IV, amount = 1},
    {type = item, name = slag_angels, amount = 1}
}
data_recipe[cement].results[1].amount = 4

data_recipe[cement_2].icons = TWO_FIVE_I(lime_angels, silicon_oxide_IV, nil, aluminium_oxide, titanium_oxide_IV, iron_oxide_III, cement, number_2)
data_recipe[cement_2].order = a_a -- 67,5CaO + 20%SiO₂ + 5%Al₂O₃ + 5%TiO₂ + 2,5%Fe₂O₃
data_recipe[cement_2].energy_required = 32
data_recipe[cement_2].ingredients =
{
    {type = item, name = lime_angels, amount = 16},
    {type = item, name = silicon_oxide_IV, amount = 8},
    {type = item, name = aluminium_oxide, amount = 2},
    {type = item, name = titanium_oxide_IV, amount = 2},
    {type = item, name = iron_oxide_III, amount = 1}
}
data_recipe[cement_2].results[1].amount = 64