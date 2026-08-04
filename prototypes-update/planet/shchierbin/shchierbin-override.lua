-- [font=default-tiny-bold][/font]

if mods[shchierbin_mods] then
    local accumulator_vanad = "accumulator-vanad"
    data_item[accumulator_vanad].subgroup = is_shchierbin_building_energy
    data_item[accumulator_vanad].order = a
    data_item[accumulator_vanad].stack_size = 32
    data_item[accumulator_vanad].weight = 31250
    data_recipe[accumulator_vanad].subgroup = is_shchierbin_building_energy
    data_recipe[accumulator_vanad].order = a
    data_accumulator[accumulator_vanad].subgroup = is_shchierbin_building_energy
    data_accumulator[accumulator_vanad].order = a

    local chemical_furnace = "chemical-furnace"
    data_item[chemical_furnace].subgroup = is_shchierbin_building
    data_item[chemical_furnace].order = a
    data_assembling[chemical_furnace].subgroup = is_shchierbin_building
    data_assembling[chemical_furnace].order = a

    local carbon_ore = "carbon-ore"
    data_resource[carbon_ore].subgroup = is_shchierbin_recipe
    data_resource[carbon_ore].icon = data_item[carbon_angels].icon
    data_resource[carbon_ore].icon_size = data_item[carbon_angels].icon_size
    data_resource[carbon_ore].order = a

    data_recipe[quicklime_mods].subgroup = is_shchierbin_recipe
    data_recipe[quicklime_mods].icons = TWO_I(calcite, lime_angels)
    data_recipe[quicklime_mods].order = b

    local slaked_lime = "slaked-lime"
    data_item[slaked_lime].localised_description = show_formula and {chemical_formula, "Ca(OH)[font=default-tiny-bold]2[/font]"} or nil
    data_item[slaked_lime].subgroup = is_shchierbin_recipe
    data_item[slaked_lime].order = c
    data_item[slaked_lime].stack_size = 200
    data_item[slaked_lime].weight = 5000
    data_recipe[slaked_lime].subgroup = is_shchierbin_recipe
    data_recipe[slaked_lime].icons = THREE_I(lime_angels, water, slaked_lime)
    data_recipe[slaked_lime].order = c

    data_item[calcium_mods].localised_description = show_formula and {chemical_formula, "Ca"} or nil
    data_item[calcium_mods].subgroup = is_shchierbin_recipe
    data_item[calcium_mods].order = d
    data_item[calcium_mods].stack_size = 200
    data_item[calcium_mods].weight = 5000
    data_recipe[calcium_mods].subgroup = is_shchierbin_recipe
    data_recipe[calcium_mods].icons = THREE_R_I(slaked_lime, calcium_mods, water)
    data_recipe[calcium_mods].order = d
    data_recipe[calcium_mods].main_product = calcium_mods

    local natural_gas_processing = "natural-gas-processing"
    data_recipe[natural_gas_processing].subgroup = is_shchierbin_recipe
    data_recipe[natural_gas_processing].icons = THREE_R_I(natural_gas_angels, methane_angels, hydrogen_sulfide_angels)
    data_recipe[natural_gas_processing].order = f_a

    local solid_fuel_from_methane = "solid-fuel-from-methane"
    data_recipe[solid_fuel_from_methane].subgroup = is_shchierbin_recipe
    data_recipe[solid_fuel_from_methane].icons = TWO_I(methane_angels, solid_fuel)
    data_recipe[solid_fuel_from_methane].order = f_b

    data_recipe[salt_mods].subgroup = is_shchierbin_recipe
    data_recipe[salt_mods].icons = THREE_R_I(water_saline_angels, salt_angels, water)
    data_recipe[salt_mods].order = g

    data_recipe[chlorine_mods].subgroup = is_shchierbin_recipe
    data_recipe[chlorine_mods].icons = THREE_R_I(salt_angels, chlorine_angels, sodium_hydroxide_solution_angels)
    data_recipe[chlorine_mods].order = h

    data_recipe[chloromethane_mods].subgroup = is_shchierbin_recipe
    data_recipe[chloromethane_mods].icons = THREE_I(methane_angels, chlorine_angels, chloromethane_angels)
    data_recipe[chloromethane_mods].order = i

    data_recipe[ethylene_mods].subgroup = is_shchierbin_recipe
    data_recipe[ethylene_mods].icons = THREE_P_TWO_I(chloromethane_angels, sodium_hydroxide_solution_angels, ethylene_angels, nil, salt_angels)
    data_recipe[ethylene_mods].order = j

    data_fluid[vinylchloride_mods].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]3[/font]Cl"} or nil
    data_fluid[vinylchloride_mods].subgroup = is_shchierbin_recipe
    data_fluid[vinylchloride_mods].order = k
    data_recipe[vinylchloride_mods].subgroup = is_shchierbin_recipe
    data_recipe[vinylchloride_mods].icons = THREE_I(ethylene_angels, chlorine_angels, vinylchloride_mods)
    data_recipe[vinylchloride_mods].order = k

    local plastic_vinylchloride = "plastic-vinylchloride"
    data_recipe[plastic_vinylchloride].subgroup = is_shchierbin_recipe
    data_recipe[plastic_vinylchloride].icons = TWO_I(vinylchloride_mods, plastic)
    data_recipe[plastic_vinylchloride].order = k_a

    data_recipe[ferric_chloride_mods].subgroup = is_shchierbin_recipe
    data_recipe[ferric_chloride_mods].icons = THREE_I(iron_plate, chlorine_angels, ferric_chloride_solution_angels)
    data_recipe[ferric_chloride_mods].order = l

    local fecl_advanced_circuit = "fecl-advanced-circuit"
    data_recipe[fecl_advanced_circuit].subgroup = is_shchierbin_recipe
    data_recipe[fecl_advanced_circuit].icons = FOUR_D_I(electronic_circuit, copper_cable, plastic, ferric_chloride_solution_angels, advanced_circuit)
    data_recipe[fecl_advanced_circuit].order = l_a

    local water_electrolysis_shchierbin = "water-electrolysis-shchierbin"
    data_recipe[water_electrolysis_shchierbin].subgroup = is_shchierbin_recipe
    data_recipe[water_electrolysis_shchierbin].icons = THREE_R_I(water, hydrogen_angels, oxygen_angels)
    data_recipe[water_electrolysis_shchierbin].order = l_a

    local atmosphere = "atmosphere"
    data_recipe[atmosphere].subgroup = is_shchierbin_recipe
    data_recipe[atmosphere].icon = data_fluid[atmosphere_maraxsis].icon
    data_recipe[atmosphere].order = m_a

    local atmosphere_goj = "atmosphere-goj"
    data_recipe[atmosphere_goj].subgroup = is_shchierbin_recipe
    data_recipe[atmosphere_goj].icons = THREE_R_I(atmosphere_maraxsis, nitrogen_angels, oxygen_angels)
    data_recipe[atmosphere_goj].order = m_a

    local ammonia_syntes = "ammonia-syntes"
    data_recipe[ammonia_syntes].subgroup = is_shchierbin_recipe
    data_recipe[ammonia_syntes].icons = THREE_I(nitrogen_angels, hydrogen_angels, ammonia_angels)
    data_recipe[ammonia_syntes].order = m_b

    local vanadium = "vanadium-ore"
    data_item[vanadium].localised_description = show_formula and {chemical_formula, "V"} or nil
    data_item[vanadium].subgroup = is_shchierbin_recipe_vanadium
    data_item[vanadium].order = a
    data_item[vanadium].stack_size = 200
    data_item[vanadium].weight = 5000
    data_resource[vanadium].subgroup = is_shchierbin_recipe_vanadium
    data_resource[vanadium].order = a

    local vanadium_concetrate = "vanadium-concetrate"
    data_item[vanadium_concetrate].localised_description = show_formula and {chemical_formula, "V"} or nil
    data_item[vanadium_concetrate].subgroup = is_shchierbin_recipe_vanadium
    data_item[vanadium_concetrate].order = b
    data_item[vanadium_concetrate].stack_size = 200
    data_item[vanadium_concetrate].weight = 5000
    data_recipe[vanadium_concetrate].subgroup = is_shchierbin_recipe_vanadium
    data_recipe[vanadium_concetrate].icons = TWO_I(vanadium, vanadium_concetrate)
    data_recipe[vanadium_concetrate].order = b

    local vanadium_oxide = "vanadium-oxide"
    data_item[vanadium_oxide].localised_description = show_formula and {chemical_formula, "V[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]5[/font]"} or nil
    data_item[vanadium_oxide].subgroup = is_shchierbin_recipe_vanadium
    data_item[vanadium_oxide].order = c
    data_item[vanadium_oxide].stack_size = 200
    data_item[vanadium_oxide].weight = 5000
    data_recipe[vanadium_oxide].subgroup = is_shchierbin_recipe_vanadium
    data_recipe[vanadium_oxide].icons = THREE_I(vanadium_concetrate, sulfuric_acid_angels, vanadium_oxide)
    data_recipe[vanadium_oxide].order = c

    local vanadium_dust = "vanadium-dust"
    data_item[vanadium_dust].localised_description = show_formula and {chemical_formula, "V"} or nil
    data_item[vanadium_dust].subgroup = is_shchierbin_recipe_vanadium
    data_item[vanadium_dust].order = d
    data_item[vanadium_dust].stack_size = 200
    data_item[vanadium_dust].weight = 5000
    data_recipe[vanadium_dust].subgroup = is_shchierbin_recipe_vanadium
    data_recipe[vanadium_dust].icons = TWO_D_I(vanadium_oxide, calcium_mods, vanadium_dust, lime_angels)
    data_recipe[vanadium_dust].order = d
    data_recipe[vanadium_dust].main_product = vanadium_dust

    local vanadium_plate = "vanadium-plate"
    data_item[vanadium_plate].localised_description = show_formula and {chemical_formula, "V"} or nil
    data_item[vanadium_plate].subgroup = is_shchierbin_recipe_vanadium
    data_item[vanadium_plate].order = e
    data_item[vanadium_plate].stack_size = 200
    data_item[vanadium_plate].weight = 5000
    data_recipe[vanadium_plate].subgroup = is_shchierbin_recipe_vanadium
    data_recipe[vanadium_plate].icons = TWO_I(vanadium_dust, vanadium_plate)
    data_recipe[vanadium_plate].order = e

    local ferrovanadium = "ferrovanadium"
    data_item[ferrovanadium].localised_description = show_formula and {chemical_formula, "FeV"} or nil
    data_item[ferrovanadium].subgroup = is_shchierbin_recipe_vanadium
    data_item[ferrovanadium].order = f
    data_item[ferrovanadium].stack_size = 200
    data_item[ferrovanadium].weight = 5000
    data_recipe[ferrovanadium].subgroup = is_shchierbin_recipe_vanadium
    data_recipe[ferrovanadium].icons = TWO_I(vanadium_concetrate, ferrovanadium)
    data_recipe[ferrovanadium].order = f

    local vanadium_steel_plate = "vanadium-steel-plate"
    data_item[vanadium_steel_plate].localised_description = show_formula and {chemical_formula, "FeVC"} or nil
    data_item[vanadium_steel_plate].subgroup = is_shchierbin_recipe_vanadium
    data_item[vanadium_steel_plate].order = g
    data_item[vanadium_steel_plate].stack_size = 200
    data_item[vanadium_steel_plate].weight = 5000
    data_recipe[vanadium_steel_plate].subgroup = is_shchierbin_recipe_vanadium
    data_recipe[vanadium_steel_plate].icons = THREE_I(vanadium_concetrate, iron_molten_angels, vanadium_steel_plate)
    data_recipe[vanadium_steel_plate].order = g

    local vanadium_science_pack = "vanadium-science-pack"
    data_tool[vanadium_science_pack].subgroup = is_shchierbin_recipe_vanadium
    data_tool[vanadium_science_pack].order = h
    data_recipe[vanadium_science_pack].subgroup = is_shchierbin_recipe_vanadium
    data_recipe[vanadium_science_pack].order = h

    local vanadium_lithium_battery = "vanadium-lithium-battery"
    data_item[vanadium_lithium_battery].subgroup = is_shchierbin_recipe_vanadium
    data_item[vanadium_lithium_battery].order = i
    data_item[vanadium_lithium_battery].stack_size = 200
    data_item[vanadium_lithium_battery].weight = 5000
    data_recipe[vanadium_lithium_battery].subgroup = is_shchierbin_recipe_vanadium
    data_recipe[vanadium_lithium_battery].icons = FOUR_D_I(vanadium_plate, lithium_plate_bob, ferric_chloride_solution_angels, electrolyte, vanadium_lithium_battery)
    data_recipe[vanadium_lithium_battery].order = i

    local vanadium_electro_engine_unit = "vanadium-electro-engine-unit"
    data_item[vanadium_electro_engine_unit].subgroup = is_shchierbin_recipe_vanadium
    data_item[vanadium_electro_engine_unit].order = j
    data_item[vanadium_electro_engine_unit].stack_size = 200
    data_item[vanadium_electro_engine_unit].weight = 5000
    data_recipe[vanadium_electro_engine_unit].subgroup = is_shchierbin_recipe_vanadium
    data_recipe[vanadium_electro_engine_unit].icons = TWO_FIVE_I(vanadium_steel_plate, iron_gear_wheel, nil, electric_engine_unit, copper_cable, carbon_angels, vanadium_electro_engine_unit)
    data_recipe[vanadium_electro_engine_unit].order = j
    data_recipe[vanadium_electro_engine_unit].ingredients =
    {
        {type = item, name = vanadium_steel_plate, amount = 2},
        {type = item, name = iron_gear_wheel, amount = 1},
        {type = item, name = electric_engine_unit, amount = 1},
        {type = item, name = copper_cable, amount = 4},
        {type = item, name = carbon_angels, amount = 1}
    }

    local artillery_shell_vanad = "artillery-shell-vanad"
    data_recipe[artillery_shell_vanad].subgroup = is_shchierbin_recipe_vanadium
    data_recipe[artillery_shell_vanad].icons = FOUR_D_I(explosive_cannon_shell, vanadium_steel_plate, explosives, calcite, artillery_shell)
    data_recipe[artillery_shell_vanad].order = k
    data_recipe[artillery_shell_vanad].ingredients =
    {
        {type = item, name = explosive_cannon_shell, amount = 3},
        {type = item, name = vanadium_steel_plate, amount = 4},
        {type = item, name = explosives, amount = 8},
        {type = item, name = calcite, amount = 1}
    }

    local recipe_sulfur = "shchierbin-recipe-sulfur"
    local sulfur_dioxide_from_hydrogen_sulfide = "sulfur-dioxide-from-hydrogen-sulfide"
    data_recipe[sulfur_dioxide_from_hydrogen_sulfide].subgroup = is_shchierbin_recipe_sulfur
    data_recipe[sulfur_dioxide_from_hydrogen_sulfide].icons = THREE_R_I(hydrogen_sulfide_angels, sulfur_dioxide_angels, steam)
    data_recipe[sulfur_dioxide_from_hydrogen_sulfide].order = a

    local sulfur_dioxide_from_sulfur = "sulfur-dioxide-from-sulfur"
    data_recipe[sulfur_dioxide_from_sulfur].subgroup = is_shchierbin_recipe_sulfur
    data_recipe[sulfur_dioxide_from_sulfur].icons = TWO_I(sulfur, sulfur_dioxide_angels)
    data_recipe[sulfur_dioxide_from_sulfur].order = b

    local sulfur_from_sulfuric_gases = "sulfur-from-sulfuric-gases"
    data_recipe[sulfur_from_sulfuric_gases].subgroup = is_shchierbin_recipe_sulfur
    data_recipe[sulfur_from_sulfuric_gases].icons = THREE_P_TWO_I(hydrogen_sulfide_angels, sulfur_dioxide_angels, sulfur, nil, steam)
    data_recipe[sulfur_from_sulfuric_gases].order = c

    local vanadium_oxide_catalyst = "vanadium-oxide-catalyst"
    data_item[vanadium_oxide_catalyst].localised_description = show_formula and {chemical_formula, "V[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]5[/font]"} or nil
    data_item[vanadium_oxide_catalyst].subgroup = is_shchierbin_recipe_sulfur
    data_item[vanadium_oxide_catalyst].order = d
    data_item[vanadium_oxide_catalyst].stack_size = 200
    data_item[vanadium_oxide_catalyst].weight = 5000
    data_recipe[vanadium_oxide_catalyst].subgroup = is_shchierbin_recipe_sulfur
    data_recipe[vanadium_oxide_catalyst].icons = THREE_D_I(vanadium_oxide, plastic, sodium_hydroxide_solution_angels, vanadium_oxide_catalyst)
    data_recipe[vanadium_oxide_catalyst].order = d

    local sulfuric_acid_vanadium = "sulfuric-acid-vanadium"
    data_recipe[sulfuric_acid_vanadium].subgroup = is_shchierbin_recipe_sulfur
    data_recipe[sulfuric_acid_vanadium].icons = THREE_D_I(vanadium_oxide_catalyst, steam, sulfur_dioxide_angels, vanadium_oxide_catalyst, nil, sulfuric_acid_angels)
    data_recipe[sulfuric_acid_vanadium].order = e

    local gas_ballon = "gas-ballon"
    data_item[gas_ballon].subgroup = is_shchierbin_gas_ballon
    data_item[gas_ballon].order = a
    data_item[gas_ballon].stack_size = 200
    data_item[gas_ballon].weight = 5000
    data_recipe[gas_ballon].subgroup = is_shchierbin_gas_ballon
    data_recipe[gas_ballon].icons = THREE_I(iron_gear_wheel, vanadium_steel_plate, gas_ballon)
    data_recipe[gas_ballon].order = a

    local gas_ballon_N = "gas-ballon-N"
    data_item[gas_ballon_N].subgroup = is_shchierbin_gas_ballon
    data_item[gas_ballon_N].order = b
    data_item[gas_ballon_N].stack_size = 200
    data_item[gas_ballon_N].weight = 5000
    data_recipe[gas_ballon_N].subgroup = is_shchierbin_gas_ballon
    data_recipe[gas_ballon_N].icons = THREE_I(gas_ballon, nitrogen_angels, gas_ballon_N)
    data_recipe[gas_ballon_N].order = b

    local un_gas_ballon_N = "un-gas-ballon-N"
    data_recipe[un_gas_ballon_N].subgroup = is_shchierbin_gas_ballon
    data_recipe[un_gas_ballon_N].icons = THREE_R_I(gas_ballon_N, gas_ballon, nitrogen_angels)
    data_recipe[un_gas_ballon_N].order = b_a

    local gas_ballon_H = "gas-ballon-H"
    data_item[gas_ballon_H].subgroup = is_shchierbin_gas_ballon
    data_item[gas_ballon_H].order = c
    data_item[gas_ballon_H].stack_size = 200
    data_item[gas_ballon_H].weight = 5000
    data_recipe[gas_ballon_H].subgroup = is_shchierbin_gas_ballon
    data_recipe[gas_ballon_H].icons = THREE_I(gas_ballon, hydrogen_angels, gas_ballon_H)
    data_recipe[gas_ballon_H].order = c

    local un_gas_ballon_H = "un-gas-ballon-H"
    data_recipe[un_gas_ballon_H].subgroup = is_shchierbin_gas_ballon
    data_recipe[un_gas_ballon_H].icons = THREE_R_I(gas_ballon_H, gas_ballon, hydrogen_angels)
    data_recipe[un_gas_ballon_H].order = c_a

    local gas_ballon_O = "gas-ballon-O"
    data_item[gas_ballon_O].subgroup = is_shchierbin_gas_ballon
    data_item[gas_ballon_O].order = d
    data_item[gas_ballon_O].stack_size = 200
    data_item[gas_ballon_O].weight = 5000
    data_recipe[gas_ballon_O].subgroup = is_shchierbin_gas_ballon
    data_recipe[gas_ballon_O].icons = THREE_I(gas_ballon, oxygen_angels, gas_ballon_O)
    data_recipe[gas_ballon_O].order = d

    local un_gas_ballon_O = "un-gas-ballon-O"
    data_recipe[un_gas_ballon_O].subgroup = is_shchierbin_gas_ballon
    data_recipe[un_gas_ballon_O].icons = THREE_R_I(gas_ballon_O, gas_ballon, oxygen_angels)
    data_recipe[un_gas_ballon_O].order = d_a

    local gas_ballon_CO2 = "gas-ballon-CO2"
    data_item[gas_ballon_CO2].subgroup = is_shchierbin_gas_ballon
    data_item[gas_ballon_CO2].order = e
    data_item[gas_ballon_CO2].stack_size = 200
    data_item[gas_ballon_CO2].weight = 5000
    data_recipe[gas_ballon_CO2].subgroup = is_shchierbin_gas_ballon
    data_recipe[gas_ballon_CO2].icons = THREE_I(gas_ballon, carbon_dioxide_angels, gas_ballon_CO2)
    data_recipe[gas_ballon_CO2].order = e

    local un_gas_ballon_CO2 = "un-gas-ballon-CO2"
    data_recipe[un_gas_ballon_CO2].subgroup = is_shchierbin_gas_ballon
    data_recipe[un_gas_ballon_CO2].icons = THREE_R_I(gas_ballon_CO2, gas_ballon, carbon_dioxide_angels)
    data_recipe[un_gas_ballon_CO2].order = e_a

    local gas_ballon_Cl = "gas-ballon-Cl"
    data_item[gas_ballon_Cl].subgroup = is_shchierbin_gas_ballon
    data_item[gas_ballon_Cl].order = f
    data_item[gas_ballon_Cl].stack_size = 200
    data_item[gas_ballon_Cl].weight = 5000
    data_recipe[gas_ballon_Cl].subgroup = is_shchierbin_gas_ballon
    data_recipe[gas_ballon_Cl].icons = THREE_I(gas_ballon, chlorine_angels, gas_ballon_Cl)
    data_recipe[gas_ballon_Cl].order = f

    local un_gas_ballon_Cl = "un-gas-ballon-Cl"
    data_recipe[un_gas_ballon_Cl].subgroup = is_shchierbin_gas_ballon
    data_recipe[un_gas_ballon_Cl].icons = THREE_R_I(gas_ballon_Cl, gas_ballon, chlorine_angels)
    data_recipe[un_gas_ballon_Cl].order = f_a

    local gas_ballon_NH3 = "gas-ballon-NH3"
    data_item[gas_ballon_NH3].subgroup = is_shchierbin_gas_ballon
    data_item[gas_ballon_NH3].order = g
    data_item[gas_ballon_NH3].stack_size = 200
    data_item[gas_ballon_NH3].weight = 5000
    data_recipe[gas_ballon_NH3].subgroup = is_shchierbin_gas_ballon
    data_recipe[gas_ballon_NH3].icons = THREE_I(gas_ballon, ammonia_angels, gas_ballon_NH3)
    data_recipe[gas_ballon_NH3].order = g

    local un_gas_ballon_NH3 = "un-gas-ballon-NH3"
    data_recipe[un_gas_ballon_NH3].subgroup = is_shchierbin_gas_ballon
    data_recipe[un_gas_ballon_NH3].icons = THREE_R_I(gas_ballon_NH3, gas_ballon, ammonia_angels)
    data_recipe[un_gas_ballon_NH3].order = g_a

    local gas_ballon_H2S = "gas-ballon-H2S"
    data_item[gas_ballon_H2S].subgroup = is_shchierbin_gas_ballon
    data_item[gas_ballon_H2S].order = h
    data_item[gas_ballon_H2S].stack_size = 200
    data_item[gas_ballon_H2S].weight = 5000
    data_recipe[gas_ballon_H2S].subgroup = is_shchierbin_gas_ballon
    data_recipe[gas_ballon_H2S].icons = THREE_I(gas_ballon, hydrogen_sulfide_angels, gas_ballon_H2S)
    data_recipe[gas_ballon_H2S].order = h

    local un_gas_ballon_H2S = "un-gas-ballon-H2S"
    data_recipe[un_gas_ballon_H2S].subgroup = is_shchierbin_gas_ballon
    data_recipe[un_gas_ballon_H2S].icons = THREE_R_I(gas_ballon_H2S, gas_ballon, hydrogen_sulfide_angels)
    data_recipe[un_gas_ballon_H2S].order = h_a

    local gas_ballon_SO2 = "gas-ballon-SO2"
    data_item[gas_ballon_SO2].subgroup = is_shchierbin_gas_ballon
    data_item[gas_ballon_SO2].order = i
    data_item[gas_ballon_SO2].stack_size = 200
    data_item[gas_ballon_SO2].weight = 5000
    data_recipe[gas_ballon_SO2].subgroup = is_shchierbin_gas_ballon
    data_recipe[gas_ballon_SO2].icons = THREE_I(gas_ballon, sulfur_dioxide_angels, gas_ballon_SO2)
    data_recipe[gas_ballon_SO2].order = i

    local un_gas_ballon_SO2 = "un-gas-ballon-SO2"
    data_recipe[un_gas_ballon_SO2].subgroup = is_shchierbin_gas_ballon
    data_recipe[un_gas_ballon_SO2].icons = THREE_R_I(gas_ballon_SO2, gas_ballon, sulfur_dioxide_angels)
    data_recipe[un_gas_ballon_SO2].order = i_a

    local gas_ballon_C2H4 = "gas-ballon-C2H4"
    data_item[gas_ballon_C2H4].subgroup = is_shchierbin_gas_ballon
    data_item[gas_ballon_C2H4].order = j
    data_item[gas_ballon_C2H4].stack_size = 200
    data_item[gas_ballon_C2H4].weight = 5000
    data_recipe[gas_ballon_C2H4].subgroup = is_shchierbin_gas_ballon
    data_recipe[gas_ballon_C2H4].icons = THREE_I(gas_ballon, ethylene_angels, gas_ballon_C2H4)
    data_recipe[gas_ballon_C2H4].order = j

    local un_gas_ballon_C2H4 = "un-gas-ballon-C2H4"
    data_recipe[un_gas_ballon_C2H4].subgroup = is_shchierbin_gas_ballon
    data_recipe[un_gas_ballon_C2H4].icons = THREE_R_I(gas_ballon_C2H4, gas_ballon, ethylene_angels)
    data_recipe[un_gas_ballon_C2H4].order = j_a

    local crusher_vanad = "crusher-vanad"
    data_item[crusher_vanad].subgroup = is_shchierbin_recipe_space
    data_item[crusher_vanad].order = a
    data_item[crusher_vanad].stack_size = 32
    data_item[crusher_vanad].weight = 31250
    data_recipe[crusher_vanad].subgroup = is_shchierbin_recipe_space
    data_recipe[crusher_vanad].order = a
    data_assembling[crusher_vanad].subgroup = is_shchierbin_recipe_space
    data_assembling[crusher_vanad].order = a

    local metallic_asteroid_crushing_2 = "metallic-asteroid-crushing-2"
    data_recipe[metallic_asteroid_crushing_2].subgroup = is_shchierbin_recipe_space
    data_recipe[metallic_asteroid_crushing_2].icons = TWO_I(metallic_asteroid_chunk, copper_ore)
    data_recipe[metallic_asteroid_crushing_2].order = a_a

    local carbonic_asteroid_crushing_2 = "carbonic-asteroid-crushing-2"
    data_recipe[carbonic_asteroid_crushing_2].subgroup = is_shchierbin_recipe_space
    data_recipe[carbonic_asteroid_crushing_2].icons = TWO_I(carbonic_asteroid_chunk, sulfur)
    data_recipe[carbonic_asteroid_crushing_2].order = a_b

    local oxide_asteroid_crushing_2 = "oxide-asteroid-crushing-2"
    data_recipe[oxide_asteroid_crushing_2].subgroup = is_shchierbin_recipe_space
    data_recipe[oxide_asteroid_crushing_2].icons = TWO_I(oxide_asteroid_chunk, calcite)
    data_recipe[oxide_asteroid_crushing_2].order = a_c

    data_technology[natural_gas_processing].icon = "__TIMSABA__/graphics/icons/shchierbin/natural-gas-technology.png"
    data_technology[natural_gas_processing].icon_size = 256

    data_technology["chlorine-processing"].icon = "__TIMSABA__/graphics/icons/shchierbin/chlorine-technology.png"

    data_technology["chlorine-soed"].icon = "__TIMSABA__/graphics/icons/shchierbin/chlororganig-bildung.png"

    data_technology["water-electrolysis"].icons =
    {
		{
			icon = data_fluid[water].icon,
			icon_size = data_fluid[water].icon_size,
            shift = {0,0},
			scale = 0.8,
			draw_background = true
		},
		{
			icon = data_fluid[oxygen_angels].icon,
			icon_size = data_fluid[oxygen_angels].icon_size,
            shift = {15,-11},
			scale = 0.45,
			draw_background = true
		},
		{
			icon = data_fluid[hydrogen_angels].icon,
			icon_size = data_fluid[hydrogen_angels].icon_size,
            shift = {-15,-11},
			scale = 0.55,
			draw_background = true
		},
	}

    data_technology[ferric_chloride_mods].icon = "__TIMSABA__/graphics/icons/shchierbin/ferric-chloride-technology.png"

    data_technology["atmosphere-processing"].icon = "__TIMSABA__/graphics/icons/shchierbin/atmosphere-processing-technology.png"
    data_technology["atmosphere-processing"].icon_size = 256

    data_technology[ammonia_syntes].icons =
    {
		{
			icon = NHH,
			icon_size = 64,
            shift = {0,12},
			scale = 0.7,
			draw_background = true
		},
		{
			icon = data_fluid[nitrogen_angels].icon,
			icon_size = data_fluid[nitrogen_angels].icon_size,
            shift = {14,-16},
			scale = 0.45,
			draw_background = true
		},
		{
			icon = data_fluid[hydrogen_angels].icon,
			icon_size = data_fluid[hydrogen_angels].icon_size,
            shift = {-14,-16},
			scale = 0.55,
			draw_background = true
		},
	}

    local natural_gas_geyser = "natural-gas-geyser"
    data_resource[natural_gas_geyser].icon = "__TIMSABA__/graphics/icons/shchierbin/natural-gas-geyser.png"
    data_resource[natural_gas_geyser].stages.layers[1].filename = "__TIMSABA__/graphics/icons/shchierbin/natural-gas-geyser-entity.png"
end
