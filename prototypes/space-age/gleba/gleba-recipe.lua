-- RESOURCE
jivolite_bacteria_cultivation = "jivolite-bacteria-cultivation"
crotinnium_bacteria_cultivation = "crotinnium-bacteria-cultivation"
rubyte_bacteria_cultivation = "rubyte-bacteria-cultivation"
bobmonium_bacteria_cultivation = "bobmonium-bacteria-cultivation"
TIMSABA.functions.create_recipes
({
    {
        name = jivolite_bacteria,
        category = organic_hand_crafting,
        subgroup = is_bacteria_ore,
        icons = TWO_D_I(jelly, nil, jivolite_bacteria, spoilage),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = jelly, amount = 8}},
        results =
        {
            {type = item, name = jivolite_bacteria, amount = 1, probability = 0.25},
            {type = item, name = spoilage, amount = 4}
        },
        main_product = jivolite_bacteria,
        surface_conditions = {{property = pressure, min = 2000, max = 2000}}
    },
    {
        name = crotinnium_bacteria,
        category = organic_hand_crafting,
        subgroup = is_bacteria_ore,
        icons = TWO_D_I(yumako_mash, nil, crotinnium_bacteria, spoilage),
        order = d,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = yumako_mash, amount = 8}},
        results =
        {
            {type = item, name = crotinnium_bacteria, amount = 1, probability = 0.25},
            {type = item, name = spoilage, amount = 4}
        },
        main_product = crotinnium_bacteria,
        surface_conditions = {{property = pressure, min = 2000, max = 2000}}
    },
    {
        name = rubyte_bacteria,
        category = organic_hand_crafting,
        subgroup = is_bacteria_ore,
        icons = TWO_D_I(jelly, yumako_mash, rubyte_bacteria, spoilage),
        order = e,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = jelly, amount = 8},
            {type = item, name = yumako_mash, amount = 4}
        },
        results =
        {
            {type = item, name = rubyte_bacteria, amount = 1, probability = 0.25},
            {type = item, name = spoilage, amount = 4}
        },
        main_product = rubyte_bacteria,
        surface_conditions = {{property = pressure, min = 2000, max = 2000}}
    },
    {
        name = bobmonium_bacteria,
        category = organic_hand_crafting,
        subgroup = is_bacteria_ore,
        icons = TWO_D_I(yumako_mash, jelly, bobmonium_bacteria, spoilage),
        order = f,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = yumako_mash, amount = 8},
            {type = item, name = jelly, amount = 4}
        },
        results =
        {
            {type = item, name = bobmonium_bacteria, amount = 1, probability = 0.25},
            {type = item, name = spoilage, amount = 4}
        },
        main_product = bobmonium_bacteria,
        surface_conditions = {{property = pressure, min = 2000, max = 2000}}
    },
    {
        name = jivolite_bacteria_cultivation,
        category = organic,
        subgroup = is_bacteria_cultivation,
        icons = STONKS_I(stonks_png, jivolite_bacteria),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        ingredients =
        {
            {type = item, name = jivolite_bacteria, amount = 2},
            {type = item, name = bioflux, amount = 1}
        },
        results = {{type = item, name = jivolite_bacteria, amount = 4}},
        main_product = jivolite_bacteria,
        surface_conditions = {{property = pressure, min = 2000, max = 2000}}
    },
    {
        name = crotinnium_bacteria_cultivation,
        category = organic,
        subgroup = is_bacteria_cultivation,
        icons = STONKS_I(stonks_png, crotinnium_bacteria),
        order = d,
        allow_productivity = true,
        allow_quality = true,
        ingredients =
        {
            {type = item, name = crotinnium_bacteria, amount = 2},
            {type = item, name = bioflux, amount = 1}
        },
        results = {{type = item, name = crotinnium_bacteria, amount = 4}},
        main_product = crotinnium_bacteria,
        surface_conditions = {{property = pressure, min = 2000, max = 2000}}
    },
    {
        name = rubyte_bacteria_cultivation,
        category = organic,
        subgroup = is_bacteria_cultivation,
        icons = STONKS_I(stonks_png, rubyte_bacteria),
        order = e,
        allow_productivity = true,
        allow_quality = true,
        ingredients =
        {
            {type = item, name = rubyte_bacteria, amount = 2},
            {type = item, name = bioflux, amount = 1}
        },
        results = {{type = item, name = rubyte_bacteria, amount = 4}},
        main_product = rubyte_bacteria,
        surface_conditions = {{property = pressure, min = 2000, max = 2000}}
    },
    {
        name = bobmonium_bacteria_cultivation,
        category = organic,
        subgroup = is_bacteria_cultivation,
        icons = STONKS_I(stonks_png, bobmonium_bacteria),
        order = f,
        allow_productivity = true,
        allow_quality = true,
        ingredients =
        {
            {type = item, name = bobmonium_bacteria, amount = 2},
            {type = item, name = bioflux, amount = 1}
        },
        results = {{type = item, name = bobmonium_bacteria, amount = 4}},
        main_product = bobmonium_bacteria,
        surface_conditions = {{property = pressure, min = 2000, max = 2000}}
    }
})

