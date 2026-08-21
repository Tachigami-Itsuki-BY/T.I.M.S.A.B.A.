function TIMSABA.numeral_tier(icon_data, tier, tint)
    local icons = angelsmods.functions.add_number_icon_layer({icon_data}, tier, tint)
    return icons
end

-- ANGELS RESOURCE REFINING
TIMSABA.functions.create_buildings
({
    -- ORE CRUSHER
    {
        name = ore_crusher_4,
        subgroup = is_ore_crusher_angels,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png", icon_size = 64}, 4, angelsmods.refining.number_tint),

        ingredients =
        {
            {type = item, name = titanium_gear_wheel, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 16},
            {type = item, name = titanium_plate_bob, amount = 8},
            {type = item, name = ore_crusher_3, amount = 1}
        },

        base_prototype = data_assembling[ore_crusher_3],

        localised_description = {"entity-description.angels-ore-crusher"},
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- ORE FLOATATION CELL
    {
        name = ore_floatation_cell_4,
        subgroup = is_ore_floatation_angels,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-floatation-cell.png", icon_size = 64}, 4, angelsmods.refining.number_tint),

        ingredients =
        {
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 32},
            {type = item, name = copper_tungsten_plate_bob, amount = 16},
            {type = item, name = ore_floatation_cell_3, amount = 1}
        },

        base_prototype = data_assembling[ore_floatation_cell_3],

        localised_description = {"entity-description.angels-ore-floatation-cell"},
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- ORE LEACHING PLANT
    {
        name = ore_leaching_plant_4,
        subgroup = is_ore_leaching_angels,
        icons = TIMSABA.numeral_tier({icon = "__TIMSABA__/graphics/icons/angels/building/ore-leaching-plant-4.png", icon_size = 32}, 4, angelsmods.refining.number_tint),

        ingredients =
        {
            {type = item, name = molybdenum_rhenium_pipe, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = carbon_concrete_brick, amount = 32},
            {type = item, name = molybdenum_rhenium_plate, amount = 16},
            {type = item, name = ore_leaching_plant_3, amount = 1}
        },

        base_prototype = data_assembling[ore_leaching_plant_3],

        localised_description = {"entity-description.angels-ore-leaching-plant"},
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- ORE REFINERY
    {
        name = ore_refinery_3,
        subgroup = is_ore_refining,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-refinery.png", icon_size = 64}, 3, angelsmods.refining.number_tint),
        order = c,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 16},
            {type = item, name = carbon_concrete_brick, amount = 128},
            {type = item, name = molybdenum_rhenium_plate, amount = 32},
            {type = item, name = ore_refinery_2, amount = 1}
        },

        base_prototype = data_assembling[ore_refinery_2],

        localised_description = {"entity-description.angels-ore-refinery"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = 3,
        drain = 45 .. kW,
        energy_usage = 675 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = ore_refinery_4,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/ore-refinery.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        subgroup = is_ore_refining,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 16},
            {type = item, name = reinforced_graphene_concrete_brick, amount = 128},
            {type = item, name = niobium_tungsten_molybdenum_plate, amount = 32},
            {type = item, name = ore_refinery_3, amount = 1}
        },

        base_prototype = data_assembling[ore_refinery_2],

        localised_description = {"entity-description.angels-ore-refinery"},
        energy_usage = 900 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- ORE SORTING FACILITY
    {
        name = ore_sorting_facility_6,
        subgroup = is_ore_sorter,
        icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/ore-sorting-facility.png", icon_size = 64}}, 6, angelsmods.refining.number_tint),
        order = f,

        ingredients =
        {
            {type = item, name = molybdenum_gear_wheel, amount = 32},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = carbon_concrete_brick, amount = 64},
            {type = item, name = molybdenum_plate, amount = 32},
            {type = item, name = ore_sorting_facility_5, amount = 1}
        },

        base_prototype = data_assembling[ore_sorting_facility_5],

        localised_description = {"entity-description.angels-ore-sorting-facility"},
        module_slots = 6,
        crafting_speed = 6,
        pollution = 6,
        drain = 90 .. kW,
        energy_usage = 630 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- POWDERIZER
    {
        name = powderizer_4,
        subgroup = is_powderizer_angels,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/powderizer-ico.png", icon_size = 32}, 4, angelsmods.refining.number_tint),

        ingredients =
        {
            {type = item, name = copper_tungsten_gear_wheel, amount = 4},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 8},
            {type = item, name = copper_tungsten_plate_bob, amount = 4},
            {type = item, name = powderizer_3, amount = 1}
        },

        base_prototype = data_assembling[powderizer_3],

        localised_description = {"entity-description.angels-powderizer"},
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- ELECTROWINNING CELL
    {
        name = electro_whinning_cell_3,
        subgroup = is_ore_whinning,
        icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/electro-whinning-cell-ico.png", icon_size = 32}}, 3, angelsmods.refining.number_tint),
        order = c,

        ingredients =
        {
            {type = item, name = molybdenum_rhenium_pipe, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = carbon_concrete_brick, amount = 16},
            {type = item, name = molybdenum_rhenium_plate, amount = 16},
            {type = item, name = electro_whinning_cell_2, amount = 1}
        },

        base_prototype = data_assembling[electro_whinning_cell_2],

        localised_description = {"entity-description.angels-electro-whinning-cell"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = 3,
        drain = 45 .. kW,
        energy_usage = 675 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = electro_whinning_cell_4,
        subgroup = is_ore_whinning,
        icons = TIMSABA.numeral_tier({{icon = "__angelsrefininggraphics__/graphics/icons/electro-whinning-cell-ico.png", icon_size = 32}}, 4, angelsmods.refining.number_tint),

        ingredients =
        {
            {type = item, name = niobium_iron_plate, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = reinforced_graphene_concrete_brick, amount = 16},
            {type = item, name = niobium_tungsten_molybdenum_plate, amount = 16},
            {type = item, name = electro_whinning_cell_3, amount = 1}
        },

        base_prototype = data_assembling[electro_whinning_cell_2],

        localised_description = {"entity-description.angels-electro-whinning-cell"},
        energy_usage = 900 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- FILTRATION UNIT
    {
        name = filtration_unit_4,
        subgroup = is_filtration_unit,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/filtration-unit.png", icon_size = 32}, 4, angelsmods.refining.number_tint),

        ingredients =
        {
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 16},
            {type = item, name = copper_tungsten_plate_bob, amount = 8},
            {type = item, name = filtration_unit_3, amount = 1}
        },

        base_prototype = data_assembling[filtration_unit_3],

        localised_description = {"entity-description.angels-filtration-unit"},
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- CRYSTALLIZER
    {
        name = crystallizer_4,
        subgroup = is_crystallizer,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/crystallizer.png", icon_size = 64}, 4, angelsmods.refining.number_tint),

        ingredients =
        {
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 64},
            {type = item, name = copper_tungsten_plate_bob, amount = 32},
            {type = item, name = crystallizer_3, amount = 1}
        },

        base_prototype = data_assembling[crystallizer_3],

        localised_description = {"entity-description.angels-crystallizer"},
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    }
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

data_assembling[ore_sorting_facility_5].next_upgrade = ore_sorting_facility_6
data_assembling[ore_sorting_facility_6].next_upgrade = nil
table.insert(data_assembling[ore_sorting_facility_6].crafting_categories, ore_sorting_6)

data_assembling[powderizer_3].next_upgrade = powderizer_4
data_assembling[powderizer_4].next_upgrade = nil
table.insert(data_assembling[powderizer_4].crafting_categories, powderizing_4)

data_assembling[electro_whinning_cell_2].next_upgrade = electro_whinning_cell_3
data_assembling[electro_whinning_cell_3].next_upgrade = electro_whinning_cell_4
data_assembling[electro_whinning_cell_4].next_upgrade = nil

data_assembling[filtration_unit_3].next_upgrade = filtration_unit_4
data_assembling[filtration_unit_4].next_upgrade = nil

data_assembling[crystallizer_3].next_upgrade = crystallizer_4
data_assembling[crystallizer_4].next_upgrade = nil

-- ANGELS METALLURGY SMELTING
TIMSABA.functions.create_buildings
({
    -- NEW ELECTRIC BLAST FURNACE
    {
        name = electric_blast_furnace_1,
        subgroup = is_electric_blast_furnace,
        icons = util.table.deepcopy(data_item[blast_furnace_1].icons),
        order = a,

        ingredients =
        {
            {type = item, name = basic_circuit_board, amount = 4},
            {type = item, name = iron_pipe, amount = 16},
            {type = item, name = iron_plate, amount = 8},
            {type = item, name = stone_brick, amount = 64}
        },

        base_prototype = data_assembling[blast_furnace_1],

        localised_description = {"entity-description.angels-blast-furnace"},
        module_slots = 1,
        crafting_speed = 1,
        pollution = 1,
        drain = 15 .. kW,
        energy_usage = 225 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = electric_blast_furnace_2,
        subgroup = is_electric_blast_furnace,
        icons = util.table.deepcopy(data_item[blast_furnace_2].icons),
        order = b,

        ingredients =
        {
            {type = item, name = electronic_circuit, amount = 4},
            {type = item, name = steel_pipe, amount = 16},
            {type = item, name = steel_plate, amount = 8},
            {type = item, name = clay_brick, amount = 64},
            {type = item, name = electric_blast_furnace_1, amount = 1}
        },

        base_prototype = data_assembling[blast_furnace_2],

        localised_description = {"entity-description.angels-blast-furnace"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = 2,
        drain = 30 .. kW,
        energy_usage = 450 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = electric_blast_furnace_3,
        subgroup = is_electric_blast_furnace,
        icons = util.table.deepcopy(data_item[blast_furnace_3].icons),
        order = c,

        ingredients =
        {
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 16},
            {type = item, name = aluminium_plate_bob, amount = 8},
            {type = item, name = concrete_brick, amount = 64},
            {type = item, name = electric_blast_furnace_2, amount = 1}
        },

        base_prototype = data_assembling[blast_furnace_3],

        localised_description = {"entity-description.angels-blast-furnace"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = 3,
        drain = 45 .. kW,
        energy_usage = 675 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = electric_blast_furnace_4,
        subgroup = is_electric_blast_furnace,
        icons = util.table.deepcopy(data_item[blast_furnace_4].icons),

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 16},
            {type = item, name = titanium_plate_bob, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 64},
            {type = item, name = electric_blast_furnace_3, amount = 1}
        },

        base_prototype = data_assembling[blast_furnace_4],

        localised_description = {"entity-description.angels-blast-furnace"},
        energy_usage = 900 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    }
})

-- ANGELS METALLURGY CASTING
if settings.startup[setting_early_sintering_oven].value then
    TIMSABA.functions.create_buildings
    ({
        {
            localised_name = {"entity-name.sintering-oven-6"},
            name = sintering_oven_6,
            subgroup = is_sintering_oven,
            icons = TIMSABA.numeral_tier({icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}, 6, angelsmods.smelting.number_tint),
            order = f,

            ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 4},
                {type = item, name = molybdenum_rhenium_plate, amount = 64},
                {type = item, name = carbon_concrete_brick, amount = 32},
                {type = item, name = sintering_oven_5, amount = 1}
            },

            base_prototype = data_assembling[sintering_oven_5],

            localised_description = {"entity-description.angels-sintering-oven"},
            module_slots = 6,
            crafting_speed = 6,
            pollution = 6,
            drain = 90 .. kW,
            energy_usage = 2790 .. kW,
            heating_energy = data_assembling[assembling_machine_1].heating_energy
        }
    })
