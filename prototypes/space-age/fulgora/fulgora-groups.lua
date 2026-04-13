local fulgora = "fulgora"
is_scrap = "is-scrap"
is_holmium = "is-holmium"
is_holmium_chemistry = "is-holmium-chemistry"
is_holmium_casting = "is-holmium-casting"
is_fulgora_air = "is-fulgora-air"
is_fulgora_recipe = "fulgora-recipe"
is_fulgora_building = "fulgora-building"
is_fulgora_war = "fulgora-war"
data:extend
({
    {
        type = item_group,
        name = fulgora,
        order = y,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/fulgora-planet.png",
        icon_size = 128,
    },
    {
        type = item_subgroup,
        name = is_scrap,
        group = fulgora,
        order = a
    },
    {
        type = item_subgroup,
        name = is_holmium,
        group = fulgora,
        order = b
    },
    {
        type = item_subgroup,
        name = is_holmium_chemistry,
        group = fulgora,
        order = b_a
    },
    {
        type = item_subgroup,
        name = is_holmium_casting,
        group = fulgora,
        order = b_b
    },
    {
        type = item_subgroup,
        name = is_fulgora_air,
        group = fulgora,
        order = c
    },
    {
        type = item_subgroup,
        name = is_fulgora_recipe,
        group = fulgora,
        order = d
    },
    {
        type = item_subgroup,
        name = is_fulgora_building,
        group = fulgora,
        order = e
    },
    {
        type = item_subgroup,
        name = is_fulgora_war,
        group = fulgora,
        order = f
    }
})