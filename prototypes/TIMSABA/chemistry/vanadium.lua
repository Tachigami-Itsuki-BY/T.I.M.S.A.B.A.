if not mods[shchierbin_mods] then
    local graphics_vanadium = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/"

    -- GROUPS
    local is_vanadium = "is-vanadium"
    TIMSABA.functions.create_subgroups(ig_aquilo, {{name = is_vanadium, order = h}})

    -- ITEM
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "V"} or nil,
            name = vanadium_ore,
            subgroup = is_vanadium,
            icon = graphics_vanadium .. vanadium_ore .. ".png",
            pictures =
            {
                {filename = graphics_vanadium .. vanadium_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_vanadium .. vanadium_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = graphics_vanadium .. vanadium_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        }
    })
end