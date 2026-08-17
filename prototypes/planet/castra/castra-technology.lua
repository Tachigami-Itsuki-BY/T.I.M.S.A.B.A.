if mods[castra_mods] then
    planet_discovery_castra = "planet-discovery-castra"
    tech_millerite_processing_1 = "millerite-processing-1"
    local tech_millerite_processing_2 = "millerite-processing-2"
    tech_millerite_processing_3 = "millerite-processing-3"
    tech_millerite_processing_4 = "millerite-processing-4"
    tech_vanadium_synthesis = "vanadium-synthesis"
    data:extend
    ({
        {
            localised_name = {"technology-name.millerite-processing-1"},
            localised_description = {"technology-description.angels-ore-crushing"},
            type = technology,
            name = tech_millerite_processing_1,
            icon = "__TIMSABA__/graphics/icons/castra/technology/millerite-processing.png",
            icon_size = 256,
            prerequisites = {planet_discovery_castra},
            effects =
            {
                {type = unlock_recipe, recipe = millerite_crushed},
                {type = unlock_recipe, recipe = millerite_crushed_sorting}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {military_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.millerite-processing-2"},
            localised_description = {"technology-description.angels-ore-floatation"},
            type = technology,
            name = tech_millerite_processing_2,
            icon = "__TIMSABA__/graphics/icons/castra/technology/millerite-processing.png",
            icon_size = 256,
            prerequisites = {tech_millerite_processing_1, battlefield_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = millerite_chunks},
                {type = unlock_recipe, recipe = millerite_chunks_sorting}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {military_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.millerite-processing-3"},
            localised_description = {"technology-description.angels-ore-leaching"},
            type = technology,
            name = tech_millerite_processing_3,
            icon = "__TIMSABA__/graphics/icons/castra/technology/millerite-processing.png",
            icon_size = 256,
            prerequisites = {tech_millerite_processing_2, cryogenic_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = millerite_crystals},
                {type = unlock_recipe, recipe = millerite_crystals_sorting}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {military_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.millerite-processing-4"},
            localised_description = {"technology-description.angels-ore-refining"},
            type = technology,
            name = tech_millerite_processing_4,
            icon = "__TIMSABA__/graphics/icons/castra/technology/millerite-processing.png",
            icon_size = 256,
            prerequisites = {tech_millerite_processing_3, promethium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = millerite_purified},
                {type = unlock_recipe, recipe = millerite_purified_sorting}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {military_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            type = technology,
            name = tech_vanadium_synthesis,
            icon = "__TIMSABA__/graphics/icons/castra/technology/vanadium-synthesis.png",
            icon_size = 256,
            prerequisites = {promethium_science_pack, tech_germanite_processing_4, tech_millerite_processing_4},
            effects = {{type = unlock_recipe, recipe = vanadium_ore_recipe}},
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {military_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {agricultural_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {cryogenic_science_pack, 1}
                },
                time = 30
            }
        }
    })
end