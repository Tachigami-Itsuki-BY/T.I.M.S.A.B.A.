if mods [hyarion_mods] then
    -- RECIPE ORE
    data_item[metallic_ore].subgroup = is_hyarion_recipe_ore
    data_item[metallic_ore].order = a
    data_item[metallic_ore].stack_size = 200
    data_resource[metallic_ore].subgroup = is_hyarion_recipe_ore
    data_resource[metallic_ore].order = a

    data_resource[carbon_ore].subgroup = is_hyarion_recipe_ore
    data_resource[carbon_ore].icon = data_item[carbon_angels].icon
    data_resource[carbon_ore].icon_size = data_item[carbon_angels].icon_size
    data_resource[carbon_ore].order = d

    data_resource[quartz_ore].subgroup = is_hyarion_recipe_ore
    data_resource[quartz_ore].order = e

    -- RECIPE POLISHED
    data_fluid[polishing_compound_hyarion].subgroup = is_hyarion_recipe_polished
    data_fluid[polishing_compound_hyarion].order = a
    data_recipe[polishing_compound_hyarion].subgroup = is_hyarion_recipe_polished
    data_recipe[polishing_compound_hyarion].icons = THREE_I(aluminium_oxide, mineral_oil_angels, polishing_compound_hyarion)
    data_recipe[polishing_compound_hyarion].order = a
    data_recipe[polishing_compound_hyarion].energy_required = 8
    data_recipe[polishing_compound_hyarion].ingredients =
    {
        {type = item, name = aluminium_oxide, amount = 1},
        {type = fluid, name = mineral_oil_angels, amount = 30}
    }
    data_recipe[polishing_compound_hyarion].results[1].amount = 30

    data_item[polished_quartz_hyarion].localised_description = show_formula and {chemical_formula, "SiO[font=default-tiny-bold]2[/font]"} or nil
    data_item[polished_quartz_hyarion].subgroup = is_hyarion_recipe_polished
    data_item[polished_quartz_hyarion].order = b
    data_item[polished_quartz_hyarion].stack_size = 200
    data_recipe[polished_quartz_hyarion].subgroup = is_hyarion_recipe_polished
    data_recipe[polished_quartz_hyarion].icons = THREE_I(raw_quartz_arig, polishing_compound_hyarion, polished_quartz_hyarion)
    data_recipe[polished_quartz_hyarion].order = b
    data_recipe[polished_quartz_hyarion].energy_required = 4
    data_recipe[polished_quartz_hyarion].ingredients =
    {
        {type = item, name = raw_quartz_arig, amount = 4},
        {type = fluid, name = polishing_compound_hyarion, amount = 15}
    }

    local rocket_fuel_hyarion = "planetaris-hyarion-rocket-fuel"
    data_recipe[rocket_fuel_hyarion].subgroup = is_hyarion_recipe_polished
    data_recipe[rocket_fuel_hyarion].icons = BUILDING_R_I(rocket_fuel, planet_hyarion)
    data_recipe[rocket_fuel_hyarion].order = b_a
    data_recipe[rocket_fuel_hyarion].energy_required = 4
    data_recipe[rocket_fuel_hyarion].ingredients =
    {
        {type = item, name = carbon_angels, amount = 4},
        {type = item, name = polished_quartz_hyarion, amount = 2},
        {type = fluid, name = polishing_compound_hyarion, amount = 15}
    }
    data_recipe[rocket_fuel_hyarion].surface_conditions = {{property = pressure, min = 8000, max = 8000}}

    local planetaris_polished_ruby = "planetaris-polished-ruby"
    data_recipe[planetaris_polished_ruby].subgroup = is_hyarion_recipe_polished
    data_recipe[planetaris_polished_ruby].icons = THREE_I(raw_ruby_bob, polishing_compound_hyarion, polished_ruby_bob)
    data_recipe[planetaris_polished_ruby].order = c
    data_recipe[planetaris_polished_ruby].energy_required = 4
    data_recipe[planetaris_polished_ruby].ingredients =
    {
        {type = item, name = raw_ruby_bob, amount = 4},
        {type = fluid, name = polishing_compound_hyarion, amount = 15}
    }

    local planetaris_polished_sapphire = "planetaris-polished-sapphire"
    data_recipe[planetaris_polished_sapphire].subgroup = is_hyarion_recipe_polished
    data_recipe[planetaris_polished_sapphire].icons = THREE_I(raw_sapphire_bob, polishing_compound_hyarion, polished_sapphire_bob)
    data_recipe[planetaris_polished_sapphire].order = d
    data_recipe[planetaris_polished_sapphire].energy_required = 4
    data_recipe[planetaris_polished_sapphire].ingredients =
    {
        {type = item, name = raw_sapphire_bob, amount = 4},
        {type = fluid, name = polishing_compound_hyarion, amount = 15}
    }

    local planetaris_polished_emerald = "planetaris-polished-emerald"
    data_recipe[planetaris_polished_emerald].subgroup = is_hyarion_recipe_polished
    data_recipe[planetaris_polished_emerald].icons = THREE_I(raw_emerald_bob, polishing_compound_hyarion, polished_emerald_bob)
    data_recipe[planetaris_polished_emerald].order = e
    data_recipe[planetaris_polished_emerald].energy_required = 4
    data_recipe[planetaris_polished_emerald].ingredients =
    {
        {type = item, name = raw_emerald_bob, amount = 4},
        {type = fluid, name = polishing_compound_hyarion, amount = 15}
    }

    local planetaris_polished_diamond = "planetaris-polished-diamond"
    data_recipe[planetaris_polished_diamond].subgroup = is_hyarion_recipe_polished
    data_recipe[planetaris_polished_diamond].icons = THREE_I(raw_diamond_bob, polishing_compound_hyarion, polished_diamond_bob)
    data_recipe[planetaris_polished_diamond].order = f
    data_recipe[planetaris_polished_diamond].energy_required = 4
    data_recipe[planetaris_polished_diamond].ingredients =
    {
        {type = item, name = raw_diamond_bob, amount = 2},
        {type = fluid, name = polishing_compound_hyarion, amount = 15}
    }

    data_item[alexandrite_hyarion].subgroup = is_hyarion_recipe_polished
    data_item[alexandrite_hyarion].order = g
    data_item[alexandrite_hyarion].stack_size = 200
    data_recipe[alexandrite_hyarion].subgroup = is_hyarion_recipe_polished
    data_recipe[alexandrite_hyarion].icons = FOUR_D_I(polished_diamond_bob, polished_sapphire_bob, polishing_compound_hyarion, polished_emerald_bob, alexandrite_hyarion)
    data_recipe[alexandrite_hyarion].order = g
    data_recipe[alexandrite_hyarion].energy_required = 8
    data_recipe[alexandrite_hyarion].ingredients =
    {
        {type = item, name = polished_diamond_bob, amount = 1},
        {type = item, name = polished_sapphire_bob, amount = 4},
        {type = item, name = polished_emerald_bob, amount = 4},
        {type = fluid, name = polishing_compound_hyarion, amount = 30}
    }

    local refraction_light = "planetaris-refraction-light"
    data_fluid[refraction_light].subgroup = is_hyarion_recipe_polished
    data_fluid[refraction_light].order = h

    data_item[charged_alexandrite_hyarion].subgroup = is_hyarion_recipe_polished
    data_item[charged_alexandrite_hyarion].order = i
    data_item[charged_alexandrite_hyarion].stack_size = 200
    data_recipe[charged_alexandrite_hyarion].subgroup = is_hyarion_recipe_polished
    data_recipe[charged_alexandrite_hyarion].icons = THREE_I(alexandrite_hyarion, refraction_light, charged_alexandrite_hyarion)
    data_recipe[charged_alexandrite_hyarion].order = i
    data_recipe[charged_alexandrite_hyarion].energy_required = 4
    data_recipe[charged_alexandrite_hyarion].ingredients =
    {
        {type = item, name = alexandrite_hyarion, amount = 1},
        {type = fluid, name = refraction_light, amount = 60}
    }

    local unstable_shard = "planetaris-unstable-shard"
    data_item[unstable_shard].subgroup = is_hyarion_recipe_polished
    data_item[unstable_shard].order = j
    data_item[unstable_shard].stack_size = 200

    local pure_light = "planetaris-pure-light"
    data_fluid[pure_light].subgroup = is_hyarion_recipe_polished
    data_fluid[pure_light].order = k
    data_recipe[pure_light].subgroup = is_hyarion_recipe_polished
    data_recipe[pure_light].icons = TWO_D_I(refraction_light, alexandrite_hyarion, pure_light, unstable_shard)
    data_recipe[pure_light].order = k
    data_recipe[pure_light].ingredients =
    {
        {type = fluid, name = refraction_light, amount = 60},
        {type = item, name = alexandrite_hyarion, amount = 1}
    }
    data_recipe[pure_light].results =
    {
        {type = fluid, name = pure_light, amount = 60, temperature = 500},
        {type = item, name = unstable_shard, amount = 1}
    }
    data_recipe[pure_light].main_product = pure_light

    local fluorite_discharge = "planetaris-fluorite-discharge"
    data_recipe[fluorite_discharge].subgroup = is_hyarion_recipe_polished
    data_recipe[fluorite_discharge].icons = THREE_R_I(charged_alexandrite_hyarion, unstable_shard, pure_light)
    data_recipe[fluorite_discharge].order = k_a
    data_recipe[fluorite_discharge].results =
    {
        {type = fluid, name = pure_light, amount = 60, temperature = 500},
        {type = item, name = unstable_shard, amount = 1}
    }

    local unstable_gem = "planetaris-unstable-gem"
    data_capsule[unstable_gem].subgroup = is_hyarion_recipe_polished
    data_capsule[unstable_gem].order = l
    data_capsule[unstable_gem].stack_size = 200
    data_recipe[unstable_gem].subgroup = is_hyarion_recipe_polished
    data_recipe[unstable_gem].icons = FOUR_D_I(unstable_shard, polished_quartz_hyarion, pure_light, polished_ruby_bob, unstable_gem)
    data_recipe[unstable_gem].order = l
    data_recipe[unstable_gem].energy_required = 8
    data_recipe[unstable_gem].ingredients =
    {
        {type = item, name = unstable_shard, amount = 4},
        {type = item, name = polished_quartz_hyarion, amount = 4},
        {type = item, name = polished_ruby_bob, amount = 4},
        {type = fluid, name = pure_light, amount = 30}
    }

    if mods [tellus_mods] then
        data_item[unstable_crystal].subgroup = is_hyarion_recipe_polished
        data_item[unstable_crystal].order = m
        data_item[unstable_crystal].stack_size = 200

        local unstable_crystallizer = "planetaris-unstable-crystallizer"
        data_item[unstable_crystallizer].subgroup = is_hyarion_recipe_polished
        data_item[unstable_crystallizer].order = n
        data_item[unstable_crystallizer].stack_size = 200
        data_item[unstable_crystallizer].fuel_category = base_fuel
        data_item[unstable_crystallizer].fuel_value = 900 .. kJ
        data_recipe[unstable_crystallizer].subgroup = is_hyarion_recipe_polished
        data_recipe[unstable_crystallizer].icons = THREE_I(unstable_shard, lava, unstable_crystallizer)
        data_recipe[unstable_crystallizer].order = n
        data_recipe[unstable_crystallizer].ingredients =
        {
            {type = item, name = unstable_shard, amount = 8},
            {type = fluid, name = lava, amount = 60}
        }

        data_item[unstable_bacteria].subgroup = is_hyarion_recipe_polished
        data_item[unstable_bacteria].order = o
        data_item[unstable_bacteria].stack_size = 200

        local unstable_crystal_manipulation = "planetaris-unstable-crystal-manipulation"
        data_recipe[unstable_crystal_manipulation].subgroup = is_hyarion_recipe_polished
        data_recipe[unstable_crystal_manipulation].icons = TWO_D_I(unstable_crystal, charged_alexandrite_hyarion, unstable_bacteria, unstable_crystallizer)
        data_recipe[unstable_crystal_manipulation].order = o_a
        data_recipe[unstable_crystal_manipulation].results =
        {
            {type = item, name = unstable_bacteria, amount = 4},
            {type = item, name = unstable_crystallizer, amount = 1, probability = 0.03125}
        }
    end

    -- RECIPE BASIC
    data_item[simulating_unit].subgroup = is_hyarion_recipe_other
    data_item[simulating_unit].order = a
    data_item[simulating_unit].stack_size = 200
    data_recipe[simulating_unit].subgroup = is_hyarion_recipe_other
    data_recipe[simulating_unit].order = a
    data_recipe[simulating_unit].energy_required = 16
    data_recipe[simulating_unit].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 1},
        {type = item, name = supercapacitor, amount = 1},
        {type = item, name = silica_arig, amount = 4},
        {type = item, name = fiber_optics_cable, amount = 2}
    }

    local nanoscale_lens = "planetaris-nanoscale-lens"
    data_item[nanoscale_lens].subgroup = is_hyarion_recipe_other
    data_item[nanoscale_lens].order = b
    data_item[nanoscale_lens].stack_size = 200
    data_recipe[nanoscale_lens].subgroup = is_hyarion_recipe_other
    data_recipe[nanoscale_lens].order = b
    data_recipe[nanoscale_lens].energy_required = 4

    local ruby_laser = "planetaris-ruby-laser"
    data_item[ruby_laser].subgroup = is_hyarion_recipe_other
    data_item[ruby_laser].order = c
    data_item[ruby_laser].stack_size = 200
    data_recipe[ruby_laser].subgroup = is_hyarion_recipe_other
    data_recipe[ruby_laser].order = c
    data_recipe[ruby_laser].ingredients =
    {
        {type = item, name = polished_ruby_bob, amount = 8},
        {type = item, name = niobium_iron_plate, amount = 4},
        {type = item, name = heavy_glass_arig, amount = 2},
        {type = item, name = polished_quartz_hyarion, amount = 2}
    }

    data_item[crystalization_motor].subgroup = is_hyarion_recipe_other
    data_item[crystalization_motor].order = d
    data_recipe[crystalization_motor].subgroup = is_hyarion_recipe_other
    data_recipe[crystalization_motor].order = d
    data_recipe[crystalization_motor].energy_required = 4
    data_recipe[crystalization_motor].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 2},
        {type = item, name = advanced_processing_unit, amount = 2},
        {type = item, name = polished_emerald_bob, amount = 4},
        {type = item, name = polished_quartz_hyarion, amount = 8}
    }

    local beryl = "planetaris-beryl"
    data_item[beryl].localised_description = show_formula and {chemical_formula, "Be[font=default-tiny-bold]3[/font]Al[font=default-tiny-bold]2[/font]Si[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]18[/font]"} or nil
    data_item[beryl].subgroup = is_hyarion_recipe_other
    data_item[beryl].order = e
    data_item[beryl].stack_size = 200
    data_recipe[beryl].subgroup = is_hyarion_recipe_other
    data_recipe[beryl].icons = TWO_I(polished_emerald_bob, beryl)
    data_recipe[beryl].order = e
    data_recipe[beryl].energy_required = 4
    data_recipe[beryl].ingredients =
    {
        {type = item, name = polished_emerald_bob, amount = 1},
        {type = item, name = unstable_gem, amount = 1}
    }
    data_recipe[beryl].results = {{type = item, name = beryl, amount = 1}}
    data_recipe[beryl].main_product = beryl

    data_item[beryllium_plate].localised_description = show_formula and {chemical_formula, "Be"} or nil
    data_item[beryllium_plate].subgroup = is_hyarion_recipe_other
    data_item[beryllium_plate].order = f
    data_item[beryllium_plate].stack_size = 200
    data_recipe[beryllium_plate].subgroup = is_hyarion_recipe_other
    data_recipe[beryllium_plate].icons = TWO_I(beryl, beryllium_plate)
    data_recipe[beryllium_plate].order = f
    data_recipe[beryllium_plate].energy_required = 4 -- 2Be₃Al₂Si₆O₁₈ --> 6Be + 2Al₂O₃ + 12SiO₂ + 3O₂
    data_recipe[beryllium_plate].ingredients = {{type = item, name = beryl, amount = 2}}
    data_recipe[beryllium_plate].results =
    {
        {type = item, name = beryllium_plate, amount = 6},
        {type = item, name = aluminium_oxide, amount = 2},
        {type = item, name = raw_quartz_arig, amount = 12},
        {type = fluid, name = oxygen_angels, amount = 45}
    }
    data_recipe[beryllium_plate].main_product = beryllium_plate

    local beryllium_nitride = "planetaris-beryllium-nitride"
    data_item[beryllium_nitride].localised_description = show_formula and {chemical_formula, "Be[font=default-tiny-bold]3[/font]N[font=default-tiny-bold]2[/font]"} or nil
    data_item[beryllium_nitride].subgroup = is_hyarion_recipe_other
    data_item[beryllium_nitride].order = g
    data_item[beryllium_nitride].stack_size = 200
    data_recipe[beryllium_nitride].subgroup = is_hyarion_recipe_other
    data_recipe[beryllium_nitride].icons = TWO_I(beryl, beryllium_nitride)
    data_recipe[beryllium_nitride].order = g
    data_recipe[beryllium_nitride].energy_required = 4 -- 2Be₃Al₂Si₆O₁₈ + 2N₂ --> 2Be₃N₂ + 2Al₂O₃ + 12SiO₂ + 3O₂
    data_recipe[beryllium_nitride].ingredients =
    {
        {type = item, name = beryl, amount = 2},
        {type = fluid, name = nitrogen_angels, amount = 30}
    }
    data_recipe[beryllium_nitride].results =
    {
        {type = item, name = beryllium_nitride, amount = 2},
        {type = item, name = aluminium_oxide, amount = 2},
        {type = item, name = raw_quartz_arig, amount = 12},
        {type = fluid, name = oxygen_angels, amount = 45}
    }
    data_recipe[beryllium_nitride].main_product = beryllium_nitride

    data_item[refractory_ceramics].subgroup = is_hyarion_recipe_other
    data_item[refractory_ceramics].order = h
    data_item[refractory_ceramics].stack_size = 200
    data_recipe[refractory_ceramics].subgroup = is_hyarion_recipe_other
    data_recipe[refractory_ceramics].order = h
    data_recipe[refractory_ceramics].energy_required = 4
    data_recipe[refractory_ceramics].ingredients =
    {
        {type = item, name = silica_arig, amount = 32},
        {type = item, name = beryllium_nitride, amount = 4},
        {type = fluid, name = aluminium_molten_angels, amount = 15}
    }

    data_tool[polishing_science_pack].subgroup = is_hyarion_recipe_other
    data_tool[polishing_science_pack].order = i
    data_recipe[polishing_science_pack].subgroup = is_hyarion_recipe_other
    data_recipe[polishing_science_pack].order = i
    data_recipe[polishing_science_pack].energy_required = 8
    data_recipe[polishing_science_pack].ingredients =
    {
        {type = item, name = polished_ruby_bob, amount = 4},
        {type = item, name = polished_sapphire_bob, amount = 4},
        {type = item, name = polished_quartz_hyarion, amount = 4},
        {type = fluid, name = polishing_compound_hyarion, amount = 15}
    }

    data_tool[refraction_science_pack].subgroup = is_hyarion_recipe_other
    data_tool[refraction_science_pack].order = j
    data_recipe[refraction_science_pack].subgroup = is_hyarion_recipe_other
    data_recipe[refraction_science_pack].order = j
    data_recipe[refraction_science_pack].energy_required = 8
    data_recipe[refraction_science_pack].ingredients =
    {
        {type = item, name = simulating_unit, amount = 4},
        {type = item, name = nanoscale_lens, amount = 4},
        {type = item, name = ruby_laser, amount = 4},
        {type = fluid, name = polishing_compound_hyarion, amount = 15}
    }

    data_recipe[carbon_nanotube_hyarion].subgroup = is_hyarion_recipe_other
    data_recipe[carbon_nanotube_hyarion].icons = THREE_R_I(methane_angels, carbon_nanotube, hydrogen_angels)
    data_recipe[carbon_nanotube_hyarion].order = k
    data_recipe[carbon_nanotube_hyarion].energy_required = 4 -- CH₄ -N₂/cat-> C + 2H₂
    data_recipe[carbon_nanotube_hyarion].ingredients =
    {
        {type = fluid, name = methane_angels, amount = 30},
        {type = fluid, name = nitrogen_angels, amount = 30},
        {type = item, name = catalyst_red, amount = 1}
    }
    data_recipe[carbon_nanotube_hyarion].results =
    {
        {type = item, name = carbon_nanotube, amount = 2},
        {type = fluid, name = hydrogen_angels, amount = 60},
        {type = fluid, name = nitrogen_angels, amount = 15}, -- 30
        {type = item, name = catalyst_carrier, amount = 1}
    }
    data_recipe[carbon_nanotube_hyarion].main_product = carbon_nanotube
    data_recipe[carbon_nanotube_hyarion].surface_conditions = {{property = pressure, min = 8000, max = 8000}}

    -- RECIPE MANIPULATION
    local carbon_nanotube_particle_manipulation = "planetaris-advanced-carbon-nanotube"
    data_recipe[carbon_nanotube_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[carbon_nanotube_particle_manipulation].icons = TWO_I(carbon_fiber, carbon_nanotube)
    data_recipe[carbon_nanotube_particle_manipulation].order = a
    data_recipe[carbon_nanotube_particle_manipulation].energy_required = 4
    data_recipe[carbon_nanotube_particle_manipulation].ingredients = {{type = item, name = carbon_fiber, amount = 4}}

    local coal_particle_manipulation = "planetaris-coal-particle-manipulation"
    data_recipe[coal_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[coal_particle_manipulation].icons = TWO_I(carbon_angels, coal)
    data_recipe[coal_particle_manipulation].order = b
    data_recipe[coal_particle_manipulation].energy_required = 4
    data_recipe[coal_particle_manipulation].ingredients[1].amount = 4

    local carbon_particle_manipulation = "planetaris-carbon-particle-manipulation"
    data_recipe[carbon_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[carbon_particle_manipulation].icons = TWO_I(coal, carbon_angels)
    data_recipe[carbon_particle_manipulation].order = b_a
    data_recipe[carbon_particle_manipulation].energy_required = 4
    data_recipe[carbon_particle_manipulation].ingredients[1].amount = 2
    data_recipe[carbon_particle_manipulation].results[1].amount = 4

    local calcite_particle_manipulation = "planetaris-calcite-particle-manipulation"
    data_recipe[calcite_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[calcite_particle_manipulation].icons = TWO_I(raw_quartz_arig, calcite)
    data_recipe[calcite_particle_manipulation].order = c
    data_recipe[calcite_particle_manipulation].energy_required = 4

    local raw_quartz_particle_manipulation = "planetaris-raw-quartz-particle-manipulation"
    data_recipe[raw_quartz_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[raw_quartz_particle_manipulation].icons = TWO_I(calcite, raw_quartz_arig)
    data_recipe[raw_quartz_particle_manipulation].order = c_a
    data_recipe[raw_quartz_particle_manipulation].energy_required = 4

    local coal_to_stone_particle_manipulation = "planetaris-coal-to-stone-particle-manipulation"
    data_recipe[coal_to_stone_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[coal_to_stone_particle_manipulation].icons = TWO_I(coal, stone)
    data_recipe[coal_to_stone_particle_manipulation].order = d
    data_recipe[coal_to_stone_particle_manipulation].energy_required = 4
    data_recipe[coal_to_stone_particle_manipulation].ingredients[1].amount = 2
    data_recipe[coal_to_stone_particle_manipulation].results[1].amount = 4

    local stone_to_coal_particle_manipulation = "planetaris-stone-to-coal-particle-manipulation"
    data_recipe[stone_to_coal_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[stone_to_coal_particle_manipulation].icons = TWO_I(stone, coal)
    data_recipe[stone_to_coal_particle_manipulation].order = d_a
    data_recipe[stone_to_coal_particle_manipulation].energy_required = 4
    data_recipe[stone_to_coal_particle_manipulation].ingredients[1].amount = 4
    data_recipe[stone_to_coal_particle_manipulation].results[1].amount = 2

    local sapphire_to_sulfur_particle_manipulation = "planetaris-sapphire-to-sulfur-particle-manipulation"
    data_recipe[sapphire_to_sulfur_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[sapphire_to_sulfur_particle_manipulation].icons = TWO_I(raw_sapphire_bob, sulfur)
    data_recipe[sapphire_to_sulfur_particle_manipulation].order = e
    data_recipe[sapphire_to_sulfur_particle_manipulation].energy_required = 4
    data_recipe[sapphire_to_sulfur_particle_manipulation].ingredients[1].amount = 2
    data_recipe[sapphire_to_sulfur_particle_manipulation].results[1].amount = 4

    local sulfur_to_sapphire_particle_manipulation = "planetaris-sulfur-to-sapphire-particle-manipulation"
    data_recipe[sulfur_to_sapphire_particle_manipulation].subgroup = is_hyarion_recipe_particle
    data_recipe[sulfur_to_sapphire_particle_manipulation].icons = TWO_I(sulfur, raw_sapphire_bob)
    data_recipe[sulfur_to_sapphire_particle_manipulation].order = e_a
    data_recipe[sulfur_to_sapphire_particle_manipulation].energy_required = 4
    data_recipe[sulfur_to_sapphire_particle_manipulation].ingredients[1].amount = 4
    data_recipe[sulfur_to_sapphire_particle_manipulation].results[1].amount = 2

    -- LOGISTICS
    data_item[fiber_optics_cable].subgroup = is_hyarion_logistics
    data_item[fiber_optics_cable].order = a
    data_item[fiber_optics_cable].stack_size = 200
    data_recipe[fiber_optics_cable].subgroup = is_hyarion_logistics
    data_recipe[fiber_optics_cable].order = a
    data_pipe[fiber_optics_cable].subgroup = is_hyarion_logistics
    data_pipe[fiber_optics_cable].order = a

    -- MINING
    data_item[geode_mining_drill].subgroup = is_hyarion_mining
    data_item[geode_mining_drill].order = a
    data_item[geode_mining_drill].stack_size = 32
    data_item[geode_mining_drill].weight = 31250
    data_recipe[geode_mining_drill].subgroup = is_hyarion_mining
    data_recipe[geode_mining_drill].order = a
    data_recipe[geode_mining_drill].energy_required = 8
    data_recipe[geode_mining_drill].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = big_mining_drill, amount = 1},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = polished_quartz_hyarion, amount = 8}
    }
    data_mining_drill[geode_mining_drill].subgroup = is_hyarion_mining
    data_mining_drill[geode_mining_drill].order = a
    data_mining_drill[geode_mining_drill].energy_usage = 240 .. kW
    data_mining_drill[geode_mining_drill].energy_source.emissions_per_minute.pollution = 32

    -- BUILDING
    data_item[quartz_furnace].subgroup = is_hyarion_building
    data_item[quartz_furnace].order = a
    data_item[quartz_furnace].stack_size = 32
    data_item[quartz_furnace].weight = 31250
    data_recipe[quartz_furnace].subgroup = is_hyarion_building
    data_recipe[quartz_furnace].order = a
    data_recipe[quartz_furnace].ingredients = {{type = item, name = raw_quartz_arig, amount = 4}}
    data_furnace[quartz_furnace].subgroup = is_hyarion_building
    data_furnace[quartz_furnace].order = a
    data_furnace[quartz_furnace].energy_usage = 225 .. kW

    data_item[refraction_ray_collector].subgroup = is_hyarion_building
    data_item[refraction_ray_collector].order = b
    data_item[refraction_ray_collector].stack_size = 32
    data_item[refraction_ray_collector].weight = 31250
    data_recipe[refraction_ray_collector].subgroup = is_hyarion_building
    data_recipe[refraction_ray_collector].order = b
    data_recipe[refraction_ray_collector].ingredients =
    {
        {type = item, name = raw_quartz_arig, amount = 4},
        {type = item, name = niobium_titanium_plate, amount = 4},
        {type = item, name = niobium_titanium_cable, amount = 4}
    }
    data_lightning_attractor[refraction_ray_collector].subgroup = is_hyarion_building
    data_lightning_attractor[refraction_ray_collector].order = b
    data_lightning_attractor[refraction_ray_collector].efficiency = 0.25

    local big_refraction_ray_collector = "planetaris-big-refraction-ray-collector"
    data_item[big_refraction_ray_collector].subgroup = is_hyarion_building
    data_item[big_refraction_ray_collector].order = c
    data_item[big_refraction_ray_collector].stack_size = 32
    data_item[big_refraction_ray_collector].weight = 31250
    data_recipe[big_refraction_ray_collector].subgroup = is_hyarion_building
    data_recipe[big_refraction_ray_collector].order = c
    data_recipe[big_refraction_ray_collector].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = heavy_glass_arig, amount = 2},
        {type = item, name = polished_quartz_hyarion, amount = 8}
    }
    data_lightning_attractor[big_refraction_ray_collector].subgroup = is_hyarion_building
    data_lightning_attractor[big_refraction_ray_collector].order = c
    data_lightning_attractor[big_refraction_ray_collector].efficiency = 0.75

    local polisher = "planetaris-polisher"
    data_item[polisher].subgroup = is_hyarion_building
    data_item[polisher].order = d
    data_item[polisher].stack_size = 32
    data_item[polisher].weight = 31250
    data_recipe[polisher].subgroup = is_hyarion_building
    data_recipe[polisher].order = d
    data_recipe[polisher].energy_required = 8
    data_recipe[polisher].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = raw_quartz_arig, amount = 64},
        {type = item, name = niobium_iron_plate, amount = 4}
    }
    data_assembling[polisher].subgroup = is_hyarion_building
    data_assembling[polisher].order = d
    data_assembling[polisher].energy_usage = (240 - drain) .. kW
    data_assembling[polisher].energy_source.drain = drain .. kW

    local hyper_assembling_machine = "planetaris-assembling-machine-4"
    data_item[hyper_assembling_machine].subgroup = is_hyarion_building
    data_item[hyper_assembling_machine].order = e
    data_item[hyper_assembling_machine].stack_size = 32
    data_item[hyper_assembling_machine].weight = 31250
    data_recipe[hyper_assembling_machine].subgroup = is_hyarion_building
    data_recipe[hyper_assembling_machine].order = f
    data_recipe[hyper_assembling_machine].energy_required = 8
    data_recipe[hyper_assembling_machine].ingredients =
    {
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 4},
        {type = item, name = niobium_iron_bearing, amount = 8},
        {type = item, name = simulating_unit, amount = 4},
        {type = item, name = niobium_iron_plate, amount = 4},
        {type = item, name = assembling_machine_6, amount = 1},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8}
    }
    data_assembling[hyper_assembling_machine].subgroup = is_hyarion_building
    data_assembling[hyper_assembling_machine].order = f
    data_assembling[hyper_assembling_machine].crafting_speed = 8
    data_assembling[hyper_assembling_machine].module_slots = 8
    data_assembling[hyper_assembling_machine].energy_usage = (480 - 120) .. kW
    data_assembling[hyper_assembling_machine].energy_source.emissions_per_minute.pollution = 0
    data_assembling[hyper_assembling_machine].energy_source.drain = 120 .. kW

    local particle_manipulator = "planetaris-particle-manipulator"
    data_item[particle_manipulator].subgroup = is_hyarion_building
    data_item[particle_manipulator].order = f
    data_item[particle_manipulator].stack_size = 32
    data_item[particle_manipulator].weight = 31250
    data_recipe[particle_manipulator].subgroup = is_hyarion_building
    data_recipe[particle_manipulator].order = f
    data_recipe[particle_manipulator].energy_required = 8
    data_recipe[particle_manipulator].ingredients =
    {
        {type = item, name = holmium_plate, amount = 32},
        {type = item, name = heavy_glass_arig, amount = 64},
        {type = item, name = simulating_unit, amount = 8},
        {type = item, name = nanoscale_lens, amount = 32},
        {type = item, name = crystalization_motor, amount = 16}
    }
    data_assembling[particle_manipulator].subgroup = is_hyarion_building
    data_assembling[particle_manipulator].order = f
    data_assembling[particle_manipulator].module_slots = 4
    data_assembling[particle_manipulator].energy_usage = (2400 - 60) .. kW
    data_assembling[particle_manipulator].energy_source.drain = 60 .. kW

    local refraction_plant = "planetaris-refraction-plant"
    data_item[refraction_plant].subgroup = is_hyarion_building
    data_item[refraction_plant].order = g
    data_item[refraction_plant].stack_size = 32
    data_item[refraction_plant].weight = 31250
    data_recipe[refraction_plant].subgroup = is_hyarion_building
    data_recipe[refraction_plant].order = g
    data_recipe[refraction_plant].energy_required = 16
    data_recipe[refraction_plant].ingredients =
    {
        {type = item, name = holmium_plate, amount = 128},
        {type = item, name = fiber_optics_cable, amount = 64},
        {type = item, name = simulating_unit, amount = 16},
        {type = item, name = nanoscale_lens, amount = 16},
        {type = item, name = crystalization_motor, amount = 4}
    }
    data_assembling[refraction_plant].subgroup = is_hyarion_building
    data_assembling[refraction_plant].order = g
    data_assembling[refraction_plant].module_slots = 4
    data_assembling[refraction_plant].energy_usage = (360 - drain) .. kW
    data_assembling[refraction_plant].energy_source.emissions_per_minute.pollution = 2
    data_assembling[refraction_plant].energy_source.drain = drain .. kW

    local refraction_generator = "planetaris-refraction-generator"
    data_item[refraction_generator].subgroup = is_hyarion_building
    data_item[refraction_generator].order = h
    data_item[refraction_generator].stack_size = 32
    data_item[refraction_generator].weight = 31250
    data_recipe[refraction_generator].subgroup = is_hyarion_building
    data_recipe[refraction_generator].order = h
    data_recipe[refraction_generator].energy_required = 16
    data_recipe[refraction_generator].ingredients =
    {
        {type = item, name = holmium_plate, amount = 64},
        {type = item, name = alexandrite_hyarion, amount = 16},
        {type = item, name = fiber_optics_cable, amount = 32},
        {type = item, name = simulating_unit, amount = 16},
        {type = item, name = crystalization_motor, amount = 8}
    }
    data_generator[refraction_generator].subgroup = is_hyarion_building
    data_generator[refraction_generator].order = h
    data_generator[refraction_generator].max_power_output = 14400 .. kW
    data_generator[refraction_generator].fluid_usage_per_tick = 0.125

    -- WAR
    local personal_ruby_laser_defense_eq = "planetaris-personal-ruby-laser-defense-equipment"
    data_item[personal_ruby_laser_defense_eq].subgroup = is_hyarion_war
    data_item[personal_ruby_laser_defense_eq].order = a
    data_item[personal_ruby_laser_defense_eq].stack_size = 8
    data_item[personal_ruby_laser_defense_eq].weight = 125000
    data_recipe[personal_ruby_laser_defense_eq].subgroup = is_hyarion_war
    data_recipe[personal_ruby_laser_defense_eq].order = a
    data_recipe[personal_ruby_laser_defense_eq].energy_required = 32
    if mods [bobequipment] then
        data_recipe[personal_ruby_laser_defense_eq].ingredients =
        {
            {type = item, name = laser_defense_eq_6, amount = 1},
            {type = item, name = simulating_unit, amount = 16},
            {type = item, name = crystalization_motor, amount = 8},
            {type = item, name = ruby_laser, amount = 4}
        }
    else
        data_recipe[personal_ruby_laser_defense_eq].ingredients =
        {
            {type = item, name = laser_defense_eq_1, amount = 1},
            {type = item, name = simulating_unit, amount = 16},
            {type = item, name = crystalization_motor, amount = 8},
            {type = item, name = ruby_laser, amount = 4}
        }
    end
    data_active_defense_eq[personal_ruby_laser_defense_eq].subgroup = is_hyarion_war
    data_active_defense_eq[personal_ruby_laser_defense_eq].order = a
    data_active_defense_eq[personal_ruby_laser_defense_eq].energy_source.buffer_capacity = (960 * 2) .. kJ
    data_active_defense_eq[personal_ruby_laser_defense_eq].energy_source.input_flow_limit = (960 * 1.5) .. kW
    data_active_defense_eq[personal_ruby_laser_defense_eq].attack_parameters.cooldown = 60
    data_active_defense_eq[personal_ruby_laser_defense_eq].attack_parameters.damage_modifier = 8
    data_active_defense_eq[personal_ruby_laser_defense_eq].attack_parameters.range = 44
    data_active_defense_eq[personal_ruby_laser_defense_eq].attack_parameters.ammo_type.energy_consumption = 960 .. kJ
    local action = data_active_defense_eq[personal_ruby_laser_defense_eq].attack_parameters.ammo_type.action
    local target = action[1] or action
    if target and target.action_delivery and target.action_delivery.beam then
        target.action_delivery.max_length = 44
        target.action_delivery.duration = 60
    end
    data_active_defense_eq[personal_ruby_laser_defense_eq].attack_parameters.min_range = 0

    local ruby_laser_turret = "planetaris-ruby-laser-turret"
    data_item[ruby_laser_turret].subgroup = is_hyarion_war
    data_item[ruby_laser_turret].order = b
    data_item[ruby_laser_turret].stack_size = 32
    data_item[ruby_laser_turret].weight = 31250
    data_recipe[ruby_laser_turret].subgroup = is_hyarion_war
    data_recipe[ruby_laser_turret].order = b
    data_recipe[ruby_laser_turret].energy_required = 32
    if mods [bobwarfare] then
        data_recipe[ruby_laser_turret].ingredients =
        {
            {type = item, name = laser_turret_5, amount = 1},
            {type = item, name = simulating_unit, amount = 32},
            {type = item, name = crystalization_motor, amount = 16},
            {type = item, name = ruby_laser, amount = 8}
        }
    else
        data_recipe[ruby_laser_turret].ingredients =
        {
            {type = item, name = laser_turret_1, amount = 1},
            {type = item, name = simulating_unit, amount = 32},
            {type = item, name = crystalization_motor, amount = 16},
            {type = item, name = ruby_laser, amount = 8}
        }
    end
    data_electric_turret[ruby_laser_turret].subgroup = is_hyarion_war
    data_electric_turret[ruby_laser_turret].order = b
    data_electric_turret[ruby_laser_turret].energy_source.buffer_capacity = (1920 * 2) .. kJ
    data_electric_turret[ruby_laser_turret].energy_source.input_flow_limit = (1920 * 1.5) .. kW
    data_electric_turret[ruby_laser_turret].energy_source.drain = nil
    data_electric_turret[ruby_laser_turret].attack_parameters.cooldown = 60
    data_electric_turret[ruby_laser_turret].attack_parameters.damage_modifier = 16
    data_electric_turret[ruby_laser_turret].attack_parameters.range = 44
    data_electric_turret[ruby_laser_turret].attack_parameters.ammo_type.energy_consumption = 1920 .. kJ
    local ammo = data_electric_turret[ruby_laser_turret].attack_parameters.ammo_type
    if ammo and ammo.action and ammo.action.action_delivery then
        local delivery = ammo.action.action_delivery
        delivery.max_length = 44
        delivery.duration = 60
        delivery.min_range = 8
    end
    data_electric_turret[ruby_laser_turret].attack_parameters.min_range = 8

    bobmods.lib.recipe.update_recycling_recipe
    ({
        ruby_laser,
        crystalization_motor,
        geode_mining_drill,
        quartz_furnace,
        refraction_ray_collector,
        big_refraction_ray_collector,
        polisher,
        hyper_assembling_machine,
        particle_manipulator,
        refraction_plant,
        refraction_generator,
        personal_ruby_laser_defense_eq,
        ruby_laser_turret
    })

    -- TECHNOLOGY
    local planet_discovery_hyarion = "planet-discovery-hyarion"
    data_technology[planet_discovery_hyarion].effects =
    {
        {type = unlock_space_location, space_location = "hyarion", use_icon_overlay_constant = true},
        {type = unlock_recipe, recipe = hyarion_air},
        {type = unlock_recipe, recipe = hyarion_air_separation}
    }
    data_technology[planet_discovery_hyarion].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {compression_science_pack, 1}
    }

    data_technology["planetaris-polishing"].effects =
    {
        {type = unlock_recipe, recipe = polisher},
        {type = unlock_recipe, recipe = polishing_compound_hyarion},
        {type = unlock_recipe, recipe = polished_quartz_hyarion},
        {type = unlock_recipe, recipe = rocket_fuel_hyarion}
    }

    data_technology[polishing_science_pack].effects = {{type = unlock_recipe, recipe = polishing_science_pack}}

    table.insert(data_technology[big_refraction_ray_collector].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[big_refraction_ray_collector].unit.ingredients, {metallurgic_science_pack, 1})

    local tech_diamond_polishing = "planetaris-diamond-polishing"
    table.insert(data_technology[tech_diamond_polishing].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[tech_diamond_polishing].unit.ingredients, {electromagnetic_science_pack, 1})

    table.insert(data_technology[ruby_laser].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[ruby_laser].unit.ingredients, {electromagnetic_science_pack, 1})

    table.insert(data_technology[advanced_raw_quartz].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[advanced_raw_quartz].unit.ingredients, {electromagnetic_science_pack, 1})

    table.insert(data_technology[simulating_unit].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[simulating_unit].unit.ingredients, {electromagnetic_science_pack, 1})

    table.insert(data_technology[nanoscale_lens].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[nanoscale_lens].unit.ingredients, {electromagnetic_science_pack, 1})

    local tech_hyper_automation = "planetaris-automation-4"
    table.insert(data_technology[tech_hyper_automation].prerequisites, tech_automation_6)
    table.insert(data_technology[tech_hyper_automation].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[tech_hyper_automation].unit.ingredients, {electromagnetic_science_pack, 1})

    data_technology[refraction_science_pack].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {compression_science_pack, 1},
        {refraction_science_pack, 1}
    }

    table.insert(data_technology[simulating_unit .. _productivity].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[simulating_unit .. _productivity].unit.ingredients, {metallurgic_science_pack, 1})
    data_technology[simulating_unit .. _productivity].max_level = 30

    local supercapacitor_hyarion_productivity = "planetaris-supercapacitor-productivity"
    table.insert(data_technology[supercapacitor_hyarion_productivity].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[supercapacitor_hyarion_productivity].unit.ingredients, {metallurgic_science_pack, 1})
    data_technology[supercapacitor_hyarion_productivity].max_level = 30

    table.insert(data_technology[crystalization_motor].unit.ingredients, {utility_science_pack, 1})

    if mods [bobequipment] then
        table.insert(data_technology[ruby_laser_turret].prerequisites, laser_defense_eq_6)
    else
        table.insert(data_technology[ruby_laser_turret].prerequisites, laser_defense_eq_1)
    end
    if mods [bobwarfare] then
        table.insert(data_technology[ruby_laser_turret].prerequisites, tech_laser_turret_5)
    else
        table.insert(data_technology[ruby_laser_turret].prerequisites, laser_turret_1)
    end
    table.insert(data_technology[ruby_laser_turret].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[ruby_laser_turret].unit.ingredients, {electromagnetic_science_pack, 1})

    local tech_particle_manipulation = "planetaris-particle-manipulation"
    table.insert(data_technology[tech_particle_manipulation].prerequisites, carbon_fiber)
    data_technology[tech_particle_manipulation].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {compression_science_pack, 1},
        {refraction_science_pack, 1}
    }

    table.insert(data_technology[refraction_plant].unit.ingredients, {utility_science_pack, 1})

    table.insert(data_technology[unstable_gem .. s].unit.ingredients, {utility_science_pack, 1})

    local tech_beryllium_processing = "planetaris-beryllium-processing"
    rocket_part_hyarion = "planetaris-hyarion-rocket-part"
    table.insert(data_technology[tech_beryllium_processing].effects, {type = unlock_recipe, recipe = carbon_nanotube_hyarion})
    table.insert(data_technology[tech_beryllium_processing].effects, {type = unlock_recipe, recipe = rocket_part_hyarion})
    data_technology[tech_beryllium_processing].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {compression_science_pack, 1},
        {refraction_science_pack, 1}
    }

    local tehc_space_facility_1 = "planetaris-space-facilities-1"
    data_technology[tehc_space_facility_1].effects =
    {
        {type = unlock_recipe, recipe = space_manufactorer},
        {type = unlock_recipe, recipe = refractory_ceramics},
        {type = unlock_recipe, recipe = space_science_pack_hyarion}
    }
    data_technology[tehc_space_facility_1].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1},
        {compression_science_pack, 1},
        {refraction_science_pack, 1}
    }

    local planetaris_bismuth_processing = "planetaris-bismuth-processing"
    table.insert(data_technology[planetaris_bismuth_processing].prerequisites, tech_molybdenite_processing_4)
    data_technology[planetaris_bismuth_processing].effects =
    {
        {type = unlock_recipe, recipe = bismuth_asteroid_crushing},
        {type = unlock_recipe, recipe = polished_bismuth},
        {type = unlock_recipe, recipe = bismuth_oxyselenide},
        {type = unlock_recipe, recipe = bismuth_transistor}
    }
    table.insert(data_technology[planetaris_bismuth_processing].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[planetaris_bismuth_processing].unit.ingredients, {cryogenic_science_pack, 1})

    table.insert(data_technology[electromagnetic_radar].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[electromagnetic_radar].unit.ingredients, {cryogenic_science_pack, 1})

    table.insert(data_technology[zero_grav_accumulator].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[zero_grav_accumulator].unit.ingredients, {cryogenic_science_pack, 1})
end