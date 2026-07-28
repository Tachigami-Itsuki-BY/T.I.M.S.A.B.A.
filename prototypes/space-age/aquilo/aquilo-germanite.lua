-- Germanite Ore / Ge + Cu + Fe + Ga + V + As
germanite_ore = "germanite-ore"
germanite_crushed = "germanite-crushed"
germanite_chunks = "germanite-chunks"
germanite_crystals = "germanite-crystals"
germanite_purified = "germanite-purified"
TIMSABA.functions.create_items
({
    {
        localised_description = {"item-description.germanite-ore"},
        name = germanite_ore,
        subgroup = is_germanite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-ore.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-ore-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-ore-2.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-ore-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        localised_description = {"item-description.germanite-crushed"},
        name = germanite_crushed,
        subgroup = is_germanite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-crushed.png",
        icon_size = 32,
        order = b
    },
    {
        localised_description = {"item-description.germanite-chunks"},
        name = germanite_chunks,
        subgroup = is_germanite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-chunks.png",
        icon_size = 32,
        order = c
    },
    {
        localised_description = {"item-description.germanite-crystals"},
        name = germanite_crystals,
        subgroup = is_germanite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-crystals.png",
        icon_size = 32,
        order = d
    },
    {
        localised_description = {"item-description.germanite-purified"},
        name = germanite_purified,
        subgroup = is_germanite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-purified.png",
        icon_size = 32,
        order = e
    }
})

germanite_crushed_sorting = "germanite-crushed-sorting"
germanite_chunks_sorting = "germanite-chunks-sorting"
germanite_crystals_sorting = "germanite-crystals-sorting"
germanite_purified_sorting = "germanite-purified-sorting"
TIMSABA.functions.create_recipes
({
    -- CRUSHED
    {
        name = germanite_crushed,
        category = angels_ore_refining_T1,
        subgroup = is_germanite,
        icons = THREE_R_I(germanite_ore, germanite_crushed, stone_crushed_angels),
        order = b,
        energy_required = 2, -- Germanite ore -crushing-> Germanite crushed + Stone crushed
        ingredients = {{type = item, name = germanite_ore, amount = 2}},
        results =
        {
            {type = item, name = germanite_crushed, amount = 2},
            {type = item, name = stone_crushed_angels, amount = 1}
        },
        main_product = germanite_crushed
    },
    -- CHUNKS
    {
        name = germanite_chunks,
        category = angels_ore_refining_T2,
        subgroup = is_germanite,
        icons = THREE_D_I(germanite_crushed, nil, water_purified_angels, germanite_chunks, sulfur, water_yellow_waste),
        order = c,
        energy_required = 2, -- Germanite crushed + Purified water -flotation-> Germanite chunks + S + Sulfuric waste water
        ingredients =
        {
            {type = item, name = germanite_crushed, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = germanite_chunks, amount = 4},
            {type = item, name = sulfur, amount = 1, probability = 0.5},
            {type = fluid, name = water_yellow_waste, amount = 60}
        },
        main_product = germanite_chunks
    },
    -- CRYSTALS
    {
        name = germanite_crystals,
        category = angels_ore_refining_T3,
        subgroup = is_germanite,
        icons = THREE_I(germanite_chunks, sulfuric_acid_angels, germanite_crystals),
        order = d,
        energy_required = 2, -- Germanite chunks + H₂SO₄ -leaching-> Germanite crystals
        ingredients =
        {
            {type = item, name = germanite_chunks, amount = 4},
            {type = fluid, name = sulfuric_acid_angels, amount = 15}
        },
        results = {{type = item, name = germanite_crystals, amount = 4}},
        main_product = germanite_crystals
    },
    -- PURIFIED
    {
        name = germanite_purified,
        category = angels_ore_refining_T4,
        subgroup = is_germanite,
        icons = TWO_I(germanite_crystals, germanite_purified),
        order = e,
        energy_required = 2, -- Germanite crystals -refinery-> Germanite purified
        ingredients = {{type = item, name = germanite_crystals, amount = 4}},
        results = {{type = item, name = germanite_purified, amount = 4}},
        main_product = germanite_purified
    },
    -- SORTING
    {
        name = germanite_crushed_sorting,
        category = ore_sorting_6,
        subgroup = is_germanite,
        icons = RECYCLING_I(recycling_png, germanite_crushed),
        order = f,
        allow_productivity = true,
        energy_required = 1, -- Germanite crushed (Sorting) / Ge + Cu + S
        ingredients = {{type = item, name = germanite_crushed, amount = 4}},
        results =
        {
            {type = item, name = germanium_ore, amount = 2},
            {type = item, name = copper_ore, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = germanium_ore
    },
    {
        name = germanite_chunks_sorting,
        category = ore_sorting_6,
        subgroup = is_germanite,
        icons = RECYCLING_I(recycling_png, germanite_chunks),
        order = g,
        allow_productivity = true,
        energy_required = 2, -- Germanite chunks (Sorting) / Ge + Cu + Fe + Ga + S
        ingredients = {{type = item, name = germanite_chunks, amount = 8}},
        results =
        {
            {type = item, name = germanium_ore, amount = 4},
            {type = item, name = copper_ore, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = galium_ore, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = germanium_ore
    },
    {
        name = germanite_crystals_sorting,
        category = ore_sorting_6,
        subgroup = is_germanite,
        icons = RECYCLING_I(recycling_png, germanite_crystals),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Germanite crystals (Sorting) / Ge + Cu + Fe + Ga + V + S
        ingredients = {{type = item, name = germanite_crystals, amount = 8}},
        results =
        {
            {type = item, name = germanium_ore, amount = 4},
            {type = item, name = copper_ore, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = galium_ore, amount = 1},
            {type = item, name = vanadium_ore, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = germanium_ore
    },
    {
        name = germanite_purified_sorting,
        category = ore_sorting_6,
        subgroup = is_germanite,
        icons = RECYCLING_I(recycling_png, germanite_purified),
        order = i,
        allow_productivity = true,
        energy_required = 2, -- Germanite purified (Sorting) / Ge + Cu + Fe + Ga + V + As
        ingredients = {{type = item, name = germanite_purified, amount = 8}},
        results =
        {
            {type = item, name = germanium_ore, amount = 4},
            {type = item, name = copper_ore, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = galium_ore, amount = 1},
            {type = item, name = vanadium_ore, amount = 1},
            {type = item, name = arsenic, amount = 1}
        },
        main_product = germanium_ore
    }
})