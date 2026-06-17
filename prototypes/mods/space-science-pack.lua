if mods [bobtech] and mods [space_age_science_packs] then
    local list_base_or_space = {}
    if settings.startup[setting_science_pack_nostalgia].value then
        list_base_or_space =
        {
            "metallurgic-science-pack",
            "electromagnetic-science-pack",
            "cryogenic-science-pack",
            "promethium-science-pack",
            "agricultural-science-pack"
        }
    else
        list_base_or_space =
        {
            "military-science-pack",
            "automation-science-pack",
            "chemical-science-pack",
            "space-science-pack",
            "logistic-science-pack",
            "utility-science-pack",
            "production-science-pack"
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