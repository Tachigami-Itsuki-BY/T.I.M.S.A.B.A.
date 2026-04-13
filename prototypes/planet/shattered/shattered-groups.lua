if mods [shattered_mods] then
    local shattered = "shattered"
    is_shattered_ore = "shattered-ore"
    is_shattered_new_recipe = "shattered-new-recipe"
    is_shattered_deep_mining = "shattered-deep-mining"
    is_shattered_alt_recipe = "shattered-alt-recipe"
    is_shattered_recipe = "shattered-recipe"
    is_shattered_recipe_promethium = "shattered-recipe-promethium"
    is_shattered_recipe_transformation = "shattered-recipe-transformation"
    is_shattered_building = "shattered-building"
    is_shattered_thorium = "shattered-thorium"
    is_shattered_uranium_233 = "shattered-uranium-233"
    is_shattered_uranium_235 = "shattered-uranium-235"
    is_shattered_uranium_238 = "shattered-uranium-238"
    is_shattered_plutonium_238 = "shattered-plutonium-238"
    is_shattered_plutonium_239 = "shattered-plutonium-239"
    is_shattered_plutonium_241 = "shattered-plutonium-241"
    is_shattered_plutonium_242 = "shattered-plutonium-242"
    is_shattered_neptunium_236 = "shattered-neptunium-236"
    is_shattered_neptunium_237 = "shattered-neptunium-237"
    is_shattered_americium_241 = "shattered-americium-241"
    is_shattered_americium_242 = "shattered-americium-242"
    is_shattered_americium_243 = "shattered-americium-243"
    is_shattered_berkelium_247 = "shattered-berkelium-247"
    is_shattered_berkelium_248 = "shattered-berkelium-248"
    is_shattered_curium_243 = "shattered-curium-243"
    is_shattered_curium_245 = "shattered-curium-245"
    is_shattered_curium_246 = "shattered-curium-246"
    is_shattered_curium_247 = "shattered-curium-247"
    is_shattered_californium_249 = "shattered-californium-249"
    is_shattered_californium_250 = "shattered-californium-250"
    is_shattered_californium_251 = "shattered-californium-251"
    is_shattered_californium_252 = "shattered-californium-252"
    is_shattered_others = "shattered-others"
    is_shattered_unsorted = "shattered-unsorted"
    data.extend
    ({
        {
            type = item_group,
            name = shattered,
            order = y,
            icon = "__TIMSABA__/graphics/icons/shattered/shattered-planet.png",
            icon_size = 128,
        },
        {
            type = item_subgroup,
            name = is_shattered_ore,
            group = shattered,
            order = a
        },
        {
            type = item_subgroup,
            name = is_shattered_new_recipe,
            group = shattered,
            order = b
        },
        {
            type = item_subgroup,
            name = is_shattered_deep_mining,
            group = shattered,
            order = c
        },
        {
            type = item_subgroup,
            name = is_shattered_alt_recipe,
            group = shattered,
            order = c_a
        },
        {
            type = item_subgroup,
            name = is_shattered_recipe,
            group = shattered,
            order = d
        },
        {
            type = item_subgroup,
            name = is_shattered_recipe_promethium,
            group = shattered,
            order = d
        },
        {
            type = item_subgroup,
            name = is_shattered_recipe_transformation,
            group = shattered,
            order = d_b
        },
        {
            type = item_subgroup,
            name = is_shattered_building,
            group = shattered,
            order = e
        },
        {
            type = item_subgroup,
            name = is_shattered_thorium,
            group = shattered,
            order = e_a
        },
        {
            type = item_subgroup,
            name = is_shattered_uranium_233,
            group = shattered,
            order = f
        },
        {
            type = item_subgroup,
            name = is_shattered_uranium_235,
            group = shattered,
            order = f_a
        },
        {
            type = item_subgroup,
            name = is_shattered_uranium_238,
            group = shattered,
            order = f_b
        },
        {
            type = item_subgroup,
            name = is_shattered_plutonium_238,
            group = shattered,
            order = g
        },
        {
            type = item_subgroup,
            name = is_shattered_plutonium_239,
            group = shattered,
            order = g_a
        },
        {
            type = item_subgroup,
            name = is_shattered_plutonium_241,
            group = shattered,
            order = g_b
        },
        {
            type = item_subgroup,
            name = is_shattered_plutonium_242,
            group = shattered,
            order = g_c
        },
        {
            type = item_subgroup,
            name = is_shattered_neptunium_236,
            group = shattered,
            order = h
        },
        {
            type = item_subgroup,
            name = is_shattered_neptunium_237,
            group = shattered,
            order = h_a
        },
        {
            type = item_subgroup,
            name = is_shattered_americium_241,
            group = shattered,
            order = i
        },
        {
            type = item_subgroup,
            name = is_shattered_americium_242,
            group = shattered,
            order = i_a
        },
        {
            type = item_subgroup,
            name = is_shattered_americium_243,
            group = shattered,
            order = i_b
        },
        {
            type = item_subgroup,
            name = is_shattered_berkelium_247,
            group = shattered,
            order = j
        },
        {
            type = item_subgroup,
            name = is_shattered_berkelium_248,
            group = shattered,
            order = j_a
        },
        {
            type = item_subgroup,
            name = is_shattered_curium_243,
            group = shattered,
            order = k
        },
        {
            type = item_subgroup,
            name = is_shattered_curium_245,
            group = shattered,
            order = k_a
        },
        {
            type = item_subgroup,
            name = is_shattered_curium_246,
            group = shattered,
            order = k_b
        },
        {
            type = item_subgroup,
            name = is_shattered_curium_247,
            group = shattered,
            order = k_c
        },
        {
            type = item_subgroup,
            name = is_shattered_californium_249,
            group = shattered,
            order = l
        },
        {
            type = item_subgroup,
            name = is_shattered_californium_250,
            group = shattered,
            order = l_a
        },
        {
            type = item_subgroup,
            name = is_shattered_californium_251,
            group = shattered,
            order = l_b
        },
        {
            type = item_subgroup,
            name = is_shattered_californium_252,
            group = shattered,
            order = l_c
        },
        {
            type = item_subgroup,
            name = is_shattered_others,
            group = shattered,
            order = m
        },
        {
            type = item_subgroup,
            name = is_shattered_unsorted,
            group = shattered,
            order = z
        }
    })
end