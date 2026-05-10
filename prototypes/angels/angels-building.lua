TIMSABA = TIMSABA or {}
TIMSABA.triggers = TIMSABA.triggers or {}
function TIMSABA.numeral_tier(icon_data, tier, tint)
  local icons = angelsmods.functions.add_number_icon_layer({icon_data}, tier, tint)
  return icons
end

-- ANGELS RESOURCE REFINING
data:extend
({
    -- ORE CRUSHER
    {
        type = item,
        name = ore_crusher_4,
        subgroup = is_ore_crusher_angels,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,
        place_result = ore_crusher_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = ore_crusher_4,
        category = crafting,
        subgroup = is_ore_crusher_angels,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = e,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = titanium_gear_wheel, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 16},
            {type = item, name = titanium_plate_bob, amount = 8},
            {type = item, name = ore_crusher_3, amount = 1}
        },
        results = {{type = item, name = ore_crusher_4, amount = 1}},
        main_product = ore_crusher_4
    },
    util.merge
    ({
        data_assembling[ore_crusher_3],
        {
            localised_description = {"entity-description.angels-ore-crusher"},
            name = ore_crusher_4,
            subgroup = is_ore_crusher_angels,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
            order = e,
            minable = {result = ore_crusher_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 4},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        }
    }),
    -- ORE FLOATATION CELL
    {
        type = item,
        name = ore_floatation_cell_4,
        subgroup = is_ore_floatation_angels,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-floatation-cell.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = e,
        place_result = ore_floatation_cell_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = ore_floatation_cell_4,
        category = crafting,
        subgroup = is_ore_floatation_angels,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-floatation-cell.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 32},
            {type = item, name = copper_tungsten_plate_bob, amount = 16},
            {type = item, name = ore_floatation_cell_3, amount = 1}
        },
        results = {{type = item, name = ore_floatation_cell_4, amount = 1}},
        main_product = ore_floatation_cell_4
    },
    util.merge
    ({
        data_assembling[ore_floatation_cell_3],
        {
            localised_description = {"entity-description.angels-ore-floatation-cell"},
            name = ore_floatation_cell_4,
            subgroup = is_ore_floatation_angels,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-floatation-cell.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
            order = d,
            minable = {result = ore_floatation_cell_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 4},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        }
    }),
    -- ORE LEACHING PLANT
    {
        type = item,
        name = ore_leaching_plant_4,
        subgroup = is_ore_leaching_angels,
        icons = TIMSABA.numeral_tier({icon = "__TIMSABA__/graphics/icons/angels/building/ore-leaching-plant-4.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
        order = d,
        place_result = ore_leaching_plant_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = ore_leaching_plant_4,
        category = crafting,
        subgroup = is_ore_leaching_angels,
        icons = TIMSABA.numeral_tier({icon = "__TIMSABA__/graphics/icons/angels/building/ore-leaching-plant-4.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = molybdenum_rhenium_pipe, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 32},
            {type = item, name = molybdenum_rhenium_plate, amount = 16},
            {type = item, name = ore_leaching_plant_3, amount = 1}
        },
        results = {{type = item, name = ore_leaching_plant_4, amount = 1}},
        main_product = ore_leaching_plant_4
    },
    util.merge
    ({
        data_assembling[ore_leaching_plant_3],
        {
            localised_description = {"entity-description.angels-ore-leaching-plant"},
            name = ore_leaching_plant_4,
            subgroup = is_ore_leaching_angels,
            icons = TIMSABA.numeral_tier({icon = "__TIMSABA__/graphics/icons/angels/building/ore-leaching-plant-4.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
            order = d,
            minable = {result = ore_leaching_plant_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 4},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        }
    }),
    -- ORE REFINERY
    {
        type = item,
        name = ore_refinery_3,
        subgroup = is_ore_refining,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-refinery.png", icon_size = 64}, 3, angelsmods.refining.number_tint),
        order = c,
        place_result = ore_refinery_3,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = ore_refinery_3,
        category = crafting,
        subgroup = is_ore_refining,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-refinery.png", icon_size = 64}, 3, angelsmods.refining.number_tint),
        order = c,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 128},
            {type = item, name = molybdenum_rhenium_plate, amount = 32},
            {type = item, name = ore_refinery_2, amount = 1}
        },
        results = {{type = item, name = ore_refinery_3, amount = 1}},
        main_product = ore_refinery_3
    },
    util.merge
    ({
        data_assembling[ore_refinery_2],
        {
            localised_description = {"entity-description.angels-ore-refinery"},
            name = ore_refinery_3,
            subgroup = is_ore_refining,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-refinery.png", icon_size = 64}, 3, angelsmods.refining.number_tint),
            order = c,
            minable = {result = ore_refinery_3},
            module_slots = 3,
            crafting_speed = 3,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 3},
                drain = 45 .. kW
            },
            energy_usage = 315 .. kW
        },
    }),
    {
        type = item,
        name = ore_refinery_4,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-refinery.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        subgroup = is_ore_refining,
        order = d,
        place_result = ore_refinery_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = ore_refinery_4,
        category = crafting,
        subgroup = is_ore_refining,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-refinery.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 128},
            {type = item, name = niobium_tungsten_molybdenum_plate, amount = 32},
            {type = item, name = ore_refinery_3, amount = 1}
        },
        results = {{type = item, name = ore_refinery_4, amount = 1}},
        main_product = ore_refinery_4
    },
    util.merge
    ({
        data_assembling[ore_refinery_2],
        {
            localised_description = {"entity-description.angels-ore-refinery"},
            name = ore_refinery_4,
            subgroup = is_ore_refining,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-refinery.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
            order = d,
            minable = {result = ore_refinery_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 4},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        },
    }),
    -- ORE SORTING FACILITY
    --[[{
        type = item,
        name = ore_sorting_facility_6,
        subgroup = is_ore_sorter,
        icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/ore-sorting-facility.png", icon_size = 64}}, 6, angelsmods.refining.number_tint),
        order = f,
        place_result = ore_sorting_facility_6,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = ore_sorting_facility_6,
        category = crafting,
        subgroup = is_ore_sorter,
        icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/ore-sorting-facility.png", icon_size = 64}}, 6, angelsmods.refining.number_tint),
        order = f,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = nitinol_gear_wheel, amount = 32},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 64},
            {type = item, name = nitinol_plate_bob, amount = 32},
            {type = item, name = ore_sorting_facility_5, amount = 1}
        },
        results = {{type = item, name = ore_sorting_facility_6, amount = 1}},
        main_product = ore_sorting_facility_6
    },
    util.merge
    ({
        data_assembling[ore_sorting_facility_5],
        {
            localised_description = {"entity-description.angels-ore-sorting-facility"},
            name = ore_sorting_facility_6,
            subgroup = is_ore_sorter,
            icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/ore-sorting-facility.png", icon_size = 64}}, 6, angelsmods.refining.number_tint),
            order = f,
            minable = {result = ore_sorting_facility_6},
            module_slots = 6,
            crafting_speed = 6,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 6},
                drain = 90 .. kW
            },
            energy_usage = 630 .. kW,
            crafting_categories = {angels_ore_sorting_1, angels_ore_sorting_2, angels_ore_sorting_3, angels_ore_sorting_4, angels_ore_sorting_5, angels_ore_sorting_6}
        }
    }),]]
    -- POWDERIZER
    {
        type = item,
        name = powderizer_4,
        subgroup = is_powderizer_angels,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/powderizer-ico.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
        order = d,
        place_result = powderizer_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = powderizer_4,
        category = crafting,
        subgroup = is_powderizer_angels,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/powderizer-ico.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = copper_tungsten_gear_wheel, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 8},
            {type = item, name = copper_tungsten_plate_bob, amount = 4},
            {type = item, name = powderizer_3, amount = 1}
        },
        results = {{type = item, name = powderizer_4, amount = 1}},
        main_product = powderizer_4
    },
    util.merge
    ({
        data_assembling[powderizer_3],
        {
            localised_description = {"entity-description.angels-powderizer"},
            name = powderizer_4,
            subgroup = is_powderizer_angels,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/powderizer-ico.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
            order = d,
            minable = {result = powderizer_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 4},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW,
            crafting_categories = {angels_powderizing_1, angels_powderizing_2, angels_powderizing_3, powderizing_4}
        }
    }),
    -- ELECTROWINNING CELL
    --[[{
        type = item,
        name = electro_whinning_cell_3,
        subgroup = is_ore_whinning,
        icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/electro-whinning-cell-ico.png", icon_size = 32}}, 3, angelsmods.refining.number_tint),
        order = c,
        place_result = electro_whinning_cell_3,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = electro_whinning_cell_3,
        category = crafting,
        subgroup = is_ore_whinning,
        icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/electro-whinning-cell-ico.png", icon_size = 32}}, 3, angelsmods.refining.number_tint),
        order = c,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = nitinol_pipe, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 16},
            {type = item, name = nitinol_plate_bob, amount = 16},
            {type = item, name = electro_whinning_cell_2, amount = 1}
        },
        results = {{type = item, name = electro_whinning_cell_3, amount = 1}},
        main_product = electro_whinning_cell_3
    },
    util.merge
    ({
        data_assembling[electro_whinning_cell_2],
        {
            localised_description = {"entity-description.angels-electro-whinning-cell"},
            name = electro_whinning_cell_3,
            subgroup = is_ore_whinning,
            icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/electro-whinning-cell-ico.png", icon_size = 32}}, 3, angelsmods.refining.number_tint),
            order = с,
            minable = {result = electro_whinning_cell_3},
            module_slots = 3,
            crafting_speed = 3,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 3},
                drain = 45 .. kW
            },
            energy_usage = 315 .. kW
        }
    }),
    {
        type = item,
        name = electro_whinning_cell_4,
        subgroup = is_ore_whinning,
        icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/electro-whinning-cell-ico.png", icon_size = 32}}, 4, angelsmods.refining.number_tint),
        order = d,
        place_result = electro_whinning_cell_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = electro_whinning_cell_4,
        category = crafting,
        subgroup = is_ore_whinning,
        icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/electro-whinning-cell-ico.png", icon_size = 32}}, 4, angelsmods.refining.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 16},
            {type = item, name = copper_tungsten_plate_bob, amount = 16},
            {type = item, name = electro_whinning_cell_3, amount = 1}
        },
        results = {{type = item, name = electro_whinning_cell_4, amount = 1}},
        main_product = electro_whinning_cell_4
    },
    util.merge
    ({
        data_assembling[electro_whinning_cell_2],
        {
            localised_description = {"entity-description.angels-electro-whinning-cell"},
            name = electro_whinning_cell_4,
            subgroup = is_ore_whinning,
            icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/electro-whinning-cell-ico.png", icon_size = 32}}, 4, angelsmods.refining.number_tint),
            order = d,
            minable = {result = electro_whinning_cell_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 4},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        }
    }),]]
    -- FILTRATION UNIT
    {
        type = item,
        name = filtration_unit_4,
        subgroup = is_filtration_unit,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/filtration-unit.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
        order = d,
        place_result = filtration_unit_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = filtration_unit_4,
        category = crafting,
        subgroup = is_filtration_unit,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/filtration-unit.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 16},
            {type = item, name = copper_tungsten_plate_bob, amount = 8},
            {type = item, name = filtration_unit_3, amount = 1}
        },
        results = {{type = item, name = filtration_unit_4, amount = 1}},
        main_product = filtration_unit_4
    },
    util.merge
    ({
        data_assembling[filtration_unit_3],
        {
            localised_description = {"entity-description.angels-filtration-unit"},
            name = filtration_unit_4,
            subgroup = is_filtration_unit,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/filtration-unit.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
            order = d,
            minable = {result = filtration_unit_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 4},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        }
    }),
    -- CRYSTALLIZER
    {
        type = item,
        name = crystallizer_4,
        subgroup = is_crystallizer,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,
        place_result = crystallizer_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = crystallizer_4,
        category = crafting,
        subgroup = is_crystallizer,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 64},
            {type = item, name = copper_tungsten_plate_bob, amount = 32},
            {type = item, name = crystallizer_3, amount = 1}
        },
        results = {{type = item, name = crystallizer_4, amount = 1}},
        main_product = crystallizer_4
    },
    util.merge
    ({
        data_assembling[crystallizer_3],
        {
            localised_description = {"entity-description.angels-crystallizer"},
            name = crystallizer_4,
            subgroup = is_crystallizer,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
            order = d,
            minable = {result = crystallizer_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 0},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        }
    })
})

