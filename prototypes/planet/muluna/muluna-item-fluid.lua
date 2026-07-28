if mods [muluna_mods] then
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "Al"} or nil,
            name = aluminium_cable,
            subgroup = is_muluna_recipe_anorthite,
            icon = "__TIMSABA__/graphics/icons/muluna/aluminium-cable.png",
            order = d
        }
    })
end