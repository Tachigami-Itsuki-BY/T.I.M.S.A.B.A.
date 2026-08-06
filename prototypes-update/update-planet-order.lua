-- PLANETS
data_planet[planet_nauvis].order = a_a
data_planet[planet_vulcanus].order = a_b
data_planet[planet_gleba].order = a_c
data_planet[planet_fulgora].order = a_d
data_planet[planet_aquilo].order = a_e

if mods[moshine_mods] then
    data_planet[planet_moshine].order = a_f
end

if mods[arig_mods] then
    data_planet[planet_arig].order = a_g
end

if mods[hyarion_mods] then
    data_planet[planet_hyarion].order = a_h
end

if mods[tellus_mods] then
    data_planet[planet_tellus].order = a_i
end

if mods[paracelsin_mods] then
    data_planet[planet_paracelsin].order = a_j
end

if mods[corrundum_mods] then
    data_planet[planet_corrundum].order = a_k
end

if mods[secretas_frozeta_mods] then
    data_space_location[planet_secretas].order = a_l
end

if mods[castra_mods] then
    data_planet[planet_castra].order = a_m
end

-- MOONS
if mods[muluna_mods] then
    data_planet[planet_muluna].order = a_a
end

if mods[panglia_mods] then
    data_planet[planet_panglia].order = a_b
end

if mods[secretas_frozeta_mods] then
    data_planet[planet_frozeta].order = a_c
end

if mods[terrapalus_mods] then
    data_planet[planet_terrapalus].order = a_d
end

-- OTHERS
data_space_location["solar-system-edge"].order = x

data_space_location["shattered-planet"].order = y

data_surface[space_platform].order = z