data_recipe[automation_science_pack].energy_required = 4

data_recipe[logistic_science_pack].energy_required = 4

data_recipe[chemical_science_pack].ingredients =
{
    {type = item, name = engine_unit, amount = 2},
    {type = item, name = advanced_circuit, amount = 2},
    {type = item, name = sulfur, amount = 1},
    {type = item, name = sodium_hydroxide_angels, amount = 1}
}

data_recipe[military_science_pack].energy_required = 8

data_recipe[chemical_science_pack].energy_required = 16
data_recipe[chemical_science_pack].ingredients =
{
    {type = item, name = engine_unit, amount = 2},
    {type = item, name = advanced_circuit, amount = 2},
    {type = item, name = sulfur, amount = 1},
    {type = item, name = sodium_hydroxide_angels, amount = 1}
}

if mods[bobtech] then
    data_recipe[transport_science_pack].energy_required = 16
    data_recipe[transport_science_pack].ingredients =
    {
        {type = item, name = T3_inserter, amount = 4},
        {type = item, name = T3_transport_belt, amount = 2},
        {type = item, name = flying_robot_frame_1, amount = 1},
        {type = item, name = steel_chest, amount = 2}
    }
    data_recipe[transport_science_pack].results[1].amount = 4
end

data_recipe[production_science_pack].energy_required = 16
data_recipe[production_science_pack].ingredients =
{
    {type = item, name = rail, amount = 32},
    {type = item, name = electric_furnace_1, amount = 1},
    {type = item, name = productivity_module_1, amount = 1}
}
data_recipe[production_science_pack].results[1].amount = 4

data_recipe[utility_science_pack].energy_required = 16
data_recipe[utility_science_pack].ingredients =
{
    {type = item, name = low_density_structure, amount = 4},
    {type = item, name = processing_unit, amount = 2},
    {type = item, name = flying_robot_frame_1, amount = 2}
}
data_recipe[utility_science_pack].results[1].amount = 4

data_recipe[space_science_pack].icons = R_P_I(space_science_pack, space_platform)
data_recipe[space_science_pack].energy_required = 16
data_recipe[space_science_pack].ingredients =
{
    {type = item, name = nitinol_plate_bob, amount = 2},
    {type = item, name = carbon_angels, amount = 4},
    {type = item, name = ice, amount = 4}
}
data_recipe[space_science_pack].results[1].amount = 4

data_recipe[promethium_science_pack].icons = R_P_I(promethium_science_pack, space_platform)
data_recipe[promethium_science_pack].energy_required = 16
data_recipe[promethium_science_pack].ingredients =
{
    {type = item, name = promethium_asteroid_chunk, amount = 32},
    {type = item, name = quantum_processor, amount = 1},
    {type = item, name = biter_egg, amount = 8}
}
data_recipe[promethium_science_pack].results[1].amount = 8

if mods[bobtech] and mods[bobenemies] then
    local alien_science_pack_orange = "bob-alien-science-pack-orange"
    data_tool[alien_science_pack_orange].subgroup = is_alien_science_pack
    data_tool[alien_science_pack_orange].order = a
    data_recipe[alien_science_pack_orange].subgroup = is_alien_science_pack
    data_recipe[alien_science_pack_orange].order = a
    data_recipe[alien_science_pack_orange].energy_required = 8
    data_recipe[alien_science_pack_orange].results[1].amount = 8

    local alien_science_pack_blue = "bob-alien-science-pack-blue"
    data_tool[alien_science_pack_blue].subgroup = is_alien_science_pack
    data_tool[alien_science_pack_blue].order = b
    data_recipe[alien_science_pack_blue].subgroup = is_alien_science_pack
    data_recipe[alien_science_pack_blue].order = b
    data_recipe[alien_science_pack_blue].energy_required = 8
    data_recipe[alien_science_pack_blue].results[1].amount = 8

    local alien_science_pack_yellow = "bob-alien-science-pack-yellow"
    data_tool[alien_science_pack_yellow].subgroup = is_alien_science_pack
    data_tool[alien_science_pack_yellow].order = c
    data_recipe[alien_science_pack_yellow].subgroup = is_alien_science_pack
    data_recipe[alien_science_pack_yellow].order = c
    data_recipe[alien_science_pack_yellow].energy_required = 8
    data_recipe[alien_science_pack_yellow].results[1].amount = 8

    local alien_science_pack_purple = "bob-alien-science-pack-purple"
    data_tool[alien_science_pack_purple].subgroup = is_alien_science_pack
    data_tool[alien_science_pack_purple].order = d
    data_recipe[alien_science_pack_purple].subgroup = is_alien_science_pack
    data_recipe[alien_science_pack_purple].order = d
    data_recipe[alien_science_pack_purple].energy_required = 8
    data_recipe[alien_science_pack_purple].results[1].amount = 8

    local alien_science_pack_green = "bob-alien-science-pack-green"
    data_tool[alien_science_pack_green].subgroup = is_alien_science_pack
    data_tool[alien_science_pack_green].order = e
    data_recipe[alien_science_pack_green].subgroup = is_alien_science_pack
    data_recipe[alien_science_pack_green].order = e
    data_recipe[alien_science_pack_green].energy_required = 8
    data_recipe[alien_science_pack_green].results[1].amount = 8

    local alien_science_pack_red = "bob-alien-science-pack-red"
    data_tool[alien_science_pack_red].subgroup = is_alien_science_pack
    data_tool[alien_science_pack_red].order = f
    data_recipe[alien_science_pack_red].subgroup = is_alien_science_pack
    data_recipe[alien_science_pack_red].order = f
    data_recipe[alien_science_pack_red].energy_required = 8
    data_recipe[alien_science_pack_red].results[1].amount = 8

    local alien_science_pack = "bob-alien-science-pack"
    data_tool[alien_science_pack].subgroup = is_alien_science_pack
    data_tool[alien_science_pack].order = g
    data_recipe[alien_science_pack].subgroup = is_alien_science_pack
    data_recipe[alien_science_pack].order = g
    data_recipe[alien_science_pack].energy_required = 8
    data_recipe[alien_science_pack].results[1].amount = 8

    data_tool[gold_science_pack_bob].subgroup = is_alien_science_pack
    data_tool[gold_science_pack_bob].order = h
    data_recipe[gold_science_pack_bob].subgroup = is_alien_science_pack
    data_recipe[gold_science_pack_bob].order = h
    data_recipe[gold_science_pack_bob].energy_required = 32
    data_recipe[gold_science_pack_bob].results[1].amount = 4
end

local gear_wheels =
{
    {name = iron_gear_wheel, order = a},
    {name = steel_gear_wheel, order = b},
    {name = brass_gear_wheel, order = c},
    --{name = ceramic_gear_wheel, order = d},
    {name = cobalt_steel_gear_wheel, order = e},
    {name = titanium_gear_wheel, order = f},
    {name = tungsten_gear_wheel, order = g},
    {name = nitinol_gear_wheel, order = h},
    --{name = copper_tungsten_gear_wheel, order = i},
    --{name = molybdenum_gear_wheel, order = j}
}
for _, ITEM in pairs(gear_wheels) do
    data_item[ITEM.name].order = ITEM.order
    data_item[ITEM.name].stack_size = 200
    data_recipe[ITEM.name].order = ITEM.order
    data_recipe[ITEM.name].energy_required = 1
    data_recipe[ITEM.name].ingredients[1].amount = 1
end

data_item[iron_gear_wheel].localised_description = show_formula and {chemical_formula, "Fe"} or nil
data_recipe[iron_gear_wheel].icons = TWO_I(iron_plate, iron_gear_wheel)

data_item[steel_gear_wheel].localised_description = show_formula and {chemical_formula, "FeC"} or nil
data_recipe[steel_gear_wheel].icons = TWO_I(steel_plate, steel_gear_wheel)

data_item[brass_gear_wheel].localised_description = show_formula and {chemical_formula, "CuZn"} or nil
data_recipe[brass_gear_wheel].icons = TWO_I(brass_plate_bob, brass_gear_wheel)

data_item[cobalt_steel_gear_wheel].localised_description = show_formula and {chemical_formula, "CoFeC"} or nil
data_recipe[cobalt_steel_gear_wheel].icons = TWO_I(cobalt_steel_plate_bob, cobalt_steel_gear_wheel)

data_item[titanium_gear_wheel].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_recipe[titanium_gear_wheel].icons = TWO_I(titanium_plate_bob, titanium_gear_wheel)

data_item[tungsten_gear_wheel].localised_description = show_formula and {chemical_formula, "W"} or nil
data_recipe[tungsten_gear_wheel].category = angels_sintering_4
data_recipe[tungsten_gear_wheel].icons = TWO_I(tungsten_powder, tungsten_gear_wheel)
data_recipe[tungsten_gear_wheel].ingredients[1].name = tungsten_powder

