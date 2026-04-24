local recipe = "recipe"
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
            name = saphirite_ore,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(saphirite_bacteria, saphirite_ore),
            order = a,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = saphirite_bacteria, amount = 1}},
            results = {{type = item, name = saphirite_ore, amount = 1}},
            main_product = saphirite_ore
        },
        {
            type = recipe,
            name = jivolite_ore,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(jivolite_bacteria, jivolite_ore),
            order = b,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = jivolite_bacteria, amount = 1}},
            results = {{type = item, name = jivolite_ore, amount = 1}},
            main_product = jivolite_ore
        },
        {
            type = recipe,
            name = stiratite_ore,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(stiratite_bacteria, stiratite_ore),
            order = c,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = stiratite_bacteria, amount = 1}},
            results = {{type = item, name = stiratite_ore, amount = 1}},
            main_product = stiratite_ore
        },
        {
            type = recipe,
            name = crotinnium_ore,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(crotinnium_bacteria, crotinnium_ore),
            order = d,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = crotinnium_bacteria, amount = 1}},
            results = {{type = item, name = crotinnium_ore, amount = 1}},
            main_product = crotinnium_ore
        },
        {
            type = recipe,
            name = rubyte_ore,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(rubyte_bacteria, rubyte_ore),
            order = e,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = rubyte_bacteria, amount = 1}},
            results = {{type = item, name = rubyte_ore, amount = 1}},
            main_product = rubyte_ore
        },
        {
            type = recipe,
            name = bobmonium_ore,
            category = "angels-bio-void",
            subgroup = is_ores,
            icons = TWO_I(bobmonium_bacteria, bobmonium_ore),
            order = f,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = bobmonium_bacteria, amount = 1}},
            results = {{type = item, name = bobmonium_ore, amount = 1}},
            main_product = bobmonium_ore
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