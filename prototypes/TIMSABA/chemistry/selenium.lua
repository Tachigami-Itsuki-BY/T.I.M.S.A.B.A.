-- GROUPS
local is_selenium = "is-selenium"
TIMSABA.functions.create_subgroups(ig_petrochem_refining,
{
    {name = is_selenium, order = s}
})

-- ITEM
selenium = "selenium"
selenium_powder = "selenium-powder"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Se"} or nil,
        name = selenium,
        subgroup = is_selenium,
        icon = "__TIMSABA__/graphics/icons/angels/resource/selenium/selenium.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/angels/resource/selenium/selenium-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/angels/resource/selenium/selenium-2.png", width = 64, height = 64, scale = 0.5},
            --[[{filename = "__TIMSABA__/graphics/icons/angels/resource/selenium/selenium-3.png", width = 64, height = 64, scale = 0.5}]]
        },
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Se"} or nil,
        name = selenium_powder,
        subgroup = is_selenium,
        icon = "__TIMSABA__/graphics/icons/angels/resource/selenium/selenium-powder.png",
        order = b
    }
})

-- RECIPE
TIMSABA.functions.create_recipes
({
    {
        name = selenium_powder,
        category = powderizing_4,
        subgroup = is_selenium,
        icons = TWO_I(selenium, selenium_powder),
        order = b,
        energy_required = 0.5,
        ingredients = {{type = item, name = selenium, amount = 1}},
        results = {{type = item, name = selenium_powder, amount = 1}},
        main_product = selenium_powder
    }
})