data_item[nitinol_gear_wheel].localised_description = show_formula and {chemical_formula, "NiTi"} or nil
data_recipe[nitinol_gear_wheel].icons = TWO_I(nitinol_plate_bob, nitinol_gear_wheel)

local bearing_balls =
{
    --{name = iron_bearing_ball, order = a},
    {name = steel_bearing_ball, order = b},
    --{name = brass_bearing_ball, order = c},
    {name = ceramic_bearing_ball, order = d},
    {name = cobalt_steel_bearing_ball, order = e},
    {name = titanium_bearing_ball, order = f},
    --{name = tungsten_bearing_ball, order = g},
    {name = nitinol_bearing_ball, order = h},
    --{name = copper_tungsten_bearing_ball, order = i},
    --{name = rhenium_bearing_ball, order = j}
}
for _, ITEM in pairs(bearing_balls) do
    data_item[ITEM.name].order = ITEM.order
    data_item[ITEM.name].stack_size = 200
    data_recipe[ITEM.name].order = ITEM.order
    data_recipe[ITEM.name].energy_required = 1
    data_recipe[ITEM.name].results[1].amount = 8
end

data_item[steel_bearing_ball].localised_description = show_formula and {chemical_formula, "FeC"} or nil
data_recipe[steel_bearing_ball].icons = TWO_I(steel_plate, steel_bearing_ball)

data_item[ceramic_bearing_ball].localised_description = show_formula and {chemical_formula, "Si[font=default-tiny-bold]3[/font]N[font=default-tiny-bold]4[/font]"} or nil
if settings.startup[setting_early_sintering_oven].value then data_recipe[ceramic_bearing_ball].category = angels_sintering_2 end
data_recipe[ceramic_bearing_ball].icons = TWO_I(silicon_nitride_bob, ceramic_bearing_ball)

data_item[cobalt_steel_bearing_ball].localised_description = show_formula and {chemical_formula, "CoFeC"} or nil
data_recipe[cobalt_steel_bearing_ball].icons = TWO_I(cobalt_steel_plate_bob, cobalt_steel_bearing_ball)

data_item[titanium_bearing_ball].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_recipe[titanium_bearing_ball].icons = TWO_I(titanium_plate_bob, titanium_bearing_ball)

data_item[nitinol_bearing_ball].localised_description = show_formula and {chemical_formula, "NiTi"} or nil
data_recipe[nitinol_bearing_ball].icons = TWO_I(nitinol_plate_bob, nitinol_bearing_ball)

local bearings =
{
    --{name = iron_bearing, order = a},
    {name = steel_bearing, order = b},
    --{name = brass_bearing, order = c},
    {name = ceramic_bearing, order = d},
    {name = cobalt_steel_bearing, order = e},
    {name = titanium_bearing, order = f},
    --{name = tungsten_bearing_ball, order = g},
    {name = nitinol_bearing, order = h},
    --{name = copper_tungsten_bearing, order = i},
    --{name = rhenium_bearing, order = j}
}
for _, ITEM in pairs(bearings) do
    data_item[ITEM.name].subgroup = is_bearing
    data_item[ITEM.name].order = ITEM.order
    data_item[ITEM.name].stack_size = 200
    data_recipe[ITEM.name].subgroup = is_bearing
    data_recipe[ITEM.name].order = ITEM.order
    data_recipe[ITEM.name].energy_required = 1
end

data_item[steel_bearing].localised_description = show_formula and {chemical_formula, "FeC"} or nil
data_recipe[steel_bearing].icons = B_F_L(nil, steel_bearing_ball, steel_plate, steel_bearing)
data_recipe[steel_bearing].ingredients[1].amount = 2

data_item[ceramic_bearing].localised_description = show_formula and {chemical_formula, "Si[font=default-tiny-bold]3[/font]N[font=default-tiny-bold]4[/font]"} or nil
data_recipe[ceramic_bearing].category = crafting
if settings.startup[setting_early_sintering_oven].value then data_recipe[ceramic_bearing].category = angels_sintering_2 end
data_recipe[ceramic_bearing].icons = B_F_L(nil, ceramic_bearing_ball, silicon_nitride_bob, ceramic_bearing)
data_recipe[ceramic_bearing].ingredients =
{
    {type = item, name = ceramic_bearing_ball, amount = 16},
    {type = item, name = silicon_nitride_bob, amount = 2}
}

data_item[cobalt_steel_bearing].localised_description = show_formula and {chemical_formula, "CoFeC"} or nil
data_recipe[cobalt_steel_bearing].icons = B_F_L(lubricant, cobalt_steel_bearing_ball, cobalt_steel_plate_bob, cobalt_steel_bearing)

data_item[titanium_bearing].localised_description = show_formula and {chemical_formula, "Ti"} or nil
data_recipe[titanium_bearing].icons = B_F_L(lubricant, titanium_bearing_ball, titanium_plate_bob, titanium_bearing)

data_item[nitinol_bearing].localised_description = show_formula and {chemical_formula, "NiTi"} or nil
data_recipe[nitinol_bearing].icons = B_F_L(lubricant, nitinol_bearing_ball, nitinol_plate_bob, nitinol_bearing)

local function bearing_recipe(name, bearing_ball, plate)
    data_recipe[name].category = crafting_fluid
    data_recipe[name].ingredients =
    {
        {type = item, name = bearing_ball, amount = 16},
        {type = item, name = plate, amount = 2},
        {type = fluid, name = lubricant, amount = 15}
    }
end
bearing_recipe(cobalt_steel_bearing, cobalt_steel_bearing_ball, cobalt_steel_plate_bob)
bearing_recipe(titanium_bearing, titanium_bearing_ball, titanium_plate_bob)
bearing_recipe(nitinol_bearing, nitinol_bearing_ball, nitinol_plate_bob)

data_technology[battery_lead_acid].prerequisites = {"angels-lead-smelting-2", "plastics"}

data_item[battery_lead_acid].localised_name = {"item-name.battery"}
data_item[battery_lead_acid].order = a
data_recipe[battery_lead_acid].order = a
data_recipe[battery_lead_acid].ingredients =
{
    {type = item, name = lead_plate_bob, amount = 2},
    {type = item, name = lead_oxide_IV, amount = 1},
    {type = item, name = lead_sponge, amount = 1},
    {type = item, name = plastic, amount = 2},
    {type = fluid, name = sulfuric_acid_angels, amount = 30},
    {type = fluid, name = water_purified_angels, amount = 30}
}

data_item[battery_lithium_ion].localised_name = {"item-name.bob-lithium-ion-battery"}
data_item[battery_lithium_ion].order = b
data_recipe[battery_lithium_ion].order = b
data_recipe[battery_lithium_ion].energy_required = 4
data_recipe[battery_lithium_ion].ingredients =
{
    {type = item, name = lithium_perchlorate_bob, amount = 2},
    {type = item, name = lithium_cobalt_oxide_III_bob, amount = 1},
    {type = item, name = carbon_angels, amount = 1},
    {type = item, name = plastic, amount = 2},
    {type = fluid, name = ethylene_carbonate, amount = 30},
    {type = fluid, name = dimethyl_carbonate, amount = 30}
}

data_item[battery_silver_zinc].localised_name = {"item-name.bob-silver-zinc-battery"}
data_item[battery_silver_zinc].order = c
data_recipe[battery_silver_zinc].order = c
data_recipe[battery_silver_zinc].energy_required = 4
data_recipe[battery_silver_zinc].ingredients =
{
    {type = item, name = silver_oxide_I_bob, amount = 1},
    {type = item, name = zinc_plate_bob, amount = 1},
    {type = item, name = plastic, amount = 4},
    {type = fluid, name = sodium_hydroxide_solution_angels, amount = 60}
}

data_item[engine_unit].order = e
data_recipe[engine_unit].order = e
data_recipe[engine_unit].icons = BUILDING_R_I(engine_unit, steel_plate)
data_recipe[engine_unit].energy_required = 4
data_recipe[engine_unit].ingredients[2].amount = 2

data_item[electric_engine_unit].order = f
data_recipe[electric_engine_unit].order = f
data_recipe[electric_engine_unit].icons = BUILDING_R_I(electric_engine_unit, lubricant)
data_recipe[electric_engine_unit].energy_required = 4

data_item[low_density_structure].order = g
data_recipe[low_density_structure].order = g
data_recipe[low_density_structure].energy_required = 16
data_recipe[low_density_structure].icons = R_P_I(low_density_structure, nil, nil, number_1)
data_recipe[low_density_structure].ingredients =
{
    {type = item, name = aluminium_plate_bob, amount = 16},
    {type = item, name = titanium_plate_bob, amount = 2},
    {type = item, name = plastic, amount = 4}
}

