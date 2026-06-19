-- TITANIUM ITEM
titanium_rod = "titanium-rod"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Ti"} or nil,
        name = titanium_rod,
        subgroup = is_titanium_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/titanium/titanium-rod.png",
        order = d
    }
})

-- STONE FLUID
refined_concrete_liquid = "refined-liquid-concrete"
TIMSABA.functions.create_fluids
({
    {
        name = refined_concrete_liquid,
        subgroup = is_stone_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/stone/refined-liquid-concrete.png",
        order = f,
        base_color = data_fluid[concrete_liquid].base_color,
        flow_color = data_fluid[concrete_liquid].flow_color
    }
})

-- BRICKS ITEM
reinforced_titanium_concrete_brick = "reinforced-titanium-concrete-brick"
carbon_concrete_brick = "carbon-concrete-brick"
reinforced_graphene_concrete_brick = "reinforced-graphene-concrete-brick"
TIMSABA.functions.create_items
({
    {
        name = reinforced_titanium_concrete_brick,
        subgroup = is_bricks_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/stone/reinforced-titanium-concrete-brick.png",
        icon_size = 32,
        order = f
    },
    {
        name = carbon_concrete_brick,
        subgroup = is_bricks_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/stone/carbon-concrete-brick.png",
        icon_size = 32,
        order = g
    },
    {
        name = reinforced_graphene_concrete_brick,
        subgroup = is_bricks_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/stone/reinforced-graphene-concrete-brick.png",
        icon_size = 32,
        order = h
    }
})