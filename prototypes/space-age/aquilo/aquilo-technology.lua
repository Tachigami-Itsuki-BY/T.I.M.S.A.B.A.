planet_discovery_aquilo = "planet-discovery-aquilo"

-- ANTIMONITE
local graphics_antimonite_tech = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/antimonite-processing.png"
tech_antimonite_processing_1 = "antimonite-processing-1"
tech_antimonite_processing_2 = "antimonite-processing-2"
tech_antimonite_processing_3 = "antimonite-processing-3"
tech_antimonite_processing_4 = "antimonite-processing-4"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_antimonite_processing_1},
        localised_description = {"technology-description.angels-ore-crushing"},
        type = technology,
        name = tech_antimonite_processing_1,
        icon = graphics_antimonite_tech,
        icon_size = 256,
        prerequisites = {planet_discovery_aquilo},
        effects =
        {
            {type = unlock_recipe, recipe = antimonite_crushed},
            {type = unlock_recipe, recipe = antimonite_crushed_sorting}
        },
        research_trigger =
        {
            type = craft_item,
            item = antimonite_ore,
            count = 256
        }
    },
    {
        localised_name = {"technology-name." .. tech_antimonite_processing_2},
        localised_description = {"technology-description.angels-ore-floatation"},
        type = technology,
        name = tech_antimonite_processing_2,
        icon = graphics_antimonite_tech,
        icon_size = 256,
        prerequisites = {tech_antimonite_processing_1, cryogenic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = antimonite_chunks},
            {type = unlock_recipe, recipe = antimonite_chunks_sorting}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_antimonite_processing_3},
        localised_description = {"technology-description.angels-ore-leaching"},
        type = technology,
        name = tech_antimonite_processing_3,
        icon = graphics_antimonite_tech,
        icon_size = 256,
        prerequisites = {tech_antimonite_processing_2, promethium_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = antimonite_crystals},
            {type = unlock_recipe, recipe = antimonite_crystals_sorting}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_antimonite_processing_4},
        localised_description = {"technology-description.angels-ore-refining"},
        type = technology,
        name = tech_antimonite_processing_4,
        icon = graphics_antimonite_tech,
        icon_size = 256,
        prerequisites = {tech_antimonite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = antimonite_purified},
            {type = unlock_recipe, recipe = antimonite_purified_sorting}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    }
})

-- ANTIMONY
local graphics_antimony_smelting_tech = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-antimony-tech.png"
tech_antimony_smelting_1 = "antimony-smelting-1"
tech_antimony_smelting_2 = "antimony-smelting-2"
tech_antimony_smelting_3 = "antimony-smelting-3"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_antimony_smelting_1},
        localised_description = {"technology-description." .. tech_antimony_smelting_1},
        type = technology,
        name = tech_antimony_smelting_1,
        icon = graphics_antimony_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_antimonite_processing_1, tech_vulcanus_metallurgic},
        effects =
        {
            {type = unlock_recipe, recipe = antimony_chloride_III},
            {type = unlock_recipe, recipe = antimony_chloride_V_liquid},
            {type = unlock_recipe, recipe = antimony_ingot},
            {type = unlock_recipe, recipe = antimony_powder},
            {type = unlock_recipe, recipe = antimony_molten},
            {type = unlock_recipe, recipe = antimony_plate}
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
                {agricultural_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_antimony_smelting_2},
        localised_description = {"technology-description." .. tech_antimony_smelting_2},
        type = technology,
        name = tech_antimony_smelting_2,
        icon = graphics_antimony_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_antimony_smelting_1, tech_antimonite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = antimony_processed},
            {type = unlock_recipe, recipe = antimony_chloride_V_liquid_2},
            {type = unlock_recipe, recipe = antimony_acid},
            {type = unlock_recipe, recipe = antimony_oxide_III},
            {type = unlock_recipe, recipe = antimony_ingot_2}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_antimony_smelting_3},
        localised_description = {"technology-description." .. tech_antimony_smelting_3},
        type = technology,
        name = tech_antimony_smelting_3,
        icon = graphics_antimony_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_antimony_smelting_2, tech_antimonite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = antimony_pellet},
            {type = unlock_recipe, recipe = antimony_chloride_V_liquid_3},
            {type = unlock_recipe, recipe = hexachloroantimonic_acid},
            {type = unlock_recipe, recipe = antimony_ingot_3}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    }
})

