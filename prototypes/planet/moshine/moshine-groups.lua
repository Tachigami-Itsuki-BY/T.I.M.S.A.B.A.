if mods[moshine_mods] then
    local moshine = "moshine"
    is_moshine_ore = "is-moshine-ore"
    is_moshine_recipe = "is-moshine-recipe"
    is_monazite = "is-monazite"
    is_neodymium = "is-neodymium"
    is_neodymium_chemistry = "is-neodymium-chemistry"
    is_neodymium_casting = "is-neodymium-casting"
    is_cerium = "is-cerium"
    is_cerium_chemistry = "is-cerium-chemistry"
    is_cerium_casting = "is-cerium-casting"
    is_promethium = "is-promethium"
    is_promethium_chemistry = "is-promethium-chemistry"
    is_promethium_casting = "is-promethium-casting"
    is_barium = "is-barium"
    is_biotite_mica = "is-biotite-mica"
    is_moshine_datacell = "is-moshine-datacell"
    is_moshine_core = "is-moshine-core"
    is_moshine_ai_core = "is-moshine-ai-core"
    is_moshine_logistics = "is-moshine-logistics"
    is_moshine_logistics_battery = "is-moshine-logistics-battery"
    is_moshine_building_energy = "is-moshine-building-energy"
    is_moshine_building = "is-moshine-building"
    data:extend
    ({
        {
            type = item_group,
            name = moshine,
            order = x_e,
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
            name = is_moshine_recipe,
            group = moshine,
            order = b
        },
        {
            type = item_subgroup,
            name = is_monazite,
            group = moshine,
            order = c
        },
        {
            type = item_subgroup,
            name = is_neodymium,
            group = moshine,
            order = d
        },
        {
            type = item_subgroup,
            name = is_neodymium_chemistry,
            group = moshine,
            order = d_a
        },
        {
            type = item_subgroup,
            name = is_neodymium_casting,
            group = moshine,
            order = d_b
        },
        {
            type = item_subgroup,
            name = is_cerium,
            group = moshine,
            order = e
        },
        {
            type = item_subgroup,
            name = is_cerium_chemistry,
            group = moshine,
            order = e_a
        },
        {
            type = item_subgroup,
            name = is_cerium_casting,
            group = moshine,
            order = e_b
        },
        {
            type = item_subgroup,
            name = is_promethium,
            group = moshine,
            order = f
        },
        {
            type = item_subgroup,
            name = is_promethium_chemistry,
            group = moshine,
            order = f_a
        },
        {
            type = item_subgroup,
            name = is_promethium_casting,
            group = moshine,
            order = f_b
        },
        {
            type = item_subgroup,
            name = is_barium,
            group = moshine,
            order = g
        },
        {
            type = item_subgroup,
            name = is_biotite_mica,
            group = moshine,
            order = h
        },
        {
            type = item_subgroup,
            name = is_moshine_datacell,
            group = moshine,
            order = i
        },
        {
            type = item_subgroup,
            name = is_moshine_core,
            group = moshine,
            order = i_a
        },
        {
            type = item_subgroup,
            name = is_moshine_ai_core,
            group = moshine,
            order = i_b
        },
        {
            type = item_subgroup,
            name = is_moshine_logistics,
            group = moshine,
            order = j
        },
        {
            type = item_subgroup,
            name = is_moshine_logistics_battery,
            group = moshine,
            order = j_a
        },
        {
            type = item_subgroup,
            name = is_moshine_building_energy,
            group = moshine,
            order = k
        },
        {
            type = item_subgroup,
            name = is_moshine_building,
            group = moshine,
            order = l
        }
    })
end