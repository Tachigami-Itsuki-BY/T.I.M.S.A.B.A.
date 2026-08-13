ig_aquilo = "aquilo"
data:extend
({
    {
        type = item_group,
        name = ig_aquilo,
        order = data_planet[planet_aquilo].order,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/aquilo-planet.png",
        icon_size = 128,
    }
})

is_aquilo_air = "is-aquilo-air"
is_aquilo_fluorine = "is-aquilo-fluorine"
is_antimonite = "is-antimonite"
is_germanite = "is-germanite"
is_aquilo_recipe = "is-aquilo-recipe"
is_aquilo_building = "is-aquilo-building"
is_aquilo_power = "is-aquilo-power"
is_aquilo_war = "is-aquilo-war"
TIMSABA.functions.create_subgroups(ig_aquilo,
{
    {name = is_aquilo_air,      order = a},
    {name = is_aquilo_fluorine, order = b},
    {name = is_antimonite,      order = c},
    {name = is_germanite,       order = e},
    {name = is_aquilo_recipe,   order = j},
    {name = is_aquilo_building, order = k},
    {name = is_aquilo_power,    order = l},
    {name = is_aquilo_war,      order = m}
})