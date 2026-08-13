ig_fulgora = "fulgora"
data:extend
({
    {
        type = item_group,
        name = ig_fulgora,
        order = data_planet[planet_fulgora].order,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/fulgora-planet.png",
        icon_size = 128,
    }
})

is_fulgora_air = "is-fulgora-air"
is_scrap = "is-scrap"
is_brannerite = "is-brannerite"
is_fulgora_recipe = "is-fulgora-recipe"
is_fulgora_building = "is-fulgora-building"
is_fulgora_war = "is-fulgora-war"
TIMSABA.functions.create_subgroups(ig_fulgora,
{
    {name = is_fulgora_air,      order = a},
    {name = is_scrap,            order = b},
    {name = is_brannerite,       order = c},
    {name = is_fulgora_recipe,   order = e},
    {name = is_fulgora_building, order = f},
    {name = is_fulgora_war,      order = g}
})