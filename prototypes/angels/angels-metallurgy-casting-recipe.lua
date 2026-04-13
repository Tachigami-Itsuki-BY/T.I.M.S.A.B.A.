local recipe = "recipe"
-- ANGELS METALLURGY CASTING
-- STONE
hazard_concrete_processing = "hazard-concrete-processing"
refined_hazard_concrete_processing = "refined-hazard-concrete-processing"
refined_concrete_2 = "refined-concrete-2"
data:extend
({
    {
        type = recipe,
        name = hazard_concrete_processing,
        category = crafting,
        subgroup = is_stone_casting,
        icons = TWO_I(hazard_concrete, concrete),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 0.25,
        ingredients = {{type = item, name = hazard_concrete, amount = 1}},
        results = {{type = item, name = concrete, amount = 1}}
    },
    {
        type = recipe,
        name = refined_hazard_concrete_processing,
        category = crafting,
        subgroup = is_stone_casting,
        icons = TWO_I(refined_hazard_concrete, refined_concrete),
        order = d_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 0.25,
        ingredients = {{type = item, name = refined_hazard_concrete, amount = 1}},
        results = {{type = item, name = refined_concrete, amount = 1}}
    },
    {
        type = recipe,
        name = refined_concrete_2,
        category = crafting_fluid,
        subgroup = is_stone_casting,
        icons = AR_FOUR_ALT_I(concrete_liquid, iron_rod, nil, refined_concrete), -- icons --> "prototypes-update/update-icons"
        order = e_c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = iron_rod, amount = 4},
            {type = fluid, name = concrete_liquid, amount = 60}
        },
        results = {{type = item, name = refined_concrete, amount = 4}}
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