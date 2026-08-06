if mods[corrundum_mods] then
    -- PLATINUM
    data_resource[platinum_ore_mods].localised_description = show_formula and {chemical_formula, "Pt"} or nil
    data_resource[platinum_ore_mods].subgroup = is_corrundum_platinum
    data_resource[platinum_ore_mods].icon = data_item[platinum_ore_angels].icon
    data_resource[platinum_ore_mods].icon_size = data_item[platinum_ore_angels].icon_size
    data_resource[platinum_ore_mods].order = a
    data_resource[platinum_ore_mods].minable.mining_time = 4

    data_recipe[platinum_plate_mods].localised_name = data_item[platinum_plate].localised_name
    data_recipe[platinum_plate_mods].localised_description = show_formula and {chemical_formula, "Pt"} or nil
    data_recipe[platinum_plate_mods].category = sintering_6
    data_recipe[platinum_plate_mods].subgroup = is_corrundum_platinum
    data_recipe[platinum_plate_mods].icons = TWO_I(platinum_powder, platinum_plate)
    data_recipe[platinum_plate_mods].order = c
    data_recipe[platinum_plate_mods].energy_required = 1
    data_recipe[platinum_plate_mods].ingredients = {{type = item, name = platinum_powder, amount = 1}}
    data_recipe[platinum_plate_mods].results = {{type = item, name = platinum_plate, amount = 1}}
    data_recipe[platinum_plate_mods].main_product = platinum_plate
    data_recipe[platinum_plate_mods].surface_conditions = {{property = pressure, min = 6000, max = 6000}}

    -- CHALCOPYRITE
    data_item[chalcopyrite_ore].subgroup = is_chalcopyrite
    data_item[chalcopyrite_ore].order = a
    data_item[chalcopyrite_ore].stack_size = 200
    data_resource[chalcopyrite_ore].factoriopedia_description = ""
    data_resource[chalcopyrite_ore].subgroup = is_chalcopyrite
    data_resource[chalcopyrite_ore].order = a
    data_resource[chalcopyrite_ore].minable.mining_time = 1

    -- SUFUR
    data_resource[sulfur_ore_mods].subgroup = is_corrundum_sulfur
    data_resource[sulfur_ore_mods].icon = data_item[sulfur].icon
    data_resource[sulfur_ore_mods].order = a
    data_resource[sulfur_ore_mods].minable.mining_time = 1

    local catalytic_chemistry = "catalytic-chemistry"
    local sulfur_combustion = "sulfur-combustion"
    data_recipe[sulfur_combustion].category = catalytic_chemistry
    data_recipe[sulfur_combustion].subgroup = is_corrundum_sulfur
    data_recipe[sulfur_combustion].icons = TWO_D_I(sulfur, carbon_dioxide_angels, sulfur_dioxide_angels, carbon_angels)
    data_recipe[sulfur_combustion].order = a_a
    -- S + CO₂ --> SO₂ + C
    data_recipe[sulfur_combustion].ingredients =
    {
        {type = item, name = sulfur, amount = 1},
        {type = fluid, name = carbon_dioxide_angels, amount = 15}
    }
    data_recipe[sulfur_combustion].results =
    {
        {type = fluid, name = sulfur_dioxide_angels, amount = 15},
        {type = item, name = carbon_angels, amount = 1}
    }
    data_recipe[sulfur_combustion].surface_conditions = {{property = pressure, min = 6000, max = 6000}}

    data_recipe[hydrogen_sulfide_mods].subgroup = is_corrundum_sulfur
    data_recipe[hydrogen_sulfide_mods].icons = THREE_R_I(sulfur, hydrogen_sulfide_angels, carbon_angels)
    data_recipe[hydrogen_sulfide_mods].order = a_b
    data_recipe[hydrogen_sulfide_mods].energy_required = 16 -- 2S + 2CH₄ --> 2H₂S + CH₄ + C
    data_recipe[hydrogen_sulfide_mods].ingredients =
    {
        {type = item, name = sulfur, amount = 4},
        {type = fluid, name = methane_angels, amount = 60}
    }
    data_recipe[hydrogen_sulfide_mods].results =
    {
        {type = fluid, name = hydrogen_sulfide_angels, amount = 60},
        {type = item, name = carbon_angels, amount = 2},
        {type = fluid, name = methane_angels, amount = 30}
    }
    data_recipe[hydrogen_sulfide_mods].main_product = hydrogen_sulfide_angels
    data_recipe[hydrogen_sulfide_mods].surface_conditions = {{property = pressure, min = 6000, max = 6000}}

    local sulfur_reduction = "sulfur-reduction"
    data_recipe[sulfur_reduction].category = catalytic_chemistry
    data_recipe[sulfur_reduction].subgroup = is_corrundum_sulfur
    data_recipe[sulfur_reduction].icons = THREE_D_I(hydrogen_sulfide_angels, nil, sulfur_dioxide_angels, sulfur, water_purified_angels, oxygen_angels)
    data_recipe[sulfur_reduction].order = a_c
    data_recipe[sulfur_reduction].energy_required = 16 -- 2H₂S + 2SO₂ --> 2S + 2H₂O + O₂
    data_recipe[sulfur_reduction].ingredients =
    {
        {type = fluid, name = hydrogen_sulfide_angels, amount = 60},
        {type = fluid, name = sulfur_dioxide_angels, amount = 60}
    }
    data_recipe[sulfur_reduction].results =
    {
        {type = item, name = sulfur, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 60},
        {type = fluid, name = oxygen_angels, amount = 30}
    }
    data_recipe[sulfur_reduction].main_product = sulfur
    data_recipe[sulfur_reduction].surface_conditions = {{property = pressure, min = 6000, max = 6000}}

    local sulfurous_oxidation = "sulfurous-oxidation"
    data_recipe[sulfurous_oxidation].subgroup = is_corrundum_sulfur
    data_recipe[sulfurous_oxidation].icons = TWO_D_I(sulfur_dioxide_angels, water_purified_angels, sulfuric_acid_angels, hydrogen_angels)
    data_recipe[sulfurous_oxidation].order = a_d
    data_recipe[sulfurous_oxidation].energy_required = 8 -- SO₂ + 2H₂O --> H₂SO₄ + H₂
    data_recipe[sulfurous_oxidation].ingredients =
    {
        {type = fluid, name = sulfur_dioxide_angels, amount = 60},
        {type = fluid, name = water_purified_angels, amount = 120}
    }
    data_recipe[sulfurous_oxidation].results =
    {
        {type = item, name = sulfuric_acid_angels, amount = 60},
        {type = fluid, name = hydrogen_angels, amount = 60}
    }
    data_recipe[sulfurous_oxidation].main_product = sulfuric_acid_angels
    data_recipe[sulfurous_oxidation].surface_conditions = {{property = pressure, min = 6000, max = 6000}}

    local hydrogen_sulfide_combustion = "hydrogen-sulfide-combustion"
    data_recipe[hydrogen_sulfide_combustion].category = catalytic_chemistry
    data_recipe[hydrogen_sulfide_combustion].subgroup = is_corrundum_sulfur
    data_recipe[hydrogen_sulfide_combustion].icons = TWO_D_I(hydrogen_sulfide_angels, oxygen_angels, sulfur_dioxide_angels, hydrogen_angels)
    data_recipe[hydrogen_sulfide_combustion].order = a_e
    data_recipe[hydrogen_sulfide_combustion].energy_required = 8 -- H₂S + O₂ --> SO₂ + H₂
    data_recipe[hydrogen_sulfide_combustion].ingredients =
    {
        {type = fluid, name = hydrogen_sulfide_angels, amount = 60},
        {type = fluid, name = oxygen_angels, amount = 120}
    }
    data_recipe[hydrogen_sulfide_combustion].results =
    {
        {type = fluid, name = sulfur_dioxide_angels, amount = 60},
        {type = fluid, name = hydrogen_angels, amount = 60}
    }
    data_recipe[hydrogen_sulfide_combustion].main_product = sulfur_dioxide_angels
    data_recipe[hydrogen_sulfide_combustion].surface_conditions = {{property = pressure, min = 6000, max = 6000}}

    data_tool[electrochemical_science_pack].subgroup = is_corrundum_sulfur
    data_tool[electrochemical_science_pack].order = b
    data_recipe[electrochemical_science_pack].subgroup = is_corrundum_sulfur
    data_recipe[electrochemical_science_pack].order = b
    data_recipe[electrochemical_science_pack].energy_required = 16
    data_recipe[electrochemical_science_pack].ingredients =
    {
        {type = item, name = sulfur, amount = 2},
        {type = item, name = platinum_plate, amount = 1},
        {type = fluid, name = sulfuric_acid_angels, amount = 120}
    }

    -- CALCIUM SULFATE
    data_recipe[calcium_sulfate_mods].category = catalytic_chemistry
    data_recipe[calcium_sulfate_mods].subgroup = is_corrundum_calcium
    data_recipe[calcium_sulfate_mods].icons = THREE_D_I(calcite, nil, sulfuric_acid_angels, calcium_sulfate_angels, water_purified_angels, carbon_dioxide_angels)
    data_recipe[calcium_sulfate_mods].order = c
    data_recipe[calcium_sulfate_mods].energy_required = 8 -- CaCO₃ + H₂SO₄ --> CaSO₄ + H₂O + CO₂
    data_recipe[calcium_sulfate_mods].ingredients =
    {
        {type = item, name = calcite, amount = 4},
        {type = fluid, name = sulfuric_acid_angels, amount = 60}
    }
    data_recipe[calcium_sulfate_mods].results =
    {
        {type = item, name = calcium_sulfate_angels, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 60},
        {type = fluid, name = carbon_dioxide_angels, amount = 60}
    }
    data_recipe[calcium_sulfate_mods].main_product = calcium_sulfate_angels

    local calcium_sulfate_fish = "calcium-sulfate-fish"
    data_recipe[calcium_sulfate_fish].category = organic
    data_recipe[calcium_sulfate_fish].subgroup = is_corrundum_calcium
    data_recipe[calcium_sulfate_fish].icons = THREE_D_I(factorian_fish, carbon_angels, calcium_sulfate_angels, nutrients)
    data_recipe[calcium_sulfate_fish].order = c_a
    data_recipe[calcium_sulfate_fish].results[1].amount = 32

    local calcium_sulfate_bioflux = "calcium-sulfate-bioflux"
    data_recipe[calcium_sulfate_bioflux].category = organic
    data_recipe[calcium_sulfate_bioflux].subgroup = is_corrundum_calcium
    data_recipe[calcium_sulfate_bioflux].icons = THREE_D_I(bioflux, carbon_angels, calcium_sulfate_angels, nutrients)
    data_recipe[calcium_sulfate_bioflux].order = c_b
    data_recipe[calcium_sulfate_bioflux].ingredients =
    {
        {type = item, name = bioflux, amount = 4},
        {type = item, name = carbon_angels, amount = 4},
        {type = item, name = calcium_sulfate_angels, amount = 4}
    }
    data_recipe[calcium_sulfate_bioflux].results[1].amount = 64

    local calcium_sulfate_egg = "calcium-sulfate-egg"
    data_recipe[calcium_sulfate_egg].category = organic
    data_recipe[calcium_sulfate_egg].subgroup = is_corrundum_calcium
    data_recipe[calcium_sulfate_egg].icons = THREE_D_I(biter_egg, carbon_angels, calcium_sulfate_angels, nutrients)
    data_recipe[calcium_sulfate_egg].order = c_c
    data_recipe[calcium_sulfate_egg].results[1].amount = 32

    -- RECIPE
    local sulfonated_plastic = "sulfonated-plastic"
    data_recipe[sulfonated_plastic].subgroup = is_corrundum_recipe
    data_recipe[sulfonated_plastic].icons = FOUR_D_I(solid_fuel, sulfuric_acid_angels, sulfur_dioxide_angels, fuel_oil_angels, plastic)
    data_recipe[sulfonated_plastic].order = a_a
    data_recipe[sulfonated_plastic].energy_required = 4
    data_recipe[sulfonated_plastic].ingredients =
    {
        {type = item, name = solid_fuel, amount = 4},
        {type = fluid, name = sulfuric_acid_angels, amount = 60},
        {type = fluid, name = sulfur_dioxide_angels, amount = 120},
        {type = fluid, name = fuel_oil_angels, amount = 30}
    }
    data_recipe[sulfonated_plastic].surface_conditions = {{property = pressure, min = 6000, max = 6000}}

    local petroleum_alkylation = "petroleum-alkylation"
    data_recipe[petroleum_alkylation].subgroup = is_corrundum_recipe
    data_recipe[petroleum_alkylation].icons = TWO_D_I(condensates_angels, hydrogen_angels, fuel_oil_angels, methane_angels)
    data_recipe[petroleum_alkylation].order = a_b
    data_recipe[petroleum_alkylation].energy_required = 8 -- 4C₇H₁₆ + 5H₂ -H₂SO₄-> C₂₀H₄₂ + 8CH₄
    data_recipe[petroleum_alkylation].ingredients =
    {
        {type = fluid, name = condensates_angels, amount = 120},
        {type = fluid, name = hydrogen_angels, amount = 150},
        {type = fluid, name = sulfuric_acid_angels, amount = 120}
    }
    data_recipe[petroleum_alkylation].results =
    {
        {type = fluid, name = fuel_oil_angels, amount = 30},
        {type = fluid, name = methane_angels, amount = 240},
        {type = fluid, name = sulfuric_acid_angels, amount = 60}
    }
    data_recipe[petroleum_alkylation].main_product = fuel_oil_angels
    data_recipe[petroleum_alkylation].surface_conditions = {{property = pressure, min = 6000, max = 6000}}

    local sulfonated_plastic_production_alt = "sulfonated-plastic-production-alt"
    data_recipe[sulfonated_plastic_production_alt].subgroup = is_corrundum_recipe
    data_recipe[sulfonated_plastic_production_alt].icons = FOUR_D_I(solid_fuel, sulfuric_acid_angels, sulfur_dioxide_angels, naphtha_angels, plastic)
    data_recipe[sulfonated_plastic_production_alt].order = a_c
    data_recipe[sulfonated_plastic_production_alt].energy_required = 8
    data_recipe[sulfonated_plastic_production_alt].ingredients =
    {
        {type = item, name = solid_fuel, amount = 2},
        {type = fluid, name = sulfuric_acid_angels, amount = 60},
        {type = fluid, name = sulfur_dioxide_angels, amount = 120},
        {type = fluid, name = naphtha_angels, amount = 15}
    }
    data_recipe[sulfonated_plastic_production_alt].results[1].amount = 4
    data_recipe[sulfonated_plastic_production_alt].surface_conditions = {{property = pressure, min = 6000, max = 6000}}

    local rocket_fuel_catalytic_chemistry = "rocket-fuel-catalytic-chemistry"
    data_recipe[rocket_fuel_catalytic_chemistry].hidden = false
    data_recipe[rocket_fuel_catalytic_chemistry].hidden_in_factoriopedia = false
    data_recipe[rocket_fuel_catalytic_chemistry].subgroup = is_corrundum_recipe
    data_recipe[rocket_fuel_catalytic_chemistry].icons = BUILDING_R_I(rocket_fuel, planet_corrundum)
    data_recipe[rocket_fuel_catalytic_chemistry].order = a_d
    data_recipe[rocket_fuel_catalytic_chemistry].energy_required = 16
    data_recipe[rocket_fuel_catalytic_chemistry].ingredients =
    {
        {type = item, name = solid_fuel, amount = 8},
        {type = fluid, name = fuel_oil_angels, amount = 15}
    }
    data_recipe[rocket_fuel_catalytic_chemistry].surface_conditions = {{property = pressure, min = 6000, max = 6000}}

    local asphalt_c = "asphalt-c"
    data_item[asphalt_c].subgroup = is_corrundum_recipe
    data_item[asphalt_c].order = b
    data_item[asphalt_c].stack_size = 200
    data_recipe[asphalt_c].subgroup = is_corrundum_recipe
    data_recipe[asphalt_c].icons = THREE_I(naphtha_angels, sulfuric_acid_angels, asphalt_c)
    data_recipe[asphalt_c].order = b
    data_recipe[asphalt_c].energy_required = 16
    data_recipe[asphalt_c].ingredients =
    {
        {type = fluid, name = naphtha_angels, amount = 30},
        {type = fluid, name = sulfuric_acid_angels, amount = 60}
    }

    local asphalt_c_alt = "asphalt-c-alt"
    data_recipe[asphalt_c_alt].subgroup = is_corrundum_recipe
    data_recipe[asphalt_c_alt].icons = THREE_I(fuel_oil_angels, sulfuric_acid_angels, asphalt_c)
    data_recipe[asphalt_c_alt].order = b_a
    data_recipe[asphalt_c_alt].energy_required = 8
    data_recipe[asphalt_c_alt].ingredients =
    {
        {type = fluid, name = fuel_oil_angels, amount = 120},
        {type = fluid, name = sulfuric_acid_angels, amount = 60}
    }

    local concrete_production_from_asphalt = "concrete-production-from-asphalt"
    data_recipe[concrete_production_from_asphalt].subgroup = is_corrundum_recipe
    data_recipe[concrete_production_from_asphalt].icons = BUILDING_R_I(concrete, asphalt_c)
    data_recipe[concrete_production_from_asphalt].order = b_b
    data_recipe[concrete_production_from_asphalt].ingredients =
    {
        {type = item, name = asphalt_c, amount = 4},
        {type = item, name = stone, amount = 4},
        {type = fluid, name = fuel_oil_angels, amount = 60}
    }
    data_recipe[concrete_production_from_asphalt].results[1].amount = 8

    local light_oil_alkylation = "light-oil-alkylation"
    data_recipe[light_oil_alkylation].subgroup = is_corrundum_recipe
    data_recipe[light_oil_alkylation].icons = TWO_D_I(condensates_angels, hydrogen_angels, naphtha_angels, methane_angels)
    data_recipe[light_oil_alkylation].order = b_c
    data_recipe[light_oil_alkylation].energy_required = 8 -- 2C₇H₁₆ + H₂ -H₂SO₄-> C₈H₁₈ + 3CH₄
    data_recipe[light_oil_alkylation].ingredients =
    {
        {type = fluid, name = condensates_angels, amount = 60},
        {type = fluid, name = hydrogen_angels, amount = 30},
        {type = fluid, name = sulfuric_acid_angels, amount = 120}
    }
    data_recipe[light_oil_alkylation].results =
    {
        {type = fluid, name = naphtha_angels, amount = 30},
        {type = fluid, name = methane_angels, amount = 90},
        {type = fluid, name = sulfuric_acid_angels, amount = 60}
    }
    data_recipe[light_oil_alkylation].main_product = naphtha_angels
    data_recipe[light_oil_alkylation].surface_conditions = {{property = pressure, min = 6000, max = 6000}}

    local dry_ice = "dry-ice"
    data_item[dry_ice].localised_description = show_formula and {chemical_formula, "CO[font=default-tiny-bold]2[/font]"} or nil
    data_item[dry_ice].subgroup = is_corrundum_recipe
    data_item[dry_ice].order = c
    data_item[dry_ice].stack_size = 200
    data_recipe[dry_ice].subgroup = is_corrundum_recipe
    data_recipe[dry_ice].icons = TWO_I(carbon_dioxide_angels, dry_ice, number_1)
    data_recipe[dry_ice].order = c
    data_recipe[dry_ice].energy_required = 128
    data_recipe[dry_ice].ingredients =
    {
        {type = fluid, name = carbon_dioxide_angels, amount = 480},
        {type = item, name = ice, amount = 32}
    }
    data_recipe[dry_ice].results =
    {
        {type = item, name = dry_ice, amount = 32},
        {type = fluid, name = steam, amount = 480, temperature = 915}
    }

    local dry_ice_alt = "dry-ice-alt"
    data_recipe[dry_ice_alt].subgroup = is_corrundum_recipe
    data_recipe[dry_ice_alt].icons = TWO_I(carbon_dioxide_angels, dry_ice, number_2)
    data_recipe[dry_ice_alt].order = c_a
    data_recipe[dry_ice_alt].energy_required = 8
    data_recipe[dry_ice_alt].ingredients =
    {
        {type = fluid, name = carbon_dioxide_angels, amount = 480},
        {type = fluid, name = fluoroketone_cold, amount = 60}
    }
    data_recipe[dry_ice_alt].results =
    {
        {type = item, name = dry_ice, amount = 32},
        {type = fluid, name = fluoroketone_hot, amount = 30}
    }

    local sulfuric_oxidizer = "sulfuric-oxidizer"
    data_item[sulfuric_oxidizer].subgroup = is_corrundum_recipe
    data_item[sulfuric_oxidizer].order = d
    data_item[sulfuric_oxidizer].stack_size = 200
    data_recipe[sulfuric_oxidizer].subgroup = is_corrundum_recipe
    data_recipe[sulfuric_oxidizer].icons = THREE_I(solid_fuel, sulfuric_acid_angels, sulfuric_oxidizer)
    data_recipe[sulfuric_oxidizer].order = d
    data_recipe[sulfuric_oxidizer].energy_required = 32
    data_recipe[sulfuric_oxidizer].ingredients =
    {
        {type = item, name = solid_fuel, amount = 2},
        {type = fluid, name = sulfuric_acid_angels, amount = 120}
    }

    local explosives_from_sulfuric_oxidizer = "explosives-from-sulfuric-oxidizer"
    data_recipe[explosives_from_sulfuric_oxidizer].hidden = false
    data_recipe[explosives_from_sulfuric_oxidizer].hidden_in_factoriopedia = false
    data_recipe[explosives_from_sulfuric_oxidizer].subgroup = is_corrundum_recipe
    data_recipe[explosives_from_sulfuric_oxidizer].icons = THREE_I(carbon_angels, sulfuric_oxidizer, explosives)
    data_recipe[explosives_from_sulfuric_oxidizer].order = d_a
    data_recipe[explosives_from_sulfuric_oxidizer].ingredients =
    {
        {type = item, name = carbon_angels, amount = 4},
        {type = item, name = sulfuric_oxidizer, amount = 1}
    }
    data_recipe[explosives_from_sulfuric_oxidizer].results[1].amount = 4

    -- BUILDING
    local ice_box = "ice-box"
    data_item[ice_box].subgroup = is_corrundum_building
    data_item[ice_box].order = a
    data_item[ice_box].stack_size = 32
    data_item[ice_box].weight = 31250
    data_recipe[ice_box].subgroup = is_corrundum_building
    data_recipe[ice_box].order = a
    data_recipe[ice_box].ingredients =
    {
        {type = item, name = plastic, amount = 16},
        {type = item, name = wood, amount = 4},
        {type = item, name = dry_ice, amount = 32}
    }
    data_container[ice_box].subgroup = is_corrundum_building
    data_container[ice_box].order = a

    local red_boiler = "red-boiler"
    data_item[red_boiler].subgroup = is_corrundum_building
    data_item[red_boiler].order = b
    data_item[red_boiler].stack_size = 32
    data_item[red_boiler].weight = 31250
    data_recipe[red_boiler].subgroup = is_corrundum_building
    data_recipe[red_boiler].order = b
    data_recipe[red_boiler].energy_required = 8
    data_recipe[red_boiler].ingredients =
    {
        {type = item, name = boiler_1, amount = 1},
        {type = item, name = copper_plate, amount = 8}
    }
    data_boiler[red_boiler].subgroup = is_corrundum_building
    data_boiler[red_boiler].order = b
    data_boiler[red_boiler].energy_source.emissions_per_minute.pollution = 32
    data_boiler[red_boiler].target_temperature = 915
    data_boiler[red_boiler].energy_consumption = 21600 .. kW
    data_boiler[red_boiler].fluid_box.filter = multi_phase_oil_angels
    data_boiler[red_boiler].output_fluid_box.filter = carbon_dioxide_angels

    local red_steam_engine = "red-steam-engine"
    data_item[red_steam_engine].subgroup = is_corrundum_building
    data_item[red_steam_engine].order = c
    data_item[red_steam_engine].stack_size = 32
    data_item[red_steam_engine].weight = 31250
    data_recipe[red_steam_engine].subgroup = is_corrundum_building
    data_recipe[red_steam_engine].order = c
    data_recipe[red_steam_engine].energy_required = 8
    data_recipe[red_steam_engine].ingredients =
    {
        {type = item, name = steam_engine_1, amount = 1},
        {type = item, name = copper_plate, amount = 32}
    }
    data_generator[red_steam_engine].subgroup = is_corrundum_building
    data_generator[red_steam_engine].order = c
    data_generator[red_steam_engine].energy_source.emissions_per_minute.pollution = 16
    data_generator[red_steam_engine].maximum_temperature = 915
    data_generator[red_steam_engine].max_power_output = 480 .. kW
    data_generator[red_steam_engine].effectivity = nil
    data_generator[red_steam_engine].fluid_box.filter = carbon_dioxide_angels

    local catalytic_chemical_plant = "catalytic-chemical-plant"
    data_item[catalytic_chemical_plant].subgroup = is_corrundum_building
    data_item[catalytic_chemical_plant].order = d
    data_item[catalytic_chemical_plant].stack_size = 32
    data_item[catalytic_chemical_plant].weight = 31250
    data_recipe[catalytic_chemical_plant].subgroup = is_corrundum_building
    data_recipe[catalytic_chemical_plant].order = d
    data_recipe[catalytic_chemical_plant].energy_required = 16
    data_recipe[catalytic_chemical_plant].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 2},
        {type = item, name = platinum_cable, amount = 4},
        {type = item, name = chemical_plant_4, amount = 1},
        {type = item, name = platinum_plate, amount = 8}
    }
    data_assembling[catalytic_chemical_plant].subgroup = is_corrundum_building
    data_assembling[catalytic_chemical_plant].order = d
    data_assembling[catalytic_chemical_plant].crafting_speed = 4
    data_assembling[catalytic_chemical_plant].energy_usage = 420 .. kW
    data_assembling[catalytic_chemical_plant].energy_source.drain = 60 .. kW

    local pressure_lab = "pressure-lab"
    data_item[pressure_lab].subgroup = is_corrundum_building
    data_item[pressure_lab].order = e
    data_item[pressure_lab].stack_size = 32
    data_item[pressure_lab].weight = 31250
    data_recipe[pressure_lab].subgroup = is_corrundum_building
    data_recipe[pressure_lab].order = e
    data_recipe[pressure_lab].energy_required = 32
    data_recipe[pressure_lab].ingredients =
    {
        {type = item, name = steam_turbine_4, amount = 1},
        {type = item, name = lab, amount = 1},
        {type = item, name = platinum_cable, amount = 8},
        {type = item, name = chemical_plant_4, amount = 1},
        {type = item, name = platinum_plate, amount = 4}
    }
    data_lab[pressure_lab].subgroup = is_corrundum_building
    data_lab[pressure_lab].order = e
    data_lab[pressure_lab].researching_speed = 4
    data_lab[pressure_lab].module_slots = 4
    data_lab[pressure_lab].energy_usage = 480 .. kW

    local platinum_thruster = "platinum-thruster"
    data_item[platinum_thruster].subgroup = is_corrundum_building
    data_item[platinum_thruster].order = f
    data_item[platinum_thruster].stack_size = 8
    data_item[platinum_thruster].weight = 125000
    data_recipe[platinum_thruster].subgroup = is_corrundum_building
    data_recipe[platinum_thruster].order = f
    data_recipe[platinum_thruster].energy_required = 8
    data_recipe[platinum_thruster].ingredients =
    {
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 4},
        {type = item, name = niobium_iron_bearing, amount = 8},
        {type = item, name = heat_shielding_tile, amount = 16},
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = platinum_plate, amount = 8}
    }

    -- WAR
    local blue_rocket = "blue-rocket"
    data_ammo[blue_rocket].subgroup = is_corrundum_war
    data_ammo[blue_rocket].order = c
    data_ammo[blue_rocket].stack_size = 200
    data_recipe[blue_rocket].subgroup = is_corrundum_war
    data_recipe[blue_rocket].order = c

    local sulfur_poison_capsule = "sulfur-poison-capsule"
    data_capsule[sulfur_poison_capsule].subgroup = is_corrundum_war
    data_capsule[sulfur_poison_capsule].order = d
    data_capsule[sulfur_poison_capsule].stack_size = 200
    data_recipe[sulfur_poison_capsule].subgroup = is_corrundum_war
    data_recipe[sulfur_poison_capsule].order = d
    data_recipe[sulfur_poison_capsule].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 4},
        {type = item, name = steel_plate, amount = 4},
        {type = item, name = sulfur, amount = 8},
        {type = item, name = plastic, amount = 2},
        {type = fluid, name = sulfuric_acid_angels, amount = 60}
    }

    bobmods.lib.recipe.update_recycling_recipe
    ({
        ice_box,
        red_boiler,
        red_steam_engine,
        catalytic_chemical_plant,
        pressure_lab,
        platinum_thruster,
        sulfur_poison_capsule
    })

    -- TECHNOLOGY
    table.insert(data_technology[planet_discovery_corrundum].effects, {type = unlock_recipe, recipe = corrundum_air_separation})
    table.insert(data_technology[planet_discovery_corrundum].effects, {type = unlock_recipe, recipe = corrundum_air_separation_2})
    data_technology[planet_discovery_corrundum].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology["rocket-fuel-catalysis-productivity-infinite"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology["platinum-processing"].effects =
    {
        {type = unlock_recipe, recipe = platinum_powder_corrundum},
        {type = unlock_recipe, recipe = platinum_plate_mods}
    }

    data_technology["sulfate-processing-2"].effects = {}

    data_technology[calcium_sulfate_mods].effects = {{type = unlock_recipe, recipe = calcium_sulfate_mods}}
    data_technology[calcium_sulfate_mods].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology["asphalt-and-concrete"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology[calcium_sulfate_mods.. "-" .. nutrients].unit.ingredients =
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

    data_technology[pressure_lab].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology[sulfonated_plastic].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology[blue_rocket].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology[dry_ice].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology[platinum_thruster].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology[sulfur_poison_capsule].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }
end