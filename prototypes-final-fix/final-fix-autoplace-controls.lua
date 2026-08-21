local data_autoplace_control = data.raw["autoplace-control"]
-- PLANETS
-- NAUVIS
data_autoplace_control[coal].order = data_planet[planet_nauvis].order .. a
data_autoplace_control[ore_saphirite].order = data_planet[planet_nauvis].order .. a_a
data_autoplace_control[ore_jivolite].order = data_planet[planet_nauvis].order .. a_b
data_autoplace_control[ore_stiratite].order = data_planet[planet_nauvis].order .. a_c
data_autoplace_control[ore_crotinnium].order = data_planet[planet_nauvis].order .. a_d
data_autoplace_control[ore_rubyte].order = data_planet[planet_nauvis].order .. a_e
data_autoplace_control[ore_bobmonium].order = data_planet[planet_nauvis].order .. a_f
data_autoplace_control[molybdenite_ore].order =  data_planet[planet_nauvis].order .. a_g
data_autoplace_control[powellite_ore].order =  data_planet[planet_nauvis].order .. a_h
data_autoplace_control[crude_oil].order = data_planet[planet_nauvis].order .. a_i
data_autoplace_control["angels-natural-gas"].order = data_planet[planet_nauvis].order .. a_j
data_autoplace_control["angels-fissure"].order = data_planet[planet_nauvis].order .. a_k

-- VULCANUS
data_autoplace_control["vulcanus_coal"].order = data_planet[planet_vulcanus].order .. a
local wolframite_ore_ac = "tungsten_ore"
data_autoplace_control[wolframite_ore_ac].localised_name = {"", "[item=tungsten-ore] ", {"entity-name.wolframite"}}
data_autoplace_control[wolframite_ore_ac].order = data_planet[planet_vulcanus].order .. a_a
data_autoplace_control[calcite].order = data_planet[planet_vulcanus].order .. a_b
data_autoplace_control["sulfuric_acid_geyser"].order = data_planet[planet_vulcanus].order .. a_c

-- GLEBA
data_autoplace_control["gleba_stone"].order = data_planet[planet_gleba].order .. a

-- FULGORA
data_autoplace_control[scrap].order = data_planet[planet_fulgora].order .. a

-- AQUILO
data_autoplace_control["aquilo_crude_oil"].order = data_planet[planet_aquilo].order .. a
local thermal_water_geyser_ac = "lithium_brine"
data_autoplace_control[thermal_water_geyser_ac].localised_name = {"", "[entity=lithium-brine] ", {"entity-name.thermal-water-geyser"}}
data_autoplace_control[thermal_water_geyser_ac].order = data_planet[planet_aquilo].order .. a_a
data_autoplace_control["fluorine_vent"].order = data_planet[planet_aquilo].order .. a_b

-- MOSHINE
if mods[moshine_mods] then
    data_autoplace_control["multi_ore"].order = data_planet[planet_moshine].order .. a
    data_autoplace_control["steam_geyser"].order = data_planet[planet_moshine].order .. a_a
end

-- ARIG
if mods[arig_mods] then
    data_autoplace_control["arig_stone"].order = data_planet[planet_arig].order .. a
    data_autoplace_control["heavy-oil-geyser"].order = data_planet[planet_arig].order .. a_a
end

-- HYARION
if mods[hyarion_mods] then
    data_autoplace_control["hyarion_iron"].order = data_planet[planet_hyarion].order .. a
    data_autoplace_control["hyarion_carbon"].order = data_planet[planet_hyarion].order .. a_a
    data_autoplace_control["hyarion_quartz"].order = data_planet[planet_hyarion].order .. a_b
    data_autoplace_control["hyarion_ruby"].order = data_planet[planet_hyarion].order .. a_c
    data_autoplace_control["hyarion_sapphire"].order = data_planet[planet_hyarion].order .. a_d
    data_autoplace_control["hyarion_emerald"].order = data_planet[planet_hyarion].order .. a_e
end

-- TELLUS
if mods[tellus_mods] then
    data_autoplace_control["tellus_stone"].order = data_planet[planet_tellus].order .. a