else
    TIMSABA.functions.create_buildings
    ({
        {
            localised_name = {"entity-name.sintering-oven-6-3"},
            name = sintering_oven_6,
            subgroup = is_sintering_oven,
            icons = TIMSABA.numeral_tier({icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}, 3, angelsmods.smelting.number_tint),
            order = c,

            ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 4},
                {type = item, name = molybdenum_rhenium_plate, amount = 64},
                {type = item, name = carbon_concrete_brick, amount = 32},
                {type = item, name = sintering_oven_5, amount = 1}
            },

            base_prototype = data_assembling[sintering_oven_5],

            localised_description = {"entity-description.angels-sintering-oven"},
            module_slots = 3,
            crafting_speed = 3,
            pollution = 3,
            drain = 45 .. kW,
            energy_usage = 1395 .. kW,
            heating_energy = data_assembling[assembling_machine_1].heating_energy
        },
        {
            localised_name = {"entity-name.sintering-oven-7-4"},
            name = sintering_oven_7,
            subgroup = is_sintering_oven,
            icons = TIMSABA.numeral_tier({icon = "__angelssmeltinggraphics__/graphics/icons/sintering-oven.png", icon_size = 64, scale = 0.5}, 4, angelsmods.smelting.number_tint),

            ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 4},
                {type = item, name = niobium_tungsten_molybdenum_plate, amount = 64},
                {type = item, name = reinforced_graphene_concrete_brick, amount = 32},
                {type = item, name = sintering_oven_6, amount = 1}
            },

            base_prototype = data_assembling[sintering_oven_5],

            localised_description = {"entity-description.angels-sintering-oven"},
            energy_usage = 1860 .. kW,
            heating_energy = data_assembling[assembling_machine_1].heating_energy
        }
    })
