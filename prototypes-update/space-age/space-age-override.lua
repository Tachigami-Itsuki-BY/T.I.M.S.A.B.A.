data_item[rocket_silo].order = a
data_item[rocket_silo].stack_size = 1
data_item[rocket_silo].weight = 100000000
data_recipe[rocket_silo].order = a
data_recipe[rocket_silo].energy_required = 32
data_recipe[rocket_silo].ingredients =
{
    {type = item, name = electric_engine_unit, amount = 128},
    {type = item, name = low_density_structure, amount = 64},
    {type = item, name = heat_shielding_tile, amount = 128},
    {type = item, name = advanced_processing_unit, amount = 64},
    {type = item, name = copper_tungsten_pipe, amount = 64},
    {type = item, name = reinforced_concrete, amount = 256},
    {type = item, name = tungsten_plate_bob, amount = 256},
    {type = item, name = tungsten_carbide_plate_bob, amount = 128},
    {type = item, name = copper_tungsten_plate_bob, amount = 512}
}
data_rocket_silo[rocket_silo].order = a
data_rocket_silo[rocket_silo].energy_usage = (4800 - drain) .. kW
data_rocket_silo[rocket_silo].energy_source.drain = drain .. kW

data_recipe[rocket_part].order = b
data_recipe[rocket_part].energy_required = 4
data_recipe[rocket_part].ingredients =
{
    {type = item, name = low_density_structure, amount = 2},
    {type = item, name = heat_shielding_tile, amount = 16},
    {type = item, name = advanced_processing_unit, amount = 2},
    {type = item, name = copper_tungsten_pipe, amount = 32},
    {type = item, name = rocket_fuel, amount = 2}
}

if mods[muluna_mods] then
    rocket_part_muluna = "rocket-part-muluna"
    data_recipe[rocket_part_muluna].icons = R_P_I(rocket_part, planet_muluna)
    data_recipe[rocket_part_muluna].order = c .. "-" .. data_planet[planet_muluna].order
    data_recipe[rocket_part_muluna].energy_required = 4
    data_recipe[rocket_part_muluna].ingredients =
    {
        {type = item, name = low_density_structure, amount = 1},
        {type = item, name = heat_shielding_tile, amount = 8},
        {type = item, name = advanced_processing_unit, amount = 1},
        {type = item, name = copper_tungsten_pipe, amount = 16},
        {type = item, name = rocket_fuel, amount = 1}
    }
end

if mods[arig_mods] then
    rocket_part_arig = "planetaris-arig-rocket-part"
    data_recipe[rocket_part_arig].icons = R_P_I(rocket_part, planet_arig)
    data_recipe[rocket_part_arig].order = b .. "-" .. data_planet[planet_arig].order
    data_recipe[rocket_part_arig].energy_required = 4
    data_recipe[rocket_part_arig].ingredients =
    {
        {type = item, name = rocket_biofuel, amount = 2},
        {type = item, name = advanced_processing_unit, amount = 2},
        {type = item, name = cactus_plastic, amount = 2},
        {type = item, name = glass_bob, amount = 2}
    }
end

if mods[tellus_mods] then
    rocket_part_tellus = "planetaris-tellus-rocket-part"
    data_recipe[rocket_part_tellus].icons = R_P_I(rocket_part, planet_tellus)
    data_recipe[rocket_part_tellus].order = b .. "-" .. data_planet[planet_tellus].order
    data_recipe[rocket_part_tellus].energy_required = 4
    data_recipe[rocket_part_tellus].ingredients =
    {
        {type = item, name = low_density_structure, amount = 4},
        {type = item, name = magnesium_sheet, amount = 8},
        {type = item, name = pesticide, amount = 2},
        {type = item, name = mycelia_composite, amount = 8},
        {type = item, name = rocket_fuel, amount = 8}
    }
end

if mods[maraxsis_mods] then
    rocket_part_maraxsis = "maraxsis-rocket-part"
    data_recipe[rocket_part_maraxsis].icons = R_P_I(rocket_part, planet_maraxsis)
    data_recipe[rocket_part_maraxsis].order = b .. "-" .. data_planet[planet_maraxsis].order
    data_recipe[rocket_part_maraxsis].energy_required = 4
    data_recipe[rocket_part_maraxsis].ingredients =
    {
        {type = item, name = low_density_structure, amount = 2},
        {type = item, name = advanced_processing_unit, amount = 2},
        {type = item, name = rocket_fuel, amount = 2},
        {type = item, name = super_sealant_substance_maraxsis, amount = 2}
    }
end

if mods[muria_mods] then
    rocket_part_muria = "muria-rocket-part"
    data_recipe[rocket_part_muria].icons = R_P_I(rocket_part, planet_muria)
    data_recipe[rocket_part_muria].order = b .. "-" .. data_planet[planet_muria].order
    data_recipe[rocket_part_muria].energy_required = 4
    data_recipe[rocket_part_muria].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 2},
        {type = item, name = leaded_fuel, amount = 2},
        {type = item, name = anti_corrosion_cladding, amount = 2}
    }
end

