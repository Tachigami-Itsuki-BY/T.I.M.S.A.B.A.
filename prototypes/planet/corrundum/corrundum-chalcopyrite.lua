if mods[corrundum_mods] then
    -- Chalcopyrite ore / Fe + Cu + Mn + Ag + Au + Se
    chalcopyrite_crushed = "chalcopyrite-crushed"
    chalcopyrite_chunks = "chalcopyrite-chunks"
    chalcopyrite_crystals = "chalcopyrite-crystals"
    chalcopyrite_purified = "chalcopyrite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = chalcopyrite_crushed,
            subgroup = is_chalcopyrite,
            icon = "__TIMSABA__/graphics/icons/corrundum/chalcopyrite-crushed.png",
            icon_size = 32,
            order = b
        },
        {
            name = chalcopyrite_chunks,
            subgroup = is_chalcopyrite,
            icon = "__TIMSABA__/graphics/icons/corrundum/chalcopyrite-chunks.png",
            icon_size = 32,
            order = c
        },
        {
            name = chalcopyrite_crystals,
            subgroup = is_chalcopyrite,
            icon = "__TIMSABA__/graphics/icons/corrundum/chalcopyrite-crystals.png",
            icon_size = 32,
            order = d
        },
        {
            name = chalcopyrite_purified,
            subgroup = is_chalcopyrite,
            icon = "__TIMSABA__/graphics/icons/corrundum/chalcopyrite-purified.png",
            icon_size = 32,
            order = e
        }
    })

    -- RECIPE
    chalcopyrite_crushed_sorting = "chalcopyrite-crushed-sorting"
    chalcopyrite_chunks_sorting = "chalcopyrite-chunks-sorting"
    chalcopyrite_crystals_sorting = "chalcopyrite-crystals-sorting"
    chalcopyrite_purified_sorting = "chalcopyrite-purified-sorting"
    selenium_recipe = "selenium-pure-mix-processing"
    TIMSABA.functions.create_recipes
    ({
        -- CRUSHED
        {
            name = chalcopyrite_crushed,
            category = angels_ore_refining_T1,
            subgroup = is_chalcopyrite,
            icons = THREE_R_I(chalcopyrite_ore, chalcopyrite_crushed, stone_crushed_angels),
            order = b,
            energy_required = 2, -- Chalcopyrite ore -crushing-> Chalcopyrite crushed + Stone crushed
            ingredients = {{type = item, name = chalcopyrite_ore, amount = 2}},
            results =
            {
                {type = item, name = chalcopyrite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = chalcopyrite_crushed
        },
        -- CHUNKS
        {
            name = chalcopyrite_chunks,
            category = angels_ore_refining_T2,
            subgroup = is_chalcopyrite,
            icons = THREE_D_I(chalcopyrite_crushed, nil, water_purified_angels, chalcopyrite_chunks, sulfur, water_yellow_waste),
            order = c,
            energy_required = 2, -- Chalcopyrite crushed + Purified water -flotation-> Chalcopyrite chunks + S + Sulfuric waste water
            ingredients =
            {
                {type = item, name = chalcopyrite_crushed, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = chalcopyrite_chunks, amount = 4},
                {type = item, name = sulfur, amount = 1, probability = 0.5},
                {type = fluid, name = water_yellow_waste, amount = 60}
            },
            main_product = chalcopyrite_chunks
        },
        -- CRYSTALS
        {
            name = chalcopyrite_crystals,
            category = angels_ore_refining_T3,
            subgroup = is_chalcopyrite,
            icons = THREE_I(chalcopyrite_chunks, sulfuric_acid_angels, chalcopyrite_crystals),
            order = d,
            energy_required = 2, -- Chalcopyrite chunks + H₂SO₄ -leaching-> Chalcopyrite crystals
            ingredients =
            {
                {type = item, name = chalcopyrite_chunks, amount = 4},
                {type = fluid, name = sulfuric_acid_angels, amount = 15}
            },
            results = {{type = item, name = chalcopyrite_crystals, amount = 4}},
            main_product = chalcopyrite_crystals
        },
        -- PURIFIED
        {
            name = chalcopyrite_purified,
            category = angels_ore_refining_T4,
            subgroup = is_chalcopyrite,
            icons = TWO_I(chalcopyrite_crystals, chalcopyrite_purified),
            order = e,
            energy_required = 2, -- Chalcopyrite crystals -refinery-> Chalcopyrite purified
            ingredients = {{type = item, name = chalcopyrite_crystals, amount = 4}},
            results = {{type = item, name = chalcopyrite_purified, amount = 4}},
            main_product = chalcopyrite_purified
        },
        -- SORTING
        {
            name = chalcopyrite_crushed_sorting,
            category = ore_sorting_6,
            subgroup = is_chalcopyrite,
            icons = RECYCLING_I(recycling_png, chalcopyrite_crushed),
            order = f,
            allow_productivity = true,
            energy_required = 1, -- Chalcopyrite crushed (Sorting) / Fe + Cu + S
            ingredients = {{type = item, name = chalcopyrite_crushed, amount = 4}},
            results =
            {
                {type = item, name = iron_ore, amount = 2},
                {type = item, name = copper_ore, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = iron_ore
        },
        {
            name = chalcopyrite_chunks_sorting,
            category = ore_sorting_6,
            subgroup = is_chalcopyrite,
            icons = RECYCLING_I(recycling_png, chalcopyrite_chunks),
            order = g,
            allow_productivity = true,
            energy_required = 2, -- Chalcopyrite chunks (Sorting) / Fe + Cu + Ag + Au + S
            ingredients = {{type = item, name = chalcopyrite_chunks, amount = 8}},
            results =
            {
                {type = item, name = iron_ore, amount = 4},
                {type = item, name = copper_ore, amount = 2},
                {type = item, name = silver_ore_bob, amount = 1},
                {type = item, name = gold_ore_bob, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = iron_ore
        },
        {
            name = chalcopyrite_crystals_sorting,
            category = ore_sorting_6,
            subgroup = is_chalcopyrite,
            icons = RECYCLING_I(recycling_png, chalcopyrite_crystals),
            order = h,
            allow_productivity = true,
            energy_required = 2, -- Chalcopyrite crystals (Sorting) / Fe + Cu + Ag + Au + Pt + S
            ingredients = {{type = item, name = chalcopyrite_crystals, amount = 8}},
            results =
            {
                {type = item, name = iron_ore, amount = 4},
                {type = item, name = copper_ore, amount = 2},
                {type = item, name = silver_ore_bob, amount = 1},
                {type = item, name = gold_ore_bob, amount = 1},
                {type = item, name = platinum_ore_angels, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = iron_ore
        },
        {
            name = chalcopyrite_purified_sorting,
            category = ore_sorting_6,
            subgroup = is_chalcopyrite,
            icons = RECYCLING_I(recycling_png, chalcopyrite_purified),
            order = i,
            allow_productivity = true,
            energy_required = 2, -- Chalcopyrite purified (Sorting) / Fe + Cu + Ag + Au + Pt + Se
            ingredients = {{type = item, name = chalcopyrite_purified, amount = 8}},
            results =
            {
                {type = item, name = iron_ore, amount = 4},
                {type = item, name = copper_ore, amount = 2},
                {type = item, name = silver_ore_bob, amount = 1},
                {type = item, name = gold_ore_bob, amount = 1},
                {type = item, name = platinum_ore_angels, amount = 1},
                {type = item, name = selenium, amount = 1}
            },
            main_product = iron_ore
        },
        {
            name = selenium_recipe,
            category = ore_sorting_6,
            subgroup = is_chalcopyrite,
            icons = AR_FOUR_I(hybride_catalyst, molybdenite_purified, chalcopyrite_purified, selenium),
            order = j,
            allow_productivity = true,
            energy_required = 2,
            ingredients =
            {
                {type = item, name = hybride_catalyst, amount = 1},
                {type = item, name = molybdenite_purified, amount = 2},
                {type = item, name = chalcopyrite_purified, amount = 2}
            },
            results = {{type = item, name = selenium, amount = 4}},
            main_product = selenium
        }
    })
end