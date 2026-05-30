planet_discovery_aquilo = "planet-discovery-aquilo"
local tech_antimonite_prcoessing_1 = "antimonite-processing-1"
local tech_antimonite_prcoessing_2 = "antimonite-processing-2"
local tech_antimonite_prcoessing_3 = "antimonite-processing-3"
local tech_antimonite_prcoessing_4 = "antimonite-processing-4"
tech_antimony_smelting_1 = "antimony-smelting-1"
local tech_antimony_smelting_2 = "antimony-smelting-2"
local tech_antimony_smelting_3 = "antimony-smelting-3"
local tech_germanite_prcoessing_1 = "germanite-processing-1"
local tech_germanite_prcoessing_2 = "germanite-processing-2"
local tech_germanite_prcoessing_3 = "germanite-processing-3"
local tech_germanite_prcoessing_4 = "germanite-processing-4"
tech_germanium_smelting_1 = "germanium-smelting-1"
local tech_germanium_smelting_2 = "germanium-smelting-2"
local tech_germanium_smelting_3 = "germanium-smelting-3"
tech_galium_smelting_1 = "galium-smelting-1"
local tech_galium_smelting_2 = "galium-smelting-2"
local tech_galium_smelting_3 = "galium-smelting-3"
local tech_arsenic_processing = "arsenic-processing"
tech_arsenic_synthesis = "arsenic-synthesis"
local tech_aquilo_cryogenics = "aquilo-cryogenics"
data:extend
({
    -- ANTIMONITE
    {
        localised_name = {"technology-name.antimonite-processing-1"},
        localised_description = {"technology-description.antimonite-processing-1"},
        type = technology,
        name = tech_antimonite_prcoessing_1,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/antimonite-processing.png",
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
        --[[unit =
        {
            count = ,
            ingredients = {{, }},
            time = 
        }]]
    },
    {
        localised_name = {"technology-name.antimonite-processing-2"},
        localised_description = {"technology-description.antimonite-processing-2"},
        type = technology,
        name = tech_antimonite_prcoessing_2,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/antimonite-processing.png",
        icon_size = 256,
        prerequisites = {tech_antimonite_prcoessing_1, cryogenic_science_pack},
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
                {electromagnetic_science_pack, 1},
                {agricultural_science_pack, 1},
                {metallurgic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.antimonite-processing-3"},
        localised_description = {"technology-description.antimonite-processing-3"},
        type = technology,
        name = tech_antimonite_prcoessing_3,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/antimonite-processing.png",
        icon_size = 256,
        prerequisites = {tech_antimonite_prcoessing_2, promethium_science_pack},
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
        localised_name = {"technology-name.antimonite-processing-4"},
        localised_description = {"technology-description.antimonite-processing-4"},
        type = technology,
        name = tech_antimonite_prcoessing_4, -- ???
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/antimonite-processing.png",
        icon_size = 256,
        prerequisites = {tech_antimonite_prcoessing_3},
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
                {electromagnetic_science_pack, 1},
                {agricultural_science_pack, 1},
                {metallurgic_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 30
        }
    },
    -- ANTIMONY
    {
        localised_name = {"technology-name.antimony-smelting-1"},
        localised_description = {"technology-description.antimony-smelting-1"},
        type = technology,
        name = tech_antimony_smelting_1,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-antimony-tech.png",
        icon_size = 256,
        prerequisites = {tech_antimonite_prcoessing_1, tech_vulcanus_metallurgic},
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.antimony-smelting-2"},
        localised_description = {"technology-description.antimony-smelting-2"},
        type = technology,
        name = tech_antimony_smelting_2,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-antimony-tech.png",
        icon_size = 256,
        prerequisites = {tech_antimony_smelting_1, tech_antimonite_prcoessing_2},
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.antimony-smelting-3"},
        localised_description = {"technology-description.antimony-smelting-3"},
        type = technology,
        name = tech_antimony_smelting_3,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-antimony-tech.png",
        icon_size = 256,
        prerequisites = {tech_antimony_smelting_2, tech_antimonite_prcoessing_3},
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 30
        }
    },
    -- GERMANITE
    {
        localised_name = {"technology-name.germanite-processing-1"},
        localised_description = {"technology-description.germanite-processing-1"},
        type = technology,
        name = tech_germanite_prcoessing_1,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/germanite-processing.png",
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
        --[[unit =
        {
            count = ,
            ingredients = {{, }},
            time = 
        }]]
    },
    {
        localised_name = {"technology-name.germanite-processing-2"},
        localised_description = {"technology-description.germanite-processing-2"},
        type = technology,
        name = tech_germanite_prcoessing_2,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/germanite-processing.png",
        icon_size = 256,
        prerequisites = {tech_germanite_prcoessing_1, cryogenic_science_pack},
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
                {electromagnetic_science_pack, 1},
                {agricultural_science_pack, 1},
                {metallurgic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.germanite-processing-3"},
        localised_description = {"technology-description.germanite-processing-3"},
        type = technology,
        name = tech_germanite_prcoessing_3,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/germanite-processing.png",
        icon_size = 256,
        prerequisites = {tech_germanite_prcoessing_2, promethium_science_pack},
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
        localised_name = {"technology-name.germanite-processing-4"},
        localised_description = {"technology-description.germanite-processing-4"},
        type = technology,
        name = tech_germanite_prcoessing_4, -- ???
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/germanite-processing.png",
        icon_size = 256,
        prerequisites = {tech_germanite_prcoessing_3},
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
                {electromagnetic_science_pack, 1},
                {agricultural_science_pack, 1},
                {metallurgic_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 30
        }
    },
    -- GERMANIUM
    {
        localised_name = {"technology-name.germanium-smelting-1"},
        localised_description = {"technology-description.germanium-smelting-1"},
        type = technology,
        name = tech_germanium_smelting_1,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-germanium-tech.png",
        icon_size = 256,
        prerequisites = {tech_germanite_prcoessing_1, tech_vulcanus_metallurgic},
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.germanium-smelting-2"},
        localised_description = {"technology-description.germanium-smelting-2"},
        type = technology,
        name = tech_germanium_smelting_2,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-germanium-tech.png",
        icon_size = 256,
        prerequisites = {tech_germanite_prcoessing_2, tech_germanium_smelting_1, cryogenic_science_pack},
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.germanium-smelting-3"},
        localised_description = {"technology-description.germanium-smelting-3"},
        type = technology,
        name = tech_germanium_smelting_3,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-germanium-tech.png",
        icon_size = 256,
        prerequisites = {tech_germanite_prcoessing_3, tech_germanium_smelting_2, promethium_science_pack},
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 30
        }
    },
    -- GALIUM
    {
        type = technology,
        name = tech_galium_smelting_1,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-galium-tech.png",
        icon_size = 256,
        prerequisites = {tech_germanite_prcoessing_2},
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_galium_smelting_2,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-galium-tech.png",
        icon_size = 256,
        prerequisites = {tech_galium_smelting_1, tech_germanite_prcoessing_3},
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_galium_smelting_3,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/smelting-galium-tech.png",
        icon_size = 256,
        prerequisites = {tech_galium_smelting_2, tech_germanite_prcoessing_4},
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 30
        }
    },
    -- VANADIUM
    -- ARSENIC
    {
        type = technology,
        name = tech_arsenic_processing,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/arsenic-processing.png",
        icon_size = 256,
        prerequisites = {tech_antimonite_prcoessing_4, tech_germanite_prcoessing_4},
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_arsenic_synthesis,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/arsenic-synthesis.png",
        icon_size = 256,
        prerequisites = {tech_antimonite_prcoessing_4, tech_germanite_prcoessing_4},
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 30
        }
    },
    -- AQUILO
    {
        type = technology,
        name = tech_aquilo_cryogenics,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/aquilo-cryogenics.png",
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
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 30
        }
    }
})

table.insert(data_technology[tech_molybdenum_smelting_3].prerequisites, planet_discovery_aquilo)

--[[data:extend
({
    {
        type = technology,
        name = ,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/technology/.png",
        icon_size = 256,
        prerequisites = {},
        effects = {{type = unlock_recipe, recipe = }},
        unit =
        {
            count = ,
            ingredients = {{, }},
            time = 
        }
    }
})]]

-- AQUILO CRYOGENIC CASTING 