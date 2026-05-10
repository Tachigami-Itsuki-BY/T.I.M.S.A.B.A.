local data_autoplace_control = data.raw["autoplace-control"]
data_autoplace_control[coal].order = a
data_autoplace_control[saphirite_ore].order = a_a
data_autoplace_control[jivolite_ore].order = a_b
data_autoplace_control[stiratite_ore].order = a_c
data_autoplace_control[crotinnium_ore].order = a_d
data_autoplace_control[rubyte_ore].order = a_e
data_autoplace_control[bobmonium_ore].order = a_f
-- a_g
-- a_h
data_autoplace_control[crude_oil].order = a_i
data_autoplace_control["angels-natural-gas"].order = a_j
data_autoplace_control["angels-fissure"].order = a_k

data_autoplace_control["vulcanus_coal"].order = b
local wolframite_ore_ac = "tungsten_ore"
data_autoplace_control[wolframite_ore_ac].localised_name = {"", "[entity=tungsten-ore] ", {"entity-name.wolframite-ore"}}
data_autoplace_control[wolframite_ore_ac].order = b_a
data_autoplace_control[calcite].order = b_b
data_autoplace_control["sulfuric_acid_geyser"].order = b_c

--data_autoplace_control["gleba_stone"].order = c

data_autoplace_control[scrap].order = d

data_autoplace_control["aquilo_crude_oil"].order = e
local thermal_water_geyser_ac = "lithium_brine"
data_autoplace_control[thermal_water_geyser_ac].localised_name = {"", "[entity=lithium-brine] ", {"entity-name.thermal-water-geyser"}}
data_autoplace_control[thermal_water_geyser_ac].order = e_a
data_autoplace_control["fluorine_vent"].order = e_b