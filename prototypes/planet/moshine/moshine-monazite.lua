if mods[moshine_mods] then
    -- Monazite ore / Nd + Ho + U + Th + Ce + Pm
    monazite_ore = "monazite-ore"
    monazite_crushed = "monazite-crushed"
    monazite_chunks = "monazite-chunks"
    monazite_crystals = "monazite-crystals"
    monazite_purified = "monazite-purified"
    data:extend
    ({
        {
            localised_description = {"item-description.monazite-ore"},
            type = item,
            name = monazite_ore,
            subgroup = is_monazite,
            icon = "__TIMSABA__/graphics/icons/moshine/monazite-ore.png",
            order = a,
            stack_size = 200,
            weight = 5000,
            pictures =
            {
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/monazite-ore-1.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/monazite-ore-2.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/monazite-ore-3.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                }
            }
        },
        {
            localised_description = {"item-description.monazite-crushed"},
            type = item,
            name = monazite_crushed,
            subgroup = is_monazite,
            icon = "__TIMSABA__/graphics/icons/moshine/monazite-crushed.png",
            icon_size = 32,
            order = b,
            stack_size = 200,
            weight = 5000
        },
        {
            localised_description = {"item-description.monazite-chunks"},
            type = item,
            name = monazite_chunks,
            subgroup = is_monazite,
            icon = "__TIMSABA__/graphics/icons/moshine/monazite-chunks.png",
            icon_size = 32,
            order = c,
            stack_size = 200,
            weight = 5000
        },
        {
            localised_description = {"item-description.monazite-crystals"},
            type = item,
            name = monazite_crystals,
            subgroup = is_monazite,
            icon = "__TIMSABA__/graphics/icons/moshine/monazite-crystals.png",
            icon_size = 32,
            order = d,
            stack_size = 200,
            weight = 5000
        },
        {
            localised_description = {"item-description.monazite-purified"},
            type = item,
            name = monazite_purified,
            subgroup = is_monazite,
            icon = "__TIMSABA__/graphics/icons/moshine/monazite-purified.png",
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
            icon = "__TIMSABA__/graphics/icons/moshine/.png",
            order = ,
            stack_size = 200,
            weight = 5000
        }
    })]]

    -- RECIPE
    monazite_crushed_sorting = "monazite-crushed-sorting"
    monazite_chunks_sorting = "monazite-chunks-sorting"
    monazite_crystals_sorting = "monazite-crystals-sorting"
    monazite_purified_sorting = "monazite-purified-sorting"
    data:extend
    ({
        -- CRUSHED
        {
            type = recipe,
            name = monazite_crushed,
            category = angels_ore_refining_T1,
            subgroup = is_monazite,
            icons = THREE_R_I(monazite_ore, monazite_crushed, stone_crushed_angels),
            order = b,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2, -- Monazite ore -crushing-> Monazite crushed + Stone crushed
            ingredients = {{type = item, name = monazite_ore, amount = 2}},
            results =
            {
                {type = item, name = monazite_crushed, amount = 2},
                {type = item, name = stone_crushed_angels, amount = 1}
            },
            main_product = monazite_crushed
        },
        -- CHUNKS
        {
            type = recipe,
            name = monazite_chunks,
            category = angels_ore_refining_T2,
            subgroup = is_monazite,
            icons = THREE_D_I(monazite_crushed, nil, water_purified_angels, monazite_chunks, calcium_phosphate, water_orange_waste),
            order = c,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2, -- Monazite crushed + Purified water -flotation-> Monazite chunks + Ca₃(PO₄)₂ + Phosphoric waste water
            ingredients =
            {
                {type = item, name = monazite_crushed, amount = 2},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = monazite_chunks, amount = 2},
                {type = item, name = calcium_phosphate, amount = 1, probability = 0.5},
                {type = fluid, name = water_orange_waste, amount = 60}
            },
            main_product = monazite_chunks
        },
        -- CRYSTALS
        {
            type = recipe,
            name = monazite_crystals,
            category = angels_ore_refining_T3,
            subgroup = is_monazite,
            icons = THREE_I(monazite_chunks, orthophosphoric_acid, monazite_crystals),
            order = d,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2, -- Monazite chunks + H₃PO₄ -leaching-> Monazite crystals
            ingredients =
            {
                {type = item, name = monazite_chunks, amount = 2},
                {type = fluid, name = orthophosphoric_acid, amount = 15}
            },
            results = {{type = item, name = monazite_crystals, amount = 2}},
            main_product = monazite_crystals
        },
        -- PURIFIED
        {
            type = recipe,
            name = monazite_purified,
            category = angels_ore_refining_T4,
            subgroup = is_monazite,
            icons = TWO_I(monazite_crystals, monazite_purified),
            order = e,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2, -- Monazite crystals -refinery-> Monazite purified
            ingredients = {{type = item, name = monazite_crystals, amount = 4}},
            results = {{type = item, name = monazite_purified, amount = 4}},
            main_product = monazite_purified
        },
        -- SORTING
        {
            type = recipe,
            name = monazite_crushed_sorting,
            category = ore_sorting_6,
            subgroup = is_monazite,
            icons = RECYCLING_I(recycling_png, monazite_crushed),
            order = f,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1, -- Monazite crushed (Sorting) / Nd + Ho + Ca₃(PO₄)₂
            ingredients = {{type = item, name = monazite_crushed, amount = 4}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 2},
                {type = item, name = holmium_ore, amount = 1},
                {type = item, name = calcium_phosphate, amount = 1}
            },
            main_product = neodymium_ore
        },
        {
            type = recipe,
            name = monazite_chunks_sorting,
            category = ore_sorting_6,
            subgroup = is_monazite,
            icons = RECYCLING_I(recycling_png, monazite_chunks),
            order = g,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2, -- Monazite chunks (Sorting) / Nd + Ho + U + Th + Ca₃(PO₄)₂
            ingredients = {{type = item, name = monazite_chunks, amount = 8}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 4},
                {type = item, name = holmium_ore, amount = 2},
                {type = item, name = uranium_ore, amount = 1},
                {type = item, name = thorium_ore_bob, amount = 1},
                {type = item, name = calcium_phosphate, amount = 1}
            },
            main_product = neodymium_ore
        },
        {
            type = recipe,
            name = monazite_crystals_sorting,
            category = ore_sorting_6,
            subgroup = is_monazite,
            icons = RECYCLING_I(recycling_png, monazite_crystals),
            order = h,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2, -- Monazite crystals (Sorting) / Nd + Ho + U + Th + Ce + Ca₃(PO₄)₂
            ingredients = {{type = item, name = monazite_crystals, amount = 8}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 4},
                {type = item, name = holmium_ore, amount = 2},
                {type = item, name = uranium_ore, amount = 1},
                {type = item, name = thorium_ore_bob, amount = 1},
                {type = item, name = cerium_ore, amount = 1},
                {type = item, name = calcium_phosphate, amount = 1}
            },
            main_product = neodymium_ore
        },
        {
            type = recipe,
            name = monazite_purified_sorting,
            category = ore_sorting_6,
            subgroup = is_monazite,
            icons = RECYCLING_I(recycling_png, monazite_purified),
            order = i,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2, -- Monazite purified (Sorting) / Nd + Ho + U + Th + Ce + Pm
            ingredients = {{type = item, name = monazite_purified, amount = 8}},
            results =
            {
                {type = item, name = neodymium_ore, amount = 4},
                {type = item, name = holmium_ore, amount = 2},
                {type = item, name = uranium_ore, amount = 1},
                {type = item, name = thorium_ore_bob, amount = 1},
                {type = item, name = cerium_ore, amount = 1},
                {type = item, name = promethium_ore, amount = 1}
            },
            main_product = neodymium_ore
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
end