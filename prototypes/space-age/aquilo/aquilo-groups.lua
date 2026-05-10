local aquilo = "aquilo"
is_aquilo_air = "is-aquilo-air"
is_aquilo_fluorine = "is-aquilo-fluorine"
is_antimonite = "is-antimonite"
is_germanite = "is-germanite"
is_aquilo_recipe = "is-aquilo-recipe"
is_aquilo_building = "is-aquilo-building"
is_aquilo_power = "is-aquilo-power"
is_aquilo_war = "is-aquilo-war"
data:extend
({
    {
        type = item_group,
        name = aquilo,
        order = y,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/aquilo-planet.png",
        icon_size = 128,
    },
    {
        type = item_subgroup,
        name = is_aquilo_air,
        group = aquilo,
        order = a
    },
    {
        type = item_subgroup,
        name = is_aquilo_fluorine,
        group = aquilo,
        order = b
    },
    {
        type = item_subgroup,
        name = is_antimonite,
        group = aquilo,
        order = c
    },
    {
        type = item_subgroup,
        name = is_germanite,
        group = aquilo,
        order = e
    },
    {
        type = item_subgroup,
        name = is_aquilo_recipe,
        group = aquilo,
        order = j
    },
    {
        type = item_subgroup,
        name = is_aquilo_building,
        group = aquilo,
        order = k
    },
    {
        type = item_subgroup,
        name = is_aquilo_power,
        group = aquilo,
        order = l
    },
    {
        type = item_subgroup,
        name = is_aquilo_war,
        group = aquilo,
        order = m
    }
})