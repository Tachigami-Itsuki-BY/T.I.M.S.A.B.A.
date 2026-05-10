-- GROUPS
local aquilo = "aquilo"
local is_arsenic = "is-arsenic"
data:extend
({
    {
        type = item_subgroup,
        name = is_arsenic,
        group = aquilo,
        order = i
    }
})

-- ITEM
arsenic = "arsenic"
arsenic_powder = "arsenic-powder"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "As"} or nil,
        type = item,
        name = arsenic,
        subgroup = is_arsenic,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/arsenic.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/arsenic-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/arsenic-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            --[[{
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/arsenic-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }]]
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "As"} or nil,
        type = item,
        name = arsenic_powder,
        subgroup = is_arsenic,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/arsenic-powder.png",
        order = b,
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
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/.png",
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
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- RECIPE
data:extend
({
    {
        type = recipe,
        name = arsenic_powder,
        category = powderizing_4,
        subgroup = is_arsenic,
        icons = TWO_I(arsenic, arsenic_powder),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 0.5,
        ingredients = {{type = item, name = arsenic, amount = 1}},
        results = {{type = item, name = arsenic_powder, amount = 1}},
        main_product = arsenic_powder
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