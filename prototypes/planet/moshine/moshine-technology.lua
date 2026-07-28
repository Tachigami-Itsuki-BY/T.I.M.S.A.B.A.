if mods[moshine_mods] then
    planet_discovery_moshine = "planet-discovery-moshine"
    tech_magnet_moshine = "moshine-tech-magnet"
    local tech_monazite_processing_1 = "monazite-processing-1"
    local tech_monazite_processing_2 = "monazite-processing-2"
    local tech_monazite_processing_3 = "monazite-processing-3"
    tech_monazite_processing_4 = "monazite-processing-4"
    tech_neodymium_smelting_1 = "neodymium-smelting-1"
    local tech_neodymium_smelting_2 = "neodymium-smelting-2"
    local tech_neodymium_smelting_3 = "neodymium-smelting-3"
    tech_boron_processing_2 = "boron-processing-2"
    local tech_phosphorus_processing_2 = "phosphorus-processing-2"
    data:extend
    ({
        {
            localised_name = {"technology-name.monazite-processing-1"},
            localised_description = {"technology-description.angels-ore-crushing"},
            type = technology,
            name = tech_monazite_processing_1,
            icon = "__TIMSABA__/graphics/icons/moshine/technology/monazite-processing.png",
            icon_size = 256,
            prerequisites = {planet_discovery_moshine, tech_advanced_ore_refining_5},
            effects =
            {
                {type = unlock_recipe, recipe = monazite_crushed},
                {type = unlock_recipe, recipe = monazite_crushed_sorting}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {electromagnetic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.monazite-processing-2"},
            localised_description = {"technology-description.angels-ore-floatation"},
            type = technology,
            name = tech_monazite_processing_2,
            icon = "__TIMSABA__/graphics/icons/moshine/technology/monazite-processing.png",
            icon_size = 256,
            prerequisites = {cryogenic_science_pack, tech_monazite_processing_1},
            effects =
            {
                {type = unlock_recipe, recipe = monazite_chunks},
                {type = unlock_recipe, recipe = monazite_chunks_sorting}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.monazite-processing-3"},
            localised_description = {"technology-description.angels-ore-leaching"},
            type = technology,
            name = tech_monazite_processing_3,
            icon = "__TIMSABA__/graphics/icons/moshine/technology/monazite-processing.png",
            icon_size = 256,
            prerequisites = {promethium_science_pack, tech_monazite_processing_2},
            effects =
            {
                {type = unlock_recipe, recipe = monazite_crystals},
                {type = unlock_recipe, recipe = monazite_crystals_sorting}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1},
                    {promethium_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.monazite-processing-4"},
            localised_description = {"technology-description.angels-ore-refining"},
            type = technology,
            name = tech_monazite_processing_4,
            icon = "__TIMSABA__/graphics/icons/moshine/technology/monazite-processing.png",
            icon_size = 256,
            prerequisites = {tech_monazite_processing_3},
            effects =
            {
                {type = unlock_recipe, recipe = monazite_purified},
                {type = unlock_recipe, recipe = monazite_purified_sorting}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1},
                    {promethium_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.neodymium-smelting-1"},
            localised_description = {"technology-description.neodymium-smelting-1"},
            type = technology,
            name = tech_neodymium_smelting_1,
            icon = "__TIMSABA__/graphics/icons/moshine/technology/smelting-neodymium-tech.png",
            icon_size = 256,
            prerequisites = {tech_monazite_processing_1},
            effects =
            {
                {type = unlock_recipe, recipe = neodymium_chloride_III},
                {type = unlock_recipe, recipe = neodymium_ingot}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {metallurgic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.neodymium-smelting-2"},
            localised_description = {"technology-description.neodymium-smelting-2"},
            type = technology,
            name = tech_neodymium_smelting_2,
            icon = "__TIMSABA__/graphics/icons/moshine/technology/smelting-neodymium-tech.png",
            icon_size = 256,
            prerequisites = {tech_monazite_processing_2, tech_neodymium_smelting_1},
            effects =
            {
                {type = unlock_recipe, recipe = neodymium_processed},
                {type = unlock_recipe, recipe = neodymium_hydroxide_III},
                {type = unlock_recipe, recipe = neodymium_oxide_III},
                {type = unlock_recipe, recipe = neodymium_ingot_2}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.neodymium-smelting-3"},
            localised_description = {"technology-description.neodymium-smelting-3"},
            type = technology,
            name = tech_neodymium_smelting_3,
            icon = "__TIMSABA__/graphics/icons/moshine/technology/smelting-neodymium-tech.png",
            icon_size = 256,
            prerequisites = {tech_monazite_processing_3, tech_neodymium_smelting_2},
            effects =
            {
                {type = unlock_recipe, recipe = neodymium_pellet},
                {type = unlock_recipe, recipe = neodymium_oxide_III_2}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1},
                    {promethium_science_pack, 1}
                },
                time = 30
            }
        },
        {
            type = technology,
            name = tech_boron_processing_2,
            icons = TIMSABA.functions.create_gas_tech_icon("BBB"),
            prerequisites = {tech_boron_processing, planet_discovery_moshine},
            effects =
            {
                {type = unlock_recipe, recipe = boron_oxide_III},
                {type = unlock_recipe, recipe = boron}
            },
            unit =
            {
                count = 100,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {electromagnetic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            type = technology,
            name = tech_phosphorus_processing_2,
            icons = TIMSABA.functions.create_gas_tech_icon("PPP"),
            prerequisites = {tech_phosphorus_processing, tech_monazite_processing_2, tech_water_treatment_6},
            effects =
            {
                {type = unlock_recipe, recipe = water_orange_waste_purification},
                {type = unlock_recipe, recipe = orthophosphoric_acid},
                {type = unlock_recipe, recipe = orthophosphoric_acid_from_phosphate_ore}
            },
            unit =
            {
                count = 100,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1}
                },
                time = 30
            }
        }
    })
end