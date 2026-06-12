if mods [tellus_mods] then
    local tellus = "tellus"
    is_chloroplast = "is-chloroplast"
    is_tellus_magnesium = "is-tellus-magnesium"
    is_mycelia = "is-mycelia"
    --is_ = "is-"
    --is_ = "is-"
    --is_ = "is-"
    is_tellus_recipe = "is-tellus-recipe"
    data:extend
    ({
        {
            type = item_group,
            name = tellus,
            order = x_h,
            icon = "__TIMSABA__/graphics/icons/tellus/tellus-planet.png",
            icon_size = 128
        },
        {
            type = item_subgroup,
            name = is_chloroplast,
            group = tellus,
            order = a
        },
        {
            type = item_subgroup,
            name = is_tellus_magnesium,
            group = tellus,
            order = b
        },
        {
            type = item_subgroup,
            name = is_mycelia,
            group = tellus,
            order = c
        },
        --[[{
            type = item_subgroup,
            name = ,
            group = tellus,
            order = d
        },
        {
            type = item_subgroup,
            name = ,
            group = tellus,
            order = e
        },]]
        {
            type = item_subgroup,
            name = is_tellus_recipe,
            group = tellus,
            order = f
        }
    })
end