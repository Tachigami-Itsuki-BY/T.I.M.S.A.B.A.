-- [font=default-tiny-bold][/font]

if mods [shattered_mods] then
    local deep_mining_drill = "deep_mining_drill"
    data_item[deep_mining_drill].subgroup = is_shattered_deep_mining
    data_item[deep_mining_drill].order = a
    data_item[deep_mining_drill].stack_size = 32
    data_item[deep_mining_drill].weight = 31250
    data_recipe[deep_mining_drill].subgroup = is_shattered_deep_mining
    data_recipe[deep_mining_drill].order = a
    data_mining_drill[deep_mining_drill].subgroup = is_shattered_deep_mining
    data_mining_drill[deep_mining_drill].order = a

    data_fluid[slurry_metallic_shattered].subgroup = is_shattered_deep_mining
    data_fluid[slurry_metallic_shattered].order = b

    local metallic_slurry = "ske_metallic_slurry"
    data_recipe[metallic_slurry].subgroup = is_shattered_deep_mining
    data_recipe[metallic_slurry].icons = THREE_I(metallic_asteroid_chunk, sulfuric_acid_angels, slurry_metallic_shattered)
    data_recipe[metallic_slurry].order = b_a

    local metallic_slurry_processing = "ske_slurry_metallic_processing"
    data_recipe[metallic_slurry_processing].subgroup = is_shattered_deep_mining
    data_recipe[metallic_slurry_processing].icons = FOUR_R_I(slurry_metallic_shattered, iron_ore, sulfur, copper_ore)
    data_recipe[metallic_slurry_processing].order = b_b

    data_fluid[slurry_carbonic_shattered].subgroup = is_shattered_deep_mining
    data_fluid[slurry_carbonic_shattered].order = c

    local carbonic_slurry = "ske_carbonic_slurry"
    data_recipe[carbonic_slurry].subgroup = is_shattered_deep_mining
    data_recipe[carbonic_slurry].icons = THREE_I(carbonic_asteroid_chunk, sulfuric_acid_angels, slurry_carbonic_shattered)
    data_recipe[carbonic_slurry].order = c_a

    local carbonic_slurry_processing = "ske_slurry_carbonic_processing"
    data_recipe[carbonic_slurry_processing].subgroup = is_shattered_deep_mining
    data_recipe[carbonic_slurry_processing].icons = FOUR_R_I(slurry_carbonic_shattered, carbon_angels, nil, sulfur)
    data_recipe[carbonic_slurry_processing].order = c_b

    data_fluid[slurry_oxide_shattered].subgroup = is_shattered_deep_mining
    data_fluid[slurry_oxide_shattered].order = d

    local oxide_slurry = "ske_oxide_slurry"
    data_recipe[oxide_slurry].subgroup = is_shattered_deep_mining
    data_recipe[oxide_slurry].icons = THREE_I(oxide_asteroid_chunk, sulfuric_acid_angels, slurry_oxide_shattered)
    data_recipe[oxide_slurry].order = d_a

    local oxide_slurry_processing = "ske_slurry_oxide_processing"
    data_recipe[oxide_slurry_processing].subgroup = is_shattered_deep_mining
    data_recipe[oxide_slurry_processing].icons = FOUR_R_I(slurry_oxide_shattered, ice, sulfur, calcite)
    data_recipe[oxide_slurry_processing].order = d_b

    data_fluid[slurry_promethium_shattered].subgroup = is_shattered_deep_mining
    data_fluid[slurry_promethium_shattered].order = e

    local promethium_slurry = "ske_promethium_slurry"
    data_recipe[promethium_slurry].subgroup = is_shattered_deep_mining
    data_recipe[promethium_slurry].icons = THREE_I(promethium_asteroid_chunk, sulfuric_acid_angels, slurry_promethium_shattered)
    data_recipe[promethium_slurry].order = e_a

    local promethium_slurry_processing = "ske_slurry_promethium_processing"
    data_recipe[promethium_slurry_processing].subgroup = is_shattered_deep_mining
    data_recipe[promethium_slurry_processing].icons = FOUR_R_I(slurry_promethium_shattered, promethium_shattered, sulfuric_acid_angels, holmium)
    data_recipe[promethium_slurry_processing].order = e_b

    local shattered_foundry = "ske_foundry"
    data_recipe[shattered_foundry].subgroup = is_shattered_alt_recipe
    data_recipe[shattered_foundry].icons = R_P_I(foundry, planet_shattered)
    data_recipe[shattered_foundry].order = a

    local shattered_cryogenic_plant = "ske_cryoplant"
    data_recipe[shattered_cryogenic_plant].subgroup = is_shattered_alt_recipe
    data_recipe[shattered_cryogenic_plant].icons = R_P_I(cryogenic_plant, planet_shattered)
    data_recipe[shattered_cryogenic_plant].order = a_a

    local shattered_stone = "ske_stone"
    data_recipe[shattered_stone].subgroup = is_shattered_alt_recipe
    data_recipe[shattered_stone].icons = THREE_I(water, lava, stone)
    data_recipe[shattered_stone].order = a_b

    local shattered_coal = "ske_coal_synthesis"
    data_recipe[shattered_coal].subgroup = is_shattered_alt_recipe
    data_recipe[shattered_coal].icons = AR_FOUR_ALT_I(carbon_angels, sulfur, water, coal)
    data_recipe[shattered_coal].order = a_c

    local shattered_carbon_fiber = "ske_carbon_fiber"
    data_recipe[shattered_carbon_fiber].subgroup = is_shattered_alt_recipe
    data_recipe[shattered_carbon_fiber].icons = THREE_I(carbon_angels, naphtha_angels, carbon_fiber)
    data_recipe[shattered_carbon_fiber].order = a_d

    local shattered_plastic = "ske_plastic"
    data_recipe[shattered_plastic].subgroup = is_shattered_alt_recipe
    data_recipe[shattered_plastic].icons = THREE_I(stone, steam, plastic)
    data_recipe[shattered_plastic].order = a_e

    local shattered_naphtha = "ske_high_pressure_liquifaction"
    data_recipe[shattered_naphtha].subgroup = is_shattered_alt_recipe
    data_recipe[shattered_naphtha].icons = THREE_I(coal, carbon_angels, naphtha_angels)
    data_recipe[shattered_naphtha].order = a_f

    local ammonia_shattered = "ske_ammonia"
    data_recipe[ammonia_shattered].subgroup = is_shattered_alt_recipe
    data_recipe[ammonia_shattered].icons = THREE_I(nitrogen_angels, hydrogen_angels, ammonia_angels)
    data_recipe[ammonia_shattered].order = a_g
    data_recipe[ammonia_shattered].enabled = false

    local oxygen_hydrogen = "ske_oxygen_hydrogen"
    data_recipe[oxygen_hydrogen].subgroup = is_shattered_alt_recipe
    data_recipe[oxygen_hydrogen].icons = THREE_R_I(water, oxygen_angels, hydrogen_angels)
    data_recipe[oxygen_hydrogen].order = a_h
    data_recipe[oxygen_hydrogen].enabled = false

    local water_vaporization = "ske_water_vaporization"
    data_recipe[water_vaporization].subgroup = is_shattered_alt_recipe
    data_recipe[water_vaporization].icons = TWO_I(water, steam)
    data_recipe[water_vaporization].order = a_i
    data_recipe[water_vaporization].enabled = false

    local quantum_processor_shattered  = "ske_quantum_processor"
    data_recipe[quantum_processor_shattered].subgroup = is_shattered_alt_recipe
    data_recipe[quantum_processor_shattered].icons = TWO_FIVE_I(processing_unit, lithium_plate_bob, tungsten_plate_bob, superconductor, carbon_fiber, fluoroketone_cold, quantum_processor, nil, fluoroketone_hot)
    data_recipe[quantum_processor_shattered].order = a_j

    data_item[graphite_shattered].localised_description = show_formula and {chemical_formula, "C"} or nil
    data_item[graphite_shattered].subgroup = is_shattered_recipe
    data_item[graphite_shattered].order = a
    data_item[graphite_shattered].stack_size = 200
    data_item[graphite_shattered].weight = 5000
    data_recipe[graphite_shattered].subgroup = is_shattered_recipe
    data_recipe[graphite_shattered].icons = THREE_I(coal, carbon_angels, graphite_shattered)
    data_recipe[graphite_shattered].order = a

    local promethium_ore = "ske_promethium_ore"
    data_item[promethium_ore].subgroup = is_shattered_recipe
    data_item[promethium_ore].order = b
    data_item[promethium_ore].stack_size = 200
    data_item[promethium_ore].weight = 5000

    local promethium_plate = "ske_prometheum_plate"
    data_item[promethium_plate].subgroup = is_shattered_recipe
    data_item[promethium_plate].order = c
    data_item[promethium_plate].stack_size = 200
    data_item[promethium_plate].weight = 5000
    data_recipe[promethium_plate].subgroup = is_shattered_recipe
    data_recipe[promethium_plate].icons = THREE_P_TWO_I(promethium_ore, graphite_shattered, promethium_plate, nil, lava)
    data_recipe[promethium_plate].order = c
    data_recipe[promethium_plate].main_product = promethium_plate

    local high_density_structure = "ske_high_density_structure"
    data_item[high_density_structure].subgroup = is_shattered_recipe
    data_item[high_density_structure].order = d
    data_item[high_density_structure].stack_size = 200
    data_item[high_density_structure].weight = 5000
    data_recipe[high_density_structure].subgroup = is_shattered_recipe
    data_recipe[high_density_structure].icons = THREE_D_I(promethium_plate, low_density_structure, graphite_shattered, high_density_structure)
    data_recipe[high_density_structure].order = d

    local raw_nanometal = "ske_raw_nanometal"
    data_item[raw_nanometal].subgroup = is_shattered_recipe
    data_item[raw_nanometal].order = e
    data_item[raw_nanometal].stack_size = 200
    data_item[raw_nanometal].weight = 5000

    local raw_nanometal_seperation = "ske_raw_nanometal_seperation"
    data_recipe[raw_nanometal_seperation].subgroup = is_shattered_recipe
    data_recipe[raw_nanometal_seperation].icons = AR_IIFI_ALT_I(promethium_ore, plutonium_242_shattered, nitrogen_angels, raw_nanometal)
    data_recipe[raw_nanometal_seperation].order = e_a

    local processed_nanometal = "ske_processed_nanometal"
    data_item[processed_nanometal].subgroup = is_shattered_recipe
    data_item[processed_nanometal].order = f
    data_item[processed_nanometal].stack_size = 200
    data_item[processed_nanometal].weight = 5000

    local nanometal_processing = "ske_nanometal_processing"
    data_recipe[nanometal_processing].subgroup = is_shattered_recipe
    data_recipe[nanometal_processing].icons = TWO_D_I(raw_nanometal, lava, processed_nanometal, helium_vesta)
    data_recipe[nanometal_processing].order = f_a

    local ingot_nanometal = "ske_ingot_nanometal"
    data_item[ingot_nanometal].subgroup = is_shattered_recipe
    data_item[ingot_nanometal].order = g
    data_item[ingot_nanometal].stack_size = 200
    data_item[ingot_nanometal].weight = 5000

    local nanometal_cooling = "ske_nanometal_cooling"
    data_recipe[nanometal_cooling].subgroup = is_shattered_recipe
    data_recipe[nanometal_cooling].icons = TWO_I(processed_nanometal, ingot_nanometal)
    data_recipe[nanometal_cooling].order = g_a

    local cable_nanometal = "ske_cable_nanometal"
    data_item[cable_nanometal].subgroup = is_shattered_recipe
    data_item[cable_nanometal].order = h
    data_item[cable_nanometal].stack_size = 200
    data_item[cable_nanometal].weight = 5000

    local nanometal_cable = "ske_nanometal_cable"
    data_recipe[nanometal_cable].subgroup = is_shattered_recipe
    data_recipe[nanometal_cable].icons = TWO_I(ingot_nanometal, cable_nanometal)
    data_recipe[nanometal_cable].order = h_a

    local ultra_density_structure = "ske_ultra_density_structure"
    data_item[ultra_density_structure].subgroup = is_shattered_recipe
    data_item[ultra_density_structure].order = i
    data_item[ultra_density_structure].stack_size = 200
    data_item[ultra_density_structure].weight = 5000

    local nanometal_structure = "ske_nanometal_structure"
    data_recipe[nanometal_structure].subgroup = is_shattered_recipe
    data_recipe[nanometal_structure].icons = AR_FOUR_ALT_I(high_density_structure, ingot_nanometal, tungsten_plate_bob, ultra_density_structure)
    data_recipe[nanometal_structure].order = i_a

    local magnetic_capsule = "ske_magnetic_capsule"
    data_item[magnetic_capsule].subgroup = is_shattered_recipe
    data_item[magnetic_capsule].order = j
    data_item[magnetic_capsule].stack_size = 200
    data_item[magnetic_capsule].weight = 5000
    data_recipe[magnetic_capsule].subgroup = is_shattered_recipe
    data_recipe[magnetic_capsule].icons = AR_FOUR_ALT_I(ultra_density_structure, copper_cable, holmium_plate, magnetic_capsule)
    data_recipe[magnetic_capsule].order = j

    data_fluid[neon_mods].localised_description = show_formula and {chemical_formula, "Ne"} or nil
    data_fluid[neon_mods].subgroup = is_shattered_recipe_promethium
    data_fluid[neon_mods].order = a

    data_fluid[argon_mods].localised_description = show_formula and {chemical_formula, "Ar"} or nil
    data_fluid[argon_mods].subgroup = is_shattered_recipe_promethium
    data_fluid[argon_mods].order = b

    data_fluid[krypton_mods].localised_description = show_formula and {chemical_formula, "Kr"} or nil
    data_fluid[krypton_mods].subgroup = is_shattered_recipe_promethium
    data_fluid[krypton_mods].order = c

    data_fluid[xenon_mods].localised_description = show_formula and {chemical_formula, "Xe"} or nil
    data_fluid[xenon_mods].subgroup = is_shattered_recipe_promethium
    data_fluid[xenon_mods].order = d

    local xenon_seperation = "ske_xenon_seperation"
    data_recipe[xenon_seperation].subgroup = is_shattered_recipe_promethium
    data_recipe[xenon_seperation].icons = FOUR_R_I(water, oxygen_angels, xenon_mods, hydrogen_angels)
    data_recipe[xenon_seperation].order = d_a

    local noble_gas_seperation = "ske_noble_gas_seperation"
    data_recipe[noble_gas_seperation].subgroup = is_shattered_recipe_promethium
    data_recipe[noble_gas_seperation].icons = FOUR_R_I(water, neon_mods, argon_mods, krypton_mods)
    data_recipe[noble_gas_seperation].order = d_b

    local helium_loop = "ske_helium_loop"
    data_recipe[helium_loop].subgroup = is_shattered_recipe_promethium
    data_recipe[helium_loop].icons = THREE_I(slurry_oxide_shattered, helium_vesta, helium_vesta)
    data_recipe[helium_loop].order = d_c

    local helium_capsule = "ske_helium_capsule"
    data_item[helium_capsule].localised_description = show_formula and {chemical_formula, "He"} or nil
    data_item[helium_capsule].subgroup = is_shattered_recipe_promethium
    data_item[helium_capsule].order = e
    data_item[helium_capsule].stack_size = 200
    data_item[helium_capsule].weight = 5000
    data_recipe[helium_capsule].subgroup = is_shattered_recipe_promethium
    data_recipe[helium_capsule].icons = AR_FOUR_ALT_I(iron_plate, copper_cable, helium_vesta, helium_capsule)
    data_recipe[helium_capsule].order = e

    local xenon_capsule = "ske_xenon_capsule"
    data_item[xenon_capsule].localised_description = show_formula and {chemical_formula, "Xe"} or nil
    data_item[xenon_capsule].subgroup = is_shattered_recipe_promethium
    data_item[xenon_capsule].order = f
    data_item[xenon_capsule].stack_size = 200
    data_item[xenon_capsule].weight = 5000
    data_recipe[xenon_capsule].subgroup = is_shattered_recipe_promethium
    data_recipe[xenon_capsule].icons = AR_FOUR_ALT_I(iron_plate, copper_cable, xenon_mods, xenon_capsule)
    data_recipe[xenon_capsule].order = f

    local ultra_dense_magnetic_capsule = "ske_ultra_dense_magnetic_capsule"
    data_item[ultra_dense_magnetic_capsule].subgroup = is_shattered_recipe_promethium
    data_item[ultra_dense_magnetic_capsule].order = g
    data_item[ultra_dense_magnetic_capsule].stack_size = 200
    data_item[ultra_dense_magnetic_capsule].weight = 5000

    local ultra_magnetic_capsule = "ske_ultra_magnetic_capsule"
    data_recipe[ultra_magnetic_capsule].subgroup = is_shattered_recipe_promethium
    data_recipe[ultra_magnetic_capsule].icons = AR_FOUR_ALT_I("battery-mk3-equipment", ultra_density_structure, iron_plate, ultra_dense_magnetic_capsule)
    data_recipe[ultra_magnetic_capsule].order = g_a

    local noble_charged_ultradense_canister = "ske_noble_charged_ultradense_canister"
    data_item[noble_charged_ultradense_canister].subgroup = is_shattered_recipe_promethium
    data_item[noble_charged_ultradense_canister].order = h
    data_item[noble_charged_ultradense_canister].stack_size = 200
    data_item[noble_charged_ultradense_canister].weight = 5000

    local noble_magnetic_capsule = "ske_noble_magnetic_capsule"
    data_recipe[noble_magnetic_capsule].subgroup = is_shattered_recipe_promethium
    data_recipe[noble_magnetic_capsule].icons = TWO_FIVE_I(ultra_dense_magnetic_capsule, neon_mods, argon_mods, krypton_mods, helium_capsule, xenon_capsule, noble_charged_ultradense_canister)
    data_recipe[noble_magnetic_capsule].order = h_a

    local compressed_promethium = "ske_compressed_promethium"
    data_item[compressed_promethium].subgroup = is_shattered_recipe_promethium
    data_item[compressed_promethium].order = i
    data_item[compressed_promethium].stack_size = 200
    data_item[compressed_promethium].weight = 5000

    local promethium_x10 = "ske_promethium_x10"
    data_recipe[promethium_x10].subgroup = is_shattered_recipe_promethium
    data_recipe[promethium_x10].icons = TWO_I(promethium_asteroid_chunk, compressed_promethium)
    data_recipe[promethium_x10].order = i_a

    local dense_promethium = "ske_dense_promethium"
    data_item[dense_promethium].subgroup = is_shattered_recipe_promethium
    data_item[dense_promethium].order = j
    data_item[dense_promethium].stack_size = 200
    data_item[dense_promethium].weight = 5000

    local promethium_x100 = "ske_promethium_x100"
    data_recipe[promethium_x100].subgroup = is_shattered_recipe_promethium
    data_recipe[promethium_x100].icons = TWO_I(compressed_promethium, dense_promethium)
    data_recipe[promethium_x100].order = j_a

    local super_dense_promethium = "ske_super_dense_promethium"
    data_item[super_dense_promethium].subgroup = is_shattered_recipe_promethium
    data_item[super_dense_promethium].order = k
    data_item[super_dense_promethium].stack_size = 200
    data_item[super_dense_promethium].weight = 5000

    local promethium_x1000 = "ske_promethium_x1000"
    data_recipe[promethium_x1000].subgroup = is_shattered_recipe_promethium
    data_recipe[promethium_x1000].icons = TWO_I(dense_promethium, super_dense_promethium)
    data_recipe[promethium_x1000].order = k_a

    local neutronium = "ske_neutronium"
    data_item[neutronium].localised_description = show_formula and {chemical_formula, "n"} or nil
    data_item[neutronium].subgroup = is_shattered_recipe_promethium
    data_item[neutronium].order = l
    data_item[neutronium].stack_size = 200
    data_item[neutronium].weight = 5000

    local promethium_x10000 = "ske_promethium_x10000"
    data_recipe[promethium_x10000].subgroup = is_shattered_recipe_promethium
    data_recipe[promethium_x10000].icons = TWO_D_I(super_dense_promethium, supermagnetic_vesta, neutronium, xenon_mods)
    data_recipe[promethium_x10000].order = l_a

    local dark_matter = "ske_dark_matter"
    data_item[dark_matter].subgroup = is_shattered_recipe_promethium
    data_item[dark_matter].order = m
    data_item[dark_matter].stack_size = 200
    data_item[dark_matter].weight = 5000
    data_recipe[dark_matter].subgroup = is_shattered_recipe_promethium
    data_recipe[dark_matter].icons = THREE_I(magnetic_capsule, neutronium, dark_matter)
    data_recipe[dark_matter].order = m

    local antimatter = "ske_antimatter"
    data_item[antimatter].subgroup = is_shattered_recipe_promethium
    data_item[antimatter].order = n
    data_item[antimatter].stack_size = 200
    data_item[antimatter].weight = 5000
    data_recipe[antimatter].subgroup = is_shattered_recipe_promethium
    data_recipe[antimatter].icons = THREE_I(noble_charged_ultradense_canister, dark_matter, antimatter)
    data_recipe[antimatter].order = n

    local transformation_gin = "recipe_transformation_gin"
    data_item[transformation_gin].subgroup = is_shattered_recipe_transformation
    data_item[transformation_gin].order = a
    data_item[transformation_gin].stack_size = 32
    data_item[transformation_gin].weight = 31250
    data_recipe[transformation_gin].subgroup = is_shattered_recipe_transformation
    data_recipe[transformation_gin].icons = R_P_I(transformation_gin, planet_shattered)
    data_recipe[transformation_gin].order = a
    data_assembling[transformation_gin].subgroup = is_shattered_recipe_transformation
    data_assembling[transformation_gin].order = a

    local turbo_transport_belt_shattered = "turbo-transport-belt-shattered"
    data_recipe[turbo_transport_belt_shattered].subgroup = is_shattered_recipe_transformation
    data_recipe[turbo_transport_belt_shattered].icons = R_P_I(turbo_transport_belt, planet_shattered)
    data_recipe[turbo_transport_belt_shattered].order = a_a

    local turbo_underground_belt_shattered = "turbo-underground-belt-shattered"
    data_recipe[turbo_underground_belt_shattered].subgroup = is_shattered_recipe_transformation
    data_recipe[turbo_underground_belt_shattered].icons = R_P_I(turbo_underground_belt, planet_shattered)
    data_recipe[turbo_underground_belt_shattered].order = a_b

    local turbo_splitter_shattered = "turbo-splitter-shattered"
    data_recipe[turbo_splitter_shattered].subgroup = is_shattered_recipe_transformation
    data_recipe[turbo_splitter_shattered].icons = R_P_I(turbo_splitter, planet_shattered)
    data_recipe[turbo_splitter_shattered].order = a_c

    local tungsten_shattered = "ske_tungsten"
    data_recipe[tungsten_shattered].subgroup = is_shattered_recipe_transformation
    data_recipe[tungsten_shattered].icons = THREE_ITEM_I(neptunium_237_shattered, steel_plate, tungsten_plate_bob)
    data_recipe[tungsten_shattered].order = a_d

    local tungsten_carbide_shattered = "ske_carbide"
    data_recipe[tungsten_carbide_shattered].subgroup = is_shattered_recipe_transformation
    data_recipe[tungsten_carbide_shattered].icons = THREE_D_I(iron_ore, uranium_238, carbon_angels, tungsten_carbide_bob)
    data_recipe[tungsten_carbide_shattered].order = a_e

    data_fluid[brine_shattered].subgroup = is_shattered_recipe_transformation
    data_fluid[brine_shattered].order = b

    local brine_shattered_recipe = "ske_brine_rtg"
    data_recipe[brine_shattered_recipe].subgroup = is_shattered_recipe_transformation
    data_recipe[brine_shattered_recipe].icons = THREE_I(uranium_238, water, brine_shattered)
    data_recipe[brine_shattered_recipe].order = b_a

    local lithium_brine_shattered = "ske_lithium_brine"
    data_recipe[lithium_brine_shattered].subgroup = is_shattered_recipe_transformation
    data_recipe[lithium_brine_shattered].icons = THREE_I(uranium_238, brine_shattered, water_thermal_angels)
    data_recipe[lithium_brine_shattered].order = b_c

    local fluorine_shattered = "ske_fluorine"
    data_recipe[fluorine_shattered].subgroup = is_shattered_recipe_transformation
    data_recipe[fluorine_shattered].icons = THREE_I(uranium_238, calcite, fluorine)
    data_recipe[fluorine_shattered].order = c

    local isotope_seperation_facility = "isotope_seperation_facility"
    data_item[isotope_seperation_facility].subgroup = is_shattered_building
    data_item[isotope_seperation_facility].order = a
    data_item[isotope_seperation_facility].stack_size = 32
    data_item[isotope_seperation_facility].weight = 31250
    data_recipe[isotope_seperation_facility].subgroup = is_shattered_building
    data_recipe[isotope_seperation_facility].order = a
    data_assembling[isotope_seperation_facility].subgroup = is_shattered_building
    data_assembling[isotope_seperation_facility].order = a

    local isotope_mixing_tower = "isotope_mixing_tower"
    data_item[isotope_mixing_tower].subgroup = is_shattered_building
    data_item[isotope_mixing_tower].order = b
    data_item[isotope_mixing_tower].stack_size = 32
    data_item[isotope_mixing_tower].weight = 31250
    data_recipe[isotope_mixing_tower].subgroup = is_shattered_building
    data_recipe[isotope_mixing_tower].order = b
    data_assembling[isotope_mixing_tower].subgroup = is_shattered_building
    data_assembling[isotope_mixing_tower].order = b

    local decay_hastener = "decay_hastener"
    data_item[decay_hastener].subgroup = is_shattered_building
    data_item[decay_hastener].order = c
    data_item[decay_hastener].stack_size = 32
    data_item[decay_hastener].weight = 31250
    data_recipe[decay_hastener].subgroup = is_shattered_building
    data_recipe[decay_hastener].order = c
    data_furnace[decay_hastener].subgroup = is_shattered_building
    data_furnace[decay_hastener].order = c

    local pressurization_chamber = "pressurization_chamber"
    data_item[pressurization_chamber].subgroup = is_shattered_building
    data_item[pressurization_chamber].order = d
    data_item[pressurization_chamber].stack_size = 32
    data_item[pressurization_chamber].weight = 31250
    data_recipe[pressurization_chamber].subgroup = is_shattered_building
    data_recipe[pressurization_chamber].order = d
    data_furnace[pressurization_chamber].subgroup = is_shattered_building
    data_furnace[pressurization_chamber].order = d

    local pearl_realizer = "pearl_realizer"
    data_item[pearl_realizer].subgroup = is_shattered_building
    data_item[pearl_realizer].order = e
    data_item[pearl_realizer].stack_size = 32
    data_item[pearl_realizer].weight = 31250
    data_recipe[pearl_realizer].subgroup = is_shattered_building
    data_recipe[pearl_realizer].order = e
    data_lab[pearl_realizer].subgroup = is_shattered_building
    data_lab[pearl_realizer].order = e

    data_tool[heu_science_pack].subgroup = is_shattered_building
    data_tool[heu_science_pack].order = f
    data_recipe[heu_science_pack].subgroup = is_shattered_building
    data_recipe[heu_science_pack].order = f

    data_tool[hep_science_pack].subgroup = is_shattered_building
    data_tool[hep_science_pack].order = g
    data_recipe[hep_science_pack].subgroup = is_shattered_building
    data_recipe[hep_science_pack].order = g

    data_tool[hea_science_pack].subgroup = is_shattered_building
    data_tool[hea_science_pack].order = h
    data_recipe[hea_science_pack].subgroup = is_shattered_building
    data_recipe[hea_science_pack].order = h

    data_tool[hec_science_pack].subgroup = is_shattered_building
    data_tool[hec_science_pack].order = i
    data_recipe[hec_science_pack].subgroup = is_shattered_building
    data_recipe[hec_science_pack].order = i
    data_recipe[hec_science_pack].main_product = hec_science_pack

    data_tool[hef_science_pack].subgroup = is_shattered_building
    data_tool[hef_science_pack].order = j
    data_recipe[hef_science_pack].subgroup = is_shattered_building
    data_recipe[hef_science_pack].order = j

    data_tool[antimatter_cell].subgroup = is_shattered_building
    data_tool[antimatter_cell].order = k
    data_recipe[antimatter_cell].subgroup = is_shattered_building
    data_recipe[antimatter_cell].order = k

    -- Th-232
    data_item[thorium_shattered].localised_name = {"item-name.thorium-232"}
    data_item[thorium_shattered].localised_description = show_formula and {chemical_formula, "Th-232"} or nil
    data_item[thorium_shattered].subgroup = is_shattered_thorium
    data_item[thorium_shattered].order = a
    data_item[thorium_shattered].stack_size = 200
    data_item[thorium_shattered].weight = 5000

    local thorium_extraction = "ske_thorium_extraction"
    data_recipe[thorium_extraction].subgroup = is_shattered_thorium
    data_recipe[thorium_extraction].icons = THREE_I(promethium_ore, hydrogen_angels, thorium_shattered)
    data_recipe[thorium_extraction].order = a_a

    local tbu_232 = "ske_tbu_232"
    data_item[tbu_232].localised_description = show_formula and {chemical_formula, "Th-232"} or nil
    data_item[tbu_232].subgroup = is_shattered_thorium
    data_item[tbu_232].order = b
    data_item[tbu_232].stack_size = 50
    data_item[tbu_232].weight = 20000
    data_recipe[tbu_232].subgroup = is_shattered_thorium
    data_recipe[tbu_232].icons = TWO_I(thorium_shattered, tbu_232)
    data_recipe[tbu_232].order = b

    local tbu_232_decayed = "ske_tbu_232_decayed"
    data_item[tbu_232_decayed].localised_description = show_formula and {chemical_formula, "Th-232"} or nil
    data_item[tbu_232_decayed].subgroup = is_shattered_thorium
    data_item[tbu_232_decayed].order = c
    data_item[tbu_232_decayed].stack_size = 50
    data_item[tbu_232_decayed].weight = 20000
    data_recipe[tbu_232_decayed].subgroup = is_shattered_thorium
    data_recipe[tbu_232_decayed].icons = TWO_I(tbu_232, tbu_232_decayed)
    data_recipe[tbu_232_decayed].order = c

    local tbu_232_reprocess = "ske_tbu_232_reprocess"
    data_recipe[tbu_232_reprocess].subgroup = is_shattered_thorium
    data_recipe[tbu_232_reprocess].icons = FOUR_D_I(tbu_232_decayed, nil, nil, nil, uranium_233_tiny, uranium_235_tiny, neptunium_236_tiny, neptunium_237_tiny)
    data_recipe[tbu_232_reprocess].order = d

    -- U-233
    data_item[uranium_233_tiny].localised_description = show_formula and {chemical_formula, "U-233"} or nil
    data_item[uranium_233_tiny].subgroup = is_shattered_uranium_233
    data_item[uranium_233_tiny].order = a
    data_item[uranium_233_tiny].stack_size = 200
    data_item[uranium_233_tiny].weight = 5000

    data_item[uranium_233_shattered].localised_description = show_formula and {chemical_formula, "U-233"} or nil
    data_item[uranium_233_shattered].subgroup = is_shattered_uranium_233
    data_item[uranium_233_shattered].order = b
    data_item[uranium_233_shattered].stack_size = 200
    data_item[uranium_233_shattered].weight = 5000
    data_recipe[uranium_233_shattered].subgroup = is_shattered_uranium_233
    data_recipe[uranium_233_shattered].icons = TWO_ITEM_I(uranium_233_tiny, uranium_233_shattered)
    data_recipe[uranium_233_shattered].order = b

    data_fluid[uranium_233_shattered].localised_description = show_formula and {chemical_formula, "U-233"} or nil
    data_fluid[uranium_233_shattered].subgroup = is_shattered_uranium_233
    data_fluid[uranium_233_shattered].order = c

    local uranium_233_tiny_fluid = "ske_uranium_233_tiny_fluid"
    data_recipe[uranium_233_tiny_fluid].subgroup = is_shattered_uranium_233
    data_recipe[uranium_233_tiny_fluid].icons = ITEM_FLUID_I(uranium_233_tiny, uranium_233_shattered)
    data_recipe[uranium_233_tiny_fluid].order = c_a

    local uranium_233_fluid = "ske_uranium_233_fluid"
    data_recipe[uranium_233_fluid].subgroup = is_shattered_uranium_233
    data_recipe[uranium_233_fluid].icons = ITEM_FLUID_I(uranium_233_shattered, uranium_233_shattered)
    data_recipe[uranium_233_fluid].order = c_b

    local uranium_233_reform = "ske_uranium_233_reform"
    data_recipe[uranium_233_reform].subgroup = is_shattered_uranium_233
    data_recipe[uranium_233_reform].icons = FLUID_ITEM_I(uranium_233_shattered, uranium_233_shattered)
    data_recipe[uranium_233_reform].order = c_c

    local heu_233 = "ske_heu_233"
    data_item[heu_233].localised_description = show_formula and {chemical_formula, "U-233"} or nil
    data_item[heu_233].subgroup = is_shattered_uranium_233
    data_item[heu_233].order = d
    data_item[heu_233].stack_size = 50
    data_item[heu_233].weight = 20000
    data_recipe[heu_233].subgroup = is_shattered_uranium_233
    data_recipe[heu_233].icons = THREE_ITEM_I(uranium_238, uranium_233_shattered, heu_233)
    data_recipe[heu_233].order = d

    local heu_233_oxide = "ske_heu_233_oxide"
    data_item[heu_233_oxide].localised_description = show_formula and {chemical_formula, "UO[font=default-tiny-bold]2[/font]-233"} or nil
    data_item[heu_233_oxide].subgroup = is_shattered_uranium_233
    data_item[heu_233_oxide].order = e
    data_item[heu_233_oxide].stack_size = 50
    data_item[heu_233_oxide].weight = 20000
    data_recipe[heu_233_oxide].subgroup = is_shattered_uranium_233
    data_recipe[heu_233_oxide].icons = THREE_I(heu_233, oxygen_angels, heu_233_oxide)
    data_recipe[heu_233_oxide].order = e

    local heu_233_decayed = "ske_heu_233_decayed"
    data_item[heu_233_decayed].localised_description = show_formula and {chemical_formula, "U-233"} or nil
    data_item[heu_233_decayed].subgroup = is_shattered_uranium_233
    data_item[heu_233_decayed].order = f
    data_item[heu_233_decayed].stack_size = 50
    data_item[heu_233_decayed].weight = 20000
    data_recipe[heu_233_decayed].subgroup = is_shattered_uranium_233
    data_recipe[heu_233_decayed].icons = TWO_I(heu_233_oxide, heu_233_decayed)
    data_recipe[heu_233_decayed].order = f

    local heu_233_reprocess = "ske_heu_233_reprocess"
    data_recipe[heu_233_reprocess].subgroup = is_shattered_uranium_233
    data_recipe[heu_233_reprocess].icons = FOUR_D_I(heu_233_decayed, nil, nil, nil, neptunium_236_tiny, neptunium_237_tiny, plutonium_242_tiny, americium_243_tiny)
    data_recipe[heu_233_reprocess].order = g

    local heu_233_train = "ske_heu_233_train"
    data_item[heu_233_train].localised_description = show_formula and {chemical_formula, "U-233"} or nil
    data_item[heu_233_train].subgroup = is_shattered_uranium_233
    data_item[heu_233_train].order = h
    data_item[heu_233_train].stack_size = 50
    data_item[heu_233_train].weight = 20000
    data_recipe[heu_233_train].subgroup = is_shattered_uranium_233
    data_recipe[heu_233_train].icons = THREE_FFI_I(uranium_233_shattered, uranium_238_shattered, heu_233_train)
    data_recipe[heu_233_train].order = h

    -- U-235
    data_item[uranium_235_tiny].localised_description = show_formula and {chemical_formula, "U-235"} or nil
    data_item[uranium_235_tiny].subgroup = is_shattered_uranium_235
    data_item[uranium_235_tiny].order = a
    data_item[uranium_235_tiny].stack_size = 200
    data_item[uranium_235_tiny].weight = 5000

    data_recipe[uranium_235_shattered].subgroup = is_shattered_uranium_235
    data_recipe[uranium_235_shattered].icons = TWO_ITEM_I(uranium_235_tiny, uranium_235)
    data_recipe[uranium_235_shattered].order = b

    data_fluid[uranium_235_shattered].localised_description = show_formula and {chemical_formula, "U-235"} or nil
    data_fluid[uranium_235_shattered].subgroup = is_shattered_uranium_235
    data_fluid[uranium_235_shattered].order = c

    local uranium_235_tiny_fluid = "ske_uranium_235_tiny_fluid"
    data_recipe[uranium_235_tiny_fluid].subgroup = is_shattered_uranium_235
    data_recipe[uranium_235_tiny_fluid].icons = ITEM_FLUID_I(uranium_235_tiny, uranium_235_shattered)
    data_recipe[uranium_235_tiny_fluid].order = c_a

    local uranium_235_fluid = "ske_uranium_235_fluid"
    data_recipe[uranium_235_fluid].subgroup = is_shattered_uranium_235
    data_recipe[uranium_235_fluid].icons = ITEM_FLUID_I(uranium_235, uranium_235_shattered)
    data_recipe[uranium_235_fluid].order = c_b

    local uranium_235_reform = "ske_uranium_235_reform"
    data_recipe[uranium_235_reform].subgroup = is_shattered_uranium_235
    data_recipe[uranium_235_reform].icons = FLUID_ITEM_I(uranium_235_shattered, uranium_235)
    data_recipe[uranium_235_reform].order = c_c

    local heu_235 = "ske_heu_235"
    data_item[heu_235].localised_description = show_formula and {chemical_formula, "U-235"} or nil
    data_item[heu_235].subgroup = is_shattered_uranium_235
    data_item[heu_235].order = d
    data_item[heu_235].stack_size = 50
    data_item[heu_235].weight = 20000
    data_recipe[heu_235].subgroup = is_shattered_uranium_235
    data_recipe[heu_235].icons = THREE_ITEM_I(uranium_238, uranium_235, heu_235)
    data_recipe[heu_235].order = d

    local heu_235_oxide = "ske_heu_235_oxide"
    data_item[heu_235_oxide].localised_description = show_formula and {chemical_formula, "UO[font=default-tiny-bold]2[/font]-235"} or nil
    data_item[heu_235_oxide].subgroup = is_shattered_uranium_235
    data_item[heu_235_oxide].order = e
    data_item[heu_235_oxide].stack_size = 50
    data_item[heu_235_oxide].weight = 20000
    data_recipe[heu_235_oxide].subgroup = is_shattered_uranium_235
    data_recipe[heu_235_oxide].icons = THREE_I(heu_235, oxygen_angels, heu_235_oxide)
    data_recipe[heu_235_oxide].order = e

    local heu_235_decayed = "ske_heu_235_decayed"
    data_item[heu_235_decayed].localised_description = show_formula and {chemical_formula, "U-235"} or nil
    data_item[heu_235_decayed].subgroup = is_shattered_uranium_235
    data_item[heu_235_decayed].order = f
    data_item[heu_235_decayed].stack_size = 50
    data_item[heu_235_decayed].weight = 20000
    data_recipe[heu_235_decayed].subgroup = is_shattered_uranium_235
    data_recipe[heu_235_decayed].icons = TWO_I(heu_235_oxide, heu_235_decayed)
    data_recipe[heu_235_decayed].order = f

    local heu_235_reprocess = "ske_heu_235_reprocess"
    data_recipe[heu_235_reprocess].subgroup = is_shattered_uranium_235
    data_recipe[heu_235_reprocess].icons = FOUR_D_I(heu_235_decayed, nil, nil, nil, uranium_238_tiny, neptunium_237_tiny, plutonium_239_tiny, plutonium_242_tiny)
    data_recipe[heu_235_reprocess].order = g

    -- U-238
    data_item[uranium_238_tiny].localised_description = show_formula and {chemical_formula, "U-238"} or nil
    data_item[uranium_238_tiny].subgroup = is_shattered_uranium_238
    data_item[uranium_238_tiny].order = a
    data_item[uranium_238_tiny].stack_size = 200
    data_item[uranium_238_tiny].weight = 5000

    data_recipe[uranium_238_shattered].subgroup = is_shattered_uranium_238
    data_recipe[uranium_238_shattered].icons = TWO_ITEM_I(uranium_238_tiny, uranium_238)
    data_recipe[uranium_238_shattered].order = b

    data_fluid[uranium_238_shattered].localised_description = show_formula and {chemical_formula, "U-238"} or nil
    data_fluid[uranium_238_shattered].subgroup = is_shattered_uranium_238
    data_fluid[uranium_238_shattered].order = c

    local uranium_238_tiny_fluid = "ske_uranium_238_tiny_fluid"
    data_recipe[uranium_238_tiny_fluid].subgroup = is_shattered_uranium_238
    data_recipe[uranium_238_tiny_fluid].icons = ITEM_FLUID_I(uranium_238_tiny, uranium_238_shattered)
    data_recipe[uranium_238_tiny_fluid].order = c_a

    local uranium_238_fluid = "ske_uranium_238_fluid"
    data_recipe[uranium_238_fluid].subgroup = is_shattered_uranium_238
    data_recipe[uranium_238_fluid].icons = ITEM_FLUID_I(uranium_238, uranium_238_shattered)
    data_recipe[uranium_238_fluid].order = c_b

    local uranium_238_reform = "ske_uranium_238_reform"
    data_recipe[uranium_238_reform].subgroup = is_shattered_uranium_238
    data_recipe[uranium_238_reform].icons = FLUID_ITEM_I(uranium_238_shattered, uranium_238)
    data_recipe[uranium_238_reform].order = c_c

    -- Pu-238
    data_item[plutonium_238_tiny].localised_description = show_formula and {chemical_formula, "Pu-238"} or nil
    data_item[plutonium_238_tiny].subgroup = is_shattered_plutonium_238
    data_item[plutonium_238_tiny].order = a
    data_item[plutonium_238_tiny].stack_size = 200
    data_item[plutonium_238_tiny].weight = 5000

    data_item[plutonium_238_shattered].localised_description = show_formula and {chemical_formula, "Pu-238"} or nil
    data_item[plutonium_238_shattered].subgroup = is_shattered_plutonium_238
    data_item[plutonium_238_shattered].order = b
    data_item[plutonium_238_shattered].stack_size = 200
    data_item[plutonium_238_shattered].weight = 5000
    data_recipe[plutonium_238_shattered].subgroup = is_shattered_plutonium_238
    data_recipe[plutonium_238_shattered].icons = TWO_ITEM_I(plutonium_238_tiny, plutonium_238_shattered)
    data_recipe[plutonium_238_shattered].order = b

    data_fluid[plutonium_238_shattered].localised_description = show_formula and {chemical_formula, "Pu-238"} or nil
    data_fluid[plutonium_238_shattered].subgroup = is_shattered_plutonium_238
    data_fluid[plutonium_238_shattered].order = g

    local plutonium_238_tiny_fluid = "ske_plutonium_238_tiny_fluid"
    data_recipe[plutonium_238_tiny_fluid].subgroup = is_shattered_plutonium_238
    data_recipe[plutonium_238_tiny_fluid].icons = ITEM_FLUID_I(plutonium_238_tiny, plutonium_238_shattered)
    data_recipe[plutonium_238_tiny_fluid].order = g_a

    local plutonium_238_fluid = "ske_plutonium_238_fluid"
    data_recipe[plutonium_238_fluid].subgroup = is_shattered_plutonium_238
    data_recipe[plutonium_238_fluid].icons = ITEM_FLUID_I(plutonium_238_shattered, plutonium_238_shattered)
    data_recipe[plutonium_238_fluid].order = g_b

    local plutonium_238_reform = "ske_plutonium_238_reform"
    data_recipe[plutonium_238_reform].subgroup = is_shattered_plutonium_238
    data_recipe[plutonium_238_reform].icons = FLUID_ITEM_I(plutonium_238_shattered, plutonium_238_shattered)
    data_recipe[plutonium_238_reform].order = g_c

    -- Pu-239
    data_item[plutonium_239_tiny].localised_description = show_formula and {chemical_formula, "Pu-239"} or nil
    data_item[plutonium_239_tiny].subgroup = is_shattered_plutonium_239
    data_item[plutonium_239_tiny].order = a
    data_item[plutonium_239_tiny].stack_size = 200
    data_item[plutonium_239_tiny].weight = 5000

    data_item[plutonium_239_shattered].localised_description = show_formula and {chemical_formula, "Pu-239"} or nil
    data_item[plutonium_239_shattered].subgroup = is_shattered_plutonium_239
    data_item[plutonium_239_shattered].order = b
    data_item[plutonium_239_shattered].stack_size = 200
    data_item[plutonium_239_shattered].weight = 5000
    data_recipe[plutonium_239_shattered].subgroup = is_shattered_plutonium_239
    data_recipe[plutonium_239_shattered].icons = TWO_ITEM_I(plutonium_239_tiny, plutonium_239_shattered)
    data_recipe[plutonium_239_shattered].order = b

    data_fluid[plutonium_239_shattered].localised_description = show_formula and {chemical_formula, "Pu-239"} or nil
    data_fluid[plutonium_239_shattered].subgroup = is_shattered_plutonium_239
    data_fluid[plutonium_239_shattered].order = c

    local plutonium_239_tiny_fluid = "ske_plutonium_239_tiny_fluid"
    data_recipe[plutonium_239_tiny_fluid].subgroup = is_shattered_plutonium_239
    data_recipe[plutonium_239_tiny_fluid].icons = ITEM_FLUID_I(plutonium_239_tiny, plutonium_239_shattered)
    data_recipe[plutonium_239_tiny_fluid].order = c_a

    local plutonium_239_fluid = "ske_plutonium_239_fluid"
    data_recipe[plutonium_239_fluid].subgroup = is_shattered_plutonium_239
    data_recipe[plutonium_239_fluid].icons = ITEM_FLUID_I(plutonium_239_shattered, plutonium_239_shattered)
    data_recipe[plutonium_239_fluid].order = c_b

    local plutonium_239_reform = "ske_plutonium_239_reform"
    data_recipe[plutonium_239_reform].subgroup = is_shattered_plutonium_239
    data_recipe[plutonium_239_reform].icons = FLUID_ITEM_I(plutonium_239_shattered, plutonium_239_shattered)
    data_recipe[plutonium_239_reform].order = c_c

    local hep_239 = "ske_hep_239"
    data_item[hep_239].localised_description = show_formula and {chemical_formula, "Pu-239"} or nil
    data_item[hep_239].subgroup = is_shattered_plutonium_239
    data_item[hep_239].order = d
    data_item[hep_239].stack_size = 50
    data_item[hep_239].weight = 20000
    data_recipe[hep_239].subgroup = is_shattered_plutonium_239
    data_recipe[hep_239].icons = THREE_ITEM_I(plutonium_239_shattered, plutonium_242_shattered, hep_239)
    data_recipe[hep_239].order = d

    local hep_239_oxide = "ske_hep_239_oxide"
    data_item[hep_239_oxide].localised_description = show_formula and {chemical_formula, "PuO[font=default-tiny-bold]2[/font]-239"} or nil
    data_item[hep_239_oxide].subgroup = is_shattered_plutonium_239
    data_item[hep_239_oxide].order = e
    data_item[hep_239_oxide].stack_size = 50
    data_item[hep_239_oxide].weight = 20000
    data_recipe[hep_239_oxide].subgroup = is_shattered_plutonium_239
    data_recipe[hep_239_oxide].icons = THREE_I(hep_239, oxygen_angels, hep_239_oxide)
    data_recipe[hep_239_oxide].order = e

    local hep_239_decayed = "ske_hep_239_decayed"
    data_item[hep_239_decayed].localised_description = show_formula and {chemical_formula, "Pu-239"} or nil
    data_item[hep_239_decayed].subgroup = is_shattered_plutonium_239
    data_item[hep_239_decayed].order = f
    data_item[hep_239_decayed].stack_size = 50
    data_item[hep_239_decayed].weight = 20000
    data_recipe[hep_239_decayed].subgroup = is_shattered_plutonium_239
    data_recipe[hep_239_decayed].icons = TWO_I(hep_239_oxide, hep_239_decayed)
    data_recipe[hep_239_decayed].order = f

    local hep_239_reprocess = "ske_hep_239_reprocess"
    data_recipe[hep_239_reprocess].subgroup = is_shattered_plutonium_239
    data_recipe[hep_239_reprocess].icons = FOUR_D_I(hep_239_decayed, nil, nil, nil, americium_241_tiny, americium_242_tiny, curium_245_tiny, curium_246_tiny)
    data_recipe[hep_239_reprocess].order = g

    local hep_239_train = "ske_hep_239_train"
    data_item[hep_239_train].localised_description = show_formula and {chemical_formula, "Pu-239"} or nil
    data_item[hep_239_train].subgroup = is_shattered_plutonium_239
    data_item[hep_239_train].order = h
    data_item[hep_239_train].stack_size = 50
    data_item[hep_239_train].weight = 20000
    data_recipe[hep_239_train].subgroup = is_shattered_plutonium_239
    data_recipe[hep_239_train].icons = THREE_FFI_I(plutonium_239_shattered, plutonium_242_shattered, hep_239_train)
    data_recipe[hep_239_train].order = h

    -- Pu-241
    data_item[plutonium_241_tiny].localised_description = show_formula and {chemical_formula, "Pu-241"} or nil
    data_item[plutonium_241_tiny].subgroup = is_shattered_plutonium_241
    data_item[plutonium_241_tiny].order = a
    data_item[plutonium_241_tiny].stack_size = 200
    data_item[plutonium_241_tiny].weight = 5000

    data_item[plutonium_241_shattered].localised_description = show_formula and {chemical_formula, "Pu-241"} or nil
    data_item[plutonium_241_shattered].subgroup = is_shattered_plutonium_241
    data_item[plutonium_241_shattered].order = b
    data_item[plutonium_241_shattered].stack_size = 200
    data_item[plutonium_241_shattered].weight = 5000
    data_recipe[plutonium_241_shattered].subgroup = is_shattered_plutonium_241
    data_recipe[plutonium_241_shattered].icons = TWO_ITEM_I(plutonium_241_tiny, plutonium_241_shattered)
    data_recipe[plutonium_241_shattered].order = b

    data_fluid[plutonium_241_shattered].localised_description = show_formula and {chemical_formula, "Pu-241"} or nil
    data_fluid[plutonium_241_shattered].subgroup = is_shattered_plutonium_241
    data_fluid[plutonium_241_shattered].order = c

    local plutonium_241_tiny_fluid = "ske_plutonium_241_tiny_fluid"
    data_recipe[plutonium_241_tiny_fluid].subgroup = is_shattered_plutonium_241
    data_recipe[plutonium_241_tiny_fluid].icons = ITEM_FLUID_I(plutonium_241_tiny, plutonium_241_shattered)
    data_recipe[plutonium_241_tiny_fluid].order = c_a

    local plutonium_241_fluid = "ske_plutonium_241_fluid"
    data_recipe[plutonium_241_fluid].subgroup = is_shattered_plutonium_241
    data_recipe[plutonium_241_fluid].icons = ITEM_FLUID_I(plutonium_241_shattered, plutonium_241_shattered)
    data_recipe[plutonium_241_fluid].order = c_b

    local plutonium_241_reform = "ske_plutonium_241_reform"
    data_recipe[plutonium_241_reform].subgroup = is_shattered_plutonium_241
    data_recipe[plutonium_241_reform].icons = FLUID_ITEM_I(plutonium_241_shattered, plutonium_241_shattered)
    data_recipe[plutonium_241_reform].order = c_c

    local hep_241 = "ske_hep_241"
    data_item[hep_241].localised_description = show_formula and {chemical_formula, "Pu-241"} or nil
    data_item[hep_241].subgroup = is_shattered_plutonium_241
    data_item[hep_241].order = d
    data_item[hep_241].stack_size = 50
    data_item[hep_241].weight = 20000
    data_recipe[hep_241].subgroup = is_shattered_plutonium_241
    data_recipe[hep_241].icons = THREE_ITEM_I(plutonium_241_shattered, plutonium_242_shattered, hep_241)
    data_recipe[hep_241].order = d

    local hep_241_oxide = "ske_hep_241_oxide"
    data_item[hep_241_oxide].localised_description = show_formula and {chemical_formula, "PuO[font=default-tiny-bold]2[/font]-241"} or nil
    data_item[hep_241_oxide].subgroup = is_shattered_plutonium_241
    data_item[hep_241_oxide].order = e
    data_item[hep_241_oxide].stack_size = 50
    data_item[hep_241_oxide].weight = 20000
    data_recipe[hep_241_oxide].subgroup = is_shattered_plutonium_241
    data_recipe[hep_241_oxide].icons = THREE_I(hep_241, oxygen_angels, hep_241_oxide)
    data_recipe[hep_241_oxide].order = e

    local hep_241_decayed = "ske_hep_241_decayed"
    data_item[hep_241_decayed].localised_description = show_formula and {chemical_formula, "Pu-241"} or nil
    data_item[hep_241_decayed].subgroup = is_shattered_plutonium_241
    data_item[hep_241_decayed].order = f
    data_item[hep_241_decayed].stack_size = 50
    data_item[hep_241_decayed].weight = 20000
    data_recipe[hep_241_decayed].subgroup = is_shattered_plutonium_241
    data_recipe[hep_241_decayed].icons = TWO_I(hep_241_oxide, hep_241_decayed)
    data_recipe[hep_241_decayed].order = f

    local hep_241_reprocess = "ske_hep_241_reprocess"
    data_recipe[hep_241_reprocess].subgroup = is_shattered_plutonium_241
    data_recipe[hep_241_reprocess].icons = FOUR_D_I(hep_241_decayed, nil, nil, nil, americium_241_tiny, curium_245_tiny, curium_246_tiny, curium_247_tiny)
    data_recipe[hep_241_reprocess].order = g

    local hep_241_train = "ske_hep_241_train"
    data_item[hep_241_train].localised_description = show_formula and {chemical_formula, "Pu-241"} or nil
    data_item[hep_241_train].subgroup = is_shattered_plutonium_241
    data_item[hep_241_train].order = h
    data_item[hep_241_train].stack_size = 50
    data_item[hep_241_train].weight = 20000
    data_recipe[hep_241_train].subgroup = is_shattered_plutonium_241
    data_recipe[hep_241_train].icons = THREE_FFI_I(plutonium_241_shattered, plutonium_242_shattered, hep_241_train)
    data_recipe[hep_241_train].order = h

    -- Pu-242
    data_item[plutonium_242_tiny].localised_description = show_formula and {chemical_formula, "Pu-242"} or nil
    data_item[plutonium_242_tiny].subgroup = is_shattered_plutonium_242
    data_item[plutonium_242_tiny].order = a
    data_item[plutonium_242_tiny].stack_size = 200
    data_item[plutonium_242_tiny].weight = 5000

    data_item[plutonium_242_shattered].localised_description = show_formula and {chemical_formula, "Pu-242"} or nil
    data_item[plutonium_242_shattered].subgroup = is_shattered_plutonium_242
    data_item[plutonium_242_shattered].order = b
    data_item[plutonium_242_shattered].stack_size = 200
    data_item[plutonium_242_shattered].weight = 5000
    data_recipe[plutonium_242_shattered].subgroup = is_shattered_plutonium_242
    data_recipe[plutonium_242_shattered].icons = TWO_ITEM_I(plutonium_242_tiny, plutonium_242_shattered)
    data_recipe[plutonium_242_shattered].order = b

    data_fluid[plutonium_242_shattered].localised_description = show_formula and {chemical_formula, "Pu-242"} or nil
    data_fluid[plutonium_242_shattered].subgroup = is_shattered_plutonium_242
    data_fluid[plutonium_242_shattered].order = g

    local plutonium_242_tiny_fluid = "ske_plutonium_242_tiny_fluid"
    data_recipe[plutonium_242_tiny_fluid].subgroup = is_shattered_plutonium_242
    data_recipe[plutonium_242_tiny_fluid].icons = ITEM_FLUID_I(plutonium_242_tiny, plutonium_242_shattered)
    data_recipe[plutonium_242_tiny_fluid].order = g_a

    local plutonium_242_fluid = "ske_plutonium_242_fluid"
    data_recipe[plutonium_242_fluid].subgroup = is_shattered_plutonium_242
    data_recipe[plutonium_242_fluid].icons = ITEM_FLUID_I(plutonium_242_shattered, plutonium_242_shattered)
    data_recipe[plutonium_242_fluid].order = g_b

    local plutonium_242_reform = "ske_plutonium_242_reform"
    data_recipe[plutonium_242_reform].subgroup = is_shattered_plutonium_242
    data_recipe[plutonium_242_reform].icons = FLUID_ITEM_I(plutonium_242_shattered, plutonium_242_shattered)
    data_recipe[plutonium_242_reform].order = g_c

    -- Np-236
    data_item[neptunium_236_tiny].localised_description = show_formula and {chemical_formula, "Np-236"} or nil
    data_item[neptunium_236_tiny].subgroup = is_shattered_neptunium_236
    data_item[neptunium_236_tiny].order = a
    data_item[neptunium_236_tiny].stack_size = 200
    data_item[neptunium_236_tiny].weight = 5000

    data_item[neptunium_236_shattered].localised_description = show_formula and {chemical_formula, "Np-236"} or nil
    data_item[neptunium_236_shattered].subgroup = is_shattered_neptunium_236
    data_item[neptunium_236_shattered].order = b
    data_item[neptunium_236_shattered].stack_size = 200
    data_item[neptunium_236_shattered].weight = 5000
    data_recipe[neptunium_236_shattered].subgroup = is_shattered_neptunium_236
    data_recipe[neptunium_236_shattered].icons = TWO_ITEM_I(neptunium_236_tiny, neptunium_236_shattered)
    data_recipe[neptunium_236_shattered].order = b

    data_fluid[neptunium_236_shattered].localised_description = show_formula and {chemical_formula, "Np-236"} or nil
    data_fluid[neptunium_236_shattered].subgroup = is_shattered_neptunium_236
    data_fluid[neptunium_236_shattered].order = c

    local neptunium_236_tiny_fluid = "ske_neptunium_236_tiny_fluid"
    data_recipe[neptunium_236_tiny_fluid].subgroup = is_shattered_neptunium_236
    data_recipe[neptunium_236_tiny_fluid].icons = ITEM_FLUID_I(neptunium_236_tiny, neptunium_236_shattered)
    data_recipe[neptunium_236_tiny_fluid].order = c_a

    local neptunium_236_fluid = "ske_neptunium_236_fluid"
    data_recipe[neptunium_236_fluid].subgroup = is_shattered_neptunium_236
    data_recipe[neptunium_236_fluid].icons = ITEM_FLUID_I(neptunium_236_shattered, neptunium_236_shattered)
    data_recipe[neptunium_236_fluid].order = c_b

    local neptunium_236_reform = "ske_neptunium_236_reform"
    data_recipe[neptunium_236_reform].subgroup = is_shattered_neptunium_236
    data_recipe[neptunium_236_reform].icons = FLUID_ITEM_I(neptunium_236_shattered, neptunium_236_shattered)
    data_recipe[neptunium_236_reform].order = c_c

    local hen_236 = "ske_hen_236"
    data_item[hen_236].localised_description = show_formula and {chemical_formula, "Np-236"} or nil
    data_item[hen_236].subgroup = is_shattered_neptunium_236
    data_item[hen_236].order = d
    data_item[hen_236].stack_size = 50
    data_item[hen_236].weight = 20000
    data_recipe[hen_236].subgroup = is_shattered_neptunium_236
    data_recipe[hen_236].icons = THREE_ITEM_I(neptunium_236_shattered, neptunium_237_shattered, hen_236)
    data_recipe[hen_236].order = d

    local hen_236_oxide = "ske_hen_236_oxide"
    data_item[hen_236_oxide].localised_description = show_formula and {chemical_formula, "NpO[font=default-tiny-bold]2[/font]-236"} or nil
    data_item[hen_236_oxide].subgroup = is_shattered_neptunium_236
    data_item[hen_236_oxide].order = e
    data_item[hen_236_oxide].stack_size = 50
    data_item[hen_236_oxide].weight = 20000
    data_recipe[hen_236_oxide].subgroup = is_shattered_neptunium_236
    data_recipe[hen_236_oxide].icons = THREE_I(hen_236, oxygen_angels, hen_236_oxide)
    data_recipe[hen_236_oxide].order = e

    local hen_236_decayed = "ske_hen_236_decayed"
    data_item[hen_236_decayed].localised_description = show_formula and {chemical_formula, "Np-236"} or nil
    data_item[hen_236_decayed].subgroup = is_shattered_neptunium_236
    data_item[hen_236_decayed].order = f
    data_item[hen_236_decayed].stack_size = 50
    data_item[hen_236_decayed].weight = 20000
    data_recipe[hen_236_decayed].subgroup = is_shattered_neptunium_236
    data_recipe[hen_236_decayed].icons = TWO_I(hen_236_oxide, hen_236_decayed)
    data_recipe[hen_236_decayed].order = f

    local hen_236_reprocess = "ske_hen_236_reprocess"
    data_recipe[hen_236_reprocess].subgroup = is_shattered_neptunium_236
    data_recipe[hen_236_reprocess].icons = FOUR_D_I(hen_236_decayed, nil, nil, nil, uranium_238_tiny, plutonium_238_tiny, plutonium_239_tiny, plutonium_241_tiny)
    data_recipe[hen_236_reprocess].order = g

    local hen_236_train = "ske_hen_236_train"
    data_item[hen_236_train].localised_description = show_formula and {chemical_formula, "Np-236"} or nil
    data_item[hen_236_train].subgroup = is_shattered_neptunium_236
    data_item[hen_236_train].order = h
    data_item[hen_236_train].stack_size = 50
    data_item[hen_236_train].weight = 20000
    data_recipe[hen_236_train].subgroup = is_shattered_neptunium_236
    data_recipe[hen_236_train].icons = THREE_FFI_I(neptunium_236_shattered, neptunium_237_shattered, hen_236_train)
    data_recipe[hen_236_train].order = h

    -- Np-237
    data_item[neptunium_237_tiny].localised_description = show_formula and {chemical_formula, "Np-237"} or nil
    data_item[neptunium_237_tiny].subgroup = is_shattered_neptunium_237
    data_item[neptunium_237_tiny].order = a
    data_item[neptunium_237_tiny].stack_size = 200
    data_item[neptunium_237_tiny].weight = 5000

    data_item[neptunium_237_shattered].localised_description = show_formula and {chemical_formula, "Np-237"} or nil
    data_item[neptunium_237_shattered].subgroup = is_shattered_neptunium_237
    data_item[neptunium_237_shattered].order = b
    data_item[neptunium_237_shattered].stack_size = 200
    data_item[neptunium_237_shattered].weight = 5000
    data_recipe[neptunium_237_shattered].subgroup = is_shattered_neptunium_237
    data_recipe[neptunium_237_shattered].icons = TWO_ITEM_I(neptunium_237_tiny, neptunium_237_shattered)
    data_recipe[neptunium_237_shattered].order = b

    data_fluid[neptunium_237_shattered].localised_description = show_formula and {chemical_formula, "Np-237"} or nil
    data_fluid[neptunium_237_shattered].subgroup = is_shattered_neptunium_237
    data_fluid[neptunium_237_shattered].order = g

    local neptunium_237_tiny_fluid = "ske_neptunium_237_tiny_fluid"
    data_recipe[neptunium_237_tiny_fluid].subgroup = is_shattered_neptunium_237
    data_recipe[neptunium_237_tiny_fluid].icons = ITEM_FLUID_I(neptunium_237_tiny, neptunium_237_shattered)
    data_recipe[neptunium_237_tiny_fluid].order = g_a

    local neptunium_237_fluid = "ske_neptunium_237_fluid"
    data_recipe[neptunium_237_fluid].subgroup = is_shattered_neptunium_237
    data_recipe[neptunium_237_fluid].icons = ITEM_FLUID_I(neptunium_237_shattered, neptunium_237_shattered)
    data_recipe[neptunium_237_fluid].order = g_b

    local neptunium_237_reform = "ske_neptunium_237_reform"
    data_recipe[neptunium_237_reform].subgroup = is_shattered_neptunium_237
    data_recipe[neptunium_237_reform].icons = FLUID_ITEM_I(neptunium_237_shattered, neptunium_237_shattered)
    data_recipe[neptunium_237_reform].order = g_c

    -- Am-241
    data_item[americium_241_tiny].localised_description = show_formula and {chemical_formula, "Am-241"} or nil
    data_item[americium_241_tiny].subgroup = is_shattered_americium_241
    data_item[americium_241_tiny].order = a
    data_item[americium_241_tiny].stack_size = 200
    data_item[americium_241_tiny].weight = 5000

    data_item[americium_241_shattered].localised_description = show_formula and {chemical_formula, "Am-241"} or nil
    data_item[americium_241_shattered].subgroup = is_shattered_americium_241
    data_item[americium_241_shattered].order = b
    data_item[americium_241_shattered].stack_size = 200
    data_item[americium_241_shattered].weight = 5000
    data_recipe[americium_241_shattered].subgroup = is_shattered_americium_241
    data_recipe[americium_241_shattered].icons = TWO_ITEM_I(americium_241_tiny, americium_241_shattered)
    data_recipe[americium_241_shattered].order = b

    data_fluid[americium_241_shattered].localised_description = show_formula and {chemical_formula, "Am-241"} or nil
    data_fluid[americium_241_shattered].subgroup = is_shattered_americium_241
    data_fluid[americium_241_shattered].order = g

    local americium_241_tiny_fluid = "ske_americium_241_tiny_fluid"
    data_recipe[americium_241_tiny_fluid].subgroup = is_shattered_americium_241
    data_recipe[americium_241_tiny_fluid].icons = ITEM_FLUID_I(americium_241_tiny, americium_241_shattered)
    data_recipe[americium_241_tiny_fluid].order = g_a

    local americium_241_fluid = "ske_americium_241_fluid"
    data_recipe[americium_241_fluid].subgroup = is_shattered_americium_241
    data_recipe[americium_241_fluid].icons = ITEM_FLUID_I(americium_241_shattered, americium_241_shattered)
    data_recipe[americium_241_fluid].order = g_b

    local americium_241_reform = "ske_americium_241_reform"
    data_recipe[americium_241_reform].subgroup = is_shattered_americium_241
    data_recipe[americium_241_reform].icons = FLUID_ITEM_I(americium_241_shattered, americium_241_shattered)
    data_recipe[americium_241_reform].order = g_c

    -- Am-242
    data_item[americium_242_tiny].localised_description = show_formula and {chemical_formula, "Am-242"} or nil
    data_item[americium_242_tiny].subgroup = is_shattered_americium_242
    data_item[americium_242_tiny].order = a
    data_item[americium_242_tiny].stack_size = 200
    data_item[americium_242_tiny].weight = 5000

    data_item[americium_242_shattered].localised_description = show_formula and {chemical_formula, "Am-242"} or nil
    data_item[americium_242_shattered].subgroup = is_shattered_americium_242
    data_item[americium_242_shattered].order = b
    data_item[americium_242_shattered].stack_size = 200
    data_item[americium_242_shattered].weight = 5000
    data_recipe[americium_242_shattered].subgroup = is_shattered_americium_242
    data_recipe[americium_242_shattered].icons = TWO_ITEM_I(americium_242_tiny, americium_242_shattered)
    data_recipe[americium_242_shattered].order = b

    data_fluid[americium_242_shattered].localised_description = show_formula and {chemical_formula, "Am-242"} or nil
    data_fluid[americium_242_shattered].subgroup = is_shattered_americium_242
    data_fluid[americium_242_shattered].order = c

    local americium_242_tiny_fluid = "ske_americium_242_tiny_fluid"
    data_recipe[americium_242_tiny_fluid].subgroup = is_shattered_americium_242
    data_recipe[americium_242_tiny_fluid].icons = ITEM_FLUID_I(americium_242_tiny, americium_242_shattered)
    data_recipe[americium_242_tiny_fluid].order = c_a

    local americium_242_fluid = "ske_americium_242_fluid"
    data_recipe[americium_242_fluid].subgroup = is_shattered_americium_242
    data_recipe[americium_242_fluid].icons = ITEM_FLUID_I(americium_242_shattered, americium_242_shattered)
    data_recipe[americium_242_fluid].order = c_b

    local americium_242_reform = "ske_americium_242_reform"
    data_recipe[americium_242_reform].subgroup = is_shattered_americium_242
    data_recipe[americium_242_reform].icons = FLUID_ITEM_I(americium_242_shattered, americium_242_shattered)
    data_recipe[americium_242_reform].order = c_c

    local hea_242 = "ske_hea_242"
    data_item[hea_242].localised_description = show_formula and {chemical_formula, "Am-242"} or nil
    data_item[hea_242].subgroup = is_shattered_americium_242
    data_item[hea_242].order = d
    data_item[hea_242].stack_size = 50
    data_item[hea_242].weight = 20000
    data_recipe[hea_242].subgroup = is_shattered_americium_242
    data_recipe[hea_242].icons = THREE_ITEM_I(americium_242_shattered, americium_243_shattered, hea_242)
    data_recipe[hea_242].order = d

    local hea_242_oxide = "ske_hea_242_oxide"
    data_item[hea_242_oxide].localised_description = show_formula and {chemical_formula, "AmO[font=default-tiny-bold]2[/font]-242"} or nil
    data_item[hea_242_oxide].subgroup = is_shattered_americium_242
    data_item[hea_242_oxide].order = e
    data_item[hea_242_oxide].stack_size = 50
    data_item[hea_242_oxide].weight = 20000
    data_recipe[hea_242_oxide].subgroup = is_shattered_americium_242
    data_recipe[hea_242_oxide].icons = THREE_I(hea_242, oxygen_angels, hea_242_oxide)
    data_recipe[hea_242_oxide].order = e

    local hea_242_decayed = "ske_hea_242_decayed"
    data_item[hea_242_decayed].localised_description = show_formula and {chemical_formula, "Am-242"} or nil
    data_item[hea_242_decayed].subgroup = is_shattered_americium_242
    data_item[hea_242_decayed].order = f
    data_item[hea_242_decayed].stack_size = 50
    data_item[hea_242_decayed].weight = 20000
    data_recipe[hea_242_decayed].subgroup = is_shattered_americium_242
    data_recipe[hea_242_decayed].icons = TWO_I(hea_242_oxide, hea_242_decayed)
    data_recipe[hea_242_decayed].order = f

    local hea_242_reprocess = "ske_hea_242_reprocess"
    data_recipe[hea_242_reprocess].subgroup = is_shattered_americium_242
    data_recipe[hea_242_reprocess].icons = FOUR_D_I(hen_236_decayed, nil, nil, nil, curium_245_tiny, curium_246_tiny, curium_247_tiny, berkelium_247_tiny)
    data_recipe[hea_242_reprocess].order = g

    local hea_242_train = "ske_hea_242_train"
    data_item[hea_242_train].localised_description = show_formula and {chemical_formula, "Am-242"} or nil
    data_item[hea_242_train].subgroup = is_shattered_americium_242
    data_item[hea_242_train].order = h
    data_item[hea_242_train].stack_size = 50
    data_item[hea_242_train].weight = 20000
    data_recipe[hea_242_train].subgroup = is_shattered_americium_242
    data_recipe[hea_242_train].icons = THREE_FFI_I(americium_243_shattered, americium_241_shattered, hea_242_train)
    data_recipe[hea_242_train].order = h

    -- Am-243
    data_item[americium_243_tiny].localised_description = show_formula and {chemical_formula, "Am-243"} or nil
    data_item[americium_243_tiny].subgroup = is_shattered_americium_243
    data_item[americium_243_tiny].order = a
    data_item[americium_243_tiny].stack_size = 200
    data_item[americium_243_tiny].weight = 5000

    data_item[americium_243_shattered].localised_description = show_formula and {chemical_formula, "Am-243"} or nil
    data_item[americium_243_shattered].subgroup = is_shattered_americium_243
    data_item[americium_243_shattered].order = b
    data_item[americium_243_shattered].stack_size = 200
    data_item[americium_243_shattered].weight = 5000
    data_recipe[americium_243_shattered].subgroup = is_shattered_americium_243
    data_recipe[americium_243_shattered].icons = TWO_ITEM_I(americium_243_tiny, americium_243_shattered)
    data_recipe[americium_243_shattered].order = b

    data_fluid[americium_243_shattered].localised_description = show_formula and {chemical_formula, "Am-243"} or nil
    data_fluid[americium_243_shattered].subgroup = is_shattered_americium_243
    data_fluid[americium_243_shattered].order = g

    local americium_243_tiny_fluid = "ske_americium_243_tiny_fluid"
    data_recipe[americium_243_tiny_fluid].subgroup = is_shattered_americium_243
    data_recipe[americium_243_tiny_fluid].icons = ITEM_FLUID_I(americium_243_tiny, americium_243_shattered)
    data_recipe[americium_243_tiny_fluid].order = g_a

    local americium_243_fluid = "ske_americium_243_fluid"
    data_recipe[americium_243_fluid].subgroup = is_shattered_americium_243
    data_recipe[americium_243_fluid].icons = ITEM_FLUID_I(americium_243_shattered, americium_243_shattered)
    data_recipe[americium_243_fluid].order = g_b

    local americium_243_reform = "ske_americium_243_reform"
    data_recipe[americium_243_reform].subgroup = is_shattered_americium_243
    data_recipe[americium_243_reform].icons = FLUID_ITEM_I(americium_243_shattered, americium_243_shattered)
    data_recipe[americium_243_reform].order = g_c

    -- Bk-247
    data_item[berkelium_247_tiny].localised_description = show_formula and {chemical_formula, "Bk-247"} or nil
    data_item[berkelium_247_tiny].subgroup = is_shattered_berkelium_247
    data_item[berkelium_247_tiny].order = a
    data_item[berkelium_247_tiny].stack_size = 200
    data_item[berkelium_247_tiny].weight = 5000

    data_item[berkelium_247_shattered].localised_description = show_formula and {chemical_formula, "Bk-247"} or nil
    data_item[berkelium_247_shattered].subgroup = is_shattered_berkelium_247
    data_item[berkelium_247_shattered].order = b
    data_item[berkelium_247_shattered].stack_size = 200
    data_item[berkelium_247_shattered].weight = 5000
    data_recipe[berkelium_247_shattered].subgroup = is_shattered_berkelium_247
    data_recipe[berkelium_247_shattered].icons = TWO_ITEM_I(berkelium_247_tiny, berkelium_247_shattered)
    data_recipe[berkelium_247_shattered].order = b

    data_fluid[berkelium_247_shattered].localised_description = show_formula and {chemical_formula, "Bk-247"} or nil
    data_fluid[berkelium_247_shattered].subgroup = is_shattered_berkelium_247
    data_fluid[berkelium_247_shattered].order = g

    local berkelium_247_tiny_fluid = "ske_berkelium_247_tiny_fluid"
    data_recipe[berkelium_247_tiny_fluid].subgroup = is_shattered_berkelium_247
    data_recipe[berkelium_247_tiny_fluid].icons = ITEM_FLUID_I(berkelium_247_tiny, berkelium_247_shattered)
    data_recipe[berkelium_247_tiny_fluid].order = g_a

    local berkelium_247_fluid = "ske_berkelium_247_fluid"
    data_recipe[berkelium_247_fluid].subgroup = is_shattered_berkelium_247
    data_recipe[berkelium_247_fluid].icons = ITEM_FLUID_I(berkelium_247_shattered, berkelium_247_shattered)
    data_recipe[berkelium_247_fluid].order = g_b

    local berkelium_247_reform = "ske_berkelium_247_reform"
    data_recipe[berkelium_247_reform].subgroup = is_shattered_berkelium_247
    data_recipe[berkelium_247_reform].icons = FLUID_ITEM_I(berkelium_247_shattered, berkelium_247_shattered)
    data_recipe[berkelium_247_reform].order = g_c

    -- Bk-248
    data_item[berkelium_248_tiny].localised_description = show_formula and {chemical_formula, "Bk-248"} or nil
    data_item[berkelium_248_tiny].subgroup = is_shattered_berkelium_248
    data_item[berkelium_248_tiny].order = a
    data_item[berkelium_248_tiny].stack_size = 200
    data_item[berkelium_248_tiny].weight = 5000

    data_item[berkelium_248_shattered].localised_description = show_formula and {chemical_formula, "Bk-248"} or nil
    data_item[berkelium_248_shattered].subgroup = is_shattered_berkelium_248
    data_item[berkelium_248_shattered].order = b
    data_item[berkelium_248_shattered].stack_size = 200
    data_item[berkelium_248_shattered].weight = 5000
    data_recipe[berkelium_248_shattered].subgroup = is_shattered_berkelium_248
    data_recipe[berkelium_248_shattered].icons = TWO_ITEM_I(berkelium_248_tiny, berkelium_248_shattered)
    data_recipe[berkelium_248_shattered].order = b

    data_fluid[berkelium_248_shattered].localised_description = show_formula and {chemical_formula, "Bk-248"} or nil
    data_fluid[berkelium_248_shattered].subgroup = is_shattered_berkelium_248
    data_fluid[berkelium_248_shattered].order = c

    local berkelium_248_tiny_fluid = "ske_berkelium_248_tiny_fluid"
    data_recipe[berkelium_248_tiny_fluid].subgroup = is_shattered_berkelium_248
    data_recipe[berkelium_248_tiny_fluid].icons = ITEM_FLUID_I(berkelium_248_tiny, berkelium_248_shattered)
    data_recipe[berkelium_248_tiny_fluid].order = c_a

    local berkelium_248_fluid = "ske_berkelium_248_fluid"
    data_recipe[berkelium_248_fluid].subgroup = is_shattered_berkelium_248
    data_recipe[berkelium_248_fluid].icons = ITEM_FLUID_I(berkelium_248_shattered, berkelium_248_shattered)
    data_recipe[berkelium_248_fluid].order = c_b

    local berkelium_248_reform = "ske_berkelium_248_reform"
    data_recipe[berkelium_248_reform].subgroup = is_shattered_berkelium_248
    data_recipe[berkelium_248_reform].icons = FLUID_ITEM_I(berkelium_248_shattered, berkelium_248_shattered)
    data_recipe[berkelium_248_reform].order = c_c

    local heb_248 = "ske_heb_248"
    data_item[heb_248].localised_description = show_formula and {chemical_formula, "Bk-248"} or nil
    data_item[heb_248].subgroup = is_shattered_berkelium_248
    data_item[heb_248].order = d
    data_item[heb_248].stack_size = 50
    data_item[heb_248].weight = 20000
    data_recipe[heb_248].subgroup = is_shattered_berkelium_248
    data_recipe[heb_248].icons = THREE_ITEM_I(berkelium_247_shattered, berkelium_248_shattered, heb_248)
    data_recipe[heb_248].order = d

    local heb_248_oxide = "ske_heb_248_oxide"
    data_item[heb_248_oxide].localised_description = show_formula and {chemical_formula, "BkO[font=default-tiny-bold]2[/font]-248"} or nil
    data_item[heb_248_oxide].subgroup = is_shattered_berkelium_248
    data_item[heb_248_oxide].order = e
    data_item[heb_248_oxide].stack_size = 50
    data_item[heb_248_oxide].weight = 20000
    data_recipe[heb_248_oxide].subgroup = is_shattered_berkelium_248
    data_recipe[heb_248_oxide].icons = THREE_I(heb_248, oxygen_angels, heb_248_oxide)
    data_recipe[heb_248_oxide].order = e

    local heb_248_decayed = "ske_heb_248_decayed"
    data_item[heb_248_decayed].localised_description = show_formula and {chemical_formula, "Bk-248"} or nil
    data_item[heb_248_decayed].subgroup = is_shattered_berkelium_248
    data_item[heb_248_decayed].order = f
    data_item[heb_248_decayed].stack_size = 50
    data_item[heb_248_decayed].weight = 20000
    data_recipe[heb_248_decayed].subgroup = is_shattered_berkelium_248
    data_recipe[heb_248_decayed].icons = TWO_I(hea_242_oxide, heb_248_decayed)
    data_recipe[heb_248_decayed].order = f

    local heb_248_reprocess = "ske_heb_248_reprocess"
    data_recipe[heb_248_reprocess].subgroup = is_shattered_berkelium_248
    data_recipe[heb_248_reprocess].icons = THREE_D_I(heb_248_decayed, nil, nil, californium_250_tiny, californium_251_tiny, californium_252_tiny)
    data_recipe[heb_248_reprocess].order = g

    local heb_248_train = "ske_heb_248_train"
    data_item[heb_248_train].localised_description = show_formula and {chemical_formula, "Bk-248"} or nil
    data_item[heb_248_train].subgroup = is_shattered_berkelium_248
    data_item[heb_248_train].order = h
    data_item[heb_248_train].stack_size = 50
    data_item[heb_248_train].weight = 20000
    data_recipe[heb_248_train].subgroup = is_shattered_berkelium_248
    data_recipe[heb_248_train].icons = THREE_FFI_I(berkelium_247_shattered, berkelium_248_shattered, heb_248_train)
    data_recipe[heb_248_train].order = h

    -- Cm-243
    local hec_243 = "ske_hec_243"
    data_item[hec_243].localised_description = show_formula and {chemical_formula, "Cm-243"} or nil
    data_item[hec_243].subgroup = is_shattered_curium_243
    data_item[hec_243].order = d
    data_item[hec_243].stack_size = 50
    data_item[hec_243].weight = 20000
    data_recipe[hec_243].subgroup = is_shattered_curium_243
    data_recipe[hec_243].icons = THREE_ITEM_I(curium_245_shattered, curium_246_shattered, hec_243)
    data_recipe[hec_243].order = d

    local hec_243_oxide = "ske_hec_243_oxide"
    data_item[hec_243_oxide].localised_description = show_formula and {chemical_formula, "CmO[font=default-tiny-bold]2[/font]-243"} or nil
    data_item[hec_243_oxide].subgroup = is_shattered_curium_243
    data_item[hec_243_oxide].order = e
    data_item[hec_243_oxide].stack_size = 50
    data_item[hec_243_oxide].weight = 20000
    data_recipe[hec_243_oxide].subgroup = is_shattered_curium_243
    data_recipe[hec_243_oxide].icons = THREE_I(hec_243, oxygen_angels, hec_243_oxide)
    data_recipe[hec_243_oxide].order = e

    local hec_243_decayed = "ske_hec_243_decayed"
    data_item[hec_243_decayed].localised_description = show_formula and {chemical_formula, "Cm-243"} or nil
    data_item[hec_243_decayed].subgroup = is_shattered_curium_243
    data_item[hec_243_decayed].order = f
    data_item[hec_243_decayed].stack_size = 50
    data_item[hec_243_decayed].weight = 20000
    data_recipe[hec_243_decayed].subgroup = is_shattered_curium_243
    data_recipe[hec_243_decayed].icons = TWO_I(hec_243_oxide, hec_243_decayed)
    data_recipe[hec_243_decayed].order = f

    local hec_243_reprocess = "ske_hec_243_reprocess"
    data_recipe[hec_243_reprocess].subgroup = is_shattered_curium_243
    data_recipe[hec_243_reprocess].icons = FOUR_D_I(hec_243_decayed, nil, nil, nil, curium_246_tiny, berkelium_247_tiny, berkelium_248_tiny, californium_249_tiny)
    data_recipe[hec_243_reprocess].order = g

    local hec_243_train = "ske_hec_243_train"
    data_item[hec_243_train].localised_description = show_formula and {chemical_formula, "Cm-243"} or nil
    data_item[hec_243_train].subgroup = is_shattered_curium_243
    data_item[hec_243_train].order = h
    data_item[hec_243_train].stack_size = 50
    data_item[hec_243_train].weight = 20000
    data_recipe[hec_243_train].subgroup = is_shattered_curium_243
    data_recipe[hec_243_train].icons = THREE_FFI_I(curium_246_shattered, curium_247_shattered, hec_243_train)
    data_recipe[hec_243_train].order = h

    -- Cm-245
    data_item[curium_245_tiny].localised_description = show_formula and {chemical_formula, "Cm-245"} or nil
    data_item[curium_245_tiny].subgroup = is_shattered_curium_245
    data_item[curium_245_tiny].order = a
    data_item[curium_245_tiny].stack_size = 200
    data_item[curium_245_tiny].weight = 5000

    data_item[curium_245_shattered].localised_description = show_formula and {chemical_formula, "Cm-245"} or nil
    data_item[curium_245_shattered].subgroup = is_shattered_curium_245
    data_item[curium_245_shattered].order = b
    data_item[curium_245_shattered].stack_size = 200
    data_item[curium_245_shattered].weight = 5000
    data_recipe[curium_245_shattered].subgroup = is_shattered_curium_245
    data_recipe[curium_245_shattered].icons = TWO_ITEM_I(curium_245_tiny, curium_245_shattered)
    data_recipe[curium_245_shattered].order = b

    data_fluid[curium_245_shattered].localised_description = show_formula and {chemical_formula, "Cm-245"} or nil
    data_fluid[curium_245_shattered].subgroup = is_shattered_curium_245
    data_fluid[curium_245_shattered].order = c

    local curium_245_tiny_fluid = "ske_curium_245_tiny_fluid"
    data_recipe[curium_245_tiny_fluid].subgroup = is_shattered_curium_245
    data_recipe[curium_245_tiny_fluid].icons = ITEM_FLUID_I(curium_245_tiny, curium_245_shattered)
    data_recipe[curium_245_tiny_fluid].order = c_a

    local curium_245_fluid = "ske_curium_245_fluid"
    data_recipe[curium_245_fluid].subgroup = is_shattered_curium_245
    data_recipe[curium_245_fluid].icons = ITEM_FLUID_I(curium_245_shattered, curium_245_shattered)
    data_recipe[curium_245_fluid].order = c_b

    local curium_245_reform = "ske_curium_245_reform"
    data_recipe[curium_245_reform].subgroup = is_shattered_curium_245
    data_recipe[curium_245_reform].icons = FLUID_ITEM_I(curium_245_shattered, curium_245_shattered)
    data_recipe[curium_245_reform].order = c_c

    local hec_245 = "ske_hec_245"
    data_item[hec_245].localised_description = show_formula and {chemical_formula, "Cm-245"} or nil
    data_item[hec_245].subgroup = is_shattered_curium_245
    data_item[hec_245].order = d
    data_item[hec_245].stack_size = 50
    data_item[hec_245].weight = 20000
    data_recipe[hec_245].subgroup = is_shattered_curium_245
    data_recipe[hec_245].icons = THREE_ITEM_I(curium_245_shattered, curium_247_shattered, hec_245)
    data_recipe[hec_245].order = d

    local hec_245_oxide = "ske_hec_245_oxide"
    data_item[hec_245_oxide].localised_description = show_formula and {chemical_formula, "CmO[font=default-tiny-bold]2[/font]-245"} or nil
    data_item[hec_245_oxide].subgroup = is_shattered_curium_245
    data_item[hec_245_oxide].order = e
    data_item[hec_245_oxide].stack_size = 50
    data_item[hec_245_oxide].weight = 20000
    data_recipe[hec_245_oxide].subgroup = is_shattered_curium_245
    data_recipe[hec_245_oxide].icons = THREE_I(hec_245, oxygen_angels, hec_245_oxide)
    data_recipe[hec_245_oxide].order = e

    local hec_245_decayed = "ske_hec_245_decayed"
    data_item[hec_245_decayed].localised_description = show_formula and {chemical_formula, "Cm-245"} or nil
    data_item[hec_245_decayed].subgroup = is_shattered_curium_245
    data_item[hec_245_decayed].order = f
    data_item[hec_245_decayed].stack_size = 50
    data_item[hec_245_decayed].weight = 20000
    data_recipe[hec_245_decayed].subgroup = is_shattered_curium_245
    data_recipe[hec_245_decayed].icons = TWO_I(hec_245_oxide, hec_245_decayed)
    data_recipe[hec_245_decayed].order = f

    local hec_245_reprocess = "ske_hec_245_reprocess"
    data_recipe[hec_245_reprocess].subgroup = is_shattered_curium_245
    data_recipe[hec_245_reprocess].icons = FOUR_D_I(hec_245_decayed, nil, nil, nil, berkelium_247_tiny, berkelium_248_tiny, californium_249_tiny, californium_251_tiny)
    data_recipe[hec_245_reprocess].order = g

    local hec_245_train = "ske_hec_245_train"
    data_item[hec_245_train].localised_description = show_formula and {chemical_formula, "Cm-245"} or nil
    data_item[hec_245_train].subgroup = is_shattered_curium_245
    data_item[hec_245_train].order = h
    data_item[hec_245_train].stack_size = 50
    data_item[hec_245_train].weight = 20000
    data_recipe[hec_245_train].subgroup = is_shattered_curium_245
    data_recipe[hec_245_train].icons = THREE_FFI_I(curium_245_shattered, curium_247_shattered, hec_245_train)
    data_recipe[hec_245_train].order = h

    -- Cm-246
    data_item[curium_246_tiny].localised_description = show_formula and {chemical_formula, "Cm-246"} or nil
    data_item[curium_246_tiny].subgroup = is_shattered_curium_246
    data_item[curium_246_tiny].order = a
    data_item[curium_246_tiny].stack_size = 200
    data_item[curium_246_tiny].weight = 5000

    data_item[curium_246_shattered].localised_description = show_formula and {chemical_formula, "Cm-246"} or nil
    data_item[curium_246_shattered].subgroup = is_shattered_curium_246
    data_item[curium_246_shattered].order = b
    data_item[curium_246_shattered].stack_size = 200
    data_item[curium_246_shattered].weight = 5000
    data_recipe[curium_246_shattered].subgroup = is_shattered_curium_246
    data_recipe[curium_246_shattered].icons = TWO_ITEM_I(curium_246_tiny, curium_246_shattered)
    data_recipe[curium_246_shattered].order = b

    data_fluid[curium_246_shattered].localised_description = show_formula and {chemical_formula, "Cm-246"} or nil
    data_fluid[curium_246_shattered].subgroup = is_shattered_curium_246
    data_fluid[curium_246_shattered].order = c

    local curium_246_tiny_fluid = "ske_curium_246_tiny_fluid"
    data_recipe[curium_246_tiny_fluid].subgroup = is_shattered_curium_246
    data_recipe[curium_246_tiny_fluid].icons = ITEM_FLUID_I(curium_246_tiny, curium_246_shattered)
    data_recipe[curium_246_tiny_fluid].order = c_a

    local curium_246_fluid = "ske_curium_246_fluid"
    data_recipe[curium_246_fluid].subgroup = is_shattered_curium_246
    data_recipe[curium_246_fluid].icons = ITEM_FLUID_I(curium_246_shattered, curium_246_shattered)
    data_recipe[curium_246_fluid].order = c_b

    local curium_246_reform = "ske_curium_246_reform"
    data_recipe[curium_246_reform].subgroup = is_shattered_curium_246
    data_recipe[curium_246_reform].icons = FLUID_ITEM_I(curium_246_shattered, curium_246_shattered)
    data_recipe[curium_246_reform].order = c_c

    -- Cm-247
    data_item[curium_247_tiny].localised_description = show_formula and {chemical_formula, "Cm-247"} or nil
    data_item[curium_247_tiny].subgroup = is_shattered_curium_247
    data_item[curium_247_tiny].order = a
    data_item[curium_247_tiny].stack_size = 200
    data_item[curium_247_tiny].weight = 5000

    data_item[curium_247_shattered].localised_description = show_formula and {chemical_formula, "Cm-247"} or nil
    data_item[curium_247_shattered].subgroup = is_shattered_curium_247
    data_item[curium_247_shattered].order = b
    data_item[curium_247_shattered].stack_size = 200
    data_item[curium_247_shattered].weight = 5000
    data_recipe[curium_247_shattered].subgroup = is_shattered_curium_247
    data_recipe[curium_247_shattered].icons = TWO_ITEM_I(curium_247_tiny, curium_247_shattered)
    data_recipe[curium_247_shattered].order = b

    data_fluid[curium_247_shattered].localised_description = show_formula and {chemical_formula, "Cm-247"} or nil
    data_fluid[curium_247_shattered].subgroup = is_shattered_curium_247
    data_fluid[curium_247_shattered].order = c

    local curium_247_tiny_fluid = "ske_curium_247_tiny_fluid"
    data_recipe[curium_247_tiny_fluid].subgroup = is_shattered_curium_247
    data_recipe[curium_247_tiny_fluid].icons = ITEM_FLUID_I(curium_245_tiny, curium_247_shattered)
    data_recipe[curium_247_tiny_fluid].order = c_a

    local curium_247_fluid = "ske_curium_247_fluid"
    data_recipe[curium_247_fluid].subgroup = is_shattered_curium_247
    data_recipe[curium_247_fluid].icons = ITEM_FLUID_I(curium_247_shattered, curium_247_shattered)
    data_recipe[curium_247_fluid].order = c_b

    local curium_247_reform = "ske_curium_247_reform"
    data_recipe[curium_247_reform].subgroup = is_shattered_curium_247
    data_recipe[curium_247_reform].icons = FLUID_ITEM_I(curium_247_shattered, curium_247_shattered)
    data_recipe[curium_247_reform].order = c_c

    local hec_247 = "ske_hec_247"
    data_item[hec_247].localised_description = show_formula and {chemical_formula, "Cm-247"} or nil
    data_item[hec_247].subgroup = is_shattered_curium_247
    data_item[hec_247].order = d
    data_item[hec_247].stack_size = 50
    data_item[hec_247].weight = 20000
    data_recipe[hec_247].subgroup = is_shattered_curium_247
    data_recipe[hec_247].icons = THREE_ITEM_I(curium_246_shattered, curium_247_shattered, hec_247)
    data_recipe[hec_247].order = d

    local hec_247_oxide = "ske_hec_247_oxide"
    data_item[hec_247_oxide].localised_description = show_formula and {chemical_formula, "CmO[font=default-tiny-bold]2[/font]-247"} or nil
    data_item[hec_247_oxide].subgroup = is_shattered_curium_247
    data_item[hec_247_oxide].order = e
    data_item[hec_247_oxide].stack_size = 50
    data_item[hec_247_oxide].weight = 20000
    data_recipe[hec_247_oxide].subgroup = is_shattered_curium_247
    data_recipe[hec_247_oxide].icons = THREE_I(hec_247, oxygen_angels, hec_247_oxide)
    data_recipe[hec_247_oxide].order = e

    local hec_247_decayed = "ske_hec_247_decayed"
    data_item[hec_247_decayed].localised_description = show_formula and {chemical_formula, "Cm-247"} or nil
    data_item[hec_247_decayed].subgroup = is_shattered_curium_247
    data_item[hec_247_decayed].order = f
    data_item[hec_247_decayed].stack_size = 50
    data_item[hec_247_decayed].weight = 20000
    data_recipe[hec_247_decayed].subgroup = is_shattered_curium_247
    data_recipe[hec_247_decayed].icons = TWO_I(hec_247_oxide, hec_247_decayed)
    data_recipe[hec_247_decayed].order = f

    local hec_247_reprocess = "ske_hec_247_reprocess"
    data_recipe[hec_247_reprocess].subgroup = is_shattered_curium_247
    data_recipe[hec_247_reprocess].icons = FOUR_D_I(hec_245_decayed, nil, nil, nil, berkelium_248_tiny, californium_249_tiny, californium_251_tiny, californium_252_tiny)
    data_recipe[hec_247_reprocess].order = g

    local hec_247_train = "ske_hec_247_train"
    data_item[hec_247_train].localised_description = show_formula and {chemical_formula, "Cm-247"} or nil
    data_item[hec_247_train].subgroup = is_shattered_curium_247
    data_item[hec_247_train].order = h
    data_item[hec_247_train].stack_size = 50
    data_item[hec_247_train].weight = 20000
    data_recipe[hec_247_train].subgroup = is_shattered_curium_247
    data_recipe[hec_247_train].icons = THREE_FFI_I(curium_247_shattered, curium_246_shattered, hec_247_train)
    data_recipe[hec_247_train].order = h

    -- Cf-249
    data_item[californium_249_tiny].localised_description = show_formula and {chemical_formula, "Cf-249"} or nil
    data_item[californium_249_tiny].subgroup = is_shattered_californium_249
    data_item[californium_249_tiny].order = a
    data_item[californium_249_tiny].stack_size = 200
    data_item[californium_249_tiny].weight = 5000

    data_item[californium_249_shattered].localised_description = show_formula and {chemical_formula, "Cf-249"} or nil
    data_item[californium_249_shattered].subgroup = is_shattered_californium_249
    data_item[californium_249_shattered].order = b
    data_item[californium_249_shattered].stack_size = 200
    data_item[californium_249_shattered].weight = 5000
    data_recipe[californium_249_shattered].subgroup = is_shattered_californium_249
    data_recipe[californium_249_shattered].icons = TWO_ITEM_I(californium_249_tiny, californium_249_shattered)
    data_recipe[californium_249_shattered].order = b

    data_fluid[californium_249_shattered].localised_description = show_formula and {chemical_formula, "Cf-249"} or nil
    data_fluid[californium_249_shattered].subgroup = is_shattered_californium_249
    data_fluid[californium_249_shattered].order = c

    local californium_249_tiny_fluid = "ske_californium_249_tiny_fluid"
    data_recipe[californium_249_tiny_fluid].subgroup = is_shattered_californium_249
    data_recipe[californium_249_tiny_fluid].icons = ITEM_FLUID_I(californium_249_tiny, californium_249_shattered)
    data_recipe[californium_249_tiny_fluid].order = c_a

    local californium_249_fluid = "ske_californium_249_fluid"
    data_recipe[californium_249_fluid].subgroup = is_shattered_californium_249
    data_recipe[californium_249_fluid].icons = ITEM_FLUID_I(californium_249_shattered, californium_249_shattered)
    data_recipe[californium_249_fluid].order = c_b

    local californium_249_reform = "ske_californium_249_reform"
    data_recipe[californium_249_reform].subgroup = is_shattered_californium_249
    data_recipe[californium_249_reform].icons = FLUID_ITEM_I(californium_249_shattered, californium_249_shattered)
    data_recipe[californium_249_reform].order = c_c

    local hec_249 = "ske_hec_249"
    data_item[hec_249].localised_description = show_formula and {chemical_formula, "Cf-249"} or nil
    data_item[hec_249].subgroup = is_shattered_californium_249
    data_item[hec_249].order = d
    data_item[hec_249].stack_size = 50
    data_item[hec_249].weight = 20000
    data_recipe[hec_249].subgroup = is_shattered_californium_249
    data_recipe[hec_249].icons = THREE_ITEM_I(californium_249_shattered, californium_252_shattered, hec_249)
    data_recipe[hec_249].order = d

    local hec_249_oxide = "ske_hec_249_oxide"
    data_item[hec_249_oxide].localised_description = show_formula and {chemical_formula, "CfO[font=default-tiny-bold]2[/font]-249"} or nil
    data_item[hec_249_oxide].subgroup = is_shattered_californium_249
    data_item[hec_249_oxide].order = e
    data_item[hec_249_oxide].stack_size = 50
    data_item[hec_249_oxide].weight = 20000
    data_recipe[hec_249_oxide].subgroup = is_shattered_californium_249
    data_recipe[hec_249_oxide].icons = THREE_I(hec_249, oxygen_angels, hec_249_oxide)
    data_recipe[hec_249_oxide].order = e

    local hec_249_decayed = "ske_hec_249_decayed"
    data_item[hec_249_decayed].localised_description = show_formula and {chemical_formula, "Cf-249"} or nil
    data_item[hec_249_decayed].subgroup = is_shattered_californium_249
    data_item[hec_249_decayed].order = f
    data_item[hec_249_decayed].stack_size = 50
    data_item[hec_249_decayed].weight = 20000
    data_recipe[hec_249_decayed].subgroup = is_shattered_californium_249
    data_recipe[hec_249_decayed].icons = TWO_I(hec_249_oxide, hec_249_decayed)
    data_recipe[hec_249_decayed].order = f

    local hec_249_reprocess = "ske_hec_249_reprocess"
    data_recipe[hec_249_reprocess].subgroup = is_shattered_californium_249
    data_recipe[hec_249_reprocess].icons = THREE_D_I(hec_249_decayed, nil, nil, californium_250_tiny, californium_251_tiny, californium_252_tiny)
    data_recipe[hec_249_reprocess].order = g

    local hec_249_train = "ske_hec_249_train"
    data_item[hec_249_train].localised_description = show_formula and {chemical_formula, "Cf-249"} or nil
    data_item[hec_249_train].subgroup = is_shattered_californium_249
    data_item[hec_249_train].order = h
    data_item[hec_249_train].stack_size = 50
    data_item[hec_249_train].weight = 20000
    data_recipe[hec_249_train].subgroup = is_shattered_californium_249
    data_recipe[hec_249_train].icons = THREE_FFI_I(californium_249_shattered, californium_251_shattered, hec_249_train)
    data_recipe[hec_249_train].order = h

    -- Cf-250
    data_item[californium_250_tiny].localised_description = show_formula and {chemical_formula, "Cf-250"} or nil
    data_item[californium_250_tiny].subgroup = is_shattered_californium_250
    data_item[californium_250_tiny].order = a
    data_item[californium_250_tiny].stack_size = 200
    data_item[californium_250_tiny].weight = 5000

    data_item[californium_250_shattered].localised_description = show_formula and {chemical_formula, "Cf-250"} or nil
    data_item[californium_250_shattered].subgroup = is_shattered_californium_250
    data_item[californium_250_shattered].order = b
    data_item[californium_250_shattered].stack_size = 200
    data_item[californium_250_shattered].weight = 5000
    data_recipe[californium_250_shattered].subgroup = is_shattered_californium_250
    data_recipe[californium_250_shattered].icons = TWO_ITEM_I(californium_250_tiny, californium_250_shattered)
    data_recipe[californium_250_shattered].order = b

    data_fluid[californium_250_shattered].localised_description = show_formula and {chemical_formula, "Cf-250"} or nil
    data_fluid[californium_250_shattered].subgroup = is_shattered_californium_250
    data_fluid[californium_250_shattered].order = c

    local californium_250_tiny_fluid = "ske_californium_250_tiny_fluid"
    data_recipe[californium_250_tiny_fluid].subgroup = is_shattered_californium_250
    data_recipe[californium_250_tiny_fluid].icons = ITEM_FLUID_I(californium_250_tiny, californium_250_shattered)
    data_recipe[californium_250_tiny_fluid].order = c_a

    local californium_250_fluid = "ske_californium_250_fluid"
    data_recipe[californium_250_fluid].subgroup = is_shattered_californium_250
    data_recipe[californium_250_fluid].icons = ITEM_FLUID_I(californium_250_shattered, californium_250_shattered)
    data_recipe[californium_250_fluid].order = c_b

    local californium_250_reform = "ske_californium_250_reform"
    data_recipe[californium_250_reform].subgroup = is_shattered_californium_250
    data_recipe[californium_250_reform].icons = FLUID_ITEM_I(californium_250_shattered, californium_250_shattered)
    data_recipe[californium_250_reform].order = c_c

    -- Cf-251
    data_item[californium_251_tiny].localised_description = show_formula and {chemical_formula, "Cf-251"} or nil
    data_item[californium_251_tiny].subgroup = is_shattered_californium_251
    data_item[californium_251_tiny].order = a
    data_item[californium_251_tiny].stack_size = 200
    data_item[californium_251_tiny].weight = 5000

    data_item[californium_251_shattered].localised_description = show_formula and {chemical_formula, "Cf-251"} or nil
    data_item[californium_251_shattered].subgroup = is_shattered_californium_251
    data_item[californium_251_shattered].order = b
    data_item[californium_251_shattered].stack_size = 200
    data_item[californium_251_shattered].weight = 5000
    data_recipe[californium_251_shattered].subgroup = is_shattered_californium_251
    data_recipe[californium_251_shattered].icons = TWO_ITEM_I(californium_251_tiny, californium_251_shattered)
    data_recipe[californium_251_shattered].order = b

    data_fluid[californium_251_shattered].localised_description = show_formula and {chemical_formula, "Cf-251"} or nil
    data_fluid[californium_251_shattered].subgroup = is_shattered_californium_251
    data_fluid[californium_251_shattered].order = c

    local californium_251_tiny_fluid = "ske_californium_251_tiny_fluid"
    data_recipe[californium_251_tiny_fluid].subgroup = is_shattered_californium_251
    data_recipe[californium_251_tiny_fluid].icons = ITEM_FLUID_I(californium_251_tiny, californium_251_shattered)
    data_recipe[californium_251_tiny_fluid].order = c_a

    local californium_251_fluid = "ske_californium_251_fluid"
    data_recipe[californium_251_fluid].subgroup = is_shattered_californium_251
    data_recipe[californium_251_fluid].icons = ITEM_FLUID_I(californium_251_shattered, californium_251_shattered)
    data_recipe[californium_251_fluid].order = c_b

    local californium_251_reform = "ske_californium_251_reform"
    data_recipe[californium_251_reform].subgroup = is_shattered_californium_251
    data_recipe[californium_251_reform].icons = FLUID_ITEM_I(californium_251_shattered, californium_251_shattered)
    data_recipe[californium_251_reform].order = c_c

    local hec_251 = "ske_hec_251"
    data_item[hec_251].localised_description = show_formula and {chemical_formula, "Cf-251"} or nil
    data_item[hec_251].subgroup = is_shattered_californium_251
    data_item[hec_251].order = d
    data_item[hec_251].stack_size = 50
    data_item[hec_251].weight = 20000
    data_recipe[hec_251].subgroup = is_shattered_californium_251
    data_recipe[hec_251].icons = THREE_ITEM_I(californium_251_shattered, californium_252_shattered, hec_251)
    data_recipe[hec_251].order = d

    local hec_251_oxide = "ske_hec_251_oxide"
    data_item[hec_251_oxide].localised_description = show_formula and {chemical_formula, "CfO[font=default-tiny-bold]2[/font]-251"} or nil
    data_item[hec_251_oxide].subgroup = is_shattered_californium_251
    data_item[hec_251_oxide].order = e
    data_item[hec_251_oxide].stack_size = 50
    data_item[hec_251_oxide].weight = 20000
    data_recipe[hec_251_oxide].subgroup = is_shattered_californium_251
    data_recipe[hec_251_oxide].icons = THREE_I(hec_251, oxygen_angels, hec_251_oxide)
    data_recipe[hec_251_oxide].order = e

    local hec_251_decayed = "ske_hec_251_decayed"
    data_item[hec_251_decayed].localised_description = show_formula and {chemical_formula, "Cf-251"} or nil
    data_item[hec_251_decayed].subgroup = is_shattered_californium_251
    data_item[hec_251_decayed].order = f
    data_item[hec_251_decayed].stack_size = 50
    data_item[hec_251_decayed].weight = 20000
    data_recipe[hec_251_decayed].subgroup = is_shattered_californium_251
    data_recipe[hec_251_decayed].icons = TWO_I(hec_251_oxide, hec_251_decayed)
    data_recipe[hec_251_decayed].order = f

    local hec_251_reprocess = "ske_hec_251_reprocess"
    data_recipe[hec_251_reprocess].subgroup = is_shattered_californium_251
    data_recipe[hec_251_reprocess].icons = TWO_D_I(hec_251_decayed, nil, californium_251_tiny, californium_252_tiny)
    data_recipe[hec_251_reprocess].order = g

    local hec_251_train = "ske_hec_251_train"
    data_item[hec_251_train].localised_description = show_formula and {chemical_formula, "Cf-251"} or nil
    data_item[hec_251_train].subgroup = is_shattered_californium_251
    data_item[hec_251_train].order = h
    data_item[hec_251_train].stack_size = 50
    data_item[hec_251_train].weight = 20000
    data_recipe[hec_251_train].subgroup = is_shattered_californium_251
    data_recipe[hec_251_train].icons = THREE_FFI_I(californium_252_shattered, californium_250_shattered, hec_251_train)
    data_recipe[hec_251_train].order = h

    -- Cf-252
    data_item[californium_252_tiny].localised_description = show_formula and {chemical_formula, "Cf-252"} or nil
    data_item[californium_252_tiny].subgroup = is_shattered_californium_252
    data_item[californium_252_tiny].order = a
    data_item[californium_252_tiny].stack_size = 200
    data_item[californium_252_tiny].weight = 5000

    data_item[californium_252_shattered].localised_description = show_formula and {chemical_formula, "Cf-252"} or nil
    data_item[californium_252_shattered].subgroup = is_shattered_californium_252
    data_item[californium_252_shattered].order = b
    data_item[californium_252_shattered].stack_size = 200
    data_item[californium_252_shattered].weight = 5000
    data_recipe[californium_252_shattered].subgroup = is_shattered_californium_252
    data_recipe[californium_252_shattered].icons = TWO_ITEM_I(californium_252_tiny, californium_252_shattered)
    data_recipe[californium_252_shattered].order = b

    data_fluid[californium_252_shattered].localised_description = show_formula and {chemical_formula, "Cf-252"} or nil
    data_fluid[californium_252_shattered].subgroup = is_shattered_californium_252
    data_fluid[californium_252_shattered].order = c

    local californium_252_tiny_fluid = "ske_californium_252_tiny_fluid"
    data_recipe[californium_252_tiny_fluid].subgroup = is_shattered_californium_252
    data_recipe[californium_252_tiny_fluid].icons = ITEM_FLUID_I(californium_252_tiny, californium_252_shattered)
    data_recipe[californium_252_tiny_fluid].order = c_a

    local californium_252_fluid = "ske_californium_252_fluid"
    data_recipe[californium_252_fluid].subgroup = is_shattered_californium_252
    data_recipe[californium_252_fluid].icons = ITEM_FLUID_I(californium_252_shattered, californium_252_shattered)
    data_recipe[californium_252_fluid].order = c_b

    local californium_252_reform = "ske_californium_252_reform"
    data_recipe[californium_252_reform].subgroup = is_shattered_californium_252
    data_recipe[californium_252_reform].icons = FLUID_ITEM_I(californium_252_shattered, californium_252_shattered)
    data_recipe[californium_252_reform].order = c_c

    -- OTHERS
    local uranium_ore_shattered = "shattered_uranium_ore"
    data_resource[uranium_ore_shattered].subgroup = is_shattered_others
    data_resource[uranium_ore_shattered].order = a

    local uranium_enrichment_239 = "ske_uranium_enrichment_239"
    data_recipe[uranium_enrichment_239].subgroup = is_shattered_others
    data_recipe[uranium_enrichment_239].icons = AR_IIFI_ALT_I(uranium_235, uranium_238, plutonium_239_shattered, uranium_235)
    data_recipe[uranium_enrichment_239].order = b

    local uranium_enrichment_242 = "ske_uranium_enrichment_242"
    data_recipe[uranium_enrichment_242].subgroup = is_shattered_others
    data_recipe[uranium_enrichment_242].icons = AR_IIFI_ALT_I(uranium_235, uranium_238, plutonium_242_shattered, uranium_235)
    data_recipe[uranium_enrichment_242].order = b_a

    local curium_247_from_245_246 = "ske_curium_247_from_245_246"
    data_recipe[curium_247_from_245_246].subgroup = is_shattered_others
    data_recipe[curium_247_from_245_246].icons = THREE_FFI_I(curium_245_shattered, curium_246_shattered, curium_247_shattered)
    data_recipe[curium_247_from_245_246].order = c

    -- UNSORTED
    data_fluid[liquid_nitrogen_shattered].subgroup = is_shattered_unsorted
    data_item["ske_nanometal_plate"].subgroup = is_shattered_unsorted

    -- ???
    local alternate_methods_of_production = "alternate_methods_of_production"
    table.insert(data_technology[alternate_methods_of_production].effects, {type = unlock_recipe, recipe = ammonia_shattered})
    table.insert(data_technology[alternate_methods_of_production].effects, {type = unlock_recipe, recipe = oxygen_hydrogen})
    table.insert(data_technology[alternate_methods_of_production].effects, {type = unlock_recipe, recipe = water_vaporization})
end