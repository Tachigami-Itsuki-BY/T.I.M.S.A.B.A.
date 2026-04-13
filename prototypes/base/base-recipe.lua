local recipe = "recipe"
data:extend
({
    -- BASE
    {
        type = recipe,
        name = pistol,
        category = crafting,
        subgroup = data_gun[pistol].subgroup,
        icon = data_gun[pistol].icon,
        order = data_gun[pistol].order,
        enabled = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = false,
        energy_requred = 1,
        ingredients =
        {
            {type = item, name = iron_plate, amount = 4},
            {type = item, name = copper_plate, amount = 4}
        },
        results = {{type = item, name = pistol, amount = 1}}
    },
    -- ANGELS BIOPROCESSING ANIMALIS
    {
        type = recipe,
        name = factorian_fish,
        category = "angels-bio-refugium-fish",
        subgroup = "angels-bio-fish",
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png", icon_size = 32}, {icon = "__base__/graphics/icons/fish.png", icon_size = 64}},
        order = a,
        enabled = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_requred = 64,
        ingredients =
        {
            {type = item, name = factorian_fish, amount = 2, ignored_by_stats = 2},
            {type = fluid, name = nutrient_pulp, amount = 30},
            {type = fluid, name = water_for_fish, amount = 120}
        },
        results =
        {
            {type = item, name = factorian_fish, amount_min = 2, amount_max = 4, ignored_by_productivity = 2, ignored_by_stats = 2},
            {type = fluid, name = polluted_water_for_fish, amount = 120}
        },
        main_product = factorian_fish
    }
})