local is_ores = "angels-ores"
if settings.startup[setting_no_spoilage].value then
    local types_to_clean = {"item", "ammo", "gun", "capsule", "tool", "repair-tool", "item-with-entity-data", "selection-tool"}
    for _, type_name in pairs(types_to_clean) do
        if data.raw[type_name] then
            for _, proto in pairs(data.raw[type_name]) do
                if proto.spoil_ticks then
                    proto.spoil_ticks = nil
                    proto.spoil_result = nil
                end
            end
        end
    end

    data.extend
    ({
        {
            type = recipe,
            name = ore_saphirite,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(saphirite_bacteria, ore_saphirite),
            order = a,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = saphirite_bacteria, amount = 1}},
            results = {{type = item, name = ore_saphirite, amount = 1}},
            main_product = ore_saphirite
        },
        {
            type = recipe,
            name = ore_jivolite,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(jivolite_bacteria, ore_jivolite),
            order = b,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = jivolite_bacteria, amount = 1}},
            results = {{type = item, name = ore_jivolite, amount = 1}},
            main_product = ore_jivolite
        },
        {
            type = recipe,
            name = ore_stiratite,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(stiratite_bacteria, ore_stiratite),
            order = c,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = stiratite_bacteria, amount = 1}},
            results = {{type = item, name = ore_stiratite, amount = 1}},
            main_product = ore_stiratite
        },
        {
            type = recipe,
            name = ore_crotinnium,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(crotinnium_bacteria, ore_crotinnium),
            order = d,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = crotinnium_bacteria, amount = 1}},
            results = {{type = item, name = ore_crotinnium, amount = 1}},
            main_product = ore_crotinnium
        },
        {
            type = recipe,
            name = ore_rubyte,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(rubyte_bacteria, ore_rubyte),
            order = e,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = rubyte_bacteria, amount = 1}},
            results = {{type = item, name = ore_rubyte, amount = 1}},
            main_product = ore_rubyte
        },
        {
            type = recipe,
            name = ore_bobmonium,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(bobmonium_bacteria, ore_bobmonium),
            order = f,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = bobmonium_bacteria, amount = 1}},
            results = {{type = item, name = ore_bobmonium, amount = 1}},
            main_product = ore_bobmonium
        },
        {
            type = recipe,
            name = spoilage,
            category = "angels-bio-void",
            subgroup = is_spoilage,
            icons = TWO_I(compost_angels, spoilage),
            order = a,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = compost_angels, amount = 1}},
            results = {{type = item, name = spoilage, amount = 1}},
            main_product = spoilage
        }
    })
end