data_item[cargo_landing_pad].order = d .. "[" .. cargo_landing_pad .. "]"
data_recipe[cargo_landing_pad].order = d .. "[" .. cargo_landing_pad .. "]"
data_recipe[cargo_landing_pad].energy_required = 32
data_recipe[cargo_landing_pad].ingredients =
{
    {type = item, name = electric_engine_unit, amount = 32},
    {type = item, name = heat_shielding_tile, amount = 128},
    {type = item, name = advanced_processing_unit, amount = 8},
    {type = item, name = reinforced_concrete, amount = 128},
    {type = item, name = molybdenum_rhenium_plate, amount = 32}
}
data.raw[cargo_landing_pad][cargo_landing_pad].order = d .. "[" .. cargo_landing_pad .. "]"

local cargo_pod = "cargo-pod"
data.raw[cargo_pod][cargo_pod].order =  e .. "[" .. cargo_pod .. "]"

data_item_subgroup[space_platform].order = b

data_item[space_platform_foundation].stack_size = 200
data_item[space_platform_foundation].weight = 5000
data_recipe[space_platform_foundation].energy_required = 8
data_recipe[space_platform_foundation].ingredients =
{
    {type = item, name = molybdenum_plate, amount = 16},
    {type = item, name = rhenium_plate, amount = 8},
    {type = item, name = nitinol_plate_bob, amount = 16}
}

local space_platform_starter_pack = "space-platform-starter-pack"
data_SP_starter_pack[space_platform_starter_pack].subgroup = space_platform
data_SP_starter_pack[space_platform_starter_pack].order = b
data_recipe[space_platform_starter_pack].subgroup = space_platform
data_recipe[space_platform_starter_pack].order = b
data_recipe[space_platform_starter_pack].energy_required = 64
data_recipe[space_platform_starter_pack].ingredients =
{
    {type = item, name = advanced_processing_unit, amount = 16},
    {type = item, name = space_platform_foundation, amount = 64},
    {type = item, name = nitinol_plate_bob, amount = 16}
}

data_item[cargo_bay].stack_size = 8
data_item[cargo_bay].weight = 125000
data_recipe[cargo_bay].energy_required = 8
data_recipe[cargo_bay].ingredients =
{
    {type = item, name = low_density_structure, amount = 16},
    {type = item, name = advanced_processing_unit, amount = 4},
    {type = item, name = nitinol_plate_bob, amount = 16}
}

data_item[asteroid_collector].order = d
data_item[asteroid_collector].stack_size = 8
data_item[asteroid_collector].weight = 125000
data_recipe[asteroid_collector].order = d
data_recipe[asteroid_collector].energy_required = 8
data_recipe[asteroid_collector].ingredients =
{
    {type = item, name = electric_engine_unit, amount = 8},
    {type = item, name = low_density_structure, amount = 8},
    {type = item, name = heat_shielding_tile, amount = 16},
    {type = item, name = advanced_processing_unit, amount = 4}
}
data_asteroid_collector[asteroid_collector].order = d
data_asteroid_collector[asteroid_collector].inventory_size = 40
data_asteroid_collector[asteroid_collector].passive_energy_usage = 250 .. J
data_asteroid_collector[asteroid_collector].arm_energy_usage = 500 .. J
data_asteroid_collector[asteroid_collector].arm_slow_energy_usage = 750 .. J

data_item[crusher].order = e
data_item[crusher].stack_size = 32
data_item[crusher].weight = 31250
data_recipe[crusher].order = e
data_recipe[crusher].energy_required = 8
data_recipe[crusher].ingredients =
{
    {type = item, name = electric_engine_unit, amount = 8},
    {type = item, name = low_density_structure, amount = 16},
    {type = item, name = molybdenum_rhenium_plate, amount = 8}
}
data_assembling[crusher].order = e
data_assembling[crusher].energy_usage = 465 .. kW
data_assembling[crusher].energy_source.drain = drain .. kW

local thruster = "thruster"
data_item[thruster].order = g
data_item[thruster].stack_size = 8
data_item[thruster].weight = 125000
data_recipe[thruster].order = g
data_recipe[thruster].energy_required = 8
data_recipe[thruster].ingredients =
{
    {type = item, name = molybdenum_gear_wheel, amount = 4},
    {type = item, name = advanced_processing_unit, amount = 8},
    {type = item, name = heat_shielding_tile, amount = 16},
    {type = item, name = rhenium_bearing, amount = 8},
    {type = item, name = molybdenum_rhenium_pipe, amount = 8}
}
data_thruster[thruster].order = g
data_thruster[thruster].min_performance = {fluid_volume = 0.1, fluid_usage = 0.125, effectivity = 1}
data_thruster[thruster].max_performance = {fluid_volume = 0.8, fluid_usage = 2, effectivity = 0.51}