-- NUTRIENTS
tech_gleba_biology = "gleba-biology"
recipe_nutrients =
{
    {name = jelly,                order = a_b, ingredient = 4, result = 4},
    {name = algae_green,          order = a_f, ingredient = 4, result = 4,   unlock_recipe = tech_gleba_biology},
    {name = algae_brown,          order = a_g, ingredient = 4, result = 8,   unlock_recipe = tech_gleba_biology},
    {name = algae_red,            order = a_h, ingredient = 4, result = 16,  unlock_recipe = tech_gleba_biology},
    {name = algae_blue,           order = a_i, ingredient = 4, result = 16,  unlock_recipe = tech_gleba_biology},
    {name = beans,                order = a_j, ingredient = 4, result = 32,  unlock_recipe = tech_gleba_biology},
    {name = corn,                 order = a_k, ingredient = 4, result = 32,  unlock_recipe = tech_gleba_biology},
    {name = leaves,               order = a_l, ingredient = 4, result = 8,   unlock_recipe = tech_gleba_biology},
    {name = nuts,                 order = a_m, ingredient = 4, result = 32,  unlock_recipe = tech_gleba_biology},
    {name = pips,                 order = a_n, ingredient = 4, result = 64,  unlock_recipe = tech_gleba_biology},
    {name = fruits,               order = a_o, ingredient = 4, result = 64,  unlock_recipe = tech_gleba_biology},
    {name = raw_meat,             order = a_p, ingredient = 1, result = 128, unlock_recipe = tech_gleba_biology},
    {name = fish_pulp,            order = a_q, ingredient = 1, result = 64,  unlock_recipe = tech_gleba_biology},
    {name = levac_fish,           order = a_s, ingredient = 1, result = 16},
    {name = dorflurp_jellyfish,   order = a_t, ingredient = 1, result = 16},
    {name = santa_ray,            order = a_u, ingredient = 1, result = 16},
    {name = gaseous_puffer_egg,   order = b_a, ingredient = 1, result = 4,  unlock_recipe = tech_gleba_biology},
    {name = rancid_puffer_egg,    order = b_b, ingredient = 1, result = 8,  unlock_recipe = tech_gleba_biology},
    {name = blazing_puffer_egg,   order = b_c, ingredient = 1, result = 16, unlock_recipe = tech_gleba_biology},
    {name = acidic_puffer_egg,    order = b_d, ingredient = 1, result = 32, unlock_recipe = tech_gleba_biology},
    {name = corrosive_puffer_egg, order = b_e, ingredient = 1, result = 64, unlock_recipe = tech_gleba_biology},
    {name = gaseous_puffer,       order = b_a, ingredient = 1, result = 16, unlock_recipe = tech_gleba_biology},
    {name = rancid_puffer,        order = b_b, ingredient = 1, result = 16, unlock_recipe = tech_gleba_biology},
    {name = blazing_puffer,       order = b_c, ingredient = 1, result = 16, unlock_recipe = tech_gleba_biology},
    {name = acidic_puffer,        order = b_d, ingredient = 1, result = 16, unlock_recipe = tech_gleba_biology},
    {name = corrosive_puffer,     order = b_e, ingredient = 1, result = 16, unlock_recipe = tech_gleba_biology},
    {name = biter_small_egg,      order = b_f, ingredient = 1, result = 4,  unlock_recipe = tech_gleba_biology},
    {name = biter_small,          order = b_g, ingredient = 1, result = 8,  unlock_recipe = tech_gleba_biology},
    {name = biter_queen_small,    order = b_h, ingredient = 1, result = 16, unlock_recipe = tech_gleba_biology},
    {name = biter_medium_egg,     order = b_i, ingredient = 1, result = 8,  unlock_recipe = tech_gleba_biology},
    {name = biter_medium,         order = b_j, ingredient = 1, result = 16, unlock_recipe = tech_gleba_biology},
    {name = biter_queen_medium,   order = b_k, ingredient = 1, result = 32, unlock_recipe = tech_gleba_biology},
    {name = biter_big_egg,        order = b_l, ingredient = 1, result = 16, unlock_recipe = tech_gleba_biology},
    {name = biter_big,            order = b_m, ingredient = 1, result = 32, unlock_recipe = tech_gleba_biology},
    {name = biter_queen_big,      order = b_n, ingredient = 1, result = 64, unlock_recipe = tech_gleba_biology}
}
for _, RECIPE in ipairs(recipe_nutrients) do
    data:extend
    ({
        {
            localised_name = {"recipe-name.nutrients-from", {"item-name." .. RECIPE.name}},
            type = recipe,
            name = "nutrients-from-" .. RECIPE.name,
            category = organic,
            subgroup = is_nutrients,
            icons = TWO_I(RECIPE.name, nutrients),
            order = RECIPE.order,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            reset_freshness_on_craft = true, -- new
            energy_required = 2,
            ingredients = {{type = item, name = RECIPE.name, amount = RECIPE.ingredient}},
            results = {{type = item, name = nutrients, amount = RECIPE.result}},
            main_product = nutrients
        }
    })
