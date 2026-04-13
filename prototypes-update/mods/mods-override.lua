if mods [vulcanus_sulfuric_bacteria_mods] then
    is_vulcanus_sulfuric = "vulcanus-sulfuric"
    data:extend
    ({
        {
            type = item_subgroup,
            name = is_vulcanus_sulfuric,
            group = "vulcanus",
            order = i_a
        }
    })

    data_item[sulfuric_bacteria].subgroup = is_vulcanus_sulfuric
    data_item[sulfuric_bacteria].order = a
    data_item[sulfuric_bacteria].stack_size = 200
    data_item[sulfuric_bacteria].spoil_ticks = 5 * minute

    if mods [NoTimedSpoilage] then
        local sulfuric_bacteria_fermentation = "sulfuric-bacteria-fermentation"
        data_recipe[sulfuric_bacteria_fermentation].subgroup = is_vulcanus_sulfuric
        data_recipe[sulfuric_bacteria_fermentation].icons = TWO_I(sulfuric_bacteria, wood)
        data_recipe[sulfuric_bacteria_fermentation].order = a_a
    end

    local sulfuric_bacteria_pruning = "sulfuric-bacteria-pruning"
    data_recipe[sulfuric_bacteria_pruning].subgroup = is_vulcanus_sulfuric
    data_recipe[sulfuric_bacteria_pruning].icons = THREE_I(sulfuric_bacteria, water, sulfur)
    data_recipe[sulfuric_bacteria_pruning].order = a_b
    data_recipe[sulfuric_bacteria_pruning].ingredients[1].amount = 4
    data_recipe[sulfuric_bacteria_pruning].ingredients[2].amount = 120
    data_recipe[sulfuric_bacteria_pruning].results[1].amount = 4

    local sulfuric_bacteria_filtering = "sulfuric-bacteria-filtering"
    data_recipe[sulfuric_bacteria_filtering].subgroup = is_vulcanus_sulfuric
    data_recipe[sulfuric_bacteria_filtering].icons = THREE_D_I(coal, calcite, sulfuric_acid_angels, sulfuric_bacteria)
    data_recipe[sulfuric_bacteria_filtering].order = a_c
    data_recipe[sulfuric_bacteria_filtering].ingredients =
    {
        {type = item, name = coal, amount = 1},
        {type = item, name = calcite, amount = 1},
        {type = fluid, name = sulfuric_acid_angels, amount = 120}
    }

    local sulfuric_bacteria_cultivation = "sulfuric-bacteria-cultivation"
    data_recipe[sulfuric_bacteria_cultivation].subgroup = is_vulcanus_sulfuric
    data_recipe[sulfuric_bacteria_cultivation].icons = STONKS_I(stonks_png, sulfuric_bacteria)
    data_recipe[sulfuric_bacteria_cultivation].order = a_d
    data_recipe[sulfuric_bacteria_cultivation].ingredients =
    {
        {type = item, name = sulfuric_bacteria, amount = 1},
        {type = item, name = calcite, amount = 1},
        {type = fluid, name = sulfuric_acid_angels, amount = 120}
    }

    local sulfuric_bacteria_melting = "sulfuric-bacteria-melting"
    data_recipe[sulfuric_bacteria_melting].subgroup = is_vulcanus_sulfuric
    data_recipe[sulfuric_bacteria_melting].icons = RECYCLING_I(recycling_png, sulfuric_bacteria)
    data_recipe[sulfuric_bacteria_melting].order = e
    data_recipe[sulfuric_bacteria_melting].ingredients[3].amount = 60
end

