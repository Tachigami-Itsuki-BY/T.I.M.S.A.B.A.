if mods [paracelsin_mods] then
    local paracelsin = "paracelsin"
    is_paracelsin_ore = "paracelsin-ore"
    is_paracelsin_new_recipe = "paracelsin-new-recipe"
    is_paracelsin_logistics = "paracelsin-logistics"
    is_paracelsin_building_energy = "paracelsin-building-energy"
    is_paracelsin_building = "paracelsin-building"
    is_paracelsin_mining = "paracelsin-mining"
    is_paracelsin_recipe = "paracelsin-recipe"
    is_paracelsin_recipe_nitric = "paracelsin-nitric"
    data:extend
    ({
        {
            type = item_group,
            name = paracelsin,
            order = y,
            icon = "__TIMSABA__/graphics/icons/paracelsin/paracelsin-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_paracelsin_ore,
            group = paracelsin,
            order = a
        },
        {
            type = item_subgroup,
            name = is_paracelsin_new_recipe,
            group = paracelsin,
            order = b
        },
        {
            type = item_subgroup,
            name = is_paracelsin_logistics,
            group = paracelsin,
            order = c
        },
        {
            type = item_subgroup,
            name = is_paracelsin_building_energy,
            group = paracelsin,
            order = c_a
        },
        {
            type = item_subgroup,
            name = is_paracelsin_building,
            group = paracelsin,
            order = c_b
        },
        {
            type = item_subgroup,
            name = is_paracelsin_mining,
            group = paracelsin,
            order = c_c
        },
        {
            type = item_subgroup,
            name = is_paracelsin_recipe,
            group = paracelsin,
            order = d
        },
        {
            type = item_subgroup,
            name = is_paracelsin_recipe_nitric,
            group = paracelsin,
            order = e
        }
    })
end