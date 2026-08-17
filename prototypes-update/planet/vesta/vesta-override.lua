if mods[vesta_mods] then
    -- AIR
    data_fluid[helium_vesta].localised_description = show_formula and {chemical_formula, "He"} or nil
    data_fluid[helium_vesta].subgroup = is_vesta_air
    data_fluid[helium_vesta].order = f
    TIMSABA.barreling.add_gas(helium_vesta)

    -- RECIPE
    data_fluid[algea_water_vesta].subgroup = is_vesta_recipe
    data_fluid[algea_water_vesta].order = a
    TIMSABA.barreling.add_simple_fluid(algea_water_vesta)
    data_recipe[algea_water_vesta].subgroup = is_vesta_recipe
    data_recipe[algea_water_vesta].icons = THREE_D_I(algae_green, carbon_dioxide_angels, water, algea_water_vesta)
    data_recipe[algea_water_vesta].order = a
    data_recipe[algea_water_vesta].ingredients =
    {
        {type = item, name = algae_green, amount = 4},
        {type = fluid, name = carbon_dioxide_angels, amount = 60},
        {type = fluid, name = water, amount = 60}
    }
    data_recipe[algea_water_vesta].results[1].amount = 60
    data_recipe[algea_water_vesta].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local stone_mineraliztion = "ske-carbon-mineralization"
    data_recipe[stone_mineraliztion].category = angels_bio_processing_4
    data_recipe[stone_mineraliztion].subgroup = is_vesta_recipe
    data_recipe[stone_mineraliztion].icons = STONKS_I(stonks_png, stone)
    data_recipe[stone_mineraliztion].order = a_a
    data_recipe[stone_mineraliztion].energy_required = 1
    data_recipe[stone_mineraliztion].ingredients =
    {
        {type = item, name = stone, amount = 2},
        {type = fluid, name = algea_water_vesta, amount = 30}
    }
    data_recipe[stone_mineraliztion].results[1].amount = 4
    data_recipe[stone_mineraliztion].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local coal_mineraliztion = "ske-coal-mineralization"
    data_recipe[coal_mineraliztion].category = angels_bio_processing_4
    data_recipe[coal_mineraliztion].subgroup = is_vesta_recipe
    data_recipe[coal_mineraliztion].icons = STONKS_I(stonks_png, coal)
    data_recipe[coal_mineraliztion].order = a_b
    data_recipe[coal_mineraliztion].energy_required = 1
    data_recipe[coal_mineraliztion].ingredients =
    {
        {type = item, name = coal, amount = 2},
        {type = fluid, name = algea_water_vesta, amount = 30}
    }
    data_recipe[coal_mineraliztion].results[1].amount = 4
    data_recipe[coal_mineraliztion].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local carbon_seperation = "ske-carbon-seperation"
    data_recipe[carbon_seperation].category = cryogenics
    data_recipe[carbon_seperation].subgroup = is_vesta_recipe
    data_recipe[carbon_seperation].icons = THREE_R_I(carbon_dioxide_angels, carbon_monoxide_angels, oxygen_angels)
    data_recipe[carbon_seperation].order = a_c
    data_recipe[carbon_seperation].energy_required = 1 -- 2CO₂ --> 2CO + O₂
    data_recipe[carbon_seperation].ingredients = {{type = fluid, name = carbon_dioxide_angels, amount = 30}}
    data_recipe[carbon_seperation].results =
    {
        {type = fluid, name = carbon_monoxide_angels, amount = 30},
        {type = fluid, name = oxygen_angels, amount = 15}
    }
    data_recipe[carbon_seperation].main_product = carbon_monoxide_angels
    data_recipe[carbon_seperation].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local co2_filter_carbon = "ske_co2_filter_carbon"
    data_recipe[co2_filter_carbon].category = cryogenics
    data_recipe[co2_filter_carbon].subgroup = is_vesta_recipe
    data_recipe[co2_filter_carbon].icons = THREE_R_I(carbon_dioxide_angels, carbon_angels, oxygen_angels)
    data_recipe[co2_filter_carbon].order = a_d
    data_recipe[co2_filter_carbon].energy_required = 1 -- CO₂ --> C + O₂
    data_recipe[co2_filter_carbon].ingredients = {{type = fluid, name = carbon_dioxide_angels, amount = 30}}
    data_recipe[co2_filter_carbon].results =
    {
        {type = item, name = carbon_angels, amount = 2},
        {type = fluid, name = oxygen_angels, amount = 30}
    }
    data_recipe[co2_filter_carbon].main_product = carbon_angels
    data_recipe[co2_filter_carbon].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local carbon_super_cooling = "ske-carbon-super-cooling"
    data_recipe[carbon_super_cooling].subgroup = is_vesta_recipe
    data_recipe[carbon_super_cooling].icons = TWO_D_I(nitrogen_liquid, carbon_monoxide_angels, carbon_angels, nitrogen_oxide)
    data_recipe[carbon_super_cooling].order = a_e
    -- N₂(l) + CO(g) --> C(s) + N₂O(g)
    data_recipe[carbon_super_cooling].ingredients =
    {
        {type = fluid, name = carbon_dioxide_angels, amount = 30},
        {type = fluid, name = nitrogen_liquid, amount = 30}
    }
    data_recipe[carbon_super_cooling].results =
    {
        {type = item, name = carbon_angels, amount = 2},
        {type = fluid, name = nitrogen_oxide, amount = 30}
    }
    data_recipe[carbon_super_cooling].main_product = carbon_angels

    local vesta_foundation = "vesta-foundation"
    data_item[vesta_foundation].subgroup = is_vesta_recipe
    data_item[vesta_foundation].order = b
    data_item[vesta_foundation].stack_size = 200
    data_recipe[vesta_foundation].subgroup = is_vesta_recipe
    data_recipe[vesta_foundation].order = b
    data_recipe[vesta_foundation].energy_required = 4
    data_recipe[vesta_foundation].ingredients =
    {
        {type = item, name = nitinol_plate_bob, amount = 4},
        {type = item, name = low_density_structure, amount = 4},
        {type = fluid, name = helium_vesta, amount = 15}
    }
    data_recipe[vesta_foundation].results[1].amount = 8
    data_tile[vesta_foundation].subgroup = is_vesta_recipe
    data_tile[vesta_foundation].order = b

    data_recipe[deuterium_mods].localised_name = {"fluid-name." .. deuterium_angels}
    data_recipe[deuterium_mods].category = angels_petrochem_air_filtering
    data_recipe[deuterium_mods].subgroup = is_vesta_recipe
    data_recipe[deuterium_mods].icon = data_fluid[deuterium_angels].icon
    data_recipe[deuterium_mods].order = c
    data_recipe[deuterium_mods].energy_required = 8
    data_recipe[deuterium_mods].ingredients = {}
    data_recipe[deuterium_mods].results = {{type = fluid, name = deuterium_angels, amount = (15 / 2)}}
    data_recipe[deuterium_mods].main_product = deuterium_angels
    data_recipe[deuterium_mods].surface_conditions = {{property = pressure, min = 500, max = 500}}

    data_recipe[tritium_mods].localised_name = {"fluid-name." .. tritium_gas}
    data_recipe[tritium_mods].category = angels_petrochem_air_filtering
    data_recipe[tritium_mods].subgroup = is_vesta_recipe
    data_recipe[tritium_mods].icon = data_fluid[tritium_gas].icon
    data_recipe[tritium_mods].order = d
    data_recipe[tritium_mods].energy_required = 8
    data_recipe[tritium_mods].ingredients = {}
    data_recipe[tritium_mods].results = {{type = fluid, name = tritium_gas, amount = (15 / 2)}}
    data_recipe[tritium_mods].main_product = tritium_gas
    data_recipe[tritium_mods].surface_conditions = {{property = pressure, min = 500, max = 500}}

    data_item[algea_clump_iron].subgroup = is_vesta_recipe
    data_item[algea_clump_iron].order = e
    data_item[algea_clump_iron].stack_size = 200
    data_recipe[algea_clump_iron].subgroup = is_vesta_recipe
    data_recipe[algea_clump_iron].icons = TWO_I(algea_water_vesta, algea_clump_iron)
    data_recipe[algea_clump_iron].order = e
    data_recipe[algea_clump_iron].ingredients = {{type = fluid, name = algea_water_vesta, amount = 60}}
    data_recipe[algea_clump_iron].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local algea_iron_electrolysis = "ske-algea-iron-electrolysis"
    data_recipe[algea_iron_electrolysis].subgroup = is_vesta_recipe
    data_recipe[algea_iron_electrolysis].icons = FOUR_R_I(algea_clump_iron, ore_saphirite, nil, ore_jivolite)
    data_recipe[algea_iron_electrolysis].order = e_a
    data_recipe[algea_iron_electrolysis].ingredients =
    {
        {type = item, name = algea_clump_iron, amount = 1},
        {type = fluid, name = helium_vesta, amount = 15}
    }
    data_recipe[algea_iron_electrolysis].results =
    {
        {type = item, name = ore_saphirite, amount = 2},
        {type = item, name = ore_jivolite, amount = 2}
    }
    data_recipe[algea_iron_electrolysis].surface_conditions = {{property = pressure, min = 500, max = 500}}

    data_item[algea_clump_copper].subgroup = is_vesta_recipe
    data_item[algea_clump_copper].order = f
    data_item[algea_clump_copper].stack_size = 200
    data_recipe[algea_clump_copper].subgroup = is_vesta_recipe
    data_recipe[algea_clump_copper].icons = TWO_I(algea_water_vesta, algea_clump_copper)
    data_recipe[algea_clump_copper].order = f
    data_recipe[algea_clump_copper].ingredients = {{type = fluid, name = algea_water_vesta, amount = 60}}
    data_recipe[algea_clump_copper].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local algea_copper_electrolysis = "ske-algea-copper-electrolysis"
    data_recipe[algea_copper_electrolysis].subgroup = is_vesta_recipe
    data_recipe[algea_copper_electrolysis].icons = FOUR_R_I(algea_clump_copper, ore_stiratite, nil, ore_crotinnium)
    data_recipe[algea_copper_electrolysis].order = f_a
    data_recipe[algea_copper_electrolysis].ingredients =
    {
        {type = item, name = algea_clump_copper, amount = 1},
        {type = fluid, name = helium_vesta, amount = 15}
    }
    data_recipe[algea_copper_electrolysis].results =
    {
        {type = item, name = ore_stiratite, amount = 2},
        {type = item, name = ore_crotinnium, amount = 2}
    }
    data_recipe[algea_copper_electrolysis].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local algea_clump_stonite = "ske_algea_clump_stonite"
    data_item[algea_clump_stonite].subgroup = is_vesta_recipe
    data_item[algea_clump_stonite].order = g
    data_item[algea_clump_stonite].stack_size = 200
    data_recipe[algea_clump_stonite].subgroup = is_vesta_recipe
    data_recipe[algea_clump_stonite].icons = TWO_I(algea_water_vesta, algea_clump_stonite)
    data_recipe[algea_clump_stonite].order = g
    data_recipe[algea_clump_stonite].ingredients = {{type = fluid, name = algea_water_vesta, amount = 60}}
    data_recipe[algea_clump_stonite].results[1].amount = 4
    data_recipe[algea_clump_stonite].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local algea_stone_electrolysis = "ske-algea-stone-electrolysis"
    data_recipe[algea_stone_electrolysis].category = vesta_electrolyser
    data_recipe[algea_stone_electrolysis].subgroup = is_vesta_recipe
    data_recipe[algea_stone_electrolysis].icons = FOUR_R_I(algea_clump_stonite, stone, nil, stone)
    data_recipe[algea_stone_electrolysis].order = g_a
    data_recipe[algea_stone_electrolysis].ingredients =
    {
        {type = item, name = algea_clump_stonite, amount = 1},
        {type = fluid, name = helium_vesta, amount = 15}
    }
    data_recipe[algea_stone_electrolysis].results = {{type = item, name = stone, amount = 4}}
    data_recipe[algea_stone_electrolysis].surface_conditions = {{property = pressure, min = 500, max = 500}}

    data_recipe[lithium_brine].category = angels_petrochem_air_filtering
    data_recipe[lithium_brine].subgroup = is_vesta_recipe
    data_recipe[lithium_brine].icons = TWO_I(water, water_thermal_angels)
    data_recipe[lithium_brine].order = h
    data_recipe[lithium_brine].energy_required = 16
    data_recipe[lithium_brine].ingredients[1].amount = 30
    data_recipe[lithium_brine].results[1].amount = 15

    local rocket_fuel_from_vesta = "ske-rocket-fuel-from-vesta"
    data_recipe[rocket_fuel_from_vesta].subgroup = is_vesta_recipe
    data_recipe[rocket_fuel_from_vesta].icons = BUILDING_R_I(rocket_fuel, planet_vesta)
    data_recipe[rocket_fuel_from_vesta].order = h_a
    data_recipe[rocket_fuel_from_vesta].energy_required = 2
    data_recipe[rocket_fuel_from_vesta].ingredients[1].amount = 30
    data_recipe[rocket_fuel_from_vesta].ingredients[2].amount = 30
    data_recipe[rocket_fuel_from_vesta].ingredients[3].amount = 30
    data_recipe[rocket_fuel_from_vesta].surface_conditions = {{property = pressure, min = 500, max = 500}}

    local lds_from_vesta = "ske-lds-from-vesta"
    data_recipe[lds_from_vesta].subgroup = is_vesta_recipe
    data_recipe[lds_from_vesta].icons = BUILDING_R_I(low_density_structure, iridium_plate_mods)
    data_recipe[lds_from_vesta].order = h_b
    data_recipe[lds_from_vesta].energy_required = 2
    data_recipe[lds_from_vesta].ingredients =
    {
        {type = item, name = steel_plate, amount = 16},
        {type = item, name = iridium_plate_mods, amount = 2},
        {type = fluid, name = methane_angels, amount = 60}
    }
    data_recipe[lds_from_vesta].results[1].amount = 1
    data_recipe[lds_from_vesta].surface_conditions = {{property = pressure, min = 500, max = 500}}

    data_fluid[supermagnetic_vesta].subgroup = is_vesta_recipe
    data_fluid[supermagnetic_vesta].order = i
    TIMSABA.barreling.add_dangerous_fluid(supermagnetic_vesta)
    data_recipe[supermagnetic_vesta].category = vesta_magnetizing
    data_recipe[supermagnetic_vesta].subgroup = is_vesta_recipe
    data_recipe[supermagnetic_vesta].icons = TWO_I(electrolyte, supermagnetic_vesta)
    data_recipe[supermagnetic_vesta].order = i
    data_recipe[supermagnetic_vesta].ingredients[1].amount = 15
    data_recipe[supermagnetic_vesta].results[1].amount = 15
    data_recipe[supermagnetic_vesta].surface_conditions = {{property = pressure, min = 500, max = 500}}

    data_tool[gas_manipulation_science_pack].subgroup = is_vesta_recipe
    data_tool[gas_manipulation_science_pack].order = j
    data_recipe[gas_manipulation_science_pack].subgroup = is_vesta_recipe
    data_recipe[gas_manipulation_science_pack].order = j
    data_recipe[gas_manipulation_science_pack].ingredients =
    {
        {type = item, name = carbon_angels, amount = 4},
        {type = item, name = algea_clump_stonite, amount = 4},
        {type = item, name = iridium_plate_mods, amount = 4},
        {type = fluid, name = supermagnetic_vesta, amount = 60}
    }
    data_recipe[gas_manipulation_science_pack].results =
    {
        {type = item, name = gas_manipulation_science_pack, amount = 1},
        {type = fluid, name = supermagnetic_vesta, amount = 30}
    }
    data_recipe[gas_manipulation_science_pack].main_product = gas_manipulation_science_pack
    data_recipe[gas_manipulation_science_pack].surface_conditions = {{property = pressure, min = 500, max = 500}}

    data_item[algea_nutrient_clump].subgroup = is_vesta_recipe
    data_item[algea_nutrient_clump].order = k
    data_item[algea_nutrient_clump].stack_size = 200

    data_item[algea_petrite_clump].subgroup = is_vesta_recipe
    data_item[algea_petrite_clump].order = l
    data_item[algea_petrite_clump].stack_size = 200
    data_item[algea_petrite_clump].fuel_category = base_fuel
    data_item[algea_petrite_clump].fuel_value = 28800 .. kJ

    -- IRIDIUM
    data_item[iridium_plate_mods].localised_description = show_formula and {chemical_formula, "Ir"} or nil
    data_item[iridium_plate_mods].subgroup = is_iridium_casting
    data_item[iridium_plate_mods].order = a
    data_item[iridium_plate_mods].stack_size = 200
    data_recipe[iridium_plate_mods].category = sintering_6
    data_recipe[iridium_plate_mods].subgroup = is_iridium_casting
    data_recipe[iridium_plate_mods].icons = TWO_I(iridium_powder, iridium_plate_mods)
    data_recipe[iridium_plate_mods].order = a
    data_recipe[iridium_plate_mods].energy_required = 8
    data_recipe[iridium_plate_mods].ingredients = {{type = item, name = iridium_powder, amount = 16}}
    data_recipe[iridium_plate_mods].results[1].amount = 16

    -- LOGISTICS
    data_item[magnetic_pipe_vesta].subgroup = is_vesta_logistics
    data_item[magnetic_pipe_vesta].order = a
    data_item[magnetic_pipe_vesta].stack_size = 200
    if mods[moshine_mods] then
        data_recipe[magnetic_pipe_vesta].ingredients[3].name = neodymium_magnet
    end
    data_pipe[magnetic_pipe_vesta].subgroup = is_vesta_logistics
    data_pipe[magnetic_pipe_vesta].order = a

    -- BUILDING
    data_item[electrolyzer_vesta].subgroup = is_vesta_building
    data_item[electrolyzer_vesta].order = a
    data_item[electrolyzer_vesta].stack_size = 32
    data_item[electrolyzer_vesta].weight = 31250
    data_recipe[electrolyzer_vesta].subgroup = is_vesta_building
    data_recipe[electrolyzer_vesta].order = a
    data_recipe[electrolyzer_vesta].energy_required = 2
    data_recipe[electrolyzer_vesta].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = niobium_titanium_cable, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = iridium_plate_mods, amount = 4}
    }
    data_assembling[electrolyzer_vesta].subgroup = is_vesta_building
    data_assembling[electrolyzer_vesta].order = a
    data_assembling[electrolyzer_vesta].crafting_speed = 1
    data_assembling[electrolyzer_vesta].module_slots = 4
    data_assembling[electrolyzer_vesta].energy_usage = 465 .. kW
    data_assembling[electrolyzer_vesta].energy_source.drain = 15 .. kW
    data_assembling[electrolyzer_vesta].effect_receiver.base_effect.productivity = 0.5

    local supermagnet = "supermagnet"
    data_item[supermagnet].subgroup = is_vesta_building
    data_item[supermagnet].order = b
    data_item[supermagnet].stack_size = 32
    data_item[supermagnet].weight = 31250
    data_recipe[supermagnet].subgroup = is_vesta_building
    data_recipe[supermagnet].order = b
    data_recipe[supermagnet].energy_required = 4
    data_recipe[supermagnet].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = niobium_titanium_cable, amount = 64},
        {type = item, name = iridium_plate_mods, amount = 16}
    }
    if mods[moshine_mods] then
        table.insert(data_recipe[supermagnet].ingredients, {type = item, name = neodymium_magnet, amount = 8})
    end
    data_assembling[supermagnet].subgroup = is_vesta_building
    data_assembling[supermagnet].order = b
    data_assembling[supermagnet].energy_usage = 4680 .. kW
    data_assembling[supermagnet].energy_source.drain = 120 .. kW

    local combustion_furnace = "vesta-combustion-furnace"
    data_item[combustion_furnace].subgroup = is_vesta_building
    data_item[combustion_furnace].order = c
    data_item[combustion_furnace].stack_size = 32
    data_item[combustion_furnace].weight = 31250
    data_recipe[combustion_furnace].subgroup = is_vesta_building
    data_recipe[combustion_furnace].order = c
    data_recipe[combustion_furnace].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = niobium_iron_plate, amount = 2},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = niobium_titanium_cable, amount = 4},
        {type = item, name = iridium_plate_mods, amount = 4}
    }
    data_assembling[combustion_furnace].subgroup = is_vesta_building
    data_assembling[combustion_furnace].order = c
    data_assembling[combustion_furnace].energy_usage = 52.5 .. kW
    data_assembling[combustion_furnace].energy_source.drain = 7.5 .. kW
    data_assembling[combustion_furnace].effect_receiver.base_effect.productivity = 0.5

    -- SPACE
    local fusion_thruster = "ske_fusion_thruster"
    data_item[fusion_thruster].subgroup = is_vesta_recipe_space
    data_item[fusion_thruster].order = a
    data_recipe[fusion_thruster].subgroup = is_vesta_recipe_space
    data_recipe[fusion_thruster].order = a
    data_recipe[fusion_thruster].energy_required = 4
    data_recipe[fusion_thruster].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 4},
        {type = item, name = quantum_processor, amount = 8},
        {type = item, name = niobium_titanium_plate, amount = 4},
        {type = item, name = niobium_titanium_cable, amount = 32},
        {type = item, name = magnetic_pipe_vesta, amount = 4},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 16},
        {type = item, name = iridium_plate_mods, amount = 16},
        {type = fluid, name = supermagnetic_vesta, amount = 120}
    }
    if mods[shchierbin_mods] then
        data_recipe[fusion_thruster].ingredients[1].name = vanadium_electro_engine_unit
    end
    if mods[moshine_mods] then
        table.insert(data_recipe[fusion_thruster].ingredients, {type = item, name = neodymium_magnet, amount = 8})
    end
    data_recipe[fusion_thruster].results =
    {
        {type = item, name = fusion_thruster, amount = 1},
        {type = fluid, name = electrolyte, amount = 60}
    }
    data_recipe[fusion_thruster].main_product = fusion_thruster
    data_thruster[fusion_thruster].subgroup = is_vesta_recipe_space
    data_thruster[fusion_thruster].order = a

    data_fluid[fusion_thruster_fuel].subgroup = is_vesta_recipe_space
    data_fluid[fusion_thruster_fuel].order = b
    data_recipe[fusion_thruster_fuel].category = cryogenics
    data_recipe[fusion_thruster_fuel].subgroup = is_vesta_recipe_space
    data_recipe[fusion_thruster_fuel].icons = THREE_I(thruster_fuel, fusion_plasma, fusion_thruster_fuel)
    data_recipe[fusion_thruster_fuel].order = b
    data_recipe[fusion_thruster_fuel].energy_required = 4
    data_recipe[fusion_thruster_fuel].ingredients =
    {
        {type = fluid, name = thruster_fuel, amount = 480},
        {type = fluid, name = fusion_plasma, amount = (15 / 2)}
    }
    data_recipe[fusion_thruster_fuel].results = {{type = fluid, name = fusion_thruster_fuel, amount = 240}}

    data_fluid[fusion_thruster_oxidizer].subgroup = is_vesta_recipe_space
    data_fluid[fusion_thruster_oxidizer].order = c
    data_recipe[fusion_thruster_oxidizer].subgroup = is_vesta_recipe_space
    data_recipe[fusion_thruster_oxidizer].icons = THREE_I(thruster_oxidizer, fusion_plasma, fusion_thruster_oxidizer)
    data_recipe[fusion_thruster_oxidizer].order = c
    data_recipe[fusion_thruster_oxidizer].energy_required = 4
    data_recipe[fusion_thruster_oxidizer].ingredients =
    {
        {type = fluid, name = thruster_oxidizer, amount = 480},
        {type = fluid, name = fusion_plasma, amount = (15 / 2)}
    }
    data_recipe[fusion_thruster_oxidizer].results = {{type = fluid, name = fusion_thruster_oxidizer, amount = 240}}

    bobmods.lib.recipe.update_recycling_recipe
    ({
        magnetic_pipe_vesta,
        electrolyzer_vesta,
        supermagnet,
        combustion_furnace,
        fusion_thruster
    })

    -- TECHNOLOGY
    local planet_discovery_vesta = "planet-discovery-vesta"
    data_technology[planet_discovery_vesta].effects =
    {
        {type = unlock_space_location, space_location = planet_vesta, use_icon_overlay_constant = true},
        {type = unlock_recipe, recipe = hydrogen_vesta},
        {type = unlock_recipe, recipe = nitrogen_vesta},
        {type = unlock_recipe, recipe = carbon_dioxide_vesta},
        {type = unlock_recipe, recipe = hydrogen_sulfide_vesta},
        {type = unlock_recipe, recipe = methane_vesta},
        {type = unlock_recipe, recipe = helium_vesta},
        {type = unlock_recipe, recipe = algea_water_vesta},
        {type = unlock_recipe, recipe = stone_mineraliztion},
        {type = unlock_recipe, recipe = coal_mineraliztion},
        {type = unlock_recipe, recipe = carbon_seperation},
        {type = unlock_recipe, recipe = co2_filter_carbon},
        {type = unlock_recipe, recipe = carbon_super_cooling},
        {type = unlock_recipe, recipe = vesta_foundation}
    }

    data_technology[tech_deuterium].prerequisites = {planet_discovery_vesta}
    data_technology[tech_deuterium].effects =
    {
        {type = unlock_recipe, recipe = deuterium_mods},
        {type = unlock_recipe, recipe = tritium_mods}
    }

    local tech_algea_culturing = "s1_algea_culturing"
    data_technology[tech_algea_culturing].prerequisites = {planet_discovery_vesta}

    tech_algea_extracting = "s1_algea_extracting"
    data_technology[tech_algea_extracting].prerequisites = {tech_iridium_smelting_1, tech_algea_culturing}
    if mods[moshine_mods] then
        table.insert(data_technology[tech_algea_extracting].prerequisites, tech_magnet_moshine)
    end
    data_technology[tech_algea_extracting].effects =
    {
        {type = unlock_recipe, recipe = supermagnet},
        {type = unlock_recipe, recipe = algea_iron_electrolysis},
        {type = unlock_recipe, recipe = algea_copper_electrolysis},
        {type = unlock_recipe, recipe = algea_stone_electrolysis}
    }

    data_technology[tech_gas_manipulation_science_pack].effects =
    {
        {type = unlock_recipe, recipe = lithium_brine},
        {type = unlock_recipe, recipe = rocket_fuel_from_vesta},
        {type = unlock_recipe, recipe = lds_from_vesta},
        {type = unlock_recipe, recipe = supermagnetic_vesta},
        {type = unlock_recipe, recipe = gas_manipulation_science_pack}
    }

    local tech_ore_to_plate = "s2_plateworkings"
    data_technology[tech_ore_to_plate].effects = {}
    local function add_recipe_for_ore_to_plate(recipe)
        table.insert(data_technology[tech_ore_to_plate].effects, {type = unlock_recipe, recipe = recipe})
    end
    add_recipe_for_ore_to_plate(combustion_furnace)
    add_recipe_for_ore_to_plate(iron_plate .. _burning)
    add_recipe_for_ore_to_plate(steel_plate .. _burning)
    add_recipe_for_ore_to_plate(copper_plate .. _burning)
    add_recipe_for_ore_to_plate(lead_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(tin_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(nickel_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(aluminium_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(zinc_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(silver_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(titanium_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(gold_plate_bob .. _burning)
    add_recipe_for_ore_to_plate(platinum_plate .. _burning)
    add_recipe_for_ore_to_plate(holmium_plate .. _burning)
    add_recipe_for_ore_to_plate(antimony_plate .. _burning)
    add_recipe_for_ore_to_plate(germanium_plate .. _burning)
    if mods[shchierbin_mods] then
        add_recipe_for_ore_to_plate(vanadium_plate .. _burning)
    end

    if mods[shchierbin_mods] then
        table.insert(data_technology[fusion_thruster].prerequisites, vanadium_crusher)
    end

    data_technology["worker-robots-storage-vesta"].localised_description = {"technplogy-description.worker-robots-storage"}

    data_technology[tech_wolframite_processing_4].prerequisites = {tech_wolframite_processing_3, tech_gas_manipulation_science_pack}

    data_technology[tech_brannerite_processing_4].prerequisites = {tech_brannerite_processing_3, tech_gas_manipulation_science_pack}

    data_technology[tech_antimonite_processing_3].prerequisites = {tech_antimonite_processing_2, tech_gas_manipulation_science_pack}
    data_technology[tech_antimonite_processing_4].prerequisites = {tech_antimonite_processing_3, promethium_science_pack}
    data_technology[tech_antimony_smelting_3].prerequisites = {tech_antimonite_processing_3, tech_antimony_smelting_2, promethium_science_pack}

    data_technology[tech_germanite_processing_3].prerequisites = {tech_germanite_processing_2, tech_gas_manipulation_science_pack}
    data_technology[tech_germanite_processing_4].prerequisites = {tech_germanite_processing_3, promethium_science_pack}
    data_technology[tech_germanium_smelting_3].prerequisites = {tech_germanite_processing_3, tech_germanium_smelting_2, promethium_science_pack}
    data_technology[tech_galium_smelting_2].prerequisites = {tech_germanite_processing_3, tech_galium_smelting_1, tech_gas_manipulation_science_pack}
    data_technology[tech_galium_smelting_3].prerequisites = {tech_germanite_processing_4, tech_galium_smelting_2, promethium_science_pack}

    if mods[moshine_mods] then
        data_technology[tech_monazite_processing_3].prerequisites = {tech_monazite_processing_2, tech_gas_manipulation_science_pack}
        data_technology[tech_monazite_processing_4].prerequisites = {tech_monazite_processing_3, promethium_science_pack}
        data_technology[tech_neodymium_smelting_3].prerequisites = {tech_monazite_processing_3, promethium_science_pack}
    end

    if mods[paracelsin_mods] then
        data_technology[tech_sphalerite_processing_3].prerequisites = {tech_sphalerite_processing_2, tech_gas_manipulation_science_pack}
        data_technology[tech_sphalerite_processing_4].prerequisites = {tech_sphalerite_processing_3, promethium_science_pack}

        data_technology[tech_tetrahedrite_processing_3].prerequisites = {tech_tetrahedrite_processing_2, tech_gas_manipulation_science_pack}
        data_technology[tech_tetrahedrite_processing_4].prerequisites = {tech_tetrahedrite_processing_3, promethium_science_pack}
    end

    if mods[corrundum_mods] then
        data_technology[tech_chalcopyrite_processing_4].prerequisites = {tech_chalcopyrite_processing_3, tech_gas_manipulation_science_pack}
        data_technology[tech_selenium_synthesis].prerequisites = {tech_chalcopyrite_processing_4, tech_molybdenite_processing_4}
    end

    if mods[castra_mods] then
        data_technology[tech_millerite_processing_4].prerequisites = {tech_millerite_processing_3, tech_gas_manipulation_science_pack}
    end

    data_technology[promethium_science_pack].prerequisites = {tech_rhenium_synthesis, tech_wolframite_processing_4, tech_galium_smelting_3}
    if mods[moshine_mods] then
        table.insert(data_technology[promethium_science_pack].prerequisites, tech_brannerite_processing_4)
    else
        table.insert(data_technology[promethium_science_pack].prerequisites, tech_holmium_synthesis)
    end
    if mods[paracelsin_mods] then
        table.insert(data_technology[promethium_science_pack].prerequisites, tech_sphalerite_processing_3)
        table.insert(data_technology[promethium_science_pack].prerequisites, tech_tetrahedrite_processing_3)
    end
    if mods[corrundum_mods] then
        table.insert(data_technology[promethium_science_pack].prerequisites, tech_selenium_synthesis)
    end
    if mods[castra_mods] then
        table.insert(data_technology[promethium_science_pack].prerequisites, tech_millerite_processing_4)
    end
end