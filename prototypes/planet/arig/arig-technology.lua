if mods [arig_mods] then
    advanced_sand_sifting = "planetaris-advanced-sand-sifting"
    data:extend
    ({
        {
            type = technology,
            name = pure_sand_arig,
            icons = TIMSABA.functions.create_gas_tech_icon("SaSaSa"),
            prerequisites = {advanced_sand_sifting},
            effects =
            {
                {type = unlock_recipe, recipe = sand_arig},
                {type = unlock_recipe, recipe = pure_sand_arig}
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
                    {compression_science_pack, 1}
                },
                time = 30
            }
        }
    })

    --[[data:extend
    ({
        {
            type = technology,
            name = ,
            icon = "__TIMSABA__/graphics/icons/moshine/technology/.png",
            icon_size = 256,
            prerequisites = {},
            effects = {{type = unlock_recipe, recipe = }},
            unit =
            {
                count = 200,
                ingredients = {{, }},
                time = 30
            }
        }
    })]]
end