end

nutrient_pulp_from_nutrients = "nutrient-pulp-from-nutrients"
TIMSABA.functions.create_recipes
({
    {
        name = nutrient_pulp_from_nutrients,
        category = chemistry,
        subgroup = is_gleba_recipe,
        icons = THREE_I(nutrients, water, nutrient_pulp),
        order = f_a,
        ingredients =
        {
            {type = item, name = nutrients, amount = 32},
            {type = fluid, name = water, amount = 120}
        },
        results = {{type = fluid, name = nutrient_pulp, amount = 120}},
        main_product = nutrient_pulp
    }
})

-- BREEDING
recipe_breeding_fish =
{
    {name = levac_fish,         order = d_b, ingredient = algae_brown},
    {name = dorflurp_jellyfish, order = d_c, ingredient = algae_green},
    {name = santa_ray,          order = d_d, ingredient = raw_meat}
}
for _, RECIPE in ipairs(recipe_breeding_fish) do
    data:extend
    ({
        {
            localised_name = {"recipe-name.breeding", {"item-name." .. RECIPE.name}},
            type = recipe,
            name = "breeding-" .. RECIPE.name,
            category = "angels-bio-refugium-fish",
            subgroup = is_gleba_recipe,
            icons = STONKS_I(stonks_png, RECIPE.name),
            order = RECIPE.order,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            reset_freshness_on_craft = true, -- new
            energy_required = 32,
            ingredients =
            {
                {type = item, name = RECIPE.name, amount = 2},
                {type = item, name = RECIPE.ingredient, amount = 8},
                {type = item, name = nutrients, amount = 64},
                {type = fluid, name = nutrient_pulp, amount = 120},
                {type = fluid, name = water_for_fish, amount = 120}
            },
            results =
            {
                {type = item, name = RECIPE.name, amount_min = 8, amount_max = 16},
                {type = fluid, name = polluted_water_for_fish, amount = 120, ignored_by_productivity = 120}
            },
            main_product = RECIPE.name
        }
    })
