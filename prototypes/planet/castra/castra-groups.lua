if mods[castra_mods] then
    local castra = "castra"
    is_castra_ore = "castra-ore"
    is_castra_new_recipe = "castra-new-recipe"
    is_castra_logistics = "castra-logistics"
    is_castra_building = "castra-building"
    is_castra_war = "castra-war"
    is_castra_recipe = "castra-recipe"
    data:extend
    ({
        {
            type = item_group,
            name = castra,
            order = y,
            icon = "__TIMSABA__/graphics/icons/castra/castra-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_castra_ore,
            group = castra,
            order = a
        },
        {
            type = item_subgroup,
            name = is_castra_new_recipe,
            group = castra,
            order = b
        },
        {
            type = item_subgroup,
            name = is_castra_logistics,
            group = castra,
            order = c
        },
        {
            type = item_subgroup,
            name = is_castra_building,
            group = castra,
            order = c_a
        },
        {
            type = item_subgroup,
            name = is_castra_war,
            group = castra,
            order = c_b
        },
        {
            type = item_subgroup,
            name = is_castra_recipe,
            group = castra,
            order = d
        }
    })
end