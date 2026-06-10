if mods [panglia_mods] then
    -- RECIPE
    data_item[igneous_rock].subgroup = is_panglia_recipe
    data_item[igneous_rock].order = a
    data_item[igneous_rock].stack_size = 200

    local igneous_rock_to_lava = "panglia_igneous_rock_to_lava"
    data_recipe[igneous_rock_to_lava].subgroup = is_panglia_recipe
    data_recipe[igneous_rock_to_lava].icons = TWO_I(igneous_rock, lava)
    data_recipe[igneous_rock_to_lava].order = a_a
    data_recipe[igneous_rock_to_lava].energy_required = 64
    data_recipe[igneous_rock_to_lava].results[1].amount = 120

    local mixed_dust = "panglia_dust"
    data_item[mixed_dust].subgroup = is_panglia_recipe
    data_item[mixed_dust].order = b
    data_item[mixed_dust].stack_size = 200
    data_recipe[mixed_dust].subgroup = is_panglia_recipe
    data_recipe[mixed_dust].order = b

    data_item[panglite].subgroup = is_panglia_recipe
    data_item[panglite].order = c
    data_item[panglite].stack_size = 200
    data_recipe[panglite].subgroup = is_panglia_recipe
    data_recipe[panglite].icons = STONKS_I(stonks_png, panglite)
    data_recipe[panglite].order = c
    data_recipe[panglite].energy_required = 64
    data_recipe[panglite].ingredients[1].amount = 4
    data_recipe[panglite].results[1].amount = 5

    data_item[panglite_fiber].subgroup = is_panglia_recipe
    data_item[panglite_fiber].order = d
    data_item[panglite_fiber].stack_size = 200
    data_recipe[panglite_fiber].subgroup = is_panglia_recipe
    data_recipe[panglite_fiber].icons = TWO_D_I(panglite, uranium_238, panglite_fiber, uranium_235)
    data_recipe[panglite_fiber].order = d
    data_recipe[panglite_fiber].energy_required = 256
    data_recipe[panglite_fiber].ingredients =
    {
        {type = item, name = panglite, amount = 32},
        {type = item, name = uranium_238, amount = 1}
    }
    data_recipe[panglite_fiber].results =
    {
        {type = item, name = panglite_fiber, amount = 8},
        {type = item, name = uranium_235, amount = 1}
    }
    data_recipe[panglite_fiber].main_product = panglite_fiber

    data_item[branbalite].subgroup = is_panglia_recipe
    data_item[branbalite].order = e
    data_item[branbalite].stack_size = 200

    data_fluid[branbalite_slurry].subgroup = is_panglia_recipe
    data_fluid[branbalite_slurry].order = f
    data_recipe[branbalite_slurry].subgroup = is_panglia_recipe
    data_recipe[branbalite_slurry].icons = THREE_I(branbalite, water, branbalite_slurry)
    data_recipe[branbalite_slurry].order = f
    data_recipe[branbalite_slurry].results[1].amount = 30

    local branbalite_slurry_to_lubricant = "panglia_branbalite_slurry_to_lubricant"
    data_recipe[branbalite_slurry_to_lubricant].subgroup = is_panglia_recipe
    data_recipe[branbalite_slurry_to_lubricant].icons = TWO_I(branbalite_slurry, lubricant)
    data_recipe[branbalite_slurry_to_lubricant].order = f_a
    data_recipe[branbalite_slurry_to_lubricant].energy_required = 32
    data_recipe[branbalite_slurry_to_lubricant].ingredients =
    {
        {type = fluid, name = branbalite_slurry, amount = 60},
        {type = fluid, name = steam, amount = 30}
    }
    data_recipe[branbalite_slurry_to_lubricant].results =
    {
        {type = fluid, name = lubricant, amount = 120},
        {type = fluid, name = water, amount = 30}
    }
    data_recipe[branbalite_slurry_to_lubricant].main_product = lubricant

    local branbalite_slurry_to_rocket_fuel = "panglia_branbalite_slurry_to_rocket_fuel"
    data_recipe[branbalite_slurry_to_rocket_fuel].subgroup = is_panglia_recipe
    data_recipe[branbalite_slurry_to_rocket_fuel].icons = BUILDING_R_I(rocket_fuel, planet_panglia)
    data_recipe[branbalite_slurry_to_rocket_fuel].order = f_b
    data_recipe[branbalite_slurry_to_rocket_fuel].energy_required = 32
    data_recipe[branbalite_slurry_to_rocket_fuel].ingredients =
    {
        {type = item, name = solid_fuel, amount = 8},
        {type = fluid, name = branbalite_slurry, amount = 120}
    }

    local advanced_circuit_from_panglite_fiber = "panglia_advanced_circuit_from_panglite_fiber"
    data_recipe[advanced_circuit_from_panglite_fiber].localised_name = {"recipe-name.advanced-circuit-from-panglite-fiber"}
    data_recipe[advanced_circuit_from_panglite_fiber].subgroup = is_panglia_recipe
    data_recipe[advanced_circuit_from_panglite_fiber].icons = BUILDING_R_I(advanced_circuit, panglite_fiber)
    data_recipe[advanced_circuit_from_panglite_fiber].order = g_b
    data_recipe[advanced_circuit_from_panglite_fiber].energy_required = 32
    data_recipe[advanced_circuit_from_panglite_fiber].ingredients =
    {
        {type = item, name = resistor, amount = 4},
        {type = item, name = transistor, amount = 4},
        {type = item, name = electronic_circuit, amount = 1},
        {type = item, name = solder, amount = 2},
        {type = item, name = panglite_fiber, amount = 2}
    }

    local low_density_structure_from_panglite_fiber = "panglia_low_density_structure_from_panglite_fiber"
    data_recipe[low_density_structure_from_panglite_fiber].subgroup = is_panglia_recipe
    data_recipe[low_density_structure_from_panglite_fiber].icons = THREE_I(panglite_fiber, steam, low_density_structure)
    data_recipe[low_density_structure_from_panglite_fiber].order = h_a
    data_recipe[low_density_structure_from_panglite_fiber].energy_required = 4
    data_recipe[low_density_structure_from_panglite_fiber].ingredients =
    {
        {type = item, name = panglite_fiber, amount = 1},
        {type = fluid, name = steam, amount = 15}
    }

    data_item[cloned_specimen_body_0].subgroup = is_panglia_recipe
    data_item[cloned_specimen_body_0].order = i
    data_item[cloned_specimen_body_0].stack_size = 200
    data_recipe[cloned_specimen_body_0].subgroup = is_panglia_recipe
    data_recipe[cloned_specimen_body_0].icons = THREE_D_I(bioflux, uranium_235, datacell_dna_sequenced, cloned_specimen_body_0, uranium_238, datacell_dna_raw)
    data_recipe[cloned_specimen_body_0].order = i
    data_recipe[cloned_specimen_body_0].energy_required = 1024

    data_item[cloned_specimen_body_1].subgroup = is_panglia_recipe
    data_item[cloned_specimen_body_1].order = j
    data_item[cloned_specimen_body_1].stack_size = 200
    data_recipe[cloned_specimen_body_1].subgroup = is_panglia_recipe
    data_recipe[cloned_specimen_body_1].icons = THREE_R_I(cloned_specimen_body_0, cloned_specimen_body_1, spoilage)
    data_recipe[cloned_specimen_body_1].order = j
    data_recipe[cloned_specimen_body_1].energy_required = 2048

    data_item[cloned_specimen_body_2].subgroup = is_panglia_recipe
    data_item[cloned_specimen_body_2].order = k
    data_item[cloned_specimen_body_2].stack_size = 200
    data_recipe[cloned_specimen_body_2].subgroup = is_panglia_recipe
    data_recipe[cloned_specimen_body_2].icons = THREE_R_I(cloned_specimen_body_1, cloned_specimen_body_2, spoilage)
    data_recipe[cloned_specimen_body_2].order = k
    data_recipe[cloned_specimen_body_2].energy_required = 4096

    data_item[cloned_specimen_body_3_genius].subgroup = is_panglia_recipe
    data_item[cloned_specimen_body_3_genius].order = l
    data_item[cloned_specimen_body_3_genius].stack_size = 200

    data_item[cloned_specimen_body_3].subgroup = is_panglia_recipe
    data_item[cloned_specimen_body_3].stack_size = 200
    data_item[cloned_specimen_body_3].order = m
    data_recipe[cloned_specimen_body_3].subgroup = is_panglia_recipe
    data_recipe[cloned_specimen_body_3].icons = THREE_R_I(cloned_specimen_body_2, cloned_specimen_body_3_genius, cloned_specimen_body_3)
    data_recipe[cloned_specimen_body_3].order = m
    data_recipe[cloned_specimen_body_3].energy_required = 2048

    data_item[sentient_processor].subgroup = is_panglia_recipe
    data_item[sentient_processor].order = n
    data_item[sentient_processor].stack_size = 200
    data_recipe[sentient_processor].subgroup = is_panglia_recipe
    data_recipe[sentient_processor].order = n
    data_recipe[sentient_processor].energy_required = 128
    data_recipe[sentient_processor].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 1},
        {type = item, name = quantum_processor, amount = 1},
        {type = item, name = panglite, amount = 4},
        {type = item, name = cloned_specimen_body_3, amount = 1}
    }

    -- UNIVERSE VOLCANIC
    local universe_precursor_volcanic = "panglia_universe_precursor_volcanic"
    data_item[universe_precursor_volcanic].subgroup = is_panglia_universe_volcanic
    data_item[universe_precursor_volcanic].order = a
    data_item[universe_precursor_volcanic].stack_size = 200
    data_recipe[universe_precursor_volcanic].subgroup = is_panglia_universe_volcanic
    data_recipe[universe_precursor_volcanic].icons = BUILDING_R_I(universe_precursor_volcanic, planet_panglia)
    data_recipe[universe_precursor_volcanic].order = a
    data_recipe[universe_precursor_volcanic].energy_required = 32
    data_recipe[universe_precursor_volcanic].ingredients =
    {
        {type = item, name = panglite, amount = 1},
        {type = fluid, name = lava, amount = 15},
        {type = fluid, name = lubricant, amount = 15}
    }

    local universe_precursor_volcanic_result = "panglia_universe_precursor_volcanic_result"
    data_recipe[universe_precursor_volcanic_result].subgroup = is_panglia_universe_volcanic
    data_recipe[universe_precursor_volcanic_result].order = a_a
    data_recipe[universe_precursor_volcanic_result].energy_required = 32
    data_recipe[universe_precursor_volcanic_result].results =
    {
        {type = item, name = igneous_rock, amount_min = 0, amount_max = 256, probability = 0.5},
        {type = item, name = uranium_238, amount_min = 0, amount_max = 32, probability = 0.5},
        {type = item, name = solid_fuel, amount_min = 0, amount_max = 64, probability = 0.5}
    }

    -- UNIVERSE
    data_item[universe_precursor].subgroup = is_panglia_universe
    data_item[universe_precursor].order = a
    data_item[universe_precursor].stack_size = 200
    data_recipe[universe_precursor].subgroup = is_panglia_universe
    data_recipe[universe_precursor].order = a
    data_recipe[universe_precursor].ingredients =
    {
        {type = item, name = ore_saphirite, amount = 8},
        {type = item, name = ore_jivolite, amount = 8},
        {type = item, name = ore_stiratite, amount = 8},
        {type = item, name = ore_crotinnium, amount = 8},
        {type = item, name = ore_rubyte, amount = 8},
        {type = item, name = ore_bobmonium, amount = 8}
    }

    local panglia_universe_precursor = "panglia_universe_precursor"
    data_recipe[panglia_universe_precursor].subgroup = is_panglia_universe
    data_recipe[panglia_universe_precursor].icons = BUILDING_R_I(universe_precursor, planet_panglia)
    data_recipe[panglia_universe_precursor].order = a_a
    data_recipe[panglia_universe_precursor].energy_required = 32
    data_recipe[panglia_universe_precursor].ingredients =
    {
        {type = item, name = panglite_fiber, amount = 2},
        {type = item, name = mixed_dust, amount = 64},
        {type = fluid, name = branbalite_slurry, amount = 15}
    }

    local cosmic_incubator_recipe_nauvis = "cosmic_incubator_recipe_nauvis"
    data_recipe[cosmic_incubator_recipe_nauvis].localised_name = {"recipe-name.cosmic-incubator-recipe", {"space-location-name.nauvis"}}
    data_recipe[cosmic_incubator_recipe_nauvis].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_nauvis].icons = GALAXY_I(galaxy_png, planet_nauvis)
    data_recipe[cosmic_incubator_recipe_nauvis].order = b_a
    data_recipe[cosmic_incubator_recipe_nauvis].energy_required = 32
    data_recipe[cosmic_incubator_recipe_nauvis].results =
    {
        {type = item, name = coal, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = stone, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_saphirite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_jivolite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_stiratite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_crotinnium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_rubyte, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_bobmonium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = molybdenite_ore, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = powellite_ore, amount_min = 0, amount_max = 64, probability = 0.5}
    }

    local cosmic_incubator_recipe_vulcanus = "cosmic_incubator_recipe_vulcanus"
    data_recipe[cosmic_incubator_recipe_vulcanus].localised_name = {"recipe-name.cosmic-incubator-recipe", {"space-location-name.vulcanus"}}
    data_recipe[cosmic_incubator_recipe_vulcanus].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_vulcanus].icons = GALAXY_I(galaxy_png, planet_vulcanus)
    data_recipe[cosmic_incubator_recipe_vulcanus].order = b_b
    data_recipe[cosmic_incubator_recipe_vulcanus].energy_required = 32
    data_recipe[cosmic_incubator_recipe_vulcanus].results =
    {
        {type = item, name = coal, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = stone, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_saphirite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_jivolite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_stiratite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_crotinnium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_rubyte, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_bobmonium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = calcite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = wolframite_ore, amount_min = 0, amount_max = 64, probability = 0.5}
    }

    local cosmic_incubator_recipe_gleba = "cosmic_incubator_recipe_gleba"
    data_recipe[cosmic_incubator_recipe_gleba].localised_name = {"recipe-name.cosmic-incubator-recipe", {"space-location-name.gleba"}}
    data_recipe[cosmic_incubator_recipe_gleba].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_gleba].icons = GALAXY_I(galaxy_png, planet_gleba)
    data_recipe[cosmic_incubator_recipe_gleba].order = b_c
    data_recipe[cosmic_incubator_recipe_gleba].energy_required = 32
    data_recipe[cosmic_incubator_recipe_gleba].results =
    {
        {type = item, name = coal, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = stone, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_saphirite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_jivolite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_stiratite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_crotinnium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_rubyte, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_bobmonium, amount_min = 0, amount_max = 64, probability = 0.5}
    }

    local cosmic_incubator_recipe_fulgora = "cosmic_incubator_recipe_fulgora"
    data_recipe[cosmic_incubator_recipe_fulgora].localised_name = {"recipe-name.cosmic-incubator-recipe", {"space-location-name.fulgora"}}
    data_recipe[cosmic_incubator_recipe_fulgora].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_fulgora].icons = GALAXY_I(galaxy_png, planet_fulgora)
    data_recipe[cosmic_incubator_recipe_fulgora].order = b_d
    data_recipe[cosmic_incubator_recipe_fulgora].energy_required = 32
    data_recipe[cosmic_incubator_recipe_fulgora].results =
    {
        {type = item, name = coal, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = stone, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_saphirite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_jivolite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_stiratite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_crotinnium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_rubyte, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_bobmonium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = brannerite_ore, amount_min = 0, amount_max = 64, probability = 0.5}
    }

    local cosmic_incubator_recipe_aquilo = "cosmic_incubator_recipe_aquilo"
    data_recipe[cosmic_incubator_recipe_aquilo].localised_name = {"recipe-name.cosmic-incubator-recipe", {"space-location-name.aquilo"}}
    data_recipe[cosmic_incubator_recipe_aquilo].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_aquilo].icons = GALAXY_I(galaxy_png, planet_aquilo)
    data_recipe[cosmic_incubator_recipe_aquilo].order = b_e
    data_recipe[cosmic_incubator_recipe_aquilo].energy_required = 32
    data_recipe[cosmic_incubator_recipe_aquilo].results =
    {
        {type = item, name = coal, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = stone, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_saphirite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_jivolite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_stiratite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_crotinnium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_rubyte, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_bobmonium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = antimonite_ore, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = germanite_ore, amount_min = 0, amount_max = 64, probability = 0.5}
    }

    local cosmic_incubator_recipe_moshine = "cosmic_incubator_recipe_moshine"
    data_recipe[cosmic_incubator_recipe_moshine].localised_name = {"recipe-name.cosmic-incubator-recipe", {"space-location-name.moshine"}}
    data_recipe[cosmic_incubator_recipe_moshine].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_moshine].icons = GALAXY_I(galaxy_png, planet_moshine)
    data_recipe[cosmic_incubator_recipe_moshine].order = b_f
    data_recipe[cosmic_incubator_recipe_moshine].energy_required = 32
    data_recipe[cosmic_incubator_recipe_moshine].results =
    {
        {type = item, name = coal, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = stone, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_saphirite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_jivolite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_stiratite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_crotinnium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_rubyte, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_bobmonium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = monazite_ore, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = barite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = biotite_mica, amount_min = 0, amount_max = 64, probability = 0.5}
    }

    if mods [arig_mods] then
        local cosmic_incubator_recipe_arig = "cosmic_incubator_recipe_arig"
        data_recipe[cosmic_incubator_recipe_arig].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_arig].icons = GALAXY_I(galaxy_png, planet_arig)
        data_recipe[cosmic_incubator_recipe_arig].order = b_g
        data_recipe[cosmic_incubator_recipe_arig].energy_required = 32
        data_recipe[cosmic_incubator_recipe_arig].results =
        {
            {type = item, name = coal, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = stone, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_saphirite, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_jivolite, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_stiratite, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_crotinnium, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_rubyte, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_bobmonium, amount_min = 0, amount_max = 64, probability = 0.5}
        }
    end

    if mods [hyarion_mods] then
        local cosmic_incubator_recipe_hyarion = "cosmic_incubator_recipe_hyarion"
        data_recipe[cosmic_incubator_recipe_hyarion].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_hyarion].icons = GALAXY_I(galaxy_png, planet_hyarion)
        data_recipe[cosmic_incubator_recipe_hyarion].order = b_h
        data_recipe[cosmic_incubator_recipe_hyarion].energy_required = 32
        data_recipe[cosmic_incubator_recipe_hyarion].results =
        {
            {type = item, name = coal, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = stone, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_saphirite, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_jivolite, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_stiratite, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_crotinnium, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_rubyte, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_bobmonium, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = metallic_ore, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = carbon_angels, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = raw_quartz_arig, amount_min = 0, amount_max = 64, probability = 0.5}
        }
    end

    if mods [muluna_mods] then
        local cosmic_incubator_recipe_muluna = "cosmic_incubator_recipe_muluna"
        data_recipe[cosmic_incubator_recipe_muluna].localised_name = {"recipe-name.cosmic-incubator-recipe", {"space-location-name.muluna"}}
        data_recipe[cosmic_incubator_recipe_muluna].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_muluna].icons = GALAXY_I(galaxy_png, planet_muluna)
        data_recipe[cosmic_incubator_recipe_muluna].order = c_a
        data_recipe[cosmic_incubator_recipe_muluna].energy_required = 32
        data_recipe[cosmic_incubator_recipe_muluna].results =
        {
            {type = item, name = coal, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = stone, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_saphirite, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_jivolite, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_stiratite, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_crotinnium, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_rubyte, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = ore_bobmonium, amount_min = 0, amount_max = 64, probability = 0.5},
            {type = item, name = lunar_regolith, amount_min = 0, amount_max = 64, probability = 0.5}
        }
    end

    local universe_precursor_2_result = "panglia_universe_precursor_2_result"
    data_recipe[universe_precursor_2_result].subgroup = is_panglia_universe
    data_recipe[universe_precursor_2_result].icons = GALAXY_I(galaxy_png, planet_panglia)
    data_recipe[universe_precursor_2_result].order = c_b
    data_recipe[universe_precursor_2_result].energy_required = 32
    data_recipe[universe_precursor_2_result].results =
    {
        {type = item, name = coal, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = stone, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_saphirite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_jivolite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_stiratite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_crotinnium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_rubyte, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = ore_bobmonium, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = panglite, amount_min = 0, amount_max = 64, probability = 0.5},
        {type = item, name = branbalite, amount_min = 0, amount_max = 64, probability = 0.5}
    }

    --[[if mods [terrapalus_mods] then
        local cosmic_incubator_recipe_terrapalus = "cosmic_incubator_recipe_terrapalus"
        data_recipe[cosmic_incubator_recipe_terrapalus].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_terrapalus].icons = GALAXY_I(galaxy_png, planet_terrapalus)
    end

    if mods [vesta_mods] then
        local cosmic_incubator_recipe_vesta = "cosmic_incubator_recipe_vesta"
        data_recipe[cosmic_incubator_recipe_vesta].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_vesta].icons = GALAXY_I(galaxy_png, planet_vesta)
    end

    if mods [maraxsis_mods] then
        local cosmic_incubator_recipe_maraxsis = "cosmic_incubator_recipe_maraxsis"
        data_recipe[cosmic_incubator_recipe_maraxsis].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_maraxsis].icons = GALAXY_I(galaxy_png, planet_maraxsis)

        local cosmic_incubator_recipe_maraxsis_trench = "cosmic_incubator_recipe_maraxsis-trench"
        data_recipe[cosmic_incubator_recipe_maraxsis_trench].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_maraxsis_trench].icons = GALAXY_I(galaxy_png, planet_trench_maraxsis)
    end

    if mods [castra_mods] then
        local cosmic_incubator_recipe_castra = "cosmic_incubator_recipe_castra"
        data_recipe[cosmic_incubator_recipe_castra].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_castra].icons = GALAXY_I(galaxy_png, planet_castra)
    end

    if mods [shchierbin_mods] then
        local cosmic_incubator_recipe_shchierbin = "cosmic_incubator_recipe_shchierbin"
        data_recipe[cosmic_incubator_recipe_shchierbin].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_shchierbin].icons = GALAXY_I(galaxy_png, planet_shchierbin)
    end

    if mods [shattered_mods] then
        local cosmic_incubator_recipe_shattered = "cosmic_incubator_recipe_skewer_shattered_planet"
        data_recipe[cosmic_incubator_recipe_shattered].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_shattered].icons = GALAXY_I(galaxy_png, planet_shattered)
    end

    if mods [paracelsin_mods] then
        local cosmic_incubator_recipe_paracelsin = "cosmic_incubator_recipe_paracelsin"
        data_recipe[cosmic_incubator_recipe_paracelsin].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_paracelsin].icons = GALAXY_I(galaxy_png, planet_paracelsin)
    end

    if mods [secretas_frozeta_mods] then
        local cosmic_incubator_recipe_frozeta = "cosmic_incubator_recipe_frozeta"
        data_recipe[cosmic_incubator_recipe_frozeta].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_frozeta].icons = GALAXY_I(galaxy_png, planet_frozeta)
    end

    if mods [corrundum_mods] then
        local cosmic_incubator_recipe_corrundum = "cosmic_incubator_recipe_corrundum"
        data_recipe[cosmic_incubator_recipe_corrundum].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_corrundum].icons = GALAXY_I(galaxy_png, planet_corrundum)
    end]]

    -- BUILDING
    local matter_printer = "matter_printer"
    data_item[matter_printer].subgroup = is_panglia_building
    data_item[matter_printer].stack_size = 32
    data_item[matter_printer].weight = 31250
    data_recipe[matter_printer].subgroup = is_panglia_building
    data_recipe[matter_printer].energy_required = 8
    data_recipe[matter_printer].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = glass_bob, amount = 64},
        {type = item, name = electromagnetic_plant, amount = 1},
        {type = item, name = neural_computer, amount = 1},
        {type = item, name = panglite, amount = 8}
    }
    data_furnace[matter_printer].subgroup = is_panglia_building
    data_furnace[matter_printer].crafting_speed = 1
    data_furnace[matter_printer].module_slots = 4
    data_furnace[matter_printer].energy_usage = (64000 - 4000) .. kW
    data_furnace[matter_printer].energy_source.emissions_per_minute = {pollution = 128}
    data_furnace[matter_printer].energy_source.drain = 4000 .. kW

    local panglia_crusher = "panglia_crusher"
    data_item[panglia_crusher].subgroup = is_panglia_building
    data_item[panglia_crusher].stack_size = 32
    data_item[panglia_crusher].weight = 31250
    data_recipe[panglia_crusher].subgroup = is_panglia_building
    data_recipe[panglia_crusher].energy_required = 8
    data_recipe[panglia_crusher].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = electric_furnace_4, amount = 1},
        {type = item, name = chemical_plant_4, amount = 1},
        {type = item, name = crusher, amount = 1},
        {type = item, name = panglite_fiber, amount = 8}
    }
    data_furnace[panglia_crusher].subgroup = is_panglia_building
    data_furnace[panglia_crusher].energy_usage = (240 - drain) .. kW
    data_furnace[panglia_crusher].energy_source.emissions_per_minute = {pollution = 16}
    data_furnace[panglia_crusher].energy_source.drain = drain .. kW


    local cloning_vat = "cloning-vat"
    data_item[cloning_vat].subgroup = is_panglia_building
    data_item[cloning_vat].stack_size = 32
    data_item[cloning_vat].weight = 31250
    data_recipe[cloning_vat].subgroup = is_panglia_building
    data_recipe[cloning_vat].energy_required = 4
    data_recipe[cloning_vat].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 1},
        {type = item, name = carbon_fiber, amount = 4},
        {type = item, name = biochamber, amount = 1},
        {type = fluid, name = branbalite_slurry, amount = 120}
    }
    data_assembling[cloning_vat].subgroup = is_panglia_building
    data_assembling[cloning_vat].crafting_speed = 2
    data_assembling[cloning_vat].module_slots = 4
    data_assembling[cloning_vat].energy_usage = (480 - drain) .. kW
    data_assembling[cloning_vat].energy_source.emissions_per_minute = {pollution = -1}
    data_assembling[cloning_vat].energy_source.drain = drain .. kW

    local simulation_chamber = "simulation_chamber"
    data_item[simulation_chamber].subgroup = is_panglia_building
    data_item[simulation_chamber].stack_size = 32
    data_item[simulation_chamber].weight = 31250
    data_recipe[simulation_chamber].subgroup = is_panglia_building
    data_furnace[simulation_chamber].subgroup = is_panglia_building
    data_furnace[simulation_chamber].crafting_speed = 0.125
    data_furnace[simulation_chamber].energy_usage = (240 - drain) .. kW
    data_furnace[simulation_chamber].energy_source.drain = drain .. kW

    local thinking_brain = "thinking-brain"
    data_item[thinking_brain].subgroup = is_panglia_building
    data_item[thinking_brain].stack_size = 32
    data_item[thinking_brain].weight = 31250
    data_recipe[thinking_brain].subgroup = is_panglia_building
    data_recipe[thinking_brain].energy_required = 8
    data_recipe[thinking_brain].ingredients =
    {
        {type = item, name = low_density_structure, amount = 4},
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = ai_tier_10, amount = 1},
        {type = item, name = cloned_specimen_body_3_genius, amount = 1},
        {type = fluid, name = branbalite_slurry, amount = 120}
    }
    data_assembling[thinking_brain].subgroup = is_panglia_building
    data_assembling[thinking_brain].effect_receiver.base_effect.productivity = 1
    data_assembling[thinking_brain].energy_usage = (4000 - 120) .. kW
    data_assembling[thinking_brain].energy_source.drain = 120 .. kW

    -- WAR
    local snouz_long_electric_gun_turret = "snouz_long_electric_gun_turret"
    data_item[snouz_long_electric_gun_turret].subgroup = is_panglia_war
    data_item[snouz_long_electric_gun_turret].stack_size = 32
    data_item[snouz_long_electric_gun_turret].weight = 31250
    data_recipe[snouz_long_electric_gun_turret].subgroup = is_panglia_war
    data_recipe[snouz_long_electric_gun_turret].ingredients =
    {
        {type = item, name = radar_5, amount = 1},
        {type = item, name = gun_turret_5, amount = 1},
        {type = item, name = supercapacitor, amount = 4},
        {type = item, name = panglite_fiber, amount = 4}
    }
    data_ammo_turret[snouz_long_electric_gun_turret].subgroup = is_panglia_war
    data_ammo_turret[snouz_long_electric_gun_turret].attack_parameters.range = 32
    data_ammo_turret[snouz_long_electric_gun_turret].attack_parameters.cooldown = 3.75
    data_ammo_turret[snouz_long_electric_gun_turret].attack_parameters.damage_modifier = 2.25
    data_ammo_turret[snouz_long_electric_gun_turret].energy_source.input_flow_limit = (1200 - 60) .. kW
    data_ammo_turret[snouz_long_electric_gun_turret].energy_source.drain = 60 .. kW

    bobmods.lib.recipe.update_recycling_recipe
    ({
        matter_printer,
        panglia_crusher,
        cloning_vat,
        thinking_brain,
        snouz_long_electric_gun_turret
    })

    -- TECHNOLOGY
    data_technology[planet_discovery_panglia].prerequisites = {metallurgic_science_pack, agricultural_science_pack}
    data_technology[planet_discovery_panglia].unit.ingredients =
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

    data_technology[cloning_vat .. _technology].unit.ingredients =
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

    data_technology[matter_printer .. _technology].unit.ingredients =
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

    data_technology[snouz_long_electric_gun_turret].prerequisites = {panglite_fiber, electromagnetic_science_pack}
    data_technology[snouz_long_electric_gun_turret].unit.ingredients =
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

    data_technology[universe_precursor_volcanic].unit.ingredients =
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

    data_technology[panglia_crusher].unit.ingredients =
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

    data_technology[advanced_circuit_from_panglite_fiber].effects =
    {
        {type = unlock_recipe, recipe = electronic_circuit_from_panglite_fiber},
        {type = unlock_recipe, recipe = advanced_circuit_from_panglite_fiber},
        {type = unlock_recipe, recipe = processing_unit_from_panglite_fiber},
        {type = unlock_recipe, recipe = advanced_processing_unit_from_panglite_fiber}
    }
end