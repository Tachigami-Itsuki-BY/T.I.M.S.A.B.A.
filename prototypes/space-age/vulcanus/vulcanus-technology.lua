planet_discovery_vulcanus = "planet-discovery-vulcanus"
tech_vulcanus_metallurgic = "vulcanus-metallurgic"
tech_wolframite_processing_1 = "wolframite-processing-1"
local tech_wolframite_processing_2 = "wolframite-processing-2"
tech_wolframite_processing_3 = "wolframite-processing-3"
tech_wolframite_processing_4 = "wolframite-processing-4"
local tech_niobium_smelting_1 = "niobium-smelting-1"
local tech_niobium_smelting_2 = "niobium-smelting-2"
local tech_niobium_smelting_3 = "niobium-smelting-3"
tech_rhenium_synthesis = "rhenium-synthesis"
tech_niobium_titanium_processing = "niobium-titanium-processing"
tech_niobium_iron_processing = "niobium-iron-processing"
tech_niobium_tungsten_molybdenum_processing = "niobium-tungsten-molybdenum-processing"
data:extend
({
    {
        type = technology,
        name = tech_vulcanus_metallurgic,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/vulcanus-metallurgic.png",
        icon_size = 256,
        prerequisites = {metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = advanced_molten_iron},
            {type = unlock_recipe, recipe = advanced_molten_steel},
            {type = unlock_recipe, recipe = advanced_molten_aluminium},
            {type = unlock_recipe, recipe = advanced_molten_titanium}
        },
        unit =
        {
            count = 3000,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1}
            },
            time = 60
        }
    },
    {
        localised_name = {"technology-name.wolframite-processing-1"},
        localised_description = {"technology-description.angels-ore-crushing"},
        type = technology,
        name = tech_wolframite_processing_1,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/wolframite-processing.png",
        icon_size = 256,
        prerequisites = {planet_discovery_vulcanus, tech_advanced_ore_refining_5},
        effects =
        {
            {type = unlock_recipe, recipe = wolframite_crushed},
            {type = unlock_recipe, recipe = wolframite_crushed_sorting}
        },
        research_trigger =
        {
            type = mine_entity,
            entity = "big-volcanic-rock"
        }
    },
    {
        localised_name = {"technology-name.wolframite-processing-2"},
        localised_description = {"technology-description.angels-ore-floatation"},
        type = technology,
        name = tech_wolframite_processing_2,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/wolframite-processing.png",
        icon_size = 256,
        prerequisites = {metallurgic_science_pack, tech_wolframite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = wolframite_chunks},
            {type = unlock_recipe, recipe = wolframite_chunks_sorting}
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
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.wolframite-processing-3"},
        localised_description = {"technology-description.angels-ore-leaching"},
        type = technology,
        name = tech_wolframite_processing_3,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/wolframite-processing.png",
        icon_size = 256,
        prerequisites = {cryogenic_science_pack, tech_wolframite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = wolframite_crystals},
            {type = unlock_recipe, recipe = wolframite_crystals_sorting}
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
        localised_name = {"technology-name.wolframite-processing-4"},
        localised_description = {"technology-description.angels-ore-refining"},
        type = technology,
        name = tech_wolframite_processing_4,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/wolframite-processing.png",
        icon_size = 256,
        prerequisites = {promethium_science_pack, tech_wolframite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = wolframite_purified},
            {type = unlock_recipe, recipe = wolframite_purified_sorting}
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
        localised_name = {"technology-name.niobium-smelting-1"},
        localised_description = {"technology-description.niobium-smelting-1"},
        type = technology,
        name = tech_niobium_smelting_1,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/casting-niobium-technology.png",
        icon_size = 256,
        prerequisites = {tech_wolframite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_oxide_V},
            {type = unlock_recipe, recipe = niobium_powder}
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
                {space_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.niobium-smelting-2"},
        localised_description = {"technology-description.niobium-smelting-2"},
        type = technology,
        name = tech_niobium_smelting_2,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/casting-niobium-technology.png",
        icon_size = 256,
        prerequisites = {tech_niobium_smelting_1, metallurgic_science_pack, tech_wolframite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_processed},
            {type = unlock_recipe, recipe = potassium_niobate},
            {type = unlock_recipe, recipe = niobium_oxide_V_2}
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
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.niobium-smelting-3"},
        localised_description = {"technology-description.niobium-smelting-3"},
        type = technology,
        name = tech_niobium_smelting_3,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/casting-niobium-technology.png",
        icon_size = 256,
        prerequisites = {tech_niobium_smelting_2, cryogenic_science_pack, tech_wolframite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_pellet},
            {type = unlock_recipe, recipe = heptafluoroniobic_acid},
            {type = unlock_recipe, recipe = niobium_hydroxide_V},
            {type = unlock_recipe, recipe = niobium_oxide_V_3}
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
        type = technology,
        name = tech_rhenium_synthesis,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/technology/rhenium-synthesis.png",
        icon_size = 256,
        prerequisites = {promethium_science_pack, tech_rhenium_smelting_3, tech_molybdenite_processing_4, tech_wolframite_processing_4},
        effects = {{type = unlock_recipe, recipe = rhenium_ore_recipe}},
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
        name = tech_niobium_titanium_processing,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/casting-niobium-titanium-technology.png",
        icon_size = 256,
        prerequisites = {tech_niobium_smelting_1, metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_titanium_molten},
            {type = unlock_recipe, recipe = niobium_titanium_plate},
            {type = unlock_recipe, recipe = niobium_titanium_cable}
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
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_niobium_iron_processing,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/casting-niobium-iron-technology.png",
        icon_size = 256,
        prerequisites = {tech_niobium_smelting_1, metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_iron_molten},
            {type = unlock_recipe, recipe = niobium_iron_plate},
            {type = unlock_recipe, recipe = niobium_iron_bearing_ball},
            {type = unlock_recipe, recipe = niobium_iron_bearing}
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
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_niobium_tungsten_molybdenum_processing,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/technology/niobium-tungsten-molybdenum-processing.png",
        icon_size = 256,
        prerequisites = {tech_niobium_smelting_1, metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = niobium_tungsten_molybdenum_powder_mixture},
            {type = unlock_recipe, recipe = niobium_tungsten_molybdenum_plate},
            {type = unlock_recipe, recipe = niobium_tungsten_molybdenum_gear_wheel}
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
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    }
})

table.insert(data_technology[tech_advanced_ore_refining_6].prerequisites, tech_niobium_titanium_processing)
table.insert(data_technology[tech_advanced_ore_refining_6].prerequisites, tech_niobium_iron_processing)
table.insert(data_technology[tech_advanced_ore_refining_6].prerequisites, tech_niobium_tungsten_molybdenum_processing)

table.insert(data_technology[tech_bio_refugium_biter_6].prerequisites, tech_niobium_iron_processing)
table.insert(data_technology[tech_bio_refugium_biter_6].prerequisites, tech_niobium_tungsten_molybdenum_processing)