-- ANGELS METALLURGY CASTING
--[[if settings.startup[setting_early_sintering_oven].value then
    data:extend
    ({
        {
            localised_name = {"entity-name.sintering-oven-6"},
            type = item,
            name = sintering_oven_6,
            subgroup = is_sintering_oven,
            icons = TIMSABA.numeral_tier({{icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}}, 6, angelsmods.smelting.number_tint),
            order = f,
            place_result = sintering_oven_6,
            stack_size = 32,
            weight = 31250
        },
        {
            localised_name = {"entity-name.sintering-oven-6"},
            type = recipe,
            name = sintering_oven_6,
            category = crafting,
            subgroup = is_sintering_oven,
            icons = TIMSABA.numeral_tier({{icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}}, 6, angelsmods.smelting.number_tint),
            order = f,
            enabled = false,
            auto_recycle = true,
            allow_show = true,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = true,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 4},
                {type = item, name = copper_tungsten_plate_bob, amount = 64},
                {type = item, name = reinforced_concrete_brick, amount = 32},
                {type = item, name = sintering_oven_5, amount = 1}
            },
            results = {{type = item, name = sintering_oven_6, amount = 1}},
            main_product = sintering_oven_6
        },
        util.merge
        ({
            data_assembling[sintering_oven_5],
            {
                localised_name = {"entity-name.sintering-oven-6"},
                localised_description = {"entity-description.angels-sintering-oven"},
                name = sintering_oven_6,
                subgroup = is_sintering_oven,
                icons = TIMSABA.numeral_tier({{icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}}, 6, angelsmods.smelting.number_tint),
                order = f,
                minable = {result = sintering_oven_6},
                module_slots = 6,
                crafting_speed = 6,
                energy_source =
                {
                    type = electric,
                    usage_priority = secondary_input,
                    emissions_per_minute = {pollution = 6},
                    drain = 90 .. kW
                },
                energy_usage = 630 .. kW
            }
        })
    })
