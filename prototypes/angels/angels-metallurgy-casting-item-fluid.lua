-- TITANIUM
titanium_rod = "titanium-rod"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Ti"} or nil,
        type = item,
        name = titanium_rod,
        subgroup = is_titanium_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/titanium/titanium-rod.png",
        order = d,
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
        stack_size = 200,
        weight = 5000
    }
})]]

-- STONE
-- FLUID
refined_concrete_liquid = "refined-liquid-concrete"
data:extend
({
    {
        type = fluid,
        name = refined_concrete_liquid,
        subgroup = is_stone_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/stone/refined-liquid-concrete.png",
        order = f,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = data_fluid[concrete_liquid].base_color,
        flow_color = data_fluid[concrete_liquid].flow_color,
        max_temperature = 0,
        auto_barrel = false
    }
})

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
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- BRICKS
reinforced_titanium_concrete_brick = "reinforced-titanium-concrete-brick"
carbon_concrete_brick = "carbon-concrete-brick"
reinforced_graphene_concrete_brick = "reinforced-graphene-concrete-brick"
data:extend
({
    {
        type = item,
        name = reinforced_titanium_concrete_brick,
        subgroup = is_bricks_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/stone/reinforced-titanium-concrete-brick.png",
        icon_size = 32,
        order = f,
        stack_size = 200,
        weight = 5000
    },
    {
        type = item,
        name = carbon_concrete_brick,
        subgroup = is_bricks_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/stone/carbon-concrete-brick.png",
        icon_size = 32,
        order = g,
        stack_size = 200,
        weight = 5000
    },
    {
        type = item,
        name = reinforced_graphene_concrete_brick,
        subgroup = is_bricks_casting,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/stone/reinforced-graphene-concrete-brick.png",
        icon_size = 32,
        order = h,
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
        stack_size = 200,
        weight = 5000
    }
})]]