end
if settings.startup[setting_early_sintering_oven].value then
    data_assembling[sintering_oven_5].next_upgrade = sintering_oven_6
    data_assembling[sintering_oven_6].next_upgrade = nil
    table.insert(data_assembling[sintering_oven_6].crafting_categories, sintering_6)
else
    data_assembling[sintering_oven_5].next_upgrade = sintering_oven_6
    data_assembling[sintering_oven_6].next_upgrade = sintering_oven_7
    table.insert(data_assembling[sintering_oven_6].crafting_categories, sintering_6)
    data_assembling[sintering_oven_7].next_upgrade = nil
    table.insert(data_assembling[sintering_oven_7].crafting_categories, sintering_6)
end

-- ANGELS WATER TREATMENT
TIMSABA.functions.create_buildings
({
    -- HYDRO PLANT
    {
        name = hydro_plant_4,
        subgroup = is_hydro_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/hydro-plant.png", icon_size = 64}, 4, angelsmods.refining.number_tint),

        ingredients =
        {
            {type = item, name = processing_unit, amount = 8},
            {type = item, name = titanium_pipe, amount = 32},
            {type = item, name = titanium_plate_bob, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 64},
            {type = item, name = hydro_plant_3, amount = 1}
        },

        base_prototype = data_assembling["angels-hydro-plant"],

        localised_description = {"entity-description.angels-hydro-plant"},
        pollution = 0,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- WASHING PLANT
    {
        name = washing_plant_3,
        subgroup = is_washing_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png", icon_size = 32}, 3, angelsmods.refining.number_tint),
        order = c,

        ingredients =
        {
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 32},
            {type = item, name = brass_plate_bob, amount = 8},
            {type = item, name = concrete_brick, amount = 16},
            {type = item, name = washing_plant_2, amount = 1}
        },

        base_prototype = data_assembling[washing_plant_1],

        localised_description = {"entity-description.angels-washing-plant"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = 0,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = washing_plant_4,
        subgroup = is_washing_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/washing-plant-ico.png", icon_size = 32}, 4, angelsmods.refining.number_tint),

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 32},
            {type = item, name = titanium_plate_bob, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 16},
            {type = item, name = washing_plant_3, amount = 1}
        },

        base_prototype = data_assembling[washing_plant_1],

        localised_description = {"entity-description.angels-washing-plant"},
        pollution = 0,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- SALINATION PLANT
    {
        name = salination_plant_3,
        subgroup = is_salination_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/salination-plant.png", icon_size = 64}, 3, angelsmods.refining.number_tint),
        order = c,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = copper_tungsten_plate_bob, amount = 64},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 64},
            {type = item, name = salination_plant_2, amount = 1}
        },

        base_prototype = data_assembling[salination_plant_1],

        localised_description = {"entity-description.angels-salination-plant"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = 0,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = salination_plant_4,
        subgroup = is_salination_building,
        icons = TIMSABA.numeral_tier({icon = "__angelsrefininggraphics__/graphics/icons/salination-plant.png", icon_size = 64}, 4, angelsmods.refining.number_tint),

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = molybdenum_rhenium_pipe, amount = 16},
            {type = item, name = molybdenum_rhenium_plate, amount = 64},
            {type = item, name = carbon_concrete_brick, amount = 64},
            {type = item, name = salination_plant_3, amount = 1}
        },

        base_prototype = data_assembling[salination_plant_1],

        localised_description = {"entity-description.angels-salination-plant"},
        pollution = 0,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- ELECTRIC BOILER
    {
        name = electric_boiler_4,
        subgroup = is_boiler_building,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/electric-boiler.png", icon_size = 32}, 4, angelsmods.refining.number_tint),

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 2},
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = copper_tungsten_plate_bob, amount = 4},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 4},
            {type = item, name = electric_boiler_3, amount = 1}
        },

        base_prototype = data_assembling[electric_boiler_1],

        localised_description = {"entity-description.angels-electric-boiler"},
        pollution = 0,
        energy_usage = 4740 .. kW,
        max_health = 800,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    }
})
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

-- ANGELS PETROCHEM REFINING
TIMSABA.functions.create_buildings
({
    -- AIR FILTER
    {
        name = air_filter_4,
        subgroup = is_buildings_air_filter,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/air-filter.png", icon_size = 32}, 4, angelsmods.petrochem.number_tint),

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 8},
            {type = item, name = air_filter_3, amount = 1}
        },

        base_prototype = data_assembling[air_filter_1],

        localised_description = {"entity-description.angels-air-filter"},
        pollution = 0,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- ADVANCED CHEMICAL PLANT
    {
        name = advanced_chemical_plant_3,
        subgroup = is_buildings_advanced_chemical_plant,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png", icon_size = 32}, 3, angelsmods.petrochem.number_tint),
        order = c,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = copper_tungsten_pipe, amount = 16},
            {type = item, name = copper_tungsten_plate_bob, amount = 16},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 8},
            {type = item, name = advanced_chemical_plant_2, amount = 1}
        },

        base_prototype = data_assembling[advanced_chemical_plant_1],

        localised_description = {"entity-description.angels-advanced-chemical-plant"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = 3,
        drain = 45 .. kW,
        energy_usage = 675 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = advanced_chemical_plant_4,
        subgroup = is_buildings_advanced_chemical_plant,
        icons = TIMSABA.numeral_tier({icon = "__angelspetrochemgraphics__/graphics/icons/advanced-chemical-plant.png", icon_size = 32}, 4, angelsmods.petrochem.number_tint),

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = molybdenum_rhenium_pipe, amount = 16},
            {type = item, name = molybdenum_rhenium_plate, amount = 16},
            {type = item, name = carbon_concrete_brick, amount = 8},
            {type = item, name = advanced_chemical_plant_3, amount = 1}
        },

        base_prototype = data_assembling[advanced_chemical_plant_1],

        localised_description = {"entity-description.angels-advanced-chemical-plant"},
        energy_usage = 900 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    }
})
data_assembling[air_filter_3].next_upgrade = air_filter_4
data_assembling[air_filter_4].next_upgrade = nil