data_item[heat_shielding_tile].order = h
data_recipe[heat_shielding_tile].order = h
data_recipe[heat_shielding_tile].icons = THREE_I(silicon_nitride_bob, tungsten_carbide_plate_bob, heat_shielding_tile)
data_recipe[heat_shielding_tile].energy_required = 16
data_recipe[heat_shielding_tile].ingredients =
{
    {type = item, name = silicon_nitride_bob, amount = 8},
    {type = item, name = tungsten_carbide_plate_bob, amount = 4}
}
data_recipe[heat_shielding_tile].results[1].amount = 16

data_item[rtg].order = i
data_recipe[rtg].order = i
data_recipe[rtg].energy_required = 16
data_recipe[rtg].ingredients =
{
    {type = item, name = aluminium_plate_bob, amount = 4},
    {type = item, name = lead_plate_bob, amount = 2},
    {type = item, name = plastic, amount = 2},
    {type = item, name = plutonium_239_bob, amount = 1}
}

data_recipe[resistor].energy_required = 4
data_recipe[resistor].results[1].amount = 4

data_recipe[transistor].energy_required = 4
data_recipe[transistor].ingredients =
{
    {type = item, name = silicon_wafer, amount = 2},
    {type = item, name = silver_cable, amount = 2},
    {type = item, name = plastic, amount = 1}
}
data_recipe[transistor].results[1].amount = 4

data_recipe[integrated_circuit].energy_required = 4
data_recipe[integrated_circuit].ingredients =
{
    {type = item, name = silicon_wafer, amount = 4},
    {type = item, name = insulated_cable, amount = 4},
    {type = item, name = plastic, amount = 1},
    {type = fluid, name = sulfuric_acid_angels, amount = 15}
}
data_recipe[integrated_circuit].results[1].amount = 4

data_recipe[CPU].energy_required = 4
data_recipe[CPU].ingredients =
{
    {type = item, name = silicon_nitride_bob, amount = 1},
    {type = item, name = platinum_cable, amount = 4},
    {type = item, name = silicon_wafer, amount = 8},
    {type = fluid, name = sulfuric_acid_angels, amount = 15}
}
data_recipe[CPU].results[1].amount = 4

data_item[wooden_board].order = a
data_recipe[wooden_board].icons = TWO_I(wood, wooden_board)
data_recipe[wooden_board].order = a
data_recipe[wooden_board].energy_required = 1

data_item[phenolic_board].order = b
data_recipe[phenolic_board].icons = THREE_I(paper, liquid_resin_angels, phenolic_board)
data_recipe[phenolic_board].order = b
data_recipe[phenolic_board].ingredients =
{
    {type = item, name = paper, amount = 4},
    {type = fluid, name = liquid_resin_angels, amount = 15}
}

data_recipe[glass_fiber_board].localised_name = {"item-name.angels-glass-fiber-board"}
data_recipe[glass_fiber_board].category = advanced_crafting
data_recipe[glass_fiber_board].additional_categories = {electronics_fluid}
data_recipe[glass_fiber_board].subgroup = is_boards
data_recipe[glass_fiber_board].icons = THREE_I(glass_coil_fiber, liquid_resin_angels, glass_fiber_board)
data_recipe[glass_fiber_board].order = c
data_recipe[glass_fiber_board].energy_required = 4
data_recipe[glass_fiber_board].ingredients =
{
    {type = item, name = glass_coil_fiber, amount = 4},
    {type = fluid, name = liquid_resin_angels, amount = 60}
}

data_item[basic_circuit_board].order = a
data_item[basic_circuit_board].subgroup = is_circuit_boards
data_recipe[basic_circuit_board].order = a
data_recipe[basic_circuit_board].subgroup = is_circuit_boards
data_recipe[basic_circuit_board].ingredients =
{
    {type = item, name = wooden_board, amount = 1},
    {type = item, name = copper_cable, amount = 4}
}

data_item[circuit_board].order = b
data_item[circuit_board].subgroup = is_circuit_boards
data_recipe[circuit_board].order = b
data_recipe[circuit_board].subgroup = is_circuit_boards
data_recipe[circuit_board].energy_required = 4
data_recipe[circuit_board].ingredients =
{
    {type = item, name = phenolic_board, amount = 1},
    {type = item, name = copper_plate, amount = 2},
    {type = item, name = tin_plate_bob, amount = 2},
    {type = fluid, name = iron_chloride_III_solution_angels, amount = 15}
}

data_item[improved_circuit_board].order = c
data_item[improved_circuit_board].subgroup = is_circuit_boards
data_recipe[improved_circuit_board].order = c
data_recipe[improved_circuit_board].subgroup = is_circuit_boards
data_recipe[improved_circuit_board].energy_required = 4
data_recipe[improved_circuit_board].ingredients =
{
    {type = item, name = glass_fiber_board, amount = 1},
    {type = item, name = copper_plate, amount = 2},
    {type = item, name = silver_plate_bob, amount = 2},
    {type = fluid, name = iron_chloride_III_solution_angels, amount = 15}
}

data_item[advanced_circuit_board].order = d
data_item[advanced_circuit_board].subgroup = is_circuit_boards
data_recipe[advanced_circuit_board].order = d
data_recipe[advanced_circuit_board].subgroup = is_circuit_boards
data_recipe[advanced_circuit_board].energy_required = 8
data_recipe[advanced_circuit_board].ingredients =
{
    {type = item, name = glass_fiber_board, amount = 1},
    {type = item, name = copper_plate, amount = 4},
    {type = item, name = gold_plate_bob, amount = 4},
    {type = fluid, name = iron_chloride_III_solution_angels, amount = 30}
}

data_item[electronic_circuit].order = a
data_recipe[electronic_circuit].order = a
data_recipe[electronic_circuit].ingredients =
{
    {type = item, name = basic_circuit_board, amount = 1},
    {type = item, name = resistor, amount = 4},
    {type = item, name = solder, amount = 2}
}

data_item[advanced_circuit].order = b
data_recipe[advanced_circuit].order = b
data_recipe[advanced_circuit].energy_required = 4

data_item[processing_unit].order = c
data_recipe[processing_unit].order = c
data_recipe[processing_unit].energy_required = 4
data_recipe[processing_unit].ingredients =
{
    {type = item, name = improved_circuit_board, amount = 1},
    {type = item, name = resistor, amount = 8},
    {type = item, name = transistor, amount = 8},
    {type = item, name = integrated_circuit, amount = 4},
    {type = item, name = solder, amount = 4}
}

data_item[advanced_processing_unit].order = d
data_recipe[advanced_processing_unit].order = d
data_recipe[advanced_processing_unit].energy_required = 8
data_recipe[advanced_processing_unit].ingredients =
{
    {type = item, name = advanced_circuit_board, amount = 1},
    {type = item, name = resistor, amount = 8},
    {type = item, name = CPU, amount = 4},
    {type = item, name = transistor, amount = 8},
    {type = item, name = integrated_circuit, amount = 8},
    {type = item, name = solder, amount = 8}
}

data_item[uranium_ore].localised_description = show_formula and {chemical_formula, "U"} or nil
data_item[uranium_ore].subgroup = is_nuclear_item
data_item[uranium_ore].order = a

data_item[uranium_234].localised_description = show_formula and {chemical_formula, "U-234"} or nil
data_item[uranium_234].subgroup = is_nuclear_item
data_item[uranium_234].order = b

data_item[uranium_235].localised_description = show_formula and {chemical_formula, "U-235"} or nil

data_item[uranium_238].localised_description = show_formula and {chemical_formula, "U-238"} or nil

data_item[neptunium_240].localised_description = show_formula and {chemical_formula, "Np-240"} or nil
data_item[neptunium_240].subgroup = is_nuclear_item
data_item[neptunium_240].order = c

if not mods[shattered_mods] then
    data_item[americium_241_angels].localised_description = show_formula and {chemical_formula, "Am-241"} or nil
    data_item[americium_241_angels].subgroup = is_nuclear_item
    data_item[americium_241_angels].order = d
    data_item[americium_241_angels].stack_size = 200

    data_item[curium_245_angels].localised_description = show_formula and {chemical_formula, "Cm-245"} or nil
    data_item[curium_245_angels].subgroup = is_nuclear_item
    data_item[curium_245_angels].order = e
    data_item[curium_245_angels].stack_size = 200
end

data_item[thorium_ore_bob].localised_description = show_formula and {chemical_formula, "Th"} or nil
data_item[thorium_ore_bob].subgroup = is_nuclear_item
data_item[thorium_ore_bob].order = f

if not mods[shattered_mods] then
    data_item[thorium_232_bob].localised_description = show_formula and {chemical_formula, "Th-232"} or nil
    data_item[thorium_232_bob].subgroup = is_nuclear_item
    data_item[thorium_232_bob].order = g
    data_item[thorium_232_bob].stack_size = 200
end

if not mods[shattered_mods] then
    data_item[plutonium_239_bob].localised_description = show_formula and {chemical_formula, "Pu-239"} or nil
    data_item[plutonium_239_bob].subgroup = is_nuclear_item
    data_item[plutonium_239_bob].order = h
    data_item[plutonium_239_bob].stack_size = 200
