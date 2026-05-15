-- Brannerite ore / Ho + U + Th + Fe + Ti + Ca
brannerite_ore = "brannerite-ore"
brannerite_crushed = "brannerite-crushed"
brannerite_chunks = "brannerite-chunks"
brannerite_crystals = "brannerite-crystals"
brannerite_purified = "brannerite-purified"
data:extend
({
    {
        localised_description =
        {
            "",
            "Can be refined and sorted for pure ores:\n",
            "   [item=holmium-ore] Ho\n",
            "   [item=calcium] Ca\n",
            "   [item=uranium-ore] U\n",
            "   [item=bob-thorium-ore] Th\n",
            "   [item=iron-ore] Fe\n",
            "   [item=bob-rutile-ore] Ti"
        },
        type = item,
        name = brannerite_ore,
        subgroup = is_brannerite,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-ore.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-ore-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-ore-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-ore-3.png",
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
            "   [item=holmium-ore] Ho\n",
            "   [item=calcium] Ca\n",
            "Can be refined further prior to sorting for:\n",
            "   [item=uranium-ore] U\n",
            "   [item=bob-thorium-ore] Th\n",
            "   [item=iron-ore] Fe\n",
            "   [item=bob-rutile-ore] Ti"
        },
        type = item,
        name = brannerite_crushed,
        subgroup = is_brannerite,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-crushed.png",
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
            "   [item=holmium-ore] Ho\n",
            "   [item=calcium] Ca\n",
            "   [item=uranium-ore] U\n",
            "   [item=bob-thorium-ore] Th\n",
            "Can be refined further prior to sorting for:\n",
            "   [item=iron-ore] Fe\n",
            "   [item=bob-rutile-ore] Ti"
        },
        type = item,
        name = brannerite_chunks,
        subgroup = is_brannerite,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-chunks.png",
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
            "   [item=holmium-ore] Ho\n",
            "   [item=calcium] Ca\n",
            "   [item=uranium-ore] U\n",
            "   [item=bob-thorium-ore] Th\n",
            "   [item=iron-ore] Fe\n",
            "Can be refined further prior to sorting for:\n",
            "   [item=bob-rutile-ore] Ti"
        },
        type = item,
        name = brannerite_crystals,
        subgroup = is_brannerite,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-crystals.png",
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
            "   [item=holmium-ore] Ho\n",
            "   [item=calcium] Ca\n",
            "   [item=uranium-ore] U\n",
            "   [item=bob-thorium-ore] Th\n",
            "   [item=iron-ore] Fe\n",
            "   [item=bob-rutile-ore] Ti"
        },
        type = item,
        name = brannerite_purified,
        subgroup = is_brannerite,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/brannerite-purified.png",
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
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
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = angelsmods.functions.fluid_color(""),
        flow_color = angelsmods.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

brannerite_crushed_sorting = "brannerite-crushed-sorting"
brannerite_chunks_sorting = "brannerite-chunks-sorting"
brannerite_crystals_sorting = "brannerite-crystals-sorting"
brannerite_purified_sorting = "brannerite-purified-sorting"
holmium_ore_recipe = "holmium-ore-pure-mix-processing"
data:extend
({
    -- CRUSHED
    {
        type = recipe,
        name = brannerite_crushed,
        category = angels_ore_refining_T1,
        subgroup = is_brannerite,
        icons = THREE_R_I(brannerite_ore, brannerite_crushed, stone_crushed_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Brannerite ore -crushing-> Brannerite crushed + Stone crushed (crushing)
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
        type = recipe,
        name = brannerite_chunks,
        category = angels_ore_refining_T2,
        subgroup = is_brannerite,
        icons = THREE_D_I(brannerite_crushed, nil, water_purified_angels, brannerite_chunks, slag_angels, water_greenyellow_waste),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Brannerite crushed + Purified water -flotation-> Brannerite chunks + Calcium silicate + Fluoric waste water
        ingredients =
        {
            {type = item, name = brannerite_crushed, amount = 2},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = brannerite_chunks, amount = 2},
            {type = item, name = calcium_silicate, amount = 1, probability = 0.5},
            {type = fluid, name = water_greenyellow_waste, amount = 60}
        },
        main_product = brannerite_chunks
    },
    -- CRYSTALS
    {
        type = recipe,
        name = brannerite_crystals,
        category = angels_ore_refining_T3,
        subgroup = is_brannerite,
        icons = THREE_I(brannerite_chunks, hydrofluoric_acid_angels, brannerite_crystals),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Brannerite chunks + HF(aq) -leaching-> Brannerite crystals
        ingredients =
        {
            {type = item, name = brannerite_chunks, amount = 2},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 15}
        },
        results = {{type = item, name = brannerite_crystals, amount = 2}},
        main_product = brannerite_crystals
    },
    -- PURIFIED
    {
        type = recipe,
        name = brannerite_purified,
        category = angels_ore_refining_T4,
        subgroup = is_brannerite,
        icons = TWO_I(brannerite_crystals, brannerite_purified),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Brannerite crystals -refinery-> Brannerite purified
        ingredients = {{type = item, name = brannerite_crystals, amount = 4}},
        results = {{type = item, name = brannerite_purified, amount = 4}},
        main_product = brannerite_purified
    },
    -- SORTING
    {
        type = recipe,
        name = brannerite_crushed_sorting,
        category = ore_sorting_6,
        subgroup = is_brannerite,
        icons = RECYCLING_I(recycling_png, brannerite_crushed),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = brannerite_chunks_sorting,
        category = ore_sorting_6,
        subgroup = is_brannerite,
        icons = RECYCLING_I(recycling_png, brannerite_chunks),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = brannerite_crystals_sorting,
        category = ore_sorting_6,
        subgroup = is_brannerite,
        icons = RECYCLING_I(recycling_png, brannerite_crystals),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = brannerite_purified_sorting,
        category = ore_sorting_6,
        subgroup = is_brannerite,
        icons = RECYCLING_I(recycling_png, brannerite_purified),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = holmium_ore_recipe,
        category = ore_sorting_6,
        subgroup = is_brannerite,
        icons = AR_FOUR_I(hybride_catalyst, brannerite_purified, powellite_purified, holmium_ore),
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
            {type = item, name = brannerite_purified, amount = 2},
            {type = item, name = powellite_purified, amount = 2}
        },
        results = {{type = item, name = holmium_ore, amount = 4}}
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