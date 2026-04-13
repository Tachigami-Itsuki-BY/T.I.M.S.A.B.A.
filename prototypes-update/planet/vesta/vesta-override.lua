-- [font=default-tiny-bold][/font]

if mods [vesta_mods] then
    local vesta_magnetic_pipe = "ske_magnetic_pipe"
    data_item[vesta_magnetic_pipe].subgroup = is_vesta_logistics
    data_item[vesta_magnetic_pipe].order = a
    data_item[vesta_magnetic_pipe].stack_size = 200
    data_item[vesta_magnetic_pipe].weight = 5000
    data_pipe[vesta_magnetic_pipe].subgroup = is_vesta_logistics
    data_pipe[vesta_magnetic_pipe].order = a
    local magnetic_pipe = "magnetic-pipe"
    data_recipe[magnetic_pipe].subgroup = is_vesta_logistics
    data_recipe[magnetic_pipe].icons = TWO_FIVE_I(iron_pipe, iridium_plate_mods, nil, copper_cable, steel_plate, supermagnetic_vesta, vesta_magnetic_pipe, nil, electrolyte)
    data_recipe[magnetic_pipe].order = a

    data_fluid[dt_fuel].subgroup = is_vesta_logistics
    data_fluid[dt_fuel].order = b
    data_recipe[dt_fuel].subgroup = is_vesta_logistics
    data_recipe[dt_fuel].icons = THREE_I(tritium_mods, deuterium_angels, dt_fuel)
    data_recipe[dt_fuel].order = b

    local dt_fuel_container = "ske_dt_fuel_container"
    data_item[dt_fuel_container].subgroup = is_vesta_logistics
    data_item[dt_fuel_container].order = c
    data_recipe[dt_fuel_container].subgroup = is_vesta_logistics
    data_recipe[dt_fuel_container].icons = THREE_I(iridium_plate_mods, dt_fuel, dt_fuel_container)
    data_recipe[dt_fuel_container].order = c

    local fusion_framework = "ske_fusion_framework"
    data_item[fusion_framework].subgroup = is_vesta_logistics
    data_item[fusion_framework].order = d
    data_item[fusion_framework].stack_size = 200
    data_item[fusion_framework].weight = 5000
    data_recipe[fusion_framework].subgroup = is_vesta_logistics
    data_recipe[fusion_framework].icons = THREE_D_I(electric_engine_unit, processing_unit, dt_fuel, fusion_framework)
    data_recipe[fusion_framework].order = d
    data_recipe[fusion_framework].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 5},
        {type = item, name = processing_unit, amount = 5},
        {type = fluid, name = dt_fuel, amount = 50}
    }

    local fusion_construction_robot = "fusion-construction-robot"
    data_item[fusion_construction_robot].subgroup = is_vesta_logistics
    data_item[fusion_construction_robot].order = e
    data_recipe[fusion_construction_robot].subgroup = is_vesta_logistics
    data_recipe[fusion_construction_robot].order = e
    data_construction_robot[fusion_construction_robot].subgroup = is_vesta_logistics
    data_construction_robot[fusion_construction_robot].order = e

    local fusion_logistic_robot = "fusion-logistic-robot"
    data_item[fusion_logistic_robot].subgroup = is_vesta_logistics
    data_item[fusion_logistic_robot].order = f
    data_recipe[fusion_logistic_robot].subgroup = is_vesta_logistics
    data_recipe[fusion_logistic_robot].order = f
    data_logistic_robot[fusion_logistic_robot].subgroup = is_vesta_logistics
    data_logistic_robot[fusion_logistic_robot].order = f

    local electrolyzer = "vesta-electrolyzer"
    data_item[electrolyzer].subgroup = is_vesta_building
    data_item[electrolyzer].order = a
    data_item[electrolyzer].stack_size = 32
    data_item[electrolyzer].weight = 31250
    data_recipe[electrolyzer].subgroup = is_vesta_building
    data_recipe[electrolyzer].order = a
    data_assembling[electrolyzer].subgroup = is_vesta_building
    data_assembling[electrolyzer].order = a

    local supermagnet = "supermagnet"
    data_item[supermagnet].subgroup = is_vesta_building
    data_item[supermagnet].order = b
    data_item[supermagnet].stack_size = 32
    data_item[supermagnet].weight = 31250
    data_recipe[supermagnet].subgroup = is_vesta_building
    data_recipe[supermagnet].order = b
    data_assembling[supermagnet].subgroup = is_vesta_building
    data_assembling[supermagnet].order = b

    local combustion_furnace = "vesta-combustion-furnace"
    data_item[combustion_furnace].subgroup = is_vesta_building
    data_item[combustion_furnace].order = c
    data_item[combustion_furnace].stack_size = 32
    data_item[combustion_furnace].weight = 31250
    data_recipe[combustion_furnace].subgroup = is_vesta_building
    data_recipe[combustion_furnace].order = c
    data_assembling[combustion_furnace].subgroup = is_vesta_building
    data_assembling[combustion_furnace].order = c

    local copper_H = "ske_cf_copper_hyd"
    data_recipe[copper_H].subgroup = is_vesta_building
    data_recipe[copper_H].icons = THREE_I(copper_ore, hydrogen_angels, copper_plate)
    data_recipe[copper_H].order = c_a

    local copper_O = "ske_cf_copper_oxy"
    data_recipe[copper_O].subgroup = is_vesta_building
    data_recipe[copper_O].icons = THREE_I(copper_ore, oxygen_angels, copper_plate)
    data_recipe[copper_O].order = c_b

    local iron_H = "ske_cf_iron_hyd"
    data_recipe[iron_H].subgroup = is_vesta_building
    data_recipe[iron_H].icons = THREE_I(iron_ore, hydrogen_angels, iron_plate)
    data_recipe[iron_H].order = c_c

    local iron_O = "ske_cf_iron_oxy"
    data_recipe[iron_O].subgroup = is_vesta_building
    data_recipe[iron_O].icons = THREE_I(iron_ore, oxygen_angels, iron_plate)
    data_recipe[iron_O].order = c_d

    local steel_H = "ske_cf_steel_hyd"
    data_recipe[steel_H].subgroup = is_vesta_building
    data_recipe[steel_H].icons = THREE_I(iron_plate, hydrogen_angels, steel_plate)
    data_recipe[steel_H].order = c_e

    local steel_O = "ske_cf_steel_oxy"
    data_recipe[steel_O].subgroup = is_vesta_building
    data_recipe[steel_O].icons = THREE_I(iron_plate, oxygen_angels, steel_plate)
    data_recipe[steel_O].order = c_f

    data_fluid[helium_vesta].localised_description = show_formula and {chemical_formula, "He"} or nil
    data_fluid[helium_vesta].subgroup = is_vesta_recipe
    data_fluid[helium_vesta].order = a

    local h2o = "ske-h2o"
    data_recipe[h2o].subgroup = is_vesta_recipe
    data_recipe[h2o].icons = THREE_I(hydrogen_angels, oxygen_angels, water)
    data_recipe[h2o].order = c_a

    local water_electrolysis = "ske-water-electrolysis"
    data_recipe[water_electrolysis].subgroup = is_vesta_recipe
    data_recipe[water_electrolysis].icons = THREE_R_I(water, oxygen_angels, hydrogen_angels)
    data_recipe[water_electrolysis].order = c_b

    local carbon_seperation = "ske-carbon-seperation"
    data_recipe[carbon_seperation].subgroup = is_vesta_recipe
    data_recipe[carbon_seperation].icons = THREE_R_I(carbon_dioxide_angels, oxygen_angels, carbon_monoxide_angels)
    data_recipe[carbon_seperation].order = e_a

    local co2_filter_carbon = "ske_co2_filter_carbon"
    data_recipe[co2_filter_carbon].subgroup = is_vesta_recipe
    data_recipe[co2_filter_carbon].icons = TWO_I(carbon_dioxide_angels, carbon_monoxide_angels)
    data_recipe[co2_filter_carbon].order = e_b

    local co2_filter_oxygen = "ske_co2_filter_oxygen"
    data_recipe[co2_filter_oxygen].subgroup = is_vesta_recipe
    data_recipe[co2_filter_oxygen].icons = TWO_I(carbon_dioxide_angels, oxygen_angels)
    data_recipe[co2_filter_oxygen].order = e_c

    local nutrients_from_co2 = "nutrients-from-co2"
    data_recipe[nutrients_from_co2].subgroup = is_vesta_recipe
    data_recipe[nutrients_from_co2].icons = TWO_I(carbon_dioxide_angels, nutrients)
    data_recipe[nutrients_from_co2].order = e_d

    local carbon_super_cooling = "ske-carbon-super-cooling"
    data_recipe[carbon_super_cooling].subgroup = is_vesta_recipe
    data_recipe[carbon_super_cooling].icons = THREE_I(nitrogen_angels, carbon_monoxide_angels, carbon_angels)
    data_recipe[carbon_super_cooling].order = f_a

    data_fluid[tritium_mods].localised_description = show_formula and {chemical_formula, "T[font=default-tiny-bold]2[/font]"} or nil
    data_fluid[tritium_mods].subgroup = is_vesta_recipe
    data_fluid[tritium_mods].order = g
    data_recipe[tritium_mods].subgroup = is_vesta_recipe
    data_recipe[tritium_mods].icons = THREE_I(steam, water_thermal_angels, tritium_mods)
    data_recipe[tritium_mods].order = g

    data_recipe[deuterium_mods].subgroup = is_vesta_recipe
    data_recipe[deuterium_mods].icons = THREE_I(steam, water, deuterium_angels)
    data_recipe[deuterium_mods].order = h

    data_fluid[algea_water_vesta].subgroup = is_vesta_recipe
    data_fluid[algea_water_vesta].order = i
    data_recipe[algea_water_vesta].subgroup = is_vesta_recipe
    data_recipe[algea_water_vesta].icons = THREE_I(carbon_dioxide_angels, water, algea_water_vesta)
    data_recipe[algea_water_vesta].order = i

    local coal_mineraliztion = "ske-coal-mineralization"
    data_recipe[coal_mineraliztion].subgroup = is_vesta_recipe
    data_recipe[coal_mineraliztion].icons = FOUR_I(algea_water_vesta, oxygen_angels, carbon_dioxide_angels, coal)
    data_recipe[coal_mineraliztion].order = i_a

    local stone_mineraliztion = "ske-carbon-mineralization"
    data_recipe[stone_mineraliztion].subgroup = is_vesta_recipe
    data_recipe[stone_mineraliztion].icons = FOUR_I(carbon_angels, algea_water_vesta, hydrogen_angels, stone)
    data_recipe[stone_mineraliztion].order = i_b

    local algea_clump_iron = "ske_algea_clump_iron"
    data_item[algea_clump_iron].localised_description = show_formula and {chemical_formula, "Fe"} or nil
    data_item[algea_clump_iron].subgroup = is_vesta_recipe
    data_item[algea_clump_iron].order = j
    data_item[algea_clump_iron].stack_size = 200
    data_item[algea_clump_iron].weight = 5000
    data_recipe[algea_clump_iron].subgroup = is_vesta_recipe
    data_recipe[algea_clump_iron].icons = THREE_I(algea_water_vesta, helium_vesta, algea_clump_iron)
    data_recipe[algea_clump_iron].order = j

    local algea_iron_electrolysis = "ske-algea-iron-electrolysis"
    data_recipe[algea_iron_electrolysis].subgroup = is_vesta_recipe
    data_recipe[algea_iron_electrolysis].icons = THREE_I(algea_clump_iron, carbon_dioxide_angels, iron_ore)
    data_recipe[algea_iron_electrolysis].order = j_a

    local algea_clump_copper = "ske_algea_clump_copper"
    data_item[algea_clump_copper].localised_description = show_formula and {chemical_formula, "Cu"} or nil
    data_item[algea_clump_copper].subgroup = is_vesta_recipe
    data_item[algea_clump_copper].order = k
    data_item[algea_clump_copper].stack_size = 200
    data_item[algea_clump_copper].weight = 5000
    data_recipe[algea_clump_copper].subgroup = is_vesta_recipe
    data_recipe[algea_clump_copper].icons = THREE_I(algea_water_vesta, nitrogen_angels, algea_clump_copper)
    data_recipe[algea_clump_copper].order = k

    local algea_copper_electrolysis = "ske-algea-copper-electrolysis"
    data_recipe[algea_copper_electrolysis].subgroup = is_vesta_recipe
    data_recipe[algea_copper_electrolysis].icons = THREE_I(algea_clump_copper, hydrogen_angels, copper_ore)
    data_recipe[algea_copper_electrolysis].order = k_a

    local algea_clump_stonite = "ske_algea_clump_stonite"
    data_item[algea_clump_stonite].subgroup = is_vesta_recipe
    data_item[algea_clump_stonite].order = l
    data_item[algea_clump_stonite].stack_size = 200
    data_item[algea_clump_stonite].weight = 5000
    data_recipe[algea_clump_stonite].subgroup = is_vesta_recipe
    data_recipe[algea_clump_stonite].icons = THREE_I(algea_water_vesta, carbon_monoxide_angels, algea_clump_stonite)
    data_recipe[algea_clump_stonite].order = l

    local algea_stone_electrolysis = "ske-algea-stone-electrolysis"
    data_recipe[algea_stone_electrolysis].subgroup = is_vesta_recipe
    data_recipe[algea_stone_electrolysis].icons = THREE_I(algea_clump_stonite, carbon_dioxide_angels, stone)
    data_recipe[algea_stone_electrolysis].order = l_a

    data_item[iridium_plate_mods].localised_description = show_formula and {chemical_formula, "Ir"} or nil
    data_item[iridium_plate_mods].subgroup = is_vesta_recipe
    data_item[iridium_plate_mods].order = m
    data_item[iridium_plate_mods].stack_size = 200
    data_item[iridium_plate_mods].weight = 5000
    data_recipe[iridium_plate_mods].subgroup = is_vesta_recipe
    data_recipe[iridium_plate_mods].icons = FOUR_I(algea_water_vesta, tritium_mods, deuterium_angels, iridium_plate_mods)
    data_recipe[iridium_plate_mods].order = m

    local calcized_iron_plate = "calcized-iron-plate"
    data_item[calcized_iron_plate].localised_description = show_formula and {chemical_formula, "Fe"} or nil
    data_item[calcized_iron_plate].subgroup = is_vesta_recipe
    data_item[calcized_iron_plate].order = n
    data_item[calcized_iron_plate].stack_size = 200
    data_item[calcized_iron_plate].weight = 5000
    data_recipe[calcized_iron_plate].subgroup = is_vesta_recipe
    data_recipe[calcized_iron_plate].icons = TWO_I(calcized_iron_plate, iron_plate)
    data_recipe[calcized_iron_plate].order = n

    local calcized_copper_plate = "calcized-copper-plate"
    data_item[calcized_copper_plate].localised_description = show_formula and {chemical_formula, "Cu"} or nil
    data_item[calcized_copper_plate].subgroup = is_vesta_recipe
    data_item[calcized_copper_plate].order = o
    data_item[calcized_copper_plate].stack_size = 200
    data_item[calcized_copper_plate].weight = 5000
    data_recipe[calcized_copper_plate].subgroup = is_vesta_recipe
    data_recipe[calcized_copper_plate].icons = TWO_I(calcized_copper_plate, copper_plate)
    data_recipe[calcized_copper_plate].order = o

    data_fluid[supermagnetic_vesta].subgroup = is_vesta_recipe
    data_fluid[supermagnetic_vesta].order = p
    data_recipe[supermagnetic_vesta].subgroup = is_vesta_recipe
    data_recipe[supermagnetic_vesta].icons = TWO_I(electrolyte, supermagnetic_vesta)
    data_recipe[supermagnetic_vesta].order = p

    data_recipe[lithium_brine].subgroup = is_vesta_recipe
    data_recipe[lithium_brine].icons = TWO_I(water, water_thermal_angels)
    data_recipe[lithium_brine].order = p_a

    local steel_from_iron_algea = "steel-from-iron-algea"
    data_recipe[steel_from_iron_algea].subgroup = is_vesta_recipe
    data_recipe[steel_from_iron_algea].icons = THREE_D_I(algea_clump_iron, supermagnetic_vesta, carbon_dioxide_angels, steel_plate, nil, electrolyte)
    data_recipe[steel_from_iron_algea].order = p_b

    local crude_solution = "ske_crude_solution"
    data_recipe[crude_solution].subgroup = is_vesta_recipe
    data_recipe[crude_solution].icons = FOUR_I(methane_angels, hydrogen_sulfide_angels, carbon_dioxide_angels, naphtha_angels)
    data_recipe[crude_solution].order = p_c

    local rocket_fuel_from_vesta = "ske-rocket-fuel-from-vesta"
    data_recipe[rocket_fuel_from_vesta].subgroup = is_vesta_recipe
    data_recipe[rocket_fuel_from_vesta].icons = FOUR_I(oxygen_angels, water_thermal_angels, hydrogen_sulfide_angels, rocket_fuel)
    data_recipe[rocket_fuel_from_vesta].order = p_d

    local lds_from_vesta = "ske-lds-from-vesta"
    data_recipe[lds_from_vesta].subgroup = is_vesta_recipe
    data_recipe[lds_from_vesta].icons = THREE_D_I(iridium_plate_mods, steel_plate, methane_angels, low_density_structure)
    data_recipe[lds_from_vesta].order = p_e

    local processors_from_vesta = "ske-processors-from-lithium"
    data_recipe[processors_from_vesta].subgroup = is_vesta_recipe
    data_recipe[processors_from_vesta].icons = THREE_D_I(iron_plate, copper_cable, methane_angels, processing_unit)
    data_recipe[processors_from_vesta].order = p_e

    local gas_manipulation_science_pack = "gas-manipulation-science-pack"
    data_tool[gas_manipulation_science_pack].subgroup = is_vesta_recipe
    data_tool[gas_manipulation_science_pack].order = q
    data_recipe[gas_manipulation_science_pack].subgroup = is_vesta_recipe
    data_recipe[gas_manipulation_science_pack].order = q
    data_recipe[gas_manipulation_science_pack].main_product = gas_manipulation_science_pack

    local vesta_foundation = "vesta-foundation"
    data_item[vesta_foundation].subgroup = is_vesta_recipe
    data_item[vesta_foundation].order = r
    data_item[vesta_foundation].stack_size = 200
    data_item[vesta_foundation].weight = 5000
    data_recipe[vesta_foundation].subgroup = is_vesta_recipe
    data_recipe[vesta_foundation].icons = THREE_D_I(iron_plate, carbon_angels, helium_vesta, vesta_foundation)
    data_recipe[vesta_foundation].order = r
    data_tile[vesta_foundation].subgroup = is_vesta_recipe
    data_tile[vesta_foundation].order = r

    local algea_nutrient_clump = "algea_nutrient_clump"
    data_item[algea_nutrient_clump].subgroup = is_vesta_recipe
    data_item[algea_nutrient_clump].order = s
    data_item[algea_nutrient_clump].stack_size = 200
    data_item[algea_nutrient_clump].weight = 5000

    local algea_petrite_clump = "ske_algea_clump_petrite"
    data_item[algea_petrite_clump].subgroup = is_vesta_recipe
    data_item[algea_petrite_clump].order = t
    data_item[algea_petrite_clump].stack_size = 200
    data_item[algea_petrite_clump].weight = 5000

    local fusion_missile = "fusion-missile"
    data_ammo[fusion_missile].subgroup = is_vesta_war
    data_ammo[fusion_missile].order = a
    data_ammo[fusion_missile].stack_size = 200
    data_ammo[fusion_missile].weight = 5000
    data_recipe[fusion_missile].subgroup = is_vesta_war
    data_recipe[fusion_missile].icons = THREE_I(rocket, muon_fusion_catalyst, fusion_missile)
    data_recipe[fusion_missile].order = a
    data_recipe[fusion_missile].ingredients =
    {
        {type = item, name = rocket, amount = 5},
        {type = item, name = muon_fusion_catalyst, amount = 1}
    }
    data_recipe[fusion_missile].results = {{type = item, name = fusion_missile, amount = 5}}
    data_recipe[fusion_missile].main_product = fusion_missile


    local fusion_thruster = "ske_fusion_thruster"
    data_item[fusion_thruster].subgroup = is_vesta_recipe_space
    data_item[fusion_thruster].order = a
    data_recipe[fusion_thruster].subgroup = is_vesta_recipe_space
    data_recipe[fusion_thruster].order = a
    data_recipe[fusion_thruster].main_product = fusion_thruster
    data_thruster[fusion_thruster].subgroup = is_vesta_recipe_space
    data_thruster[fusion_thruster].order = a

    data_fluid[fluoro_fuel].subgroup = is_vesta_recipe_space
    data_fluid[fluoro_fuel].order = b
    data_recipe[fluoro_fuel].subgroup = is_vesta_recipe_space
    data_recipe[fluoro_fuel].icons = CORNER_I(oxygen_angels, nil, fluoroketone_cold, fluoro_fuel, fluoroketone_hot)
    data_recipe[fluoro_fuel].order = b

    data_fluid[plasma_fuel].subgroup = is_vesta_recipe_space
    data_fluid[plasma_fuel].order = c
    data_recipe[plasma_fuel].subgroup = is_vesta_recipe_space
    data_recipe[plasma_fuel].icons = CORNER_I(hydrogen_angels, nil, fusion_plasma, plasma_fuel, fluoroketone_hot)
    data_recipe[plasma_fuel].order = c

    data_technology["s1_algea_extracting"].effects =
    {
        {type = unlock_recipe, recipe = supermagnet},
        {type = unlock_recipe, recipe = algea_iron_electrolysis},
        {type = unlock_recipe, recipe = algea_copper_electrolysis},
        {type = unlock_recipe, recipe = algea_stone_electrolysis}
    }

    data_recipe["ske_methane_petro"] = nil

    data_technology["s2_intermediate_productivity"] = nil
end