if mods [NoTimedSpoilage] then
    local fermentation_plant = "fermentation-plant"
    data_item[fermentation_plant].subgroup = is_gleba_building
    data_item[fermentation_plant].order = a_a
    data_item[fermentation_plant].stack_size = 32
    data_item[fermentation_plant].weight = 31250
    data_recipe[fermentation_plant].subgroup = is_gleba_building
    data_recipe[fermentation_plant].order = a_a
    data_furnace[fermentation_plant].subgroup = is_gleba_building
    data_furnace[fermentation_plant].order = a_a
    data_furnace[fermentation_plant].effect_receiver = nil

    if mods [muluna_mods] then
        local diffused_plastic_fermentation = "muluna-diffused-plastic-fermentation"
        data_recipe[diffused_plastic_fermentation].subgroup = is_muluna_recipe
        data_recipe[diffused_plastic_fermentation].icons = TWO_I(diffused_plastic_muluna, plastic)
        data_recipe[diffused_plastic_fermentation].order = c_a
    end

    if mods [panglia_mods] then
        local branbalite_fermentation = "panglia_branbalite-fermentation"
        data_recipe[branbalite_fermentation].subgroup = is_panglia_recipe
        data_recipe[branbalite_fermentation].icons = TWO_I(branbalite_panglia, spoilage)
        data_recipe[branbalite_fermentation].order = "a[base]-dd-b"

        local cloned_specimen_body_0_fermentation = "panglia_cloned_specimen_body_0-fermentation"
        data_recipe[cloned_specimen_body_0_fermentation].subgroup = is_panglia_recipe
        data_recipe[cloned_specimen_body_0_fermentation].icons = TWO_I(cloned_specimen_body_0, spoilage)
        data_recipe[cloned_specimen_body_0_fermentation].order = "c[cloning]-ff-b"

        local cloned_specimen_body_1_fermentation = "panglia_cloned_specimen_body_1-fermentation"
        data_recipe[cloned_specimen_body_1_fermentation].subgroup = is_panglia_recipe
        data_recipe[cloned_specimen_body_1_fermentation].icons = TWO_I(cloned_specimen_body_1, spoilage)
        data_recipe[cloned_specimen_body_1_fermentation].order = "c[cloning]-hh-b"

        local cloned_specimen_body_2_fermentation = "panglia_cloned_specimen_body_2-fermentation"
        data_recipe[cloned_specimen_body_2_fermentation].subgroup = is_panglia_recipe
        data_recipe[cloned_specimen_body_2_fermentation].icons = TWO_I(cloned_specimen_body_2, spoilage)
        data_recipe[cloned_specimen_body_2_fermentation].order = "c[cloning]-jj-b"

        local cloned_specimen_body_3_genius_fermentation = "panglia_cloned_specimen_body_3_genius-fermentation"
        data_recipe[cloned_specimen_body_3_genius_fermentation].subgroup = is_panglia_recipe
        data_recipe[cloned_specimen_body_3_genius_fermentation].icons = TWO_I(cloned_specimen_body_3_genius, spoilage)
        data_recipe[cloned_specimen_body_3_genius_fermentation].order = "c[cloning]-ll-b"

        local cloned_specimen_body_3_fermentation = "panglia_cloned_specimen_body_3-fermentation"
        data_recipe[cloned_specimen_body_3_fermentation].subgroup = is_panglia_recipe
        data_recipe[cloned_specimen_body_3_fermentation].icons = TWO_I(cloned_specimen_body_3, spoilage)
        data_recipe[cloned_specimen_body_3_fermentation].order = "c[cloning]-mm-b"
    end

    if mods [arig_mods] then
        local cactus_fermentation = "planetaris-cactus-fermentation"
        data_recipe[cactus_fermentation].subgroup = is_arig_recipe
        data_recipe[cactus_fermentation].icons = TWO_I(cactus_arig, lime_angels)
        data_recipe[cactus_fermentation].order = b_a
    end

    if mods [hyarion_mods] then
        local charged_fluorite_fermentation = "planetaris-charged-fluorite-fermentation"
        data_recipe[charged_fluorite_fermentation].subgroup = is_hyarion_recipe_b
        data_recipe[charged_fluorite_fermentation].icons = TWO_I(charged_fluorite_hyarion, fluorite_hyarion)
        data_recipe[charged_fluorite_fermentation].order = d_a
    end

    if mods [maraxsis_mods] then
        local coral_fermentation = "maraxsis-coral-fermentation"
        data_recipe[coral_fermentation].subgroup = is_maraxsis_building_fish
        data_recipe[coral_fermentation].icons = TWO_I(coral_maraxsis, limestone_angels)
        data_recipe[coral_fermentation].order = b_a

        local tropical_fish_fermentation = "maraxsis-tropical-fish-fermentation"
        data_recipe[tropical_fish_fermentation].subgroup = is_maraxsis_building_fish
        data_recipe[tropical_fish_fermentation].icons = TWO_I(tropical_fish_maraxsis, spoilage)
        data_recipe[tropical_fish_fermentation].order = c_a
    end

    if mods [cubium_mods] then
        --
    end

    if mods [nexus_mods] then
        --
    end

    if mods [shchierbin_mods] then
        local calcium_fermentation = "calcium-fermentation"
        data_recipe[calcium_fermentation].subgroup = is_shchierbin_recipe
        data_recipe[calcium_fermentation].icons = TWO_I(calcium_mods, spoilage)
        data_recipe[calcium_fermentation].order = d_a
    end
end

if mods [moshine_mods] or mods [muluna_mods] then
    data_item[silicon_boule_mods].stack_size = 200

    data_item[silicon_cell_mods].stack_size = 200
    data_recipe[silicon_cell_mods].icons = THREE_I(electronic_circuit, silicon_boule_mods, silicon_cell_mods)

    data_recipe[silicon_carbide_mods].icons = THREE_D_I(silicon_boule_mods, carbon_angels, sulfuric_acid_angels, silicon_carbide_bob)
end