else
    data:extend
    ({
        {
            localised_name = {"entity-name.sintering-oven-6-3"},
            type = item,
            name = sintering_oven_6,
            subgroup = is_sintering_oven,
            icons = TIMSABA.numeral_tier({{icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}}, 3, angelsmods.smelting.number_tint),
            order = c,
            place_result = sintering_oven_6,
            stack_size = 32,
            weight = 31250
        },
        {
            localised_name = {"entity-name.sintering-oven-6-3"},
            type = recipe,
            name = sintering_oven_6,
            category = crafting,
            subgroup = is_sintering_oven,
            icons = TIMSABA.numeral_tier({{icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}}, 3, angelsmods.smelting.number_tint),
            order = c,
            enabled = false,
            auto_recycle = true,
            allow_show = true,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = true,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 4},
                {type = item, name = nitinol_plate_bob, amount = 64},
                {type = item, name = reinforced_concrete_brick, amount = 32},
                {type = item, name = sintering_oven_5, amount = 1}
            },
            results = {{type = item, name = sintering_oven_6, amount = 1}},
            main_product = sintering_oven_6
        },
        util.merge
        ({
            data_assembling[sintering_oven_5],
            {
                localised_name = {"entity-name.sintering-oven-6-3"},
                localised_description = {"entity-description.angels-sintering-oven"},
                name = sintering_oven_6,
                subgroup = is_sintering_oven,
                icons = TIMSABA.numeral_tier({{icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}}, 3, angelsmods.smelting.number_tint),
                order = c,
                minable = {result = sintering_oven_6},
                module_slots = 3,
                crafting_speed = 3,
                energy_source =
                {
                    type = electric,
                    usage_priority = secondary_input,
                    emissions_per_minute = {pollution = 3},
                    drain = 90 .. kW
                },
                energy_usage = 630 .. kW
            }
        })
        {
            localised_name = {"entity-name.sintering-oven-7-4"},
            type = item,
            name = sintering_oven_7,
            subgroup = is_sintering_oven,
            icons = TIMSABA.numeral_tier({{icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}}, 4, angelsmods.smelting.number_tint),
            order = d,
            place_result = sintering_oven_7,
            stack_size = 32,
            weight = 31250
        },
        {
            localised_name = {"entity-name.sintering-oven-7-4"},
            type = recipe,
            name = sintering_oven_7,
            category = crafting,
            subgroup = is_sintering_oven,
            icons = TIMSABA.numeral_tier({{icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}}, 4, angelsmods.smelting.number_tint),
            order = d,
            enabled = false,
            auto_recycle = true,
            allow_show = true,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = true,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 4},
                {type = item, name = holmium_plate, amount = 64},
                {type = item, name = reinforced_concrete_brick, amount = 32},
                {type = item, name = sintering_oven_6, amount = 1}
            },
            results = {{type = item, name = sintering_oven_7, amount = 1}},
            main_product = sintering_oven_7
        },
        util.merge
        ({
            data_assembling[sintering_oven_5],
            {
                localised_name = {"entity-name.sintering-oven-7-4"},
                localised_description = {"entity-description.angels-sintering-oven"},
                name = sintering_oven_7,
                subgroup = is_sintering_oven,
                icons = TIMSABA.numeral_tier({{icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}}, 4, angelsmods.smelting.number_tint),
                order = d,
                minable = {result = sintering_oven_7},
                module_slots = 4,
                crafting_speed = 4,
                energy_source =
                {
                    type = electric,
                    usage_priority = secondary_input,
                    emissions_per_minute = {pollution = 4},
                    drain = 120 .. kW
                },
                energy_usage = 840 .. kW
            }
        })
    })
