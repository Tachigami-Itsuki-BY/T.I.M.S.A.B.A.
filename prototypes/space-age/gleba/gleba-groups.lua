local ig_gleba = "gleba"
data:extend
({
    {
        type = item_group,
        name = ig_gleba,
        order = data_planet[planet_gleba].order,
        icon = "__TIMSABA__/graphics/icons/space-age/gleba/gleba-planet.png",
        icon_size = 128,
    }
})

is_bacteria_ore = "is-bacteria-ore"
is_bacteria_cultivation = "is-bacteria-cultivation"
is_spoilage = "is-spoilage"
is_nutrients = "is-nutrients"
is_jellynut = "is-jellynut"
is_yumako = "is-yumako"
is_pentapod_egg_and_bioflux = "is-pentapod-egg-and-bioflux"
is_gleba_recipe = "is-gleba-recipe"
is_gleba_logistic = "is-gleba-logistic"
is_gleba_building = "is-gleba-building"
is_gleba_war = "is-gleba-war"
TIMSABA.functions.create_subgroups(ig_gleba,
{
    {name = is_bacteria_ore,             order = a},
    {name = is_bacteria_cultivation,     order = b},
    {name = is_spoilage,                 order = c},
    {name = is_nutrients,                order = d},
    {name = is_jellynut,                 order = e},
    {name = is_yumako,                   order = f},
    {name = is_pentapod_egg_and_bioflux, order = g},
    {name = is_gleba_recipe,             order = h},
    {name = is_gleba_logistic,           order = i},
    {name = is_gleba_building,           order = j},
    {name = is_gleba_war,                order = k}
})