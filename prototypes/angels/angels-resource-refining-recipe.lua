local recipe = "recipe"
-- ANGELS RESOURCE REFINING
slag_sorting = "slag-sorting"
manganese_ore_recipe = "ore-crushed-mix5-processing"
chrome_ore_recipe = "ore-crystal-mix7-processing"
data:extend
({
    {
        type = recipe,
        name = slag_sorting,
        category = angels_ore_sorting_1,
        subgroup = "angels-processing-crafting",
        icons = RECYCLING_I(recycling_png, slag_angels),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- CaSiO₃ --> Ca + SiO₂ + O₂
        ingredients = {{type = item, name = slag_angels, amount = 8}},
        results = {{type = item, name = calcium, amount = 4}},
        main_product = calcium
    },
    {
        type = recipe,
        name = manganese_ore_recipe,
        category = angels_ore_sorting_2,
        subgroup = is_ore_sorting_advanced_1,
        icons = AR_FOUR_I(mineral_catalyst, crushed_ferrous, crushed_rubyte, manganese_ore_angels),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = mineral_catalyst, amount = 1},
            {type = item, name = crushed_ferrous, amount = 2},
            {type = item, name = crushed_rubyte, amount = 2}
        },
        results = {{type = item, name = manganese_ore_angels, amount = 4}}
    },
    {
        type = recipe,
        name = "ore-crystal-mix7-processing",
        category = angels_ore_sorting_4,
        subgroup = is_ore_sorting_advanced_3,
        icons = AR_FOUR_I(hybride_catalyst, crystal_ferrous, crystal_rubyte, chrome_ore_angels),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 1},
            {type = item, name = crystal_ferrous, amount = 2},
            {type = item, name = crystal_rubyte, amount = 2}
        },
        results = {{type = item, name = chrome_ore_angels, amount = 4}}
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
        energy_required = , -- 
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})
]]