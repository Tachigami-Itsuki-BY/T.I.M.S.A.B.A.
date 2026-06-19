-- IRON and STEEL
data_item_subgroup["angels-iron-casting"].order = a

data_fluid[iron_molten_angels].localised_description = show_formula and {chemical_formula, "Fe"} or nil
data_fluid[iron_molten_angels].order = a
data_recipe[iron_molten_angels].icons = TWO_I(iron_ingot, iron_molten_angels, number_1)
data_recipe[iron_molten_angels].order = a
data_recipe[iron_molten_angels].energy_required = 8
data_recipe[iron_molten_angels].ingredients[1].amount = 16
data_recipe[iron_molten_angels].results[1].amount = 240

data_recipe[iron_molten_2].category = angels_induction_smelting_2
data_recipe[iron_molten_2].icons = TWO_I(iron_ingot, iron_molten_angels, number_2)
data_recipe[iron_molten_2].order = a_a
data_recipe[iron_molten_2].energy_required = 8
data_recipe[iron_molten_2].ingredients =
{
    {type = item, name = iron_ingot, amount = 16},
    {type = item, name = manganese_ingot, amount = 8},
    {type = item, name = magnesium_ingot, amount = 8}
}
data_recipe[iron_molten_2].results[1].amount = 480

data_item[iron_roll].localised_description = show_formula and {chemical_formula, "Fe"} or nil
data_item[iron_roll].order = b
data_recipe[iron_roll].icons = TWO_I(iron_molten_angels, iron_roll, number_1)
data_recipe[iron_roll].order = b
data_recipe[iron_roll].energy_required = 8
data_recipe[iron_roll].ingredients[1].amount = 240
data_recipe[iron_roll].ingredients[2].name = water_purified_angels
data_recipe[iron_roll].ingredients[2].amount = 120
data_recipe[iron_roll].results =
{
    {type = item, name = iron_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[iron_roll].main_product = iron_roll

data_recipe[iron_roll_2].icons = TWO_I(iron_molten_angels, iron_roll, number_2)
data_recipe[iron_roll_2].order = b_a
data_recipe[iron_roll_2].energy_required = 4
data_recipe[iron_roll_2].ingredients[1].amount = 240
data_recipe[iron_roll_2].ingredients[2].amount = 120
data_recipe[iron_roll_2].results[1].amount = 8
data_recipe[iron_roll_2].results[2].amount = 60

data_item[iron_plate].localised_description = show_formula and {chemical_formula, "Fe"} or nil
data_item[iron_plate].order = c
data_recipe[iron_plate].icons = TWO_I(crushed_saphirite, iron_plate)
data_recipe[iron_plate].order = c
data_recipe[iron_plate].energy_required = 8
data_recipe[iron_plate].ingredients[1].amount = 4
data_recipe[iron_plate].results[1].amount = 2

local iron_plate_angels = "angels-plate-iron"
data_recipe[iron_plate_angels].icons = TWO_I(iron_molten_angels, iron_plate)
data_recipe[iron_plate_angels].order = c_a
data_recipe[iron_plate_angels].ingredients[1].amount = 60

data_recipe[iron_plate_2].icons = TWO_I(iron_roll, iron_plate)
data_recipe[iron_plate_2].order = c_b
data_recipe[iron_plate_2].energy_required = 4

data_item[iron_rod].localised_description = show_formula and {chemical_formula, "Fe"} or nil
data_item[iron_rod].order = d
data_recipe[iron_rod].icons = TWO_I(iron_plate, iron_rod)
data_recipe[iron_rod].order = d
data_recipe[iron_rod].energy_required = 1

data_item_subgroup["angels-steel-casting"].order = a_a

data_fluid[steel_molten_angels].localised_description = show_formula and {chemical_formula, "Fe"} or nil
data_fluid[steel_molten_angels].order = a
data_recipe[steel_molten_angels].icons = TWO_I(steel_ingot, steel_molten_angels, number_1)
data_recipe[steel_molten_angels].order = a
data_recipe[steel_molten_angels].energy_required = 8
data_recipe[steel_molten_angels].ingredients[1].amount = 16
data_recipe[steel_molten_angels].results[1].amount = 240

data_recipe[steel_molten_2].icons = TWO_I(steel_ingot, steel_molten_angels, number_2)
data_recipe[steel_molten_2].order = a_a
data_recipe[steel_molten_2].energy_required = 8
data_recipe[steel_molten_2].ingredients =
{
    {type = item, name = steel_ingot, amount = 16},
    {type = item, name = manganese_ingot, amount = 8},
    {type = item, name = magnesium_ingot, amount = 8}
}
data_recipe[steel_molten_2].results[1].amount = 480

data_item[steel_roll].localised_description = show_formula and {chemical_formula, "FeC"} or nil
data_item[steel_roll].order = b
data_recipe[steel_roll].icons = TWO_I(steel_molten_angels, steel_roll, number_1)
data_recipe[steel_roll].order = b
data_recipe[steel_roll].energy_required = 8
data_recipe[steel_roll].ingredients[1].amount = 240
data_recipe[steel_roll].ingredients[2].name = water_purified_angels
data_recipe[steel_roll].ingredients[2].amount = 120
data_recipe[steel_roll].results =
{
    {type = item, name = steel_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[steel_roll].main_product = steel_roll

data_recipe[steel_roll_2].icons = TWO_I(steel_molten_angels, steel_roll, number_2)
data_recipe[steel_roll_2].order = b_a
data_recipe[steel_roll_2].energy_required = 4
data_recipe[steel_roll_2].ingredients[1].amount = 240
data_recipe[steel_roll_2].ingredients[2].amount = 120
data_recipe[steel_roll_2].results[1].amount = 8
data_recipe[steel_roll_2].results[2].amount = 60

data_item[steel_plate].localised_description = show_formula and {chemical_formula, "FeC"} or nil
data_item[steel_plate].order = c

steel_plate_1 = "angels-plate-steel"
data_recipe[steel_plate_1].icons = TWO_I(steel_molten_angels, steel_plate)
data_recipe[steel_plate_1].order = c_a
data_recipe[steel_plate_1].ingredients[1].amount = 60

data_recipe[steel_plate_2].icons = TWO_I(steel_roll, steel_plate)
data_recipe[steel_plate_2].order = c_b
data_recipe[steel_plate_2].energy_required = 4

data_item[steel_rod].hidden = false
data_item[steel_rod].hidden_in_factoriopedia = false
data_item[steel_rod].localised_description = show_formula and {chemical_formula, "FeC"} or nil
data_item[steel_rod].order = d
data_recipe[steel_rod].hidden = false
data_recipe[steel_rod].hidden_in_factoriopedia = false
data_recipe[steel_rod].localised_name = data_item[steel_rod].localised_name
data_recipe[steel_rod].icons = TWO_I(steel_plate, steel_rod)
data_recipe[steel_rod].order = d
data_recipe[steel_rod].energy_required = 1
data_recipe[steel_rod].ingredients[1].amount = 1
data_recipe[steel_rod].results[1].amount = 2
data_recipe[steel_rod].enabled = false

-- COPPER
data_item_subgroup["angels-copper-casting"].order = b

data_fluid[copper_molten_angels].localised_description = show_formula and {chemical_formula, "Cu"} or nil
data_fluid[copper_molten_angels].order = a
data_recipe[copper_molten_angels].icons = TWO_I(copper_ingot, copper_molten_angels)
data_recipe[copper_molten_angels].order = a
data_recipe[copper_molten_angels].energy_required = 8
data_recipe[copper_molten_angels].ingredients[1].amount = 16
data_recipe[copper_molten_angels].results[1].amount = 240

data_item[copper_roll].localised_description = show_formula and {chemical_formula, "Cu"} or nil
data_item[copper_roll].order = b
data_recipe[copper_roll].icons = TWO_I(copper_molten_angels, copper_roll, number_1)
data_recipe[copper_roll].order = b
data_recipe[copper_roll].energy_required = 8
data_recipe[copper_roll].ingredients[1].amount = 240
data_recipe[copper_roll].ingredients[2].name = water_purified_angels
data_recipe[copper_roll].ingredients[2].amount = 120
data_recipe[copper_roll].results =
{
    {type = item, name = copper_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[copper_roll].main_product = copper_roll

local copper_roll_2 = "angels-roll-copper-2"
data_recipe[copper_roll_2].icons = TWO_I(copper_molten_angels, copper_roll, number_2)
data_recipe[copper_roll_2].order = b_a
data_recipe[copper_roll_2].energy_required = 4
data_recipe[copper_roll_2].ingredients[1].amount = 240
data_recipe[copper_roll_2].ingredients[2].amount = 120
data_recipe[copper_roll_2].results[1].amount = 8
data_recipe[copper_roll_2].results[2].amount = 60

data_item[copper_plate].localised_description = show_formula and {chemical_formula, "Cu"} or nil
data_item[copper_plate].order = c
data_recipe[copper_plate].icons = TWO_I(crushed_stiratite, copper_plate)
data_recipe[copper_plate].order = c
data_recipe[copper_plate].energy_required = 8
data_recipe[copper_plate].ingredients[1].amount = 4
data_recipe[copper_plate].results[1].amount = 2

local copper_plate_angels = "angels-plate-copper"
data_recipe[copper_plate_angels].icons = TWO_I(copper_molten_angels, copper_plate)
data_recipe[copper_plate_angels].order = c_a
data_recipe[copper_plate_angels].ingredients[1].amount = 60

local copper_plate_2 = "angels-plate-copper-2"
data_recipe[copper_plate_2].icons = TWO_I(copper_roll, copper_plate)
data_recipe[copper_plate_2].order = c_b
data_recipe[copper_plate_2].energy_required = 4

data_item[copper_wire_coil].localised_description = show_formula and {chemical_formula, "Cu"} or nil
data_item[copper_wire_coil].order = d
data_recipe[copper_wire_coil].icons = TWO_I(copper_molten_angels, copper_wire_coil, number_1)
data_recipe[copper_wire_coil].order = d
data_recipe[copper_wire_coil].energy_required = 8
data_recipe[copper_wire_coil].ingredients[1].amount = 240
data_recipe[copper_wire_coil].ingredients[2].name = water_purified_angels
data_recipe[copper_wire_coil].ingredients[2].amount = 120
data_recipe[copper_wire_coil].results =
{
    {type = item, name = copper_wire_coil, amount = 8},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[copper_wire_coil].main_product = copper_wire_coil

local copper_wire_coil_2 = "angels-wire-coil-copper-2"
data_recipe[copper_wire_coil_2].icons = TWO_I(copper_molten_angels, copper_wire_coil, number_2)
data_recipe[copper_wire_coil_2].order = d_a
data_recipe[copper_wire_coil_2].energy_required = 4
data_recipe[copper_wire_coil_2].ingredients[1].amount = 240
data_recipe[copper_wire_coil_2].ingredients[2].amount = 120
data_recipe[copper_wire_coil_2].results[1].amount = 16
data_recipe[copper_wire_coil_2].results[2].amount = 60

data_item[copper_cable].localised_description = show_formula and {chemical_formula, "Cu"} or nil
data_item[copper_cable].order = e
data_recipe[copper_cable].icons = TWO_I(copper_plate, copper_cable)
data_recipe[copper_cable].order = e
data_recipe[copper_cable].energy_required = 2
data_recipe[copper_cable].ingredients[1].amount = 4
data_recipe[copper_cable].results[1].amount = 2

local copper_wire_2 = "angels-wire-copper-2"
data_recipe[copper_wire_2].icons = TWO_I(copper_wire_coil, copper_cable)
data_recipe[copper_wire_2].order = e_a
data_recipe[copper_wire_2].energy_required = 8

-- LEAD
data_item_subgroup["angels-lead-casting"].order = c

data_fluid[lead_molten_angels].localised_description = show_formula and {chemical_formula, "Pb"} or nil
data_fluid[lead_molten_angels].order = a
data_recipe[lead_molten_angels].icons = TWO_I(lead_ingot, lead_molten_angels)
data_recipe[lead_molten_angels].order = a
data_recipe[lead_molten_angels].energy_required = 8
data_recipe[lead_molten_angels].ingredients[1].amount = 16
data_recipe[lead_molten_angels].results[1].amount = 240

data_item[lead_roll].localised_description = show_formula and {chemical_formula, "Pb"} or nil
data_item[lead_roll].order = b
data_recipe[lead_roll].icons = TWO_I(lead_molten_angels, lead_roll, number_1)
data_recipe[lead_roll].order = b
data_recipe[lead_roll].energy_required = 8
data_recipe[lead_roll].ingredients[1].amount = 240
data_recipe[lead_roll].ingredients[2].name = water_purified_angels
data_recipe[lead_roll].ingredients[2].amount = 120
data_recipe[lead_roll].results =
{
    {type = item, name = lead_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[lead_roll].main_product = lead_roll

local lead_roll_2 = "angels-roll-lead-2"
data_recipe[lead_roll_2].icons = TWO_I(lead_molten_angels, lead_roll, number_2)
data_recipe[lead_roll_2].order = b_a
data_recipe[lead_roll_2].energy_required = 4
data_recipe[lead_roll_2].ingredients[1].amount = 240
data_recipe[lead_roll_2].ingredients[2].amount = 120
data_recipe[lead_roll_2].results[1].amount = 8
data_recipe[lead_roll_2].results[2].amount = 60

data_item[lead_plate_bob].localised_description = show_formula and {chemical_formula, "Pb"} or nil
data_item[lead_plate_bob].order = c
data_recipe[lead_plate_bob].hidden = false
data_recipe[lead_plate_bob].hidden_in_factoriopedia = false
data_recipe[lead_plate_bob].localised_name = data_item[lead_plate_bob].localised_name
data_recipe[lead_plate_bob].category = smelting
data_recipe[lead_plate_bob].subgroup = "angels-lead-casting"
data_recipe[lead_plate_bob].icons = TWO_I(crushed_rubyte, lead_plate_bob)
data_recipe[lead_plate_bob].order = c
data_recipe[lead_plate_bob].energy_required = 8
data_recipe[lead_plate_bob].ingredients = {{type = item, name = crushed_rubyte, amount = 4}}
data_recipe[lead_plate_bob].results = {{type = item, name = lead_plate_bob, amount = 2}}
data_recipe[lead_plate_bob].main_product = lead_plate_bob
data_recipe[lead_plate_bob].enabled = true
data_recipe[lead_plate_bob].allow_quality = true

local lead_plate_angels = "angels-plate-lead"
data_recipe[lead_plate_angels].icons = TWO_I(lead_molten_angels, lead_plate_bob)
data_recipe[lead_plate_angels].order = c_a
data_recipe[lead_plate_angels].ingredients[1].amount = 60

local lead_plate_2 = "angels-plate-lead-2"
data_recipe[lead_plate_2].icons = TWO_I(lead_roll, lead_plate_bob)
data_recipe[lead_plate_2].order = c_b
data_recipe[lead_plate_2].energy_required = 4

-- TIN 
data_item_subgroup["angels-tin-casting"].order = d

data_fluid[tin_molten_angels].localised_description = show_formula and {chemical_formula, "Sn"} or nil
data_fluid[tin_molten_angels].order = a
data_recipe[tin_molten_angels].icons = TWO_I(tin_ingot, tin_molten_angels)
data_recipe[tin_molten_angels].order = a
data_recipe[tin_molten_angels].energy_required = 8
data_recipe[tin_molten_angels].ingredients[1].amount = 16
data_recipe[tin_molten_angels].results[1].amount = 240

data_item[tin_roll].localised_description = show_formula and {chemical_formula, "Sn"} or nil
data_item[tin_roll].order = b
data_recipe[tin_roll].icons = TWO_I(tin_molten_angels, tin_roll, number_1)
data_recipe[tin_roll].order = b
data_recipe[tin_roll].energy_required = 8
data_recipe[tin_roll].ingredients[1].amount = 240
data_recipe[tin_roll].ingredients[2].name = water_purified_angels
data_recipe[tin_roll].ingredients[2].amount = 120
data_recipe[tin_roll].results =
{
    {type = item, name = tin_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[tin_roll].main_product = tin_roll

local tin_roll_2 = "angels-roll-tin-2"
data_recipe[tin_roll_2].icons = TWO_I(tin_molten_angels, tin_roll, number_2)
data_recipe[tin_roll_2].order = b_a
data_recipe[tin_roll_2].energy_required = 4
data_recipe[tin_roll_2].ingredients[1].amount = 240
data_recipe[tin_roll_2].ingredients[2].amount = 120
data_recipe[tin_roll_2].results[1].amount = 8
data_recipe[tin_roll_2].results[2].amount = 60

data_item[tin_plate_bob].localised_description = show_formula and {chemical_formula, "Sn"} or nil
data_item[tin_plate_bob].order = c
data_recipe[tin_plate_bob].hidden = false
data_recipe[tin_plate_bob].hidden_in_factoriopedia = false
data_recipe[tin_plate_bob].localised_name = data_item[tin_plate_bob].localised_name
data_recipe[tin_plate_bob].category = smelting
data_recipe[tin_plate_bob].subgroup = "angels-tin-casting"
data_recipe[tin_plate_bob].icons = TWO_I(crushed_bobmonium, tin_plate_bob)
data_recipe[tin_plate_bob].order = c
data_recipe[tin_plate_bob].energy_required = 8
data_recipe[tin_plate_bob].ingredients = {{type = item, name = crushed_bobmonium, amount = 4}}
data_recipe[tin_plate_bob].results = {{type = item, name = tin_plate_bob, amount = 2}}
data_recipe[tin_plate_bob].main_product = tin_plate_bob
data_recipe[tin_plate_bob].enabled = true
data_recipe[tin_plate_bob].allow_quality = true

local tin_plate_angels = "angels-plate-tin"
data_recipe[tin_plate_angels].icons = TWO_I(tin_molten_angels, tin_plate_bob)
data_recipe[tin_plate_angels].order = c_a
data_recipe[tin_plate_angels].ingredients[1].amount = 60

local tin_plate_2 = "angels-plate-tin-2"
data_recipe[tin_plate_2].icons = TWO_I(tin_roll, tin_plate_bob)
data_recipe[tin_plate_2].order = c_b
data_recipe[tin_plate_2].energy_required = 4

data_item[tin_wire_coil].localised_description = show_formula and {chemical_formula, "CuSn"} or nil
data_item[tin_wire_coil].order = d
data_recipe[tin_wire_coil].icons = THREE_I(copper_molten_angels, tin_molten_angels, tin_wire_coil, number_1)
data_recipe[tin_wire_coil].order = d
data_recipe[tin_wire_coil].energy_required = 8
data_recipe[tin_wire_coil].ingredients[1].amount = 60
data_recipe[tin_wire_coil].ingredients[2].amount = 240
data_recipe[tin_wire_coil].ingredients[3].name = water_purified_angels
data_recipe[tin_wire_coil].ingredients[3].amount = 120
data_recipe[tin_wire_coil].results =
{
    {type = item, name = tin_wire_coil, amount = 8},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[tin_wire_coil].main_product = tin_wire_coil

local tin_wire_coil_2 = "angels-wire-coil-tin-2"
data_recipe[tin_wire_coil_2].icons = THREE_I(copper_molten_angels, tin_molten_angels, tin_wire_coil, number_2)
data_recipe[tin_wire_coil_2].order = d_a
data_recipe[tin_wire_coil_2].energy_required = 4
data_recipe[tin_wire_coil_2].ingredients[1].amount = 60
data_recipe[tin_wire_coil_2].ingredients[2].amount = 240
data_recipe[tin_wire_coil_2].ingredients[3].amount = 120
data_recipe[tin_wire_coil_2].results[1].amount = 16
data_recipe[tin_wire_coil_2].results[2].amount = 60

data_item[tin_cable].hidden = false
data_item[tin_cable].hidden_in_factoriopedia = false
data_item[tin_cable].localised_description = show_formula and {chemical_formula, "CuSn"} or nil
data_item[tin_cable].order = e
data_recipe[tin_cable].hidden = false
data_recipe[tin_cable].hidden_in_factoriopedia = false
data_recipe[tin_cable].icons = THREE_I(copper_cable, tin_plate_bob, tin_cable)
data_recipe[tin_cable].order = e
data_recipe[tin_cable].energy_required = 2
data_recipe[tin_cable].ingredients[1].amount = 2
data_recipe[tin_cable].ingredients[2].amount = 4
data_recipe[tin_cable].results[1].amount = 2

local tin_wire_2 = "angels-wire-tin-2"
data_recipe[tin_wire_2].icons = TWO_I(tin_wire_coil, tin_cable)
data_recipe[tin_wire_2].order = e_a
data_recipe[tin_wire_2].energy_required = 8

-- MANGANESE
data_item_subgroup["angels-manganese-casting"].order = e

data_fluid[manganese_molten_angels].hidden = false
data_fluid[manganese_molten_angels].hidden_in_factoriopedia = false
data_fluid[manganese_molten_angels].localised_description = show_formula and {chemical_formula, "Mn"} or nil
data_fluid[manganese_molten_angels].order = a
--data_recipe[manganese_molten_angels].hidden = false
--data_recipe[manganese_molten_angels].hidden_in_factoriopedia = false
data_recipe[manganese_molten_angels].localised_name = data_fluid[manganese_molten_angels].localised_name
data_recipe[manganese_molten_angels].icons = TWO_I(manganese_ingot, manganese_molten_angels)
data_recipe[manganese_molten_angels].order = a
data_recipe[manganese_molten_angels].energy_required = 8
data_recipe[manganese_molten_angels].ingredients[1].amount = 16
data_recipe[manganese_molten_angels].results[1].amount = 240

-- SILICON
data_item_subgroup["angels-silicon-casting"].order = g

data_fluid[silicon_molten_angels].localised_description = show_formula and {chemical_formula, "Si"} or nil
data_fluid[silicon_molten_angels].order = a
data_recipe[silicon_molten_angels].icons = TWO_I(silicon_ingot, silicon_molten_angels)
data_recipe[silicon_molten_angels].order = a
data_recipe[silicon_molten_angels].energy_required = 8
data_recipe[silicon_molten_angels].ingredients[1].amount = 16
data_recipe[silicon_molten_angels].results[1].amount = 240

data_item[silicon_mono_seed].localised_description = show_formula and {chemical_formula, "Si"} or nil
data_item[silicon_mono_seed].order = b
data_recipe[silicon_mono_seed].icons = TWO_I(silicon_molten_angels, silicon_mono_seed)
data_recipe[silicon_mono_seed].order = b
data_recipe[silicon_mono_seed].ingredients[1].amount = 60
data_recipe[silicon_mono_seed].ingredients[2].amount = 30
data_recipe[silicon_mono_seed].results =
{
    {type = item, name = silicon_mono_seed, amount = 4},
    {type = fluid, name = nitrogen_angels, amount = 15}
}
data_recipe[silicon_mono_seed].main_product = silicon_mono_seed

data_item[silicon_crucible].localised_description = show_formula and {chemical_formula, "Si"} or nil
data_item[silicon_crucible].order = c
data_recipe[silicon_crucible].icons = TWO_I(silicon_ingot, silicon_crucible)
data_recipe[silicon_crucible].order = c
data_recipe[silicon_crucible].ingredients[1].name = silicon_ingot

data_item[silicon_mono].localised_description = show_formula and {chemical_formula, "Si"} or nil
data_item[silicon_mono].order = d
data_recipe[silicon_mono].icons = THREE_I(silicon_mono_seed, silicon_molten_angels, silicon_mono, number_1)
data_recipe[silicon_mono].order = d
data_recipe[silicon_mono].energy_required = 4
data_recipe[silicon_mono].ingredients[1].amount = 60
data_recipe[silicon_mono].ingredients[2].amount = 4

local silicon_mono_2 = "angels-mono-silicon-2"
data_recipe[silicon_mono_2].icons = THREE_I(silicon_mono_seed, silicon_molten_angels, silicon_mono, number_2)
data_recipe[silicon_mono_2].order = d_a
data_recipe[silicon_mono_2].energy_required = 4
data_recipe[silicon_mono_2].ingredients[1].amount = 60
data_recipe[silicon_mono_2].ingredients[2].amount = 4
data_recipe[silicon_mono_2].ingredients[3].amount = 4
data_recipe[silicon_mono_2].results[1].amount = 8
data_recipe[silicon_mono_2].results[2].amount = 4
data_recipe[silicon_mono_2].results[2].probability = 0.5

data_item[silicon_wafer].localised_description = show_formula and {chemical_formula, "Si"} or nil
data_item[silicon_wafer].stack_size = 200
data_item[silicon_wafer].order = e
data_recipe[silicon_wafer].icons = TWO_I(silicon_mono, silicon_wafer)
data_recipe[silicon_wafer].order = e
data_recipe[silicon_wafer].results[1].amount = 4

-- NICKEL
data_item_subgroup["angels-nickel-casting"].order = h

data_fluid[nickel_molten_angels].localised_description = show_formula and {chemical_formula, "Ni"} or nil
data_fluid[nickel_molten_angels].order = a
data_recipe[nickel_molten_angels].icons = TWO_I(nickel_ingot, nickel_molten_angels)
data_recipe[nickel_molten_angels].order = a
data_recipe[nickel_molten_angels].energy_required = 8
data_recipe[nickel_molten_angels].ingredients[1].amount = 16
data_recipe[nickel_molten_angels].results[1].amount = 240

data_item[nickel_roll].localised_description = show_formula and {chemical_formula, "Ni"} or nil
data_item[nickel_roll].order = b
data_recipe[nickel_roll].icons = TWO_I(nickel_molten_angels, nickel_roll, number_1)
data_recipe[nickel_roll].order = b
data_recipe[nickel_roll].energy_required = 8
data_recipe[nickel_roll].ingredients[1].amount = 240
data_recipe[nickel_roll].ingredients[2].name = water_purified_angels
data_recipe[nickel_roll].ingredients[2].amount = 120
data_recipe[nickel_roll].results =
{
    {type = item, name = nickel_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[nickel_roll].main_product = nickel_roll

local nickel_roll_2 = "angels-roll-nickel-2"
data_recipe[nickel_roll_2].icons = TWO_I(nickel_molten_angels, nickel_roll, number_2)
data_recipe[nickel_roll_2].order = b_a
data_recipe[nickel_roll_2].energy_required = 4
data_recipe[nickel_roll_2].ingredients[1].amount = 240
data_recipe[nickel_roll_2].ingredients[2].amount = 120
data_recipe[nickel_roll_2].results[1].amount = 8
data_recipe[nickel_roll_2].results[2].amount = 60

data_item[nickel_plate_bob].localised_description = show_formula and {chemical_formula, "Ni"} or nil
data_item[nickel_plate_bob].order = c

local nickel_plate_angels = "angels-plate-nickel"
data_recipe[nickel_plate_angels].icons = TWO_I(nickel_molten_angels, nickel_plate_bob)
data_recipe[nickel_plate_angels].order = c_a
data_recipe[nickel_plate_angels].ingredients[1].amount = 60

local nickel_plate_2 = "angels-plate-nickel-2"
data_recipe[nickel_plate_2].icons = TWO_I(nickel_roll, nickel_plate_bob)
data_recipe[nickel_plate_2].order = c_b
data_recipe[nickel_plate_2].energy_required = 4

-- ALUMINIUM
data_item_subgroup["angels-aluminium-casting"].order = i

data_fluid[aluminium_molten_angels].localised_description = show_formula and {chemical_formula, "Al"} or nil
data_fluid[aluminium_molten_angels].order = a
data_recipe[aluminium_molten_angels].icons = TWO_I(aluminium_ingot, aluminium_molten_angels, number_1)
data_recipe[aluminium_molten_angels].order = a
data_recipe[aluminium_molten_angels].energy_required = 8
data_recipe[aluminium_molten_angels].ingredients[1].amount = 16
data_recipe[aluminium_molten_angels].results[1].amount = 240

data_recipe[aluminium_molten_2].icons = TWO_I(aluminium_ingot, aluminium_molten_angels, number_2)
data_recipe[aluminium_molten_2].order = a_a
data_recipe[aluminium_molten_2].energy_required = 8
data_recipe[aluminium_molten_2].ingredients =
{
    {type = item, name = aluminium_ingot, amount = 16},
    {type = item, name = manganese_ingot, amount = 8},
    {type = item, name = magnesium_ingot, amount = 8}
}
data_recipe[aluminium_molten_2].results[1].amount = 480

data_recipe[aluminium_molten_3].icons = TWO_I(aluminium_ingot, aluminium_molten_angels, number_3)
data_recipe[aluminium_molten_3].order = a_b
data_recipe[aluminium_molten_3].energy_required = 8
data_recipe[aluminium_molten_3].ingredients =
{
    {type = item, name = aluminium_ingot, amount = 16},
    {type = item, name = chromium_ingot, amount = 8},
    {type = item, name = manganese_ingot, amount = 4},
    {type = item, name = magnesium_ingot, amount = 4}
}
data_recipe[aluminium_molten_3].results[1].amount = 480

data_item[aluminium_roll].localised_description = show_formula and {chemical_formula, "Al"} or nil
data_item[aluminium_roll].order = b
data_recipe[aluminium_roll].icons = TWO_I(aluminium_molten_angels, aluminium_roll, number_1)
data_recipe[aluminium_roll].order = b
data_recipe[aluminium_roll].energy_required = 8
data_recipe[aluminium_roll].ingredients[1].amount = 240
data_recipe[aluminium_roll].ingredients[2].name = water_purified_angels
data_recipe[aluminium_roll].ingredients[2].amount = 120
data_recipe[aluminium_roll].results =
{
    {type = item, name = aluminium_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[aluminium_roll].main_product = aluminium_roll

data_recipe[aluminium_roll_2].icons = TWO_I(aluminium_molten_angels, aluminium_roll, number_2)
data_recipe[aluminium_roll_2].order = b_a
data_recipe[aluminium_roll_2].energy_required = 4
data_recipe[aluminium_roll_2].ingredients[1].amount = 240
data_recipe[aluminium_roll_2].ingredients[2].amount = 120
data_recipe[aluminium_roll_2].results[1].amount = 8
data_recipe[aluminium_roll_2].results[2].amount = 60

data_item[aluminium_plate_bob].localised_description = show_formula and {chemical_formula, "Al"} or nil
data_item[aluminium_plate_bob].order = c

data_recipe[aluminium_plate_angels].icons = TWO_I(aluminium_molten_angels, aluminium_plate_bob)
data_recipe[aluminium_plate_angels].order = c_a
data_recipe[aluminium_plate_angels].ingredients[1].amount = 60

data_recipe[aluminium_plate_2].icons = TWO_I(aluminium_roll, aluminium_plate_bob)
data_recipe[aluminium_plate_2].order = c_b
data_recipe[aluminium_plate_2].energy_required = 4

-- ZINC
data_item_subgroup["angels-zinc-casting"].order = j

data_fluid[zinc_molten_angels].localised_description = show_formula and {chemical_formula, "Zn"} or nil
data_fluid[zinc_molten_angels].order = a
data_recipe[zinc_molten_angels].icons = TWO_I(nickel_ingot, zinc_molten_angels)
data_recipe[zinc_molten_angels].order = a
data_recipe[zinc_molten_angels].energy_required = 8
data_recipe[zinc_molten_angels].ingredients[1].amount = 16
data_recipe[zinc_molten_angels].results[1].amount = 240

data_item[zinc_roll].localised_description = show_formula and {chemical_formula, "Zn"} or nil
data_item[zinc_roll].order = b
data_recipe[zinc_roll].icons = TWO_I(zinc_molten_angels, zinc_roll, number_1)
data_recipe[zinc_roll].order = b
data_recipe[zinc_roll].energy_required = 8
data_recipe[zinc_roll].ingredients[1].amount = 240
data_recipe[zinc_roll].ingredients[2].name = water_purified_angels
data_recipe[zinc_roll].ingredients[2].amount = 120
data_recipe[zinc_roll].results =
{
    {type = item, name = zinc_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[zinc_roll].main_product = zinc_roll

local zinc_roll_2 = "angels-roll-zinc-2"
data_recipe[zinc_roll_2].icons = TWO_I(zinc_molten_angels, zinc_roll, number_2)
data_recipe[zinc_roll_2].order = b_a
data_recipe[zinc_roll_2].energy_required = 4
data_recipe[zinc_roll_2].ingredients[1].amount = 240
data_recipe[zinc_roll_2].ingredients[2].amount = 120
data_recipe[zinc_roll_2].results[1].amount = 8
data_recipe[zinc_roll_2].results[2].amount = 60

data_item[zinc_plate_bob].localised_description = show_formula and {chemical_formula, "Zn"} or nil
data_item[zinc_plate_bob].order = c

data_recipe[zinc_plate_angels].icons = TWO_I(zinc_molten_angels, zinc_plate_bob)
data_recipe[zinc_plate_angels].order = c_a
data_recipe[zinc_plate_angels].ingredients[1].amount = 60

local zinc_plate_2 = "angels-plate-zinc-2"
data_recipe[zinc_plate_2].icons = TWO_I(zinc_roll, zinc_plate_bob)
data_recipe[zinc_plate_2].order = c_b
data_recipe[zinc_plate_2].energy_required = 4

-- SILVER
data_item_subgroup["angels-silver-casting"].order = k

data_fluid[silver_molten_angels].localised_description = show_formula and {chemical_formula, "Ag"} or nil
data_fluid[silver_molten_angels].order = a
data_recipe[silver_molten_angels].icons = TWO_I(silver_ingot, silver_molten_angels)
data_recipe[silver_molten_angels].order = a
data_recipe[silver_molten_angels].energy_required = 8
data_recipe[silver_molten_angels].ingredients[1].amount = 16
data_recipe[silver_molten_angels].results[1].amount = 240

data_item[silver_roll].localised_description = show_formula and {chemical_formula, "Ag"} or nil
data_item[silver_roll].order = b
data_recipe[silver_roll].icons = TWO_I(silver_molten_angels, silver_roll, number_1)
data_recipe[silver_roll].order = b
data_recipe[silver_roll].energy_required = 8
data_recipe[silver_roll].ingredients[1].amount = 240
data_recipe[silver_roll].ingredients[2].name = water_purified_angels
data_recipe[silver_roll].ingredients[2].amount = 120
data_recipe[silver_roll].results =
{
    {type = item, name = silver_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[silver_roll].main_product = silver_roll

local silver_roll_2 = "angels-roll-silver-2"
data_recipe[silver_roll_2].icons = TWO_I(silver_molten_angels, silver_roll, number_2)
data_recipe[silver_roll_2].order = b_a
data_recipe[silver_roll_2].energy_required = 4
data_recipe[silver_roll_2].ingredients[1].amount = 240
data_recipe[silver_roll_2].ingredients[2].amount = 120
data_recipe[silver_roll_2].results[1].amount = 8
data_recipe[silver_roll_2].results[2].amount = 60

data_item[silver_plate_bob].localised_description = show_formula and {chemical_formula, "Ag"} or nil
data_item[silver_plate_bob].order = c
data_item[silver_plate_bob].weight = 5000

local silver_plate_angels = "angels-plate-silver"
data_recipe[silver_plate_angels].icons = TWO_I(silver_molten_angels, silver_plate_bob)
data_recipe[silver_plate_angels].order = c_a
data_recipe[silver_plate_angels].ingredients[1].amount = 60

local silver_plate_2 = "angels-plate-silver-2"
data_recipe[silver_plate_2].icons = TWO_I(silver_roll, silver_plate_bob)
data_recipe[silver_plate_2].order = c_b
data_recipe[silver_plate_2].energy_required = 4

data_item[silver_wire_coil].localised_description = show_formula and {chemical_formula, "CuAg"} or nil
data_item[silver_wire_coil].order = d
data_recipe[silver_wire_coil].icons = THREE_I(copper_molten_angels, silver_molten_angels, silver_wire_coil, number_1)
data_recipe[silver_wire_coil].order = d
data_recipe[silver_wire_coil].energy_required = 8
data_recipe[silver_wire_coil].ingredients[1].amount = 60
data_recipe[silver_wire_coil].ingredients[2].amount = 240
data_recipe[silver_wire_coil].ingredients[3].name = water_purified_angels
data_recipe[silver_wire_coil].ingredients[3].amount = 120
data_recipe[silver_wire_coil].results =
{
    {type = item, name = silver_wire_coil, amount = 8},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[silver_wire_coil].main_product = silver_wire_coil

local silver_wire_coil_2 = "angels-wire-coil-silver-2"
data_recipe[silver_wire_coil_2].icons = THREE_I(copper_molten_angels, silver_molten_angels, silver_wire_coil, number_2)
data_recipe[silver_wire_coil_2].order = d_a
data_recipe[silver_wire_coil_2].energy_required = 4
data_recipe[silver_wire_coil_2].ingredients[1].amount = 60
data_recipe[silver_wire_coil_2].ingredients[2].amount = 240
data_recipe[silver_wire_coil_2].ingredients[3].amount = 120
data_recipe[silver_wire_coil_2].results[1].amount = 16
data_recipe[silver_wire_coil_2].results[2].amount = 60

data_item[silver_cable].localised_description = show_formula and {chemical_formula, "CuAg"} or nil
data_item[silver_cable].order = e
data_recipe[silver_cable].icons = THREE_I(copper_cable, silver_plate_bob, silver_cable)
data_recipe[silver_cable].order = e
data_recipe[silver_cable].energy_required = 2
data_recipe[silver_cable].ingredients[1].amount = 2
data_recipe[silver_cable].ingredients[2].amount = 4
data_recipe[silver_cable].results[1].amount = 2

local silver_wire_2 = "angels-wire-silver-2"
data_recipe[silver_wire_2].icons = TWO_I(silver_wire_coil, silver_cable)
data_recipe[silver_wire_2].order = e_a
data_recipe[silver_wire_2].energy_required = 8

-- TITANIUM
data_item_subgroup["angels-titanium-casting"].order = l

data_fluid[titanium_molten_angels].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_fluid[titanium_molten_angels].order = a
data_recipe[titanium_molten_angels].icons = TWO_I(titanium_ingot, titanium_molten_angels, number_1)
data_recipe[titanium_molten_angels].order = a
data_recipe[titanium_molten_angels].energy_required = 8
data_recipe[titanium_molten_angels].ingredients[1].amount = 16
data_recipe[titanium_molten_angels].results[1].amount = 240

data_recipe[titanium_molten_2].icons = TWO_I(titanium_ingot, titanium_molten_angels, number_2)
data_recipe[titanium_molten_2].order = a_a
data_recipe[titanium_molten_2].energy_required = 8
data_recipe[titanium_molten_2].ingredients =
{
    {type = item, name = titanium_ingot, amount = 16},
    {type = item, name = manganese_ingot, amount = 8},
    {type = item, name = magnesium_ingot, amount = 8}
}
data_recipe[titanium_molten_2].results[1].amount = 480

data_recipe[titanium_molten_3].icons = TWO_I(titanium_ingot, titanium_molten_angels, number_3)
data_recipe[titanium_molten_3].order = a_b
data_recipe[titanium_molten_3].energy_required = 8
data_recipe[titanium_molten_3].ingredients =
{
    {type = item, name = titanium_ingot, amount = 16},
    {type = item, name = chromium_ingot, amount = 8},
    {type = item, name = manganese_ingot, amount = 4},
    {type = item, name = magnesium_ingot, amount = 4}
}
data_recipe[titanium_molten_3].results[1].amount = 480

data_item[titanium_roll].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_item[titanium_roll].order = b
data_recipe[titanium_roll].icons = TWO_I(titanium_molten_angels, titanium_roll, number_1)
data_recipe[titanium_roll].order = b
data_recipe[titanium_roll].energy_required = 8
data_recipe[titanium_roll].ingredients[1].amount = 240
data_recipe[titanium_roll].ingredients[2].name = water_purified_angels
data_recipe[titanium_roll].ingredients[2].amount = 120
data_recipe[titanium_roll].results =
{
    {type = item, name = titanium_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[titanium_roll].main_product = titanium_roll

data_recipe[titanium_roll_2].icons = TWO_I(titanium_molten_angels, titanium_roll, number_2)
data_recipe[titanium_roll_2].order = b_a
data_recipe[titanium_roll_2].energy_required = 4
data_recipe[titanium_roll_2].ingredients[1].amount = 240
data_recipe[titanium_roll_2].ingredients[2].amount = 120
data_recipe[titanium_roll_2].results[1].amount = 4
data_recipe[titanium_roll_2].results[2].amount = 60

data_item[titanium_plate_bob].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_item[titanium_plate_bob].order = c
data_item[titanium_plate_bob].weight = 5000

local titanium_plate_angels = "angels-plate-titanium"
data_recipe[titanium_plate_angels].icons = TWO_I(titanium_molten_angels, titanium_plate_bob)
data_recipe[titanium_plate_angels].order = c_a
data_recipe[titanium_plate_angels].ingredients[1].amount = 60

data_recipe[titanium_plate_2].icons = TWO_I(titanium_roll, titanium_plate_bob)
data_recipe[titanium_plate_2].order = c_b
data_recipe[titanium_plate_2].energy_required = 4

-- GOLD
data_item_subgroup["angels-gold-casting"].order = m

data_fluid[gold_molten_angels].localised_description = show_formula and {chemical_formula, "Au"} or nil
data_fluid[gold_molten_angels].order = a
data_recipe[gold_molten_angels].icons = TWO_I(gold_ingot, gold_molten_angels)
data_recipe[gold_molten_angels].order = a
data_recipe[gold_molten_angels].energy_required = 8
data_recipe[gold_molten_angels].ingredients[1].amount = 16
data_recipe[gold_molten_angels].results[1].amount = 240

data_item[gold_roll].localised_description = show_formula and {chemical_formula, "Au"} or nil
data_item[gold_roll].order = b
data_recipe[gold_roll].icons = TWO_I(gold_molten_angels, gold_roll, number_1)
data_recipe[gold_roll].order = b
data_recipe[gold_roll].energy_required = 8
data_recipe[gold_roll].ingredients[1].amount = 240
data_recipe[gold_roll].ingredients[2].name = water_purified_angels
data_recipe[gold_roll].ingredients[2].amount = 120
data_recipe[gold_roll].results =
{
    {type = item, name = gold_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[gold_roll].main_product = gold_roll

local gold_roll_2 = "angels-roll-gold-2"
data_recipe[gold_roll_2].icons = TWO_I(gold_molten_angels, gold_roll, number_2)
data_recipe[gold_roll_2].order = b_a
data_recipe[gold_roll_2].energy_required = 4
data_recipe[gold_roll_2].ingredients[1].amount = 240
data_recipe[gold_roll_2].ingredients[2].amount = 120
data_recipe[gold_roll_2].results[1].amount = 8
data_recipe[gold_roll_2].results[2].amount = 60

data_item[gold_plate_bob].localised_description = show_formula and {chemical_formula, "Au"} or nil
data_item[gold_plate_bob].order = c
data_item[gold_plate_bob].weight = 5000

local gold_plate_angels = "angels-plate-gold"
data_recipe[gold_plate_angels].icons = TWO_I(gold_molten_angels, gold_plate_bob)
data_recipe[gold_plate_angels].order = c_a
data_recipe[gold_plate_angels].ingredients[1].amount = 60

local gold_plate_2 = "angels-plate-gold-2"
data_recipe[gold_plate_2].icons = TWO_I(gold_roll, gold_plate_bob)
data_recipe[gold_plate_2].order = c_b
data_recipe[gold_plate_2].energy_required = 4

data_item[gold_wire_coil].localised_description = show_formula and {chemical_formula, "CuAu"} or nil
data_item[gold_wire_coil].order = d
data_recipe[gold_wire_coil].icons = THREE_I(copper_molten_angels, gold_molten_angels, gold_wire_coil, number_1)
data_recipe[gold_wire_coil].order = d
data_recipe[gold_wire_coil].energy_required = 8
data_recipe[gold_wire_coil].ingredients[1].amount = 60
data_recipe[gold_wire_coil].ingredients[2].amount = 240
data_recipe[gold_wire_coil].ingredients[3].name = water_purified_angels
data_recipe[gold_wire_coil].ingredients[3].amount = 120
data_recipe[gold_wire_coil].results =
{
    {type = item, name = gold_wire_coil, amount = 8},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[gold_wire_coil].main_product = gold_wire_coil

local gold_wire_coil_2 = "angels-wire-coil-gold-2"
data_recipe[gold_wire_coil_2].icons = THREE_I(copper_molten_angels, gold_molten_angels, gold_wire_coil, number_2)
data_recipe[gold_wire_coil_2].order = d_a
data_recipe[gold_wire_coil_2].energy_required = 4
data_recipe[gold_wire_coil_2].ingredients[1].amount = 60
data_recipe[gold_wire_coil_2].ingredients[2].amount = 240
data_recipe[gold_wire_coil_2].ingredients[3].amount = 120
data_recipe[gold_wire_coil_2].results[1].amount = 16
data_recipe[gold_wire_coil_2].results[2].amount = 60

data_item[gold_cable].hidden = false
data_item[gold_cable].hidden_in_factoriopedia = false
data_item[gold_cable].localised_description = show_formula and {chemical_formula, "CuAu"} or nil
data_item[gold_cable].order = e
data_recipe[gold_cable].hidden = false
data_recipe[gold_cable].hidden_in_factoriopedia = false
data_recipe[gold_cable].icons = THREE_I(copper_cable, gold_plate_bob, gold_cable)
data_recipe[gold_cable].order = e
data_recipe[gold_cable].energy_required = 2
data_recipe[gold_cable].ingredients[1].amount = 2
data_recipe[gold_cable].ingredients[2].amount = 4
data_recipe[gold_cable].results[1].amount = 2

local gold_wire_2 = "angels-wire-gold-2"
data_recipe[gold_wire_2].icons = TWO_I(gold_wire_coil, gold_cable)
data_recipe[gold_wire_2].order = e_a
data_recipe[gold_wire_2].energy_required = 8

-- COBALT
data_item_subgroup["angels-cobalt-casting"].order = n

data_fluid[cobalt_molten_angels].hidden = false
data_fluid[cobalt_molten_angels].hidden_in_factoriopedia = false
data_fluid[cobalt_molten_angels].localised_description = show_formula and {chemical_formula, "Co"} or nil
data_fluid[cobalt_molten_angels].order = a
--data_recipe[cobalt_molten_angels].hidden = false
--data_recipe[cobalt_molten_angels].hidden_in_factoriopedia = false
data_recipe[cobalt_molten_angels].localised_name = data_fluid[cobalt_molten_angels].localised_name
data_recipe[cobalt_molten_angels].icons = TWO_I(cobalt_ingot, cobalt_molten_angels)
data_recipe[cobalt_molten_angels].order = a
data_recipe[cobalt_molten_angels].energy_required = 8
data_recipe[cobalt_molten_angels].ingredients[1].amount = 16
data_recipe[cobalt_molten_angels].results[1].amount = 240

-- CHROMIUM
data_item_subgroup["angels-chrome-casting"].order = o

data_fluid[chromium_molten_angels].hidden = false
data_fluid[chromium_molten_angels].hidden_in_factoriopedia = false
data_fluid[chromium_molten_angels].localised_name = {"fluid-name.angels-liquid-molten-chrome"}
data_fluid[chromium_molten_angels].localised_description = show_formula and {chemical_formula, "Cr"} or nil
data_fluid[chromium_molten_angels].order = a
--data_recipe[chromium_molten_angels].hidden = false
--data_recipe[chromium_molten_angels].hidden_in_factoriopedia = false
data_recipe[chromium_molten_angels].localised_name = data_fluid[chromium_molten_angels].localised_name
data_recipe[chromium_molten_angels].icons = TWO_I(chromium_ingot, chromium_molten_angels)
data_recipe[chromium_molten_angels].order = a
data_recipe[chromium_molten_angels].energy_required = 8
data_recipe[chromium_molten_angels].ingredients[1].amount = 16
data_recipe[chromium_molten_angels].results[1].amount = 240

-- TUNGSTEN
data_item_subgroup["angels-tungsten-casting"].order = p

data_item[tungsten_plate_bob].localised_description = show_formula and {chemical_formula, "W"} or nil
data_item[tungsten_plate_bob].order = a

data_recipe[tungsten_plate_angels].icons = TWO_I(tungsten_powder, tungsten_plate_bob)
data_recipe[tungsten_plate_angels].order = a_a
data_recipe[tungsten_plate_angels].energy_required = 8 -- W --> W
data_recipe[tungsten_plate_angels].ingredients[1].name = tungsten_powder
data_recipe[tungsten_plate_angels].ingredients[1].amount = 16
data_recipe[tungsten_plate_angels].results[1].amount = 16

data_item[tungsten_carbide_plate_bob].localised_description = show_formula and {chemical_formula, "WC"} or nil
data_item[tungsten_carbide_plate_bob].order = b

data_recipe[tungsten_carbide_plate_2].icons = THREE_I(tungsten_powder, carbon_angels, tungsten_carbide_plate_bob)
data_recipe[tungsten_carbide_plate_2].order = b_a
data_recipe[tungsten_carbide_plate_2].energy_required = 8 -- W + C --> WC
data_recipe[tungsten_carbide_plate_2].ingredients =
{
    {type = item, name = tungsten_powder, amount = 16},
    {type = item, name = carbon_angels, amount = 16}
}
data_recipe[tungsten_carbide_plate_2].results[1].amount = 16

data_item[copper_tungsten_plate_bob].localised_description = show_formula and {chemical_formula, "WCu"} or nil
data_item[copper_tungsten_plate_bob].order = c
data_recipe[copper_tungsten_plate_bob].icons = TWO_I(copper_tungsten_powder, copper_tungsten_plate_bob)
data_recipe[copper_tungsten_plate_bob].order = c
data_recipe[copper_tungsten_plate_bob].energy_required = 8 -- WCu --> WCu
data_recipe[copper_tungsten_plate_bob].ingredients = {{type = item, name = copper_tungsten_powder, amount = 16}}
data_recipe[copper_tungsten_plate_bob].results[1].amount = 16

-- PLATINUM
data_item_subgroup["angels-platinum-casting"].order = q

data_fluid[platinum_molten_angels].localised_description = show_formula and {chemical_formula, "Pt"} or nil
data_fluid[platinum_molten_angels].order = a
data_recipe[platinum_molten_angels].icons = TWO_I(platinum_ingot, platinum_molten_angels)
data_recipe[platinum_molten_angels].order = a
data_recipe[platinum_molten_angels].energy_required = 8
data_recipe[platinum_molten_angels].ingredients[1].amount = 16
data_recipe[platinum_molten_angels].results[1].amount = 240

data_item[platinum_roll].localised_description = show_formula and {chemical_formula, "Pt"} or nil
data_item[platinum_roll].order = b
data_recipe[platinum_roll].icons = TWO_I(platinum_molten_angels, platinum_roll, number_1)
data_recipe[platinum_roll].order = b
data_recipe[platinum_roll].energy_required = 8
data_recipe[platinum_roll].ingredients[1].amount = 240
data_recipe[platinum_roll].ingredients[2].name = water_purified_angels
data_recipe[platinum_roll].ingredients[2].amount = 120
data_recipe[platinum_roll].results =
{
    {type = item, name = platinum_roll, amount = 4},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[platinum_roll].main_product = platinum_roll

local platinum_roll_2 = "angels-roll-platinum-2"
data_recipe[platinum_roll_2].icons = TWO_I(platinum_molten_angels, platinum_roll, number_2)
data_recipe[platinum_roll_2].order = b_a
data_recipe[platinum_roll_2].energy_required = 4
data_recipe[platinum_roll_2].ingredients[1].amount = 240
data_recipe[platinum_roll_2].ingredients[2].amount = 120
data_recipe[platinum_roll_2].results[1].amount = 8
data_recipe[platinum_roll_2].results[2].amount = 60

data_item[platinum_plate].localised_description = show_formula and {chemical_formula, "Pt"} or nil
data_item[platinum_plate].order = c
data_recipe[platinum_plate].icons = TWO_I(platinum_molten_angels, platinum_plate)
data_recipe[platinum_plate].order = c
data_recipe[platinum_plate].ingredients[1].amount = 60

local platinum_plate_2 = "angels-plate-platinum-2"
data_recipe[platinum_plate_2].icons = TWO_I(platinum_roll, platinum_plate)
data_recipe[platinum_plate_2].order = c_b
data_recipe[platinum_plate_2].energy_required = 4

data_item[platinum_wire_coil].localised_description = show_formula and {chemical_formula, "CuPt"} or nil
data_item[platinum_wire_coil].order = d
data_recipe[platinum_wire_coil].icons = THREE_I(copper_molten_angels, platinum_molten_angels, platinum_wire_coil, number_1)
data_recipe[platinum_wire_coil].order = d
data_recipe[platinum_wire_coil].energy_required = 8
data_recipe[platinum_wire_coil].ingredients[1].amount = 60
data_recipe[platinum_wire_coil].ingredients[2].amount = 240
data_recipe[platinum_wire_coil].ingredients[3].name = water_purified_angels
data_recipe[platinum_wire_coil].ingredients[3].amount = 120
data_recipe[platinum_wire_coil].results =
{
    {type = item, name = platinum_wire_coil, amount = 8},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[platinum_wire_coil].main_product = platinum_wire_coil

local platinum_wire_coil_2 = "angels-wire-coil-platinum-2"
data_recipe[platinum_wire_coil_2].icons = THREE_I(copper_molten_angels, platinum_molten_angels, platinum_wire_coil, number_2)
data_recipe[platinum_wire_coil_2].order = d_a
data_recipe[platinum_wire_coil_2].energy_required = 4
data_recipe[platinum_wire_coil_2].ingredients[1].amount = 60
data_recipe[platinum_wire_coil_2].ingredients[2].amount = 240
data_recipe[platinum_wire_coil_2].ingredients[3].amount = 120
data_recipe[platinum_wire_coil_2].results[1].amount = 16
data_recipe[platinum_wire_coil_2].results[2].amount = 60

data_item[platinum_cable].localised_description = show_formula and {chemical_formula, "CuPt"} or nil
data_item[platinum_cable].order = e
data_recipe[platinum_cable].icons = THREE_I(copper_cable, platinum_plate, platinum_cable)
data_recipe[platinum_cable].order = e
data_recipe[platinum_cable].energy_required = 2
data_recipe[platinum_cable].ingredients[1].amount = 2
data_recipe[platinum_cable].ingredients[2].amount = 4
data_recipe[platinum_cable].results[1].amount = 2

local platinum_cable_2 = "angels-wire-platinum-2"
data_recipe[platinum_cable_2].icons = TWO_I(platinum_wire_coil, platinum_cable)
data_recipe[platinum_cable_2].order = e_a
data_recipe[platinum_cable_2].energy_required = 8

-- GLASS
data_item_subgroup["angels-glass-casting"].order = v

data_recipe[glass_molten_angels].icons = TWO_I(glass_mixture, glass_molten_angels)
data_recipe[glass_molten_angels].energy_required = 8
data_recipe[glass_molten_angels].ingredients[1].amount = 16
data_recipe[glass_molten_angels].results[1].amount = 240

data_recipe[glass_coil_fiber].icons = TWO_I(glass_molten_angels, glass_coil_fiber, number_1)
data_recipe[glass_coil_fiber].energy_required = 8
data_recipe[glass_coil_fiber].ingredients[1].amount = 240
data_recipe[glass_coil_fiber].ingredients[2].name = water_purified_angels
data_recipe[glass_coil_fiber].ingredients[2].amount = 120
data_recipe[glass_coil_fiber].results =
{
    {type = item, name = glass_coil_fiber, amount = 8},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[glass_coil_fiber].main_product = glass_coil_fiber

data_recipe[glass_coil_fiber_2].icons = TWO_I(glass_molten_angels, glass_coil_fiber, number_2)
data_recipe[glass_coil_fiber_2].energy_required = 4
data_recipe[glass_coil_fiber_2].ingredients[1].amount = 240
data_recipe[glass_coil_fiber_2].ingredients[2].amount = 120
data_recipe[glass_coil_fiber_2].results[1].amount = 16
data_recipe[glass_coil_fiber_2].results[2].amount = 60

data_item[glass_bob].stack_size = 200
data_recipe[glass_bob].hidden = false
data_recipe[glass_bob].hidden_in_factoriopedia = false
data_recipe[glass_bob].localised_name = {"item-name.angels-plate-glass"}
data_recipe[glass_bob].icons = TWO_I(sand_angels, glass_bob)
data_recipe[glass_bob].energy_required = 4
data_recipe[glass_bob].ingredients[1].name = sand_angels
data_recipe[glass_bob].ingredients[1].amount = 8

local glass_angels = "angels-plate-glass"
data_recipe[glass_angels].icons = TWO_I(glass_molten_angels, glass_bob)
data_recipe[glass_angels].ingredients[1].amount = 60
data_recipe[glass_angels].results[1].amount = 4

-- STONE
data_item_subgroup[is_stone_casting].order = w

data_item[concrete].order = a
data_recipe[concrete].icons = THREE_D_I(lime_angels, sand_angels, water, concrete)
data_recipe[concrete].order = a
data_recipe[concrete].energy_required = 8
data_recipe[concrete].ingredients =
{
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = sand_angels, amount = 4},
    {type = fluid, name = water, amount = 120}
}
data_recipe[concrete].results[1].amount = 8

data_recipe[concrete_2].icons = TWO_I(concrete_liquid, concrete)
data_recipe[concrete_2].order = a_a
data_recipe[concrete_2].ingredients[1].amount = 60

data_item[hazard_concrete].order = b
data_recipe[hazard_concrete].icons = TWO_I(concrete, hazard_concrete)
data_recipe[hazard_concrete].energy_required = 0.25
data_recipe[hazard_concrete].ingredients[1].amount = 1
data_recipe[hazard_concrete].results[1].amount = 1


data_item[reinforced_concrete].localised_name = {"item-name.reinforced-concrete"}
data_item[reinforced_concrete].order = c
data_recipe[reinforced_concrete].localised_name = data_item[reinforced_concrete].localised_name
data_recipe[reinforced_concrete].icons = FOUR_D_I(lime_angels, sand_angels, iron_rod, water, reinforced_concrete)
data_recipe[reinforced_concrete].order = c
data_recipe[reinforced_concrete].energy_required = 8
data_recipe[reinforced_concrete].ingredients =
{
    {type = item, name = lime_angels, amount = 8},
    {type = item, name = sand_angels, amount = 4},
    {type = item, name = iron_rod, amount = 8},
    {type = fluid, name = water, amount = 120}
}
data_recipe[reinforced_concrete].results[1].amount = 8

data_item[reinforced_hazard_concrete].localised_name = {"item-name.reinforced-concrete-hazard"}
data_item[reinforced_hazard_concrete].order = d
data_recipe[reinforced_hazard_concrete].localised_name = data_item[reinforced_hazard_concrete].localised_name
data_recipe[reinforced_hazard_concrete].icons = TWO_I(reinforced_concrete, reinforced_hazard_concrete)
data_recipe[reinforced_hazard_concrete].energy_required = 0.25
data_recipe[reinforced_hazard_concrete].ingredients[1].amount = 1
data_recipe[reinforced_hazard_concrete].results[1].amount = 1

data_fluid[concrete_liquid].order = e
data_recipe[concrete_liquid].icons = THREE_D_I(cement, slag_angels, water, concrete_liquid, nil, nil, number_1)
data_recipe[concrete_liquid].order = e
data_recipe[concrete_liquid].ingredients[2].amount = 120
data_recipe[concrete_liquid].results[1].amount = 120

local concrete_liquid_2 = "angels-liquid-concrete-2"
data_recipe[concrete_liquid_2].icons = FOUR_D_I(cement, stone, sand_angels, water, concrete_liquid, nil, nil, nil, number_2)
data_recipe[concrete_liquid_2].order = e_a
data_recipe[concrete_liquid_2].ingredients[1].amount = 4
data_recipe[concrete_liquid_2].ingredients[2].amount = 120
data_recipe[concrete_liquid_2].ingredients[3].amount = 16
data_recipe[concrete_liquid_2].ingredients[4].amount = 8
data_recipe[concrete_liquid_2].results[1].amount = 480

-- BRICK
local clay_brick_raw = "angels-clay-brick-raw"
data_item[clay_brick_raw].subgroup = is_bricks_casting
data_item[clay_brick_raw].order = a
data_recipe[clay_brick_raw].subgroup = is_bricks_casting
data_recipe[clay_brick_raw].icons = THREE_D_I(clay_angels, lime_angels, sand_angels, clay_brick_raw)
data_recipe[clay_brick_raw].order = a

data_item[clay_brick].subgroup = is_bricks_casting
data_item[clay_brick].order = b
if settings.startup[setting_early_sintering_oven].value then
    data_recipe[clay_brick].additional_categories = {angels_sintering_1, metallurgy}
else
    data_recipe[clay_brick].additional_categories = {angels_sintering_4, metallurgy}
end
data_recipe[clay_brick].subgroup = is_bricks_casting
data_recipe[clay_brick].icons = TWO_I(clay_brick_raw, clay_brick)
data_recipe[clay_brick].order = b

data_item[stone_brick].subgroup = is_bricks_casting
data_item[stone_brick].order = c
if settings.startup[setting_early_sintering_oven].value then
    data_recipe[stone_brick].additional_categories = {angels_sintering_1, metallurgy}
else
    data_recipe[stone_brick].additional_categories = {angels_sintering_4, metallurgy}
end
data_recipe[stone_brick].subgroup = is_bricks_casting
data_recipe[stone_brick].icons = TWO_I(stone, stone_brick)
data_recipe[stone_brick].order = c
data_recipe[stone_brick].energy_required = 4

data_item[concrete_brick].subgroup = is_bricks_casting
data_item[concrete_brick].order = d
data_recipe[concrete_brick].subgroup = is_bricks_casting
data_recipe[concrete_brick].icons = AR_FOUR_ALT_I(concrete_liquid, nil, stone_brick, concrete_brick)
data_recipe[concrete_brick].order = d
data_recipe[concrete_brick].ingredients[1].amount = 60

data_item[reinforced_concrete_brick].subgroup = is_bricks_casting
data_item[reinforced_concrete_brick].order = e
data_recipe[reinforced_concrete_brick].subgroup = is_bricks_casting
data_recipe[reinforced_concrete_brick].icons = AR_FOUR_ALT_I(concrete_liquid, iron_rod, stone_brick, reinforced_concrete_brick)
data_recipe[reinforced_concrete_brick].order = e
data_recipe[reinforced_concrete_brick].ingredients[1].amount = 60
data_recipe[reinforced_concrete_brick].ingredients[3].name = iron_rod

-- SOLDER
data_item_subgroup["angels-solder-casting"].order = x

data_fluid[solder_molten_angels].localised_description = show_formula and {chemical_formula, "PbSn"} or nil
data_fluid[solder_molten_angels].order = a
data_recipe[solder_molten_angels].hidden = false
data_recipe[solder_molten_angels].hidden_in_factoriopedia = false
data_recipe[solder_molten_angels].localised_name = data_fluid[solder_molten_angels].localised_name
data_recipe[solder_molten_angels].category = angels_induction_smelting_1
data_recipe[solder_molten_angels].icons = THREE_I(lead_ingot, tin_ingot, solder_molten_angels, number_1)
data_recipe[solder_molten_angels].order = a
data_recipe[solder_molten_angels].energy_required = 8
data_recipe[solder_molten_angels].ingredients =
{
    {type = item, name = lead_ingot, amount = 16},
    {type = item, name = tin_ingot, amount = 16}
}
data_recipe[solder_molten_angels].results = {{type = fluid, name = solder_molten_angels, amount = 240}}
data_recipe[solder_molten_angels].main_product = solder_molten_angels

data_recipe[solder_molten_2].category = angels_induction_smelting_2
data_recipe[solder_molten_2].icons = THREE_I(lead_ingot, tin_ingot, solder_molten_angels, number_2)
data_recipe[solder_molten_2].order = a_a
data_recipe[solder_molten_2].energy_required = 8
data_recipe[solder_molten_2].ingredients =
{
    {type = item, name = lead_ingot, amount = 16},
    {type = item, name = tin_ingot, amount = 16},
    {type = item, name = zinc_ingot, amount = 16}
}
data_recipe[solder_molten_2].results[1].amount = 480

data_recipe[solder_molten_3].category = angels_induction_smelting_3
data_recipe[solder_molten_3].icons = THREE_I(lead_ingot, tin_ingot, solder_molten_angels, number_3)
data_recipe[solder_molten_3].order = a_b
data_recipe[solder_molten_3].energy_required = 8
data_recipe[solder_molten_3].ingredients =
{
    {type = item, name = lead_ingot, amount = 16},
    {type = item, name = tin_ingot, amount = 16},
    {type = item, name = zinc_ingot, amount = 8},
    {type = item, name = silver_ingot, amount = 8}
}
data_recipe[solder_molten_3].results[1].amount = 480

data_item[solder_roll].localised_description = show_formula and {chemical_formula, "PbSn"} or nil
data_item[solder_roll].order = b
data_recipe[solder_roll].icons = TWO_I(solder_molten_angels, solder_roll, number_1)
data_recipe[solder_roll].order = b
data_recipe[solder_roll].energy_required = 8
data_recipe[solder_roll].ingredients[1].amount = 240
data_recipe[solder_roll].ingredients[2].name = water_purified_angels
data_recipe[solder_roll].ingredients[2].amount = 120
data_recipe[solder_roll].results =
{
    {type = item, name = solder_roll, amount = 8},
    {type = fluid, name = steam, amount = 60}
}
data_recipe[solder_roll].main_product = solder_roll

data_recipe[solder_roll_2].icons = TWO_I(solder_molten_angels, solder_roll, number_2)
data_recipe[solder_roll_2].order = b_a
data_recipe[solder_roll_2].energy_required = 4
data_recipe[solder_roll_2].ingredients[1].amount = 240
data_recipe[solder_roll_2].ingredients[2].amount = 120
data_recipe[solder_roll_2].results[1].amount = 16
data_recipe[solder_roll_2].results[2].amount = 60

data_item[solder].localised_description = show_formula and {chemical_formula, "PbSn"} or nil
data_item[solder].order = c

data_recipe[solder_angels].icons = TWO_I(solder_molten_angels, solder)
data_recipe[solder_angels].order = c_a
data_recipe[solder_angels].ingredients[1].amount = 60
data_recipe[solder_angels].results[1].amount = 8

data_recipe[solder_2].icons = TWO_I(solder_roll, solder)
data_recipe[solder_2].order = c_b
data_recipe[solder_2].energy_required = 8
data_recipe[solder_2].results[1].amount = 16

-- ALLOYS
-- BRONZE
data_item_subgroup["angels-alloys-casting"].order = y

data_fluid[bronze_molten_angels].localised_description = show_formula and {chemical_formula, "CuSn"} or nil
data_recipe[bronze_molten_angels].icons = THREE_I(copper_ingot, tin_ingot, bronze_molten_angels, number_1)
data_recipe[bronze_molten_angels].energy_required = 8
data_recipe[bronze_molten_angels].ingredients[1].amount = 16
data_recipe[bronze_molten_angels].ingredients[2].amount = 16

local bronze_molten_2= "angels-liquid-molten-bronze-2"
data_recipe[bronze_molten_2].icons = THREE_I(copper_ingot, tin_ingot, bronze_molten_angels, number_2)
data_recipe[bronze_molten_2].energy_required = 8
data_recipe[bronze_molten_2].ingredients[1].amount = 16
data_recipe[bronze_molten_2].ingredients[2].amount = 16
data_recipe[bronze_molten_2].ingredients[3].name = lead_ingot
data_recipe[bronze_molten_2].ingredients[3].amount = 16
data_recipe[bronze_molten_2].results[1].amount = 480

local bronze_molten_3= "angels-liquid-molten-bronze-3"
data_recipe[bronze_molten_3].icons = THREE_I(copper_ingot, tin_ingot, bronze_molten_angels, number_3)
data_recipe[bronze_molten_3].energy_required = 8
data_recipe[bronze_molten_3].ingredients =
{
    {type = item, name = copper_ingot, amount = 16},
    {type = item, name = tin_ingot, amount = 16},
    {type = item, name = lead_ingot, amount = 8},
    {type = item, name = zinc_ingot, amount = 8}
}
data_recipe[bronze_molten_3].results[1].amount = 480

data_item[bronze_plate_bob].localised_description = show_formula and {chemical_formula, "CuSn"} or nil

local bronze_plate_angels = "angels-plate-bronze"
data_recipe[bronze_plate_angels].icons = TWO_I(bronze_molten_angels, bronze_plate_bob)
data_recipe[bronze_plate_angels].ingredients[1].amount = 60

-- BRASS
data_fluid[brass_molten_angels].localised_description = show_formula and {chemical_formula, "CuZn"} or nil
data_fluid[brass_molten_angels].subgroup = is_alloys_casting_2
data_recipe[brass_molten_angels].subgroup = is_alloys_casting_2
data_recipe[brass_molten_angels].icons = THREE_I(copper_ingot, zinc_ingot, brass_molten_angels, number_1)
data_recipe[brass_molten_angels].energy_required = 8
data_recipe[brass_molten_angels].ingredients[1].amount = 16
data_recipe[brass_molten_angels].ingredients[2].amount = 16

local brass_molten_2= "angels-liquid-molten-brass-2"
data_recipe[brass_molten_2].subgroup = is_alloys_casting_2
data_recipe[brass_molten_2].icons = THREE_I(copper_ingot, zinc_ingot, brass_molten_angels, number_2)
data_recipe[brass_molten_2].energy_required = 8
data_recipe[brass_molten_2].ingredients[1].amount = 16
data_recipe[brass_molten_2].ingredients[2].amount = 16
data_recipe[brass_molten_2].ingredients[3].amount = 16
data_recipe[brass_molten_2].results[1].amount = 480

local brass_molten_3= "angels-liquid-molten-brass-3"
data_recipe[brass_molten_3].subgroup = is_alloys_casting_2
data_recipe[brass_molten_3].icons = THREE_I(copper_ingot, zinc_ingot, brass_molten_angels, number_3)
data_recipe[brass_molten_3].energy_required = 8
data_recipe[brass_molten_3].ingredients =
{
    {type = item, name = copper_ingot, amount = 16},
    {type = item, name = zinc_ingot, amount = 16},
    {type = item, name = tin_ingot, amount = 8},
    {type = item, name = lead_ingot, amount = 8}
}
data_recipe[brass_molten_3].results[1].amount = 480

data_item[brass_plate_bob].localised_description = show_formula and {chemical_formula, "CuZn"} or nil
data_item[brass_plate_bob].subgroup = is_alloys_casting_2
data_item[brass_plate_bob].weight = 5000

local brass_plate_angels = "angels-plate-brass"
data_recipe[brass_plate_angels].subgroup = is_alloys_casting_2
data_recipe[brass_plate_angels].icons = TWO_I(brass_molten_angels, brass_plate_bob)
data_recipe[brass_plate_angels].ingredients[1].amount = 60

-- GUNMETAL
data_fluid[gunmetal_molten_angels].localised_description = show_formula and {chemical_formula, "CuSnZn"} or nil
data_fluid[gunmetal_molten_angels].subgroup = is_alloys_casting_3
data_recipe[gunmetal_molten_angels].subgroup = is_alloys_casting_3
data_recipe[gunmetal_molten_angels].icons = B_F_L(copper_ingot, tin_ingot, zinc_ingot, gunmetal_molten_angels)
data_recipe[gunmetal_molten_angels].energy_required = 8
data_recipe[gunmetal_molten_angels].ingredients[1].amount = 16 -- Sn
data_recipe[gunmetal_molten_angels].ingredients[2].amount = 16 -- Zn
data_recipe[gunmetal_molten_angels].ingredients[3].amount = 16 -- Cu
data_recipe[gunmetal_molten_angels].results[1].amount = 240

data_item[gunmetal_plate_bob].localised_description = show_formula and {chemical_formula, "SnZnCu"} or nil
data_item[gunmetal_plate_bob].subgroup = is_alloys_casting_3

local gunmetal_plate_angels = "angels-plate-gunmetal"
data_recipe[gunmetal_plate_angels].subgroup = is_alloys_casting_3
data_recipe[gunmetal_plate_angels].icons = TWO_I(gunmetal_molten_angels, gunmetal_plate_bob)
data_recipe[gunmetal_plate_angels].ingredients[1].amount = 60

-- INVAR
data_fluid[invar_molten_angels].localised_description = show_formula and {chemical_formula, "FeNi"} or nil
data_fluid[invar_molten_angels].subgroup = is_alloys_casting_4
data_recipe[invar_molten_angels].subgroup = is_alloys_casting_4
data_recipe[invar_molten_angels].icons = THREE_I(iron_ingot, nickel_ingot, invar_molten_angels)
data_recipe[invar_molten_angels].energy_required = 8
data_recipe[invar_molten_angels].ingredients[1].name = iron_ingot
data_recipe[invar_molten_angels].ingredients[1].amount = 16
data_recipe[invar_molten_angels].ingredients[2].name = nickel_ingot
data_recipe[invar_molten_angels].ingredients[2].amount = 16
data_recipe[invar_molten_angels].results[1].amount = 240

data_item[invar_plate_bob].localised_description = show_formula and {chemical_formula, "FeNi"} or nil
data_item[invar_plate_bob].subgroup = is_alloys_casting_4

local invar_plate_angels = "angels-plate-invar"
data_recipe[invar_plate_angels].subgroup = is_alloys_casting_4
data_recipe[invar_plate_angels].icons = TWO_I(invar_molten_angels, invar_plate_bob)
data_recipe[invar_plate_angels].ingredients[1].amount = 60

-- COBALT-STEEL
data_fluid[cobalt_steel_molten_angels].localised_description = show_formula and {chemical_formula, "CoFeC"} or nil
data_fluid[cobalt_steel_molten_angels].subgroup = is_alloys_casting_5
data_recipe[cobalt_steel_molten_angels].subgroup = is_alloys_casting_5
data_recipe[cobalt_steel_molten_angels].icons = THREE_I(steel_ingot, cobalt_ingot, cobalt_steel_molten_angels)
data_recipe[cobalt_steel_molten_angels].energy_required = 8
data_recipe[cobalt_steel_molten_angels].ingredients[1].amount = 16
data_recipe[cobalt_steel_molten_angels].ingredients[2].amount = 16
data_recipe[cobalt_steel_molten_angels].results[1].amount = 240

data_item[cobalt_steel_plate_bob].localised_description = show_formula and {chemical_formula, "CoFeC"} or nil
data_item[cobalt_steel_plate_bob].subgroup = is_alloys_casting_5

local cobalt_steel_plate_angels = "angels-plate-cobalt-steel"
data_recipe[cobalt_steel_plate_angels].subgroup = is_alloys_casting_5
data_recipe[cobalt_steel_plate_angels].icons = TWO_I(cobalt_steel_molten_angels, cobalt_steel_plate_bob)
data_recipe[cobalt_steel_plate_angels].ingredients[1].amount = 60

-- NITINOL
data_fluid[nitinol_molten_angels].localised_description = show_formula and {chemical_formula, "NiTi"} or nil
data_fluid[nitinol_molten_angels].subgroup = is_alloys_casting_6
data_recipe[nitinol_molten_angels].subgroup = is_alloys_casting_6
data_recipe[nitinol_molten_angels].icons = THREE_I(titanium_ingot, nickel_ingot, nitinol_molten_angels)
data_recipe[nitinol_molten_angels].energy_required = 8
data_recipe[nitinol_molten_angels].ingredients[1].amount = 16
data_recipe[nitinol_molten_angels].ingredients[2].amount = 16
data_recipe[nitinol_molten_angels].results[1].amount = 240

data_item[nitinol_plate_bob].localised_description = show_formula and {chemical_formula, "NiTi"} or nil
data_item[nitinol_plate_bob].subgroup = is_alloys_casting_6

local nitinol_plate_angels = "angels-plate-nitinol"
data_recipe[nitinol_plate_angels].subgroup = is_alloys_casting_6
data_recipe[nitinol_plate_angels].icons = TWO_I(nitinol_molten_angels, nitinol_plate_bob)
data_recipe[nitinol_plate_angels].ingredients[1].amount = 60

bobmods.lib.recipe.update_recycling_recipe
({
    copper_cable,
    tin_cable,
    silver_cable,
    gold_cable,
    platinum_cable,
    concrete,
    reinforced_concrete,
    concrete_brick,
    reinforced_concrete_brick,
})