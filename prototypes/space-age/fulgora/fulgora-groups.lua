local fulgora = "fulgora"
is_fulgora_air = "is-fulgora-air"
is_scrap = "is-scrap"
is_brannerite = "is-brannerite"
is_fulgora_recipe = "is-fulgora-recipe"
is_fulgora_building = "is-fulgora-building"
is_fulgora_war = "is-fulgora-war"
data:extend
({
    {
        type = item_group,
        name = fulgora,
        order = x_c,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/fulgora-planet.png",
        icon_size = 128,
    },
    {
        type = item_subgroup,
        name = is_fulgora_air,
        group = fulgora,
        order = a
    },
    {
        type = item_subgroup,
        name = is_scrap,
        group = fulgora,
        order = b
    },
    {
        type = item_subgroup,
        name = is_brannerite,
        group = fulgora,
        order = c
    },
    {
        type = item_subgroup,
        name = is_fulgora_recipe,
        group = fulgora,
        order = e
    },
    {
        type = item_subgroup,
        name = is_fulgora_building,
        group = fulgora,
        order = f
    },
    {
        type = item_subgroup,
        name = is_fulgora_war,
        group = fulgora,
        order = g
    }
})