if mods[panglia_mods] then
    data_item[asteroid_collector].localised_name = {"entity-name.asteroid-collector-1"}
    data_recipe[asteroid_collector].localised_name = {"entity-name.asteroid-collector-1"}
    data_asteroid_collector[asteroid_collector].localised_name = {"entity-name.asteroid-collector-1"}

    local asteroid_collector_2 = "snouz_better_asteroid_collector"
    data_item[asteroid_collector_2].subgroup = space_platform
    data_item[asteroid_collector_2].order = e
    data_item[asteroid_collector_2].stack_size = 8
    data_item[asteroid_collector_2].weight = 125000
    data_recipe[asteroid_collector_2].subgroup = space_platform
    data_recipe[asteroid_collector_2].order = e
    data_recipe[asteroid_collector_2].energy_required = 8
    data_recipe[asteroid_collector_2].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 8},
        {type = item, name = asteroid_collector, amount = 1},
        {type = item, name = sentient_processor, amount = 1},
        {type = fluid, name = fluoroketone_cold, amount = 60}
    }
    data_recipe[asteroid_collector_2].results =
    {
        {type = item, name = asteroid_collector_2, amount = 1},
        {type = fluid, name = fluoroketone_hot, amount = 30}
    }
    data_asteroid_collector[asteroid_collector_2].localised_description = data_asteroid_collector[asteroid_collector].localised_description
    data_asteroid_collector[asteroid_collector_2].subgroup = space_platform
    data_asteroid_collector[asteroid_collector_2].order = e
    data_asteroid_collector[asteroid_collector_2].inventory_size = 80
    data_asteroid_collector[asteroid_collector_2].passive_energy_usage = 500 .. J
    data_asteroid_collector[asteroid_collector_2].arm_energy_usage = 1000 .. J
    data_asteroid_collector[asteroid_collector_2].arm_slow_energy_usage = 1500 .. J

    local spaceship_wall = "snouz_wall_hull"
    data_item[spaceship_wall].subgroup = is_space_platform_mods
    data_item[spaceship_wall].order = a
    data_item[spaceship_wall].stack_size = 200
    data_recipe[spaceship_wall].subgroup = is_space_platform_mods
    data_recipe[spaceship_wall].order = a
    data_recipe[spaceship_wall].energy_required = 8
    data_recipe[spaceship_wall].ingredients =
    {
        {type = item, name = space_platform_foundation, amount = 1},
        {type = item, name = stone_wall, amount = 1},
        {type = item, name = panglite_fiber, amount = 4}
    }
    data_wall[spaceship_wall].subgroup = is_space_platform_mods
    data_wall[spaceship_wall].order = a

    bobmods.lib.recipe.update_recycling_recipe
    ({
        asteroid_collector_2,
        spaceship_wall
    })

    data_technology[spaceship_wall].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1}
    }
end

if mods[muluna_mods] then
    data_item[satellite_radar].subgroup = is_space_platform_mods
    data_item[satellite_radar].order = b
    data_item[satellite_radar].stack_size = 1
    data_recipe[satellite_radar].subgroup = is_space_platform_mods
    data_recipe[satellite_radar].order = b
    data_recipe[satellite_radar].energy_required = 8
    if mods[bobwarfare] then
        data_recipe[satellite_radar].ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 512},
            {type = item, name = radar_5, amount = 256},
            {type = item, name = aluminium_plate_bob, amount = 512},
            {type = item, name = superconductor, amount = 512},
            {type = item, name = silicon_cell_mods, amount = 128},
            {type = item, name = telescope, amount = 64}
        }
    else
        data_recipe[satellite_radar].ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 512},
            {type = item, name = radar_1, amount = 256},
            {type = item, name = aluminium_plate_bob, amount = 512},
            {type = item, name = superconductor, amount = 512},
            {type = item, name = silicon_cell_mods, amount = 128},
            {type = item, name = telescope, amount = 64}
        }
    end
    data_accumulator[satellite_radar].localised_name = {"entity-name.satellite-radar"}
    data_accumulator[satellite_radar].subgroup = is_space_platform_mods
    data_accumulator[satellite_radar].order = b

    bobmods.lib.recipe.update_recycling_recipe({satellite_radar})
end

