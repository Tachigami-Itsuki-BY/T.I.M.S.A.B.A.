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
    data_item[sulfuric_bacteria].spoil_result = spoilage

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

if mods [moshine_mods] or mods [muluna_mods] then
    data_item[silicon_boule_mods].localised_description = show_formula and {chemical_formula, "Si"} or nil
    data_item[silicon_boule_mods].stack_size = 200

    data_item[silicon_cell_mods].stack_size = 200
    data_recipe[silicon_cell_mods].icons = TWO_I(silicon_boule_mods, silicon_cell_mods)
    data_recipe[silicon_cell_mods].ingredients = {{type = item, name = silicon_boule_mods, amount = 4}}

    data_recipe[silicon_carbide_mods].category = angels_chemical_smelting_4
    data_recipe[silicon_carbide_mods].icons = THREE_I(silicon_boule_mods, carbon_angels, silicon_carbide_bob)
    data_recipe[silicon_carbide_mods].ingredients =
    {
        {type = item, name = silicon_boule_mods, amount = 16},
        {type = item, name = carbon_angels, amount = 16}
    }
    data_recipe[silicon_carbide_mods].results[1].amount = 16
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