end

data_item[muon_fusion_catalyst].subgroup = is_nuclear_item
data_item[muon_fusion_catalyst].order = i

local uranium_processing = "uranium-processing"
data_recipe[uranium_processing].subgroup = is_nuclear_recipe
data_recipe[uranium_processing].icons = THREE_R_I(uranium_ore, uranium_235, uranium_238)
data_recipe[uranium_processing].order = a_a
data_recipe[uranium_processing].energy_required = 8
data_recipe[uranium_processing].ingredients[1].amount = 8
data_recipe[uranium_processing].results =
{
    {type = item, name = uranium_234, amount = 2, probability = 0.0055},
    {type = item, name = uranium_235, amount = 2, probability = 0.007},
    {type = item, name = uranium_238, amount = 2, probability = 0.9875}
}

local plutonium_synthesis = "angels-plutonium-synthesis"
data_recipe[plutonium_synthesis].subgroup = is_nuclear_recipe
if mods[shattered_mods] then
    data_recipe[plutonium_synthesis].icons = TWO_I(neptunium_240, plutonium_239_shattered)
else
    data_recipe[plutonium_synthesis].icons = TWO_I(neptunium_240, plutonium_239_bob)
end
data_recipe[plutonium_synthesis].order = b
data_recipe[plutonium_synthesis].energy_required = 128
data_recipe[plutonium_synthesis].results[1].amount = 4

local plutonium_recovery = "angels-americium-regeneration"
data_recipe[plutonium_recovery].subgroup = is_nuclear_recipe
if mods[shattered_mods] then
    data_recipe[plutonium_recovery].icons = THREE_I(plutonium_239_shattered, americium_241_shattered, plutonium_239_shattered)
else
    data_recipe[plutonium_recovery].icons = THREE_I(plutonium_239_bob, americium_241_angels, plutonium_239_bob)
end
data_recipe[plutonium_recovery].order = c
data_recipe[plutonium_recovery].energy_required = 128
data_recipe[plutonium_recovery].ingredients =
{
    {type = item, name = americium_241_angels, amount = 4},
    {type = item, name = plutonium_239_bob, amount = 1},
    {type = item, name = uranium_238, amount = 64}
}
data_recipe[plutonium_recovery].results =
{
    {type = item, name = plutonium_239_bob, amount = 5},
    {type = item, name = uranium_238, amount = 16}
}

local enrichment_process = "bobingabout-enrichment-process"
data_recipe[enrichment_process].subgroup = is_nuclear_recipe
if mods[shattered_mods] then
    data_recipe[enrichment_process].icons = TWO_D_I(plutonium_239_shattered, uranium_238, plutonium_239_shattered, uranium_238)
else
    data_recipe[enrichment_process].icons = TWO_D_I(plutonium_239_bob, uranium_238, plutonium_239_bob, uranium_238)
end
data_recipe[enrichment_process].order = d
data_recipe[enrichment_process].energy_required = 64
data_recipe[enrichment_process].ingredients =
{
    {type = item, name = uranium_238, amount = 4},
    {type = item, name = plutonium_239_bob, amount = 32}
}
data_recipe[enrichment_process].results =
{
    {type = item, name = uranium_238, amount = 2},
    {type = item, name = plutonium_239_bob, amount = 33}
}

local plutonium_nucleosynthesis = "bob-plutonium-nucleosynthesis"
data_recipe[plutonium_nucleosynthesis].subgroup = is_nuclear_recipe
if mods[shattered_mods] then
    data_recipe[plutonium_nucleosynthesis].icons = THREE_R_I(uranium_235, plutonium_239_shattered, uranium_235)
else
    data_recipe[plutonium_nucleosynthesis].icons = THREE_R_I(uranium_235, plutonium_239_bob, uranium_235)
end
data_recipe[plutonium_nucleosynthesis].order = e
data_recipe[plutonium_nucleosynthesis].energy_required = 64
data_recipe[plutonium_nucleosynthesis].ingredients =
{
    {type = item, name = uranium_235, amount = 8},
    {type = item, name = uranium_238, amount = 16}
}
data_recipe[plutonium_nucleosynthesis].results =
{
    {type = item, name = uranium_235, amount = 4},
    {type = item, name = uranium_238, amount = 8},
    {type = item, name = plutonium_239_bob, amount = 1}
}

data_recipe[thorium_processing].subgroup = is_nuclear_recipe
if mods[shattered_mods] then
    data_recipe[thorium_processing].icons = THREE_R_I(thorium_ore_bob, thorium_shattered, plutonium_239_shattered)
else
    data_recipe[thorium_processing].icons = THREE_R_I(thorium_ore_bob, thorium_232_bob, plutonium_239_bob)
end
data_recipe[thorium_processing].order = f
data_recipe[thorium_processing].energy_required = 16
data_recipe[thorium_processing].ingredients[1].amount = 4
data_recipe[thorium_processing].results =
{
    {type = item, name = thorium_232_bob, amount = 4},
    {type = item, name = plutonium_239_bob, amount = 1, probability = 0.125}
}

data_recipe[plutonium_breeding].subgroup = is_nuclear_recipe
if mods[shattered_mods] then
    data_recipe[plutonium_breeding].icons = THREE_R_I(neptunium_240, plutonium_239_shattered, uranium_235)
else
    data_recipe[plutonium_breeding].icons = THREE_R_I(neptunium_240, plutonium_239_bob, uranium_235)
end
data_recipe[plutonium_breeding].order = g
data_recipe[plutonium_breeding].energy_required = 32
data_recipe[plutonium_breeding].ingredients =
{
    {type = item, name = neptunium_240, amount = 4},
    {type = item, name = uranium_238, amount = 64}
}
data_recipe[plutonium_breeding].results =
{
    {type = item, name = uranium_235, amount = 1},
    {type = item, name = plutonium_239_bob, amount = 16},
    {type = item, name = uranium_238, amount = 32}
}