if mods[hyarion_mods] then
    data_item[space_manufactorer].subgroup = is_space_platform_mods
    data_item[space_manufactorer].order = c
    data_item[space_manufactorer].stack_size = 32
    data_item[space_manufactorer].weight = 31250
    data_recipe[space_manufactorer].subgroup = is_space_platform_mods
    data_recipe[space_manufactorer].order = c
    data_recipe[space_manufactorer].energy_required = 16
    data_recipe[space_manufactorer].ingredients =
    {
        {type = item, name = tungsten_plate_bob, amount = 64},
        {type = item, name = fiber_optics_cable, amount = 32},
        {type = item, name = simulating_unit, amount = 16},
        {type = item, name = beryllium_plate, amount = 64}
    }
    data_assembling[space_manufactorer].subgroup = is_space_platform_mods
    data_assembling[space_manufactorer].order = c
    data_assembling[space_manufactorer].module_slots = 8
    data_assembling[space_manufactorer].energy_usage = (240 - drain) .. kW
    data_assembling[space_manufactorer].energy_source.emissions_per_minute.pollution = 0
    data_assembling[space_manufactorer].energy_source.drain = drain .. kW

    data_item[zero_grav_accumulator].subgroup = is_space_platform_mods
    data_item[zero_grav_accumulator].order = e
    data_item[zero_grav_accumulator].stack_size = 32
    data_item[zero_grav_accumulator].weight = 31250
    data_recipe[zero_grav_accumulator].subgroup = is_space_platform_mods
    data_recipe[zero_grav_accumulator].order = e
    data_recipe[zero_grav_accumulator].ingredients =
    {
        {type = item, name = battery_graphene, amount = 32},
        {type = item, name = bismuth_transistor, amount = 16},
        {type = item, name = beryllium_plate, amount = 8},
        {type = item, name = refractory_ceramics, amount = 16}
    }
    data_accumulator[zero_grav_accumulator].subgroup = is_space_platform_mods
    data_accumulator[zero_grav_accumulator].order = e
    data_accumulator[zero_grav_accumulator].energy_source.buffer_capacity = 76800 .. kJ
    data_accumulator[zero_grav_accumulator].energy_source.input_flow_limit = 4800 .. kW
    data_accumulator[zero_grav_accumulator].energy_source.output_flow_limit = 4800 .. kW

    data_item[electromagnetic_radar].subgroup = is_space_platform_mods
    data_item[electromagnetic_radar].order = f
    data_item[electromagnetic_radar].stack_size = 32
    data_item[electromagnetic_radar].weight = 31250
    data_recipe[electromagnetic_radar].subgroup = is_space_platform_mods
    data_recipe[electromagnetic_radar].order = f
    data_recipe[electromagnetic_radar].energy_required = 8
    data_recipe[electromagnetic_radar].ingredients =
    {
        {type = item, name = bismuth_transistor, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 32},
        {type = item, name = simulating_unit, amount = 16},
        {type = item, name = refractory_ceramics, amount = 8}
    }
    data_radar[electromagnetic_radar].subgroup = is_space_platform_mods
    data_radar[electromagnetic_radar].order = f
    data_radar[electromagnetic_radar].energy_per_sector = (1200 * 30) .. kJ
    data_radar[electromagnetic_radar].energy_per_nearby_scan = (1200 / 5) .. kJ
    data_radar[electromagnetic_radar].energy_usage = 1200 .. kW
    data_radar[electromagnetic_radar].max_distance_of_nearby_sector_revealed = 13
    data_radar[electromagnetic_radar].max_distance_of_sector_revealed = 29

    bobmods.lib.recipe.update_recycling_recipe
    ({
        space_manufactorer,
        zero_grav_accumulator,
        electromagnetic_radar
    })
end

local metallic_asteroid_reprocessing = "metallic-asteroid-reprocessing"
local metallic_asteroids =
{
    {type = data_asteroid, name = "small-metallic-asteroid",             order = a},
    {type = data_asteroid, name = "medium-metallic-asteroid",            order = b},
    {type = data_asteroid, name = "big-metallic-asteroid",               order = c},
    {type = data_asteroid, name = "huge-metallic-asteroid",              order = d},
    {type = data_asteroid, name = metallic_asteroid_chunk,               order = e},
    {type = data_item,     name = metallic_asteroid_chunk,               order = e},
    {type = data_recipe,   name = metallic_asteroid_crushing_1,          order = e_a},
    {type = data_recipe,   name = advanced_metallic_asteroid_crushing_1, order = f_a},
    {type = data_recipe,   name = metallic_asteroid_reprocessing,        order = z}
}
for _, ASTEROID in pairs(metallic_asteroids) do
    if ASTEROID.type[ASTEROID.name] then
        ASTEROID.type[ASTEROID.name].subgroup = is_space_environment_1
        ASTEROID.type[ASTEROID.name].order = ASTEROID.order
    end
end

data_item[metallic_asteroid_chunk].stack_size = 50

data_recipe[metallic_asteroid_crushing_1].localised_name = {"recipe-name.metallic-asteroid-crushing-1"}
data_recipe[metallic_asteroid_crushing_1].icons = TWO_I(metallic_asteroid_chunk, iron_ore)
data_recipe[metallic_asteroid_crushing_1].energy_required = 4
data_recipe[metallic_asteroid_crushing_1].results = {{type = item, name = iron_ore, amount = 8}}

data_recipe[advanced_metallic_asteroid_crushing_1].localised_name = {"recipe-name.advanced-metallic-asteroid-crushing-1"}
data_recipe[advanced_metallic_asteroid_crushing_1].icons = TWO_I(metallic_asteroid_chunk, nickel_ore_bob)
data_recipe[advanced_metallic_asteroid_crushing_1].energy_required = 4
data_recipe[advanced_metallic_asteroid_crushing_1].results = {{type = item, name = nickel_ore_bob, amount = 8}}

data_recipe[metallic_asteroid_reprocessing].icons = THREE_R_I(metallic_asteroid_chunk, carbonic_asteroid_chunk, oxide_asteroid_chunk)
data_recipe[metallic_asteroid_reprocessing].results =
{
    {type = item, name = carbonic_asteroid_chunk, amount = 1, probability = 0.5},
    {type = item, name = oxide_asteroid_chunk, amount = 1, probability = 0.5}
}