data_assembling[advanced_chemical_plant_2].next_upgrade = advanced_chemical_plant_3
data_assembling[advanced_chemical_plant_3].next_upgrade = advanced_chemical_plant_4
data_assembling[advanced_chemical_plant_4].next_upgrade = nil

-- ANGELS BIOPROCESSING NAUVIS
TIMSABA.functions.create_buildings
({
    -- TREE GENERATOR SEED
    -- TEMPERATE
    {
        name = bio_generator_t_2,
        subgroup = is_bio_generator_temperate,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-temperate-generator.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = electronic_circuit, amount = 4},
            {type = item, name = bronze_pipe, amount = 8},
            {type = item, name = bronze_plate_bob, amount = 4},
            {type = item, name = clay_brick, amount = 4},
            {type = item, name = bio_generator_t_1, amount = 1}
        },

        base_prototype = data_assembling[bio_generator_t_1],

        localised_description = {"entity-description.angels-bio-generator-temperate-1"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -32,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_generator_t_3,
        subgroup = is_bio_generator_temperate,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-temperate-generator.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 8},
            {type = item, name = brass_plate_bob, amount = 4},
            {type = item, name = concrete_brick, amount = 4},
            {type = item, name = bio_generator_t_2, amount = 1}
        },

        base_prototype = data_assembling[bio_generator_t_1],

        localised_description = {"entity-description.angels-bio-generator-temperate-1"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -48,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_generator_t_4,
        subgroup = is_bio_generator_temperate,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-temperate-generator.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 4},
            {type = item, name = bio_generator_t_3, amount = 1}
        },

        base_prototype = data_assembling[bio_generator_t_1],

        localised_description = {"entity-description.angels-bio-generator-temperate-1"},
        pollution = -64,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- SWAMP
    {
        name = bio_generator_s_2,
        subgroup = is_bio_generator_swamp,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-swamp-generator.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = electronic_circuit, amount = 4},
            {type = item, name = bronze_pipe, amount = 8},
            {type = item, name = bronze_plate_bob, amount = 4},
            {type = item, name = clay_brick, amount = 4},
            {type = item, name = bio_generator_s_1, amount = 1}
        },

        base_prototype = data_assembling[bio_generator_s_1],

        localised_description = {"entity-description.angels-bio-generator-swamp-1"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -32,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_generator_s_3,
        subgroup = is_bio_generator_swamp,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-swamp-generator.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 8},
            {type = item, name = brass_plate_bob, amount = 4},
            {type = item, name = concrete_brick, amount = 4},
            {type = item, name = bio_generator_s_2, amount = 1}
        },

        base_prototype = data_assembling[bio_generator_s_1],

        localised_description = {"entity-description.angels-bio-generator-swamp-1"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -48,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_generator_s_4,
        subgroup = is_bio_generator_swamp,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-swamp-generator.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 4},
            {type = item, name = bio_generator_s_3, amount = 1}
        },

        base_prototype = data_assembling[bio_generator_s_1],

        localised_description = {"entity-description.angels-bio-generator-swamp-1"},
        pollution = -64,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- DESERT
    {
        name = bio_generator_d_2,
        subgroup = is_bio_generator_desert,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-desert-generator.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = electronic_circuit, amount = 4},
            {type = item, name = bronze_pipe, amount = 8},
            {type = item, name = bronze_plate_bob, amount = 4},
            {type = item, name = clay_brick, amount = 4},
            {type = item, name = bio_generator_d_1, amount = 1}
        },

        base_prototype = data_assembling[bio_generator_d_1],

        localised_description = {"entity-description.angels-bio-generator-desert-1"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -32,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_generator_d_3,
        subgroup = is_bio_generator_desert,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-desert-generator.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 8},
            {type = item, name = brass_plate_bob, amount = 4},
            {type = item, name = concrete_brick, amount = 4},
            {type = item, name = bio_generator_d_2, amount = 1}
        },

        base_prototype = data_assembling[bio_generator_d_1],

        localised_description = {"entity-description.angels-bio-generator-desert-1"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -48,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_generator_d_4,
        subgroup = is_bio_generator_desert,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-desert-generator.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 4},
            {type = item, name = bio_generator_d_3, amount = 1}
        },

        base_prototype = data_assembling[bio_generator_d_1],

        localised_description = {"entity-description.angels-bio-generator-desert-1"},
        pollution = -64,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- BIO ARBORETUM
    {
        name = bio_arboretum_2,
        subgroup = is_bio_arboretum,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-arboretum.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = electronic_circuit, amount = 4},
            {type = item, name = bronze_pipe, amount = 16},
            {type = item, name = bronze_plate_bob, amount = 16},
            {type = item, name = clay_brick, amount = 32},
            {type = item, name = bio_arboretum_1, amount = 1}
        },

        base_prototype = data_assembling[bio_arboretum_1],

        localised_description = {"entity-description.angels-bio-arboretum-1"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -32,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_arboretum_3,
        subgroup = is_bio_arboretum,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-arboretum.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 16},
            {type = item, name = brass_plate_bob, amount = 16},
            {type = item, name = concrete_brick, amount = 32},
            {type = item, name = bio_arboretum_2, amount = 1}
        },

        base_prototype = data_assembling[bio_arboretum_1],

        localised_description = {"entity-description.angels-bio-arboretum-1"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -48,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_arboretum_4,
        subgroup = is_bio_arboretum,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-arboretum.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 16},
            {type = item, name = titanium_plate_bob, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 32},
            {type = item, name = bio_arboretum_3, amount = 1}
        },

        base_prototype = data_assembling[bio_arboretum_1],

        localised_description = {"entity-description.angels-bio-arboretum-1"},
        pollution = -64,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    }
})
data_assembling[bio_generator_t_1].next_upgrade = bio_generator_t_2
data_assembling[bio_generator_t_2].next_upgrade = bio_generator_t_3
data_assembling[bio_generator_t_3].next_upgrade = bio_generator_t_4
data_assembling[bio_generator_t_4].next_upgrade = nil

