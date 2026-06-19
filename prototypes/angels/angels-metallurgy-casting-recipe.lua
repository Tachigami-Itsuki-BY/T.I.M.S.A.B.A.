-- TITANIUM
TIMSABA.functions.create_recipes
({
    {
        name = titanium_rod,
        category = crafting,
        subgroup = is_titanium_casting,
        icons = TWO_I(titanium_plate_bob, titanium_rod),
        order = d,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = titanium_plate_bob, amount = 1}},
        results = {{type = item, name = titanium_rod, amount = 2}},
        main_product = titanium_rod
    }
})

-- STONE
hazard_concrete_processing = "hazard-concrete-processing"
reinforced_hazard_concrete_processing = "reinforced-hazard-concrete-processing"
reinforced_concrete_2 = "reinforced-concrete-2"
TIMSABA.functions.create_recipes
({
    {
        name = hazard_concrete_processing,
        category = crafting,
        subgroup = is_stone_casting,
        icons = TWO_I(hazard_concrete, concrete),
        order = b_a,
        energy_required = 0.25,
        ingredients = {{type = item, name = hazard_concrete, amount = 1}},
        results = {{type = item, name = concrete, amount = 1}},
        main_product = concrete
    },
    {
        name = reinforced_hazard_concrete_processing,
        category = crafting,
        subgroup = is_stone_casting,
        icons = TWO_I(reinforced_hazard_concrete, reinforced_concrete),
        order = d_a,
        energy_required = 0.25,
        ingredients = {{type = item, name = reinforced_hazard_concrete, amount = 1}},
        results = {{type = item, name = reinforced_concrete, amount = 1}},
        main_product = reinforced_concrete
    },
    {
        name = reinforced_concrete_2,
        category = crafting_fluid,
        subgroup = is_stone_casting,
        icons = AR_FOUR_ALT_I(concrete_liquid, iron_rod, nil, reinforced_concrete),
        order = c_a,
        allow_productivity = true,
        allow_quality = true,
        ingredients =
        {
            {type = item, name = iron_rod, amount = 4},
            {type = fluid, name = concrete_liquid, amount = 60}
        },
        results = {{type = item, name = reinforced_concrete, amount = 4}},
        main_product = reinforced_concrete
    },
    {
        name = refined_concrete_liquid,
        category = centrifuging_4,
        subgroup = is_stone_casting,
        icons = THREE_R_I(concrete_liquid, refined_concrete_liquid, slag_angels),
        order = f,
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

-- BRICKS
stone_brick_from_stone_crushed = "stone-brick-from-stone-crushed"
TIMSABA.functions.create_recipes
({
    {
        name = stone_brick_from_stone_crushed,
        category = smelting,
        additional_categories = {angels_sintering_1, metallurgy},
        subgroup = is_bricks_casting,
        icons = TWO_I(stone_crushed_angels, stone_brick),
        order = c_a,
        allow_productivity = true,
        allow_quality = true,
        ingredients = {{type = item, name = stone_crushed_angels, amount = 4}},
        results = {{type = item, name = stone_brick, amount = 1}},
        main_product = stone_brick
    },
    {
        name = reinforced_titanium_concrete_brick,
        category = crafting_fluid,
        subgroup = is_bricks_casting,
        icons = AR_FOUR_ALT_I(concrete_liquid, titanium_rod, stone_brick, reinforced_titanium_concrete_brick),
        order = f,
        allow_productivity = true,
        allow_quality = true,
        -- Titanium rod + Liquid concrete + Stone brick --> Reinforced titanium concrete brick
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
        name = carbon_concrete_brick,
        category = crafting_fluid,
        subgroup = is_bricks_casting,
        order = g,
        allow_productivity = true,
        allow_quality = true, -- Carbon nanotube + Epoxy liquid resin + Hexamethylenediamine + Concrete brick --> Carbon concrete brick
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
        name = reinforced_graphene_concrete_brick,
        category = metallurgy,
        subgroup = is_bricks_casting,
        order = h,
        allow_productivity = true,
        allow_quality = true, -- Graphene + Refined liquid concrete + Ionic liquid ([C₇H₁₃N₂]PF₆(l)) + Nb-W-Mo Powder --> Reinforced graphene concrete brick
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