local carbonic_asteroid_reprocessing = "carbonic-asteroid-reprocessing"
local carbonic_asteroids =
{
    {type = data_asteroid, name = "small-carbonic-asteroid",             order = a},
    {type = data_asteroid, name = "medium-carbonic-asteroid",            order = b},
    {type = data_asteroid, name = "big-carbonic-asteroid",               order = c},
    {type = data_asteroid, name = "huge-carbonic-asteroid",              order = d},
    {type = data_asteroid, name = carbonic_asteroid_chunk,               order = e},
    {type = data_item,     name = carbonic_asteroid_chunk,               order = e},
    {type = data_recipe,   name = carbonic_asteroid_crushing_1,          order = e_a},
    {type = data_recipe,   name = advanced_carbonic_asteroid_crushing_1, order = f_a},
    {type = data_recipe,   name = carbonic_asteroid_reprocessing,        order = z}
}
for _, ASTEROID in pairs(carbonic_asteroids) do
    if ASTEROID.type[ASTEROID.name] then
        ASTEROID.type[ASTEROID.name].subgroup = is_space_environment_2
        ASTEROID.type[ASTEROID.name].order = ASTEROID.order
    end
end

data_item[carbonic_asteroid_chunk].stack_size = 50

data_recipe[carbonic_asteroid_crushing_1].localised_name = {"recipe-name.carbonic-asteroid-crushing-1"}
data_recipe[carbonic_asteroid_crushing_1].icons = TWO_I(carbonic_asteroid_chunk, coal)
data_recipe[carbonic_asteroid_crushing_1].energy_required = 4
data_recipe[carbonic_asteroid_crushing_1].results = {{type = item, name = coal, amount = 8}}

data_recipe[advanced_carbonic_asteroid_crushing_1].localised_name = {"recipe-name.advanced-carbonic-asteroid-crushing-1"}
data_recipe[advanced_carbonic_asteroid_crushing_1].icons = TWO_I(carbonic_asteroid_chunk, sulfur)
data_recipe[advanced_carbonic_asteroid_crushing_1].energy_required = 4
data_recipe[advanced_carbonic_asteroid_crushing_1].results = {{type = item, name = sulfur, amount = 8}}

data_recipe[carbonic_asteroid_reprocessing].icons = THREE_R_I(carbonic_asteroid_chunk, metallic_asteroid_chunk, oxide_asteroid_chunk)
data_recipe[carbonic_asteroid_reprocessing].results =
{
    {type = item, name = metallic_asteroid_chunk, amount = 1, probability = 0.5},
    {type = item, name = oxide_asteroid_chunk, amount = 1, probability = 0.5}
}

local oxide_asteroid_reprocessing = "oxide-asteroid-reprocessing"
local oxide_asteroids =
{
    {type = data_asteroid, name = "small-oxide-asteroid",             order = a},
    {type = data_asteroid, name = "medium-oxide-asteroid",            order = b},
    {type = data_asteroid, name = "big-oxide-asteroid",               order = c},
    {type = data_asteroid, name = "huge-oxide-asteroid",              order = d},
    {type = data_asteroid, name = oxide_asteroid_chunk,               order = e},
    {type = data_item,     name = oxide_asteroid_chunk,               order = e},
    {type = data_recipe,   name = oxide_asteroid_crushing_1,          order = e_a},
    {type = data_recipe,   name = advanced_oxide_asteroid_crushing_1, order = f_a},
    {type = data_recipe,   name = oxide_asteroid_reprocessing,        order = z}
}
for _, ASTEROID in pairs(oxide_asteroids) do
    if ASTEROID.type[ASTEROID.name] then
        ASTEROID.type[ASTEROID.name].subgroup = is_space_environment_3
        ASTEROID.type[ASTEROID.name].order = ASTEROID.order
    end
end

data_item[oxide_asteroid_chunk].stack_size = 50

data_recipe[oxide_asteroid_crushing_1].localised_name = {"recipe-name.oxide-asteroid-crushing-1"}
data_recipe[oxide_asteroid_crushing_1].icons = TWO_I(oxide_asteroid_chunk, ice)
data_recipe[oxide_asteroid_crushing_1].energy_required = 4
data_recipe[oxide_asteroid_crushing_1].results = {{type = item, name = ice, amount = 8}}

data_recipe[advanced_oxide_asteroid_crushing_1].localised_name = {"recipe-name.advanced-oxide-asteroid-crushing-1"}
data_recipe[advanced_oxide_asteroid_crushing_1].icons = TWO_I(oxide_asteroid_chunk, sodium_oxide)
data_recipe[advanced_oxide_asteroid_crushing_1].energy_required = 4
data_recipe[advanced_oxide_asteroid_crushing_1].results = {{type = item, name = sodium_oxide, amount = 8}}
data_recipe[advanced_oxide_asteroid_crushing_1].hidden = true
data_recipe[advanced_oxide_asteroid_crushing_1].hidden_in_factoriopedia = true

data_recipe[oxide_asteroid_reprocessing].icons = THREE_R_I(oxide_asteroid_chunk, carbonic_asteroid_chunk, metallic_asteroid_chunk)
data_recipe[oxide_asteroid_reprocessing].results =
{
    {type = item, name = carbonic_asteroid_chunk, amount = 1, probability = 0.5},
    {type = item, name = metallic_asteroid_chunk, amount = 1, probability = 0.5}
}

