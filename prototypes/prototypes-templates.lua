-- ITEM
--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons////.png",
        order = ,
        stack_size = 200,
        weight = 5000
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
        icon = "__TIMSABA__/graphics/icons////.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""), -- or -- base_color = {r =  / 255, g =  / 255, b =  / 255},
        flow_color = TIMSABA.functions.flow_color(""), -- or -- flow_color = {r =  / 255, g =  / 255, b =  / 255},
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- RECIPE
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

-- TECHNOLOGY
--[[data:extend
({
    {
        type = ,
        name = ,
        icon = ,
        icon_size = 256,
        prerequisites = {},
        effects = {{type = unlock_recipe, recipe = }},
        unit =
        {
            count = ,
            ingredients = {{, }},
            time = 
        }
    }
})]]