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