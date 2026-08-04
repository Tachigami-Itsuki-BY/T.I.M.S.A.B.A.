if mods[nexus_mods] then
    local nexus = "nexus"
    is_nexus_science_pack = "nexus-science-pack"
    data:extend
    ({
        {
            type = item_group,
            name = nexus,
            order = y,
            icon = "__TIMSABA__/graphics/icons/nexus/nexus-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_nexus_science_pack,
            group = nexus,
            order = z
        }
    })
end