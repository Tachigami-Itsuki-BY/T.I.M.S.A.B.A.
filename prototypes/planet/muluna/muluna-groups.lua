if mods[muluna_mods] then
    local ig_muluna = "muluna"
    data:extend
    ({
        {
            type = item_group,
            name = ig_muluna,
            order = y_a,
            icon = "__TIMSABA__/graphics/icons/muluna/muluna-planet.png",
            icon_size = 128
        }
    })
    is_muluna_crushing = "is-muluna-crushing"
    is_muluna_recipe_anorthite = "is-muluna-recipe-anorthite"
    is_muluna_recipe_silicon = "is-muluna-recipe-silicon"
    is_muluna_SPS_silicon = "is-muluna-SPS-silicon"
    is_muluna_SPM_silicon = "is-muluna-SPM-silicon"
    is_muluna_SPL_silicon = "is-muluna-SPL-silicon"
    is_muluna_recipe_tree = "is-muluna-recipe-tree"
    is_muluna_recipe_cellulose = "is-muluna-recipe-cellulose"
    is_muluna_recipe = "is-muluna-recipe"
    is_muluna_boiler = "is-muluna-boiler"
    is_muluna_heating = "is-muluna-heating"
    is_muluna_turbine = "is-muluna-turbine"
    is_muluna_building = "is-muluna-building"
    is_muluna_astronomical = "is-muluna-astronomical"
    is_muluna_recipe_astronomical_planets = "is-muluna-recipe-astronomical-planets"
    is_muluna_recipe_astronomical_moons = "is-muluna-recipe-astronomical-moons"
    TIMSABA.functions.create_subgroups(ig_muluna,
    {
        {name = is_muluna_crushing,                    order = a},
        {name = is_muluna_recipe_anorthite,            order = b},
        {name = is_muluna_recipe_silicon,              order = c},
        {name = is_muluna_SPS_silicon,                 order = c_a},
        {name = is_muluna_SPM_silicon,                 order = c_b},
        {name = is_muluna_SPL_silicon,                 order = c_c},
        {name = is_muluna_recipe_tree,                 order = d},
        {name = is_muluna_recipe_cellulose,            order = e},
        {name = is_muluna_recipe,                      order = f},
        {name = is_muluna_boiler,                      order = g},
        {name = is_muluna_heating,                     order = h},
        {name = is_muluna_turbine,                     order = i},
        {name = is_muluna_building,                    order = j},
        {name = is_muluna_astronomical,                order = x},
        {name = is_muluna_recipe_astronomical_planets, order = y},
        {name = is_muluna_recipe_astronomical_moons,   order = z}
    })
end