end]]

-- ANGELS WATER TREATMENT
data:extend
({
    -- HYDRO PLANT
    {
        type = item,
        name = hydro_plant_4,
        subgroup = is_hydro_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/hydro-plant.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,
        place_result = hydro_plant_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = hydro_plant_4,
        category = crafting,
        subgroup = is_hydro_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/hydro-plant.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = processing_unit, amount = 8},
            {type = item, name = titanium_pipe, amount = 32},
            {type = item, name = titanium_plate_bob, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 64},
            {type = item, name = hydro_plant_3, amount = 1}
        },
        results = {{type = item, name = hydro_plant_4, amount = 1}},
        main_product = hydro_plant_4
    },
    util.merge
    ({
        data_assembling["angels-hydro-plant"],
        {
            localised_description = {"entity-description.angels-hydro-plant"},
            name = hydro_plant_4,
            subgroup = is_hydro_building,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/hydro-plant.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
            order = d,
            minable = {result = hydro_plant_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 0},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        }
    }),
    -- WASHING PLANT
    {
        type = item,
        name = washing_plant_3,
        subgroup = is_washing_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png", icon_size = 32}, 3, angelsmods.refining.number_tint),
        order = c,
        place_result = washing_plant_3,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = washing_plant_3,
        category = crafting,
        subgroup = is_washing_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png", icon_size = 32}, 3, angelsmods.refining.number_tint),
        order = c,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 32},
            {type = item, name = brass_plate_bob, amount = 8},
            {type = item, name = concrete_brick, amount = 16},
            {type = item, name = washing_plant_2, amount = 1}
        },
        results = {{type = item, name = washing_plant_3, amount = 1}},
        main_product = washing_plant_3
    },
    util.merge
    ({
        data_assembling[washing_plant_1],
        {
            localised_description = {"entity-description.angels-washing-plant"},
            name = washing_plant_3,
            subgroup = is_washing_building,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png", icon_size = 32}, 3, angelsmods.refining.number_tint),
            order = c,
            minable = {result = washing_plant_3},
            module_slots = 3,
            crafting_speed = 3,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 0},
                drain = 45 .. kW
            },
            energy_usage = 315 .. kW
        }
    }),
    {
        type = item,
        name = washing_plant_4,
        subgroup = is_washing_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
        order = d,
        place_result = washing_plant_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = washing_plant_4,
        category = crafting,
        subgroup = is_washing_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 32},
            {type = item, name = titanium_plate_bob, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 16},
            {type = item, name = washing_plant_3, amount = 1}
        },
        results = {{type = item, name = washing_plant_4, amount = 1}},
        main_product = washing_plant_4
    },
    util.merge
    ({
        data_assembling[washing_plant_1],
        {
            localised_description = {"entity-description.angels-washing-plant"},
            name = washing_plant_4,
            subgroup = is_washing_building,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
            order = d,
            minable = {result = washing_plant_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 0},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        }
    }),
    -- SALINATION PLANT
    {
        type = item,
        name = salination_plant_3,
        subgroup = is_salination_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/salination-plant.png", icon_size = 64}, 3, angelsmods.refining.number_tint),
        order = c,
        place_result = salination_plant_3,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = salination_plant_3,
        category = crafting,
        subgroup = is_salination_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/salination-plant.png", icon_size = 64}, 3, angelsmods.refining.number_tint),
        order = c,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = copper_tungsten_plate_bob, amount = 64},
            {type = item, name = reinforced_concrete_brick, amount = 64},
            {type = item, name = salination_plant_2, amount = 1}
        },
        results = {{type = item, name = salination_plant_3, amount = 1}},
        main_product = salination_plant_3
    },
    util.merge
    ({
        data_assembling["angels-salination-plant"],
        {
            localised_description = {"entity-description.angels-salination-plant"},
            name = salination_plant_3,
            subgroup = is_salination_building,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/salination-plant.png", icon_size = 64}, 3, angelsmods.refining.number_tint),
            order = c,
            minable = {result = salination_plant_3},
            module_slots = 3,
            crafting_speed = 3,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 0},
                drain = 45 .. kW
            },
            energy_usage = 315 .. kW
        },
    }),
    {
        type = item,
        name = salination_plant_4,
        subgroup = is_salination_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/salination-plant.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,
        place_result = salination_plant_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = salination_plant_4,
        category = crafting,
        subgroup = is_salination_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/salination-plant.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = molybdenum_rhenium_pipe, amount = 16},
            {type = item, name = molybdenum_rhenium_plate, amount = 64},
            {type = item, name = reinforced_concrete_brick, amount = 64},
            {type = item, name = salination_plant_3, amount = 1}
        },
        results = {{type = item, name = salination_plant_4, amount = 1}},
        main_product = salination_plant_4
    },
    util.merge
    ({
        data_assembling["angels-salination-plant"],
        {
            localised_description = {"entity-description.angels-salination-plant"},
            name = salination_plant_4,
            subgroup = is_salination_building,
            icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/salination-plant.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
            order = d,
            minable = {result = salination_plant_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 0},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        },
    }),
    -- ELECTRIC BOILER
    {
        type = item,
        name = electric_boiler_4,
        subgroup = is_boiler_building,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/electric-boiler.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
        order = d,
        place_result = electric_boiler_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = electric_boiler_4,
        category = crafting,
        subgroup = is_boiler_building,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/electric-boiler.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 2},
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = copper_tungsten_plate_bob, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 4},
            {type = item, name = "angels-electric-boiler-3", amount = 1}
        },
        results = {{type = item, name = electric_boiler_4, amount = 1}},
        main_product = electric_boiler_4
    },
    util.merge
    ({
        data_assembling["angels-electric-boiler"],
        {
            localised_description = {"entity-description.angels-electric-boiler"},
            name = electric_boiler_4,
            subgroup = is_boiler_building,
            icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/electric-boiler.png", icon_size = 32}, 4, angelsmods.refining.number_tint),
            order = d,
            minable = {result = electric_boiler_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 0},
                drain = 60 .. kW
            },
            energy_usage = 4740 .. kW,
            max_health = 800
        }
    })
})

