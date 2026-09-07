if mods[bellicos_aegis_mods] then
    discovery_aegis_outer = "discovery-aegis-outer"
    tech_space_logistic = "space-beryllium-logistic"
    local tech_beryllium_smelting_1 = "beryllium-smelting-1"
    local tech_beryllium_smelting_2 = "beryllium-smelting-2"
    local tech_beryllium_smelting_3 = "beryllium-smelting-3"
    local tech_beryllium_bronze_smelting_1 = "beryllium-bronze-smelting-1"
    local tech_beryllium_bronze_smelting_2 = "beryllium-bronze-smelting-2"
    tech_beryllium_bronze_processing = "beryllium-bronze-processing"
    data:extend
    ({
        {
            localised_name = {"technology-name.beryllium-smelting-1"},
            localised_description = {"technology-description.beryllium-smelting-1"},
            type = technology,
            name = tech_beryllium_smelting_1,
            icon = "__TIMSABA__/graphics/icons/bellicos-and-aegis/beryllium/technology/smelting-beryllium-tech.png",
            icon_size = 256,
            prerequisites = {discovery_aegis_outer},
            effects =
            {
                {type = unlock_recipe, recipe = beryllium_oxide},
                {type = unlock_recipe, recipe = beryllium_chloride_gas},
                {type = unlock_recipe, recipe = beryllium_ingot},
                {type = unlock_recipe, recipe = beryllium_molten},
                {type = unlock_recipe, recipe = beryllium_plate}
            },
            research_trigger =
            {
                type = craft_item,
                item = beryllium_ore,
                count = 256
            }
        },
        {
            localised_name = {"technology-name.beryllium-smelting-2"},
            localised_description = {"technology-description.beryllium-smelting-2"},
            type = technology,
            name = tech_beryllium_smelting_2,
            icon = "__TIMSABA__/graphics/icons/bellicos-and-aegis/beryllium/technology/smelting-beryllium-tech.png",
            icon_size = 256,
            prerequisites = {tech_beryllium_smelting_1, lightweight_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = beryllium_processed},
                {type = unlock_recipe, recipe = beryllium_sulfate_solution},
                {type = unlock_recipe, recipe = beryllium_hydroxide},
                {type = unlock_recipe, recipe = beryllium_oxide_2}
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
                    {space_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.beryllium-smelting-3"},
            localised_description = {"technology-description.beryllium-smelting-3"},
            type = technology,
            name = tech_beryllium_smelting_3,
            icon = "__TIMSABA__/graphics/icons/bellicos-and-aegis/beryllium/technology/smelting-beryllium-tech.png",
            icon_size = 256,
            prerequisites = {tech_beryllium_smelting_2, pulsar_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = beryllium_pellet},
                {type = unlock_recipe, recipe = ammonium_fluoroberyllate},
                {type = unlock_recipe, recipe = beryllium_fluoride},
                {type = unlock_recipe, recipe = beryllium_ingot_2},
                {type = unlock_recipe, recipe = magnesium_ingot_2},
                {type = unlock_recipe, recipe = magnesium_ingot_3},
                {type = unlock_recipe, recipe = potassium_sulfate_solution},
                {type = unlock_recipe, recipe = ammonium_fluoride_solution},
                {type = unlock_recipe, recipe = ammonium_hydrosulfate},
                {type = unlock_recipe, recipe = ammonium_hydrofluoride},
                {type = unlock_recipe, recipe = sodium_sulfate_solution_2}
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
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.beryllium-bronze-smelting-1"},
            localised_description = {"technology-description.beryllium-bronze-smelting-1"},
            type = technology,
            name = tech_beryllium_bronze_smelting_1,
            icon = "__TIMSABA__/graphics/icons/bellicos-and-aegis/beryllium/technology/smelting-beryllium-bronze-tech.png",
            icon_size = 256,
            prerequisites = {tech_beryllium_smelting_1},
            effects =
            {
                {type = unlock_recipe, recipe = beryllium_bronze_molten},
                {type = unlock_recipe, recipe = beryllium_bronze_plate},
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
                    {space_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.beryllium-bronze-smelting-2"},
            localised_description = {"technology-description.beryllium-bronze-smelting-2"},
            type = technology,
            name = tech_beryllium_bronze_smelting_2,
            icon = "__TIMSABA__/graphics/icons/bellicos-and-aegis/beryllium/technology/smelting-beryllium-bronze-tech.png",
            icon_size = 256,
            prerequisites = {tech_beryllium_bronze_smelting_1, tech_beryllium_smelting_2},
            effects = {{type = unlock_recipe, recipe = beryllium_bronze_molten_2}},
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
                    {space_science_pack, 1}
                },
                time = 30
            }
        },
        {
            type = technology,
            name = tech_beryllium_bronze_processing,
            icon = "__TIMSABA__/graphics/icons/bellicos-and-aegis/beryllium/technology/beryllium-bronze-processing.png",
            icon_size = 256,
            prerequisites = {tech_beryllium_bronze_smelting_1},
            effects =
            {
                {type = unlock_recipe, recipe = beryllium_bronze_gear_wheel},
                {type = unlock_recipe, recipe = beryllium_bronze_bearing_ball},
                {type = unlock_recipe, recipe = beryllium_bronze_bearing}
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
                    {space_science_pack, 1}
                },
                time = 30
            }
        }
    })
end