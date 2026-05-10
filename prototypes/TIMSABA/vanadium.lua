-- GROUPS
local aquilo = "aquilo"
local is_vanadium = "is-vanadium"
local is_vanadium_chemistry = "is-vanadium-chemistry"
local is_vanadium_casting = "is-vanadium-casting"
data:extend
({
    {
        type = item_subgroup,
        name = is_vanadium,
        group = aquilo,
        order = h
    },
    {
        type = item_subgroup,
        name = is_vanadium_chemistry,
        group = aquilo,
        order = h_a
    },
    {
        type = item_subgroup,
        name = is_vanadium_casting,
        group = aquilo,
        order = h_b
    }
})

-- ITEM
vanadium_ore = "vanadium-ore"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "V"} or nil,
        type = item,
        name = vanadium_ore,
        subgroup = is_vanadium,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/vanadium-ore.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/vanadium-ore-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/vanadium-ore-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/vanadium-ore-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    }
})

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/.png",
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
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/.png",
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