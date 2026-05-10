planet_discovery_fulgora = "planet-discovery-fulgora"
recycling = "recycling"
tech_brannerite_processing_1 = "brannerite-processing-1"
local brannerite_processing_2 = "brannerite-processing-2"
local brannerite_processing_3 = "brannerite-processing-3"
local brannerite_processing_4 = "brannerite-processing-4"
local calcium_synthesis = "calcium-synthesis"
tech_holmium_processing = "holmium-processing"
tech_holmium_smelting_1 = "holmium-smelting-1"
local holmium_smelting_2 = "holmium-smelting-2"
local holmium_smelting_3 = "holmium-smelting-3"
tech_holmium_synthesis = "holmium-synthesis"
data:extend
({
    {
        localised_name = {"technology-name.brannerite-processing-1"},
        type = technology,
        name = tech_brannerite_processing_1,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/brannerite-processing.png",
        icon_size = 256,
        prerequisites = {recycling},
        effects =
        {
            {type = unlock_recipe, recipe = brannerite_crushed},
            {type = unlock_recipe, recipe = brannerite_crushed_sorting}
        },
        research_trigger =
        {
            type = craft_item,
            item = brannerite_ore,
            count = 256
        }
        --[[unit =
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
        }]]
    },
    {
        localised_name = {"technology-name.brannerite-processing-2"},
        type = technology,
        name = brannerite_processing_2,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/brannerite-processing.png",
        icon_size = 256,
        prerequisites = {electromagnetic_science_pack, tech_brannerite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = brannerite_chunks},
            {type = unlock_recipe, recipe = brannerite_chunks_sorting}
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
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.brannerite-processing-3"},
        type = technology,
        name = brannerite_processing_3,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/brannerite-processing.png",
        icon_size = 256,
        prerequisites = {cryogenic_science_pack, brannerite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = brannerite_crystals},
            {type = unlock_recipe, recipe = brannerite_crystals_sorting}
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
        localised_name = {"technology-name.brannerite-processing-4"},
        type = technology,
        name = brannerite_processing_4,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/brannerite-processing.png",
        icon_size = 256,
        prerequisites = {promethium_science_pack, brannerite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = brannerite_purified},
            {type = unlock_recipe, recipe = brannerite_purified_sorting}
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
        type = technology,
        name = calcium_synthesis,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/calcium-synthesis.png",
        icon_size = 256,
        prerequisites = {tech_brannerite_processing_1, tech_powellite_processing_1},
        effects = {{type = unlock_recipe, recipe = calcium_recipe}},
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
        localised_name = {"technology-name.holmium-smelting-1"},
        type = technology,
        name = tech_holmium_smelting_1,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/smelting-holmium-tech.png",
        icon_size = 256,
        prerequisites = {tech_holmium_processing},
        effects =
        {
            {type = unlock_recipe, recipe = holmium_roll},
            {type = unlock_recipe, recipe = holmium_plate_2}
        },
        research_trigger =
        {
            type = craft_item,
            item = holmium_plate,
            count = 256
        }
    },
    {
        localised_name = {"technology-name.holmium-smelting-2"},
        type = technology,
        name = holmium_smelting_2,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/smelting-holmium-tech.png",
        icon_size = 256,
        prerequisites = {tech_holmium_smelting_1, electromagnetic_science_pack, brannerite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = holmium_processed},
            {type = unlock_recipe, recipe = holmium_nitrate_III_solution},
            {type = unlock_recipe, recipe = holmium_oxide_III},
            {type = unlock_recipe, recipe = holmium_fluoride_III_2},
            {type = unlock_recipe, recipe = holmium_roll_2}
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
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.holmium-smelting-3"},
        type = technology,
        name = holmium_smelting_3,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/smelting-holmium-tech.png",
        icon_size = 256,
        prerequisites = {holmium_smelting_2, cryogenic_science_pack, tech_vulcanus_metallurgic, brannerite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = holmium_fluoride_III_3},
            {type = unlock_recipe, recipe = molten_holmium},
            {type = unlock_recipe, recipe = casting_holmium}
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
        type = technology,
        name = tech_holmium_synthesis,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/holmium-synthesis.png",
        icon_size = 256,
        prerequisites = {promethium_science_pack, brannerite_processing_4, holmium_smelting_3, tech_powellite_processing_4},
        effects = {{type = unlock_recipe, recipe = holmium_ore_recipe}},
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

--[[
data:extend
({
    {
        type = technology,
        name = ,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/technology/.png",
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
})
]]