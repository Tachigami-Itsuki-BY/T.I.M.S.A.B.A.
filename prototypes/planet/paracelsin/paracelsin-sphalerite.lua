if mods [paracelsin_mods] then
    -- Sphalerite ore / Zn + Fe + Mn + Co + Ge + Sb
    sphalerite_crushed = "sphalerite-crushed"
    sphalerite_chunks = "sphalerite-chunks"
    sphalerite_crystals = "sphalerite-crystals"
    sphalerite_purified = "sphalerite-purified"
    TIMSABA.functions.create_items
    ({
        {
            name = sphalerite_crushed,
            subgroup = is_sphalerite,
            icon = "__TIMSABA__/graphics/icons/paracelsin/sphalerite-crushed.png",
            icon_size = 32,
            order = b
        },
        {
            name = sphalerite_chunks,
            subgroup = is_sphalerite,
            icon = "__TIMSABA__/graphics/icons/paracelsin/sphalerite-chunks.png",
            icon_size = 32,
            order = c
        },
        {
            name = sphalerite_crystals,
            subgroup = is_sphalerite,
            icon = "__TIMSABA__/graphics/icons/paracelsin/sphalerite-crystals.png",
            icon_size = 32,
            order = d
        },
        {
            name = sphalerite_purified,
            subgroup = is_sphalerite,
            icon = "__TIMSABA__/graphics/icons/paracelsin/sphalerite-purified.png",
            icon_size = 32,
            order = e
        }
    })

    -- RECIPE
    sphalerite_crushed_sorting = "sphalerite-crushed-sorting"
    sphalerite_chunks_sorting = "sphalerite-chunks-sorting"
    sphalerite_crystals_sorting = "sphalerite-crystals-sorting"
    sphalerite_purified_sorting = "sphalerite-purified-sorting"
    germanium_ore_recipe = "germanium-pure-mix-processing"
    TIMSABA.functions.create_recipes
    ({
        -- CRUSHED
        {
            name = sphalerite_crushed,
            category = angels_ore_refining_T1,
            subgroup = is_sphalerite,
            icons = THREE_R_I(sphalerite_ore, sphalerite_crushed, stone_crushed_angels),
            order = b,
            energy_required = 2, -- Sphalerite ore -crushing-> Sphalerite crushed + Stone crushed
            ingredients = {{type = item, name = sphalerite_ore, amount = 2}},
            results =
            {
                {type = item, name = sphalerite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = sphalerite_crushed
        },
        -- CHUNKS
        {
            name = sphalerite_chunks,
            category = angels_ore_refining_T2,
            subgroup = is_sphalerite,
            icons = THREE_D_I(sphalerite_crushed, nil, water_purified_angels, sphalerite_chunks, sulfur, water_red_waste),
            order = c,
            energy_required = 2, -- Sphalerite crushed + Purified water -flotation-> Sphalerite chunks + S + Phosphoric waste water
            ingredients =
            {
                {type = item, name = sphalerite_crushed, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = sphalerite_chunks, amount = 4},
                {type = item, name = sulfur, amount = 1, probability = 0.5},
                {type = fluid, name = water_red_waste, amount = 60}
            },
            main_product = sphalerite_chunks
        },
        -- CRYSTALS
        {
            name = sphalerite_crystals,
            category = angels_ore_refining_T3,
            subgroup = is_sphalerite,
            icons = THREE_I(sphalerite_chunks, nitric_acid_angels, sphalerite_crystals),
            order = d,
            energy_required = 2, -- Sphalerite chunks + HNO₃ -leaching-> Sphalerite crystals
            ingredients =
            {
                {type = item, name = sphalerite_chunks, amount = 4},
                {type = fluid, name = nitric_acid_angels, amount = 15}
            },
            results = {{type = item, name = sphalerite_crystals, amount = 4}},
            main_product = sphalerite_crystals
        },
        -- PURIFIED
        {
            name = sphalerite_purified,
            category = angels_ore_refining_T4,
            subgroup = is_sphalerite,
            icons = TWO_I(sphalerite_crystals, sphalerite_purified),
            order = e,
            energy_required = 2, -- Sphalerite crystals -refinery-> Sphalerite purified
            ingredients = {{type = item, name = sphalerite_crystals, amount = 4}},
            results = {{type = item, name = sphalerite_purified, amount = 4}},
            main_product = sphalerite_purified
        },
        -- SORTING
        {
            name = sphalerite_crushed_sorting,
            category = ore_sorting_6,
            subgroup = is_sphalerite,
            icons = RECYCLING_I(recycling_png, sphalerite_crushed),
            order = f,
            allow_productivity = true,
            energy_required = 1, -- Sphalerite crushed (Sorting) / Zn + Fe + S
            ingredients = {{type = item, name = sphalerite_crushed, amount = 4}},
            results =
            {
                {type = item, name = zinc_ore_bob, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = zinc_ore_bob
        },
        {
            name = sphalerite_chunks_sorting,
            category = ore_sorting_6,
            subgroup = is_sphalerite,
            icons = RECYCLING_I(recycling_png, sphalerite_chunks),
            order = g,
            allow_productivity = true,
            energy_required = 2, -- Sphalerite chunks (Sorting) / Zn + Fe + Mn + Co + S
            ingredients = {{type = item, name = sphalerite_chunks, amount = 8}},
            results =
            {
                {type = item, name = zinc_ore_bob, amount = 4},
                {type = item, name = iron_ore, amount = 2},
                {type = item, name = manganese_ore_angels, amount = 1},
                {type = item, name = cobalt_ore_bob, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = zinc_ore_bob
        },
        {
            name = sphalerite_crystals_sorting,
            category = ore_sorting_6,
            subgroup = is_sphalerite,
            icons = RECYCLING_I(recycling_png, sphalerite_crystals),
            order = h,
            allow_productivity = true,
            energy_required = 2, -- Sphalerite crystals (Sorting) / Zn + Fe + Mn + Co + Ge + S
            ingredients = {{type = item, name = sphalerite_crystals, amount = 8}},
            results =
            {
                {type = item, name = zinc_ore_bob, amount = 4},
                {type = item, name = iron_ore, amount = 2},
                {type = item, name = manganese_ore_angels, amount = 1},
                {type = item, name = cobalt_ore_bob, amount = 1},
                {type = item, name = germanium_ore, amount = 1},
                {type = item, name = sulfur, amount = 1}
            },
            main_product = zinc_ore_bob
        },
        {
            name = sphalerite_purified_sorting,
            category = ore_sorting_6,
            subgroup = is_sphalerite,
            icons = RECYCLING_I(recycling_png, sphalerite_purified),
            order = i,
            allow_productivity = true,
            energy_required = 2, -- Sphalerite purified (Sorting) / Zn + Fe + Mn + Co + Ge + Sb
            ingredients = {{type = item, name = sphalerite_purified, amount = 8}},
            results =
            {
                {type = item, name = zinc_ore_bob, amount = 4},
                {type = item, name = iron_ore, amount = 2},
                {type = item, name = manganese_ore_angels, amount = 1},
                {type = item, name = cobalt_ore_bob, amount = 1},
                {type = item, name = germanium_ore, amount = 1},
                {type = item, name = antimony_ore, amount = 1}
            },
            main_product = zinc_ore_bob
        },
        {
            name = germanium_ore_recipe,
            category = ore_sorting_6,
            subgroup = is_sphalerite,
            icons = AR_FOUR_I(hybride_catalyst, germanite_purified, sphalerite_purified, germanium_ore),
            order = j,
            allow_productivity = true,
            energy_required = 2,
            ingredients =
            {
                {type = item, name = hybride_catalyst, amount = 1},
                {type = item, name = germanite_purified, amount = 2},
                {type = item, name = sphalerite_purified, amount = 2}
            },
            results = {{type = item, name = germanium_ore, amount = 4}},
            main_product = germanium_ore
        }
    })
end