if mods[secretas_frozeta_mods] then
    -- RECIPE
    local spaceship_scrap = "spaceship-scrap"
    data_item[spaceship_scrap].subgroup = is_frozeta_recipe
    data_item[spaceship_scrap].order = a
    data_item[spaceship_scrap].stack_size = 200
    data_resource[spaceship_scrap].subgroup = is_frozeta_recipe
    data_resource[spaceship_scrap].order = a

    local spaceship_scrap_recycling = "spaceship-scrap-recycling"
    data_recipe[spaceship_scrap_recycling].subgroup = is_frozeta_recipe
    data_recipe[spaceship_scrap_recycling].order = a_a
    data_recipe[spaceship_scrap_recycling].results =
    {
        {type = item, name = solid_fuel, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
        {type = item, name = enriched_fuel_bob, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = electric_engine_unit, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
        {type = item, name = supercapacitor, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = carbon_fiber, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = solar_panel_4, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = space_platform_foundation, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = boiler_6, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = flying_robot_frame_4, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = steam_turbine_4, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = laser_turret_5, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = gun_turret_5, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = molybdenum_rhenium_pipe, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = storage_tank_4_alt, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = rocket, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = T5_inserter, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = pump_4, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = medium_electric_pole_4, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = small_lamp, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = combinator_arithmetic, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = combinator_constant, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = display_panel, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = heat_pipe_4, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = scrap, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false}
    }

    data_recipe[gold_plate_mods].localised_name = data_item[gold_plate_bob].localised_name
    data_recipe[gold_plate_mods].category = sintering_6
    data_recipe[gold_plate_mods].subgroup = is_frozeta_recipe
    data_recipe[gold_plate_mods].icons = TWO_I(gold_powder, gold_plate_bob)
    data_recipe[gold_plate_mods].order = c
    data_recipe[gold_plate_mods].energy_required = 1
    data_recipe[gold_plate_mods].ingredients = {{type = item, name = gold_powder, amount = 1}}
    data_recipe[gold_plate_mods].results = {{type = item, name = gold_plate_bob, amount = 1}}
    data_recipe[gold_plate_mods].main_product = gold_plate_bob
    data_recipe[gold_plate_mods].surface_conditions = {{property = pressure, min = 200, max = 280}}

    local solid_fuel_liquefaction = "solid-fuel-liquefaction"
    data_recipe[solid_fuel_liquefaction].subgroup = is_frozeta_recipe
    data_recipe[solid_fuel_liquefaction].icons = STONKS_I(stonks_png, naphtha_angels)
    data_recipe[solid_fuel_liquefaction].order = d_a
    data_recipe[solid_fuel_liquefaction].energy_required = 4 -- CnHn + C₈H₁₈ + 4H₂O --> 2C₈H₁₈ + 2O₂
    data_recipe[solid_fuel_liquefaction].ingredients =
    {
        {type = item, name = solid_fuel, amount = 4},
        {type = fluid, name = naphtha_angels, amount = 60},
        {type = fluid, name = steam, amount = 240}
    }
    data_recipe[solid_fuel_liquefaction].results =
    {
        {type = fluid, name = naphtha_angels, amount = 120},
        {type = fluid, name = oxygen_angels, amount = 120}
    }
    data_recipe[solid_fuel_liquefaction].surface_conditions = {{property = pressure, min = 200, max = 280}}

    data_item[golden_biter_egg].subgroup = is_frozeta_recipe
    data_item[golden_biter_egg].order = e
    data_item[golden_biter_egg].stack_size = 200
    data_item[golden_biter_egg].fuel_category = base_fuel
    data_item[golden_biter_egg].fuel_value = 14400 .. kJ

    data_tool[golden_science_pack].subgroup = is_frozeta_recipe
    data_tool[golden_science_pack].order = f
    data_recipe[golden_science_pack].subgroup = is_frozeta_recipe
    data_recipe[golden_science_pack].order = f
    data_recipe[golden_science_pack].energy_required = 16
    data_recipe[golden_science_pack].ingredients =
    {
        {type = item, name = combinator_arithmetic, amount = 16},
        {type = item, name = steam_turbine_4, amount = 2},
        {type = item, name = gold_plate_bob, amount = 16},
        {type = item, name = solid_fuel, amount = 8},
        {type = fluid, name = steam, amount = 240}
    }
    data_recipe[golden_science_pack].results = {{type = item, name = golden_science_pack, amount = 8}}

    if mods[bobmodules] then
        table.insert(data_recipe[speed_module_7].ingredients, {type = item, name = golden_biter_egg, amount = 16})
        table.insert(data_recipe[efficiency_module_7].ingredients, {type = item, name = golden_biter_egg, amount = 16})
        table.insert(data_recipe[productivity_module_7].ingredients, {type = item, name = golden_biter_egg, amount = 16})
        table.insert(data_recipe[pollution_clean_module_7].ingredients, {type = item, name = golden_biter_egg, amount = 16})
        table.insert(data_recipe[pollution_create_module_7].ingredients, {type = item, name = golden_biter_egg, amount = 16})
        table.insert(data_recipe[quality_module_7].ingredients, {type = item, name = golden_biter_egg, amount = 16})

        bobmods.lib.recipe.update_recycling_recipe
        ({
            speed_module_7,
            efficiency_module_7,
            productivity_module_7,
            pollution_clean_module_7,
            pollution_create_module_7,
            quality_module_7
        })
    end

    -- BUILDING
    local steam_recycler = "steam-recycler"
    data_item[steam_recycler].subgroup = is_frozeta_building
    data_item[steam_recycler].order = a
    data_item[steam_recycler].stack_size = 32
    data_item[steam_recycler].weight = 31250
    data_recipe[steam_recycler].subgroup = is_frozeta_building
    data_recipe[steam_recycler].order = a
    data_recipe[steam_recycler].energy_required = 4
    data_recipe[steam_recycler].ingredients =
    {
        {type = item, name = molybdenum_gear_wheel, amount = 16},
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = molybdenum_plate, amount = 8},
        {type = item, name = molybdenum_rhenium_plate, amount = 8},
        {type = item, name = reinforced_concrete, amount = 8}
    }
    data_furnace[steam_recycler].subgroup = is_frozeta_building
    data_furnace[steam_recycler].order = a
    data_furnace[steam_recycler].crafting_speed = 1
    data_furnace[steam_recycler].energy_usage = 450 .. kW
    data_furnace[steam_recycler].result_inventory_size = 80

    bobmods.lib.recipe.update_recycling_recipe({steam_recycler})

    -- TECHNOLOGY
    planet_discovery_secretas = "planet-discovery-secretas"
    data_technology[planet_discovery_secretas].prerequisites = {tech_advanced_asteroid_processing}
    table.insert(data_technology[planet_discovery_secretas].effects, {type = unlock_recipe, recipe = auric_asteroid_crushing})
    table.insert(data_technology[planet_discovery_secretas].effects, {type = unlock_recipe, recipe = ammonia_from_frozeta_air})
    data_technology[planet_discovery_secretas].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    table.insert(data_technology[steam_recycler].prerequisites, "captivity")
    data_technology[steam_recycler].effects =
    {
        {type = unlock_recipe, recipe = steam_recycler},
        {type = unlock_recipe, recipe = spaceship_scrap_recycling},
        {type = unlock_recipe, recipe = gold_powder_frozeta},
        {type = unlock_recipe, recipe = gold_plate_mods},
        {type = unlock_recipe, recipe = solid_fuel_liquefaction},
        {type = unlock_recipe, recipe = golden_biter_egg}
    }

    data_technology[golden_science_pack].prerequisites = {steam_recycler}

    data_technology[spaceship_scrap_recycling .. _productivity].prerequisites = {golden_science_pack}

    data_technology["transport-belt-capacity-3-Secretas"].prerequisites = {golden_science_pack, tech_transport_belt_capacity_2}

    local tech_science_pack = "science-pack"
    data_technology[tech_science_pack .. _productivity].prerequisites = {promethium_science_pack}
    data_technology[tech_science_pack .. _productivity].effects = {}
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = automation_science_pack, change = 0.1})
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = logistic_science_pack, change = 0.1})
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = military_science_pack, change = 0.1})
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = chemical_science_pack, change = 0.1})
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = production_science_pack, change = 0.1})
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = utility_science_pack, change = 0.1})
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = space_science_pack, change = 0.1})
    if mods[hyarion_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = space_science_pack_hyarion, change = 0.1})
    end
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = metallurgic_science_pack, change = 0.1})
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = agricultural_science_pack, change = 0.1})
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = electromagnetic_science_pack, change = 0.1})
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = cryogenic_science_pack, change = 0.1})
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = promethium_science_pack, change = 0.1})
    if mods[hyarion_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = promethium_science_pack_hyarion, change = 0.1})
    end
    if mods[arig_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = compression_science_pack, change = 0.1})
    end
    if mods[hyarion_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = polishing_science_pack, change = 0.1})
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = refraction_science_pack, change = 0.1})
    end
    if mods[tellus_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = bioengineering_science_pack, change = 0.1})
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = pathological_science_pack, change = 0.1})
    end
    if mods[paracelsin_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = galvanization_science_pack, change = 0.1})
    end
    if mods[corrundum_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = electrochemical_science_pack, change = 0.1})
    end
    if mods[castra_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = battlefield_science_pack, change = 0.1})
    end
    if mods[shchierbin_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = vanadium_science_pack, change = 0.1})
    end
    if mods[maraxsis_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = hydraulic_science_pack, change = 0.1})
    end
    if mods[vesta_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = gas_manipulation_science_pack, change = 0.1})
    end
    if mods[muluna_mods] then
        table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = interstellar_science_pack, change = 0.1})
    end
    table.insert(data_technology[tech_science_pack .. _productivity].effects, {type = change_recipe_productivity, recipe = golden_science_pack, change = 0.1})

    data_technology["worker-robots-storage-4"].prerequisites = {golden_science_pack, "worker-robots-storage-3"}

    if mods[bobmodules] then
        table.insert(data_technology[speed_module_7].prerequisites, golden_science_pack)
        table.insert(data_technology[efficiency_module_7].prerequisites, golden_science_pack)
        table.insert(data_technology[productivity_module_7].prerequisites, golden_science_pack)
        table.insert(data_technology[pollution_clean_module_7].prerequisites, golden_science_pack)
        table.insert(data_technology[pollution_create_module_7].prerequisites, golden_science_pack)
        table.insert(data_technology[quality_module_7].prerequisites, golden_science_pack)
    end

    table.insert(data_technology[quantum_processor].prerequisites, golden_science_pack)
    if mods[bobwarfare] then
        table.insert(data_technology[artillery_turret_2].prerequisites, golden_science_pack)
        table.insert(data_technology[artillery_wagon_2].prerequisites, golden_science_pack)
    end
    table.insert(data_technology[tech_antimonite_processing_2].prerequisites, golden_science_pack)
    table.insert(data_technology[tech_germanite_processing_2].prerequisites, golden_science_pack)
    table.insert(data_technology[tech_brannerite_processing_3].prerequisites, golden_science_pack)
    table.insert(data_technology[tech_wolframite_processing_3].prerequisites, golden_science_pack)
    table.insert(data_technology[tech_molybdenite_processing_4].prerequisites, golden_science_pack)
    if mods[castra_mods] then
        table.insert(data_technology[tech_millerite_processing_3].prerequisites, golden_science_pack)
    end
    if mods[corrundum_mods] then
        table.insert(data_technology[tech_chalcopyrite_processing_3].prerequisites, golden_science_pack)
    end
    if mods[moshine_mods] then
        table.insert(data_technology[tech_monazite_processing_2].prerequisites, golden_science_pack)
    end
    if mods[shchierbin_mods] then
        table.insert(data_technology[tech_vanadium_smelting_3].prerequisites, golden_science_pack)
    end
end