-- Wolframite ore / W + Fe + Mn + Mg + Nb + Re
wolframite_crushed = "wolframite-crushed"
wolframite_chunks = "wolframite-chunks"
wolframite_crystals = "wolframite-crystals"
wolframite_purified = "wolframite-purified"
TIMSABA.functions.create_items
({
    {
        localised_description = {"item-description.wolframite-crushed"},
        name = wolframite_crushed,
        subgroup = is_vulcanus_wolframite,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/wolframite-crushed.png",
        icon_size = 32,
        order = b
    },
    {
        localised_description = {"item-description.wolframite-chunks"},
        name = wolframite_chunks,
        subgroup = is_vulcanus_wolframite,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/wolframite-chunks.png",
        icon_size = 32,
        order = c
    },
    {
        localised_description = {"item-description.wolframite-crystals"},
        name = wolframite_crystals,
        subgroup = is_vulcanus_wolframite,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/wolframite-crystals.png",
        icon_size = 32,
        order = d
    },
    {
        localised_description = {"item-description.wolframite-purified"},
        name = wolframite_purified,
        subgroup = is_vulcanus_wolframite,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/wolframite-purified.png",
        icon_size = 32,
        order = e
    }
})

wolframite_crushed_sorting = "wolframite-crushed-sorting"
wolframite_chunks_sorting = "wolframite-chunks-sorting"
wolframite_crystals_sorting = "wolframite-crystals-sorting"
wolframite_purified_sorting = "wolframite-purified-sorting"
rhenium_ore_recipe = "rhenium-ore-pure-mix-processing"
TIMSABA.functions.create_recipes
({
    -- CRUSHED
    {
        name = wolframite_crushed,
        category = angels_ore_refining_T1,
        subgroup = is_vulcanus_wolframite,
        icons = THREE_R_I(wolframite_ore, wolframite_crushed, stone_crushed_angels),
        order = b,
        energy_required = 2, -- Wolframite ore -crushing-> Wolframite crushed + Stone crushed
        ingredients = {{type = item, name = wolframite_ore, amount = 2}},
        results =
        {
            {type = item, name = wolframite_crushed, amount = 2},
            {type = item, name = stone_crushed_angels, amount = 1}
        },
        main_product = wolframite_crushed
    },
    -- CHUNKS
    {
        name = wolframite_chunks,
        category = angels_ore_refining_T2,
        subgroup = is_vulcanus_wolframite,
        icons = THREE_D_I(wolframite_crushed, nil, water_purified_angels, wolframite_chunks, calcium_silicate, water_yellow_waste),
        order = c,
        energy_required = 2, -- Wolframite crushed + Purified water -flotation-> Wolframite chunks + Calcium silicate + Sulfuric waste water
        ingredients =
        {
            {type = item, name = wolframite_crushed, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = wolframite_chunks, amount = 4},
            {type = item, name = calcium_silicate, amount = 1, probability = 0.5},
            {type = fluid, name = water_yellow_waste, amount = 60}
        },
        main_product = wolframite_chunks
    },
    -- CRYSTALS
    {
        name = wolframite_crystals,
        category = angels_ore_refining_T3,
        subgroup = is_vulcanus_wolframite,
        icons = THREE_I(wolframite_chunks, sulfuric_acid_angels, wolframite_crystals),
        order = d,
        energy_required = 2, -- Wolframite chunks + H₂SO₄ -leaching-> Wolframite crystals
        ingredients =
        {
            {type = item, name = wolframite_chunks, amount = 4},
            {type = fluid, name = sulfuric_acid_angels, amount = 15}
        },
        results = {{type = item, name = wolframite_crystals, amount = 4}},
        main_product = wolframite_crystals
    },
    -- PURIFIED
    {
        name = wolframite_purified,
        category = angels_ore_refining_T4,
        subgroup = is_vulcanus_wolframite,
        icons = TWO_I(wolframite_crystals, wolframite_purified),
        order = e,
        energy_required = 2, -- Wolframite crystals -refinery-> Wolframite purified
        ingredients = {{type = item, name = wolframite_crystals, amount = 4}},
        results = {{type = item, name = wolframite_purified, amount = 4}},
        main_product = wolframite_purified
    },
    -- SORTING
    {
        name = wolframite_crushed_sorting,
        category = ore_sorting_6,
        subgroup = is_vulcanus_wolframite,
        icons = RECYCLING_I(recycling_png, wolframite_crushed),
        order = f,
        allow_productivity = true,
        energy_required = 1, -- Wolframite crushed (Sorting) / W + Fe + Slag
        ingredients = {{type = item, name = wolframite_crushed, amount = 4}},
        results =
        {
            {type = item, name = tungsten_ore_bob, amount = 2},
            {type = item, name = niobium_ore, amount = 1},
            {type = item, name = slag_angels, amount = 1}
        },
        main_product = tungsten_ore_bob
    },
    {
        name = wolframite_chunks_sorting,
        category = ore_sorting_6,
        subgroup = is_vulcanus_wolframite,
        icons = RECYCLING_I(recycling_png, wolframite_chunks),
        order = g,
        allow_productivity = true,
        energy_required = 2, -- Wolframite chunks (Sorting) / W + Fe + Mn + Mg + Slag
        ingredients = {{type = item, name = wolframite_chunks, amount = 8}},
        results =
        {
            {type = item, name = tungsten_ore_bob, amount = 4},
            {type = item, name = niobium_ore, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = manganese_ore_angels, amount = 1},
            {type = item, name = slag_angels, amount = 1}
        },
        main_product = tungsten_ore_bob
    },
    {
        name = wolframite_crystals_sorting,
        category = ore_sorting_6,
        subgroup = is_vulcanus_wolframite,
        icons = RECYCLING_I(recycling_png, wolframite_crystals),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Wolframite crystals (Sorting) / W + Fe + Mn + Mg + Nb + Slag
        ingredients = {{type = item, name = wolframite_crystals, amount = 8}},
        results =
        {
            {type = item, name = tungsten_ore_bob, amount = 4},
            {type = item, name = niobium_ore, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = manganese_ore_angels, amount = 1},
            {type = item, name = magnesium_ore, amount = 1},
            {type = item, name = slag_angels, amount = 1}
        },
        main_product = tungsten_ore_bob
    },
    {
        name = wolframite_purified_sorting,
        category = ore_sorting_6,
        subgroup = is_vulcanus_wolframite,
        icons = RECYCLING_I(recycling_png, wolframite_purified),
        order = i,
        allow_productivity = true,
        energy_required = 2, -- Wolframite purified (Sorting) / W + Fe + Mn + Mg + Nb + Re
        ingredients = {{type = item, name = wolframite_purified, amount = 8}},
        results =
        {
            {type = item, name = tungsten_ore_bob, amount = 4},
            {type = item, name = niobium_ore, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = manganese_ore_angels, amount = 1},
            {type = item, name = magnesium_ore, amount = 1},
            {type = item, name = rhenium_ore, amount = 1}
        },
        main_product = tungsten_ore_bob
    },
    -- SYNTHESIS
    {
        name = rhenium_ore_recipe,
        category = ore_sorting_6,
        subgroup = is_vulcanus_wolframite,
        icons = AR_FOUR_I(hybride_catalyst, molybdenite_purified, wolframite_purified, rhenium_ore),
        order = j,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 1},
            {type = item, name = molybdenite_purified, amount = 2},
            {type = item, name = wolframite_purified, amount = 2}
        },
        results = {{type = item, name = rhenium_ore, amount = 4}}
    }
})