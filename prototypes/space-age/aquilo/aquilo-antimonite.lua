-- Antimonite ore / Sb + Pb + Fe + Cu + Ag + As
antimonite_ore = "antimonite-ore"
antimonite_crushed = "antimonite-crushed"
antimonite_chunks = "antimonite-chunks"
antimonite_crystals = "antimonite-crystals"
antimonite_purified = "antimonite-purified"
data:extend
({
    {
        localised_description = {"item-description.antimonite-ore"},
        type = item,
        name = antimonite_ore,
        subgroup = is_antimonite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimonite/antimonite-ore.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimonite/antimonite-ore-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimonite/antimonite-ore-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimonite/antimonite-ore-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = {"item-description.antimonite-crushed"},
        type = item,
        name = antimonite_crushed,
        subgroup = is_antimonite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimonite/antimonite-crushed.png",
        icon_size = 32,
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = {"item-description.antimonite-chunks"},
        type = item,
        name = antimonite_chunks,
        subgroup = is_antimonite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimonite/antimonite-chunks.png",
        icon_size = 32,
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = {"item-description.antimonite-crystals"},
        type = item,
        name = antimonite_crystals,
        subgroup = is_antimonite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimonite/antimonite-crystals.png",
        icon_size = 32,
        order = d,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = {"item-description.antimonite-purified"},
        type = item,
        name = antimonite_purified,
        subgroup = is_antimonite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimonite/antimonite-purified.png",
        icon_size = 32,
        order = e,
        stack_size = 200,
        weight = 5000
    }
})

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimonite/.png",
        order = ,
        stack_size = ,
        weight = 
    }
})]]

antimonite_crushed_sorting = "antimonite-crushed-sorting"
antimonite_chunks_sorting = "antimonite-chunks-sorting"
antimonite_crystals_sorting = "antimonite-crystals-sorting"
antimonite_purified_sorting = "antimonite-purified-sorting"
data:extend
({
    -- CRUSHED
    {
        type = recipe,
        name = antimonite_crushed,
        category = angels_ore_refining_T1,
        subgroup = is_antimonite,
        icons = THREE_R_I(antimonite_ore, antimonite_crushed, stone_crushed_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Antimonite ore -crushing-> Antimonite crushed + Stone crushed
        ingredients = {{type = item, name = antimonite_ore, amount = 2}},
        results =
        {
            {type = item, name = antimonite_crushed, amount = 2},
            {type = item, name = stone_crushed_angels, amount = 1}
        },
        main_product = antimonite_crushed
    },
    -- CHUNKS
    {
        type = recipe,
        name = antimonite_chunks,
        category = angels_ore_refining_T2,
        subgroup = is_antimonite,
        icons = THREE_D_I(antimonite_crushed, nil, water_purified_angels, antimonite_chunks, sulfur, water_green_waste),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Antimonite crushed + Purified water -flotation-> Antimonite chunks + S + Chloric waste water
        ingredients =
        {
            {type = item, name = antimonite_crushed, amount = 2},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = antimonite_chunks, amount = 2},
            {type = item, name = sulfur, amount = 1, probability = 0.5},
            {type = fluid, name = water_green_waste, amount = 60}
        },
        main_product = antimonite_chunks
    },
    -- CRYSTALS
    {
        type = recipe,
        name = antimonite_crystals,
        category = angels_ore_refining_T3,
        subgroup = is_antimonite,
        icons = THREE_I(antimonite_chunks, hydrochloric_acid_angels, antimonite_crystals),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Antimonite chunks + HCl(aq) -leaching-> Antimonite crystals
        ingredients =
        {
            {type = item, name = antimonite_chunks, amount = 2},
            {type = fluid, name = hydrochloric_acid_angels, amount = 15}
        },
        results = {{type = item, name = antimonite_crystals, amount = 2}},
        main_product = antimonite_crystals
    },
    -- PURIFIED
    {
        type = recipe,
        name = antimonite_purified,
        category = angels_ore_refining_T4,
        subgroup = is_antimonite,
        icons = TWO_I(antimonite_crystals, antimonite_purified),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Antimonite crystals -refinery-> Antimonite purified
        ingredients = {{type = item, name = antimonite_crystals, amount = 4}},
        results = {{type = item, name = antimonite_purified, amount = 4}},
        main_product = antimonite_purified
    },
    -- SORTING
    {
        type = recipe,
        name = antimonite_crushed_sorting,
        category = ore_sorting_6,
        subgroup = is_antimonite,
        icons = RECYCLING_I(recycling_png, antimonite_crushed),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 1, -- Antimonite crushed (Sorting) / Sb + Pb + S
        ingredients = {{type = item, name = antimonite_crushed, amount = 4}},
        results =
        {
            {type = item, name = antimony_ore, amount = 2},
            {type = item, name = lead_ore_bob, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = antimony_ore
    },
    {
        type = recipe,
        name = antimonite_chunks_sorting,
        category = ore_sorting_6,
        subgroup = is_antimonite,
        icons = RECYCLING_I(recycling_png, antimonite_chunks),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Antimonite chunks (Sorting) / Sb + Pb + Fe + Cu + S
        ingredients = {{type = item, name = antimonite_chunks, amount = 8}},
        results =
        {
            {type = item, name = antimony_ore, amount = 4},
            {type = item, name = lead_ore_bob, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = copper_ore, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = antimony_ore
    },
    {
        type = recipe,
        name = antimonite_crystals_sorting,
        category = ore_sorting_6,
        subgroup = is_antimonite,
        icons = RECYCLING_I(recycling_png, antimonite_crystals),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Antimonite crystals (Sorting) / Sb + Pb + Fe + Cu + Ag + S
        ingredients = {{type = item, name = antimonite_crystals, amount = 8}},
        results =
        {
            {type = item, name = antimony_ore, amount = 4},
            {type = item, name = lead_ore_bob, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = copper_ore, amount = 1},
            {type = item, name = silver_ore_bob, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = antimony_ore
    },
    {
        type = recipe,
        name = antimonite_purified_sorting,
        category = ore_sorting_6,
        subgroup = is_antimonite,
        icons = RECYCLING_I(recycling_png, antimonite_purified),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Antimonite purified (Sorting) / Sb + Pb + Fe + Cu + Ag + As
        ingredients = {{type = item, name = antimonite_purified, amount = 8}},
        results =
        {
            {type = item, name = antimony_ore, amount = 4},
            {type = item, name = lead_ore_bob, amount = 2},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = copper_ore, amount = 1},
            {type = item, name = silver_ore_bob, amount = 1},
            {type = item, name = arsenic, amount = 1}
        },
        main_product = antimony_ore
    }
})

--[[data:extend
({
    {
        type = recipe,
        name = ,
        category = ,
        subgroup = ,
        icons = ,
        order = ,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = ,
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]