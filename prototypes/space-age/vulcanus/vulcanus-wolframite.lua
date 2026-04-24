local recipe = "recipe"
-- WOLFRAMITE
wolframite_ore_sorting = "wolframite-ore-sorting"
data:extend
({
    {
        type = recipe,
        name = wolframite_ore_sorting,
        category = angels_ore_sorting_5,
        subgroup = is_vulcanus_tungsten,
        icons = RECYCLING_I(recycling_png, wolframite_ore),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = wolframite_ore, amount = 8}},
        results =
        {
            {type = item, name = tungsten_ore_bob, amount = 4},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = manganese_ore_angels, amount = 1}
        },
        main_product = tungsten_ore_bob
    }
})