local promethium_asteroids =
{
    {type = data_asteroid, name = "small-promethium-asteroid",  order = a},
    {type = data_asteroid, name = "medium-promethium-asteroid", order = b},
    {type = data_asteroid, name = "big-promethium-asteroid",    order = c},
    {type = data_asteroid, name = "huge-promethium-asteroid",   order = d},
    {type = data_asteroid, name = promethium_asteroid_chunk,    order = e},
    {type = data_item,     name = promethium_asteroid_chunk,    order = e}
}
for _, ASTEROID in pairs(promethium_asteroids) do
    if ASTEROID.type[ASTEROID.name] then
        ASTEROID.type[ASTEROID.name].subgroup = is_space_environment_6
        ASTEROID.type[ASTEROID.name].order = ASTEROID.order
    end
end

data_item[promethium_asteroid_chunk].localised_description = show_formula and {chemical_formula, "Pm"} or nil
data_item[promethium_asteroid_chunk].stack_size = 50

if mods[muluna_mods] then
    anorthite_crushing_1 = "anorthite-crushing"
    advanced_anorthite_crushing_1 = "advanced-anorthite-crushing"
    local anorthite_asteroids =
    {
        {type = data_asteroid, name = "small-anorthite-asteroid",    order = a},
        {type = data_asteroid, name = "medium-anorthite-asteroid",   order = b},
        {type = data_asteroid, name = "big-anorthite-asteroid",      order = c},
        {type = data_asteroid, name = "huge-anorthite-asteroid",     order = d},
        {type = data_asteroid, name = anorthite_chunk,               order = e},
        {type = data_item,     name = anorthite_chunk,               order = e},
        {type = data_recipe,   name = anorthite_crushing_1,          order = e_a},
        {type = data_recipe,   name = advanced_anorthite_crushing_1, order = f_a}
    }
    for _, ASTEROID in pairs(anorthite_asteroids) do
        if ASTEROID.type[ASTEROID.name] then
            ASTEROID.type[ASTEROID.name].subgroup = is_space_environment_7
            ASTEROID.type[ASTEROID.name].order = ASTEROID.order
        end
    end

    data_item[anorthite_chunk].localised_description = show_formula and {chemical_formula, "CaAl[font=default-tiny-bold]2[/font]Si[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]8[/font]"} or nil
    data_item[anorthite_chunk].stack_size = 50
    data_item[anorthite_chunk].weight = 20000

    data_recipe[anorthite_crushing_1].icons = TWO_I(anorthite_chunk, aluminium_oxide)
    data_recipe[anorthite_crushing_1].energy_required = 4
    data_recipe[anorthite_crushing_1].results = {{type = item, name = aluminium_oxide, amount = 8}}

    data_recipe[advanced_anorthite_crushing_1].icons = TWO_I(anorthite_chunk, silicon_boule_mods)
    data_recipe[advanced_anorthite_crushing_1].energy_required = 4
    data_recipe[advanced_anorthite_crushing_1].results = {{type = item, name = silicon_boule_mods, amount = 8}}

    data_resource[metallic_asteroid_chunk].factoriopedia_simulation = nil
    data_resource[carbonic_asteroid_chunk].factoriopedia_simulation = nil
    data_resource[oxide_asteroid_chunk].factoriopedia_simulation = nil
end

if mods[hyarion_mods] then
    local bismuth_asteroid_chunk = "bismuth-asteroid-chunk"
    bismuth_asteroid_crushing = "bismuth-asteroid-crushing"
    local bismuth_asteroids =
    {
        {type = data_asteroid, name = "small-bismuth-asteroid",  order = a},
        {type = data_asteroid, name = "medium-bismuth-asteroid", order = b},
        {type = data_asteroid, name = "big-bismuth-asteroid",    order = c},
        {type = data_asteroid, name = "huge-bismuth-asteroid",   order = d},
        {type = data_item,     name = bismuth_asteroid_chunk,    order = e},
        {type = data_recipe,   name = bismuth_asteroid_crushing, order = e_a},
        {type = data_item,     name = raw_bismuth,               order = f},
        {type = data_item,     name = polished_bismuth,          order = g},
        {type = data_recipe,   name = polished_bismuth,          order = g},
        {type = data_item,     name = bismuth_transistor,        order = i},
        {type = data_recipe,   name = bismuth_transistor,        order = i}
    }
    for _, BA in pairs(bismuth_asteroids) do
        if BA.type[BA.name] then
            BA.type[BA.name].subgroup = is_space_environment_8
            BA.type[BA.name].order = BA.order
        end
    end

    data_item[bismuth_asteroid_chunk].localised_description = show_formula and {chemical_formula, "Bi"} or nil
    data_item[bismuth_asteroid_chunk].stack_size = 50
    data_item[bismuth_asteroid_chunk].weight = 20000

    data_recipe[bismuth_asteroid_crushing].icons = TWO_I(bismuth_asteroid_chunk, raw_bismuth)
    data_recipe[bismuth_asteroid_crushing].energy_required = 4
    data_recipe[bismuth_asteroid_crushing].results = {{type = item, name = raw_bismuth, amount = 16}}

    data_item[raw_bismuth].localised_description = show_formula and {chemical_formula, "Bi"} or nil
    data_item[raw_bismuth].stack_size = 200

    data_item[polished_bismuth].localised_description = show_formula and {chemical_formula, "Bi"} or nil
    data_item[polished_bismuth].stack_size = 200
    data_recipe[polished_bismuth].icons = THREE_I(raw_bismuth, polishing_compound_hyarion, polished_bismuth)
    data_recipe[polished_bismuth].energy_required = 4
    data_recipe[polished_bismuth].ingredients =
    {
        {type = item, name = raw_bismuth, amount = 4},
        {type = fluid, name = polishing_compound_hyarion, amount = 15}
    }

    data_item[bismuth_transistor].stack_size = 200
    data_recipe[bismuth_transistor].energy_required = 1
    data_recipe[bismuth_transistor].ingredients =
    {
        {type = item, name = bismuth_oxyselenide, amount = 2},
        {type = item, name = niobium_titanium_cable, amount = 16},
        {type = item, name = plastic, amount = 4},
        {type = fluid, name = photoresist_liquid, amount = 30}
    }

    bobmods.lib.recipe.update_recycling_recipe({bismuth_transistor})
