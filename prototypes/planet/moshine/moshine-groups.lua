if mods[moshine_mods] then
    local moshine = "moshine"
    is_moshine_ore = "moshine-ore"
    is_moshine_new_recipe = "moshine-new-recipe"
    is_moshine_logistics = "moshine-logistics"
    is_moshine_building_energy = "moshine-building-energy"
    is_moshine_building = "moshine-building"
    is_moshine_recipe = "moshine-recipe"
    is_moshine_datacell = "moshine-datacell"
    is_moshine_core = "moshine-core"
    is_moshine_ai_core = "moshine-ai-core"
    data:extend
    ({
        {
            type = item_group,
            name = moshine,
            order = y,
            icon = "__TIMSABA__/graphics/icons/moshine/moshine-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_moshine_ore,
            group = moshine,
            order = a
        },
        {
            type = item_subgroup,
            name = is_moshine_new_recipe,
            group = moshine,
            order = b
        },
        {
            type = item_subgroup,
            name = is_moshine_logistics,
            group = moshine,
            order = c
        },
        {
            type = item_subgroup,
            name = is_moshine_building_energy,
            group = moshine,
            order = c_a
        },
        {
            type = item_subgroup,
            name = is_moshine_building,
            group = moshine,
            order = c_b
        },
        {
            type = item_subgroup,
            name = is_moshine_recipe,
            group = moshine,
            order = d
        },
        {
            type = item_subgroup,
            name = is_moshine_datacell,
            group = moshine,
            order = e
        },
        {
            type = item_subgroup,
            name = is_moshine_core,
            group = moshine,
            order = f
        },
        {
            type = item_subgroup,
            name = is_moshine_ai_core,
            group = moshine,
            order = g
        }
    })
end