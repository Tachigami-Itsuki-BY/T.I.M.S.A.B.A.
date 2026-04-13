local technology = "technology"
data:extend
({
    -- STEAM TURBINE
    {
        localised_description = {"technology-description.bob-steam-turbine"},
        type = technology,
        name = steam_turbine_4,
        prerequisites = {steam_turbine_3, space_science_pack},
        icon = "__bobpower__/graphics/icons/technology/steam-turbine.png",
        icon_size = 256,
        effects = {{type = "unlock-recipe", recipe = steam_turbine_4}},
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
    -- CENTRIFUGE
    {
        type = technology,
        name = centrifuge_4,
        icon = "__bobassembly__/graphics/icons/technology/centrifuge.png",
        icon_size = 256,
        prerequisites = {centrifuge_3, space_science_pack},
        effects = {{type = unlock_recipe, recipe = centrifuge_4}},
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
    }
})