if mods[secretas_frozeta_mods] then
    local ig_frozeta = "frozeta"
    data:extend
    ({
        {
            type = item_group,
            name = ig_frozeta,
            order = y_c,
            icon = "__TIMSABA__/graphics/icons/frozeta/frozeta-planet.png",
            icon_size = 128
        }
    })

    is_frozeta_air = "is-frozeta-air"
    is_frozeta_recipe = "is-frozeta-recipe"
    is_frozeta_building = "is-frozeta-building"
    TIMSABA.functions.create_subgroups(ig_frozeta,
    {
        {name = is_frozeta_air, order = a},
        {name = is_frozeta_recipe, order = b},
        {name = is_frozeta_building, order = c}
    })
end