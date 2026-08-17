if mods[vesta_mods] then
    tech_deuterium = "s1_dueterium"
    tech_gas_manipulation_science_pack = "s1_gas_manipulation_science_pack"
    tech_iridium_smelting_1 = "iridium-smelting-1"
    tech_iridium_smelting_2 = "iridium-smelting-2"
    tech_iridium_smelting_3 = "iridium-smelting-3"
    data:extend
    ({
        {
            localised_name = {"technology-name.iridium-smelting-1"},
            localised_description = {"technology-description.iridium-smelting-1"},
            type = technology,
            name = tech_iridium_smelting_1,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/technology/smelting-iridium-tech.png",
            icon_size = 256,
            prerequisites = {tech_deuterium},
            effects =
            {
                {type = unlock_recipe, recipe = iridium_ore},
                {type = unlock_recipe, recipe = sodium_hexachloroiridate_IV},
                {type = unlock_recipe, recipe = ammonium_hexachloroiridate_IV},
                {type = unlock_recipe, recipe = iridium_powder},
                {type = unlock_recipe, recipe = iridium_plate_mods},
                {type = unlock_recipe, recipe = electrolyzer_vesta},
                {type = unlock_recipe, recipe = ammonium_chloride}
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
            localised_name = {"technology-name.iridium-smelting-2"},
            localised_description = {"technology-description.iridium-smelting-2"},
            type = technology,
            name = tech_iridium_smelting_2,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/technology/smelting-iridium-tech.png",
            icon_size = 256,
            prerequisites = {tech_iridium_smelting_1, tech_gas_manipulation_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = iridium_processed},
                {type = unlock_recipe, recipe = sodium_iridate_IV},
                {type = unlock_recipe, recipe = sodium_hexachloroiridate_IV_2},
                {type = unlock_recipe, recipe = sodium_peroxide}
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
            localised_name = {"technology-name.iridium-smelting-3"},
            localised_description = {"technology-description.iridium-smelting-3"},
            type = technology,
            name = tech_iridium_smelting_3,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/technology/smelting-iridium-tech.png",
            icon_size = 256,
            prerequisites = {tech_iridium_smelting_2, promethium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = iridium_pellet},
                {type = unlock_recipe, recipe = iridium_fluoride_VI},
                {type = unlock_recipe, recipe = iridium_hydroxide_IV},
                {type = unlock_recipe, recipe = hexachloroiridic_acid},
                {type = unlock_recipe, recipe = iridium_powder_2}
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
                    {cryogenic_science_pack, 1},
                    {promethium_science_pack, 1}
                },
                time = 30
            }
        }
    })
end