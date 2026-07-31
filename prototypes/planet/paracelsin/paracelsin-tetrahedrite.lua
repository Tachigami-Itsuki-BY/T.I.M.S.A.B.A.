if mods [paracelsin_mods] then
    -- tetrahedrite ore / Cu + Fe + Ag + Au + Sb + As
    tetrahedrite_crushed = "tetrahedrite-crushed"
    tetrahedrite_chunks = "tetrahedrite-chunks"
    tetrahedrite_crystals = "tetrahedrite-crystals"
    tetrahedrite_purified = "tetrahedrite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = tetrahedrite_crushed,
            subgroup = is_tetrahedrite,
            icon = "__TIMSABA__/graphics/icons/paracelsin/tetrahedrite-crushed.png",
            icon_size = 32,
            order = b
        },
        {
            name = tetrahedrite_chunks,
            subgroup = is_tetrahedrite,
            icon = "__TIMSABA__/graphics/icons/paracelsin/tetrahedrite-chunks.png",
            icon_size = 32,
            order = c
        },
        {
            name = tetrahedrite_crystals,
            subgroup = is_tetrahedrite,
            icon = "__TIMSABA__/graphics/icons/paracelsin/tetrahedrite-crystals.png",
            icon_size = 32,
            order = d
        },
        {
            name = tetrahedrite_purified,
            subgroup = is_tetrahedrite,
            icon = "__TIMSABA__/graphics/icons/paracelsin/tetrahedrite-purified.png",
            icon_size = 32,
            order = e
        }
    })

    -- RECIPE
    tetrahedrite_crushed_sorting = "tetrahedrite-crushed-sorting"
    tetrahedrite_chunks_sorting = "tetrahedrite-chunks-sorting"
    tetrahedrite_crystals_sorting = "tetrahedrite-crystals-sorting"
    tetrahedrite_purified_sorting = "tetrahedrite-purified-sorting"
    antimony_ore_recipe = "antimony-pure-mix-processing"
    TIMSABA.functions.create_recipes
    ({
        -- CRUSHED
        {
            name = tetrahedrite_crushed,
            category = angels_ore_refining_T1,
            subgroup = is_tetrahedrite,
            icons = THREE_R_I(tetrahedrite_ore, tetrahedrite_crushed, stone_crushed_angels),
            order = b,
            energy_required = 2, -- Tetrahedrite ore -crushing-> Tetrahedrite crushed + Stone crushed
            ingredients = {{type = item, name = tetrahedrite_ore, amount = 2}},
            results =
            {
                {type = item, name = tetrahedrite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = tetrahedrite_crushed
        },
        -- CHUNKS
        {
            name = tetrahedrite_chunks,
            category = angels_ore_refining_T2,
            subgroup = is_tetrahedrite,
            icons = THREE_D_I(tetrahedrite_crushed, nil, water_purified_angels, tetrahedrite_chunks, sulfur, water_red_waste),
            order = c,
            energy_required = 2, -- Tetrahedrite crushed + Purified water -flotation-> Tetrahedrite chunks + S + Phosphoric waste water
            ingredients =
            {
                {type = item, name = tetrahedrite_crushed, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = tetrahedrite_chunks, amount = 4},
                {type = item, name = sulfur, amount = 1, probability = 0.5},
                {type = fluid, name = water_red_waste, amount = 60}
            },
            main_product = tetrahedrite_chunks
        },
        -- CRYSTALS
        {
            name = tetrahedrite_crystals,
            category = angels_ore_refining_T3,
            subgroup = is_tetrahedrite,
            icons = THREE_I(tetrahedrite_chunks, nitric_acid_angels, tetrahedrite_crystals),
            order = d,
            energy_required = 2, -- Tetrahedrite chunks + HNO₃ -leaching-> Tetrahedrite crystals
            ingredients =
            {
                {type = item, name = tetrahedrite_chunks, amount = 4},
                {type = fluid, name = nitric_acid_angels, amount = 15}
            },
            results = {{type = item, name = tetrahedrite_crystals, amount = 4}},
            main_product = tetrahedrite_crystals
        },
        -- PURIFIED
        {
            name = tetrahedrite_purified,
            category = angels_ore_refining_T4,
            subgroup = is_tetrahedrite,
            icons = TWO_I(tetrahedrite_crystals, tetrahedrite_purified),
            order = e,
            energy_required = 2, -- Tetrahedrite crystals -refinery-> Tetrahedrite purified
            ingredients = {{type = item, name = tetrahedrite_crystals, amount = 4}},
            results = {{type = item, name = tetrahedrite_purified, amount = 4}},
            main_product = tetrahedrite_purified
        },
        -- SORTING
        {
            name = tetrahedrite_crushed_sorting,
            category = ore_sorting_6,
            subgroup = is_tetrahedrite,
            icons = RECYCLING_I(recycling_png, tetrahedrite_crushed),
            order = f,
            allow_productivity = true,
            energy_required = 1, -- Tetrahedrite crushed (Sorting) / Cu + Fe + S
            ingredients = {{type = item, name = tetrahedrite_crushed, amount = 4}},
            results =
            {
                {type = item, name = copper_ore, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = copper_ore
        },
        {
            name = tetrahedrite_chunks_sorting,
            category = ore_sorting_6,
            subgroup = is_tetrahedrite,
            icons = RECYCLING_I(recycling_png, tetrahedrite_chunks),
            order = g,
            allow_productivity = true,
            energy_required = 2, -- Tetrahedrite chunks (Sorting) / Cu + Fe + Ag + Au + S
            ingredients = {{type = item, name = tetrahedrite_chunks, amount = 8}},
            results =
            {
                {type = item, name = copper_ore, amount = 4},
                {type = item, name = iron_ore, amount = 2},
                {type = item, name = silver_ore_bob, amount = 1},
                {type = item, name = gold_ore_bob, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = copper_ore
        },
        {
            name = tetrahedrite_crystals_sorting,
            category = ore_sorting_6,
            subgroup = is_tetrahedrite,
            icons = RECYCLING_I(recycling_png, tetrahedrite_crystals),
            order = h,
            allow_productivity = true,
            energy_required = 2, -- Tetrahedrite crystals (Sorting) / Cu + Fe + Ag + Au + Sb + S
            ingredients = {{type = item, name = tetrahedrite_crystals, amount = 8}},
            results =
            {
                {type = item, name = copper_ore, amount = 4},
                {type = item, name = iron_ore, amount = 2},
                {type = item, name = silver_ore_bob, amount = 1},
                {type = item, name = gold_ore_bob, amount = 1},
                {type = item, name = antimony_ore, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = copper_ore
        },
        {
            name = tetrahedrite_purified_sorting,
            category = ore_sorting_6,
            subgroup = is_tetrahedrite,
            icons = RECYCLING_I(recycling_png, tetrahedrite_purified),
            order = i,
            allow_productivity = true,
            energy_required = 2, -- Tetrahedrite purified (Sorting) / Cu + Fe + Ag + Au + Sb + As
            ingredients = {{type = item, name = tetrahedrite_purified, amount = 8}},
            results =
            {
                {type = item, name = copper_ore, amount = 4},
                {type = item, name = iron_ore, amount = 2},
                {type = item, name = silver_ore_bob, amount = 1},
                {type = item, name = gold_ore_bob, amount = 1},
                {type = item, name = antimony_ore, amount = 1},
                {type = item, name = arsenic, amount = 1}
            },
            main_product = copper_ore
        },
        {
            name = antimony_ore_recipe,
            category = ore_sorting_6,
            subgroup = is_tetrahedrite,
            icons = AR_FOUR_I(hybride_catalyst, antimonite_purified, tetrahedrite_purified, antimony_ore),
            order = j,
            allow_productivity = true,
            energy_required = 2,
            ingredients =
            {
                {type = item, name = hybride_catalyst, amount = 1},
                {type = item, name = antimonite_purified, amount = 2},
                {type = item, name = tetrahedrite_purified, amount = 2}
            },
            results = {{type = item, name = antimony_ore, amount = 4}},
            main_product = antimony_ore
        }
    })
end