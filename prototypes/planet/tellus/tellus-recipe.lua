if mods[tellus_mods] then
    TIMSABA.functions.create_recipes
    ({
        {
            name = magnesium_dust,
            category = powderizing_4,
            subgroup = is_tellus_magnesium,
            icons = TWO_I(magnesium_ore, magnesium_dust),
            order = b,
            energy_required = 2,
            ingredients =
            {
                {type = item, name = magnesium_ore, amount = 4},
                {type = item, name = milling_drum_lubricated, amount = 1}
            },
            results =
            {
                {type = item, name = magnesium_dust, amount = 4},
                {type = item, name = milling_drum, amount = 1}
            },
            main_product = magnesium_dust
        }
    })

    -- COLORED PROTOTYPES
    if settings.startup[setting_dye_secondary_color].value then
        if data_item[alien_artifact] then
            TIMSABA.functions.create_recipes
            ({
                {
                    name = orange_dye,
                    category = centrifuging_4,
                    subgroup = is_dyes,
                    icons = THREE_D_I(alien_artifact_orange, nutrients, water, orange_dye),
                    order = a,
                    allow_productivity = true,
                    allow_quality = true,
                    ingredients =
                    {
                        {type = item, name = alien_artifact_orange, amount = 1},
                        {type = item, name = nutrients, amount = 8},
                        {type = fluid, name = water, amount = 30}
                    },
                    results = {{type = item, name = orange_dye, amount = 8}},
                    main_product = orange_dye,
                    surface_conditions =
                    {
                        {property = pressure, min = 2000, max = 2000},
                        {property = gravity, min = 20, max = 20},
                        {property = "magnetic-field", min = 25, max = 25}
                    }
                }
            })
        else
            TIMSABA.functions.create_recipes
            ({
                {
                    name = orange_dye,
                    category = centrifuging_4,
                    subgroup = is_dyes,
                    icons = THREE_D_I(crushed_cupric, nutrients, water, orange_dye),
                    order = a,
                    allow_productivity = true,
                    allow_quality = true,
                    ingredients =
                    {
                        {type = item, name = crushed_cupric, amount = 1},
                        {type = item, name = nutrients, amount = 8},
                        {type = fluid, name = water, amount = 30}
                    },
                    results = {{type = item, name = orange_dye, amount = 8}},
                    main_product = orange_dye,
                    surface_conditions =
                    {
                        {property = pressure, min = 2000, max = 2000},
                        {property = gravity, min = 20, max = 20},
                        {property = "magnetic-field", min = 25, max = 25}
                    }
                }
            })
        end

        TIMSABA.functions.create_recipes
        ({
            {
                type = recipe,
                name = black_dye,
                category = centrifuging_4,
                subgroup = is_dyes,
                icons = THREE_D_I(coal_crushed_angels, nutrients, water, black_dye),
                order = h,
                allow_productivity = true,
                allow_quality = true,
                ingredients =
                {
                    {type = item, name = coal_crushed_angels, amount = 1},
                    {type = item, name = nutrients, amount = 8},
                    {type = fluid, name = water, amount = 30}
                },
                results = {{type = item, name = black_dye, amount = 8}},
                main_product = black_dye,
                surface_conditions =
                {
                    {property = pressure, min = 2000, max = 2000},
                    {property = gravity, min = 20, max = 20},
                    {property = "magnetic-field", min = 25, max = 25}
                }
            }
        })
    end

    local function colored_recipe(name, subgroup, order, dye, item_name, amount)
        local recipe_data =
        {
            type = recipe,
            name = name,
            category = crafting,
            subgroup = subgroup,
            order = order,
            enabled = false,
            auto_recycle = true,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = dye, amount = 1},
                {type = item, name = item_name, amount = amount}
            },
            results = {{type = item, name = name, amount = amount}},
            main_product = name
        }

        data:extend({recipe_data})
    end
    if settings.startup[setting_dye_secondary_color].value then
        if settings.startup[setting_dye_pipes].value then
            colored_recipe(orange_pipe, is_tellus_pipe, a, orange_dye, stone_pipe, 32)
            colored_recipe(black_pipe,  is_tellus_pipe, z, black_dye,  stone_pipe, 32)

            colored_recipe(orange_pipe_to_ground, is_tellus_pipe_to_ground, a, orange_dye, stone_pipe_to_ground, 8)
            colored_recipe(black_pipe_to_ground,  is_tellus_pipe_to_ground, z, black_dye,  stone_pipe_to_ground, 8)
        end
        if settings.startup[setting_dye_stone_path].value then
            colored_recipe(orange_stone_brick, is_tellus_stone_brick, a, orange_dye, stone_brick, 4)
            colored_recipe(black_stone_brick,  is_tellus_stone_brick, z, black_dye,  stone_brick, 4)
        end
        if settings.startup[setting_dye_concrete].value then
            colored_recipe(orange_concrete, is_tellus_concrete, a, orange_dye, concrete, 8)
            colored_recipe(black_concrete,  is_tellus_concrete, z, black_dye,  concrete, 8)
        end
        if settings.startup[setting_dye_hazard_concrete].value then
            colored_recipe(orange_hazard_concrete, is_tellus_hazard_concrete, a, orange_dye, hazard_concrete, 8)
        end
        if settings.startup[setting_dye_reinforced_concrete].value then
            colored_recipe(orange_reinforced_hazard_concrete, is_tellus_reinforced_hazard_concrete, a, orange_dye, reinforced_hazard_concrete, 8)
        end
        if settings.startup[setting_dye_stone_wall].value then
            colored_recipe(orange_stone_wall, is_tellus_stone_wall, a, orange_dye, stone_wall, 4)
            colored_recipe(black_stone_wall,  is_tellus_stone_wall, z, black_dye,  stone_wall, 4)
        end
    end
    if settings.startup[setting_dye_concrete_brick].value then
        colored_recipe(blue_concrete_brick, is_tellus_concrete_brick, b, blue_dye, concrete_brick, 4)
        colored_recipe(green_concrete_brick, is_tellus_concrete_brick, e, green_dye, concrete_brick, 4)
        colored_recipe(red_concrete_brick, is_tellus_concrete_brick, f, red_dye, concrete_brick, 4)
    end
    if settings.startup[setting_dye_secondary_color].value then
        if settings.startup[setting_dye_concrete_brick].value then
            colored_recipe(orange_concrete_brick, is_tellus_concrete_brick, a, orange_dye, concrete_brick, 4)
            colored_recipe(yellow_concrete_brick, is_tellus_concrete_brick, c, yellow_dye, concrete_brick, 4)
            colored_recipe(magenta_concrete_brick, is_tellus_concrete_brick, d, magenta_dye, concrete_brick, 4)
            colored_recipe(cyan_concrete_brick, is_tellus_concrete_brick, g, cyan_dye, concrete_brick, 4)
            colored_recipe(black_concrete_brick, is_tellus_concrete_brick, h, black_dye, concrete_brick, 4)
        end
    end
end