data_assembling[bio_generator_s_1].next_upgrade = bio_generator_s_2
data_assembling[bio_generator_s_2].next_upgrade = bio_generator_s_3
data_assembling[bio_generator_s_3].next_upgrade = bio_generator_s_4
data_assembling[bio_generator_s_4].next_upgrade = nil

data_assembling[bio_generator_d_1].next_upgrade = bio_generator_d_2
data_assembling[bio_generator_d_2].next_upgrade = bio_generator_d_3
data_assembling[bio_generator_d_3].next_upgrade = bio_generator_d_4
data_assembling[bio_generator_d_4].next_upgrade = nil

data_assembling[bio_arboretum_1].next_upgrade = bio_arboretum_2
data_assembling[bio_arboretum_2].next_upgrade = bio_arboretum_3
data_assembling[bio_arboretum_3].next_upgrade = bio_arboretum_4
data_assembling[bio_arboretum_4].next_upgrade = nil

-- ANGELS BIOPROCESSING VEGETABLES
TIMSABA.functions.create_buildings
({
    -- BASIC FARM
    {
        name = basic_farm_2,
        subgroup = is_basic_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/basic-farm.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 8},
            {type = item, name = brass_plate_bob, amount = 16},
            {type = item, name = concrete_brick, amount = 32},
            {type = item, name = basic_farm_1, amount = 1}
        },

        base_prototype = data_assembling[basic_farm_1],

        localised_description = {"entity-description.angels-crop-farm"},
        module_slots = 2,
        crafting_speed = 1,
        pollution = -16,
        drain = 30 .. kW,
        energy_usage = 90 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = basic_farm_3,
        subgroup = is_basic_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/basic-farm.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 32},
            {type = item, name = basic_farm_2, amount = 1}
        },

        base_prototype = data_assembling[basic_farm_1],

        localised_description = {"entity-description.angels-crop-farm"},
        module_slots = 3,
        crafting_speed = 1.5,
        pollution = -24,
        drain = 45 .. kW,
        energy_usage = 135 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = basic_farm_4,
        subgroup = is_basic_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/basic-farm.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = nitinol_pipe, amount = 8},
            {type = item, name = nitinol_plate_bob, amount = 16},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 32},
            {type = item, name = basic_farm_3, amount = 1}
        },

        base_prototype = data_assembling[basic_farm_1],

        localised_description = {"entity-description.angels-crop-farm"},
        crafting_speed = 2,
        pollution = -32,
        energy_usage = 180 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- TEMPERATE FARM
    {
        name = temperate_farm_2,
        subgroup = is_temperate_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/temperate-farm.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 32},
            {type = item, name = temperate_farm_1, amount = 1}
        },

        base_prototype = data_assembling[temperate_farm_1],

        localised_description = {"entity-description.angels-temperate-farm"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -32,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = temperate_farm_3,
        subgroup = is_temperate_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/temperate-farm.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = nitinol_pipe, amount = 8},
            {type = item, name = nitinol_plate_bob, amount = 16},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 32},
            {type = item, name = temperate_farm_2, amount = 1}
        },

        base_prototype = data_assembling[temperate_farm_1],

        localised_description = {"entity-description.angels-temperate-farm"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -48,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = temperate_farm_4,
        subgroup = is_temperate_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/temperate-farm.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = molybdenum_rhenium_pipe, amount = 8},
            {type = item, name = molybdenum_rhenium_plate, amount = 16},
            {type = item, name = carbon_concrete_brick, amount = 32},
            {type = item, name = temperate_farm_3, amount = 1}
        },

        base_prototype = data_assembling[temperate_farm_1],

        localised_description = {"entity-description.angels-temperate-farm"},
        pollution = -64,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- SWAMP FARM
    {
        name = swamp_farm_2,
        subgroup = is_swamp_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/swamp-farm.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 32},
            {type = item, name = swamp_farm_1, amount = 1}
        },

        base_prototype = data_assembling[swamp_farm_1],

        localised_description = {"entity-description.angels-swamp-farm"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -32,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = swamp_farm_3,
        subgroup = is_swamp_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/swamp-farm.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = nitinol_pipe, amount = 8},
            {type = item, name = nitinol_plate_bob, amount = 16},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 32},
            {type = item, name = swamp_farm_2, amount = 1}
        },

        base_prototype = data_assembling[swamp_farm_1],

        localised_description = {"entity-description.angels-swamp-farm"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -48,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = swamp_farm_4,
        subgroup = is_swamp_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/swamp-farm.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = molybdenum_rhenium_pipe, amount = 8},
            {type = item, name = molybdenum_rhenium_plate, amount = 16},
            {type = item, name = carbon_concrete_brick, amount = 32},
            {type = item, name = swamp_farm_3, amount = 1}
        },

        base_prototype = data_assembling[swamp_farm_1],

        localised_description = {"entity-description.angels-swamp-farm"},
        pollution = -64,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- DESERT FARM
    {
        name = desert_farm_2,
        subgroup = is_desert_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/desert-farm.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 32},
            {type = item, name = desert_farm_1, amount = 1}
        },

        base_prototype = data_assembling[desert_farm_1],

        localised_description = {"entity-description.angels-desert-farm"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -32,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = desert_farm_3,
        subgroup = is_desert_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/desert-farm.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = nitinol_pipe, amount = 8},
            {type = item, name = nitinol_plate_bob, amount = 16},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 32},
            {type = item, name = desert_farm_2, amount = 1}
        },

        base_prototype = data_assembling[desert_farm_1],

        localised_description = {"entity-description.angels-desert-farm"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -48,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = desert_farm_4,
        subgroup = is_desert_farm,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/desert-farm.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = molybdenum_rhenium_pipe, amount = 8},
            {type = item, name = molybdenum_rhenium_plate, amount = 16},
            {type = item, name = carbon_concrete_brick, amount = 32},
            {type = item, name = desert_farm_3, amount = 1}
        },

        base_prototype = data_assembling[desert_farm_1],

        localised_description = {"entity-description.angels-desert-farm"},
        pollution = -64,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- SEED EXTRACTOR
    {
        name = seed_extractor_2,
        subgroup = is_seed_extractor,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/seed-extractor.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = brass_gear_wheel, amount = 8},
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_plate_bob, amount = 4},
            {type = item, name = concrete_brick, amount = 4},
            {type = item, name = seed_extractor_1, amount = 1}
        },

        base_prototype = data_assembling[seed_extractor_1],

        localised_description = {"entity-description.angels-seed-extractor"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -2,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = seed_extractor_3,
        subgroup = is_seed_extractor,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/seed-extractor.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = titanium_gear_wheel, amount = 8},
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_plate_bob, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 4},
            {type = item, name = seed_extractor_2, amount = 1}
        },

        base_prototype = data_assembling[seed_extractor_1],

        localised_description = {"entity-description.angels-seed-extractor"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -3,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = seed_extractor_4,
        subgroup = is_seed_extractor,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/seed-extractor.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = nitinol_gear_wheel, amount = 8},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = nitinol_plate_bob, amount = 4},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 4},
            {type = item, name = seed_extractor_3, amount = 1}
        },

        base_prototype = data_assembling[seed_extractor_1],

        localised_description = {"entity-description.angels-seed-extractor"},
        pollution = -4,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- COMPOSTER
    {
        name = composter_2,
        subgroup = is_composter,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/composter.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = steel_gear_wheel, amount = 8},
            {type = item, name = electronic_circuit, amount = 4},
            {type = item, name = steel_plate, amount = 4},
            {type = item, name = clay_brick, amount = 8},
            {type = item, name = composter_1, amount = 1}
        },

        base_prototype = data_furnace[composter_1],

        localised_description = {"entity-description.angels-composter"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -2,
        drain = 15 .. kW,
        energy_usage = 45 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = composter_3,
        subgroup = is_composter,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/composter.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = brass_gear_wheel, amount = 8},
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_plate_bob, amount = 4},
            {type = item, name = concrete_brick, amount = 8},
            {type = item, name = composter_2, amount = 1}
        },

        base_prototype = data_furnace[composter_1],

        localised_description = {"entity-description.angels-basic-farm"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -3,
        drain = 22.5 .. kW,
        energy_usage = 67.5 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = composter_4,
        subgroup = is_composter,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/composter.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = titanium_gear_wheel, amount = 8},
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_plate_bob, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 8},
            {type = item, name = composter_3, amount = 1}
        },

        base_prototype = data_furnace[composter_1],

        localised_description = {"entity-description.angels-composter"},
        pollution = -4,
        drain = 30 .. kW,
        energy_usage = 90 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- BIO PROCESSOR
    {
        name = bio_processor_2,
        subgroup = is_bio_processor,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-processor.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = brass_gear_wheel, amount = 16},
            {type = item, name = advanced_circuit, amount = 8},
            {type = item, name = brass_plate_bob, amount = 16},
            {type = item, name = concrete_brick, amount = 16},
            {type = item, name = bio_processor_1, amount = 1}
        },

        base_prototype = data_assembling[bio_processor_1],

        localised_description = {"entity-description.angels-bio-processor"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -2,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_processor_3,
        subgroup = is_bio_processor,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-processor.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = titanium_gear_wheel, amount = 16},
            {type = item, name = processing_unit, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 16},
            {type = item, name = reinforced_concrete_brick, amount = 16},
            {type = item, name = bio_processor_2, amount = 1}
        },

        base_prototype = data_assembling[bio_processor_1],

        localised_description = {"entity-description.angels-bio-processor"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -3,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_processor_4,
        subgroup = is_bio_processor,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-processor.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = nitinol_gear_wheel, amount = 16},
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = nitinol_plate_bob, amount = 16},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 16},
            {type = item, name = bio_processor_3, amount = 1}
        },

        base_prototype = data_assembling[bio_processor_1],

        localised_description = {"entity-description.angels-bio-processor"},
        pollution = -4,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- BIO PRESS
    {
        name = bio_press_2,
        subgroup = is_bio_press,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-press.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = brass_gear_wheel, amount = 8},
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 4},
            {type = item, name = concrete_brick, amount = 8},
            {type = item, name = brass_plate_bob, amount = 8},
            {type = item, name = bio_press_1, amount = 1}
        },

        base_prototype = data_assembling[bio_press_1],

        localised_description = {"entity-description.angels-bio-press"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -2,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_press_3,
        subgroup = is_bio_press,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-press.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = titanium_gear_wheel, amount = 8},
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 8},
            {type = item, name = bio_press_2, amount = 1}
        },

        base_prototype = data_assembling[bio_press_1],

        localised_description = {"entity-description.angels-bio-press"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -3,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = bio_press_4,
        subgroup = is_bio_press,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-press.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = nitinol_gear_wheel, amount = 8},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = nitinol_pipe, amount = 4},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 8},
            {type = item, name = nitinol_plate_bob, amount = 8},
            {type = item, name = bio_press_3, amount = 1}
        },

        base_prototype = data_assembling[bio_press_1],

        localised_description = {"entity-description.angels-bio-press"},
        pollution = -4,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- NUTRIENT EXTRACTOR
    {
        name = nutrient_extractor_2,
        subgroup = is_nutrient_extractor,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/nutrient-extractor.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = brass_gear_wheel, amount = 8},
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 8},
            {type = item, name = concrete_brick, amount = 8},
            {type = item, name = brass_plate_bob, amount = 4},
            {type = item, name = nutrient_extractor_1, amount = 1}
        },

        base_prototype = data_assembling[nutrient_extractor_1],

        localised_description = {"entity-description.angels-nutrient-extractor"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -2,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = nutrient_extractor_3,
        subgroup = is_nutrient_extractor,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/nutrient-extractor.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = titanium_gear_wheel, amount = 8},
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 4},
            {type = item, name = nutrient_extractor_2, amount = 1}
        },

        base_prototype = data_assembling[nutrient_extractor_1],

        localised_description = {"entity-description.angels-nutrient-extractor"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -3,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = nutrient_extractor_4,
        subgroup = is_nutrient_extractor,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/nutrient-extractor.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = nitinol_gear_wheel, amount = 8},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = nitinol_pipe, amount = 8},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 8},
            {type = item, name = nitinol_plate_bob, amount = 4},
            {type = item, name = nutrient_extractor_3, amount = 1}
        },

        base_prototype = data_assembling[nutrient_extractor_1],

        localised_description = {"entity-description.angels-nutrient-extractor"},
        pollution = -4,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    }
})
data_assembling[basic_farm_1].next_upgrade = basic_farm_2
data_assembling[basic_farm_2].next_upgrade = basic_farm_3
data_assembling[basic_farm_3].next_upgrade = basic_farm_4
data_assembling[basic_farm_4].next_upgrade = nil

