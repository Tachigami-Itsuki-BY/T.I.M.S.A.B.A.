if mods [corrundum_mods] then
    local corrundum = "corrundum"
    is_corrundum_ore = "corrundum-ore"
    is_corrundum_new_recipe = "corrundum-new-recipe"
    is_corrundum_building = "corrundum-building"
    is_corrundum_recipe = "corrundum-recipe"
    is_corrundum_sulfur_recipe = "corrundum-sulfur-recipe"
    is_corrundum_war = "corrundum-war"
    data:extend
    ({
        {
            type = item_group,
            name = corrundum,
            order = y,
            icon = "__TIMSABA__/graphics/icons/corrundum/corrundum-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_corrundum_ore,
            group = corrundum,
            order = a
        },
        {
            type = item_subgroup,
            name = is_corrundum_new_recipe,
            group = corrundum,
            order = b
        },
        {
            type = item_subgroup,
            name = is_corrundum_building,
            group = corrundum,
            order = c
        },
        {
            type = item_subgroup,
            name = is_corrundum_recipe,
            group = corrundum,
            order = d
        },
        {
            type = item_subgroup,
            name = is_corrundum_sulfur_recipe,
            group = corrundum,
            order = d_a
        },
        {
            type = item_subgroup,
            name = is_corrundum_war,
            group = corrundum,
            order = e
        }
    })
end