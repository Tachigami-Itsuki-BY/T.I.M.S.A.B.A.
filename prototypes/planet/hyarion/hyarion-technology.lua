if mods[hyarion_mods] then
    tech_selenium_processing = "selenium-processing"
    data:extend
    ({
        {
            type = technology,
            name = tech_selenium_processing,
            icon = "__TIMSABA__/graphics/icons/hyarion/technology/selenium-processing.png",
            icon_size = 256,
            prerequisites = {tech_molybdenite_processing_4},
            effects = {{type = unlock_recipe, recipe = selenium_powder}},
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