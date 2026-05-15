-- Germanite Ore / Ge + Cu + Fe + Ga + V + As
germanite_ore = "germanite-ore"
germanite_crushed = "germanite-crushed"
germanite_chunks = "germanite-chunks"
germanite_crystals = "germanite-crystals"
germanite_purified = "germanite-purified"
data:extend
({
    {
        localised_description =
        {
            "",
            "Can be refined and sorted for pure ores:\n",
            "   [item=germanium-ore] Ge\n",
            "   [item=copper-ore] Cu\n",
            "   [item=iron-ore] Fe\n",
            "   [item=galium-ore] Ga\n",
            "   [item=vanadium-ore] V\n",
            "   [item=arsenic] As"
        },
        type = item,
        name = germanite_ore,
        subgroup = is_germanite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-ore.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-ore-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-ore-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-ore-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description =
        {
            "",
            "Can be sorted for pure ores:\n",
            "   [item=germanium-ore] Ge\n",
            "   [item=copper-ore] Cu\n",
            "Can be refined further prior to sorting for:\n",
            "   [item=iron-ore] Fe\n",
            "   [item=galium-ore] Ga\n",
            "   [item=vanadium-ore] V\n",
            "   [item=arsenic] As"
        },
        type = item,
        name = germanite_crushed,
        subgroup = is_germanite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-crushed.png",
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
            "   [item=germanium-ore] Ge\n",
            "   [item=copper-ore] Cu\n",
            "   [item=iron-ore] Fe\n",
            "   [item=galium-ore] Ga\n",
            "Can be refined further prior to sorting for:\n",
            "   [item=vanadium-ore] V\n",
            "   [item=arsenic] As"
        },
        type = item,
        name = germanite_chunks,
        subgroup = is_germanite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-chunks.png",
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
            "   [item=germanium-ore] Ge\n",
            "   [item=copper-ore] Cu\n",
            "   [item=iron-ore] Fe\n",
            "   [item=galium-ore] Ga\n",
            "   [item=vanadium-ore] V\n",
            "Can be refined further prior to sorting for:\n",
            "   [item=arsenic] As"
        },
        type = item,
        name = germanite_crystals,
        subgroup = is_germanite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-crystals.png",
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
            "   [item=germanium-ore] Ge\n",
            "   [item=copper-ore] Cu\n",
            "   [item=iron-ore] Fe\n",
            "   [item=galium-ore] Ga\n",
            "   [item=vanadium-ore] V\n",
            "   [item=arsenic] As"
        },
        type = item,
        name = germanite_purified,
        subgroup = is_germanite,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/germanite-purified.png",
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
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/.png",
        order = ,
        stack_size = ,
        weight = 
    }
})]]

-- FLUID
--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/germanite/.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = angelsmods.functions.fluid_color(""),
        flow_color = angelsmods.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

germanite_crushed_sorting = "germanite-crushed-sorting"
germanite_chunks_sorting = "germanite-chunks-sorting"
germanite_crystals_sorting = "germanite-crystals-sorting"
germanite_purified_sorting = "germanite-purified-sorting"
data:extend
({
    -- CRUSHED
    {
        type = recipe,
        name = germanite_crushed,
        category = angels_ore_refining_T1,
        subgroup = is_germanite,
        icons = THREE_R_I(germanite_ore, germanite_crushed, stone_crushed_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Germanite Ore -crushing-> Germanite crushed + Stone crushed (crushing)
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
        type = recipe,
        name = germanite_chunks,
        category = angels_ore_refining_T2,
        subgroup = is_germanite,
        icons = THREE_D_I(germanite_crushed, nil, water_purified_angels, germanite_chunks, sulfur, water_yellow_waste),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Germanite crushed + Purified water -flotation-> Germanite chunks + S + Sulfuric waste water
        ingredients =
        {
            {type = item, name = germanite_crushed, amount = 2},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = germanite_chunks, amount = 2},
            {type = item, name = sulfur, amount = 1, probability = 0.5},
            {type = fluid, name = water_yellow_waste, amount = 60}
        },
        main_product = germanite_chunks
    },
    -- CRYSTALS
    {
        type = recipe,
        name = germanite_crystals,
        category = angels_ore_refining_T3,
        subgroup = is_germanite,
        icons = THREE_I(germanite_chunks, sulfuric_acid_angels, germanite_crystals),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Germanite chunks + H₂SO₄ -leaching-> Germanite crystals
        ingredients =
        {
            {type = item, name = germanite_chunks, amount = 2},
            {type = fluid, name = sulfuric_acid_angels, amount = 15}
        },
        results = {{type = item, name = germanite_crystals, amount = 2}},
        main_product = germanite_crystals
    },
    -- PURIFIED
    {
        type = recipe,
        name = germanite_purified,
        category = angels_ore_refining_T4,
        subgroup = is_germanite,
        icons = TWO_I(germanite_crystals, germanite_purified),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Germanite crystals -refinery-> Germanite purified
        ingredients = {{type = item, name = germanite_crystals, amount = 4}},
        results = {{type = item, name = germanite_purified, amount = 4}},
        main_product = germanite_purified
    },
    -- SORTING
    {
        type = recipe,
        name = germanite_crushed_sorting,
        category = ore_sorting_6,
        subgroup = is_germanite,
        icons = RECYCLING_I(recycling_png, germanite_crushed),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = germanite_chunks_sorting,
        category = ore_sorting_6,
        subgroup = is_germanite,
        icons = RECYCLING_I(recycling_png, germanite_chunks),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = germanite_crystals_sorting,
        category = ore_sorting_6,
        subgroup = is_germanite,
        icons = RECYCLING_I(recycling_png, germanite_crystals),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = germanite_purified_sorting,
        category = ore_sorting_6,
        subgroup = is_germanite,
        icons = RECYCLING_I(recycling_png, germanite_purified),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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