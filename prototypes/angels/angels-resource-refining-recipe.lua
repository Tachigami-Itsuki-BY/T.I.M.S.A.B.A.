-- ANGELS RESOURCE REFINING
crushed_stone_sorting_1 = "crushed-stone-sorting-1"
crushed_stone_sorting_2 = "crushed-stone-sorting-2"
crushed_stone_sorting_3 = "crushed-stone-sorting-3"
manganese_ore_recipe = "ore-crushed-mix5-processing"
chromium_ore_recipe = "ore-crystal-mix7-processing"
molybdenum_ore_recipe = "molybdenum-ore-pure-mix-processing"
TIMSABA.functions.create_recipes
({
    {
        name = crushed_stone_sorting_1,
        category = angels_ore_sorting_1,
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, stone_crushed_angels, number_1),
        order = f_a,
        allow_productivity = true,
        energy_required = 1, -- (Na₂,K₂Ca)(Fe₂,Mg,Al₂)[SiO₄] --> Ca + 2Fe + Mg + SiO₂
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results =
        {
            {type = item, name = calcium, amount_min = 0, amount_max = 4, probability = 0.5},
            {type = item, name = iron_ore, amount_min = 0, amount_max = 8, probability = 0.5},
            {type = item, name = magnesium_ore, amount_min = 0, amount_max = 4, probability = 0.5},
            {type = item, name = sand_angels, amount_min = 0, amount_max = 4, probability = 0.5}
        },
        main_product = calcium
    },
    {
        name = crushed_stone_sorting_2,
        category = angels_ore_sorting_3,
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, stone_crushed_angels, number_2),
        order = f_b,
        allow_productivity = true,
        energy_required = 1, -- (Na₂,K₂Ca)(Fe₂,Mg,Al₂)[SiO₄] --> 2Na + Ca + 2Fe + Mg + 2Al + SiO₂
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results =
        {
            {type = item, name = sodium_angels, amount_min = 0, amount_max = 8, probability = 0.5},
            {type = item, name = calcium, amount_min = 0, amount_max = 4, probability = 0.5},
            {type = item, name = iron_ore, amount_min = 0, amount_max = 8, probability = 0.5},
            {type = item, name = magnesium_ore, amount_min = 0, amount_max = 4, probability = 0.5},
            {type = item, name = aluminium_ore_bob, amount_min = 0, amount_max = 8, probability = 0.5},
            {type = item, name = sand_angels, amount_min = 0, amount_max = 4, probability = 0.5}
        },
        main_product = sodium_angels
    },
    {
        name = crushed_stone_sorting_3,
        category = angels_ore_sorting_4,
        subgroup = is_processing_crafting,
        icons = RECYCLING_I(recycling_png, stone_crushed_angels, number_3),
        order = f_c,
        allow_productivity = true,
        energy_required = 1, -- (Na₂,K₂Ca)(Fe₂,Mg,Al₂)[SiO₄] --> 2Na + 2K + Ca + 2Fe + Mg + 2Al + SiO₂
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results =
        {
            {type = item, name = sodium_angels, amount_min = 0, amount_max = 8, probability = 0.5},
            {type = item, name = potassium, amount_min = 0, amount_max = 8, probability = 0.5},
            {type = item, name = calcium, amount_min = 0, amount_max = 4, probability = 0.5},
            {type = item, name = iron_ore, amount_min = 0, amount_max = 8, probability = 0.5},
            {type = item, name = magnesium_ore, amount_min = 0, amount_max = 4, probability = 0.5},
            {type = item, name = aluminium_ore_bob, amount_min = 0, amount_max = 8, probability = 0.5},
            {type = item, name = sand_angels, amount_min = 0, amount_max = 4, probability = 0.5}
        },
        main_product = sodium_angels
    },
    {
        name = stone,
        category = angels_ore_sorting_1,
        subgroup = is_processing_crafting,
        icons = TWO_I(slag_angels, stone),
        order = d,
        allow_productivity = true,
        energy_required = 1,
        ingredients = {{type = item, name = slag_angels, amount = 4}},
        results = {{type = item, name = stone, amount = 8}},
        main_product = stone
    },
    {
        name = manganese_ore_recipe,
        category = angels_ore_sorting_2,
        subgroup = is_ore_sorting_advanced_1,
        icons = AR_FOUR_I(mineral_catalyst, crushed_ferrous, crushed_rubyte, manganese_ore_angels),
        order = a_e,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = mineral_catalyst, amount = 1},
            {type = item, name = crushed_ferrous, amount = 2},
            {type = item, name = crushed_rubyte, amount = 2}
        },
        results = {{type = item, name = manganese_ore_angels, amount = 4}},
        main_product = manganese_ore_angels
    },
    {
        name = chromium_ore_recipe,
        category = angels_ore_sorting_4,
        subgroup = is_ore_sorting_advanced_3,
        icons = AR_FOUR_I(hybride_catalyst, crystal_ferrous, crystal_rubyte, chromium_ore_angels),
        order = a_g,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 1},
            {type = item, name = crystal_ferrous, amount = 2},
            {type = item, name = crystal_rubyte, amount = 2}
        },
        results = {{type = item, name = chromium_ore_angels, amount = 4}},
        main_product = chromium_ore_angels
    },
    {
        name = molybdenum_ore_recipe,
        category = ore_sorting_6,
        subgroup = is_ore_sorting_advanced_3,
        icons = AR_FOUR_I(hybride_catalyst, molybdenite_purified, powellite_purified, molybdenum_ore),
        order = a_j,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 1},
            {type = item, name = molybdenite_purified, amount = 2},
            {type = item, name = powellite_purified, amount = 2}
        },
        results = {{type = item, name = molybdenum_ore, amount = 4}},
        main_product = molybdenum_ore
    }
})