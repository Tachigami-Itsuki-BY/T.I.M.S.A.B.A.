if mods [tellus_mods] then
    data:extend
    ({
        {
            type = recipe,
            name = magnesium_dust,
            category = powderizing_4,
            subgroup = is_tellus_magnesium,
            icons = TWO_I(magnesium_ore, magnesium_dust),
            order = b,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2,
            ingredients =
            {
                {type = item, name = magnesium_ore, amount = 4},
                {type = item, name = milling_drum_lubricated, amount = 1}
            },
            results =
            {
                {type = item, name = magnesium_dust, amount = 4},
                {type = item, name = milling_drum, amount = 1}
            },
            main_product = magnesium_dust
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
end