-- GERMANITE
local graphics_germanite_tech = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/germanite-processing.png"
tech_germanite_processing_1 = "germanite-processing-1"
tech_germanite_processing_2 = "germanite-processing-2"
tech_germanite_processing_3 = "germanite-processing-3"
tech_germanite_processing_4 = "germanite-processing-4"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_germanite_processing_1},
        localised_description = {"technology-description.angels-ore-crushing"},
        type = technology,
        name = tech_germanite_processing_1,
        icon = graphics_germanite_tech,
        icon_size = 256,
        prerequisites = {planet_discovery_aquilo},
        effects =
        {
            {type = unlock_recipe, recipe = germanite_crushed},
            {type = unlock_recipe, recipe = germanite_crushed_sorting}
        },
        research_trigger =
        {
            type = craft_item,
            item = germanite_ore,
            count = 256
        }
    },
    {
        localised_name = {"technology-name." .. tech_germanite_processing_2},
        localised_description = {"technology-description.angels-ore-floatation"},
        type = technology,
        name = tech_germanite_processing_2,
        icon = graphics_germanite_tech,
        icon_size = 256,
        prerequisites = {tech_germanite_processing_1, cryogenic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = germanite_chunks},
            {type = unlock_recipe, recipe = germanite_chunks_sorting}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_germanite_processing_3},
        localised_description = {"technology-description.angels-ore-leaching"},
        type = technology,
        name = tech_germanite_processing_3,
        icon = graphics_germanite_tech,
        icon_size = 256,
        prerequisites = {tech_germanite_processing_2, promethium_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = germanite_crystals},
            {type = unlock_recipe, recipe = germanite_crystals_sorting}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_germanite_processing_4},
        localised_description = {"technology-description.angels-ore-refining"},
        type = technology,
        name = tech_germanite_processing_4,
        icon = graphics_germanite_tech,
        icon_size = 256,
        prerequisites = {tech_germanite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = germanite_purified},
            {type = unlock_recipe, recipe = germanite_purified_sorting}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    }
})

-- GERMANIUM
local graphics_germanium_smelting_tech = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-germanium-tech.png"
tech_germanium_smelting_1 = "germanium-smelting-1"
tech_germanium_smelting_2 = "germanium-smelting-2"
tech_germanium_smelting_3 = "germanium-smelting-3"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_germanium_smelting_1},
        localised_description = {"technology-description." .. tech_germanium_smelting_1},
        type = technology,
        name = tech_germanium_smelting_1,
        icon = graphics_germanium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_germanite_processing_1, tech_vulcanus_metallurgic},
        effects =
        {
            {type = unlock_recipe, recipe = potassium_metagermanate_solution},
            {type = unlock_recipe, recipe = germanium_oxide_IV},
            {type = unlock_recipe, recipe = germanium_ingot},
            {type = unlock_recipe, recipe = germanium_powder},
            {type = unlock_recipe, recipe = germanium_molten},
            {type = unlock_recipe, recipe = germanium_plate}
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
        localised_name = {"technology-name." .. tech_germanium_smelting_2},
        localised_description = {"technology-description." .. tech_germanium_smelting_2},
        type = technology,
        name = tech_germanium_smelting_2,
        icon = graphics_germanium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_germanite_processing_2, tech_germanium_smelting_1, cryogenic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = germanium_processed},
            {type = unlock_recipe, recipe = germanium_chloride_IV},
            {type = unlock_recipe, recipe = germanium_oxide_IV_2}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_germanium_smelting_3},
        localised_description = {"technology-description." .. tech_germanium_smelting_3},
        type = technology,
        name = tech_germanium_smelting_3,
        icon = graphics_germanium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_germanite_processing_3, tech_germanium_smelting_2, promethium_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = germanium_pellet},
            {type = unlock_recipe, recipe = sodium_metagermanate_solution},
            {type = unlock_recipe, recipe = sodium_hexachlorogermanate_IV},
            {type = unlock_recipe, recipe = germanium_oxide_IV_3}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    }
})