end

-- PARACELSIN
if mods[paracelsin_mods] then
    data_autoplace_control[vaterite].order = data_planet[planet_paracelsin].order .. a
    data_autoplace_control[sphalerite_ore].order = data_planet[planet_paracelsin].order .. a_b
    data_autoplace_control[tetrahedrite_ore].order = data_planet[planet_paracelsin].order .. a_c
    data_autoplace_control["water_cryovolcano"].order = data_planet[planet_paracelsin].order .. a_d
end

-- CORRUNDUM
if mods[corrundum_mods] then
    data_autoplace_control["platinum_ore"].order = data_planet[planet_corrundum].order .. a
    data_autoplace_control["chalcopyrite_ore"].order = data_planet[planet_corrundum].order .. a_a
    data_autoplace_control["sulfur_ore"].order = data_planet[planet_corrundum].order .. a_b
end

-- CASTRA
if mods[castra_mods] then
    data_autoplace_control[millerite_ore].order = data_planet[planet_castra].order .. a
    data_autoplace_control[gunpowder].order = data_planet[planet_castra].order .. a_a
    data_autoplace_control["hydrogen-sulfide-vent"].order = data_planet[planet_castra].order .. a_b
end

-- SHCHIERBIN
if mods[shchierbin_mods] then
    data_autoplace_control["vanadium_ore"].order = data_planet[planet_shchierbin].order .. a
    data_autoplace_control["natural_gas"].order = data_planet[planet_shchierbin].order .. a_a
    data_autoplace_control["carbon-ore"].order = data_planet[planet_shchierbin].order .. a_b
end

-- MARAXSIS
if mods[maraxsis_mods] then
    data_autoplace_control["maraxsis-coral"].order = data_planet[planet_maraxsis].order .. a
end

-- VESTA
if mods[vesta_mods] then
    data_autoplace_control["vesta_crude_oil"].order = data_planet[planet_vesta].order .. a
    local deuterium = "deuterium"
    data_autoplace_control[deuterium].localised_name = {"", "[fluid=angels-gas-deuterium] ", {"autoplace-control-name.deuterium"}}
    data_autoplace_control[deuterium].order = data_planet[planet_vesta].order .. a_a
    local tritium = "tritium"
    data_autoplace_control[tritium].localised_name = {"", "[fluid=tritium-gas] ", {"autoplace-control-name.tritium"}}
    data_autoplace_control[tritium].order = data_planet[planet_vesta].order .. a_b
end

-- SHATTERED
if mods[shattered_mods] then
    data_autoplace_control["shattered_uranium_ore"] = nil
end

-- MURIA
if mods[muria_mods] then
    data_autoplace_control["chlorine_salts"].order = data_planet[planet_muria].order .. a
end

-- MOONS
-- MULUNA
if mods[muluna_mods] then
    data_autoplace_control[metallic_asteroid_chunk].localised_name = {"", "[entity=metallic-asteroid-chunk] ", {"entity-name.metallic-chunk"}}
    data_autoplace_control[metallic_asteroid_chunk].order = data_planet[planet_muluna].order .. a
    data_autoplace_control[carbonic_asteroid_chunk].localised_name = {"", "[entity=carbonic-asteroid-chunk] ", {"entity-name.carbonic-chunk"}}
    data_autoplace_control[carbonic_asteroid_chunk].order = data_planet[planet_muluna].order .. a_a
    data_autoplace_control[oxide_asteroid_chunk].localised_name = {"", "[entity=oxide-asteroid-chunk] ", {"entity-name.oxide-chunk"}}
    data_autoplace_control[oxide_asteroid_chunk].order = data_planet[planet_muluna].order .. a_b
    data_autoplace_control[anorthite_chunk].order = data_planet[planet_muluna].order .. a_c
end

-- FROZETA
if mods[secretas_frozeta_mods] then
    data_autoplace_control["spaceship_scrap"].order = data_planet[planet_frozeta].order .. a
end

-- TERRAPALUS
if mods[terrapalus_mods] then
    data_autoplace_control[palusium_ore].order = data_planet[planet_terrapalus].order .. a
end