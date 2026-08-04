if mods["Rocket-Silo-Construction"] then
    local is_construction_stage = "is-construction-stage"
    local is_silo_stage = "is-silo-stage"
    data:extend
    ({
        {
            type = item_subgroup,
            name = is_construction_stage,
            group = ig_space,
            order = a_a
        },
        {
            type = item_subgroup,
            name = is_silo_stage,
            group = ig_space,
            order = a_b
        }
    })

    local entity_name = "entity-name."
    local entity_description = "entity-description."
    local excavation_site = "rsc-excavation-site"
    data_item[excavation_site].localised_name = {entity_name .. excavation_site}
    data_item[excavation_site].localised_description = {entity_description .. excavation_site}
    data_item[excavation_site].weight = 1000000000
    data_recipe[excavation_site].localised_name = data_item[excavation_site].localised_name
    data_recipe[excavation_site].localised_description = data_item[excavation_site].localised_description
    data_recipe[excavation_site].energy_required = 128
    data_recipe[excavation_site].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 128},
        {type = item, name = low_density_structure, amount = 64},
        {type = item, name = heat_shielding_tile, amount = 128},
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = copper_tungsten_pipe, amount = 64},
        {type = item, name = reinforced_concrete, amount = 256},
        {type = item, name = tungsten_plate_bob, amount = 256},
        {type = item, name = tungsten_carbide_plate_bob, amount = 128},
        {type = item, name = copper_tungsten_plate_bob, amount = 512}
    }

    local recipe_name = "recipe-name."
    local construction_stage1 = "rsc-construction-stage1"
    local construction_stage2 = "rsc-construction-stage2"
    local construction_stage3 = "rsc-construction-stage3"
    local construction_stage4 = "rsc-construction-stage4"
    local construction_stage5 = "rsc-construction-stage5"
    local construction_stage6 = "rsc-construction-stage6"
    local construction_stages =
    {
        {name = construction_stage1, order = a},
        {name = construction_stage2, order = b},
        {name = construction_stage3, order = c},
        {name = construction_stage4, order = d},
        {name = construction_stage5, order = e},
        {name = construction_stage6, order = f}
    }
    for _, RECIPE in pairs(construction_stages) do
        data_recipe[RECIPE.name].localised_name = {recipe_name .. RECIPE.name}
        data_recipe[RECIPE.name].subgroup = is_construction_stage
        data_recipe[RECIPE.name].order = RECIPE.order
        data_recipe[RECIPE.name].energy_required = 4
        data_recipe[RECIPE.name].hidden = false
        data_recipe[RECIPE.name].hidden_in_factoriopedia = false
        data_recipe[RECIPE.name].hide_from_player_crafting = true
    end
    data_recipe[construction_stage1].results =
    {
        {type = item, name = "rsc-building-stage1", amount = 1, probability = 0},
        {type = item, name = stone, amount = 64},
        {type = item, name = stone_crushed_angels, amount = 32},
        {type = item, name = sand_angels, amount = 32},
        {type = item, name = clay_angels, amount = 32},
        {type = item, name = soil_angels, amount = 32}
    }

    data_recipe[construction_stage2].ingredients =
    {
        {type = item, name = titanium_rod, amount = 32},
        {type = item, name = copper_tungsten_plate_bob, amount = 16},
        {type = item, name = reinforced_concrete, amount = 64},
        {type = item, name = reinforced_titanium_concrete_brick, amount = 16},
        {type = fluid, name = concrete_liquid, amount = 480}
    }
    data_recipe[construction_stage2].results =
    {
        {type = item, name = "rsc-building-stage2", amount = 1, probability = 0},
        {type = item, name = stone, amount = 32}
    }

    data_recipe[construction_stage3].results =
    {
        {type = item, name = "rsc-building-stage3", amount = 1, probability = 0},
        {type = item, name = stone, amount = 64},
        {type = item, name = ore_saphirite, amount = 4},
        {type = item, name = ore_jivolite, amount = 4},
        {type = item, name = ore_stiratite, amount = 4},
        {type = item, name = ore_crotinnium, amount = 4},
        {type = item, name = ore_rubyte, amount = 4},
        {type = item, name = ore_bobmonium, amount = 4}
    }

    data_recipe[construction_stage4].ingredients =
    {
        {type = item, name = titanium_rod, amount = 32},
        {type = item, name = copper_tungsten_pipe, amount = 16},
        {type = item, name = copper_tungsten_pipe_to_ground, amount = 4},
        {type = item, name = copper_tungsten_plate_bob, amount = 16},
        {type = item, name = reinforced_concrete, amount = 64},
        {type = item, name = reinforced_titanium_concrete_brick, amount = 16}
    }
    data_recipe[construction_stage4].results =
    {
        {type = item, name = "rsc-building-stage4", amount = 1, probability = 0},
        {type = item, name = stone, amount = 32}
    }

    data_recipe[construction_stage5].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 16},
        {type = item, name = copper_tungsten_plate_bob, amount = 16},
        {type = item, name = reinforced_titanium_concrete_brick, amount = 16},
        {type = item, name = heat_shielding_tile, amount = 32},
        {type = item, name = platinum_cable, amount = 256}
    }

    data_recipe[construction_stage6].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 4},
        {type = item, name = electronic_circuit, amount = 32},
        {type = item, name = advanced_circuit, amount = 16},
        {type = item, name = processing_unit, amount = 8},
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = reinforced_concrete, amount = 8}
    }

    local silo_stage1 = "rsc-silo-stage1"
    local silo_stage2 = "rsc-silo-stage2"
    local silo_stage3 = "rsc-silo-stage3"
    local silo_stage4 = "rsc-silo-stage4"
    local silo_stage5 = "rsc-silo-stage5"
    local silo_stage6 = "rsc-silo-stage6"
    local silo_stages =
    {
        {name = silo_stage1, order = a},
        {name = silo_stage2, order = b},
        {name = silo_stage3, order = c},
        {name = silo_stage4, order = d},
        {name = silo_stage5, order = e},
        {name = silo_stage6, order = f}
    }
    for _, BUILD in pairs(silo_stages) do
        data_assembling[BUILD.name].localised_name = {entity_name .. BUILD.name}
        data_assembling[BUILD.name].localised_description = {entity_description .. BUILD.name}
        data_assembling[BUILD.name].subgroup = is_silo_stage
        data_assembling[BUILD.name].order = BUILD.order
        data_assembling[BUILD.name].energy_usage = (128000 - 4000) .. kW
        data_assembling[BUILD.name].energy_source.emissions_per_minute = {pollution = 256}
        data_assembling[BUILD.name].energy_source.drain = 4000 .. kW
        data_assembling[BUILD.name].hidden = false
        data_assembling[BUILD.name].hidden_in_factoriopedia = false
    end

    bobmods.lib.recipe.update_recycling_recipe({excavation_site})

    data_item_group["effects"].order = z_z
end