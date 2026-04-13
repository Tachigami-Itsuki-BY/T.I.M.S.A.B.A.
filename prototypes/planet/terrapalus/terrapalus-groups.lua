if mods [terrapalus_mods] then
    local terrapalus = "terrapalus"
    is_terrapalus_ore = "terrapalus-ore"
    is_terrapalus_new_recipe = "terrapalus-new-recipe"
    is_terrapalus_lamp = "terrapalus-lamp"
    is_terrapalus_station = "terrapalus-station"
    is_terrapalus_war = "terrapalus-war"
    is_terrapalus_turret = "terrapalus-turret"
    is_terrapalus_recipe = "terrapalus-recipe"
    is_terrapalus_battery = "terrapalus-battery"
    data:extend
    ({
        {
            type = item_group,
            name = terrapalus,
            order = y,
            icon = "__TIMSABA__/graphics/icons/terrapalus/terrapalus-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_terrapalus_ore,
            group = terrapalus,
            order = a
        },
        {
            type = item_subgroup,
            name = is_terrapalus_new_recipe,
            group = terrapalus,
            order = b
        },
        {
            type = item_subgroup,
            name = is_terrapalus_lamp,
            group = terrapalus,
            order = c
        },
        {
            type = item_subgroup,
            name = is_terrapalus_station,
            group = terrapalus,
            order = c_a
        },
        {
            type = item_subgroup,
            name = is_terrapalus_war,
            group = terrapalus,
            order = c_b
        },
        {
            type = item_subgroup,
            name = is_terrapalus_turret,
            group = terrapalus,
            order = c_c
        },
        {
            type = item_subgroup,
            name = is_terrapalus_recipe,
            group = terrapalus,
            order = e
        },
        {
            type = item_subgroup,
            name = is_terrapalus_battery,
            group = terrapalus,
            order = e_a
        }
    })
end