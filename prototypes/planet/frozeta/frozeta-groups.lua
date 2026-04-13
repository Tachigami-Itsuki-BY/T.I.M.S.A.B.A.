if mods[secretas_frozeta_mods] then
    local frozeta = "frozeta"
    is_frozeta_ore = "frozeta-ore"
    is_frozeta_new_recipe = "frozeta-new-recipe"
    is_frozeta_building = "frozeta-building"
    is_frozeta_recipe = "frozeta-recipe"
    data:extend
    ({
        {
            type = item_group,
            name = frozeta,
            order = y,
            icon = "__TIMSABA__/graphics/icons/frozeta/frozeta-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_frozeta_ore,
            group = frozeta,
            order = a
        },
        {
            type = item_subgroup,
            name = is_frozeta_new_recipe,
            group = frozeta,
            order = b
        },
        {
            type = item_subgroup,
            name = is_frozeta_building,
            group = frozeta,
            order = c
        },
        {
            type = item_subgroup,
            name = is_frozeta_recipe,
            group = frozeta,
            order = d
        }
    })
end