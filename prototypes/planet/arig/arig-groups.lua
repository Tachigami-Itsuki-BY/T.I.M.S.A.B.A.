if mods [arig_mods] then
    local arig = "arig"
    is_arig_ore = "arig-ore"
    is_arig_new_recipe = "arig-new-recipe"
    is_arig_logistics = "arig-logistics"
    is_arig_building = "arig-building"
    is_arig_recipe = "arig-recipe"
    is_arig_water = "arig-water"
    data:extend
    ({
        {
            type = item_group,
            name = arig,
            order = y,
            icon = "__TIMSABA__/graphics/icons/arig/arig-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_arig_ore,
            group = arig,
            order = a
        },
        {
            type = item_subgroup,
            name = is_arig_new_recipe,
            group = arig,
            order = b
        },
        {
            type = item_subgroup,
            name = is_arig_logistics,
            group = arig,
            order = c
        },
        {
            type = item_subgroup,
            name = is_arig_building,
            group = arig,
            order = c_a
        },
        {
            type = item_subgroup,
            name = is_arig_recipe,
            group = arig,
            order = d
        },
        {
            type = item_subgroup,
            name = is_arig_water,
            group = arig,
            order = e
        }
    })
end