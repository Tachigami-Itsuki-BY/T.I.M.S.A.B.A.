if mods [muluna_mods] then
    local muluna = "muluna"
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
    is_muluna_recipe_astronomical = "is-muluna-recipe-astronomical"
    data:extend
    ({
        {
            type = item_group,
            name = muluna,
            order = y,
            icon = "__TIMSABA__/graphics/icons/muluna/muluna-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_muluna_crushing,
            group = muluna,
            order = a
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe_anorthite,
            group = muluna,
            order = b
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe_silicon,
            group = muluna,
            order = c
        },
        {
            type = item_subgroup,
            name = is_muluna_SPS_silicon,
            group = muluna,
            order = c_a
        },
        {
            type = item_subgroup,
            name = is_muluna_SPM_silicon,
            group = muluna,
            order = c_b
        },
        {
            type = item_subgroup,
            name = is_muluna_SPL_silicon,
            group = muluna,
            order = c_c
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe_tree,
            group = muluna,
            order = d
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe_cellulose,
            group = muluna,
            order = e
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe,
            group = muluna,
            order = f
        },
        {
            type = item_subgroup,
            name = is_muluna_boiler,
            group = muluna,
            order = g
        },
        {
            type = item_subgroup,
            name = is_muluna_heating,
            group = muluna,
            order = h
        },
        {
            type = item_subgroup,
            name = is_muluna_turbine,
            group = muluna,
            order = i
        },
        {
            type = item_subgroup,
            name = is_muluna_building,
            group = muluna,
            order = j
        },
        {
            type = item_subgroup,
            name = is_muluna_astronomical,
            group = muluna,
            order = y
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe_astronomical,
            group = muluna,
            order = z
        }
    })
end