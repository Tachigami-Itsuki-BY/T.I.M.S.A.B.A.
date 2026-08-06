if mods[castra_mods] then
    -- Millerite ore / Ni + Co + Fe + Cu + Cr + V
    millerite_crushed = "millerite-crushed"
    millerite_chunks = "millerite-chunks"
    millerite_crystals = "millerite-crystals"
    millerite_purified = "millerite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = millerite_crushed,
            subgroup = is_millerite,
            icon = "__TIMSABA__/graphics/icons/castra/millerite-crushed.png",
            icon_size = 32,
            order = b
        },
        {
            name = millerite_chunks,
            subgroup = is_millerite,
            icon = "__TIMSABA__/graphics/icons/castra/millerite-chunks.png",
            icon_size = 32,
            order = c
        },
        {
            name = millerite_crystals,
            subgroup = is_millerite,
            icon = "__TIMSABA__/graphics/icons/castra/millerite-crystals.png",
            icon_size = 32,
            order = d
        },
        {
            name = millerite_purified,
            subgroup = is_millerite,
            icon = "__TIMSABA__/graphics/icons/castra/millerite-purified.png",
            icon_size = 32,
            order = e
        }
    })

    -- RECIPE
    millerite_crushed_sorting = "millerite-crushed-sorting"
    millerite_chunks_sorting = "millerite-chunks-sorting"
    millerite_crystals_sorting = "millerite-crystals-sorting"
    millerite_purified_sorting = "millerite-purified-sorting"
    vanadium_ore_recipe = "vanadium-ore-pure-mix-processing"
    TIMSABA.functions.create_recipes
    ({
        -- CRUSHED
        {
            name = millerite_crushed,
            category = angels_ore_refining_T1,
            subgroup = is_millerite,
            icons = THREE_R_I(millerite_ore, millerite_crushed, stone_crushed_angels),
            order = b,
            energy_required = 2, -- Millerite ore -crushing-> Millerite crushed + Stone crushed
            ingredients = {{type = item, name = millerite_ore, amount = 2}},
            results =
            {
                {type = item, name = millerite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = millerite_crushed
        },
        -- CHUNKS
        {
            name = millerite_chunks,
            category = angels_ore_refining_T2,
            subgroup = is_millerite,
            icons = THREE_D_I(millerite_crushed, nil, water_purified_angels, millerite_chunks, sulfur, water_yellow_waste),
            order = c,
            energy_required = 2, -- Millerite crushed + Purified water -flotation-> Millerite chunks + S + Sulfuric waste water
            ingredients =
            {
                {type = item, name = millerite_crushed, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = millerite_chunks, amount = 4},
                {type = item, name = sulfur, amount = 1, probability = 0.5},
                {type = fluid, name = water_yellow_waste, amount = 60}
            },
            main_product = millerite_chunks
        },
        -- CRYSTALS
        {
            name = millerite_crystals,
            category = angels_ore_refining_T3,
            subgroup = is_millerite,
            icons = THREE_I(millerite_chunks, sulfuric_acid_angels, millerite_crystals),
            order = d,
            energy_required = 2, -- Millerite chunks + H₂SO₄ -leaching-> Millerite crystals
            ingredients =
            {
                {type = item, name = millerite_chunks, amount = 4},
                {type = fluid, name = sulfuric_acid_angels, amount = 15}
            },
            results = {{type = item, name = millerite_crystals, amount = 4}},
            main_product = millerite_crystals
        },
        -- PURIFIED
        {
            name = millerite_purified,
            category = angels_ore_refining_T4,
            subgroup = is_millerite,
            icons = TWO_I(millerite_crystals, millerite_purified),
            order = e,
            energy_required = 2, -- Millerite crystals -refinery-> Millerite purified
            ingredients = {{type = item, name = millerite_crystals, amount = 4}},
            results = {{type = item, name = millerite_purified, amount = 4}},
            main_product = millerite_purified
        },
        -- SORTING
        {
            name = millerite_crushed_sorting,
            category = ore_sorting_6,
            subgroup = is_millerite,
            icons = RECYCLING_I(recycling_png, millerite_crushed),
            order = f,
            allow_productivity = true,
            energy_required = 1, -- Millerite crushed (Sorting) / Ni + Co + S
            ingredients = {{type = item, name = millerite_crushed, amount = 4}},
            results =
            {
                {type = item, name = nickel_ore_bob, amount = 2},
                {type = item, name = cobalt_ore_bob, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = nickel_ore_bob
        },
        {
            name = millerite_chunks_sorting,
            category = ore_sorting_6,
            subgroup = is_millerite,
            icons = RECYCLING_I(recycling_png, millerite_chunks),
            order = g,
            allow_productivity = true,
            energy_required = 2, -- Millerite chunks (Sorting) / Ni + Co + Fe + Cu + S
            ingredients = {{type = item, name = millerite_chunks, amount = 8}},
            results =
            {
                {type = item, name = nickel_ore_bob, amount = 4},
                {type = item, name = cobalt_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = nickel_ore_bob
        },
        {
            name = millerite_crystals_sorting,
            category = ore_sorting_6,
            subgroup = is_millerite,
            icons = RECYCLING_I(recycling_png, millerite_crystals),
            order = h,
            allow_productivity = true,
            energy_required = 2, -- Millerite crystals (Sorting) / Ni + Co + Fe + Cu + Cr + S
            ingredients = {{type = item, name = millerite_crystals, amount = 8}},
            results =
            {
                {type = item, name = nickel_ore_bob, amount = 4},
                {type = item, name = cobalt_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = chromium_ore_angels, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = nickel_ore_bob
        },
        {
            name = millerite_purified_sorting,
            category = ore_sorting_6,
            subgroup = is_millerite,
            icons = RECYCLING_I(recycling_png, millerite_purified),
            order = i,
            allow_productivity = true,
            energy_required = 2, -- Millerite purified (Sorting) / Ni + Co + Fe + Cu + Cr + V
            ingredients = {{type = item, name = millerite_purified, amount = 8}},
            results =
            {
                {type = item, name = nickel_ore_bob, amount = 4},
                {type = item, name = cobalt_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = chromium_ore_angels, amount = 1},
                {type = item, name = vanadium_ore, amount = 1}
            },
            main_product = nickel_ore_bob
        },
        {
            name = vanadium_ore_recipe,
            category = ore_sorting_6,
            subgroup = is_millerite,
            icons = AR_FOUR_I(hybride_catalyst, germanite_purified, millerite_purified, vanadium_ore),
            order = j,
            allow_productivity = true,
            energy_required = 2,
            ingredients =
            {
                {type = item, name = hybride_catalyst, amount = 1},
                {type = item, name = germanite_purified, amount = 2},
                {type = item, name = millerite_purified, amount = 2}
            },
            results = {{type = item, name = vanadium_ore, amount = 4}},
            main_product = vanadium_ore
        }
    })
end