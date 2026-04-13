-- [font=default-tiny-bold][/font]

if mods [corrundum_mods] then
    local ice_box = "ice-box"
    data_item[ice_box].subgroup = is_corrundum_building
    data_item[ice_box].order = a
    data_item[ice_box].stack_size = 32
    data_item[ice_box].weight = 31250
    data_recipe[ice_box].subgroup = is_corrundum_building
    data_recipe[ice_box].order = a
    data_container[ice_box].subgroup = is_corrundum_building
    data_container[ice_box].order = a

    local red_boiler = "red-boiler"
    data_item[red_boiler].subgroup = is_corrundum_building
    data_item[red_boiler].order = b
    data_item[red_boiler].stack_size = 32
    data_item[red_boiler].weight = 31250
    data_recipe[red_boiler].subgroup = is_corrundum_building
    data_recipe[red_boiler].order = b
    data_boiler[red_boiler].subgroup = is_corrundum_building
    data_boiler[red_boiler].order = b

    local red_steam_engine = "red-steam-engine"
    data_item[red_steam_engine].subgroup = is_corrundum_building
    data_item[red_steam_engine].order = c
    data_item[red_steam_engine].stack_size = 32
    data_item[red_steam_engine].weight = 31250
    data_recipe[red_steam_engine].subgroup = is_corrundum_building
    data_recipe[red_steam_engine].order = c
    data_generator[red_steam_engine].subgroup = is_corrundum_building
    data_generator[red_steam_engine].order = c

    local catalytic_chemical_plant = "catalytic-chemical-plant"
    data_item[catalytic_chemical_plant].subgroup = is_corrundum_building
    data_item[catalytic_chemical_plant].order = d
    data_item[catalytic_chemical_plant].stack_size = 32
    data_item[catalytic_chemical_plant].weight = 31250
    data_recipe[catalytic_chemical_plant].subgroup = is_corrundum_building
    data_recipe[catalytic_chemical_plant].order = d
    data_assembling[catalytic_chemical_plant].subgroup = is_corrundum_building
    data_assembling[catalytic_chemical_plant].order = d

    local pressure_lab = "pressure-lab"
    data_item[pressure_lab].subgroup = is_corrundum_building
    data_item[pressure_lab].order = e
    data_item[pressure_lab].stack_size = 32
    data_item[pressure_lab].weight = 31250
    data_recipe[pressure_lab].subgroup = is_corrundum_building
    data_recipe[pressure_lab].order = e

    local platinum_thruster = "platinum-thruster"
    data_item[platinum_thruster].subgroup = is_corrundum_building
    data_item[platinum_thruster].order = f
    data_item[platinum_thruster].stack_size = 8
    data_item[platinum_thruster].weight = 125000

    data_item[platinum_ore_mods].localised_description = show_formula and {chemical_formula, "Pt"} or nil
    data_item[platinum_ore_mods].subgroup = is_corrundum_recipe
    data_item[platinum_ore_mods].order = a
    data_item[platinum_ore_mods].stack_size = 200
    data_item[platinum_ore_mods].weight = 5000

    data_item[platinum_plate_mods].localised_description = show_formula and {chemical_formula, "Pt"} or nil
    data_item[platinum_plate_mods].subgroup = is_corrundum_recipe
    data_item[platinum_plate_mods].order = b
    data_item[platinum_plate_mods].stack_size = 200
    data_item[platinum_plate_mods].weight = 5000
    data_recipe[platinum_plate_mods].subgroup = is_corrundum_recipe
    data_recipe[platinum_plate_mods].icons = TWO_I(platinum_ore_mods, platinum_plate_mods)
    data_recipe[platinum_plate_mods].order = b

    local platinum_plate_production_alt = "platinum-plate-production-alt"
    data_recipe[platinum_plate_production_alt].subgroup = is_corrundum_recipe
    data_recipe[platinum_plate_production_alt].icons = TWO_I(platinum_ore_mods, platinum_plate_mods)
    data_recipe[platinum_plate_production_alt].order = b_a

    local pressurized_acid_neutralization = "pressurized-acid-neutralization"
    data_recipe[pressurized_acid_neutralization].subgroup = is_corrundum_recipe
    data_recipe[pressurized_acid_neutralization].icons = THREE_R_I(sulfuric_acid_angels, water, steam)
    data_recipe[pressurized_acid_neutralization].order = c_a

    local pressurized_acid_neutralization_alt = "pressurized-acid-neutralization-alt"
    data_recipe[pressurized_acid_neutralization_alt].subgroup = is_corrundum_recipe
    data_recipe[pressurized_acid_neutralization_alt].icons = TWO_I(sulfuric_acid_angels, steam)
    data_recipe[pressurized_acid_neutralization_alt].order = c_b

    local electrochemical_science_pack = "electrochemical-science-pack"
    data_tool[electrochemical_science_pack].subgroup = is_corrundum_recipe
    data_tool[electrochemical_science_pack].order = d
    data_recipe[electrochemical_science_pack].subgroup = is_corrundum_recipe
    data_recipe[electrochemical_science_pack].order = d

    local hot_water_to_steam ="hot-water-to-steam"
    data_recipe[hot_water_to_steam].subgroup = is_corrundum_recipe
    data_recipe[hot_water_to_steam].icons = THREE_I(solid_fuel, water, steam)
    data_recipe[hot_water_to_steam].order = e

    local dry_ice = "dry-ice"
    data_item[dry_ice].localised_description = show_formula and {chemical_formula, "CO[font=default-tiny-bold]2[/font]"} or nil
    data_item[dry_ice].subgroup = is_corrundum_recipe
    data_item[dry_ice].order = f
    data_item[dry_ice].stack_size = 200
    data_item[dry_ice].weight = 5000
    data_recipe[dry_ice].subgroup = is_corrundum_recipe
    data_recipe[dry_ice].icons = CORNER_I(dry_ice, carbon_dioxide_angels, fluoroketone_cold, nil, fluoroketone_hot)
    data_recipe[dry_ice].order = f

    local dry_ice_alt = "dry-ice-alt"
    data_recipe[dry_ice_alt].subgroup = is_corrundum_recipe
    data_recipe[dry_ice_alt].icons = CORNER_I(dry_ice, carbon_dioxide_angels, water, nil, water)
    data_recipe[dry_ice_alt].order = f_a

    local controlled_petrol_combustion = "controlled-petrol-combustion"
    data_recipe[controlled_petrol_combustion].subgroup = is_corrundum_recipe
    data_recipe[controlled_petrol_combustion].icons = TWO_I(methane_angels, carbon_dioxide_angels)
    data_recipe[controlled_petrol_combustion].order = f_b

    local rocket_fuel_catalytic_chemistry = "rocket-fuel-catalytic-chemistry"
    data_recipe[rocket_fuel_catalytic_chemistry].subgroup = is_corrundum_recipe
    data_recipe[rocket_fuel_catalytic_chemistry].icons = THREE_I(solid_fuel, fuel_oil_angels, rocket_fuel)
    data_recipe[rocket_fuel_catalytic_chemistry].order = f_c

    local carbon_dioxide_to_carbon = "carbon-dioxide-to-carbon"
    data_recipe[carbon_dioxide_to_carbon].subgroup = is_corrundum_recipe
    data_recipe[carbon_dioxide_to_carbon].icons = THREE_D_I(iron_plate, sulfuric_acid_angels, carbon_dioxide_angels, carbon_angels, nil, iron_sulfate_solution_mods)
    data_recipe[carbon_dioxide_to_carbon].order = f_d

    local stone_production = "stone-production"
    data_recipe[stone_production].subgroup = is_corrundum_recipe
    data_recipe[stone_production].icons = THREE_D_I(stone, carbon_angels, calcium_sulfate_angels, stone, nil, sulfur_dioxide_angels)
    data_recipe[stone_production].order = f_e

    local thruster_fuel_oxidizer_to_steam = "thruster-fuel-oxidizer-to-steam"
    data_recipe[thruster_fuel_oxidizer_to_steam].subgroup = is_corrundum_recipe
    data_recipe[thruster_fuel_oxidizer_to_steam].icons = FOUR_I(thruster_fuel, water, thruster_oxidizer, steam)
    data_recipe[thruster_fuel_oxidizer_to_steam].order = f_f

    if mods [maraxsis_mods] then
        local petrol_dehydrogenation_and_combustion = "petrol-dehydrogenation-and-combustion"
        data_recipe[petrol_dehydrogenation_and_combustion].subgroup = is_corrundum_recipe
        data_recipe[petrol_dehydrogenation_and_combustion].icons = CORNER_I(methane_angels, nil, nil, carbon_dioxide_angels, hydrogen_angels)
        data_recipe[petrol_dehydrogenation_and_combustion].order = g

        local petrol_dehydrogenation_and_combustion_maraxsis = "petrol-dehydrogenation-and-combustion-maraxsis"
        data_recipe[petrol_dehydrogenation_and_combustion_maraxsis].subgroup = is_corrundum_recipe
        data_recipe[petrol_dehydrogenation_and_combustion_maraxsis].icons = CORNER_I(methane_angels, nil, oxygen_angels, carbon_dioxide_angels, hydrogen_angels)
        data_recipe[petrol_dehydrogenation_and_combustion_maraxsis].order = g_a
    end

    data_resource[sulfur_ore_mods].subgroup = is_corrundum_sulfur_recipe
    data_resource[sulfur_ore_mods].order = a

    local sulfur_combustion = "sulfur-combustion"
    data_recipe[sulfur_combustion].subgroup = is_corrundum_sulfur_recipe
    data_recipe[sulfur_combustion].icons = TWO_I(sulfur, sulfur_dioxide_angels)
    data_recipe[sulfur_combustion].order = a_a

    data_recipe[hydrogen_sulfide_mods].subgroup = is_corrundum_sulfur_recipe
    data_recipe[hydrogen_sulfide_mods].icons = CORNER_I(methane_angels, nil, sulfur, nil, hydrogen_sulfide_angels)
    data_recipe[hydrogen_sulfide_mods].order = a_b

    local sulfur_reduction = "sulfur-reduction"
    data_recipe[sulfur_reduction].subgroup = is_corrundum_sulfur_recipe
    data_recipe[sulfur_reduction].icons = THREE_P_TWO_I(hydrogen_sulfide_angels, sulfur_dioxide_angels, sulfur, nil, water)
    data_recipe[sulfur_reduction].order = a_c

    local sulfurous_oxidation = "sulfurous-oxidation"
    data_recipe[sulfurous_oxidation].subgroup = is_corrundum_sulfur_recipe
    data_recipe[sulfurous_oxidation].icons = THREE_I(water, sulfur_dioxide_angels, sulfuric_acid_angels)
    data_recipe[sulfurous_oxidation].order = a_d

    local hydrogen_sulfide_combustion = "hydrogen-sulfide-combustion"
    data_recipe[hydrogen_sulfide_combustion].subgroup = is_corrundum_sulfur_recipe
    data_recipe[hydrogen_sulfide_combustion].icons = THREE_R_I(hydrogen_sulfide_angels, sulfur_dioxide_angels, water)
    data_recipe[hydrogen_sulfide_combustion].order = a_e

    data_fluid[sulfuric_acid_dilute_mods].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4(aq)[/font]"} or nil
    data_fluid[sulfuric_acid_dilute_mods].subgroup = is_corrundum_sulfur_recipe
    data_fluid[sulfuric_acid_dilute_mods].order = b

    local sulfuric_acid_dilution = "sulfuric-acid-dilution"
    data_recipe[sulfuric_acid_dilution].subgroup = is_corrundum_sulfur_recipe
    data_recipe[sulfuric_acid_dilution].icons = THREE_I(sulfuric_acid_angels, water, sulfuric_acid_dilute_mods)
    data_recipe[sulfuric_acid_dilution].order = b_a

    local sulfuric_acid_concentration = "sulfuric-acid-concentration"
    data_recipe[sulfuric_acid_concentration].subgroup = is_corrundum_sulfur_recipe
    data_recipe[sulfuric_acid_concentration].icons = THREE_R_I(sulfuric_acid_dilute_mods, sulfuric_acid_angels, steam)
    data_recipe[sulfuric_acid_concentration].order = b_b

    local sulfuric_acid_concentration_alt = "sulfuric-acid-concentration-alt"
    data_recipe[sulfuric_acid_concentration_alt].subgroup = is_corrundum_sulfur_recipe
    data_recipe[sulfuric_acid_concentration_alt].icons = TWO_I(sulfuric_acid_dilute_mods, sulfuric_acid_angels)
    data_recipe[sulfuric_acid_concentration_alt].order = b_c

    local dilute_acid_neutralization = "dilute-acid-neutralization"
    data_recipe[dilute_acid_neutralization].subgroup = is_corrundum_sulfur_recipe
    data_recipe[dilute_acid_neutralization].icons = THREE_I(calcite, sulfuric_acid_dilute_mods, water)
    data_recipe[dilute_acid_neutralization].order = b_d

    data_recipe[calcium_sulfate_mods].subgroup = is_corrundum_sulfur_recipe
    data_recipe[calcium_sulfate_mods].icons = THREE_P_TWO_I(calcite, sulfuric_acid_dilute_mods, calcium_sulfate_angels, nil, water)
    data_recipe[calcium_sulfate_mods].order = c

    local calcium_sulfate_production_alt = "calcium-sulfate-production-alt"
    data_recipe[calcium_sulfate_production_alt].subgroup = is_corrundum_sulfur_recipe
    data_recipe[calcium_sulfate_production_alt].icons = THREE_I(calcite, sulfur_dioxide_angels, calcium_sulfate_angels)
    data_recipe[calcium_sulfate_production_alt].order = c_a

    local calcium_sulfate_recovery = "calcium-sulfate-recovery"
    data_recipe[calcium_sulfate_recovery].subgroup = is_corrundum_sulfur_recipe
    data_recipe[calcium_sulfate_recovery].icons = FOUR_D_I(nutrients, sulfuric_acid_angels, water, fuel_oil_angels, calcium_sulfate_angels)
    data_recipe[calcium_sulfate_recovery].order = c_b

    local petroleum_alkylation = "petroleum-alkylation"
    data_recipe[petroleum_alkylation].subgroup = is_corrundum_sulfur_recipe
    data_recipe[petroleum_alkylation].icons = THREE_I(sulfuric_acid_angels, methane_angels, fuel_oil_angels)
    data_recipe[petroleum_alkylation].order = c_c

    local sulfonated_plastic = "sulfonated-plastic"
    data_recipe[sulfonated_plastic].subgroup = is_corrundum_sulfur_recipe
    data_recipe[sulfonated_plastic].icons = FOUR_D_I(solid_fuel, sulfuric_acid_angels, sulfur_dioxide_angels, fuel_oil_angels, plastic)
    data_recipe[sulfonated_plastic].order = c_d

    local light_oil_alkylation = "light-oil-alkylation"
    data_recipe[light_oil_alkylation].subgroup = is_corrundum_sulfur_recipe
    data_recipe[light_oil_alkylation].icons = THREE_I(sulfuric_acid_angels, fuel_oil_angels, naphtha_angels)
    data_recipe[light_oil_alkylation].order = c_e

    local sulfonated_plastic_production_alt = "sulfonated-plastic-production-alt"
    data_recipe[sulfonated_plastic_production_alt].subgroup = is_corrundum_sulfur_recipe
    data_recipe[sulfonated_plastic_production_alt].icons = FOUR_D_I(solid_fuel, sulfuric_acid_angels, sulfur_dioxide_angels, naphtha_angels, plastic)
    data_recipe[sulfonated_plastic_production_alt].order = c_f

    local chalcopyrite_ore = "chalcopyrite-ore"
    data_item[chalcopyrite_ore].localised_description = show_formula and {chemical_formula, "CuFeS[font=default-tiny-bold]2[/font]"} or nil
    data_item[chalcopyrite_ore].subgroup = is_corrundum_sulfur_recipe
    data_item[chalcopyrite_ore].order = d
    data_item[chalcopyrite_ore].stack_size = 200
    data_item[chalcopyrite_ore].weight = 5000

    data_fluid[mixed_sulfate_solution_mods].localised_description = show_formula and {chemical_formula, "FeCu(SO[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2(aq)[/font]"} or nil
    data_fluid[mixed_sulfate_solution_mods].subgroup = is_corrundum_sulfur_recipe
    data_fluid[mixed_sulfate_solution_mods].order = e

    local chalcopyrite_refining = "chalcopyrite-refining"
    data_recipe[chalcopyrite_refining].subgroup = is_corrundum_sulfur_recipe
    data_recipe[chalcopyrite_refining].icons = THREE_I(chalcopyrite_ore, sulfuric_acid_angels, mixed_sulfate_solution_mods)
    data_recipe[chalcopyrite_refining].order = e_a

    data_fluid[iron_sulfate_solution_mods].localised_description = show_formula and {chemical_formula, "FeSO[font=default-tiny-bold]4(aq)[/font]"} or nil
    data_fluid[iron_sulfate_solution_mods].subgroup = is_corrundum_sulfur_recipe
    data_fluid[iron_sulfate_solution_mods].order = f

    local reactive_displacement = "reactive-displacement"
    data_recipe[reactive_displacement].subgroup = is_corrundum_sulfur_recipe
    data_recipe[reactive_displacement].icons = TWO_D_I(iron_plate, mixed_sulfate_solution_mods, copper_ore, iron_sulfate_solution_mods, number_1)
    data_recipe[reactive_displacement].order = f_a

    local kinetic_reactive_displacement = "kinetic-reactive-displacement"
    data_recipe[kinetic_reactive_displacement].subgroup = is_corrundum_sulfur_recipe
    data_recipe[kinetic_reactive_displacement].icons = TWO_D_I(iron_plate, mixed_sulfate_solution_mods, copper_ore, iron_sulfate_solution_mods, number_2)
    data_recipe[kinetic_reactive_displacement].order = f_b

    local force_reduction_iron = "force-reduction-iron"
    data_recipe[force_reduction_iron].subgroup = is_corrundum_sulfur_recipe
    data_recipe[force_reduction_iron].icons = THREE_P_TWO_I(iron_sulfate_solution_mods, water, iron_ore, nil, sulfuric_acid_dilute_mods)
    data_recipe[force_reduction_iron].order = f_c

    local iron_recrystalization = "iron-recrystalization"
    data_recipe[iron_recrystalization].subgroup = is_corrundum_sulfur_recipe
    data_recipe[iron_recrystalization].icons = THREE_I(iron_plate, sulfuric_acid_angels, iron_sulfate_solution_mods)
    data_recipe[iron_recrystalization].order = f_d

    local iron_recrystalization_alt = "iron-recrystalization-alt"
    data_recipe[iron_recrystalization_alt].subgroup = is_corrundum_sulfur_recipe
    data_recipe[iron_recrystalization_alt].icons = THREE_I(iron_gear_wheel, sulfuric_acid_angels, iron_sulfate_solution_mods)
    data_recipe[iron_recrystalization_alt].order = f_e

    local iron_stick_recrystalization = "iron-stick-recrystalization"
    data_recipe[iron_stick_recrystalization].subgroup = is_corrundum_sulfur_recipe
    data_recipe[iron_stick_recrystalization].icons = THREE_I(iron_rod, sulfuric_acid_angels, iron_sulfate_solution_mods)
    data_recipe[iron_stick_recrystalization].order = f_f

    data_fluid[copper_sulfate_solution_mods].localised_description = show_formula and {chemical_formula, "CuSO[font=default-tiny-bold]4(aq)[/font]"} or nil
    data_fluid[copper_sulfate_solution_mods].subgroup = is_corrundum_sulfur_recipe
    data_fluid[copper_sulfate_solution_mods].order = g

    local force_reduction_copper = "force-reduction-copper"
    data_recipe[force_reduction_copper].subgroup = is_corrundum_sulfur_recipe
    data_recipe[force_reduction_copper].icons = THREE_P_TWO_I(copper_sulfate_solution_mods, water, copper_ore, nil, sulfuric_acid_dilute_mods)
    data_recipe[force_reduction_copper].order = g_a

    local copper_recrystalization = "copper-recrystalization"
    data_recipe[copper_recrystalization].subgroup = is_corrundum_sulfur_recipe
    data_recipe[copper_recrystalization].icons = THREE_I(copper_plate, sulfuric_acid_angels, copper_sulfate_solution_mods)
    data_recipe[copper_recrystalization].order = g_b

    local copper_recrystalization_alt = "copper-recrystalization-alt"
    data_recipe[copper_recrystalization_alt].subgroup = is_corrundum_sulfur_recipe
    data_recipe[copper_recrystalization_alt].icons = THREE_I(copper_cable, sulfuric_acid_angels, copper_sulfate_solution_mods)
    data_recipe[copper_recrystalization_alt].order = g_c

    local super_saturated_displacement = "super-saturated-displacement"
    data_recipe[super_saturated_displacement].subgroup = is_corrundum_sulfur_recipe
    data_recipe[super_saturated_displacement].icons = FOUR_THREE_I(copper_plate, mixed_sulfate_solution_mods, water, sulfuric_acid_angels, copper_ore, iron_sulfate_solution_mods, copper_sulfate_solution_mods)
    data_recipe[super_saturated_displacement].order = h

    local destructive_dilute_acid_neutralization = "destructive-dilute-acid-neutralization"
    data_recipe[destructive_dilute_acid_neutralization].subgroup = is_corrundum_sulfur_recipe
    data_recipe[destructive_dilute_acid_neutralization].icons = RECYCLING_I(deleted_png, sulfuric_acid_dilute_mods)
    data_recipe[destructive_dilute_acid_neutralization].order = h_a

    local asphalt_c = "asphalt-c"
    data_item[asphalt_c].subgroup = is_corrundum_sulfur_recipe
    data_item[asphalt_c].order = i
    data_item[asphalt_c].stack_size = 200
    data_item[asphalt_c].weight = 5000
    data_recipe[asphalt_c].subgroup = is_corrundum_sulfur_recipe
    data_recipe[asphalt_c].icons = THREE_I(naphtha_angels, sulfuric_acid_angels, asphalt_c)
    data_recipe[asphalt_c].order = i

    local asphalt_c_alt = "asphalt-c-alt"
    data_recipe[asphalt_c_alt].subgroup = is_corrundum_sulfur_recipe
    data_recipe[asphalt_c_alt].icons = THREE_I(fuel_oil_angels, sulfuric_acid_angels, asphalt_c)
    data_recipe[asphalt_c_alt].order = i_a

    local concrete_production_from_asphalt = "concrete-production-from-asphalt"
    data_recipe[concrete_production_from_asphalt].subgroup = is_corrundum_sulfur_recipe
    data_recipe[concrete_production_from_asphalt].icons = THREE_D_I(asphalt_c, stone, water, concrete)
    data_recipe[concrete_production_from_asphalt].order = i_b

    local sulfuric_oxidizer = "sulfuric-oxidizer"
    data_item[sulfuric_oxidizer].subgroup = is_corrundum_war
    data_item[sulfuric_oxidizer].order = a
    data_item[sulfuric_oxidizer].stack_size = 200
    data_item[sulfuric_oxidizer].weight = 5000
    data_recipe[sulfuric_oxidizer].subgroup = is_corrundum_war
    data_recipe[sulfuric_oxidizer].icons = THREE_I(solid_fuel, sulfuric_acid_angels, sulfuric_oxidizer)
    data_recipe[sulfuric_oxidizer].order = a

    local explosives_from_sulfuric_oxidizer = "explosives-from-sulfuric-oxidizer"
    data_recipe[explosives_from_sulfuric_oxidizer].subgroup = is_corrundum_war
    data_recipe[explosives_from_sulfuric_oxidizer].icons = THREE_I(carbon_angels, sulfuric_oxidizer, explosives)
    data_recipe[explosives_from_sulfuric_oxidizer].order = b

    local blue_rocket = "blue-rocket"
    data_ammo[blue_rocket].subgroup = is_corrundum_war
    data_ammo[blue_rocket].order = c
    data_ammo[blue_rocket].stack_size = 200
    data_ammo[blue_rocket].weight = 5000
    data_recipe[blue_rocket].subgroup = is_corrundum_war
    data_recipe[blue_rocket].icons = THREE_D_I(rocket, carbon_angels, sulfuric_oxidizer, blue_rocket)
    data_recipe[blue_rocket].order = c

    local sulfur_poison_capsule = "sulfur-poison-capsule"
    data_capsule[sulfur_poison_capsule].subgroup = is_corrundum_war
    data_capsule[sulfur_poison_capsule].order = d
    data_capsule[sulfur_poison_capsule].stack_size = 200
    data_capsule[sulfur_poison_capsule].weight = 5000
    data_recipe[sulfur_poison_capsule].subgroup = is_corrundum_war
    data_recipe[sulfur_poison_capsule].icons = TWO_FIVE_I(electronic_circuit, steel_plate, nil, sulfur, plastic, sulfuric_acid_angels, sulfur_poison_capsule)
    data_recipe[sulfur_poison_capsule].order = d

    data_boiler[red_boiler].fluid_box =
    {
        volume = 200,
        pipe_connections =
        {
            {flow_direction = input_output, direction = defines.direction.west, position = {-1, 0.5}},
            {flow_direction = input_output, direction = defines.direction.east, position = {1, 0.5}}
        },
        production_type = input,
        filter = methane_angels
    }
    data_boiler[red_boiler].output_fluid_box =
    {
        volume = 200,
        pipe_connections =
        {
            {flow_direction = output, direction = defines.direction.north, position = {0, -0.5}}
        },
        production_type = output,
        filter = carbon_dioxide_angels
    }

    data_generator[red_steam_engine].fluid_box =
    {
        volume = 200,
        pipe_connections =
        {
            {flow_direction = input_output, direction = defines.direction.south, position = {0, 2}},
            {flow_direction = input_output, direction = defines.direction.north, position = {0, -2}}
        },
        production_type = input,
        filter = carbon_dioxide_angels
    }
end