if mods[clowns_nuclear] then
    data_item[uranium_238].localised_name = {"item-name.uranium-238"}
    data_item[uranium_238].subgroup = is_uranium_235_item
    data_item[uranium_238].order = a

    local uranium_235_20 = "20pc-uranium"
    data_item[uranium_235_20].localised_name = {"item-name.uranium-235-20"}
    data_item[uranium_235_20].localised_description = show_formula and {chemical_formula, "U-235"} or nil
    data_item[uranium_235_20].subgroup = is_uranium_235_item
    data_item[uranium_235_20].icons = nil
    data_item[uranium_235_20].icon = "__TIMSABA__/graphics/icons/uranium-235/uranium-235-20.png"
    data_item[uranium_235_20].order = b
    data_item[uranium_235_20].stack_size = 200

    local uranium_235_35 = "35pc-uranium"
    data_item[uranium_235_35].localised_name = {"item-name.uranium-235-35"}
    data_item[uranium_235_35].localised_description = show_formula and {chemical_formula, "U-235"} or nil
    data_item[uranium_235_35].subgroup = is_uranium_235_item
    data_item[uranium_235_35].icons = nil
    data_item[uranium_235_35].icon = "__TIMSABA__/graphics/icons/uranium-235/uranium-235-35.png"
    data_item[uranium_235_35].order = c
    data_item[uranium_235_35].stack_size = 200

    local uranium_235_45 = "45pc-uranium"
    data_item[uranium_235_45].localised_name = {"item-name.uranium-235-45"}
    data_item[uranium_235_45].localised_description = show_formula and {chemical_formula, "U-235"} or nil
    data_item[uranium_235_45].subgroup = is_uranium_235_item
    data_item[uranium_235_45].icons = nil
    data_item[uranium_235_45].icon = "__TIMSABA__/graphics/icons/uranium-235/uranium-235-45.png"
    data_item[uranium_235_45].order = d
    data_item[uranium_235_45].stack_size = 200

    local uranium_235_55 = "55pc-uranium"
    data_item[uranium_235_55].localised_name = {"item-name.uranium-235-55"}
    data_item[uranium_235_55].localised_description = show_formula and {chemical_formula, "U-235"} or nil
    data_item[uranium_235_55].subgroup = is_uranium_235_item
    data_item[uranium_235_55].icons = nil
    data_item[uranium_235_55].icon = "__TIMSABA__/graphics/icons/uranium-235/uranium-235-55.png"
    data_item[uranium_235_55].order = e
    data_item[uranium_235_55].stack_size = 200

    local uranium_235_65 = "65pc-uranium"
    data_item[uranium_235_65].localised_name = {"item-name.uranium-235-65"}
    data_item[uranium_235_65].localised_description = show_formula and {chemical_formula, "U-235"} or nil
    data_item[uranium_235_65].subgroup = is_uranium_235_item
    data_item[uranium_235_65].icons = nil
    data_item[uranium_235_65].icon = "__TIMSABA__/graphics/icons/uranium-235/uranium-235-65.png"
    data_item[uranium_235_65].order = f
    data_item[uranium_235_65].stack_size = 200

    local uranium_235_70 = "70pc-uranium"
    data_item[uranium_235_70].localised_name = {"item-name.uranium-235-70"}
    data_item[uranium_235_70].localised_description = show_formula and {chemical_formula, "U-235"} or nil
    data_item[uranium_235_70].subgroup = is_uranium_235_item
    data_item[uranium_235_70].icons = nil
    data_item[uranium_235_70].icon = "__TIMSABA__/graphics/icons/uranium-235/uranium-235-70.png"
    data_item[uranium_235_70].order = g
    data_item[uranium_235_70].stack_size = 200

    local uranium_235_75 = "75pc-uranium"
    data_item[uranium_235_75].localised_name = {"item-name.uranium-235-75"}
    data_item[uranium_235_75].localised_description = show_formula and {chemical_formula, "U-235"} or nil
    data_item[uranium_235_75].subgroup = is_uranium_235_item
    data_item[uranium_235_75].icons = nil
    data_item[uranium_235_75].icon = "__TIMSABA__/graphics/icons/uranium-235/uranium-235-75.png"
    data_item[uranium_235_75].order = h
    data_item[uranium_235_75].stack_size = 200

    data_item[uranium_235].localised_name = {"item-name.uranium-235"}
    data_item[uranium_235].subgroup = is_uranium_235_item
    data_item[uranium_235].order = i

    local depleted_uranium_reprocessing = "depleted-uranium-reprocessing"
    data_recipe[depleted_uranium_reprocessing].subgroup = is_uranium_235_recipe
    data_recipe[depleted_uranium_reprocessing].icons = TWO_I(uranium_238, uranium_ore)
    data_recipe[depleted_uranium_reprocessing].order = a
    data_recipe[depleted_uranium_reprocessing].energy_required = 4
    data_recipe[depleted_uranium_reprocessing].ingredients[1].amount = 4
    data_recipe[depleted_uranium_reprocessing].results[1].amount = 8

    local centrifuging_20 = "clowns-centrifuging-20pc-ore"
    data_recipe[centrifuging_20].subgroup = is_uranium_235_recipe
    data_recipe[centrifuging_20].icons = TWO_I(uranium_ore, uranium_235_20)
    data_recipe[centrifuging_20].order = b
    data_recipe[centrifuging_20].energy_required = 8
    data_recipe[centrifuging_20].ingredients[1].amount = 64
    data_recipe[centrifuging_20].results =
    {
        {type = item, name = uranium_235_20, amount = 2},
        {type = item, name = uranium_238, amount = 2}
    }

    local centrifuging_35 = "clowns-centrifuging-35pc"
    data_recipe[centrifuging_35].subgroup = is_uranium_235_recipe
    data_recipe[centrifuging_35].icons = TWO_I(uranium_235_20, uranium_235_35)
    data_recipe[centrifuging_35].order = c
    data_recipe[centrifuging_35].energy_required = 8
    data_recipe[centrifuging_35].ingredients[1].amount = 4
    data_recipe[centrifuging_35].results =
    {
        {type = item, name = uranium_235_20, amount = 2},
        {type = item, name = uranium_235_35, amount_min = 0, amount_max = 2},
        {type = item, name = uranium_238, amount = 2}
    }

    local centrifuging_45 = "clowns-centrifuging-45pc"
    data_recipe[centrifuging_45].subgroup = is_uranium_235_recipe
    data_recipe[centrifuging_45].icons = TWO_I(uranium_235_35, uranium_235_45)
    data_recipe[centrifuging_45].order = d
    data_recipe[centrifuging_45].energy_required = 8
    data_recipe[centrifuging_45].ingredients[1].amount = 4
    data_recipe[centrifuging_45].results =
    {
        {type = item, name = uranium_235_35, amount = 2},
        {type = item, name = uranium_235_45, amount_min = 0, amount_max = 2},
        {type = item, name = uranium_238, amount = 2}
    }

    local centrifuging_55 = "clowns-centrifuging-55pc"
    data_recipe[centrifuging_55].subgroup = is_uranium_235_recipe
    data_recipe[centrifuging_55].icons = TWO_I(uranium_235_45, uranium_235_55)
    data_recipe[centrifuging_55].order = e
    data_recipe[centrifuging_55].energy_required = 8
    data_recipe[centrifuging_55].ingredients[1].amount = 4
    data_recipe[centrifuging_55].results =
    {
        {type = item, name = uranium_235_45, amount = 2},
        {type = item, name = uranium_235_55, amount_min = 0, amount_max = 2},
        {type = item, name = uranium_238, amount = 2}
    }

    local centrifuging_65 = "clowns-centrifuging-65pc"
    data_recipe[centrifuging_65].subgroup = is_uranium_235_recipe
    data_recipe[centrifuging_65].icons = TWO_I(uranium_235_55, uranium_235_65)
    data_recipe[centrifuging_65].order = f
    data_recipe[centrifuging_65].energy_required = 8
    data_recipe[centrifuging_65].ingredients[1].amount = 4
    data_recipe[centrifuging_65].results =
    {
        {type = item, name = uranium_235_55, amount = 2},
        {type = item, name = uranium_235_65, amount_min = 0, amount_max = 2},
        {type = item, name = uranium_238, amount = 2}
    }

    local centrifuging_70 = "clowns-centrifuging-70pc"
    data_recipe[centrifuging_70].subgroup = is_uranium_235_recipe
    data_recipe[centrifuging_70].icons = TWO_I(uranium_235_65, uranium_235_70)
    data_recipe[centrifuging_70].order = g
    data_recipe[centrifuging_70].energy_required = 8
    data_recipe[centrifuging_70].ingredients[1].amount = 4
    data_recipe[centrifuging_70].results =
    {
        {type = item, name = uranium_235_65, amount = 2},
        {type = item, name = uranium_235_70, amount_min = 0, amount_max = 2},
        {type = item, name = uranium_238, amount = 2}
    }

    local centrifuging_75 = "clowns-centrifuging-75pc"
    data_recipe[centrifuging_75].subgroup = is_uranium_235_recipe
    data_recipe[centrifuging_75].icons = TWO_I(uranium_235_70, uranium_235_75)
    data_recipe[centrifuging_75].order = h
    data_recipe[centrifuging_75].energy_required = 8
    data_recipe[centrifuging_75].ingredients[1].amount = 4
    data_recipe[centrifuging_75].results =
    {
        {type = item, name = uranium_235_70, amount = 2},
        {type = item, name = uranium_235_75, amount_min = 0, amount_max = 2},
        {type = item, name = uranium_238, amount = 2}
    }

    local centrifuging_80 = "clowns-centrifuging-80pc"
    data_recipe[centrifuging_80].subgroup = is_uranium_235_recipe
    data_recipe[centrifuging_80].icons = TWO_I(uranium_235_75, uranium_235)
    data_recipe[centrifuging_80].order = i
    data_recipe[centrifuging_80].energy_required = 8
    data_recipe[centrifuging_80].ingredients[1].amount = 4
    data_recipe[centrifuging_80].results =
    {
        {type = item, name = uranium_235_75, amount = 2},
        {type = item, name = uranium_235, amount_min = 0, amount_max = 2},
        {type = item, name = uranium_238, amount = 2}
    }
else
    data_item[uranium_235].subgroup = is_nuclear_item
    data_item[uranium_235].order = c

    data_item[uranium_238].subgroup = is_nuclear_item
    data_item[uranium_238].order = d
end

data_item[uranium_234_fuel_cell].subgroup = is_uranium_cell
data_item[uranium_234_fuel_cell].order = a
data_item[uranium_234_fuel_cell].drop_sound = data_item[uranium_235_fuel_cell].drop_sound
data_item[uranium_234_fuel_cell].inventory_move_sound = data_item[uranium_235_fuel_cell].inventory_move_sound
data_item[uranium_234_fuel_cell].pick_sound = data_item[uranium_235_fuel_cell].pick_sound
data_item[uranium_234_fuel_cell].fuel_value = (172800 * 4 * 2) .. kJ
data_item[uranium_234_fuel_cell].fuel_category = nuclear_fuel_T1
data_recipe[uranium_234_fuel_cell].subgroup = is_uranium_cell
data_recipe[uranium_234_fuel_cell].order = a
data_recipe[uranium_234_fuel_cell].energy_required = 64
data_recipe[uranium_234_fuel_cell].ingredients =
{
    {type = item, name = uranium_234, amount = 1},
    {type = item, name = uranium_238, amount = 128},
    {type = item, name = lead_plate_bob, amount = 64}
}
data_recipe[uranium_234_fuel_cell].results[1].amount = 64

