-- ANGELS RESOURCE REFINING
manganese_ore_recipe = "ore-crushed-mix5-processing"
chromium_ore_recipe = "ore-crystal-mix7-processing"
molybdenum_ore_recipe = "molybdenum-ore-pure-mix-processing"
data:extend
({
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
        results = {{type = item, name = manganese_ore_angels, amount = 4}},
        main_product = manganese_ore_angels
    },
    {
        type = recipe,
        name = chromium_ore_recipe,
        category = angels_ore_sorting_4,
        subgroup = is_ore_sorting_advanced_3,
        icons = AR_FOUR_I(hybride_catalyst, crystal_ferrous, crystal_rubyte, chromium_ore_angels),
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
        results = {{type = item, name = chromium_ore_angels, amount = 4}},
        main_product = chromium_ore_angels
    },
    {
        type = recipe,
        name = molybdenum_ore_recipe,
        category = angels_ore_sorting_5,--angels_ore_sorting_6,
        subgroup = is_ore_sorting_advanced_3,
        icons = AR_FOUR_I(hybride_catalyst, molybdenite_purified, powellite_purified, molybdenum_ore),
        order = k,
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
            {type = item, name = powellite_purified, amount = 2}
        },
        results = {{type = item, name = molybdenum_ore, amount = 4}},
        main_product = molybdenum_ore
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