-- GALIUM
local graphics_galium_smelting_tech = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-galium-tech.png"
tech_galium_smelting_1 = "galium-smelting-1"
tech_galium_smelting_2 = "galium-smelting-2"
tech_galium_smelting_3 = "galium-smelting-3"
data:extend
({
    {
        localised_name = {"technology-name." .. tech_galium_smelting_1},
        localised_description = {"technology-description." .. tech_galium_smelting_1},
        type = technology,
        name = tech_galium_smelting_1,
        icon = graphics_galium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_germanite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = galium_hydroxide_III},
            {type = unlock_recipe, recipe = galium_oxide_III},
            {type = unlock_recipe, recipe = sodium_tetrahydroxogallate_III_solution},
            {type = unlock_recipe, recipe = galium_liquid},
            {type = unlock_recipe, recipe = galium_ingot},
            {type = unlock_recipe, recipe = galium_powder}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_galium_smelting_2},
        localised_description = {"technology-description." .. tech_galium_smelting_2},
        type = technology,
        name = tech_galium_smelting_2,
        icon = graphics_galium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_galium_smelting_1, tech_germanite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = galium_processed},
            {type = unlock_recipe, recipe = galium_chloride_III},
            {type = unlock_recipe, recipe = galium_chloride_III_solution_ether},
            {type = unlock_recipe, recipe = lithium_gallium_hydride_solution_ether},
            {type = unlock_recipe, recipe = galium_hydroxide_III_2}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name." .. tech_galium_smelting_3},
        localised_description = {"technology-description." .. tech_galium_smelting_3},
        type = technology,
        name = tech_galium_smelting_3,
        icon = graphics_galium_smelting_tech,
        icon_size = 256,
        prerequisites = {tech_galium_smelting_2, tech_germanite_processing_4},
        effects =
        {
            {type = unlock_recipe, recipe = galium_pellet},
            {type = unlock_recipe, recipe = sodium_tetrahydroxogallate_III_2_solution}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
})

-- OTHERS
local graphics_aquilo_tech = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/"
local tech_arsenic_processing = "arsenic-processing"
tech_arsenic_synthesis = "arsenic-synthesis"
tech_aquilo_cryogenics = "aquilo-cryogenics"
data:extend
({
    -- ARSENIC
    {
        type = technology,
        name = tech_arsenic_processing,
        icon = graphics_aquilo_tech .. tech_arsenic_processing .. ".png",
        icon_size = 256,
        prerequisites = {tech_antimonite_processing_4, tech_germanite_processing_4},
        effects = {{type = unlock_recipe, recipe = arsenic_powder}},
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_arsenic_synthesis,
        icon = graphics_aquilo_tech .. tech_arsenic_synthesis .. ".png",
        icon_size = 256,
        prerequisites = {tech_antimonite_processing_4, tech_germanite_processing_4},
        effects = {{type = unlock_recipe, recipe = arsenic_recipe}},
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    -- AQUILO
    {
        type = technology,
        name = tech_aquilo_cryogenics,
        icon = graphics_aquilo_tech .. tech_aquilo_cryogenics .. ".png",
        icon_size = 256,
        prerequisites = {tech_arsenic_processing, tech_galium_smelting_1},
        effects =
        {
            {type = unlock_recipe, recipe = galium_arsenide},
            {type = unlock_recipe, recipe = galium_nitride},
            {type = unlock_recipe, recipe = semiconductor_2},
            {type = unlock_recipe, recipe = superconductor_2}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    }
})

table.insert(data_technology[tech_molybdenum_smelting_3].prerequisites, planet_discovery_aquilo)

-- AQUILO
if settings.startup[setting_no_spoilage].value == false then
    tech_aquilo_freezing = "aquilo-freezing"
    data:extend
    ({
        {
            type = technology,
            name = tech_aquilo_freezing,
            icon = graphics_aquilo_tech .. tech_aquilo_freezing .. ".png",
            icon_size = 256,
            prerequisites = {cryogenic_science_pack},
            effects = {},
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
                    {cryogenic_science_pack, 1}
                },
                time = 30
            }
        }
    })
end