-- GROUPS
local petrochem_refining = "angels-petrochem-refining"
local is_selenium = "is-selenium"
data:extend
({
    {
        type = item_subgroup,
        name = is_selenium,
        group = petrochem_refining,
        order = s
    }
})

-- ITEM
selenium = "selenium"
selenium_powder = "selenium-powder"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Se"} or nil,
        type = item,
        name = selenium,
        subgroup = is_selenium,
        icon = "__TIMSABA__/graphics/icons/angels/resource/selenium/selenium.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/angels/resource/selenium/selenium-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/resource/selenium/selenium-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            --[[{
                filename = "__TIMSABA__/graphics/icons/angels/resource/selenium/selenium-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }]]
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Se"} or nil,
        type = item,
        name = selenium_powder,
        subgroup = is_selenium,
        icon = "__TIMSABA__/graphics/icons/angels/resource/selenium/selenium-powder.png",
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
        icon = "__TIMSABA__/graphics/icons/angels/resource/selenium/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- RECIPE
data:extend
({
    {
        type = recipe,
        name = selenium_powder,
        category = powderizing_4,
        subgroup = is_selenium,
        icons = TWO_I(selenium, selenium_powder),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 0.5,
        ingredients = {{type = item, name = selenium, amount = 1}},
        results = {{type = item, name = selenium_powder, amount = 1}},
        main_product = selenium_powder
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