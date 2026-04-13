if mods [panglia_mods] then
    local matter_printer = "matter_printer"
    data_item[matter_printer].subgroup = is_panglia_building
    data_item[matter_printer].stack_size = 32
    data_item[matter_printer].weight = 31250
    data_recipe[matter_printer].subgroup = is_panglia_building
    data_furnace[matter_printer].subgroup = is_panglia_building
    data_furnace[matter_printer].crafting_speed = 1

    local panglia_crusher = "panglia_crusher"
    data_item[panglia_crusher].subgroup = is_panglia_building
    data_item[panglia_crusher].stack_size = 32
    data_item[panglia_crusher].weight = 31250
    data_recipe[panglia_crusher].subgroup = is_panglia_building
    data_furnace[panglia_crusher].subgroup = is_panglia_building

    local cloning_vat = "cloning-vat"
    data_item[cloning_vat].subgroup = is_panglia_building
    data_item[cloning_vat].stack_size = 32
    data_item[cloning_vat].weight = 31250
    data_recipe[cloning_vat].subgroup = is_panglia_building
    data_assembling[cloning_vat].subgroup = is_panglia_building

    local simulation_chamber = "simulation_chamber"
    data_item[simulation_chamber].subgroup = is_panglia_building
    data_item[simulation_chamber].stack_size = 32
    data_item[simulation_chamber].weight = 31250
    data_recipe[simulation_chamber].subgroup = is_panglia_building
    data_furnace[simulation_chamber].subgroup = is_panglia_building

    local thinking_brain = "thinking-brain"
    data_item[thinking_brain].subgroup = is_panglia_building
    data_item[thinking_brain].stack_size = 32
    data_item[thinking_brain].weight = 31250
    data_recipe[thinking_brain].subgroup = is_panglia_building
    data_assembling[thinking_brain].subgroup = is_panglia_building

    local snouz_long_electric_gun_turret = "snouz_long_electric_gun_turret"
    data_item[snouz_long_electric_gun_turret].subgroup = is_panglia_war
    data_item[snouz_long_electric_gun_turret].stack_size = 32
    data_item[snouz_long_electric_gun_turret].weight = 31250
    data_recipe[snouz_long_electric_gun_turret].subgroup = is_panglia_war
    data_ammo_turret[snouz_long_electric_gun_turret].subgroup = is_panglia_war

    local igneous_rock = "panglia_igneous_rock"
    data_item[igneous_rock].subgroup = is_panglia_recipe
    data_item[igneous_rock].stack_size = 200
    data_item[igneous_rock].weight = 5000

    local igneous_rock_to_lava = "panglia_igneous_rock_to_lava"
    data_recipe[igneous_rock_to_lava].subgroup = is_panglia_recipe
    data_recipe[igneous_rock_to_lava].icons = TWO_I(igneous_rock, lava)

    local panglite = "panglia_panglite"
    data_item[panglite].subgroup = is_panglia_recipe
    data_item[panglite].stack_size = 200
    data_item[panglite].weight = 5000
    data_recipe[panglite].subgroup = is_panglia_recipe
    data_recipe[panglite].icons = TWO_I(panglite, panglite)

    data_item[branbalite_panglia].subgroup = is_panglia_recipe
    data_item[branbalite_panglia].stack_size = 200
    data_item[branbalite_panglia].weight = 5000

    data_item[panglite_fiber].subgroup = is_panglia_recipe
    data_item[panglite_fiber].stack_size = 200
    data_item[panglite_fiber].weight = 5000
    data_recipe[panglite_fiber].subgroup = is_panglia_recipe
    data_recipe[panglite_fiber].icons = TWO_D_I(panglite, uranium_238, panglite_fiber, uranium_235)

    local mixed_dust = "panglia_dust"
    data_item[mixed_dust].subgroup = is_panglia_recipe
    data_item[mixed_dust].stack_size = 200
    data_item[mixed_dust].weight = 5000
    data_recipe[mixed_dust].subgroup = is_panglia_recipe

    local b_otherres_a = "b[otherres]-a"
    data_fluid[branbalite_slurry_panglia].subgroup = is_panglia_recipe
    data_fluid[branbalite_slurry_panglia].order = b_otherres_a
    data_recipe[branbalite_slurry_panglia].subgroup = is_panglia_recipe
    data_recipe[branbalite_slurry_panglia].icons = THREE_I(branbalite_panglia, water, branbalite_slurry_panglia)
    data_recipe[branbalite_slurry_panglia].order = b_otherres_a

    local branbalite_slurry_to_lubricant = "panglia_branbalite_slurry_to_lubricant"
    data_recipe[branbalite_slurry_to_lubricant].subgroup = is_panglia_recipe
    data_recipe[branbalite_slurry_to_lubricant].icons = CORNER_I(branbalite_slurry_panglia, nil, steam, lubricant, water)

    local branbalite_slurry_to_rocket_fuel = "panglia_branbalite_slurry_to_rocket_fuel"
    data_recipe[branbalite_slurry_to_rocket_fuel].subgroup = is_panglia_recipe
    data_recipe[branbalite_slurry_to_rocket_fuel].icons = THREE_I(solid_fuel, branbalite_slurry_panglia, rocket_fuel)

    local advanced_circuit_from_panglite_fiber = "panglia_advanced_circuit_from_panglite_fiber"
    data_recipe[advanced_circuit_from_panglite_fiber].subgroup = is_panglia_recipe
    data_recipe[advanced_circuit_from_panglite_fiber].icons = THREE_D_I(electronic_circuit, panglite_fiber, copper_cable, advanced_circuit)

    local low_density_structure_from_panglite_fiber = "panglia_low_density_structure_from_panglite_fiber"
    data_recipe[low_density_structure_from_panglite_fiber].subgroup = is_panglia_recipe
    data_recipe[low_density_structure_from_panglite_fiber].icons = THREE_I(panglite_fiber, steam, low_density_structure)

    local universe_precursor_volcanic = "panglia_universe_precursor_volcanic"
    data_item[universe_precursor_volcanic].subgroup = is_panglia_recipe
    data_item[universe_precursor_volcanic].stack_size = 200
    data_item[universe_precursor_volcanic].weight = 5000
    data_recipe[universe_precursor_volcanic].subgroup = is_panglia_recipe
    data_recipe[universe_precursor_volcanic].icons = THREE_D_I(panglite, lava, lubricant, universe_precursor_volcanic)

    local b_otherres_bc = "b[otherres]-bc"
    local universe_precursor = "universe_precursor"
    data_item[universe_precursor].subgroup = is_panglia_recipe
    data_item[universe_precursor].order = b_otherres_bc
    data_item[universe_precursor].stack_size = 200
    data_item[universe_precursor].weight = 5000
    data_recipe[universe_precursor].subgroup = is_panglia_recipe
    data_recipe[universe_precursor].icons = TWO_FIVE_I(rocket_fuel, stone, nil, coal, iron_ore, copper_ore, universe_precursor)
    data_recipe[universe_precursor].order = b_otherres_bc

    local panglia_universe_precursor = "panglia_universe_precursor"
    data_recipe[panglia_universe_precursor].subgroup = is_panglia_recipe
    data_recipe[panglia_universe_precursor].icons = THREE_D_I(panglite_fiber, mixed_dust, branbalite_slurry_panglia, universe_precursor)
    data_recipe[panglia_universe_precursor].order = "b[otherres]-bd"

    data_item[cloned_specimen_body_0].subgroup = is_panglia_recipe
    data_item[cloned_specimen_body_0].stack_size = 200
    data_item[cloned_specimen_body_0].weight = 5000
    data_recipe[cloned_specimen_body_0].subgroup = is_panglia_recipe
    data_recipe[cloned_specimen_body_0].icons = THREE_D_I(bioflux, uranium_235, datacell_dna_sequenced, cloned_specimen_body_0, uranium_238, datacell_dna_raw)

    data_item[cloned_specimen_body_1].subgroup = is_panglia_recipe
    data_item[cloned_specimen_body_1].stack_size = 200
    data_item[cloned_specimen_body_1].weight = 5000
    data_recipe[cloned_specimen_body_1].subgroup = is_panglia_recipe
    data_recipe[cloned_specimen_body_1].icons = THREE_R_I(cloned_specimen_body_0, cloned_specimen_body_1, spoilage)

    data_item[cloned_specimen_body_2].subgroup = is_panglia_recipe
    data_item[cloned_specimen_body_2].stack_size = 200
    data_item[cloned_specimen_body_2].weight = 5000
    data_recipe[cloned_specimen_body_2].subgroup = is_panglia_recipe
    data_recipe[cloned_specimen_body_2].icons = THREE_R_I(cloned_specimen_body_1, cloned_specimen_body_2, spoilage)

    data_item[cloned_specimen_body_3_genius].subgroup = is_panglia_recipe
    data_item[cloned_specimen_body_3_genius].stack_size = 200
    data_item[cloned_specimen_body_3_genius].weight = 5000

    data_item[cloned_specimen_body_3].subgroup = is_panglia_recipe
    data_item[cloned_specimen_body_3].stack_size = 200
    data_item[cloned_specimen_body_3].weight = 5000
    data_recipe[cloned_specimen_body_3].subgroup = is_panglia_recipe
    data_recipe[cloned_specimen_body_3].icons = THREE_R_I(cloned_specimen_body_2, cloned_specimen_body_3_genius, cloned_specimen_body_3)

    data_item[sentient_processor].subgroup = is_panglia_recipe
    data_item[sentient_processor].stack_size = 200
    data_item[sentient_processor].weight = 5000
    data_recipe[sentient_processor].subgroup = is_panglia_recipe
    data_recipe[sentient_processor].icons = FOUR_D_I(quantum_processor, processing_unit, panglite, cloned_specimen_body_3, sentient_processor)

    local cosmic_incubator_recipe_nauvis = "cosmic_incubator_recipe_nauvis"
    data_recipe[cosmic_incubator_recipe_nauvis].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_nauvis].icons = GALAXY_I(galaxy_png, planet_nauvis)

    if mods [muluna_mods] then
        local cosmic_incubator_recipe_muluna = "cosmic_incubator_recipe_muluna"
        data_recipe[cosmic_incubator_recipe_muluna].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_muluna].icons = GALAXY_I(galaxy_png, planet_muluna)
    end

    local universe_precursor_2_result = "panglia_universe_precursor_2_result"
    data_recipe[universe_precursor_2_result].subgroup = is_panglia_universe
    data_recipe[universe_precursor_2_result].icons = GALAXY_I(galaxy_png, planet_panglia)

    local universe_precursor_volcanic_result = "panglia_universe_precursor_volcanic_result"
    data_recipe[universe_precursor_volcanic_result].subgroup = is_panglia_universe
    -- data_recipe[universe_precursor_volcanic_result].icons = GALAXY_I(???, planet_panglia)

    local cosmic_incubator_recipe_vulcanus = "cosmic_incubator_recipe_vulcanus"
    data_recipe[cosmic_incubator_recipe_vulcanus].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_vulcanus].icons = GALAXY_I(galaxy_png, planet_vulcanus)

    local cosmic_incubator_recipe_gleba = "cosmic_incubator_recipe_gleba"
    data_recipe[cosmic_incubator_recipe_gleba].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_gleba].icons = GALAXY_I(galaxy_png, planet_gleba)

    if mods [terrapalus_mods] then
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

    local cosmic_incubator_recipe_fulgora = "cosmic_incubator_recipe_fulgora"
    data_recipe[cosmic_incubator_recipe_fulgora].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_fulgora].icons = GALAXY_I(galaxy_png, planet_fulgora)

    if mods [shchierbin_mods] then
        local cosmic_incubator_recipe_shchierbin = "cosmic_incubator_recipe_shchierbin"
        data_recipe[cosmic_incubator_recipe_shchierbin].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_shchierbin].icons = GALAXY_I(galaxy_png, planet_shchierbin)
    end

    local cosmic_incubator_recipe_aquilo = "cosmic_incubator_recipe_aquilo"
    data_recipe[cosmic_incubator_recipe_aquilo].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_aquilo].icons = GALAXY_I(galaxy_png, planet_aquilo)

    local cosmic_incubator_recipe_moshine = "cosmic_incubator_recipe_moshine"
    data_recipe[cosmic_incubator_recipe_moshine].subgroup = is_panglia_universe
    data_recipe[cosmic_incubator_recipe_moshine].icons = GALAXY_I(galaxy_png, planet_moshine)

    if mods [shattered_mods] then
        local cosmic_incubator_recipe_shattered = "cosmic_incubator_recipe_skewer_shattered_planet"
        data_recipe[cosmic_incubator_recipe_shattered].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_shattered].icons = GALAXY_I(galaxy_png, planet_shattered)
    end

    if mods [paracelsin_mods] then
        local cosmic_incubator_recipe_ = "cosmic_incubator_recipe_paracelsin"
        data_recipe[cosmic_incubator_recipe_].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_].icons = GALAXY_I(galaxy_png, planet_paracelsin)
    end

    if mods [arig_mods] then
        local cosmic_incubator_recipe_arig = "cosmic_incubator_recipe_arig"
        data_recipe[cosmic_incubator_recipe_arig].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_arig].icons = GALAXY_I(galaxy_png, planet_arig)
    end

    if mods [hyarion_mods] then
        local cosmic_incubator_recipe_hyarion = "cosmic_incubator_recipe_hyarion"
        data_recipe[cosmic_incubator_recipe_hyarion].subgroup = is_panglia_universe
        data_recipe[cosmic_incubator_recipe_hyarion].icons = GALAXY_I(galaxy_png, planet_hyarion)
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
    end
end