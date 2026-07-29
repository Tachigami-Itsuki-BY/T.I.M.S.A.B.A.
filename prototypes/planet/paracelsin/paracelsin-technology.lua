if mods [paracelsin_mods] then
    planet_discovery_paracelsin = "planet-discovery-paracelsin"
    tech_sphalerite_processing_1 = "sphalerite-processing-1"
    local tech_sphalerite_processing_2 = "sphalerite-processing-2"
    local tech_sphalerite_processing_3 = "sphalerite-processing-3"
    local tech_sphalerite_processing_4 = "sphalerite-processing-4"
    tech_tetrahedrite_processing_1 = "tetrahedrite-processing-1"
    local tech_tetrahedrite_processing_2 = "tetrahedrite-processing-2"
    local tech_tetrahedrite_processing_3 = "tetrahedrite-processing-3"
    local tech_tetrahedrite_processing_4 = "tetrahedrite-processing-4"
    tech_germanium_synthesis = "germanium-synthesis"
    tech_antimony_synthesis = "antimony-synthesis"
    data:extend
    ({
        {
            localised_name = {"technology-name.sphalerite-processing-1"},
            localised_description = {"technology-description.angels-ore-crushing"},
            type = technology,
            name = tech_sphalerite_processing_1,
            icon = "__TIMSABA__/graphics/icons/paracelsin/technology/sphalerite-processing.png",
            icon_size = 256,
            prerequisites = {planet_discovery_paracelsin},
            effects =
            {
                {type = unlock_recipe, recipe = sphalerite_crushed},
                {type = unlock_recipe, recipe = sphalerite_crushed_sorting}
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
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.sphalerite-processing-2"},
            localised_description = {"technology-description.angels-ore-floatation"},
            type = technology,
            name = tech_sphalerite_processing_2,
            icon = "__TIMSABA__/graphics/icons/paracelsin/technology/sphalerite-processing.png",
            icon_size = 256,
            prerequisites = {tech_sphalerite_processing_1, galvanization_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = sphalerite_chunks},
                {type = unlock_recipe, recipe = sphalerite_chunks_sorting}
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
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.sphalerite-processing-3"},
            localised_description = {"technology-description.angels-ore-leaching"},
            type = technology,
            name = tech_sphalerite_processing_3,
            icon = "__TIMSABA__/graphics/icons/paracelsin/technology/sphalerite-processing.png",
            icon_size = 256,
            prerequisites = {tech_sphalerite_processing_2, promethium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = sphalerite_crystals},
                {type = unlock_recipe, recipe = sphalerite_crystals_sorting}
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
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1},
                    {promethium_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.sphalerite-processing-4"},
            localised_description = {"technology-description.angels-ore-refining"},
            type = technology,
            name = tech_sphalerite_processing_4,
            icon = "__TIMSABA__/graphics/icons/paracelsin/technology/sphalerite-processing.png",
            icon_size = 256,
            prerequisites = {tech_sphalerite_processing_3},
            effects =
            {
                {type = unlock_recipe, recipe = sphalerite_purified},
                {type = unlock_recipe, recipe = sphalerite_purified_sorting}
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
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1},
                    {promethium_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.tetrahedrite-processing-1"},
            localised_description = {"technology-description.angels-ore-crushing"},
            type = technology,
            name = tech_tetrahedrite_processing_1,
            icon = "__TIMSABA__/graphics/icons/paracelsin/technology/tetrahedrite-processing.png",
            icon_size = 256,
            prerequisites = {planet_discovery_paracelsin},
            effects =
            {
                {type = unlock_recipe, recipe = tetrahedrite_crushed},
                {type = unlock_recipe, recipe = tetrahedrite_crushed_sorting}
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
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.tetrahedrite-processing-2"},
            localised_description = {"technology-description.angels-ore-floatation"},
            type = technology,
            name = tech_tetrahedrite_processing_2,
            icon = "__TIMSABA__/graphics/icons/paracelsin/technology/tetrahedrite-processing.png",
            icon_size = 256,
            prerequisites = {tech_tetrahedrite_processing_1, galvanization_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = tetrahedrite_chunks},
                {type = unlock_recipe, recipe = tetrahedrite_chunks_sorting}
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
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.tetrahedrite-processing-3"},
            localised_description = {"technology-description.angels-ore-leaching"},
            type = technology,
            name = tech_tetrahedrite_processing_3,
            icon = "__TIMSABA__/graphics/icons/paracelsin/technology/tetrahedrite-processing.png",
            icon_size = 256,
            prerequisites = {tech_tetrahedrite_processing_2, promethium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = tetrahedrite_crystals},
                {type = unlock_recipe, recipe = tetrahedrite_crystals_sorting}
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
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1},
                    {promethium_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.tetrahedrite-processing-4"},
            localised_description = {"technology-description.angels-ore-refining"},
            type = technology,
            name = tech_tetrahedrite_processing_4,
            icon = "__TIMSABA__/graphics/icons/paracelsin/technology/tetrahedrite-processing.png",
            icon_size = 256,
            prerequisites = {tech_tetrahedrite_processing_3},
            effects =
            {
                {type = unlock_recipe, recipe = tetrahedrite_purified},
                {type = unlock_recipe, recipe = tetrahedrite_purified_sorting}
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
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1},
                    {promethium_science_pack, 1}
                },
                time = 30
            }
        },
        {
            type = technology,
            name = tech_germanium_synthesis,
            icon = "__TIMSABA__/graphics/icons/paracelsin/technology/germanium-synthesis.png",
            icon_size = 256,
            prerequisites = {promethium_science_pack, tech_germanium_smelting_3, tech_germanite_processing_4, tech_sphalerite_processing_4},
            effects = {{type = unlock_recipe, recipe = germanium_ore_recipe}},
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
                    {agricultural_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {cryogenic_science_pack, 1},
                    {promethium_science_pack, 1}
                },
                time = 30
            }
        },
        {
            type = technology,
            name = tech_antimony_synthesis,
            icon = "__TIMSABA__/graphics/icons/paracelsin/technology/antimony-synthesis.png",
            icon_size = 256,
            prerequisites = {promethium_science_pack, tech_antimony_smelting_3, tech_antimonite_processing_4, tech_tetrahedrite_processing_4},
            effects = {{type = unlock_recipe, recipe = antimony_ore_recipe}},
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
                    {agricultural_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {cryogenic_science_pack, 1},
                    {promethium_science_pack, 1}
                },
                time = 30
            }
        }
    })
end