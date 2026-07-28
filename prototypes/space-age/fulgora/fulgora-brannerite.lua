-- Brannerite ore / Ho + U + Th + Fe + Ti + Ca
brannerite_ore = "brannerite-ore"
brannerite_crushed = "brannerite-crushed"
brannerite_chunks = "brannerite-chunks"
brannerite_crystals = "brannerite-crystals"
brannerite_purified = "brannerite-purified"
TIMSABA.functions.create_items
({
    {
        localised_description = {"item-description.brannerite-ore"},
        name = brannerite_ore,
        subgroup = is_brannerite,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-ore.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-ore-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-ore-2.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-ore-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        localised_description = {"item-description.brannerite-crushed"},
        name = brannerite_crushed,
        subgroup = is_brannerite,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-crushed.png",
        icon_size = 32,
        order = b
    },
    {
        localised_description = {"item-description.brannerite-chunks"},
        name = brannerite_chunks,
        subgroup = is_brannerite,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-chunks.png",
        icon_size = 32,
        order = c
    },
    {
        localised_description = {"item-description.brannerite-crystals"},
        name = brannerite_crystals,
        subgroup = is_brannerite,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-crystals.png",
        icon_size = 32,
        order = d
    },
    {
        localised_description = {"item-description.brannerite-purified"},
        name = brannerite_purified,
        subgroup = is_brannerite,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-purified.png",
        icon_size = 32,
        order = e
    }
})

brannerite_crushed_sorting = "brannerite-crushed-sorting"
brannerite_chunks_sorting = "brannerite-chunks-sorting"
brannerite_crystals_sorting = "brannerite-crystals-sorting"
brannerite_purified_sorting = "brannerite-purified-sorting"
holmium_ore_recipe = "holmium-ore-pure-mix-processing"
TIMSABA.functions.create_recipes
({
    -- CRUSHED
    {
        name = brannerite_crushed,
        category = angels_ore_refining_T1,
        subgroup = is_brannerite,
        icons = THREE_R_I(brannerite_ore, brannerite_crushed, stone_crushed_angels),
        order = b,
        energy_required = 2, -- Brannerite ore -crushing-> Brannerite crushed + Stone crushed
        ingredients = {{type = item, name = brannerite_ore, amount = 2}},
        results =
        {
            {type = item, name = brannerite_crushed, amount = 2},
            {type = item, name = stone_crushed_angels, amount = 1}
        },
        main_product = brannerite_crushed
    },
    -- CHUNKS
    {
        name = brannerite_chunks,
        category = angels_ore_refining_T2,
        subgroup = is_brannerite,
        icons = THREE_D_I(brannerite_crushed, nil, water_purified_angels, brannerite_chunks, slag_angels, water_greenyellow_waste),
        order = c,
        energy_required = 2, -- Brannerite crushed + Purified water -flotation-> Brannerite chunks + Calcium silicate + Fluoric waste water
        ingredients =
        {
            {type = item, name = brannerite_crushed, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = brannerite_chunks, amount = 4},
            {type = item, name = calcium_silicate, amount = 1, probability = 0.5},
            {type = fluid, name = water_greenyellow_waste, amount = 60}
        },
        main_product = brannerite_chunks
    },
    -- CRYSTALS
    {
        name = brannerite_crystals,
        category = angels_ore_refining_T3,
        subgroup = is_brannerite,
        icons = THREE_I(brannerite_chunks, hydrofluoric_acid_angels, brannerite_crystals),
        order = d,
        energy_required = 2, -- Brannerite chunks + HF(aq) -leaching-> Brannerite crystals
        ingredients =
        {
            {type = item, name = brannerite_chunks, amount = 4},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 15}
        },
        results = {{type = item, name = brannerite_crystals, amount = 4}},
        main_product = brannerite_crystals
    },
    -- PURIFIED
    {
        name = brannerite_purified,
        category = angels_ore_refining_T4,
        subgroup = is_brannerite,
        icons = TWO_I(brannerite_crystals, brannerite_purified),
        order = e,
        energy_required = 2, -- Brannerite crystals -refinery-> Brannerite purified
        ingredients = {{type = item, name = brannerite_crystals, amount = 4}},
        results = {{type = item, name = brannerite_purified, amount = 4}},
        main_product = brannerite_purified
    },
    -- SORTING
    {
        name = brannerite_crushed_sorting,
        category = ore_sorting_6,
        subgroup = is_brannerite,
        icons = RECYCLING_I(recycling_png, brannerite_crushed),
        order = f,
        allow_productivity = true,
        energy_required = 1, -- Brannerite crushed (Sorting) / Ho + U + Slag
        ingredients = {{type = item, name = brannerite_crushed, amount = 4}},
        results =
        {
            {type = item, name = holmium_ore, amount = 2},
            {type = item, name = calcium, amount = 1},
            {type = item, name = slag_angels, amount = 1}
        },
        main_product = holmium_ore
    },
    {
        name = brannerite_chunks_sorting,
        category = ore_sorting_6,
        subgroup = is_brannerite,
        icons = RECYCLING_I(recycling_png, brannerite_chunks),
        order = g,
        allow_productivity = true,
        energy_required = 2, -- Brannerite chunks (Sorting) / Ho + U + Th + Fe + Slag
        ingredients = {{type = item, name = brannerite_chunks, amount = 8}},
        results =
        {
            {type = item, name = holmium_ore, amount = 4},
            {type = item, name = calcium, amount = 2},
            {type = item, name = uranium_ore, amount = 1},
            {type = item, name = thorium_ore_bob, amount = 1},
            {type = item, name = slag_angels, amount = 1}
        },
        main_product = holmium_ore
    },
    {
        name = brannerite_crystals_sorting,
        category = ore_sorting_6,
        subgroup = is_brannerite,
        icons = RECYCLING_I(recycling_png, brannerite_crystals),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Brannerite crystals (Sorting) / Ho + U + Th + Fe + Ti + Slag
        ingredients = {{type = item, name = brannerite_crystals, amount = 8}},
        results =
        {
            {type = item, name = holmium_ore, amount = 4},
            {type = item, name = calcium, amount = 2},
            {type = item, name = uranium_ore, amount = 1},
            {type = item, name = thorium_ore_bob, amount = 1},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = slag_angels, amount = 1}
        },
        main_product = holmium_ore
    },
    {
        name = brannerite_purified_sorting,
        category = ore_sorting_6,
        subgroup = is_brannerite,
        icons = RECYCLING_I(recycling_png, brannerite_purified),
        order = i,
        allow_productivity = true,
        energy_required = 2, -- Brannerite purified (Sorting) / Ho + U + Th + Fe + Ti + Ca
        ingredients = {{type = item, name = brannerite_purified, amount = 8}},
        results =
        {
            {type = item, name = holmium_ore, amount = 4},
            {type = item, name = calcium, amount = 2},
            {type = item, name = uranium_ore, amount = 1},
            {type = item, name = thorium_ore_bob, amount = 1},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = titanium_ore_bob, amount = 1}
        },
        main_product = holmium_ore
    },
    {
        name = holmium_ore_recipe,
        category = ore_sorting_6,
        subgroup = is_brannerite,
        icons = AR_FOUR_I(hybride_catalyst, brannerite_purified, powellite_purified, holmium_ore),
        order = j,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 1},
            {type = item, name = brannerite_purified, amount = 2},
            {type = item, name = powellite_purified, amount = 2}
        },
        results = {{type = item, name = holmium_ore, amount = 4}},
        main_product = holmium_ore
    }
})