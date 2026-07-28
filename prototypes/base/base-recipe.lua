TIMSABA.functions.create_recipes
({
    -- BASE
    {
        name = pistol,
        category = crafting,
        subgroup = data_gun[pistol].subgroup,
        icon = data_gun[pistol].icon,
        order = data_gun[pistol].order,
        enabled = true,
        allow_quality = true,
        energy_requred = 1,
        ingredients =
        {
            {type = item, name = iron_plate, amount = 4},
            {type = item, name = copper_plate, amount = 4}
        },
        results = {{type = item, name = pistol, amount = 1}},
        main_product = pistol
    }
})