-- ANGELS PETROCHEM REFINING
data:extend
({
    -- AIR FILTER
    {
        type = item,
        name = air_filter_4,
        subgroup = is_buildings_air_filter,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/air-filter.png", icon_size = 32}, 4, angelsmods.petrochem.number_tint),
        order = d,
        place_result = air_filter_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = air_filter_4,
        category = crafting,
        subgroup = is_buildings_air_filter,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/air-filter.png", icon_size = 32}, 4, angelsmods.petrochem.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 8},
            {type = item, name = air_filter_3, amount = 1}
        },
        results = {{type = item, name = air_filter_4, amount = 1}},
        main_product = air_filter_4
    },
    util.merge
    ({
        data_assembling["angels-air-filter"],
        {
            localised_description = {"entity-description.angels-air-filter"},
            name = air_filter_4,
            subgroup = is_buildings_air_filter,
            icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/air-filter.png", icon_size = 32}, 4, angelsmods.petrochem.number_tint),
            order = d,
            minable = {result = air_filter_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 0},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        },
    }),
    -- ADVANCED CHEMICAL PLANT
    {
        type = item,
        name = advanced_chemical_plant_3,
        subgroup = is_buildings_advanced_chemical_plant,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png", icon_size = 32}, 3, angelsmods.petrochem.number_tint),
        order = c,
        place_result = advanced_chemical_plant_3,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = advanced_chemical_plant_3,
        category = crafting,
        subgroup = is_buildings_advanced_chemical_plant,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png", icon_size = 32}, 3, angelsmods.petrochem.number_tint),
        order = c,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = copper_tungsten_plate_bob, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 8},
            {type = item, name = advanced_chemical_plant_2, amount = 1}
        },
        results = {{type = item, name = advanced_chemical_plant_3, amount = 1}},
        main_product = advanced_chemical_plant_3
    },
    util.merge
    ({
        data_assembling[advanced_chemical_plant_1],
        {
            localised_description = {"entity-description.angels-advanced-chemical-plant"},
            name = advanced_chemical_plant_3,
            subgroup = is_buildings_advanced_chemical_plant,
            icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png", icon_size = 32}, 3, angelsmods.petrochem.number_tint),
            order = c,
            minable = {result = advanced_chemical_plant_3},
            module_slots = 3,
            crafting_speed = 3,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 3},
                drain = 45 .. kW
            },
            energy_usage = 315 .. kW
        },
    }),
    {
        type = item,
        name = advanced_chemical_plant_4,
        subgroup = is_buildings_advanced_chemical_plant,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png", icon_size = 32}, 4, angelsmods.petrochem.number_tint),
        order = d,
        place_result = advanced_chemical_plant_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = advanced_chemical_plant_4,
        category = crafting,
        subgroup = is_buildings_advanced_chemical_plant,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png", icon_size = 32}, 4, angelsmods.petrochem.number_tint),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = molybdenum_rhenium_pipe, amount = 16},
            {type = item, name = molybdenum_rhenium_plate, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 8},
            {type = item, name = advanced_chemical_plant_3, amount = 1}
        },
        results = {{type = item, name = advanced_chemical_plant_4, amount = 1}},
        main_product = advanced_chemical_plant_4
    },
    util.merge
    ({
        data_assembling[advanced_chemical_plant_1],
        {
            localised_description = {"entity-description.angels-advanced-chemical-plant"},
            name = advanced_chemical_plant_4,
            subgroup = is_buildings_advanced_chemical_plant,
            icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png", icon_size = 32}, 4, angelsmods.petrochem.number_tint),
            order = d,
            minable = {result = advanced_chemical_plant_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 4},
                drain = 60 .. kW
            },
            energy_usage = 420 .. kW
        }
    })
})

