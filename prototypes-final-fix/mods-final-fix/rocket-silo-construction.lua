if mods ["Rocket-Silo-Construction"] then
    local construction_stage1 = "rsc-construction-stage1"
    data_recipe[construction_stage1].localised_name = {"recipe-name.rsc-construction-stage1"}
    data_recipe[construction_stage1].energy_required = 4
    data_recipe[construction_stage1].results =
    {
        {type = item, name = "rsc-building-stage1", amount = 1, probability = 0},
        {type = item, name = stone, amount = 64},
        {type = item, name = stone_crushed_angels, amount = 32},
        {type = item, name = sand_angels, amount = 32},
        {type = item, name = clay_angels, amount = 32},
        {type = item, name = soil_angels, amount = 32}
    }

    local construction_stage2 = "rsc-construction-stage2"
    data_recipe[construction_stage2].localised_name = {"recipe-name.rsc-construction-stage2"}
    data_recipe[construction_stage2].energy_required = 4
    data_recipe[construction_stage2].ingredients =
    {
        {type = item, name = titanium_rod, amount = 32},
        {type = item, name = molybdenum_rhenium_plate, amount = 16},
        {type = item, name = reinforced_concrete, amount = 64},
        {type = item, name = reinforced_titanium_concrete_brick, amount = 16},
        {type = fluid, name = concrete_liquid, amount = 480}
    }
    data_recipe[construction_stage2].results =
    {
        {type = item, name = "rsc-building-stage2", amount = 1, probability = 0},
        {type = item, name = stone, amount = 32}
    }

    local construction_stage3 = "rsc-construction-stage3"
    data_recipe[construction_stage3].localised_name = {"recipe-name.rsc-construction-stage3"}
    data_recipe[construction_stage3].energy_required = 4
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

    local construction_stage4 = "rsc-construction-stage4"
    data_recipe[construction_stage4].localised_name = {"recipe-name.rsc-construction-stage4"}
    data_recipe[construction_stage4].energy_required = 4
    data_recipe[construction_stage4].ingredients =
    {
        {type = item, name = titanium_rod, amount = 32},
        {type = item, name = molybdenum_rhenium_pipe, amount = 16},
        {type = item, name = molybdenum_rhenium_pipe_to_ground, amount = 4},
        {type = item, name = molybdenum_rhenium_plate, amount = 16},
        {type = item, name = reinforced_concrete, amount = 64},
        {type = item, name = reinforced_titanium_concrete_brick, amount = 16}
    }
    data_recipe[construction_stage4].results =
    {
        {type = item, name = "rsc-building-stage4", amount = 1, probability = 0},
        {type = item, name = stone, amount = 32}
    }

    local construction_stage5 = "rsc-construction-stage5"
    data_recipe[construction_stage5].localised_name = {"recipe-name.rsc-construction-stage5"}
    data_recipe[construction_stage5].energy_required = 4
    data_recipe[construction_stage5].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 16},
        {type = item, name = molybdenum_rhenium_plate, amount = 16},
        {type = item, name = reinforced_titanium_concrete_brick, amount = 16},
        {type = item, name = heat_shielding_tile, amount = 32},
        {type = item, name = platinum_cable, amount = 256}
    }

    local construction_stage6 = "rsc-construction-stage6"
    data_recipe[construction_stage6].localised_name = {"recipe-name.rsc-construction-stage6"}
    data_recipe[construction_stage6].energy_required = 4
    data_recipe[construction_stage6].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 4},
        {type = item, name = electronic_circuit, amount = 32},
        {type = item, name = advanced_circuit, amount = 16},
        {type = item, name = processing_unit, amount = 8},
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = reinforced_concrete, amount = 8}
    }

    local excavation_site = "rsc-excavation-site"
    data_item[excavation_site].localised_name = {"entity-name.rsc-excavation-site"}
    data_item[excavation_site].localised_description = {"entity-description.rsc-excavation-site"}
    data_item[excavation_site].weight = 1000000000
    data_recipe[excavation_site].localised_name = data_item[excavation_site].localised_name
    data_recipe[excavation_site].localised_description = data_item[excavation_site].localised_description
    data_recipe[excavation_site].energy_required = 128
    data_recipe[excavation_site].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 64},
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = molybdenum_rhenium_pipe, amount = 32},
        {type = item, name = molybdenum_plate, amount = 256},
        {type = item, name = rhenium_plate, amount = 256},
        {type = item, name = reinforced_titanium_concrete_brick, amount = 256}
    }

    local silo_stage1 = "rsc-silo-stage1"
    data_assembling[silo_stage1].localised_name = {"entity-name.rsc-silo-stage1"}
    data_assembling[silo_stage1].localised_description = {"entity-description.rsc-silo-stage1"}
    data_assembling[silo_stage1].energy_usage = (128000 - 4000) .. kW
    data_assembling[silo_stage1].energy_source.emissions_per_minute = {pollution = 256}
    data_assembling[silo_stage1].energy_source.drain = 4000 .. kW

    local silo_stage2 = "rsc-silo-stage2"
    data_assembling[silo_stage2].localised_name = {"entity-name.rsc-silo-stage2"}
    data_assembling[silo_stage2].localised_description = {"entity-description.rsc-silo-stage2"}
    data_assembling[silo_stage2].energy_usage = (128000 - 4000) .. kW
    data_assembling[silo_stage2].energy_source.drain = 4000 .. kW

    local silo_stage3 = "rsc-silo-stage3"
    data_assembling[silo_stage3].localised_name = {"entity-name.rsc-silo-stage3"}
    data_assembling[silo_stage3].localised_description = {"entity-description.rsc-silo-stage3"}
    data_assembling[silo_stage3].energy_usage = (128000 - 4000) .. kW
    data_assembling[silo_stage3].energy_source.emissions_per_minute = {pollution = 256}
    data_assembling[silo_stage3].energy_source.drain = 4000 .. kW

    local silo_stage4 = "rsc-silo-stage4"
    data_assembling[silo_stage4].localised_name = {"entity-name.rsc-silo-stage4"}
    data_assembling[silo_stage4].localised_description = {"entity-description.rsc-silo-stage4"}
    data_assembling[silo_stage4].energy_usage = (128000 - 4000) .. kW
    data_assembling[silo_stage4].energy_source.drain = 4000 .. kW

    local silo_stage5 = "rsc-silo-stage5"
    data_assembling[silo_stage5].localised_name = {"entity-name.rsc-silo-stage5"}
    data_assembling[silo_stage5].localised_description = {"entity-description.rsc-silo-stage5"}
    data_assembling[silo_stage5].energy_usage = (128000 - 4000) .. kW
    data_assembling[silo_stage5].energy_source.drain = 4000 .. kW

    local silo_stage6 = "rsc-silo-stage6"
    data_assembling[silo_stage6].localised_name = {"entity-name.rsc-silo-stage6"}
    data_assembling[silo_stage6].localised_description = {"entity-description.rsc-silo-stage6"}
    data_assembling[silo_stage6].energy_usage = (128000 - 4000) .. kW
    data_assembling[silo_stage6].energy_source.drain = 4000 .. kW

    bobmods.lib.recipe.update_recycling_recipe({excavation_site})

    data_item_group["effects"].order = z_z
end