end

if mods[secretas_frozeta_mods] then
    local auric_asteroid_chunk = "auric-asteroid-chunk"
    auric_asteroid_crushing = "auric-asteroid-crushing"
    local auric_asteroids =
    {
        {type = data_asteroid, name = "small-auric-asteroid",     order = a},
        {type = data_asteroid, name = "medium-auric-asteroid",    order = b},
        {type = data_asteroid, name = "big-auric-asteroid",       order = c},
        {type = data_asteroid, name = "huge-auric-asteroid",      order = d},
        {type = data_item,     name = auric_asteroid_chunk,       order = e},
        {type = data_recipe,   name = auric_asteroid_crushing,    order = e_a}
    }
    for _, AA in pairs(auric_asteroids) do
        if AA.type[AA.name] then
            AA.type[AA.name].subgroup = is_space_environment_9
            AA.type[AA.name].order = AA.order
        end
    end

    data_item[auric_asteroid_chunk].localised_description = show_formula and {chemical_formula, "Au"} or nil
    data_item[auric_asteroid_chunk].stack_size = 50
    data_item[auric_asteroid_chunk].weight = 20000

    data_recipe[auric_asteroid_crushing].icons = TWO_I(auric_asteroid_chunk, gold_ore_bob)
    data_recipe[auric_asteroid_crushing].energy_required = 4
    data_recipe[auric_asteroid_crushing].results = {{type = item, name = gold_ore_bob, amount = 16}}
end

bobmods.lib.recipe.update_recycling_recipe
({
    rocket_silo,
    cargo_landing_pad,
    space_platform_foundation,
    cargo_bay,
    asteroid_collector,
    thruster,
})

if mods[hyarion_mods] then
    local is_space_facilities = "space-facilities"
    data_tool[space_science_pack].subgroup = is_space_facilities
    data_tool[space_science_pack].order = a
    data_recipe[space_science_pack].subgroup = is_space_facilities
    data_recipe[space_science_pack].icons = R_P_I(space_science_pack, space_platform, nil, number_1)
    data_recipe[space_science_pack].order = a
    data_recipe[space_science_pack].energy_required = 16
    data_recipe[space_science_pack].ingredients =
    {
        {type = item, name = nitinol_plate_bob, amount = 2},
        {type = item, name = carbon_angels, amount = 4},
        {type = item, name = ice, amount = 4}
    }
    data_recipe[space_science_pack].results[1].amount = 4

    space_science_pack_hyarion = "planetaris-space-science-pack"
    data_recipe[space_science_pack_hyarion].subgroup = is_space_facilities
    data_recipe[space_science_pack_hyarion].icons = R_P_I(space_science_pack, space_platform, nil, number_2)
    data_recipe[space_science_pack_hyarion].order = a_a
    data_recipe[space_science_pack_hyarion].energy_required = 32
    data_recipe[space_science_pack_hyarion].ingredients =
    {
        {type = item, name = nitinol_plate_bob, amount = 8},
        {type = item, name = carbon_angels, amount = 16},
        {type = item, name = ice, amount = 16}
    }
    data_recipe[space_science_pack_hyarion].results[1].amount = 32

    data_tool[promethium_science_pack].subgroup = is_space_facilities
    data_tool[promethium_science_pack].order = b
    data_recipe[promethium_science_pack].subgroup = is_space_facilities
    data_recipe[promethium_science_pack].icons = R_P_I(promethium_science_pack, space_platform, nil, number_1)
    data_recipe[promethium_science_pack].order = b
    data_recipe[promethium_science_pack].energy_required = 16
    data_recipe[promethium_science_pack].ingredients =
    {
        {type = item, name = promethium_asteroid_chunk, amount = 32},
        {type = item, name = quantum_processor, amount = 1},
        {type = item, name = biter_egg, amount = 8}
    }
    data_recipe[promethium_science_pack].results[1].amount = 8

    promethium_science_pack_hyarion = "planetaris-promethium-science-pack"
    data_recipe[promethium_science_pack_hyarion].subgroup = is_space_facilities
    data_recipe[promethium_science_pack_hyarion].icons = R_P_I(promethium_science_pack, space_platform, nil, number_2)
    data_recipe[promethium_science_pack_hyarion].order = b_a
    data_recipe[promethium_science_pack_hyarion].energy_required = 32
    data_recipe[promethium_science_pack_hyarion].ingredients =
    {
        {type = item, name = promethium_asteroid_chunk, amount = 64},
        {type = item, name = quantum_processor, amount = 2},
        {type = item, name = biter_egg, amount = 16}
    }
    data_recipe[promethium_science_pack_hyarion].results[1].amount = 32

    if mods[moshine_mods] then
        data_recipe[promethium_science_pack_hyarion].ingredients[1].name = promethium_ore
        data_recipe[promethium_science_pack_hyarion].ingredients[1].amount = 256
    end