data_assembling[temperate_farm_1].next_upgrade = temperate_farm_2
data_assembling[temperate_farm_2].next_upgrade = temperate_farm_3
data_assembling[temperate_farm_3].next_upgrade = temperate_farm_4
data_assembling[temperate_farm_4].next_upgrade = nil

data_assembling[swamp_farm_1].next_upgrade = swamp_farm_2
data_assembling[swamp_farm_2].next_upgrade = swamp_farm_3
data_assembling[swamp_farm_3].next_upgrade = swamp_farm_4
data_assembling[swamp_farm_4].next_upgrade = nil

data_assembling[desert_farm_1].next_upgrade = desert_farm_2
data_assembling[desert_farm_2].next_upgrade = desert_farm_3
data_assembling[desert_farm_3].next_upgrade = desert_farm_4
data_assembling[desert_farm_4].next_upgrade = nil

data_assembling[seed_extractor_1].next_upgrade = seed_extractor_2
data_assembling[seed_extractor_2].next_upgrade = seed_extractor_3
data_assembling[seed_extractor_3].next_upgrade = seed_extractor_4
data_assembling[seed_extractor_4].next_upgrade = nil

data_furnace[composter_1].next_upgrade = composter_2
data_furnace[composter_2].next_upgrade = composter_3
data_furnace[composter_3].next_upgrade = composter_4
data_furnace[composter_4].next_upgrade = nil

