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

    local function spoil_recipe(parameters)
        local recipe_data =
        {
            type = recipe,
            name = parameters.ore,
            category = "angels-bio-void",
            subgroup = parameters.subgroup,
            icons = TWO_I(saphirite_bacteria, parameters.ore),
            order = parameters.order,
            enabled = true,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = parameters.bacteria, amount = 1}},
            results = {{type = item, name = parameters.ore, amount = 1}},
            main_product = parameters.ore
        }
        data:extend({recipe_data})
    end
    spoil_recipe({ore = ore_saphirite, bacteria = saphirite_bacteria, order = a, subgroup = is_ores})
    spoil_recipe({ore = ore_jivolite, bacteria = jivolite_bacteria, order = b, subgroup = is_ores})
    spoil_recipe({ore = ore_stiratite, bacteria = stiratite_bacteria, order = c, subgroup = is_ores})
    spoil_recipe({ore = ore_crotinnium, bacteria = crotinnium_bacteria, order = d, subgroup = is_ores})
    spoil_recipe({ore = ore_rubyte, bacteria = rubyte_bacteria, order = e, subgroup = is_ores})
    spoil_recipe({ore = ore_bobmonium, bacteria = bobmonium_bacteria, order = f, subgroup = is_ores})

    spoil_recipe({ore = spoilage, bacteria = compost_angels, order = a, subgroup = is_spoilage})

    if mods[tellus_mods] then
        spoil_recipe({ore = magnesium_ore, bacteria = magnesium_bacteria, order = a, subgroup = is_magnesium})
    end
end