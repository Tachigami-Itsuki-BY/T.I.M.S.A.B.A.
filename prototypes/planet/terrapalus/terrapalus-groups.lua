if mods[terrapalus_mods] then
    local ig_terrapalus = "terrapalus"
    data:extend
    ({
        {
            type = item_group,
            name = ig_terrapalus,
            order = y_d,
            icon = "__TIMSABA__/graphics/icons/terrapalus/terrapalus-planet.png",
            icon_size = 128
        }
    })

    is_terrapalus_lamp = "terrapalus-lamp"
    is_terrapalus_station = "terrapalus-station"
    is_terrapalus_war = "terrapalus-war"
    is_terrapalus_turret = "terrapalus-turret"
    is_terrapalus_recipe = "terrapalus-recipe"
    is_terrapalus_battery = "terrapalus-battery"
    TIMSABA.functions.create_subgroups(ig_terrapalus,
    {
        {name = is_terrapalus_recipe,  order = a},
        {name = is_terrapalus_battery, order = b},
        {name = is_terrapalus_lamp,    order = c},
        {name = is_terrapalus_station, order = d},
        {name = is_terrapalus_war,     order = e},
        {name = is_terrapalus_turret,  order = f}
    })
end