if mods[vulcanus_sulfuric_bacteria_mods] then
    is_vulcanus_sulfuric = "vulcanus-sulfuric"
    TIMSABA.functions.create_subgroups("vulcanus", {{name = is_vulcanus_sulfuric, order = e_a}})

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
    data_recipe[sulfuric_bacteria_filtering].results[1].probability = 0.03125

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
    data_recipe[sulfuric_bacteria_melting].results =
    {
        {type = item, name = sulfuric_bacteria, amount = 1, probability = 0.5},
        {type = item, name = wolframite_ore, amount = 1, probability = 0.25},
        {type = item, name = coal, amount = 1, probability = 0.125},
        {type = item, name = carbon_angels, amount = 1, probability = 0.0625},
        {type = item, name = tungsten_carbide_plate_bob, amount = 1, probability = 0.03125},
        {type = item, name = stone, amount = 1, probability = 0.5}
    }
end

if mods[moshine_mods] or mods[muluna_mods] then
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

if mods[moshine_mods] and mods[muluna_mods] then -- MOSHINE
    data_item[silicon_boule_mods].subgroup = is_moshine_recipe
    data_item[silicon_boule_mods].order = g

    data_item[silicon_cell_mods].subgroup = is_moshine_recipe
    data_item[silicon_cell_mods].order = h
    data_recipe[silicon_cell_mods].subgroup = is_moshine_recipe
    data_recipe[silicon_cell_mods].order = h

    data_recipe[silicon_carbide_mods].subgroup = is_moshine_recipe
    data_recipe[silicon_carbide_mods].order = i
elseif mods[muluna_mods] then -- MULUNA
    data_item[silicon_boule_mods].subgroup = is_muluna_recipe_silicon
    data_item[silicon_boule_mods].order = a

    data_item[silicon_cell_mods].subgroup = is_muluna_recipe_silicon
    data_item[silicon_cell_mods].order = b
    data_recipe[silicon_cell_mods].subgroup = is_muluna_recipe_silicon
    data_recipe[silicon_cell_mods].order = b

    data_recipe[silicon_carbide_mods].subgroup = is_muluna_recipe_silicon
    data_recipe[silicon_carbide_mods].order = c
elseif mods[moshine_mods] then -- MOSHINE
    data_item[silicon_boule_mods].subgroup = is_moshine_recipe
    data_item[silicon_boule_mods].order = g

    data_item[silicon_cell_mods].subgroup = is_moshine_recipe
    data_item[silicon_cell_mods].order = h
    data_recipe[silicon_cell_mods].subgroup = is_moshine_recipe
    data_recipe[silicon_cell_mods].order = h

    data_recipe[silicon_carbide_mods].subgroup = is_moshine_recipe
    data_recipe[silicon_carbide_mods].order = i
end

if mods[clowns_nuclear] then
    data_technology[atomic_rocket].effects =
    {
        {type = unlock_recipe, recipe = atomic_rocket},
        {type = unlock_recipe, recipe = "angels-atomic-bomb"},
        {type = unlock_recipe, recipe = "angels-atomic-bomb-2"}
    }
end

if mods[telogistics_mods] then
    local logistic_teleporter = "s6x-logistic-teleporter"

    table.insert(data_technology[logistic_teleporter].prerequisites, tech_electric_energy_accumulators_4)

    if settings.startup["s6x-telo-science"].value == "space" then
        data_recipe[logistic_teleporter].ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 64},
            {type = item, name = battery_graphene, amount = 64},
            {type = item, name = accumulator_4, amount = 16},
            {type = item, name = molybdenum_rhenium_plate, amount = 128}
        }
        data_technology[logistic_teleporter].unit.ingredients =
        {
            {automation_science_pack, 1},
            {logistic_science_pack, 1},
            {chemical_science_pack, 1},
            {production_science_pack, 1},
            {utility_science_pack, 1},
            {space_science_pack, 1}
        }
        if mods[bobtech] then
            table.insert(data_technology[logistic_teleporter].unit.ingredients, {transport_science_pack, 1})
        end
    elseif settings.startup["s6x-telo-science"].value == "cryo" then
        data_recipe[logistic_teleporter].ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 64},
            {type = item, name = battery_graphene, amount = 64},
            {type = item, name = accumulator_4, amount = 16},
            {type = item, name = niobium_tungsten_molybdenum_plate, amount = 128}
        }
        data_technology[logistic_teleporter].unit.ingredients =
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
            {cryogenic_science_pack, 1}
        }
        if mods[bobtech] then
            table.insert(data_technology[logistic_teleporter].unit.ingredients, {transport_science_pack, 1})
        end
    elseif settings.startup["s6x-telo-science"].value == "prom" then
        data_recipe[logistic_teleporter].ingredients =
        {
            {type = item, name = quantum_processor, amount = 64},
            {type = item, name = battery_graphene, amount = 64},
            {type = item, name = accumulator_4, amount = 16},
            {type = item, name = niobium_tungsten_molybdenum_plate, amount = 128}
        }
        data_technology[logistic_teleporter].unit.ingredients =
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
            {cryogenic_science_pack, 1},
            {promethium_science_pack, 1}
        }
        if mods[bobtech] then
            table.insert(data_technology[logistic_teleporter].unit.ingredients, {transport_science_pack, 1})
        end
    end

    bobmods.lib.recipe.update_recycling_recipe({logistic_teleporter})
end