data_item[uranium_235_fuel_cell].subgroup = is_uranium_cell
data_item[uranium_235_fuel_cell].order = b
data_item[uranium_235_fuel_cell].fuel_value = (345600 * 4 * 2) .. kJ
data_item[uranium_235_fuel_cell].fuel_category = nuclear_fuel_T1
data_recipe[uranium_235_fuel_cell].subgroup = is_uranium_cell
data_recipe[uranium_235_fuel_cell].icons = R_P_I(uranium_235_fuel_cell, nil, nil, number_1)
data_recipe[uranium_235_fuel_cell].order = b
data_recipe[uranium_235_fuel_cell].energy_required = 64
data_recipe[uranium_235_fuel_cell].ingredients =
{
    {type = item, name = uranium_235, amount = 1},
    {type = item, name = uranium_238, amount = 32},
    {type = item, name = lead_plate_bob, amount = 16}
}
data_recipe[uranium_235_fuel_cell].results[1].amount = 16
data_recipe[uranium_235_fuel_cell].allow_productivity = true

if mods[clowns_nuclear] then
    local alt_uranium_235_fuel_cell = "mixed-oxide"
    data_recipe[alt_uranium_235_fuel_cell].localised_name = {"recipe-name.uranium-plutonium-mixed-fuel-cell"}
    data_recipe[alt_uranium_235_fuel_cell].category = angels_centrifuging_2
    data_recipe[alt_uranium_235_fuel_cell].subgroup = is_uranium_cell
    data_recipe[alt_uranium_235_fuel_cell].icons = R_P_I(uranium_235_fuel_cell, nil, nil, number_2)
    data_recipe[alt_uranium_235_fuel_cell].order = b_a
    data_recipe[alt_uranium_235_fuel_cell].energy_required = 64
    data_recipe[alt_uranium_235_fuel_cell].ingredients =
    {
        {type = item, name = plutonium_239_bob, amount = 2},
        {type = item, name = uranium_238, amount = 2},
        {type = item, name = lead_plate_bob, amount = 2}
    }
    data_recipe[alt_uranium_235_fuel_cell].allow_productivity = true
end

local depleted_uranium_fuel_cell = "depleted-uranium-fuel-cell"
data_item[depleted_uranium_fuel_cell].subgroup = is_uranium_cell
data_item[depleted_uranium_fuel_cell].order = c

local nuclear_fuel_cell_reprocessing = "nuclear-fuel-reprocessing"
data_recipe[nuclear_fuel_cell_reprocessing].category = angels_advanced_chemistry
data_recipe[nuclear_fuel_cell_reprocessing].additional_categories = {cryogenics}
data_recipe[nuclear_fuel_cell_reprocessing].subgroup = is_uranium_cell
data_recipe[nuclear_fuel_cell_reprocessing].icons = TWO_I(depleted_uranium_fuel_cell, uranium_238)
data_recipe[nuclear_fuel_cell_reprocessing].order = c_a
data_recipe[nuclear_fuel_cell_reprocessing].energy_required = 64
data_recipe[nuclear_fuel_cell_reprocessing].ingredients[1].amount = 4
data_recipe[nuclear_fuel_cell_reprocessing].results = {{type = item, name = uranium_238, amount = 4}}

local advanced_nuclear_fuel_cell_reprocessing = "angels-advanced-uranium-reprocessing"
data_recipe[advanced_nuclear_fuel_cell_reprocessing].category = angels_advanced_chemistry
data_recipe[advanced_nuclear_fuel_cell_reprocessing].additional_categories = {cryogenics}
data_recipe[advanced_nuclear_fuel_cell_reprocessing].subgroup = is_uranium_cell
data_recipe[advanced_nuclear_fuel_cell_reprocessing].icons = THREE_D_I(depleted_uranium_fuel_cell, nil, hydrofluoric_acid_angels, uranium_238, neptunium_240, water_greenyellow_waste)
data_recipe[advanced_nuclear_fuel_cell_reprocessing].order = c_b
data_recipe[advanced_nuclear_fuel_cell_reprocessing].energy_required = 64
data_recipe[advanced_nuclear_fuel_cell_reprocessing].ingredients[1].amount = 4
data_recipe[advanced_nuclear_fuel_cell_reprocessing].results =
{
    {type = item, name = uranium_238, amount = 4},
    {type = item, name = neptunium_240, amount = 1, probability = 0.5},
    {type = fluid, name = water_greenyellow_waste, amount = 60}
}
data_recipe[advanced_nuclear_fuel_cell_reprocessing].allow_productivity = true

data_item[mixed_oxide_fuel_cell].subgroup = is_mixed_oxide_cell
data_item[mixed_oxide_fuel_cell].order = a
data_item[mixed_oxide_fuel_cell].drop_sound = data_item[uranium_235_fuel_cell].drop_sound
data_item[mixed_oxide_fuel_cell].inventory_move_sound = data_item[uranium_235_fuel_cell].inventory_move_sound
data_item[mixed_oxide_fuel_cell].pick_sound = data_item[uranium_235_fuel_cell].pick_sound
data_item[mixed_oxide_fuel_cell].fuel_value = (691200 * 4 * 2) .. kJ
data_item[mixed_oxide_fuel_cell].fuel_category = nuclear_fuel_T1
data_recipe[mixed_oxide_fuel_cell].subgroup = is_mixed_oxide_cell
data_recipe[mixed_oxide_fuel_cell].order = a
data_recipe[mixed_oxide_fuel_cell].energy_required = 64
data_recipe[mixed_oxide_fuel_cell].ingredients =
{
    {type = item, name = plutonium_239_bob, amount = 2},
    {type = item, name = uranium_238, amount = 32},
    {type = item, name = lead_plate_bob, amount = 16}
}
data_recipe[mixed_oxide_fuel_cell].results[1].amount = 16

local depleted_mixed_oxide_fuel_cell = "angels-depleted-mixed-oxide-cell"
data_item[depleted_mixed_oxide_fuel_cell].subgroup = is_mixed_oxide_cell
data_item[depleted_mixed_oxide_fuel_cell].order = b
data_item[depleted_mixed_oxide_fuel_cell].drop_sound = data_item[uranium_235_fuel_cell].drop_sound
data_item[depleted_mixed_oxide_fuel_cell].inventory_move_sound = data_item[uranium_235_fuel_cell].inventory_move_sound
data_item[depleted_mixed_oxide_fuel_cell].pick_sound = data_item[uranium_235_fuel_cell].pick_sound

local mixed_oxide_reprocessing = "angels-mixed-oxide-reprocessing"
data_recipe[mixed_oxide_reprocessing].subgroup = is_mixed_oxide_cell
if mods[shattered_mods] then
    data_recipe[mixed_oxide_reprocessing].icons = THREE_D_I(depleted_mixed_oxide_fuel_cell, nil, nil, americium_241_shattered, curium_245_shattered, uranium_238)
else
    data_recipe[mixed_oxide_reprocessing].icons = THREE_D_I(depleted_mixed_oxide_fuel_cell, nil, nil, americium_241_angels, curium_245_angels, uranium_238)
end
data_recipe[mixed_oxide_reprocessing].category = angels_advanced_chemistry
data_recipe[mixed_oxide_reprocessing].additional_categories = {cryogenics}
data_recipe[mixed_oxide_reprocessing].order = b_a
data_recipe[mixed_oxide_reprocessing].energy_required = 64
data_recipe[mixed_oxide_reprocessing].ingredients[1].amount = 4
data_recipe[mixed_oxide_reprocessing].results =
{
    {type = item, name = americium_241_angels, amount = 2},
    {type = item, name = curium_245_angels, amount = 1, probability = 0.05},
    {type = item, name = uranium_238, amount = 4}
}
data_recipe[mixed_oxide_reprocessing].allow_productivity = true

data_recipe[advanced_mixed_oxide_reprocessing].category = angels_advanced_chemistry
data_recipe[advanced_mixed_oxide_reprocessing].additional_categories = {cryogenics}
data_recipe[advanced_mixed_oxide_reprocessing].subgroup = is_mixed_oxide_cell
if mods[shattered_mods] then
    data_recipe[advanced_mixed_oxide_reprocessing].icons = THREE_D_I(depleted_mixed_oxide_fuel_cell, nil, hydrofluoric_acid_angels, plutonium_239_shattered, curium_245_shattered, water_greenyellow_waste)
else
    data_recipe[advanced_mixed_oxide_reprocessing].icons = THREE_D_I(depleted_mixed_oxide_fuel_cell, nil, hydrofluoric_acid_angels, plutonium_239_bob, curium_245_angels, water_greenyellow_waste)
end
data_recipe[advanced_mixed_oxide_reprocessing].order = b_b
data_recipe[advanced_mixed_oxide_reprocessing].energy_required = 64
data_recipe[advanced_mixed_oxide_reprocessing].ingredients[1].amount = 8
data_recipe[advanced_mixed_oxide_reprocessing].results =
{
    {type = item, name = plutonium_239_bob, amount = 2},
    {type = item, name = curium_245_angels, amount = 4, probability = 0.5},
    {type = fluid, name = water_greenyellow_waste, amount = 60}
}
data_recipe[advanced_mixed_oxide_reprocessing].allow_productivity = true

