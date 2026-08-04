if mods[maraxsis_mods] then
    local maraxsis = "maraxsis"
    is_maraxsis_ore = "maraxsis-ore"
    is_maraxsis_new_recipe = "maraxsis-new-recipe"
    is_maraxsis_logistics = "maraxsis-logistics"
    is_maraxsis_building_energy = "maraxsis-building-energy"
    is_maraxsis_building = "maraxsis-building"
    is_maraxsis_building_fish = "maraxsis-building-fish"
    is_maraxsis_war = "maraxsis-war"
    is_maraxsis_recipe = "maraxsis-recipe"
    is_maraxsis_science = "maraxsis-science"
    data:extend
    ({
        {
            type = item_group,
            name = maraxsis,
            order = y,
            icon = "__TIMSABA__/graphics/icons/maraxsis/maraxsis-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_maraxsis_ore,
            group = maraxsis,
            order = a
        },
        {
            type = item_subgroup,
            name = is_maraxsis_new_recipe,
            group = maraxsis,
            order = b
        },
        {
            type = item_subgroup,
            name = is_maraxsis_logistics,
            group = maraxsis,
            order = c
        },
        {
            type = item_subgroup,
            name = is_maraxsis_building_energy,
            group = maraxsis,
            order = c_a
        },
        {
            type = item_subgroup,
            name = is_maraxsis_building,
            group = maraxsis,
            order = c_b
        },
        {
            type = item_subgroup,
            name = is_maraxsis_building_fish,
            group = maraxsis,
            order = c_c
        },
        {
            type = item_subgroup,
            name = is_maraxsis_war,
            group = maraxsis,
            order = c_d
        },
        {
            type = item_subgroup,
            name = is_maraxsis_recipe,
            group = maraxsis,
            order = d
        },
        {
            type = item_subgroup,
            name = is_maraxsis_science,
            group = maraxsis,
            order = e
        }
    })
end