if mods [moshine_mods] and mods [muluna_mods] then -- MOSHINE
    data_item[silicon_boule_mods].subgroup = is_moshine_recipe
    data_item[silicon_boule_mods].order = b

    data_item[silicon_cell_mods].subgroup = is_moshine_recipe
    data_item[silicon_cell_mods].order = c
    data_recipe[silicon_cell_mods].subgroup = is_moshine_recipe
    data_recipe[silicon_cell_mods].order = c

    data_recipe[silicon_carbide_mods].subgroup = is_moshine_recipe
    data_recipe[silicon_carbide_mods].order = d
elseif mods [muluna_mods] then -- MULUNA
    data_item[silicon_boule_mods].subgroup = is_muluna_recipe_silicon
    data_item[silicon_boule_mods].order = a

    data_item[silicon_cell_mods].subgroup = is_muluna_recipe_silicon
    data_item[silicon_cell_mods].order = b
    data_recipe[silicon_cell_mods].subgroup = is_muluna_recipe_silicon
    data_recipe[silicon_cell_mods].order = b

    data_recipe[silicon_carbide_mods].subgroup = is_muluna_recipe_silicon
    data_recipe[silicon_carbide_mods].order = c
elseif mods [moshine_mods] then -- MOSHINE
    data_item[silicon_boule_mods].subgroup = is_moshine_recipe
    data_item[silicon_boule_mods].order = b

    data_item[silicon_cell_mods].subgroup = is_moshine_recipe
    data_item[silicon_cell_mods].order = c
    data_recipe[silicon_cell_mods].subgroup = is_moshine_recipe
    data_recipe[silicon_cell_mods].order = c

    data_recipe[silicon_carbide_mods].subgroup = is_moshine_recipe
    data_recipe[silicon_carbide_mods].order = d
end

if mods [maraxsis_mods] and mods [muluna_mods] then -- MARAXSIS
    data_recipe[atmosphere_maraxsis].subgroup = is_maraxsis_recipe
    data_recipe[atmosphere_maraxsis].order = g
elseif mods [muluna_mods] then -- MULUNA
    data_recipe[atmosphere_maraxsis].subgroup = is_muluna_recipe
    data_recipe[atmosphere_maraxsis].order = b
elseif mods [maraxsis_mods] then -- MARAXSIS
    data_recipe[atmosphere_maraxsis].subgroup = is_maraxsis_recipe
    data_recipe[atmosphere_maraxsis].order = g
end

if mods [maraxsis_mods] and mods [muluna_mods] and mods [shchierbin_mods] then -- MARAXSIS
    data_fluid[atmosphere_maraxsis].subgroup = is_maraxsis_recipe
    data_fluid[atmosphere_maraxsis].order = g
elseif mods [maraxsis_mods] and mods [shchierbin_mods] then -- MARAXSIS
    data_fluid[atmosphere_maraxsis].subgroup = is_maraxsis_recipe
    data_fluid[atmosphere_maraxsis].order = g
elseif mods [maraxsis_mods] and mods [muluna_mods] then -- MARAXSIS
    data_fluid[atmosphere_maraxsis].subgroup = is_maraxsis_recipe
    data_fluid[atmosphere_maraxsis].order = g
elseif mods [muluna_mods] and mods [shchierbin_mods] then -- MULUNA
    data_fluid[atmosphere_maraxsis].subgroup = is_muluna_recipe
    data_fluid[atmosphere_maraxsis].order = b
elseif mods [muluna_mods] then -- MULUNA
    data_fluid[atmosphere_maraxsis].subgroup = is_muluna_recipe
    data_fluid[atmosphere_maraxsis].order = b
elseif mods [maraxsis_mods] then -- MARAXSIS
    data_fluid[atmosphere_maraxsis].subgroup = is_maraxsis_recipe
    data_fluid[atmosphere_maraxsis].order = g
elseif mods [shchierbin_mods] then -- SHCHIERBIN
    data_fluid[atmosphere_maraxsis].subgroup = is_shchierbin_recipe
    data_fluid[atmosphere_maraxsis].order = m
end

if mods [maraxsis_mods] or mods [muluna_mods] or mods [shchierbin_mods] then
    data_fluid[atmosphere_maraxsis].auto_barrel = false
end

if mods ["AsteroidBelt"] then
    local satellites = "satellites"
    local asteroid_belt_inner_edge = "asteroid-belt-inner-edge"
    data_space_location[asteroid_belt_inner_edge].subgroup = satellites
    data_space_location[asteroid_belt_inner_edge].order = z_y

    local asteroid_belt_outer_edge = "asteroid-belt-outer-edge"
    data_space_location[asteroid_belt_outer_edge].subgroup = satellites
    data_space_location[asteroid_belt_outer_edge].order = z_z
end

if mods [clowns_nuclear] then
    local thermonuclear_bomb = "thermonuclear-bomb"
    data_ammo[thermonuclear_bomb] = nil
    data_recipe[thermonuclear_bomb] = nil
    data_recipe["thermonuclear-bomb-recycling"] = nil
    data_technology[thermonuclear_bomb] = nil
end