end

ice_melting = "ice-melting"
data_recipe[ice_melting].subgroup = is_space_processing
data_recipe[ice_melting].icons = TWO_I(ice, water)
data_recipe[ice_melting].order = a
data_recipe[ice_melting].results[1].amount = 15

data_recipe[hydrogen_chloride_separation].category = angels_petrochem_electrolyser
data_recipe[hydrogen_chloride_separation].subgroup = is_space_processing
data_recipe[hydrogen_chloride_separation].icons = FOUR_R_I(hydrogen_chloride_angels, hydrogen_angels, nil, chlorine_angels)
data_recipe[hydrogen_chloride_separation].order = d
data_recipe[hydrogen_chloride_separation].energy_required = 8 -- 2HCl -electrode/electrolys-> H₂ + Cl₂
data_recipe[hydrogen_chloride_separation].ingredients =
{
    {type = fluid, name = hydrogen_chloride_angels, amount = 240},
    {type = item, name = electrode, amount = 1}
}
data_recipe[hydrogen_chloride_separation].results =
{
    {type = fluid, name = hydrogen_angels, amount = 120},
    {type = fluid, name = chlorine_angels, amount = 120},
    {type = item, name = electrode_used, amount = 1}
}

data_fluid[thruster_fuel].subgroup = is_space_processing
data_fluid[thruster_fuel].order = y

data_recipe[thruster_fuel].subgroup = is_space_processing
data_recipe[thruster_fuel].icons = THREE_I(dimethylhydrazine_angels, hydrazine_angels, thruster_fuel, number_1)
data_recipe[thruster_fuel].order = y
data_recipe[thruster_fuel].energy_required = 4
data_recipe[thruster_fuel].ingredients =
{
    {type = fluid, name = dimethylhydrazine_angels, amount = 60},
    {type = fluid, name = hydrazine_angels, amount = 60}
}
data_recipe[thruster_fuel].results = {{type = fluid, name = thruster_fuel, amount = 120}}
data_recipe[thruster_fuel].main_product = thruster_fuel
TIMSABA.barreling.add_dangerous_fluid(thruster_fuel)
data_recipe[advanced_thruster_fuel].subgroup = is_space_processing
data_recipe[advanced_thruster_fuel].icons = THREE_I(dimethylhydrazine_angels, hydrazine_angels, thruster_fuel, number_2)
data_recipe[advanced_thruster_fuel].order = y_a
data_recipe[advanced_thruster_fuel].energy_required = 4
data_recipe[advanced_thruster_fuel].ingredients =
{
    {type = fluid, name = dimethylhydrazine_angels, amount = 60},
    {type = fluid, name = hydrazine_angels, amount = 60},
    {type = item, name = catalyst_yellow, amount = 1}
}
data_recipe[advanced_thruster_fuel].results =
{
    {type = fluid, name = thruster_fuel, amount = 480},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1}
}

data_fluid[thruster_oxidizer].subgroup = is_space_processing
data_fluid[thruster_oxidizer].order = z
TIMSABA.barreling.add_dangerous_fluid(thruster_oxidizer)
data_recipe[thruster_oxidizer].subgroup = is_space_processing
data_recipe[thruster_oxidizer].icons = THREE_I(nitric_acid_angels, dinitrogen_tetroxide_angels, thruster_oxidizer, number_1)
data_recipe[thruster_oxidizer].order = z
data_recipe[thruster_oxidizer].energy_required = 4
data_recipe[thruster_oxidizer].ingredients =
{
    {type = fluid, name = nitric_acid_angels, amount = 60},
    {type = fluid, name = dinitrogen_tetroxide_angels, amount = 60}
}
data_recipe[thruster_oxidizer].results = {{type = fluid, name = thruster_oxidizer, amount = 120}}
data_recipe[thruster_oxidizer].main_product = thruster_oxidizer

data_recipe[advanced_thruster_oxidizer].subgroup = is_space_processing
data_recipe[advanced_thruster_oxidizer].icons = THREE_I(nitric_acid_angels, dinitrogen_tetroxide_angels, thruster_oxidizer, number_2)
data_recipe[advanced_thruster_oxidizer].order = z_a
data_recipe[advanced_thruster_oxidizer].energy_required = 4
data_recipe[advanced_thruster_oxidizer].ingredients =
{
    {type = fluid, name = nitric_acid_angels, amount = 60},
    {type = fluid, name = dinitrogen_tetroxide_angels, amount = 60},
    {type = item, name = catalyst_yellow, amount = 1}
}
data_recipe[advanced_thruster_oxidizer].results =
{
    {type = fluid, name = thruster_oxidizer, amount = 480},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1}
}

bobmods.lib.recipe.update_recycling_recipe({crusher})