end

recipe_breeding_puffer =
{
    {name = gaseous_puffer,   order = e_a, ingredient = beans,  unlock_recipe = tech_gleba_biology},
    {name = rancid_puffer,    order = e_b, ingredient = leaves, unlock_recipe = tech_gleba_biology},
    {name = blazing_puffer,   order = e_c, ingredient = nuts,   unlock_recipe = tech_gleba_biology},
    {name = acidic_puffer,    order = e_d, ingredient = pips,   unlock_recipe = tech_gleba_biology},
    {name = corrosive_puffer, order = e_e, ingredient = fruits, unlock_recipe = tech_gleba_biology}
}
for _, RECIPE in ipairs(recipe_breeding_puffer) do
    data:extend
    ({
        {
            localised_name = {"recipe-name.breeding", {"item-name." .. RECIPE.name}},
            type = recipe,
            name = "breeding-" .. RECIPE.name,
            category = "angels-bio-refugium-puffer",
            subgroup = is_gleba_recipe,
            icons = STONKS_I(stonks_png, RECIPE.name),
            order = RECIPE.order,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            reset_freshness_on_craft = true, -- new
            energy_required = 32,
            ingredients =
            {
                {type = item, name = RECIPE.name, amount = 2},
                {type = item, name = RECIPE.ingredient, amount = 16},
                {type = item, name = nutrients, amount = 128},
                {type = fluid, name = nutrient_pulp, amount = 120},
                {type = fluid, name = puffer_atmosphere, amount = 30}
            },
            results =
            {
                {type = item, name = RECIPE.name, amount = 4},
                {type = fluid, name = acid_angels, amount = 30, ignored_by_productivity = 30}
            },
            main_product = RECIPE.name
        }
    })
end

--[[recipe_breeding_biter =
{
    {name = biter_small,        order = f_a, ingredient = , unlock_recipe = tech_gleba_biology},
    {name = biter_queen_small,  order = f_b, ingredient = , unlock_recipe = tech_gleba_biology},
    {name = biter_medium,       order = f_c, ingredient = , unlock_recipe = tech_gleba_biology},
    {name = biter_queen_medium, order = f_d, ingredient = , unlock_recipe = tech_gleba_biology},
    {name = biter_big,          order = f_e, ingredient = , unlock_recipe = tech_gleba_biology},
    {name = biter_queen_big,    order = f_f, ingredient = , unlock_recipe = tech_gleba_biology}
}
for _, RECIPE in ipairs(recipe_breeding_biter) do
    data:extend
    ({
        {
            localised_name = {"recipe-name.breeding", {"item-name." .. RECIPE.name}},
            type = recipe,
            name = "breeding-" .. RECIPE.name,
            category = "angels-bio-refugium-biter",
            subgroup = is_gleba_recipe,
            icons = STONKS_I(stonks_png, RECIPE.name),
            order = RECIPE.order,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 32,
            ingredients =
            {
                {type = item, name = RECIPE.name, amount = 2},
                {type = item, name = RECIPE.ingredient, amount = 16},
                {type = item, name = nutrients, amount = 128},
                {type = fluid, name = nutrient_pulp, amount = 120},
                {type = fluid, name = puffer_atmosphere, amount = 30}
            },
            results =
            {
                {type = item, name = RECIPE.name, amount = 4},
                {type = fluid, name = acid_angels, amount = 30, ignored_by_productivity = 30}
            },
            main_product = RECIPE.name
        }
    })
end]]