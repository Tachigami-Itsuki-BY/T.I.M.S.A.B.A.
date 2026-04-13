local aquilo = "aquilo"
is_antimony = "is-antimony"
is_antimony_chemistry = "is-antimony-chemistry"
is_antimony_casting = "is-antimony-casting"
is_aquilo_fluorine = "is-aquilo-fluorine"
is_aquilo_air = "is-aquilo-air"
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
        name = is_antimony,
        group = aquilo,
        order = a
    },
    {
        type = item_subgroup,
        name = is_antimony_chemistry,
        group = aquilo,
        order = a_a
    },
    {
        type = item_subgroup,
        name = is_antimony_casting,
        group = aquilo,
        order = a_b
    },
    {
        type = item_subgroup,
        name = is_aquilo_fluorine,
        group = aquilo,
        order = b
    },
    {
        type = item_subgroup,
        name = is_aquilo_air,
        group = aquilo,
        order = c
    },
    {
        type = item_subgroup,
        name = is_aquilo_recipe,
        group = aquilo,
        order = d
    },
    {
        type = item_subgroup,
        name = is_aquilo_building,
        group = aquilo,
        order = e
    },
    {
        type = item_subgroup,
        name = is_aquilo_power,
        group = aquilo,
        order = f
    },
    {
        type = item_subgroup,
        name = is_aquilo_war,
        group = aquilo,
        order = g
    }
})