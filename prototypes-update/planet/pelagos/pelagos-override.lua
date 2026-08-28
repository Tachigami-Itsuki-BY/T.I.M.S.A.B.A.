if mods[pelagos_mods] then
    -- COCONUT
    data_item[coconut].subgroup = is_coconut
    data_item[coconut].order = a
    data_item[coconut].fuel_category = base_fuel
    data_item[coconut].fuel_value = 3600 .. kJ
    TIMSABA.void.freezing_organics(coconut)

    local coconut_seed = "coconut-seed"
    data_item[coconut_seed].subgroup = is_coconut
    data_item[coconut_seed].order = b
    data_item[coconut_seed].stack_size = 200
    data_item[coconut_seed].fuel_category = base_fuel
    data_item[coconut_seed].fuel_value = 1800 .. kJ

    local coconut_meat = "coconut-meat"
    data_capsule[coconut_meat].subgroup = is_coconut
    data_capsule[coconut_meat].order = c
    data_capsule[coconut_meat].stack_size = 200
    data_capsule[coconut_meat].fuel_category = base_fuel
    data_capsule[coconut_meat].fuel_value = 900 .. kJ
    TIMSABA.void.freezing_organics(coconut_meat)

    local nutrients_from_coconut_meat = "nutrients-from-coconut-meat"
    data_recipe[nutrients_from_coconut_meat].subgroup = is_coconut
    data_recipe[nutrients_from_coconut_meat].icons = TWO_I(coconut_meat, nutrients)
    data_recipe[nutrients_from_coconut_meat].order = c_a
    data_recipe[nutrients_from_coconut_meat].results[1].amount = 8

    local coconut_husk = "coconut-husk"
    data_item[coconut_husk].subgroup = is_coconut
    data_item[coconut_husk].order = d
    data_item[coconut_husk].stack_size = 200
    data_item[coconut_husk].fuel_category = base_fuel
    data_item[coconut_husk].fuel_value = 900 .. kJ

    data_recipe[coconut_processing].subgroup = is_coconut
    data_recipe[coconut_processing].icons = FOUR_R_I(coconut, coconut_meat, coconut_seed, coconut_husk)
    data_recipe[coconut_processing].order = d_a
    data_recipe[coconut_processing].results =
    {
        {type = item, name = coconut_seed, amount = 1, probability = 0.06250},
        {type = item, name = coconut_meat, amount = 2},
        {type = item, name = coconut_husk, amount = 2}
    }

    data_fluid[coconut_oil].subgroup = is_coconut
    data_fluid[coconut_oil].order = e
    TIMSABA.barreling.add_simple_fluid(coconut_oil)
    data_recipe[coconut_oil].subgroup = is_coconut
    data_recipe[coconut_oil].icons = TWO_I(coconut_meat, coconut_oil)
    data_recipe[coconut_oil].order = e
    data_recipe[coconut_oil].energy_required = 4
    data_recipe[coconut_oil].ingredients[1].amount = 8
    data_recipe[coconut_oil].results[1].amount = 15

    data_recipe[lubricant_from_coconut_oil].category = chemistry
    data_recipe[lubricant_from_coconut_oil].subgroup = is_coconut
    data_recipe[lubricant_from_coconut_oil].icons = TWO_I(coconut_oil, lubricant)
    data_recipe[lubricant_from_coconut_oil].order = e_a
    data_recipe[lubricant_from_coconut_oil].energy_required = 4
    data_recipe[lubricant_from_coconut_oil].ingredients = {{type = fluid, name = coconut_oil, amount = 15}}
    data_recipe[lubricant_from_coconut_oil].results = {{type = fluid, name = lubricant, amount = 30}}

    data_item[coconut_sealant].subgroup = is_coconut
    data_item[coconut_sealant].order = f
    data_recipe[coconut_sealant].subgroup = is_coconut
    data_recipe[coconut_sealant].icons = THREE_I(coconut_husk, coconut_oil, coconut_sealant)
    data_recipe[coconut_sealant].order = f
    data_recipe[coconut_sealant].ingredients =
    {
        {type = item, name = coconut_husk, amount = 4},
        {type = fluid, name = coconut_oil, amount = 15}
    }

    local wooden_platform = "wooden-platform"
    data_item[wooden_platform].subgroup = is_coconut
    data_item[wooden_platform].order = g
    data_recipe[wooden_platform].subgroup = is_coconut
    data_recipe[wooden_platform].icons = R_P_I(wooden_platform, nil, nil, number_1)
    data_recipe[wooden_platform].order = g
    data_recipe[wooden_platform].ingredients[1].amount = 64

    local wooden_platform_from_coconut = "pelagos-wooden-platform"
    data_recipe[wooden_platform_from_coconut].subgroup = is_coconut
    data_recipe[wooden_platform_from_coconut].icons = R_P_I(wooden_platform, nil, nil, number_2)
    data_recipe[wooden_platform_from_coconut].order = g_a
    data_recipe[wooden_platform_from_coconut].ingredients =
    {
        {type = item, name = coconut_sealant, amount = 4},
        {type = item, name = coconut_husk, amount = 16},
        {type = item, name = wood, amount = 8}
    }

    -- TITANIUM
    data_item[fermentation_bacteria].subgroup = is_pelagos_titanium
    data_item[fermentation_bacteria].order = a
    data_item[fermentation_bacteria].stack_size = 200
    data_item[fermentation_bacteria].fuel_category = base_fuel
    data_item[fermentation_bacteria].fuel_value = (225/8) .. kJ
    data_recipe[fermentation_bacteria].subgroup = is_pelagos_titanium
    data_recipe[fermentation_bacteria].iocns = THREE_D_I(factorian_fish, coconut_oil, methane_angels, fermentation_bacteria, nil, spoilage)
    data_recipe[fermentation_bacteria].order = a
    data_recipe[fermentation_bacteria].ingredients =
    {
        {type = item, name = factorian_fish, amount = 2},
        {type = fluid, name = coconut_oil, amount = 30},
        {type = fluid, name = methane_angels, amount = 120}
    }
    data_recipe[fermentation_bacteria].results =
    {
        {type = item, name = fermentation_bacteria, amount = 1, probability = 0.25},
        {type = item, name = spoilage, amount = 4}
    }
    TIMSABA.void.freezing_organics(fermentation_bacteria)

    local fermentation_bacteria_cultivation = "fermentation-bacteria-cultivation"
    data_recipe[fermentation_bacteria_cultivation].subgroup = is_pelagos_titanium
    data_recipe[fermentation_bacteria_cultivation].icons = STONKS_I(stonks_png, fermentation_bacteria)
    data_recipe[fermentation_bacteria_cultivation].order = a_a
    data_recipe[fermentation_bacteria_cultivation].ingredients =
    {
        {type = item, name = fermentation_bacteria, amount = 2},
        {type = item, name = factorian_fish, amount = 2}
    }
    data_recipe[fermentation_bacteria_cultivation].results[1].amount = 4

    local fermented_fish = "fermented-fish"
    data_item[fermented_fish].subgroup = is_pelagos_titanium
    data_item[fermented_fish].order = b
    data_item[fermented_fish].stack_size = 200
    data_item[fermented_fish].fuel_value = 3600 .. kJ
    data_recipe[fermented_fish].subgroup = is_pelagos_titanium
    data_recipe[fermented_fish].icons = THREE_D_I(factorian_fish, coconut_meat, fermentation_bacteria, fermented_fish)
    data_recipe[fermented_fish].order = b
    data_recipe[fermented_fish].ingredients =
    {
        {type = item, name = factorian_fish, amount = 8},
        {type = item, name = coconut_meat, amount = 4},
        {type = item, name = fermentation_bacteria, amount = 4}
    }
    data_recipe[fermented_fish].results[1].amount = 8
    TIMSABA.void.freezing_organics(fermented_fish)

    local fermentation_bacteria_cultivation_fermented_fish = "fermentation-bacteria-cultivation-fermented-fish"
    data_recipe[fermentation_bacteria_cultivation_fermented_fish].subgroup = is_pelagos_titanium
    data_recipe[fermentation_bacteria_cultivation_fermented_fish].icons = STONKS_I(stonks_png, fermentation_bacteria)
    data_recipe[fermentation_bacteria_cultivation_fermented_fish].order = b_a
    data_recipe[fermentation_bacteria_cultivation_fermented_fish].ingredients =
    {
        {type = item, name = fermentation_bacteria, amount = 2},
        {type = item, name = fermented_fish, amount = 1}
    }
    data_recipe[fermentation_bacteria_cultivation_fermented_fish].results[1].amount = 4

    data_recipe[ethanol_mods].localised_name = {"fluid-name.ethanol-liquid"}
    data_recipe[ethanol_mods].subgroup = is_pelagos_titanium
    data_recipe[ethanol_mods].icons = FOUR_D_I(nutrients, fermentation_bacteria, water_purified_angels, activated_carbon, ethanol_angels)
    data_recipe[ethanol_mods].order = c
    data_recipe[ethanol_mods].ingredients =
    {
        {type = item, name = nutrients, amount = 16},
        {type = item, name = fermentation_bacteria, amount = 4},
        {type = item, name = activated_carbon, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 120}
    }

    data_fluid[titanium_sludge].subgroup = is_pelagos_titanium
    data_fluid[titanium_sludge].order = d
    TIMSABA.barreling.add_simple_fluid(titanium_sludge)

    data_item[titanium_dust].localised_description = show_formula and {chemical_formula, "Ti"} or nil
    data_item[titanium_dust].subgroup = is_pelagos_titanium
    data_item[titanium_dust].order = e
    data_item[titanium_dust].stack_size = 200
    data_recipe[titanium_dust].subgroup = is_pelagos_titanium
    data_recipe[titanium_dust].icons = TWO_D_I(fermentation_bacteria, titanium_sludge, titanium_dust, spoilage)
    data_recipe[titanium_dust].order = e
    data_recipe[titanium_dust].energy_required = 4
    data_recipe[titanium_dust].ingredients =
    {
        {type = item, name = fermentation_bacteria, amount = 1},
        {type = fluid, name = titanium_sludge, amount = 60}
    }

    local titanium_plate_from_dust = "titanium-plate-from-dust"
    data_recipe[titanium_plate_from_dust].subgroup = is_pelagos_titanium
    data_recipe[titanium_plate_from_dust].icons = TWO_I(titanium_dust, titanium_plate_bob)
    data_recipe[titanium_plate_from_dust].order = f_a
    data_recipe[titanium_plate_from_dust].energy_required = 8

    local advanced_titanium_plate_from_dust = "advanced-titanium-plate-from-dust"
    data_recipe[advanced_titanium_plate_from_dust].subgroup = is_pelagos_titanium
    data_recipe[advanced_titanium_plate_from_dust].icons = THREE_I(titanium_dust, activated_carbon, titanium_plate_bob)
    data_recipe[advanced_titanium_plate_from_dust].order = f_b
    data_recipe[advanced_titanium_plate_from_dust].energy_required = 8
    data_recipe[advanced_titanium_plate_from_dust].ingredients =
    {
        {type = item, name = titanium_dust, amount = 1},
        {type = item, name = activated_carbon, amount = 8}
    }

    data_tool[spoilage_science_pack].subgroup = is_pelagos_titanium
    data_tool[spoilage_science_pack].order = g
    TIMSABA.void.freezing_organics(spoilage_science_pack)
    data_recipe[spoilage_science_pack].subgroup = is_pelagos_titanium
    data_recipe[spoilage_science_pack].order = g
    data_recipe[spoilage_science_pack].ingredients =
    {
        {type = item, name = coconut_sealant, amount = 2},
        {type = item, name = activated_carbon, amount = 2},
        {type = item, name = titanium_dust, amount = 2},
        {type = item, name = fermentation_bacteria, amount = 4}
    }

    -- COAL
    local calciner_wood_carbonization = "calciner-wood-carbonization"
    data_recipe[calciner_wood_carbonization].subgroup = is_pelagos_coal
    data_recipe[calciner_wood_carbonization].icons = TWO_I(wood, coal)
    data_recipe[calciner_wood_carbonization].order = a_a
    data_recipe[calciner_wood_carbonization].energy_required = 4

    local calciner_coconut_husk_carbonization = "calciner-coconut-husk-carbonization"
    data_recipe[calciner_coconut_husk_carbonization].subgroup = is_pelagos_coal
    data_recipe[calciner_coconut_husk_carbonization].icons = TWO_I(coconut_husk, coal)
    data_recipe[calciner_coconut_husk_carbonization].order = a_b
    data_recipe[calciner_coconut_husk_carbonization].energy_required = 4

    local calciner_coal_purification = "calciner-coal-purification"
    data_recipe[calciner_coal_purification].subgroup = is_pelagos_coal
    data_recipe[calciner_coal_purification].icons = TWO_I(coal, carbon_angels)
    data_recipe[calciner_coal_purification].order = b_a
    data_recipe[calciner_coal_purification].energy_required = 4

    data_item[activated_carbon].localised_description = show_formula and {chemical_formula, "C"} or nil
    data_item[activated_carbon].subgroup = is_pelagos_coal
    data_item[activated_carbon].order = c
    data_item[activated_carbon].stack_size = 200
    data_item[activated_carbon].fuel_category = base_fuel
    data_item[activated_carbon].fuel_value = 7200 .. kJ
    data_recipe[activated_carbon].subgroup = is_pelagos_coal
    data_recipe[activated_carbon].icons = TWO_I(carbon_angels, activated_carbon)
    data_recipe[activated_carbon].order = c

    -- RECIPE
    local bioplastic = "pelagos-bioplastic"
    data_recipe[bioplastic].category = chemistry
    data_recipe[bioplastic].subgroup = is_pelagos_recipe
    data_recipe[bioplastic].icons = THREE_I(ethanol_angels, methane_angels, plastic)
    data_recipe[bioplastic].order = a_a
    data_recipe[bioplastic].ingredients =
    {
        {type = fluid, name = ethanol_angels, amount = 30},
        {type = fluid, name = methane_angels, amount = 60}
    }
    data_recipe[bioplastic].results[1].amount = 4
    data_recipe[bioplastic].surface_conditions = {{property = pressure, min = 1809, max = 1809}}

    local copper_biter_egg = "copper-biter-egg"
    data_item[copper_biter_egg].subgroup = is_pelagos_recipe
    data_item[copper_biter_egg].order = b
    data_item[copper_biter_egg].stack_size = 200
    data_item[copper_biter_egg].fuel_category = base_fuel
    data_item[copper_biter_egg].fuel_value = 7200 .. kJ
    TIMSABA.void.freezing_organics(copper_biter_egg)
    data_recipe[copper_biter_egg].subgroup = is_pelagos_recipe
    data_recipe[copper_biter_egg].order = b
    data_recipe[copper_biter_egg].energy_required = 8
    data_recipe[copper_biter_egg].results[1].amount = 8

    local copper_ore_from_copper_biter_egg = "copper-ore-bitter-egg"
    data_recipe[copper_ore_from_copper_biter_egg].subgroup = is_pelagos_recipe
    data_recipe[copper_ore_from_copper_biter_egg].icons = THREE_I(copper_biter_egg, ethanol_angels, copper_ore)
    data_recipe[copper_ore_from_copper_biter_egg].order = b_a
    data_recipe[copper_ore_from_copper_biter_egg].energy_required = 8
    data_recipe[copper_ore_from_copper_biter_egg].ingredients =
    {
        {type = item, name = copper_biter_egg, amount = 4},
        {type = fluid, name = ethanol_angels, amount = 30}
    }
    data_recipe[copper_ore_from_copper_biter_egg].results[1].amount = 4

    local wood_spoiling = "wood-spoiling"
    data_recipe[wood_spoiling].subgroup = is_pelagos_recipe
    data_recipe[wood_spoiling].icons = TWO_I(wood, spoilage)
    data_recipe[wood_spoiling].order = b_b
    data_recipe[wood_spoiling].energy_required = 4
    data_recipe[wood_spoiling].ingredients[1].amount = 4
    data_recipe[wood_spoiling].results[1].amount = 32

    local coconut_husk_spoiling = "coconut-husk-spoiling"
    data_recipe[coconut_husk_spoiling].subgroup = is_pelagos_recipe
    data_recipe[coconut_husk_spoiling].icons = TWO_I(coconut_husk, spoilage)
    data_recipe[coconut_husk_spoiling].order = b_c
    data_recipe[coconut_husk_spoiling].energy_required = 4
    data_recipe[coconut_husk_spoiling].ingredients[1].amount = 4
    data_recipe[coconut_husk_spoiling].results[1].amount = 16

    local nutrients_spoiling = "nutrients-spoiling"
    data_recipe[nutrients_spoiling].subgroup = is_pelagos_recipe
    data_recipe[nutrients_spoiling].icons = TWO_I(nutrients, spoilage)
    data_recipe[nutrients_spoiling].order = b_d
    data_recipe[nutrients_spoiling].energy_required = 4
    data_recipe[nutrients_spoiling].ingredients[1].amount = 8
    data_recipe[nutrients_spoiling].results[1].amount = 16

    data_fluid[biodiesel].subgroup = is_pelagos_recipe
    data_fluid[biodiesel].order = c
    TIMSABA.barreling.add_simple_fluid(biodiesel)

    local biodiesel_from_tree_seed = "pelagos-biodiesel-tree"
    data_recipe[biodiesel_from_tree_seed].additional_categories = nil
    data_recipe[biodiesel_from_tree_seed].subgroup = is_pelagos_recipe
    data_recipe[biodiesel_from_tree_seed].icons = THREE_I(tree_seed, ethanol_angels, biodiesel)
    data_recipe[biodiesel_from_tree_seed].order = c_a
    data_recipe[biodiesel_from_tree_seed].energy_required = 8
    data_recipe[biodiesel_from_tree_seed].ingredients =
    {
        {type = item, name = tree_seed, amount = 4},
        {type = fluid, name = ethanol_angels, amount = 60}
    }
    data_recipe[biodiesel_from_tree_seed].results[1].amount = 60

    local biodiesel_from_spoilage = "pelagos-biodiesel-spoilage"
    data_recipe[biodiesel_from_spoilage].category = oil_processing
    data_recipe[biodiesel_from_spoilage].subgroup = is_pelagos_recipe
    data_recipe[biodiesel_from_spoilage].icons = THREE_I(spoilage, ethanol_angels, biodiesel)
    data_recipe[biodiesel_from_spoilage].order = c_b
    data_recipe[biodiesel_from_spoilage].energy_required = 8
    data_recipe[biodiesel_from_spoilage].ingredients =
    {
        {type = item, name = spoilage, amount = 32},
        {type = fluid, name = ethanol_angels, amount = 15}
    }
    data_recipe[biodiesel_from_spoilage].results[1].amount = 30

    if mods[arig_mods] then
        local biodiesel_from_cactus_arig = "pelagos-biodiesel-arig-cactus"
        data_recipe[biodiesel_from_cactus_arig].category = oil_processing
        data_recipe[biodiesel_from_cactus_arig].subgroup = is_pelagos_recipe
        data_recipe[biodiesel_from_cactus_arig].icons = THREE_I(cactus_arig, ethanol_angels, biodiesel)
        data_recipe[biodiesel_from_cactus_arig].order = c_c
        data_recipe[biodiesel_from_cactus_arig].energy_required = 8
        data_recipe[biodiesel_from_cactus_arig].ingredients =
        {
            {type = item, name = cactus_arig, amount = 8},
            {type = fluid, name = ethanol_angels, amount = 60}
        }
        data_recipe[biodiesel_from_cactus_arig].results[1].amount = 120
    end

    local solid_fuel_from_biodiesel = "pelagos-biodiesel-solid-fuel"
    data_recipe[solid_fuel_from_biodiesel].category = chemistry
    data_recipe[solid_fuel_from_biodiesel].subgroup = is_pelagos_recipe
    data_recipe[solid_fuel_from_biodiesel].icons = TWO_I(biodiesel, solid_fuel)
    data_recipe[solid_fuel_from_biodiesel].order = d_a

    local improvised_landfill = "improvised-landfill"
    data_recipe[improvised_landfill].subgroup = is_pelagos_recipe
    data_recipe[improvised_landfill].icons = THREE_I(stone, spoilage, landfill)
    data_recipe[improvised_landfill].order = e_a
    data_recipe[improvised_landfill].ingredients =
    {
        {type = item, name = stone, amount = 16},
        {type = item, name = spoilage, amount = 64}
    }

    -- LOGISTIC
    local diesel_pump = "diesel-pump"
    data_item[diesel_pump].subgroup = is_pelagos_logistic
    data_item[diesel_pump].order = a
    data_item[diesel_pump].stack_size = 32
    data_item[diesel_pump].weight = 31250
    data_recipe[diesel_pump].subgroup = is_pelagos_logistic
    data_recipe[diesel_pump].order = a
    data_recipe[diesel_pump].energy_required = 2
    data_recipe[diesel_pump].ingredients =
    {
        {type = item, name = engine_unit, amount = 2},
        {type = item, name = steel_pipe, amount = 4},
        {type = item, name = coconut_sealant, amount = 8}
    }
    data_pump[diesel_pump].subgroup = is_pelagos_logistic
    data_pump[diesel_pump].order = a
    data_pump[diesel_pump].pumping_speed = 16

    local floating_electric_pole = "floating-electric-pole"
    data_item[floating_electric_pole].subgroup = is_pelagos_logistic
    data_item[floating_electric_pole].order = b
    data_item[floating_electric_pole].stack_size = 32
    data_item[floating_electric_pole].weight = 31250
    data_recipe[floating_electric_pole].subgroup = is_pelagos_logistic
    data_recipe[floating_electric_pole].order = b
    data_recipe[floating_electric_pole].energy_required = 0.5
    data_recipe[floating_electric_pole].ingredients =
    {
        {type = item, name = platinum_cable, amount = 4},
        {type = item, name = nitinol_plate_bob, amount = 4},
        {type = item, name = plastic, amount = 4},
        {type = item, name = coconut_sealant, amount = 4}
    }
    data_electric_pole[floating_electric_pole].subgroup = is_pelagos_logistic
    data_electric_pole[floating_electric_pole].order = b
    data_electric_pole[floating_electric_pole].maximum_wire_distance = 64

    local long_range_delivery_drone = "long-range-delivery-drone"
    data_item[long_range_delivery_drone].subgroup = is_pelagos_logistic
    data_item[long_range_delivery_drone].order = c
    data_item[long_range_delivery_drone].weight = 1000000
    data_recipe[long_range_delivery_drone].subgroup = is_pelagos_logistic
    data_recipe[long_range_delivery_drone].order = c
    data_recipe[long_range_delivery_drone].energy_required = 8
    data_recipe[long_range_delivery_drone].ingredients =
    {
        {type = item, name = engine_unit, amount = 1},
        {type = item, name = advanced_processing_unit, amount = 1},
        {type = item, name = nitinol_plate_bob, amount = 4},
        {type = fluid, name = ethanol_angels, amount = 30}
    }

    local long_range_delivery_drone_depot = "long-range-delivery-drone-depot"
    data_item[long_range_delivery_drone_depot].subgroup = is_pelagos_logistic
    data_item[long_range_delivery_drone_depot].order = d
    data_item[long_range_delivery_drone_depot].stack_size = 32
    data_item[long_range_delivery_drone_depot].weight = 31250
    data_recipe[long_range_delivery_drone_depot].subgroup = is_pelagos_logistic
    data_recipe[long_range_delivery_drone_depot].order = d
    data_recipe[long_range_delivery_drone_depot].energy_required = 4
    data_recipe[long_range_delivery_drone_depot].ingredients =
    {
        {type = item, name = molybdenum_gear_wheel, amount = 16},
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = molybdenum_plate, amount = 16},
        {type = item, name = rhenium_plate, amount = 16}
    }
    data_logistic_container[long_range_delivery_drone_depot].subgroup = is_pelagos_logistic
    data_logistic_container[long_range_delivery_drone_depot].order = d
    data_logistic_container[long_range_delivery_drone_depot].inventory_size = 20

    local long_range_delivery_drone_request_depot = "long-range-delivery-drone-request-depot"
    data_item[long_range_delivery_drone_request_depot].subgroup = is_pelagos_logistic
    data_item[long_range_delivery_drone_request_depot].order = e
    data_item[long_range_delivery_drone_request_depot].stack_size = 32
    data_item[long_range_delivery_drone_request_depot].weight = 31250
    data_recipe[long_range_delivery_drone_request_depot].subgroup = is_pelagos_logistic
    data_recipe[long_range_delivery_drone_request_depot].order = e
    data_recipe[long_range_delivery_drone_request_depot].energy_required = 4
    data_recipe[long_range_delivery_drone_request_depot].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = steel_chest, amount = 1}
    }
    data_logistic_container[long_range_delivery_drone_request_depot].subgroup = is_pelagos_logistic
    data_logistic_container[long_range_delivery_drone_request_depot].order = e
    data_logistic_container[long_range_delivery_drone_request_depot].inventory_size = 60

    -- BUILDING
    local diesel_agricultural_tower = "diesel-agricultural-tower"
    data_item[diesel_agricultural_tower].subgroup = is_pelagos_building
    data_item[diesel_agricultural_tower].order = a
    data_item[diesel_agricultural_tower].stack_size = 32
    data_item[diesel_agricultural_tower].weight = 31250
    data_recipe[diesel_agricultural_tower].subgroup = is_pelagos_building
    data_recipe[diesel_agricultural_tower].order = a
    data_recipe[diesel_agricultural_tower].energy_required = 8
    data_recipe[diesel_agricultural_tower].ingredients =
    {
        {type = item, name = engine_unit, amount = 4},
        {type = item, name = landfill, amount = 1},
        {type = item, name = steel_plate, amount = 8},
        {type = item, name = spoilage, amount = 16},
        {type = item, name = coconut_sealant, amount = 2}
    }
    data_agricultural_tower[diesel_agricultural_tower].subgroup = is_pelagos_building
    data_agricultural_tower[diesel_agricultural_tower].order = a

    local calciner = "calciner"
    data_item[calciner].subgroup = is_pelagos_building
    data_item[calciner].order = b
    data_item[calciner].stack_size = 32
    data_item[calciner].weight = 31250
    data_recipe[calciner].subgroup = is_pelagos_building
    data_recipe[calciner].order = b
    data_recipe[calciner].energy_required = 8
    data_recipe[calciner].ingredients =
    {
        {type = item, name = steel_pipe, amount = 32},
        {type = item, name = bronze_plate_bob, amount = 32},
        {type = item, name = steel_plate, amount = 32},
        {type = item, name = reinforced_concrete, amount = 32},
        {type = item, name = coconut_sealant, amount = 16}
    }
    data_assembling[calciner].subgroup = is_pelagos_building
    data_assembling[calciner].order = b
    data_assembling[calciner].energy_source.emissions_per_minute.pollution = 16

    local diesel_mining_drill = "diesel-mining-drill"
    data_item[diesel_mining_drill].subgroup = is_pelagos_building
    data_item[diesel_mining_drill].order = c
    data_item[diesel_mining_drill].stack_size = 32
    data_item[diesel_mining_drill].weight = 31250
    data_recipe[diesel_mining_drill].subgroup = is_pelagos_building
    data_recipe[diesel_mining_drill].order = c
    data_recipe[diesel_mining_drill].energy_required = 1
    data_recipe[diesel_mining_drill].ingredients =
    {
        {type = item, name = engine_unit, amount = 2},
        {type = item, name = steel_pipe, amount = 4},
        {type = item, name = burner_mining_drill, amount = 1},
        {type = item, name = coconut_sealant, amount = 8}
    }
    data_mining_drill[diesel_mining_drill].subgroup = is_pelagos_building
    data_mining_drill[diesel_mining_drill].order = c

    local diesel_assembling_machine = "diesel-assembling-machine"
    data_item[diesel_assembling_machine].subgroup = is_pelagos_building
    data_item[diesel_assembling_machine].order = d
    data_item[diesel_assembling_machine].stack_size = 32
    data_item[diesel_assembling_machine].weight = 31250
    data_recipe[diesel_assembling_machine].subgroup = is_pelagos_building
    data_recipe[diesel_assembling_machine].order = d
    data_recipe[diesel_assembling_machine].energy_required = 1
    data_recipe[diesel_assembling_machine].ingredients =
    {
        {type = item, name = steel_gear_wheel, amount = 8},
        {type = item, name = steel_bearing, amount = 4},
        {type = item, name = engine_unit, amount = 1},
        {type = item, name = bronze_plate_bob, amount = 16},
        {type = item, name = steel_plate, amount = 4},
        {type = item, name = coconut_sealant, amount = 8}
    }
    data_assembling[diesel_assembling_machine].subgroup = is_pelagos_building
    data_assembling[diesel_assembling_machine].order = d
    data_assembling[diesel_assembling_machine].crafting_speed = 4

    data_item[captive_copper_biter_spawner].subgroup = is_pelagos_building
    data_item[captive_copper_biter_spawner].order = e
    data_item[captive_copper_biter_spawner].stack_size = 32
    data_item[captive_copper_biter_spawner].weight = 31250
    data_recipe[captive_copper_biter_spawner].subgroup = is_pelagos_building
    data_recipe[captive_copper_biter_spawner].order = e
    data_recipe[captive_copper_biter_spawner].energy_required = 8
    data_recipe[captive_copper_biter_spawner].ingredients =
    {
        {type = item, name = copper_biter_egg, amount = 8},
        {type = item, name = capture_robot_rocket_pelagos, amount = 1},
        {type = fluid, name = ethanol_angels, amount = 480},
        {type = fluid, name = fluoroketone_cold, amount = 120}
    }
    data_assembling[captive_copper_biter_spawner].subgroup = is_pelagos_building
    data_assembling[captive_copper_biter_spawner].order = e
    data_assembling[captive_copper_biter_spawner].energy_usage = 225 .. kW

    -- WATER VEHICLES
    local pirateship = "pirateship"
    data_item_entity[pirateship].subgroup = is_water_vechicles
    data_item_entity[pirateship].order = a
    data_recipe[pirateship].subgroup = is_water_vechicles
    data_recipe[pirateship].order = a
    data_recipe[pirateship].energy_required = 8
    data_recipe[pirateship].ingredients =
    {
        {type = item, name = iron_plate, amount = 8},
        {type = item, name = wood, amount = 128}
    }
    data_car[pirateship].subgroup = is_water_vechicles
    data_car[pirateship].order = a

    local pirateship_rail = "pirateship_rail"
    data_wagon_cargo[pirateship_rail].subgroup = is_water_vechicles
    data_wagon_cargo[pirateship_rail].icons = nil
    data_wagon_cargo[pirateship_rail].icon = util.table.deepcopy(data_item_entity[pirateship].icon)
    data_wagon_cargo[pirateship_rail].icon_size = util.table.deepcopy(data_item_entity[pirateship].icon_size)
    data_wagon_cargo[pirateship_rail].order = b

    local boat = "boat"
    data_item_entity[boat].subgroup = is_water_vechicles
    data_item_entity[boat].order = c
    data_recipe[boat].subgroup = is_water_vechicles
    data_recipe[boat].order = c
    data_recipe[boat].energy_required = 8
    data_recipe[boat].ingredients =
    {
        {type = item, name = steel_gear_wheel, amount = 16},
        {type = item, name = steel_bearing, amount = 8},
        {type = item, name = engine_unit, amount = 16},
        {type = item, name = coconut_sealant, amount = 32},
        {type = item, name = steel_plate, amount = 32}
    }

    local indep_boat = "indep-boat"
    data_car[indep_boat].subgroup = is_water_vechicles
    data_car[indep_boat].order = d
    data_car[indep_boat].consumption = 225 .. kW

    -- WATER RAILS
    local waterway = "waterway"
    data_rail_planner[waterway].subgroup = is_water_rails
    data_rail_planner[waterway].order = a

    local waterway_straight = "straight-waterway"
    data_rail_straight[waterway_straight].subgroup = is_water_rails
    data_rail_straight[waterway_straight].order = a

    local port = "port"
    data_item[port].subgroup = is_water_rails
    data_item[port].order = b
    data_item[port].stack_size = 8
    data_item[port].weight = 125000
    data_recipe[port].subgroup = is_water_rails
    data_recipe[port].order = b
    data_recipe[port].ingredients =
    {
        {type = item, name = iron_plate, amount = 16},
        {type = item, name = steel_plate, amount = 4}
    }
    data_train_stop[port].subgroup = is_water_rails
    data_train_stop[port].order = b

    local buoy = "buoy"
    data_item[buoy].subgroup = is_water_rails
    data_item[buoy].order = c
    data_item[buoy].stack_size = 32
    data_item[buoy].weight = 31250
    data_recipe[buoy].subgroup = is_water_rails
    data_recipe[buoy].order = c
    data_recipe[buoy].ingredients =
    {
        {type = item, name = coconut_sealant, amount = 2},
        {type = item, name = electronic_circuit, amount = 2},
        {type = item, name = iron_plate, amount = 4},
        {type = item, name = steel_plate, amount = 2}
    }
    data_rail_signal[buoy].subgroup = is_water_rails
    data_rail_signal[buoy].order = c

    local chain_buoy = "chain_buoy"
    data_item[chain_buoy].subgroup = is_water_rails
    data_item[chain_buoy].order = d
    data_item[chain_buoy].stack_size = 32
    data_item[chain_buoy].weight = 31250
    data_recipe[chain_buoy].subgroup = is_water_rails
    data_recipe[chain_buoy].order = d
    data_recipe[chain_buoy].ingredients =
    {
        {type = item, name = coconut_sealant, amount = 2},
        {type = item, name = electronic_circuit, amount = 2},
        {type = item, name = iron_plate, amount = 4},
        {type = item, name = steel_plate, amount = 2}
    }
    data_rail_chain_signal[chain_buoy].subgroup = is_water_rails
    data_rail_chain_signal[chain_buoy].order = d

    local cargo_ship = "cargo_ship"
    data_item_entity[cargo_ship].subgroup = is_water_rails
    data_item_entity[cargo_ship].order = e
    data_item_entity[cargo_ship].stack_size = 32
    data_item_entity[cargo_ship].weight = 31250
    data_recipe[cargo_ship].subgroup = is_water_rails
    data_recipe[cargo_ship].order = e
    data_recipe[cargo_ship].ingredients =
    {
        {type = item, name = steel_gear_wheel, amount = 32},
        {type = item, name = steel_bearing, amount = 16},
        {type = item, name = engine_unit, amount = 64},
        {type = item, name = steel_chest, amount = 8},
        {type = item, name = coconut_sealant, amount = 64},
        {type = item, name = steel_plate, amount = 128}
    }
    data_wagon_cargo[cargo_ship].subgroup = is_water_rails
    data_wagon_cargo[cargo_ship].order = e
    data_wagon_cargo[cargo_ship].inventory_size = 480

    local fluid_ship = "oil_tanker"
    data_item_entity[fluid_ship].subgroup = is_water_rails
    data_item_entity[fluid_ship].order = e
    data_item_entity[fluid_ship].stack_size = 32
    data_item_entity[fluid_ship].weight = 31250
    data_recipe[fluid_ship].subgroup = is_water_rails
    data_recipe[fluid_ship].order = e
    data_recipe[fluid_ship].ingredients =
    {
        {type = item, name = titanium_gear_wheel, amount = 32},
        {type = item, name = titanium_bearing, amount = 16},
        {type = item, name = engine_unit, amount = 64},
        {type = item, name = storage_tank_1, amount = 8},
        {type = item, name = coconut_sealant, amount = 64},
        {type = item, name = titanium_plate_bob, amount = 128}
    }
    data_wagon_fluid[fluid_ship].subgroup = is_water_rails
    data_wagon_fluid[fluid_ship].order = e
    data_wagon_fluid[fluid_ship].capacity = (28800 * 8)

    local lighthouse = "lighthouse"
    data_item[lighthouse].subgroup = is_water_rails
    data_item[lighthouse].order = f
    data_recipe[lighthouse].subgroup = is_water_rails
    data_recipe[lighthouse].order = f
    data_recipe[lighthouse].energy_required = 8
    data_recipe[lighthouse].ingredients =
    {
        {type = item, name = coconut_sealant, amount = 8},
        {type = item, name = steel_pipe, amount = 8},
        {type = item, name = steel_plate, amount = 16},
        {type = item, name = concrete, amount = 256}
    }
    data_radar[lighthouse].subgroup = is_water_rails
    data_radar[lighthouse].order = f

    -- WAR
    data_ammo[capture_robot_rocket_pelagos].subgroup = is_pelagos_war
    data_ammo[capture_robot_rocket_pelagos].order = a
    data_ammo[capture_robot_rocket_pelagos].stack_size = 64
    data_ammo[capture_robot_rocket_pelagos].weight = 15625
    data_recipe[capture_robot_rocket_pelagos].subgroup = is_pelagos_war
    data_recipe[capture_robot_rocket_pelagos].order = a
    data_recipe[capture_robot_rocket_pelagos].energy_required = 8
    if data_item[flying_robot_frame_4] then
        data_recipe[capture_robot_rocket_pelagos].ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 2},
            {type = item, name = flying_robot_frame_4, amount = 1},
            {type = item, name = nitinol_plate_bob, amount = 2},
            {type = item, name = fermented_fish, amount = 16}
        }
    else
        data_recipe[capture_robot_rocket_pelagos].ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 2},
            {type = item, name = flying_robot_frame_1, amount = 1},
            {type = item, name = nitinol_plate_bob, amount = 2},
            {type = item, name = fermented_fish, amount = 16}
        }
    end

    local poison_rocket = "poison-rocket"
    data_ammo[poison_rocket].subgroup = is_pelagos_war
    data_ammo[poison_rocket].order = b
    data_ammo[poison_rocket].stack_size = 200
    data_recipe[poison_rocket].subgroup = is_pelagos_war
    data_recipe[poison_rocket].order = b
    data_recipe[poison_rocket].ingredients =
    {
        {type = item, name = poison_capsule, amount = 1},
        {type = item, name = rocket, amount = 1},
        {type = item, name = coconut_sealant, amount = 1}
    }

    local slowdown_rocket = "slowdown-rocket"
    data_ammo[slowdown_rocket].subgroup = is_pelagos_war
    data_ammo[slowdown_rocket].order = c
    data_ammo[slowdown_rocket].stack_size = 200
    data_recipe[slowdown_rocket].subgroup = is_pelagos_war
    data_recipe[slowdown_rocket].order = c
    data_recipe[slowdown_rocket].ingredients =
    {
        {type = item, name = slowdown_capsule, amount = 1},
        {type = item, name = rocket, amount = 1},
        {type = item, name = coconut_sealant, amount = 1}
    }

    local pirateship_cannon_gun = "pirateship-cannon-gun"
    data_gun[pirateship_cannon_gun].subgroup = is_pelagos_war
    data_gun[pirateship_cannon_gun].order = d

    local pirateship_cannonball = "pirateship-cannonball"
    data_ammo[pirateship_cannonball].subgroup = is_pelagos_war
    data_ammo[pirateship_cannonball].order = e
    data_ammo[pirateship_cannonball].stack_size = 8
    data_ammo[pirateship_cannonball].weight = 125000
    data_ammo[pirateship_cannonball].magazine_size = 4
    data_recipe[pirateship_cannonball].subgroup = is_pelagos_war
    data_recipe[pirateship_cannonball].order = e
    data_recipe[pirateship_cannonball].energy_required = 4
    data_recipe[pirateship_cannonball].ingredients =
    {
        {type = item, name = iron_plate, amount = 16},
        {type = item, name = activated_carbon, amount = 4}
    }

    local heavy_gun_turret = "heavy-gun-turret"
    data_item[heavy_gun_turret].subgroup = is_pelagos_war
    data_item[heavy_gun_turret].order = f
    data_item[heavy_gun_turret].stack_size = 32
    data_item[heavy_gun_turret].weight = 31250
    data_recipe[heavy_gun_turret].subgroup = is_pelagos_war
    data_recipe[heavy_gun_turret].order = f
    data_recipe[heavy_gun_turret].energy_required = 8
    data_recipe[heavy_gun_turret].ingredients =
    {
        {type = item, name = molybdenum_gear_wheel, amount = 16},
        {type = item, name = rhenium_bearing, amount = 16},
        {type = item, name = molybdenum_plate, amount = 16},
        {type = item, name = rhenium_plate, amount = 16},
        {type = item, name = molybdenum_rhenium_plate, amount = 16}
    }
    data_ammo_turret[heavy_gun_turret].subgroup = is_pelagos_war
    data_ammo_turret[heavy_gun_turret].order = f
    data_ammo_turret[heavy_gun_turret].attack_parameters.range = 32
    data_ammo_turret[heavy_gun_turret].attack_parameters.damage_modifier = 2.50

    -- EXCAVATOR
    local excavator = "canex-excavator"
    data_item[excavator].subgroup = is_excavator
    data_item[excavator].order = a
    data_item[excavator].stack_size = 32
    data_item[excavator].weight = 31250
    data_recipe[excavator].subgroup = is_excavator
    data_recipe[excavator].order = a
    data_recipe[excavator].energy_required = 8
    data_recipe[excavator].ingredients =
    {
        {type = item, name = steel_gear_wheel, amount = 16},
        {type = item, name = steel_bearing, amount = 8},
        {type = item, name = engine_unit, amount = 4},
        {type = item, name = bronze_plate_bob, amount = 16},
        {type = item, name = steel_plate, amount = 8},
        {type = item, name = coconut_sealant, amount = 8}
    }
    data_mining_drill[excavator].subgroup = is_excavator
    data_mining_drill[excavator].order = a
    data_mining_drill[excavator].mining_speed = 4
    data_mining_drill[excavator].module_slots = 8
    data_mining_drill[excavator].energy_usage = 450 .. kW

    local canex_digable = "canex-digable"
    data_item[canex_digable].subgroup = is_excavator
    data_item[canex_digable].order = b
    data_item[canex_digable].stack_size = 200
    data_recipe[canex_digable].category = crafting
    data_recipe[canex_digable].subgroup = is_excavator
    data_recipe[canex_digable].order = b
    data_recipe[canex_digable].energy_required = 1
    data_recipe[canex_digable].ingredients[1].amount = 16
    data_tile[canex_digable].subgroup = is_excavator
    data_tile[canex_digable].order = b

    local stone_erosion = "stone-erosion"
    data_recipe[stone_erosion].category = angels_ore_refining_T1
    data_recipe[stone_erosion].subgroup = is_excavator
    data_recipe[stone_erosion].icons = TWO_I(stone_crushed_angels, sand_angels)
    data_recipe[stone_erosion].order = b_a
    data_recipe[stone_erosion].energy_required = 1
    data_recipe[stone_erosion].ingredients = {{type = item, name = stone_crushed_angels, amount = 1}}
    data_recipe[stone_erosion].results = {{type = item, name = sand_angels, amount = 2}}

    local sandfill = "pelagos-sandfill"
    data_item[sandfill].subgroup = is_excavator
    data_item[sandfill].order = c
    data_item[sandfill].stack_size = 200
    data_recipe[sandfill].category = crafting
    data_recipe[sandfill].subgroup = is_excavator
    data_recipe[sandfill].order = c
    data_recipe[sandfill].energy_required = 1
    data_recipe[sandfill].ingredients[1].amount = 32

    bobmods.lib.recipe.update_recycling_recipe
    ({
        diesel_pump,
        floating_electric_pole,
        long_range_delivery_drone,
        long_range_delivery_drone_depot,
        long_range_delivery_drone_request_depot,
        diesel_agricultural_tower,
        calciner,
        diesel_mining_drill,
        diesel_assembling_machine,
        pirateship,
        boat,
        port,
        buoy,
        chain_buoy,
        cargo_ship,
        lighthouse,
        capture_robot_rocket_pelagos,
        poison_rocket,
        slowdown_rocket,
        pirateship_cannonball,
        heavy_gun_turret,
        excavator
    })

    -- TECHNOLOGY
    local planet_discovery_pelagos = "planet-discovery-pelagos"
    data_technology[planet_discovery_pelagos].prerequisites = {tech_advanced_asteroid_processing, "deep_sea_oil_extraction"}
    if mods[muluna_mods] then
        table.insert(data_technology[planet_discovery_pelagos].prerequisites, interstellar_science_pack)
    end
    data_technology[planet_discovery_pelagos].effects =
    {
        {type = unlock_space_location, space_location = planet_pelagos, use_icon_overlay_constant = true},
        {type = unlock_recipe, recipe = pirateship},
        {type = unlock_recipe, recipe = port},
    }
    data_technology[planet_discovery_pelagos].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[ethanol_mods].iocn = nil
    data_technology[ethanol_mods].icons = TIMSABA.functions.create_liquid_fluid_icon(nil, "CHO")

    data_technology["Pirate_Ship"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology["Pirate_Ship"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology["capsule-rockets"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[heavy_gun_turret].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology["oversea-energy-distribution"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[improvised_landfill].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology["tank_ship"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    tech_titanium_barrels = "titanium-barrels"
    data_technology[tech_titanium_barrels].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[wood_spoiling .. _technology].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    local tech_biodiesel = "pelagos-biodiesel"
    data_technology[tech_biodiesel].icons = nil
    data_technology[tech_biodiesel].icon = "__TIMSABA__/graphics/icons/pelagos/technology/biodiesel-tech.png"
    data_technology[tech_biodiesel].icon_size = 256
    data_technology[tech_biodiesel].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[long_range_delivery_drone].prerequisites = {ethanol_mods, spoilage_science_pack, "diesel-automation"}
    data_technology[long_range_delivery_drone].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    local tech_project_diesel_dragon = "project-diesel-dragon"
    table.insert(data_technology[tech_project_diesel_dragon].effects, {type = unlock_recipe, recipe = rocket_part_pelagos})
    data_technology[tech_project_diesel_dragon].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[captive_copper_biter_spawner].prerequisites = {"copper-biter-captivity", cryogenic_science_pack}
    data_technology[captive_copper_biter_spawner].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {cryogenic_science_pack, 1}
    }

    local tech_cultivation = "cultivation"
    local breeding_ = "breeding-"
    data_technology[tech_cultivation .. _productivity].effects = {}
    local function add_recipe_for_cultivation(recipe)
        table.insert(data_technology[tech_cultivation .. _productivity].effects, {type = change_recipe_productivity, recipe = recipe, change = 0.1})
    end
    if mods[vulcanus_sulfuric_bacteria_mods] then
        add_recipe_for_cultivation(sulfuric_bacteria_cultivation)
    end
    add_recipe_for_cultivation(saphirite_bacteria_cultivation)
    add_recipe_for_cultivation(jivolite_bacteria_cultivation)
    add_recipe_for_cultivation(stiratite_bacteria_cultivation)
    add_recipe_for_cultivation(crotinnium_bacteria_cultivation)
    add_recipe_for_cultivation(rubyte_bacteria_cultivation)
    add_recipe_for_cultivation(bobmonium_bacteria_cultivation)
    add_recipe_for_cultivation(pentapod_egg)
    if mods[panglia_mods] then
        add_recipe_for_cultivation(cloning_biter_egg)
    end
    add_recipe_for_cultivation(factorian_fish_breeding)
    add_recipe_for_cultivation(breeding_ .. levac_fish)
    add_recipe_for_cultivation(breeding_ .. dorflurp_jellyfish)
    add_recipe_for_cultivation(breeding_ .. santa_ray)
    add_recipe_for_cultivation(breeding_ .. gaseous_puffer)
    add_recipe_for_cultivation(breeding_ .. rancid_puffer)
    add_recipe_for_cultivation(breeding_ .. blazing_puffer)
    add_recipe_for_cultivation(breeding_ .. acidic_puffer)
    add_recipe_for_cultivation(breeding_ .. corrosive_puffer)
    if mods[tellus_mods] then
        add_recipe_for_cultivation(magnesium_bacteria_cultivation)
        add_recipe_for_cultivation(nauvis_parasite_reproduction)
        add_recipe_for_cultivation(gleba_parasite_reproduction)
    end
    if mods[muria_mods] then
        add_recipe_for_cultivation(acidophile_lichen_cultivation)
    end
    add_recipe_for_cultivation(fermentation_bacteria_cultivation)
    add_recipe_for_cultivation(fermentation_bacteria_cultivation_fermented_fish)
    if mods[apia_carnova_mods] then
        add_recipe_for_cultivation(larvae_cultivation)
        add_recipe_for_cultivation(flesh_reproduction)
        add_recipe_for_cultivation(roe_reproduction)
    end
    data_technology[tech_cultivation .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[landfill .. _productivity].effects = {}
    local function add_recipe_for_landfill(recipe)
        table.insert(data_technology[landfill .. _productivity].effects, {type = change_recipe_productivity, recipe = recipe, change = 0.1})
    end
    add_recipe_for_landfill(landfill)
    add_recipe_for_landfill(solid_mud_landfill)
    if mods[muluna_mods] then
        add_recipe_for_landfill(landfill_stone_crushed)
    end
    if mods[arig_mods] then
        add_recipe_for_landfill(compression_landfill)
    end
    add_recipe_for_landfill(improvised_landfill)
    add_recipe_for_landfill(foundation)
    add_recipe_for_landfill(artificial_jellynut_soil)
    add_recipe_for_landfill(overgrowth_jellynut_soil)
    add_recipe_for_landfill(artificial_yumako_soil)
    add_recipe_for_landfill(overgrowth_yumako_soil)
    add_recipe_for_landfill(ice_platform)
    if mods[arig_mods] then
        add_recipe_for_landfill(sandstone_foundation)
    end
    if mods[tellus_mods] then
        add_recipe_for_landfill(artificial_chlorophyll_soil)
        add_recipe_for_landfill(overgrowth_chlorophyll_soil)
        add_recipe_for_landfill(artificial_mycelia_soil)
        add_recipe_for_landfill(overgrowth_mycelia_soil)
        add_recipe_for_landfill(volcanic_soil)
        add_recipe_for_landfill(dust_soil)
    end
    if mods[vesta_mods] then
        add_recipe_for_landfill(vesta_foundation)
    end
    add_recipe_for_landfill(wooden_platform)
    add_recipe_for_landfill(wooden_platform_from_coconut)
    data_technology[landfill .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }
end