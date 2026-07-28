if mods [bobtech] and mods [space_age_science_packs] then
    local list_base_or_space = {}
    if settings.startup[setting_science_pack_nostalgia].value then
        list_base_or_space =
        {
            metallurgic_science_pack,
            agricultural_science_pack,
            electromagnetic_science_pack,
            cryogenic_science_pack,
            promethium_science_pack
        }
    else
        list_base_or_space =
        {
            automation_science_pack,
            logistic_science_pack,
            military_science_pack,
            chemical_science_pack,
            production_science_pack,
            utility_science_pack,
            space_science_pack
        }
    end

    for _, pack in pairs(list_base_or_space) do
        data_tool[pack].icon = "__sa-science-packs__/graphics/items/sasp-" .. pack .. ".png"
        data_tool[pack].icons = nil
    end

    data_recipe[space_science_pack].icon = nil

    if mods [bobenemies] then
        if settings.startup[setting_science_pack_nostalgia].value == false then
            local list_bob_tech =
            {
                "bob-advanced-logistic-science-pack",
                "bob-alien-science-pack-orange",
                "bob-alien-science-pack-blue",
                "bob-alien-science-pack-yellow",
                "bob-alien-science-pack-purple",
                "bob-alien-science-pack-green",
                "bob-alien-science-pack-red",
                "bob-alien-science-pack",
                "bob-science-pack-gold"
            }
            for _, pack in pairs(list_bob_tech) do
                data_tool[pack].icon = "__TIMSABA__/graphics/icons/bobs/sasp-" .. pack .. ".png"
                data_tool[pack].icons = nil
            end
        end
    end
end