data_item[thorium_fuel_cell].subgroup = is_thorium_cell
data_item[thorium_fuel_cell].order = a
data_item[thorium_fuel_cell].drop_sound = data_item[uranium_235_fuel_cell].drop_sound
data_item[thorium_fuel_cell].inventory_move_sound = data_item[uranium_235_fuel_cell].inventory_move_sound
data_item[thorium_fuel_cell].pick_sound = data_item[uranium_235_fuel_cell].pick_sound
data_item[thorium_fuel_cell].fuel_value = (921600 * 4 * 2) .. kJ
data_item[thorium_fuel_cell].fuel_category = nuclear_fuel_T2
data_recipe[thorium_fuel_cell].subgroup = is_thorium_cell
data_recipe[thorium_fuel_cell].order = a
data_recipe[thorium_fuel_cell].energy_required = 64
data_recipe[thorium_fuel_cell].ingredients =
{
    {type = item, name = thorium_232_bob, amount = 32},
    {type = item, name = plutonium_239_bob, amount = 8},
    {type = item, name = curium_245_angels, amount = 1},
    {type = item, name = lead_plate_bob, amount = 16}
}
data_recipe[thorium_fuel_cell].results[1].amount = 16

local depleted_thorium_fuel_cell = "angels-depleted-thorium-fuel-cell"
data_item[depleted_thorium_fuel_cell].subgroup = is_thorium_cell
data_item[depleted_thorium_fuel_cell].order = b
data_item[depleted_thorium_fuel_cell].drop_sound = data_item[uranium_235_fuel_cell].drop_sound
data_item[depleted_thorium_fuel_cell].inventory_move_sound = data_item[uranium_235_fuel_cell].inventory_move_sound
data_item[depleted_thorium_fuel_cell].pick_sound = data_item[uranium_235_fuel_cell].pick_sound

data_recipe[thorium_fuel_cell_reprocessing].category = angels_advanced_chemistry
data_recipe[thorium_fuel_cell_reprocessing].additional_categories = {cryogenics}
data_recipe[thorium_fuel_cell_reprocessing].subgroup = is_thorium_cell
if mods[shattered_mods] then
    data_recipe[thorium_fuel_cell_reprocessing].icons = FOUR_D_I(depleted_thorium_fuel_cell, nil, nil, nil, neptunium_240, thorium_shattered, uranium_234, curium_245_shattered)
else
    data_recipe[thorium_fuel_cell_reprocessing].icons = FOUR_D_I(depleted_thorium_fuel_cell, nil, nil, nil, neptunium_240, thorium_232_bob, uranium_234, curium_245_angels)
end
data_recipe[thorium_fuel_cell_reprocessing].order = b_a
data_recipe[thorium_fuel_cell_reprocessing].energy_required = 64
data_recipe[thorium_fuel_cell_reprocessing].ingredients[1].amount = 4
data_recipe[thorium_fuel_cell_reprocessing].results =
{
    {type = item, name = neptunium_240, amount = 1},
    {type = item, name = thorium_232_bob, amount = 4},
    {type = item, name = uranium_234, amount = 1, probability = 0.25},
    {type = item, name = curium_245_angels, amount = 1, probability = 0.25}
}
data_recipe[thorium_fuel_cell_reprocessing].allow_productivity = true

data_recipe[advanced_thorium_fuel_cell_reprocessing].category = angels_advanced_chemistry
data_recipe[advanced_thorium_fuel_cell_reprocessing].additional_categories = {cryogenics}
data_recipe[advanced_thorium_fuel_cell_reprocessing].subgroup = is_thorium_cell
data_recipe[advanced_thorium_fuel_cell_reprocessing].icons = FOUR_THREE_R_I(depleted_thorium_fuel_cell, nil, hydrofluoric_acid_angels, neptunium_240, uranium_234, muon_fusion_catalyst, water_greenyellow_waste)
data_recipe[advanced_thorium_fuel_cell_reprocessing].order = b_b
data_recipe[advanced_thorium_fuel_cell_reprocessing].energy_required = 64
data_recipe[advanced_thorium_fuel_cell_reprocessing].ingredients[1].amount = 4
data_recipe[advanced_thorium_fuel_cell_reprocessing].results =
{
    {type = item, name = neptunium_240, amount = 2},
    {type = item, name = uranium_234, amount = 2, probability = 0.25},
    {type = item, name = muon_fusion_catalyst, amount = 1, probability = 0.25},
    {type = fluid, name = water_greenyellow_waste, amount = 60}
}
data_recipe[advanced_thorium_fuel_cell_reprocessing].allow_productivity = true

data_item[deuterium_fuel_cell].subgroup = is_deuterium_cell
data_item[deuterium_fuel_cell].order = a
data_item[deuterium_fuel_cell].drop_sound = data_item[uranium_235_fuel_cell].drop_sound
data_item[deuterium_fuel_cell].inventory_move_sound = data_item[uranium_235_fuel_cell].inventory_move_sound
data_item[deuterium_fuel_cell].pick_sound = data_item[uranium_235_fuel_cell].pick_sound
data_item[deuterium_fuel_cell].fuel_value = (1152000 * 4 * 2) .. kJ
data_item[deuterium_fuel_cell].fuel_category = nuclear_fuel_T3
data_recipe[deuterium_fuel_cell].subgroup = is_deuterium_cell
data_recipe[deuterium_fuel_cell].order = a
data_recipe[deuterium_fuel_cell].energy_required = 64
data_recipe[deuterium_fuel_cell].ingredients =
{
    {type = item, name = muon_fusion_catalyst, amount = 1},
    {type = item, name = lead_plate_bob, amount = 32},
    {type = fluid, name = deuterium_angels, amount = 480}
}
data_recipe[deuterium_fuel_cell].allow_productivity = true

data_item[depleted_deuterium_fuel_cell].subgroup = is_deuterium_cell
data_item[depleted_deuterium_fuel_cell].order = b
data_item[depleted_deuterium_fuel_cell].drop_sound = data_item[uranium_235_fuel_cell].drop_sound
data_item[depleted_deuterium_fuel_cell].inventory_move_sound = data_item[uranium_235_fuel_cell].inventory_move_sound
data_item[depleted_deuterium_fuel_cell].pick_sound = data_item[uranium_235_fuel_cell].pick_sound

data_recipe[deuterium_fuel_cell_reprocessing].category = angels_advanced_chemistry
data_recipe[deuterium_fuel_cell_reprocessing].additional_categories = {cryogenics}
data_recipe[deuterium_fuel_cell_reprocessing].subgroup = is_deuterium_cell
data_recipe[deuterium_fuel_cell_reprocessing].icons = THREE_D_I(depleted_deuterium_fuel_cell, nil, muon_fusion_catalyst, deuterium_angels)
data_recipe[deuterium_fuel_cell_reprocessing].order = b_a
data_recipe[deuterium_fuel_cell_reprocessing].energy_required = 64
data_recipe[deuterium_fuel_cell_reprocessing].ingredients[1].amount = 4
data_recipe[deuterium_fuel_cell_reprocessing].results =
{
    {type = item, name = muon_fusion_catalyst, amount = 4},
    {type = fluid, name = deuterium_angels, amount = 960}
}
data_recipe[deuterium_fuel_cell_reprocessing].allow_productivity = true

local intermediate_products = "intermediate-products"
local is_gems_ore = "bob-gems-ore"
data_item_subgroup[is_gems_ore].group = intermediate_products
data_item_subgroup[is_gems_ore].order = f

