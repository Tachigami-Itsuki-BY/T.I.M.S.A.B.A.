if settings.startup[setting_no_spoilage].value == false then
    is_freezing = "is-freezing"
    is_defrosting = "is-defrosting"
    TIMSABA.functions.create_subgroups(ig_aquilo,
    {
        {name = is_freezing, order = y},
        {name = is_defrosting, order = z}
    })

    for _, organic_name in pairs(TIMSABA.void.freezing) do
        if data_item[organic_name] or data_capsule[organic_name] or data_tool[organic_name] then
            -- ITEM
            data:extend
            ({
                {
                    localised_name = {"item-name.freezed", {"item-name." .. organic_name}},
                    type = item,
                    name = organic_name .. "-freezed",
                    subgroup = is_freezing,
                    icons = Freezed_I(ice, organic_name, ice_translucent_png),
                    order = organic_name .. "-freezed",
                    stack_size = 200,
                    hide_from_player_crafting = true,
                    spoil_ticks = ((data_item[organic_name] and data_item[organic_name].spoil_ticks) or (data_capsule[organic_name] and data_capsule[organic_name].spoil_ticks) or (data_tool[organic_name] and data_tool[organic_name].spoil_ticks)) * settings.startup[setting_defrost_multiplier].value,
                    spoil_result = organic_name
                }
            })

            -- RECIPE
            data:extend
            ({
                {
                    localised_name = {"recipe-name.freezing", {"item-name." .. organic_name}},
                    type = recipe,
                    name = organic_name .. "-freezed",
                    category = cryogenics,
                    subgroup = is_freezing,
                    icons = BUILDING_R_IS(organic_name, cooling_png),
                    order = organic_name .. "-freezed",
                    enabled = false,
                    auto_recycle = false,
                    allow_productivity = false,
                    allow_quality = false,
                    allow_decomposition = false,
                    hide_from_player_crafting = true,
                    energy_required = 8,
                    ingredients =
                    {
                        {type = item, name = organic_name, amount = 16},
                        {type = fluid, name = fluoroketone_cold, amount = 120}
                    },
                    results =
                    {
                        {type = item, name = organic_name .. "-freezed", amount = 16},
                        {type = fluid, name = fluoroketone_hot, amount = 60}
                    },
                    main_product = organic_name .. "-freezed"
                },
                {
                    localised_name = {"recipe-name.defrosting", {"item-name." .. organic_name}},
                    type = recipe,
                    name = organic_name .. "-defrosting",
                    category = cryogenics,
                    subgroup = is_defrosting,
                    icons = Defrosting_IS(ice, organic_name, ice_translucent_png, heating_png),
                    order = organic_name .. "-defrosting",
                    enabled = false,
                    auto_recycle = false,
                    allow_productivity = false,
                    allow_quality = false,
                    allow_decomposition = false,
                    hide_from_player_crafting = true,
                    energy_required = 8,
                    ingredients =
                    {
                        {type = item, name = organic_name .. "-freezed", amount = 16},
                        --{type = fluid, name = fluoroketone_hot, amount = 120}
                    },
                    results =
                    {
                        {type = item, name = organic_name, amount = 16},
                        --{type = fluid, name = fluoroketone_cold, amount = 120}
                    },
                    main_product = organic_name
                }
            })

            table.insert(data_technology[tech_aquilo_freezing].effects, {type = unlock_recipe, recipe = organic_name .. "-freezed"})
            table.insert(data_technology[tech_aquilo_freezing].effects, {type = unlock_recipe, recipe = organic_name .. "-defrosting"})
        end
    end
end