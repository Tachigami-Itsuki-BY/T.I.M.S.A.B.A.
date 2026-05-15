-- TITANIUM
data:extend
({
    {
        type = recipe,
        name = titanium_rod,
        category = crafting,
        subgroup = is_titanium_casting,
        icons = TWO_I(titanium_plate_bob, titanium_rod),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = item, name = titanium_plate_bob, amount = 1}},
        results = {{type = item, name = titanium_rod, amount = 2}},
        main_product = titanium_rod
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
        energy_required = , -- 
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]

-- STONE
hazard_concrete_processing = "hazard-concrete-processing"
reinforced_hazard_concrete_processing = "reinforced-hazard-concrete-processing"
reinforced_concrete_2 = "reinforced-concrete-2"
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
        name = reinforced_hazard_concrete_processing,
        category = crafting,
        subgroup = is_stone_casting,
        icons = TWO_I(reinforced_hazard_concrete, reinforced_concrete),
        order = d_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 0.25,
        ingredients = {{type = item, name = reinforced_hazard_concrete, amount = 1}},
        results = {{type = item, name = reinforced_concrete, amount = 1}}
    },
    {
        type = recipe,
        name = reinforced_concrete_2,
        category = crafting_fluid,
        subgroup = is_stone_casting,
        icons = AR_FOUR_ALT_I(concrete_liquid, iron_rod, nil, reinforced_concrete),
        order = c_a,
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
        results = {{type = item, name = reinforced_concrete, amount = 4}}
    },
    {
        type = recipe,
        name = refined_concrete_liquid,
        category = centrifuging_4,
        subgroup = is_stone_casting,
        icons = THREE_R_I(concrete_liquid, refined_concrete_liquid, slag_angels),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32, -- Liquid Concrete --> Refined liquid concrete + Slag
        ingredients = {{type = fluid, name = concrete_liquid, amount = 960}},
        results =
        {
            {type = fluid, name = refined_concrete_liquid, amount = 480},
            {type = item, name = slag_angels, amount = 32}
        },
        main_product = refined_concrete_liquid
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
        energy_required = , -- 
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]

-- BRICKS
data:extend
({
    {
        type = recipe,
        name = reinforced_titanium_concrete_brick,
        category = crafting_fluid,
        additional_categories = {metallurgy},
        subgroup = is_bricks_casting,
        icons = AR_FOUR_ALT_I(concrete_liquid, titanium_rod, stone_brick, reinforced_titanium_concrete_brick),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4, -- Titanium rod + Liquid concrete + Stone brick --> Reinforced titanium concrete brick
        ingredients =
        {
            {type = item, name = titanium_rod, amount = 4},
            {type = item, name = stone_brick, amount = 4},
            {type = fluid, name = concrete_liquid, amount = 60}
        },
        results = {{type = item, name = reinforced_titanium_concrete_brick, amount = 4}},
        main_product = reinforced_titanium_concrete_brick
    },
    {
        type = recipe,
        name = carbon_concrete_brick,
        category = crafting_fluid,
        additional_categories = {metallurgy},
        subgroup = is_bricks_casting,
        icon = data_item[carbon_concrete_brick].icon,
        icon_size = data_item[carbon_concrete_brick].icon_size,
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4, -- Carbon nanotube + Epoxy liquid resin + Hexamethylenediamine + Concrete brick --> Carbon concrete brick
        ingredients =
        {
            {type = item, name = concrete_brick, amount = 4},
            {type = item, name = carbon_nanotube, amount = 4},
            {type = item, name = hexamethylenediamine, amount = 4},
            {type = fluid, name = epoxy_resin_liquid, amount = 60}
        },
        results = {{type = item, name = carbon_concrete_brick, amount = 4}},
        main_product = carbon_concrete_brick
    },
    {
        type = recipe,
        name = reinforced_graphene_concrete_brick,
        category = metallurgy,
        subgroup = is_bricks_casting,
        icon = data_item[reinforced_graphene_concrete_brick].icon,
        icon_size = data_item[reinforced_graphene_concrete_brick].icon_size,
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Graphene + Refined liquid concrete + Ionic liquid ([C₇H₁₃N₂]PF₆(l)) + Nb-W-Mo Powder --> Reinforced graphene concrete brick
        ingredients =
        {
            {type = item, name = graphene, amount = 4},
            {type = item, name = niobium_tungsten_molybdenum_powder_mixture, amount = 4},
            {type = fluid, name = refined_concrete_liquid, amount = 60},
            {type = fluid, name = ionic_liquid, amount = 60}
        },
        results = {{type = item, name = reinforced_graphene_concrete_brick, amount = 4}},
        main_product = reinforced_graphene_concrete_brick
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
        energy_required = , -- 
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]