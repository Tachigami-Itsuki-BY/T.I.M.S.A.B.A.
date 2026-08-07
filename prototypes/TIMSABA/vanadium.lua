if not mods[shchierbin_mods] then
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
            icon = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/vanadium-ore.png",
            pictures =
            {
                {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/vanadium-ore-1.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/vanadium-ore-2.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/vanadium-ore-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        }
    })
end