data_assembling[bio_processor_1].next_upgrade = bio_processor_2
data_assembling[bio_processor_2].next_upgrade = bio_processor_3
data_assembling[bio_processor_3].next_upgrade = bio_processor_4
data_assembling[bio_processor_4].next_upgrade = nil

data_assembling[bio_press_1].next_upgrade = bio_press_2
data_assembling[bio_press_2].next_upgrade = bio_press_3
data_assembling[bio_press_3].next_upgrade = bio_press_4
data_assembling[bio_press_4].next_upgrade = nil

data_assembling[nutrient_extractor_1].next_upgrade = nutrient_extractor_2
data_assembling[nutrient_extractor_2].next_upgrade = nutrient_extractor_3
data_assembling[nutrient_extractor_3].next_upgrade = nutrient_extractor_4
data_assembling[nutrient_extractor_4].next_upgrade = nil

-- ANGELS BIOPROCESSING ALIEN
TIMSABA.functions.create_buildings
({
    -- FISH REFUGIUM
    {
        name = fish_refugium_2,
        subgroup = is_fish_refugium,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-fish.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = advanced_circuit, amount = 4},
            {type = item, name = brass_pipe, amount = 64},
            {type = item, name = glass_bob, amount = 8},
            {type = item, name = concrete_brick, amount = 16},
            {type = item, name = brass_plate_bob, amount = 4},
            {type = item, name = fish_refugium_1, amount = 1}
        },

        base_prototype = data_assembling[fish_refugium_1],

        localised_description = {"entity-description.angels-bio-refugium-fish"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -32,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = fish_refugium_3,
        subgroup = is_fish_refugium,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-fish.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 64},
            {type = item, name = glass_bob, amount = 8},
            {type = item, name = reinforced_concrete_brick, amount = 16},
            {type = item, name = titanium_plate_bob, amount = 4},
            {type = item, name = fish_refugium_2, amount = 1}
        },

        base_prototype = data_assembling[fish_refugium_1],

        localised_description = {"entity-description.angels-bio-refugium-fish"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -48,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = fish_refugium_4,
        subgroup = is_fish_refugium,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-fish.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = nitinol_pipe, amount = 64},
            {type = item, name = glass_bob, amount = 8},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 16},
            {type = item, name = nitinol_plate_bob, amount = 4},
            {type = item, name = fish_refugium_3, amount = 1}
        },

        base_prototype = data_assembling[fish_refugium_1],

        localised_description = {"entity-description.angels-bio-refugium-fish"},
        pollution = -64,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- BUTCHERY
    {
        name = butchery_2,
        subgroup = is_butchery,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-butchery.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = brass_gear_wheel, amount = 4},
            {type = item, name = advanced_circuit, amount = 1},
            {type = item, name = concrete_brick, amount = 8},
            {type = item, name = brass_plate_bob, amount = 8},
            {type = item, name = butchery_1, amount = 1}
        },

        base_prototype = data_furnace[butchery_1],

        localised_description = {"entity-description.angels-bio-butchery"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -2,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = butchery_3,
        subgroup = is_butchery,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-butchery.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = titanium_gear_wheel, amount = 4},
            {type = item, name = processing_unit, amount = 1},
            {type = item, name = reinforced_concrete_brick, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 8},
            {type = item, name = butchery_2, amount = 1}
        },

        base_prototype = data_furnace[butchery_1],

        localised_description = {"entity-description.angels-bio-butchery"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -3,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = butchery_4,
        subgroup = is_butchery,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-butchery.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = nitinol_gear_wheel, amount = 4},
            {type = item, name = advanced_processing_unit, amount = 1},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 8},
            {type = item, name = nitinol_plate_bob, amount = 8},
            {type = item, name = butchery_3, amount = 1}
        },

        base_prototype = data_furnace[butchery_1],

        localised_description = {"entity-description.angels-bio-butchery"},
        pollution = -4,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- HUTCHERY
    {
        name = hatchery_2,
        subgroup = is_hatchery,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-hatchery.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = small_lamp, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 8},
            {type = item, name = titanium_plate_bob, amount = 8},
            {type = item, name = hatchery_1, amount = 1}
        },

        base_prototype = data_furnace[hatchery_1],

        localised_description = {"entity-description.angels-bio-hatchery"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -2,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = hatchery_3,
        subgroup = is_hatchery,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-hatchery.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = small_lamp, amount = 4},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 8},
            {type = item, name = nitinol_plate_bob, amount = 8},
            {type = item, name = hatchery_2, amount = 1}
        },

        base_prototype = data_furnace[hatchery_1],

        localised_description = {"entity-description.angels-bio-hatchery"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -3,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = hatchery_4,
        subgroup = is_hatchery,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-hatchery.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = small_lamp, amount = 4},
            {type = item, name = carbon_concrete_brick, amount = 8},
            {type = item, name = molybdenum_rhenium_plate, amount = 8},
            {type = item, name = hatchery_3, amount = 1}
        },

        base_prototype = data_furnace[hatchery_1],

        localised_description = {"entity-description.angels-bio-hatchery"},
        pollution = -4,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- PUFFER REFUGIUM
    {
        name = puffer_refugium_2,
        subgroup = is_puffer_refugium,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-puffer.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = processing_unit, amount = 4},
            {type = item, name = titanium_pipe, amount = 32},
            {type = item, name = titanium_plate_bob, amount = 16},
            {type = item, name = glass_bob, amount = 4},
            {type = item, name = reinforced_concrete_brick, amount = 16},
            {type = item, name = puffer_refugium_1, amount = 1}
        },

        base_prototype = data_assembling[puffer_refugium_1],

        localised_description = {"entity-description.angels-bio-refugium-puffer"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -32,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = puffer_refugium_3,
        subgroup = is_puffer_refugium,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-puffer.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = nitinol_pipe, amount = 32},
            {type = item, name = nitinol_plate_bob, amount = 16},
            {type = item, name = glass_bob, amount = 4},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 16},
            {type = item, name = puffer_refugium_2, amount = 1}
        },

        base_prototype = data_assembling[puffer_refugium_1],

        localised_description = {"entity-description.angels-bio-refugium-puffer"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -48,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = puffer_refugium_4,
        subgroup = is_puffer_refugium,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-puffer.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = molybdenum_rhenium_pipe, amount = 32},
            {type = item, name = molybdenum_rhenium_plate, amount = 16},
            {type = item, name = glass_bob, amount = 4},
            {type = item, name = carbon_concrete_brick, amount = 16},
            {type = item, name = puffer_refugium_3, amount = 1}
        },

        base_prototype = data_assembling[puffer_refugium_1],

        localised_description = {"entity-description.angels-bio-refugium-puffer"},
        pollution = -64,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    -- BITER REFUGIUM
    {
        name = biter_refugium_2,
        subgroup = is_biter_refugium,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-biter.png", icon_size = 32},
        order = b,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = nitinol_pipe, amount = 32},
            {type = item, name = stone_wall, amount = 4},
            {type = item, name = nitinol_plate_bob, amount = 32},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 64},
            {type = item, name = biter_refugium_1, amount = 1}
        },

        base_prototype = data_assembling[biter_refugium_1],

        localised_description = {"entity-description.angels-bio-refugium-biter"},
        module_slots = 2,
        crafting_speed = 2,
        pollution = -32,
        drain = 30 .. kW,
        energy_usage = 210 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = biter_refugium_3,
        subgroup = is_biter_refugium,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-biter.png", icon_size = 32},
        order = c,

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = molybdenum_rhenium_pipe, amount = 32},
            {type = item, name = stone_wall, amount = 4},
            {type = item, name = molybdenum_rhenium_plate, amount = 32},
            {type = item, name = carbon_concrete_brick, amount = 64},
            {type = item, name = biter_refugium_2, amount = 1}
        },

        base_prototype = data_assembling[biter_refugium_1],

        localised_description = {"entity-description.angels-bio-refugium-biter"},
        module_slots = 3,
        crafting_speed = 3,
        pollution = -48,
        drain = 45 .. kW,
        energy_usage = 315 .. kW,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    },
    {
        name = biter_refugium_4,
        subgroup = is_biter_refugium,
        icons = {icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-biter.png", icon_size = 32},

        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = niobium_iron_plate, amount = 32},
            {type = item, name = stone_wall, amount = 4},
            {type = item, name = niobium_tungsten_molybdenum_plate, amount = 32},
            {type = item, name = reinforced_graphene_concrete_brick, amount = 64},
            {type = item, name = biter_refugium_3, amount = 1}
        },

        base_prototype = data_assembling[biter_refugium_1],

        localised_description = {"entity-description.angels-bio-refugium-biter"},
        pollution = -64,
        heating_energy = data_assembling[assembling_machine_1].heating_energy
    }
})

