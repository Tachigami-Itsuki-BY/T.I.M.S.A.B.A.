if mods [muluna_mods] then
    local muluna = "muluna"
    is_muluna_ore ="muluna-ore"
    is_muluna_new_recipe = "muluna-new-recipe"
    is_muluna_logistics = "muluna-logistics"
    is_muluna_boiler = "muluna-boiler"
    is_muluna_heating = "muluna-heating"
    is_muluna_turbine = "muluna-turbine"
    is_muluna_building = "muluna-building"
    is_muluna_building_tree = "muluna-building-tree"
    is_muluna_building_crushing = "muluna-building-crushing"
    is_muluna_recipe_anorthite = "muluna-recipe-anorthite"
    is_muluna_recipe_silicon = "muluna-recipe-silicon"
    is_muluna_recipe_cellulose = "muluna-recipe-cellulose"
    is_muluna_recipe = "muluna-recipe"
    is_muluna_recipe_foundry = "muluna-recipe-foundry"
    is_muluna_recipe_astronomical = "muluna-recipe-astronomical"
    is_muluna_astronomical = "muluna-astronomical"
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
            name = is_muluna_ore,
            group = muluna,
            order = a
        },
        {
            type = item_subgroup,
            name = is_muluna_new_recipe,
            group = muluna,
            order = b
        },
        {
            type = item_subgroup,
            name = is_muluna_logistics,
            group = muluna,
            order = c
        },
        {
            type = item_subgroup,
            name = is_muluna_boiler,
            group = muluna,
            order = c_a
        },
        {
            type = item_subgroup,
            name = is_muluna_heating,
            group = muluna,
            order = c_b
        },
        {
            type = item_subgroup,
            name = is_muluna_turbine,
            group = muluna,
            order = c_c
        },
        {
            type = item_subgroup,
            name = is_muluna_building,
            group = muluna,
            order = c_d
        },
        {
            type = item_subgroup,
            name = is_muluna_building_tree,
            group = muluna,
            order = c_e
        },
        {
            type = item_subgroup,
            name = is_muluna_building_crushing,
            group = muluna,
            order = c_f
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe_anorthite,
            group = muluna,
            order = d
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe_silicon,
            group = muluna,
            order = d_a
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe_cellulose,
            group = muluna,
            order = d_b
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe,
            group = muluna,
            order = d_c
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe_foundry,
            group = muluna,
            order = d_d
        },
        {
            type = item_subgroup,
            name = is_muluna_recipe_astronomical,
            group = muluna,
            order = e
        },
        {
            type = item_subgroup,
            name = is_muluna_astronomical,
            group = muluna,
            order = e_a
        }
    })
end