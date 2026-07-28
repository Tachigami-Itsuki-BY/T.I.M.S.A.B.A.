-- GROUPS
local is_arsenic = "is-arsenic"
TIMSABA.functions.create_subgroups(ig_aquilo,
{
    {name = is_arsenic, order = i}
})

-- ITEM
arsenic = "arsenic"
arsenic_powder = "arsenic-powder"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "As"} or nil,
        name = arsenic,
        subgroup = is_arsenic,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/arsenic.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/arsenic-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/arsenic-2.png", width = 64, height = 64, scale = 0.5},
            --[[{filename = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/arsenic-3.png", width = 64, height = 64, scale = 0.5}]]
        },
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "As"} or nil,
        name = arsenic_powder,
        subgroup = is_arsenic,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/arsenic/arsenic-powder.png",
        order = b
    }
})

-- FLUID


-- RECIPE
TIMSABA.functions.create_recipes
({
    {
        name = arsenic_powder,
        category = powderizing_4,
        subgroup = is_arsenic,
        icons = TWO_I(arsenic, arsenic_powder),
        order = b,
        energy_required = 0.5,
        ingredients = {{type = item, name = arsenic, amount = 1}},
        results = {{type = item, name = arsenic_powder, amount = 1}},
        main_product = arsenic_powder
    }
})