data_assembling[fish_refugium_1].next_upgrade = fish_refugium_2
data_assembling[fish_refugium_2].next_upgrade = fish_refugium_3
data_assembling[fish_refugium_3].next_upgrade = fish_refugium_4
data_assembling[fish_refugium_4].next_upgrade = nil

data_furnace[butchery_1].next_upgrade = butchery_2
data_furnace[butchery_2].next_upgrade = butchery_3
data_furnace[butchery_3].next_upgrade = butchery_4
data_furnace[butchery_4].next_upgrade = nil

data_furnace[hatchery_1].next_upgrade = hatchery_2
data_furnace[hatchery_2].next_upgrade = hatchery_3
data_furnace[hatchery_3].next_upgrade = hatchery_4
data_furnace[hatchery_4].next_upgrade = nil

data_assembling[puffer_refugium_1].next_upgrade = puffer_refugium_2
data_assembling[puffer_refugium_2].next_upgrade = puffer_refugium_3
data_assembling[puffer_refugium_3].next_upgrade = puffer_refugium_4
data_assembling[puffer_refugium_4].next_upgrade = nil

data_assembling[biter_refugium_1].next_upgrade = biter_refugium_2
data_assembling[biter_refugium_2].next_upgrade = biter_refugium_3
data_assembling[biter_refugium_3].next_upgrade = biter_refugium_4
data_assembling[biter_refugium_4].next_upgrade = nil