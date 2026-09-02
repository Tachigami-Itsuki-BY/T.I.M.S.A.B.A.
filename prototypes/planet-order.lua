-- FIRST CIRCLE PLANETS
data_planet[planet_nauvis].order = x .. "-" .. planet_nauvis
data_planet[planet_vulcanus].order = x .. "-" .. planet_vulcanus
data_planet[planet_gleba].order = x .. "-" .. planet_gleba
data_planet[planet_fulgora].order = x .. "-" .. planet_fulgora

-- SECOND CIRCLE PLANETS
if mods[moshine_mods] then
    data_planet[planet_moshine].order = x .. "-" .. planet_moshine
end

if mods[arig_mods] then
    data_planet[planet_arig].order = x .. "-" .. planet_arig
end

if mods[hyarion_mods] then
    data_planet[planet_hyarion].order = x .. "-" .. planet_hyarion
end

if mods[tellus_mods] then
    data_planet[planet_tellus].order = x .. "-" .. planet_tellus
end

if mods[corrundum_mods] then
    data_planet[planet_corrundum].order = x .. "-" .. planet_corrundum
end

if mods[castra_mods] then
    data_planet[planet_castra].order = x .. "-" .. planet_castra
end

if mods[shchierbin_mods] then
    data_planet[planet_shchierbin].order = x .. "-" .. planet_shchierbin
end

if mods[muria_mods] then
    data_planet[planet_muria].order = x .. "-" .. planet_muria
end

if mods[pelagos_mods] then
    data_planet[planet_pelagos].order = x .. "-" .. planet_pelagos
end

if mods[apia_carnova_mods] then
    data_planet[planet_apia].order = x .. "-" .. planet_apia

    data_planet[planet_carnova].order = x .. "-" .. planet_carnova
end

-- THIRD CIRCLE PLANETS
data_planet[planet_aquilo].order = x .. "-" .. planet_aquilo

if mods[paracelsin_mods] then
    data_planet[planet_paracelsin].order = x .. "-" .. planet_paracelsin
end

if mods[secretas_frozeta_mods] then
    data_space_location[planet_secretas].order = x .. "-" .. planet_secretas
end

if mods[maraxsis_mods] then
    data_planet[planet_maraxsis].order = x .. "-" .. planet_maraxsis
end

-- FOURTH CIRCLE PLANETS
if mods[vesta_mods] then
    data_planet[planet_vesta].order = x .. "-" .. planet_vesta
end

-- FINAL CIRCLE PLANET
local shattered_planet = "shattered-planet"
if mods[shattered_mods] then
    data_planet[planet_shattered].order = x .. "-" .. shattered_planet
end

-- MOONS
if mods[muluna_mods] then
    data_planet[planet_muluna].order = y .. "-" .. planet_muluna
end

if mods[panglia_mods] then
    data_planet[planet_panglia].order = y .. "-" .. planet_panglia
end

if mods[secretas_frozeta_mods] then
    data_planet[planet_frozeta].order = y .. "-" .. planet_frozeta
end

if mods[terrapalus_mods] then
    data_planet[planet_terrapalus].order = y .. "-" .. planet_terrapalus
end

if mods[lignumis_mods] then
    data_planet[planet_lignumis].order = y .. "-" .. planet_lignumis
end

-- OTHERS
ig_space = "space"
is_others_space = "is-others-space"
TIMSABA.functions.create_subgroups(ig_space, {{name = is_others_space, order = j_b}})

local solar_system_edge = "solar-system-edge"
data_space_location[solar_system_edge].subgroup = is_others_space
data_space_location[solar_system_edge].order = z .. "-" .. solar_system_edge

data_space_location[shattered_planet].subgroup = is_others_space
data_space_location[shattered_planet].order = z .. "-" .. shattered_planet

data_surface[space_platform].subgroup = is_others_space
data_surface[space_platform].order = z .. "-" .. space_platform

if mods["AsteroidBelt"] then
    local asteroid_belt_inner_edge = "asteroid-belt-inner-edge"
    data_space_location[asteroid_belt_inner_edge].subgroup = is_others_space
    data_space_location[asteroid_belt_inner_edge].order = z .. "-" .. asteroid_belt_inner_edge

    local asteroid_belt_outer_edge = "asteroid-belt-outer-edge"
    data_space_location[asteroid_belt_outer_edge].subgroup = is_others_space
    data_space_location[asteroid_belt_outer_edge].order = z .. "-" .. asteroid_belt_outer_edge
end

if mods[apia_carnova_mods] then
    local apia_carnova_orbit = "apia-carnova-orbit"
    data_space_location[apia_carnova_orbit].subgroup = is_others_space
    data_space_location[apia_carnova_orbit].order = z .. "-" .. apia_carnova_orbit
end