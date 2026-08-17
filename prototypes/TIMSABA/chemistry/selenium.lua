-- GROUPS
is_selenium = "is-selenium"
TIMSABA.functions.create_subgroups(ig_petrochem_refining, {{name = is_selenium, order = s}})

-- ITEM
selenium = "selenium"
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
    }
})