local data_autoplace_control = data.raw["autoplace-control"]
data_autoplace_control[coal].order = a
data_autoplace_control[ore_saphirite].order = a_a
data_autoplace_control[ore_jivolite].order = a_b
data_autoplace_control[ore_stiratite].order = a_c
data_autoplace_control[ore_crotinnium].order = a_d
data_autoplace_control[ore_rubyte].order = a_e
data_autoplace_control[ore_bobmonium].order = a_f
-- a_g
-- a_h
data_autoplace_control[crude_oil].order = a_i
data_autoplace_control["angels-natural-gas"].order = a_j
data_autoplace_control["angels-fissure"].order = a_k

data_autoplace_control["vulcanus_coal"].order = b
local wolframite_ore_ac = "tungsten_ore"
data_autoplace_control[wolframite_ore_ac].localised_name = {"", "[entity=tungsten-ore] ", {"entity-name.wolframite"}}
data_autoplace_control[wolframite_ore_ac].order = b_a
data_autoplace_control[calcite].order = b_b
data_autoplace_control["sulfuric_acid_geyser"].order = b_c

--data_autoplace_control["gleba_stone"].order = b_d

data_autoplace_control[scrap].order = b_e

data_autoplace_control["aquilo_crude_oil"].order = b_f
local thermal_water_geyser_ac = "lithium_brine"
data_autoplace_control[thermal_water_geyser_ac].localised_name = {"", "[entity=lithium-brine] ", {"entity-name.thermal-water-geyser"}}
data_autoplace_control[thermal_water_geyser_ac].order = b_g
data_autoplace_control["fluorine_vent"].order = b_h

-- MULUNA
if mods [muluna_mods] then
    data_autoplace_control[metallic_asteroid_chunk].localised_name = {"", "[entity=metallic-asteroid-chunk] ", {"entity-name.metallic-chunk"}}
    data_autoplace_control[metallic_asteroid_chunk].order = c
    data_autoplace_control[carbonic_asteroid_chunk].localised_name = {"", "[entity=carbonic-asteroid-chunk] ", {"entity-name.carbonic-chunk"}}
    data_autoplace_control[carbonic_asteroid_chunk].order = c_a
    data_autoplace_control[oxide_asteroid_chunk].localised_name = {"", "[entity=oxide-asteroid-chunk] ", {"entity-name.oxide-chunk"}}
    data_autoplace_control[oxide_asteroid_chunk].order = c_b
    data_autoplace_control[anorthite_chunk].order = c_c
end

-- MOSHINE
if mods [moshine_mods] then
    data_autoplace_control["multi_ore"].order = c_d
    data_autoplace_control["steam_geyser"].order = c_e
end

-- ARIG
if mods [arig_mods] then
    data_autoplace_control["arig_stone"].order = c_f
    data_autoplace_control["heavy-oil-geyser"].order = c_g
end

--