data_assembling[ore_crusher_3].next_upgrade = ore_crusher_4
data_assembling[ore_crusher_4].next_upgrade = nil
data_assembling[ore_floatation_cell_3].next_upgrade = ore_floatation_cell_4
data_assembling[ore_floatation_cell_4].next_upgrade = nil
data_assembling[ore_leaching_plant_3].next_upgrade = ore_leaching_plant_4
data_assembling[ore_leaching_plant_4].next_upgrade = nil
data_assembling[ore_refinery_2].next_upgrade = ore_refinery_3
data_assembling[ore_refinery_3].next_upgrade = ore_refinery_4
data_assembling[ore_refinery_4].next_upgrade = nil
--data_assembling[ore_sorting_facility_5].next_upgrade = ore_sorting_facility_6
--data_assembling[ore_sorting_facility_6].next_upgrade = nil
data_assembling[powderizer_3].next_upgrade = powderizer_4
data_assembling[powderizer_4].next_upgrade = nil
--data_assembling[electro_whinning_cell_2].next_upgrade = electro_whinning_cell_3
--data_assembling[electro_whinning_cell_3].next_upgrade = electro_whinning_cell_4
--data_assembling[electro_whinning_cell_4].next_upgrade = nil
data_assembling[filtration_unit_3].next_upgrade = filtration_unit_4
data_assembling[filtration_unit_4].next_upgrade = nil
data_assembling[crystallizer_3].next_upgrade = crystallizer_4
data_assembling[crystallizer_4].next_upgrade = nil
--[[if settings.startup[setting_early_sintering_oven].value then
    data_assembling[sintering_oven_5].next_upgrade = sintering_oven_6
    data_assembling[sintering_oven_6].next_upgrade = nil
else
    data_assembling[sintering_oven_5].next_upgrade = sintering_oven_6
    data_assembling[sintering_oven_6].next_upgrade = sintering_oven_7
    data_assembling[sintering_oven_7].next_upgrade = nil
end]]
data_assembling[hydro_plant_3].next_upgrade = hydro_plant_4
data_assembling[hydro_plant_4].next_upgrade = nil
data_assembling[washing_plant_2].next_upgrade = washing_plant_3
data_assembling[washing_plant_3].next_upgrade = washing_plant_4
data_assembling[washing_plant_4].next_upgrade = nil
data_assembling[salination_plant_2].next_upgrade = salination_plant_3
data_assembling[salination_plant_3].next_upgrade = salination_plant_4
data_assembling[salination_plant_4].next_upgrade = nil
data_assembling[electric_boiler_3].next_upgrade = electric_boiler_4
data_assembling[electric_boiler_4].next_upgrade = nil
data_assembling[air_filter_3].next_upgrade = air_filter_4
data_assembling[air_filter_4].next_upgrade = nil
data_assembling[advanced_chemical_plant_2].next_upgrade = advanced_chemical_plant_3
data_assembling[advanced_chemical_plant_3].next_upgrade = advanced_chemical_plant_4
data_assembling[advanced_chemical_plant_4].next_upgrade = nil