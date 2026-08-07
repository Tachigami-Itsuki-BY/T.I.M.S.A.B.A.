if mods[shchierbin_mods] then
    local ig_shchierbin = "shchierbin"
    data:extend
    ({
        {
            type = item_group,
            name = ig_shchierbin,
            order = x_m,
            icon = "__TIMSABA__/graphics/icons/shchierbin/shchierbin-planet.png",
            icon_size = 128
        }
    })

    is_shchierbin_ore = "is-shchierbin-ore"
    is_shchierbin_vanadium = "is-shchierbin-vanadium"
    is_shchierbin_vanadium_chemistry = "is-shchierbin-vanadium-chemistry"
    is_shchierbin_vanadium_casting = "is-shchierbin-vanadium-casting"
    is_shchierbin_vanadium_steel = "is-shchierbin-vanadium-steel"
    is_shchierbin_titanium_aluminium_vanadium = "is_shchierbin_titanium_aluminium_vanadium"
    is_shchierbin_recipe = "is-shchierbin-recipe"
    TIMSABA.functions.create_subgroups(ig_shchierbin,
    {
        {name = is_shchierbin_ore,                         order = a},
        {name = is_shchierbin_vanadium,                    order = b},
        {name = is_shchierbin_vanadium_chemistry,          order = c},
        {name = is_shchierbin_vanadium_casting,            order = d},
        {name = is_shchierbin_vanadium_steel,              order = d_b},
        {name = is_shchierbin_titanium_aluminium_vanadium, order = d_c},
        {name = is_shchierbin_recipe,                      order = e}
    })
end