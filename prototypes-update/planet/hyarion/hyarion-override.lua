-- [font=default-tiny-bold][/font]

if mods [hyarion_mods] then
    local refraction_ray_collector = "planetaris-refraction-ray-collector"
    data_item[refraction_ray_collector].subgroup = is_hyarion_building
    data_item[refraction_ray_collector].stack_size = 32
    data_item[refraction_ray_collector].weight = 31250
    data_recipe[refraction_ray_collector].subgroup = is_hyarion_building
    data_lightning_attractor[refraction_ray_collector].subgroup = is_hyarion_building

    local big_refraction_ray_collector = "planetaris-big-refraction-ray-collector"
    data_item[big_refraction_ray_collector].subgroup = is_hyarion_building
    data_item[big_refraction_ray_collector].stack_size = 32
    data_item[big_refraction_ray_collector].weight = 31250
    data_recipe[big_refraction_ray_collector].subgroup = is_hyarion_building
    data_lightning_attractor[big_refraction_ray_collector].subgroup = is_hyarion_building

    local quartz_furnace = "planetaris-quartz-furnace"
    data_item[quartz_furnace].subgroup = is_hyarion_building
    data_item[quartz_furnace].stack_size = 32
    data_item[quartz_furnace].weight = 31250
    data_recipe[quartz_furnace].subgroup = is_hyarion_building
    data_furnace[quartz_furnace].subgroup = is_hyarion_building

    local polisher = "planetaris-polisher"
    data_item[polisher].subgroup = is_hyarion_building
    data_item[polisher].stack_size = 32
    data_item[polisher].weight = 31250
    data_recipe[polisher].subgroup = is_hyarion_building
    data_assembling[polisher].subgroup = is_hyarion_building

    local particle_manipulator = "planetaris-particle-manipulator"
    data_item[particle_manipulator].subgroup = is_hyarion_building
    data_item[particle_manipulator].stack_size = 32
    data_item[particle_manipulator].weight = 31250
    data_recipe[particle_manipulator].subgroup = is_hyarion_building
    data_assembling[particle_manipulator].subgroup = is_hyarion_building

    local refraction_plant = "planetaris-refraction-plant"
    data_item[refraction_plant].subgroup = is_hyarion_building
    data_item[refraction_plant].stack_size = 32
    data_item[refraction_plant].weight = 31250
    data_recipe[refraction_plant].subgroup = is_hyarion_building
    data_assembling[refraction_plant].subgroup = is_hyarion_building

    local refraction_generator = "planetaris-refraction-generator"
    data_item[refraction_generator].subgroup = is_hyarion_building
    data_item[refraction_generator].stack_size = 32
    data_item[refraction_generator].weight = 31250
    data_recipe[refraction_generator].subgroup = is_hyarion_building
    data_generator[refraction_generator].subgroup = is_hyarion_building

    local burner_drill_alternative = "planetaris-burner-drill-alternative"
    data_recipe[burner_drill_alternative].subgroup = is_hyarion_mining

    local geode_mining_drill = "hyarion-geode-mining-drill"
    data_item[geode_mining_drill].subgroup = is_hyarion_mining
    data_item[geode_mining_drill].stack_size = 32
    data_item[geode_mining_drill].weight = 31250
    data_recipe[geode_mining_drill].subgroup = is_hyarion_mining
    data_mining_drill[geode_mining_drill].subgroup = is_hyarion_mining

    local personal_ruby_laser_defense_equipment = "planetaris-personal-ruby-laser-defense-equipment"
    data_item[personal_ruby_laser_defense_equipment].subgroup = is_hyarion_war
    data_item[personal_ruby_laser_defense_equipment].stack_size = 8
    data_item[personal_ruby_laser_defense_equipment].weight = 125000
    data_recipe[personal_ruby_laser_defense_equipment].subgroup = is_hyarion_war
    data_active_defense_equipment[personal_ruby_laser_defense_equipment].subgroup = is_hyarion_war

    local ruby_laser_turret = "planetaris-ruby-laser-turret"
    data_item[ruby_laser_turret].subgroup = is_hyarion_war
    data_item[ruby_laser_turret].stack_size = 32
    data_item[ruby_laser_turret].weight = 31250
    data_recipe[ruby_laser_turret].subgroup = is_hyarion_war
    data_electric_turret[ruby_laser_turret].subgroup = is_hyarion_war

    local metallic_ore = "planetaris-metallic-ore"
    data_item[metallic_ore].subgroup = is_hyarion_recipe_a
    data_item[metallic_ore].order = a
    data_item[metallic_ore].stack_size = 200

    local carbon_ore = "planetaris-carbon-ore"
    data_resource[carbon_ore].subgroup = is_hyarion_recipe_a
    data_resource[carbon_ore].order = b

    local quartz_ore = "planetaris-quartz-ore"
    data_resource[quartz_ore].subgroup = is_hyarion_recipe_a
    data_resource[quartz_ore].order = c

    local metallic_smelting = "planetaris-metallic-smelting"
    data_recipe[metallic_smelting].subgroup = is_hyarion_recipe_a
    data_recipe[metallic_smelting].icons = THREE_R_I(metallic_ore, iron_plate, copper_plate)
    data_recipe[metallic_smelting].order = d

    local iron_metallic_sifting = "planetaris-iron-metallic-sifting"
    data_recipe[iron_metallic_sifting].subgroup = is_hyarion_recipe_a
    data_recipe[iron_metallic_sifting].icons = TWO_I(metallic_ore, iron_ore)
    data_recipe[iron_metallic_sifting].order = e

    local copper_metallic_sifting = "planetaris-copper-metallic-sifting"
    data_recipe[copper_metallic_sifting].subgroup = is_hyarion_recipe_a
    data_recipe[copper_metallic_sifting].icons = TWO_I(metallic_ore, copper_ore)
    data_recipe[copper_metallic_sifting].order = f

    local polishing_carbon_fiber = "planetaris-polishing-carbon-fiber"
    data_recipe[polishing_carbon_fiber].subgroup = is_hyarion_recipe_a
    data_recipe[polishing_carbon_fiber].icons = THREE_I(carbon_angels, lava, carbon_fiber)
    data_recipe[polishing_carbon_fiber].order = g

    data_fluid[polishing_compound_hyarion].subgroup = is_hyarion_recipe_a
    data_fluid[polishing_compound_hyarion].order = h
    data_recipe[polishing_compound_hyarion].subgroup = is_hyarion_recipe_a
    data_recipe[polishing_compound_hyarion].icons = THREE_I(iron_ore, lava, polishing_compound_hyarion)
    data_recipe[polishing_compound_hyarion].order = h

    data_item[polished_quartz_hyarion].subgroup = is_hyarion_recipe_a
    data_item[polished_quartz_hyarion].order = i
    data_item[polished_quartz_hyarion].stack_size = 200
    data_recipe[polished_quartz_hyarion].subgroup = is_hyarion_recipe_a
    data_recipe[polished_quartz_hyarion].icons = THREE_I(raw_quartz_arig, polishing_compound_hyarion, polished_quartz_hyarion)
    data_recipe[polished_quartz_hyarion].order = i

    local hyarion_rocket_fuel = "planetaris-hyarion-rocket-fuel"
    data_recipe[hyarion_rocket_fuel].subgroup = is_hyarion_recipe_a
    data_recipe[hyarion_rocket_fuel].icons = THREE_D_I(carbon_angels, polished_quartz_hyarion, polishing_compound_hyarion, rocket_fuel)
    data_recipe[hyarion_rocket_fuel].order = j

    local planetaris_polished_ruby = "planetaris-polished-ruby"
    data_recipe[planetaris_polished_ruby].subgroup = is_hyarion_recipe_b
    data_recipe[planetaris_polished_ruby].icons = THREE_I(raw_ruby_bob, polishing_compound_hyarion, polished_ruby_bob)
    data_recipe[planetaris_polished_ruby].order = a

    local planetaris_polished_sapphire = "planetaris-polished-sapphire"
    data_recipe[planetaris_polished_sapphire].subgroup = is_hyarion_recipe_b
    data_recipe[planetaris_polished_sapphire].icons = THREE_I(raw_sapphire_bob, polishing_compound_hyarion, polished_sapphire_bob)
    data_recipe[planetaris_polished_sapphire].order = a_a

    local planetaris_polished_emerald = "planetaris-polished-emerald"
    data_recipe[planetaris_polished_emerald].subgroup = is_hyarion_recipe_b
    data_recipe[planetaris_polished_emerald].icons = THREE_I(raw_emerald_bob, polishing_compound_hyarion, polished_emerald_bob)
    data_recipe[planetaris_polished_emerald].order = a_b

    local planetaris_polished_diamond = "planetaris-polished-diamond"
    data_recipe[planetaris_polished_diamond].subgroup = is_hyarion_recipe_b
    data_recipe[planetaris_polished_diamond].icons = THREE_I(raw_diamond_bob, polishing_compound_hyarion, polished_diamond_bob)
    data_recipe[planetaris_polished_diamond].order = a_c

    data_item[fluorite_hyarion].subgroup = is_hyarion_recipe_b
    data_item[fluorite_hyarion].order = b
    data_item[fluorite_hyarion].stack_size = 200
    data_item[fluorite_hyarion].weight = 5000
    data_recipe[fluorite_hyarion].subgroup = is_hyarion_recipe_b
    data_recipe[fluorite_hyarion].icons = FOUR_D_I(polished_diamond_bob, polished_sapphire_bob, polished_emerald_bob, polishing_compound_hyarion, fluorite_hyarion)
    data_recipe[fluorite_hyarion].order = b

    local refraction_light = "planetaris-refraction-light"
    data_fluid[refraction_light].subgroup = is_hyarion_recipe_b
    data_fluid[refraction_light].order = c

    data_item[charged_fluorite_hyarion].subgroup = is_hyarion_recipe_b
    data_item[charged_fluorite_hyarion].order = d
    data_item[charged_fluorite_hyarion].stack_size = 200
    data_item[charged_fluorite_hyarion].weight = 5000
    data_recipe[charged_fluorite_hyarion].subgroup = is_hyarion_recipe_b
    data_recipe[charged_fluorite_hyarion].icons = THREE_I(fluorite_hyarion, refraction_light, charged_fluorite_hyarion)
    data_recipe[charged_fluorite_hyarion].order = d

    local unstable_shard = "planetaris-unstable-shard"
    data_item[unstable_shard].subgroup = is_hyarion_recipe_b
    data_item[unstable_shard].order = e
    data_item[unstable_shard].stack_size = 200
    data_item[unstable_shard].weight = 5000

    local pure_light = "planetaris-pure-light"
    data_fluid[pure_light].subgroup = is_hyarion_recipe_b
    data_fluid[pure_light].order = f
    data_recipe[pure_light].subgroup = is_hyarion_recipe_b
    data_recipe[pure_light].icons = TWO_D_I(refraction_light, fluorite_hyarion, pure_light, unstable_shard)
    data_recipe[pure_light].order = f
    data_recipe[pure_light].main_product = pure_light

    local fluorite_discharge = "planetaris-fluorite-discharge"
    data_recipe[fluorite_discharge].subgroup = is_hyarion_recipe_b
    data_recipe[fluorite_discharge].icons = THREE_R_I(charged_fluorite_hyarion, unstable_shard, pure_light)
    data_recipe[fluorite_discharge].order = f_a

    local unstable_gem = "planetaris-unstable-gem"
    data_capsule[unstable_gem].subgroup = is_hyarion_recipe_b
    data_capsule[unstable_gem].order = g
    data_capsule[unstable_gem].stack_size = 200
    data_recipe[unstable_gem].subgroup = is_hyarion_recipe_b
    data_recipe[unstable_gem].icons = FOUR_D_I(unstable_shard, polished_quartz_hyarion, polished_ruby_bob, pure_light, unstable_gem)
    data_recipe[unstable_gem].order = g

    data_item[fiber_optics_cable].subgroup = is_hyarion_recipe_c
    data_item[fiber_optics_cable].order = a
    data_item[fiber_optics_cable].stack_size = 200
    data_item[fiber_optics_cable].weight = 5000
    data_recipe[fiber_optics_cable].subgroup = is_hyarion_recipe_c
    data_recipe[fiber_optics_cable].icons = THREE_D_I(polished_sapphire_bob, polished_diamond_bob, plastic, fiber_optics_cable)
    data_recipe[fiber_optics_cable].order = a

    data_item[simulating_unit].subgroup = is_hyarion_recipe_c
    data_item[simulating_unit].order = b
    data_item[simulating_unit].stack_size = 200
    data_item[simulating_unit].weight = 5000
    data_recipe[simulating_unit].subgroup = is_hyarion_recipe_c
    data_recipe[simulating_unit].icons = FOUR_D_I(processing_unit, fiber_optics_cable, silica_arig, supercapacitor, simulating_unit)
    data_recipe[simulating_unit].order = b

    local nanoscale_lens = "planetaris-nanoscale-lens"
    data_item[nanoscale_lens].subgroup = is_hyarion_recipe_c
    data_item[nanoscale_lens].order = c
    data_item[nanoscale_lens].stack_size = 200
    data_item[nanoscale_lens].weight = 5000
    data_recipe[nanoscale_lens].subgroup = is_hyarion_recipe_c
    data_recipe[nanoscale_lens].icons = THREE_D_I(polished_diamond_bob, glass_bob, polishing_compound_hyarion, nanoscale_lens)
    data_recipe[nanoscale_lens].order = c

    local ruby_laser = "planetaris-ruby-laser"
    data_item[ruby_laser].subgroup = is_hyarion_recipe_c
    data_item[ruby_laser].order = d
    data_item[ruby_laser].stack_size = 200
    data_item[ruby_laser].weight = 5000
    data_recipe[ruby_laser].subgroup = is_hyarion_recipe_c
    data_recipe[ruby_laser].icons = FOUR_D_I(polished_ruby_bob, polished_quartz_hyarion, steel_plate, heavy_glass_arig, ruby_laser)
    data_recipe[ruby_laser].order = d

    local crystalization_motor = "planetaris-crystalization-motor"
    data_item[crystalization_motor].subgroup = is_hyarion_recipe_c
    data_item[crystalization_motor].order = e
    data_recipe[crystalization_motor].subgroup = is_hyarion_recipe_c
    data_recipe[crystalization_motor].icons = FOUR_D_I(engine_unit, electronic_circuit, polished_quartz_hyarion, polished_emerald_bob, crystalization_motor)
    data_recipe[crystalization_motor].order = e

    local beryl = "planetaris-beryl"
    data_item[beryl].localised_description = show_formula and {chemical_formula, "Be[font=default-tiny-bold]3[/font]Al[font=default-tiny-bold]2[/font]Si[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]18[/font]"} or nil
    data_item[beryl].subgroup = is_hyarion_recipe_c
    data_item[beryl].order = f
    data_item[beryl].stack_size = 200
    data_recipe[beryl].subgroup = is_hyarion_recipe_c
    data_recipe[beryl].icons = THREE_P_TWO_R_I(unstable_gem, polished_emerald_bob, polishing_compound_hyarion, beryl, aluminium_molten_angels)
    data_recipe[beryl].order = f

    data_item[beryllium_plate].localised_description = show_formula and {chemical_formula, "Be"} or nil
    data_item[beryllium_plate].subgroup = is_hyarion_recipe_c
    data_item[beryllium_plate].order = g
    data_item[beryllium_plate].stack_size = 200
    data_recipe[beryllium_plate].subgroup = is_hyarion_recipe_c
    data_recipe[beryllium_plate].icons = THREE_D_I(beryl, copper_ore, polishing_compound_hyarion, beryllium_plate)
    data_recipe[beryllium_plate].order = g

    local beryllium_nitride = "planetaris-beryllium-nitride"
    data_item[beryllium_nitride].localised_description = show_formula and {chemical_formula, "Be[font=default-tiny-bold]3[/font]N[font=default-tiny-bold]2[/font]"} or nil
    data_item[beryllium_nitride].subgroup = is_hyarion_recipe_c
    data_item[beryllium_nitride].order = h
    data_item[beryllium_nitride].stack_size = 200
    data_item[beryllium_nitride].weight= 5000
    data_recipe[beryllium_nitride].subgroup = is_hyarion_recipe_c
    data_recipe[beryllium_nitride].icons = THREE_D_I(beryl, sulfur, lava, beryllium_nitride)
    data_recipe[beryllium_nitride].order = h

    data_item[refractory_ceramics].subgroup = is_hyarion_recipe_c
    data_item[refractory_ceramics].order = i
    data_item[refractory_ceramics].stack_size = 200
    data_item[refractory_ceramics].weight= 5000
    data_recipe[refractory_ceramics].subgroup = is_hyarion_recipe_c
    data_recipe[refractory_ceramics].icons = THREE_D_I(beryllium_nitride, silica_arig, aluminium_molten_angels, refractory_ceramics)
    data_recipe[refractory_ceramics].order = i

    local polishing_science_pack = "planetaris-polishing-science-pack"
    data_tool[polishing_science_pack].subgroup = is_hyarion_recipe_c
    data_tool[polishing_science_pack].order = j
    data_recipe[polishing_science_pack].subgroup = is_hyarion_recipe_c
    data_recipe[polishing_science_pack].order = j

    local refraction_science_pack = "planetaris-refraction-science-pack"
    data_tool[refraction_science_pack].subgroup = is_hyarion_recipe_c
    data_tool[refraction_science_pack].order = k
    data_recipe[refraction_science_pack].subgroup = is_hyarion_recipe_c
    data_recipe[refraction_science_pack].order = k

    local coal_particle_manipulation = "planetaris-coal-particle-manipulation"
    data_recipe[coal_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[coal_particle_manipulation].icons = TWO_I(carbon_angels, coal)
    data_recipe[coal_particle_manipulation].order = a_a
    data_recipe[coal_particle_manipulation].energy_required = 2

    local carbon_particle_manipulation = "planetaris-carbon-particle-manipulation"
    data_recipe[carbon_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[carbon_particle_manipulation].icons = TWO_I(coal, carbon_angels)
    data_recipe[carbon_particle_manipulation].order = a_b
    data_recipe[carbon_particle_manipulation].energy_required = 2

    local calcite_particle_manipulation = "planetaris-calcite-particle-manipulation"
    data_recipe[calcite_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[calcite_particle_manipulation].icons = TWO_I(raw_quartz_arig, calcite)
    data_recipe[calcite_particle_manipulation].order = b_a
    data_recipe[calcite_particle_manipulation].energy_required = 2

    local raw_quartz_particle_manipulation = "planetaris-raw-quartz-particle-manipulation"
    data_recipe[raw_quartz_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[raw_quartz_particle_manipulation].icons = TWO_I(calcite, raw_quartz_arig)
    data_recipe[raw_quartz_particle_manipulation].order = b_b
    data_recipe[raw_quartz_particle_manipulation].energy_required = 2

    local coal_to_stone_particle_manipulation = "planetaris-coal-to-stone-particle-manipulation"
    data_recipe[coal_to_stone_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[coal_to_stone_particle_manipulation].icons = TWO_I(coal, stone)
    data_recipe[coal_to_stone_particle_manipulation].order = c_a
    data_recipe[coal_to_stone_particle_manipulation].energy_required = 2

    local stone_to_coal_particle_manipulation = "planetaris-stone-to-coal-particle-manipulation"
    data_recipe[stone_to_coal_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[stone_to_coal_particle_manipulation].icons = TWO_I(stone, coal)
    data_recipe[stone_to_coal_particle_manipulation].order = c_b
    data_recipe[stone_to_coal_particle_manipulation].energy_required = 2

    local sapphire_to_sulfur_particle_manipulation = "planetaris-sapphire-to-sulfur-particle-manipulation"
    data_recipe[sapphire_to_sulfur_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[sapphire_to_sulfur_particle_manipulation].icons = TWO_I(raw_sapphire_bob, sulfur)
    data_recipe[sapphire_to_sulfur_particle_manipulation].order = d_a
    data_recipe[sapphire_to_sulfur_particle_manipulation].energy_required = 2

    local sulfur_to_sapphire_particle_manipulation = "planetaris-sulfur-to-sapphire-particle-manipulation"
    data_recipe[sulfur_to_sapphire_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[sulfur_to_sapphire_particle_manipulation].icons = TWO_I(sulfur, raw_sapphire_bob)
    data_recipe[sulfur_to_sapphire_particle_manipulation].order = d_b
    data_recipe[sulfur_to_sapphire_particle_manipulation].energy_required = 2

    local hyarion_rocket_silo = "planetaris-hyarion-rocket-silo"
    data_recipe[hyarion_rocket_silo].subgroup = is_hyarion_recipe_space
    data_recipe[hyarion_rocket_silo].icons = R_P_I(rocket_silo, planet_hyarion)
    data_recipe[hyarion_rocket_silo].order = a

    local hyarion_rocket_part = "planetaris-hyarion-rocket-part"
    data_recipe[hyarion_rocket_part].subgroup = is_hyarion_recipe_space
    data_recipe[hyarion_rocket_part].icons = R_P_I(rocket_part, planet_hyarion)
    data_recipe[hyarion_rocket_part].order = b

    local hyarion_cargo_landing_pad = "planetaris-hyarion-cargo-landing-pad"
    data_recipe[hyarion_cargo_landing_pad].subgroup = is_hyarion_recipe_space
    data_recipe[hyarion_cargo_landing_pad].icons = R_P_I(cargo_landing_pad, planet_hyarion)
    data_recipe[hyarion_cargo_landing_pad].order = c
end