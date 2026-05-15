-- Wolframite ore / W + Fe + Mn + Mg + Nb + Re
wolframite_crushed = "wolframite-crushed"
wolframite_chunks = "wolframite-chunks"
wolframite_crystals = "wolframite-crystals"
wolframite_purified = "wolframite-purified"
data:extend
({
    {
        localised_description =
        {
            "",
            "Can be sorted for pure ores:\n",
            "   [item=bob-tungsten-ore] W\n",
            "   [item=niobium-ore] Nb\n",
            "Can be refined further prior to sorting for:\n",
            "   [item=iron-ore] Fe\n",
            "   [item=angels-manganese-ore] Mn\n",
            "   [item=magnesium-ore] Mg\n",
            "   [item=rhenium-ore] Re"
        },
        type = item,
        name = wolframite_crushed,
        subgroup = is_vulcanus_wolframite,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/wolframite-crushed.png",
        icon_size = 32,
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description =
        {
            "",
            "Can be sorted for pure ores:\n",
            "   [item=bob-tungsten-ore] W\n",
            "   [item=niobium-ore] Nb\n",
            "   [item=iron-ore] Fe\n",
            "   [item=angels-manganese-ore] Mn\n",
            "Can be refined further prior to sorting for:\n",
            "   [item=magnesium-ore] Mg\n",
            "   [item=rhenium-ore] Re"
        },
        type = item,
        name = wolframite_chunks,
        subgroup = is_vulcanus_wolframite,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/wolframite-chunks.png",
        icon_size = 32,
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description =
        {
            "",
            "Can be sorted for pure ores:\n",
            "   [item=bob-tungsten-ore] W\n",
            "   [item=niobium-ore] Nb\n",
            "   [item=iron-ore] Fe\n",
            "   [item=angels-manganese-ore] Mn\n",
            "   [item=magnesium-ore] Mg\n",
            "Can be refined further prior to sorting for:\n",
            "   [item=rhenium-ore] Re"
        },
        type = item,
        name = wolframite_crystals,
        subgroup = is_vulcanus_wolframite,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/wolframite-crystals.png",
        icon_size = 32,
        order = d,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description =
        {
            "",
            "Can be sorted for pure ores:\n",
            "   [item=bob-tungsten-ore] W\n",
            "   [item=niobium-ore] Nb\n",
            "   [item=iron-ore] Fe\n",
            "   [item=angels-manganese-ore] Mn\n",
            "   [item=magnesium-ore] Mg\n",
            "   [item=rhenium-ore] Re"
        },
        type = item,
        name = wolframite_purified,
        subgroup = is_vulcanus_wolframite,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/wolframite-purified.png",
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
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

wolframite_crushed_sorting = "wolframite-crushed-sorting"
wolframite_chunks_sorting = "wolframite-chunks-sorting"
wolframite_crystals_sorting = "wolframite-crystals-sorting"
wolframite_purified_sorting = "wolframite-purified-sorting"
rhenium_ore_recipe = "rhenium-ore-pure-mix-processing"
data:extend
({
    -- CRUSHED
    {
        type = recipe,
        name = wolframite_crushed,
        category = angels_ore_refining_T1,
        subgroup = is_vulcanus_wolframite,
        icons = THREE_R_I(wolframite_ore, wolframite_crushed, stone_crushed_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Wolframite ore -crushing-> Wolframite crushed + Stone crushed (crushing)
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
        type = recipe,
        name = wolframite_chunks,
        category = angels_ore_refining_T2,
        subgroup = is_vulcanus_wolframite,
        icons = THREE_D_I(wolframite_crushed, nil, water_purified_angels, wolframite_chunks, slag_angels, water_yellow_waste),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Wolframite crushed + Purified water -flotation-> Wolframite chunks + Calcium silicate + Sulfuric waste water
        ingredients =
        {
            {type = item, name = wolframite_crushed, amount = 2},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = wolframite_chunks, amount = 2},
            {type = item, name = slag_angels, amount = 1, probability = 0.5}, -- calcium_silicate
            {type = fluid, name = water_yellow_waste, amount = 60}
        },
        main_product = wolframite_chunks
    },
    -- CRYSTALS
    {
        type = recipe,
        name = wolframite_crystals,
        category = angels_ore_refining_T3,
        subgroup = is_vulcanus_wolframite,
        icons = THREE_I(wolframite_chunks, sulfuric_acid_angels, wolframite_crystals),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Wolframite chunks + H₂SO₄ -leaching-> Wolframite crystals
        ingredients =
        {
            {type = item, name = wolframite_chunks, amount = 2},
            {type = fluid, name = sulfuric_acid_angels, amount = 15}
        },
        results = {{type = item, name = wolframite_crystals, amount = 2}},
        main_product = wolframite_crystals
    },
    -- PURIFIED
    {
        type = recipe,
        name = wolframite_purified,
        category = angels_ore_refining_T4,
        subgroup = is_vulcanus_wolframite,
        icons = TWO_I(wolframite_crystals, wolframite_purified),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Wolframite crystals -refinery-> Wolframite purified
        ingredients = {{type = item, name = wolframite_crystals, amount = 4}},
        results = {{type = item, name = wolframite_purified, amount = 4}},
        main_product = wolframite_purified
    },
    -- SORTING
    {
        type = recipe,
        name = wolframite_crushed_sorting,
        category = ore_sorting_6,
        subgroup = is_vulcanus_wolframite,
        icons = RECYCLING_I(recycling_png, wolframite_crushed),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = wolframite_chunks_sorting,
        category = ore_sorting_6,
        subgroup = is_vulcanus_wolframite,
        icons = RECYCLING_I(recycling_png, wolframite_chunks),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = wolframite_crystals_sorting,
        category = ore_sorting_6,
        subgroup = is_vulcanus_wolframite,
        icons = RECYCLING_I(recycling_png, wolframite_crystals),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = wolframite_purified_sorting,
        category = ore_sorting_6,
        subgroup = is_vulcanus_wolframite,
        icons = RECYCLING_I(recycling_png, wolframite_purified),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = rhenium_ore_recipe,
        category = ore_sorting_6,
        subgroup = is_vulcanus_wolframite,
        icons = AR_FOUR_I(hybride_catalyst, molybdenite_purified, wolframite_purified, rhenium_ore),
        order = j,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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

--[[
data:extend
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
})
]]