data_item[ruby_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil

data_item[sapphire_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil

data_item[emerald_bob].localised_description = show_formula and {chemical_formula, "Be[font=default-tiny-bold]3[/font]Al[font=default-tiny-bold]2[/font]Si[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]18[/font]"} or nil

data_item[amethyst_bob].localised_description = show_formula and {chemical_formula, "SiO[font=default-tiny-bold]2[/font]"} or nil

data_item[topaz_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]SiO[font=default-tiny-bold]4[/font](FOH)[font=default-tiny-bold]2[/font]"} or nil

data_item[diamond_bob].localised_description = show_formula and {chemical_formula, "C"} or nil

local is_gems_raw = "bob-gems-raw"
data_item_subgroup[is_gems_raw].group = intermediate_products
data_item_subgroup[is_gems_raw].order = f_a

data_item[raw_ruby_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil
data_recipe[raw_ruby_bob].icons = TWO_I(ruby_bob, raw_ruby_bob)

data_item[raw_sapphire_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil
data_recipe[raw_sapphire_bob].icons = TWO_I(sapphire_bob, raw_sapphire_bob)

data_item[raw_emerald_bob].localised_description = show_formula and {chemical_formula, "Be[font=default-tiny-bold]3[/font]Al[font=default-tiny-bold]2[/font]Si[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]18[/font]"} or nil
data_recipe[raw_emerald_bob].icons = TWO_I(emerald_bob, raw_emerald_bob)

data_item[raw_amethyst_bob].localised_description = show_formula and {chemical_formula, "SiO[font=default-tiny-bold]2[/font]"} or nil
data_recipe[raw_amethyst_bob].icons = TWO_I(amethyst_bob, raw_amethyst_bob)

data_item[raw_topaz_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]SiO[font=default-tiny-bold]4[/font](FOH)[font=default-tiny-bold]2[/font]"} or nil
data_recipe[raw_topaz_bob].icons = TWO_I(topaz_bob, raw_topaz_bob)

data_item[raw_diamond_bob].localised_description = show_formula and {chemical_formula, "C"} or nil
data_recipe[raw_diamond_bob].icons = TWO_I(diamond_bob, raw_diamond_bob)

local is_gems_cut = "bob-gems-cut"
data_item_subgroup[is_gems_cut].group = intermediate_products
data_item_subgroup[is_gems_cut].order = f_b

data_item[cut_ruby_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil
data_recipe[cut_ruby_bob].icons = THREE_D_I(raw_ruby_bob, wheel_grinding_bob, water, cut_ruby_bob)
data_recipe[cut_ruby_bob].energy_required = 4
data_recipe[cut_ruby_bob].ingredients[3].amount = 15

data_item[cut_sapphire_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil
data_recipe[cut_sapphire_bob].icons = THREE_D_I(raw_sapphire_bob, wheel_grinding_bob, water, cut_sapphire_bob)
data_recipe[cut_sapphire_bob].energy_required = 4
data_recipe[cut_sapphire_bob].ingredients[3].amount = 15

data_item[cut_emerald_bob].localised_description = show_formula and {chemical_formula, "Be[font=default-tiny-bold]3[/font]Al[font=default-tiny-bold]2[/font]Si[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]18[/font]"} or nil
data_recipe[cut_emerald_bob].icons = THREE_D_I(raw_emerald_bob, wheel_grinding_bob, water, cut_emerald_bob)
data_recipe[cut_emerald_bob].energy_required = 4
data_recipe[cut_emerald_bob].ingredients[3].amount = 15

data_item[cut_amethyst_bob].localised_description = show_formula and {chemical_formula, "SiO[font=default-tiny-bold]2[/font]"} or nil
data_recipe[cut_amethyst_bob].icons = THREE_D_I(raw_amethyst_bob, wheel_grinding_bob, water, cut_amethyst_bob)
data_recipe[cut_amethyst_bob].energy_required = 4
data_recipe[cut_amethyst_bob].ingredients[3].amount = 15

data_item[cut_topaz_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]SiO[font=default-tiny-bold]4[/font](FOH)[font=default-tiny-bold]2[/font]"} or nil
data_recipe[cut_topaz_bob].icons = THREE_D_I(raw_topaz_bob, wheel_grinding_bob, water, cut_topaz_bob)
data_recipe[cut_topaz_bob].energy_required = 4
data_recipe[cut_topaz_bob].ingredients[3].amount = 15

data_item[cut_diamond_bob].localised_description = show_formula and {chemical_formula, "C"} or nil
data_recipe[cut_diamond_bob].icons = THREE_D_I(raw_diamond_bob, wheel_grinding_bob, water, cut_diamond_bob)
data_recipe[cut_diamond_bob].energy_required = 4
data_recipe[cut_diamond_bob].ingredients[3].amount = 15

data_recipe[wheel_grinding_bob].icons = THREE_I(silicon_carbide_bob, steel_plate, wheel_grinding_bob)
data_recipe[wheel_grinding_bob].ingredients[2].amount = 4

local is_gems_polished = "bob-gems-polished"
data_item_subgroup[is_gems_polished].group = intermediate_products
data_item_subgroup[is_gems_polished].order = f_c

data_item[polished_ruby_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil
data_recipe[polished_ruby_bob].icons = THREE_D_I(cut_ruby_bob, wheel_polishig_bob, compound_polishing_bob, polished_ruby_bob)
data_recipe[polished_ruby_bob].energy_required = 16

data_item[polished_sapphire_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil
data_recipe[polished_sapphire_bob].icons = THREE_D_I(cut_sapphire_bob, wheel_polishig_bob, compound_polishing_bob, polished_sapphire_bob)
data_recipe[polished_sapphire_bob].energy_required = 16

data_item[polished_emerald_bob].localised_description = show_formula and {chemical_formula, "Be[font=default-tiny-bold]3[/font]Al[font=default-tiny-bold]2[/font]Si[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]18[/font]"} or nil
data_recipe[polished_emerald_bob].icons = THREE_D_I(cut_emerald_bob, wheel_polishig_bob, compound_polishing_bob, polished_emerald_bob)
data_recipe[polished_emerald_bob].energy_required = 16

data_item[polished_amethyst_bob].localised_description = show_formula and {chemical_formula, "SiO[font=default-tiny-bold]2[/font]"} or nil
data_recipe[polished_amethyst_bob].icons = THREE_D_I(cut_amethyst_bob, wheel_polishig_bob, compound_polishing_bob, polished_amethyst_bob)
data_recipe[polished_amethyst_bob].energy_required = 16

data_item[polished_topaz_bob].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]SiO[font=default-tiny-bold]4[/font](FOH)[font=default-tiny-bold]2[/font]"} or nil
data_recipe[polished_topaz_bob].icons = THREE_D_I(cut_topaz_bob, wheel_polishig_bob, compound_polishing_bob, polished_topaz_bob)
data_recipe[polished_topaz_bob].energy_required = 16

data_item[polished_diamond_bob].localised_description = show_formula and {chemical_formula, "C"} or nil
data_recipe[polished_diamond_bob].icons = THREE_D_I(cut_diamond_bob, wheel_polishig_bob, compound_polishing_bob, polished_diamond_bob)
data_recipe[polished_diamond_bob].energy_required = 16

data_recipe[wheel_polishig_bob].icons = THREE_I(plastic, steel_plate, wheel_polishig_bob)
data_recipe[wheel_polishig_bob].ingredients[2].amount = 4

data_recipe[compound_polishing_bob].icons = THREE_I(aluminium_oxide, mineral_oil_angels, compound_polishing_bob)

local materials =
{
    battery_lead_acid,
    battery_lithium_ion,
    battery_silver_zinc,
    engine_unit,
    electric_engine_unit,
    low_density_structure,
    heat_shielding_tile,
    resistor,
    transistor,
    integrated_circuit,
    CPU,
    circuit_board,
    improved_circuit_board,
    advanced_circuit_board,
    basic_circuit_board,
    electronic_circuit,
    advanced_circuit,
    processing_unit,
    advanced_processing_unit,
    uranium_234,
    uranium_235,
    uranium_238,
    neptunium_240,
    ruby_bob,
    sapphire_bob,
    emerald_bob,
    amethyst_bob,
    topaz_bob,
    diamond_bob,
    raw_ruby_bob,
    raw_sapphire_bob,
    raw_emerald_bob,
    raw_amethyst_bob,
    raw_topaz_bob,
    raw_diamond_bob,
    cut_ruby_bob,
    cut_sapphire_bob,
    cut_emerald_bob,
    cut_amethyst_bob,
    cut_topaz_bob,
    cut_diamond_bob,
    polished_ruby_bob,
    polished_sapphire_bob,
    polished_emerald_bob,
    polished_amethyst_bob,
    polished_topaz_bob,
    polished_diamond_bob,
    compound_polishing_bob
}
for _, name in pairs(materials) do
    data_item[name].stack_size = 200
end

local nuclear_cells =
{
    uranium_234_fuel_cell,
    uranium_235_fuel_cell,
    depleted_uranium_fuel_cell,
    mixed_oxide_fuel_cell,
    depleted_mixed_oxide_fuel_cell,
    thorium_fuel_cell,
    depleted_thorium_fuel_cell,
    deuterium_fuel_cell,
    depleted_deuterium_fuel_cell,
    muon_fusion_catalyst,
}
for _, name in pairs(nuclear_cells) do
    data_item[name].stack_size = 50
end

bobmods.lib.recipe.update_recycling_recipe
({
    steel_bearing_ball,
    ceramic_bearing_ball,
    cobalt_steel_bearing_ball,
    titanium_bearing_ball,
    nitinol_bearing_ball,
    steel_bearing,
    ceramic_bearing,
    cobalt_steel_bearing,
    titanium_bearing,
    nitinol_bearing,
    battery_lead_acid,
    battery_lithium_ion,
    battery_silver_zinc,
    low_density_structure,
    heat_shielding_tile,
    rtg,
    transistor,
    integrated_circuit,
    CPU,
    circuit_board,
    improved_circuit_board,
    advanced_circuit_board,
    basic_circuit_board,
    electronic_circuit,
    processing_unit,
    advanced_processing_unit,
})