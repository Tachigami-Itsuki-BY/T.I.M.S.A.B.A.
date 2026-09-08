if mods[lignumis_mods] then
    burner_ore_sorting_facility = "burner-ore-sorting-facility"
    burner_chemical_plant = "burner-" .. chemical_plant_1
    burner_seed_extractor = "burner-seed-extractor"
    TIMSABA.functions.create_burner_buildings
    ({
        -- ORE SORTING FACILITY
        {
            name = burner_ore_sorting_facility,
            subgroup = is_ore_crusher,
            icons = angelsmods.functions.add_number_icon_layer({{icon = "__angelsrefininggraphics__/graphics/icons/ore-sorting-facility.png", icon_size = 64}}, 0, angelsmods.refining.number_tint),
            order = b,

            enabled = true,
            ingredients =
            {
                {type = item, name = basic_circuit_board, amount = 8},
                {type = item, name = wooden_gear_wheel, amount = 32},
                {type = item, name = lumber, amount = 32},
                {type = item, name = stone, amount = 64}
            },

            base_prototype = data_assembling[ore_sorting_facility_1],

            localised_description = {"entity-description.angels-ore-sorting-facility"},
            crafting_speed = 0.5,
            energy_usage = 450 .. kW
        },
        -- CHEMICAL PLANT
        {
            name = burner_chemical_plant,
            subgroup = is_lignumis_building,
            icons = angelsmods.functions.add_number_icon_layer({{icon = "__angelspetrochemgraphics__/graphics/icons/chemical-plant.png", icon_size = 32}}, 0, angelsmods.petrochem.number_tint),
            order = f,

            enabled = true,
            ingredients =
            {
                {type = item, name = basic_circuit_board, amount = 1},
                {type = item, name = wooden_gear_wheel, amount = 4},
                {type = item, name = lumber, amount = 8},
                {type = item, name = stone, amount = 8}
            },

            base_prototype = data_assembling[chemical_plant_1],

            localised_description = {"entity-description.chemical-plant"},
            crafting_speed = 0.5,
            energy_usage = 225 .. kW
        },
        -- SEED EXTRACTOR
        {
            name = burner_seed_extractor,
            subgroup = is_lignumis_building,
            icons = angelsmods.functions.add_number_icon_layer({{icon = "__angelsbioprocessinggraphics__/graphics/icons/seed-extractor.png", icon_size = 32}}, 0, angelsmods.petrochem.number_tint),
            order = g,

            ingredients =
            {
                {type = item, name = basic_circuit_board, amount = 4},
                {type = item, name = wooden_gear_wheel, amount = 8},
                {type = item, name = lumber, amount = 4},
                {type = item, name = stone_brick, amount = 4}
            },

            base_prototype = data_assembling[seed_extractor_1],

            localised_description = {"entity-description.angels-seed-extractor"},
            crafting_speed = 0.5,
            energy_usage = 225 .. kW
        }
    })
    data_assembling[burner_ore_sorting_facility].next_upgrade = ore_sorting_facility_1
    data_assembling[burner_chemical_plant].next_upgrade = chemical_plant_1
end