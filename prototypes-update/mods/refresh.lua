if settings.startup[setting_no_spoilage].value == false then
    if mods[apia_carnova_mods] then
        for _, organic_name in pairs(TIMSABA.void.freezing) do
            if data_item[organic_name] or data_capsule[organic_name] or data_tool[organic_name] then
                data:extend
                ({
                    {
                        localised_name = {"recipe-name.refresh", {"item-name." .. organic_name}},
                        type = recipe,
                        name = organic_name .. "-refresh",
                        category = "refresh",
                        subgroup = is_refresh,
                        icons = R_P_I(organic_name, lymph, nil, nil, dirty_lymph),
                        order = organic_name .. "-refresh",
                        enabled = false,
                        auto_recycle = false,
                        allow_productivity = false,
                        allow_quality = false,
                        allow_decomposition = false,
                        energy_required = 2,
                        ingredients =
                        {
                            {type = item, name = organic_name, amount = 1},
                            {type = fluid, name = lymph, amount = 15}
                        },
                        results =
                        {
                            {type = item, name = organic_name, amount = 1},
                            {type = fluid, name = dirty_lymph, amount = 15}
                        },
                        main_product = organic_name,
                        preserve_products_in_machine_output = true
                    }
                })

                table.insert(data_technology[tech_refreshment].effects, {type = unlock_recipe, recipe = organic_name .. "-refresh"})
            end
        end
    end
end