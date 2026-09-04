if mods[lignumis_mods] then
    local gold_plate_lignumis = "gold-plate-lignumis"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"item-name." .. gold_plate_bob},
            name = gold_plate_lignumis,
            category = smelting,
            subgroup = is_lignumis_recipe,
            icons = TWO_I(gold_ore_bob, gold_plate_bob),
            order = d,
            enabled = true,
            energy_required = 1,
            ingredients = {{type = item, name = gold_ore_bob, amount = 1}},
            results = {{type = item, name = gold_plate_bob, amount = 1}},
            main_product = gold_plate_bob,
            surface_conditions = {{property = pressure, min = 900, max = 900}}
        }
    })

    -- SORTING ORE --> STONE
    _sortiong_stone = "-sortiong-stone"
    local function sortiong_ore_recipe_true(ingredient, order)
        TIMSABA.functions.create_recipes
        ({
            {
                name = ingredient .. _sortiong_stone,
                category = hand_crafting,
                additional_categories = {angels_ore_sorting_1},
                subgroup = is_sortiong_ore,
                icons = RECYCLING_I(recycling_png, ingredient),
                order = order,
                enabled = true,
                allow_productivity = true,
                allow_quality = true,
                energy_required = 1,
                ingredients = {{type = item, name = ingredient, amount = 4}},
                results = {{type = item, name = stone, amount = 1}},
                main_product = stone
            }
        })
    end
    sortiong_ore_recipe_true(ore_saphirite, a)
    sortiong_ore_recipe_true(ore_stiratite, c)

    local function sortiong_ore_recipe_false(ingredient, order)
        TIMSABA.functions.create_recipes
        ({
            {
                name = ingredient .. _sortiong_stone,
                category = angels_ore_sorting_1,
                subgroup = is_sortiong_ore,
                icons = RECYCLING_I(recycling_png, ingredient),
                order = order,
                allow_productivity = true,
                allow_quality = true,
                energy_required = 1,
                ingredients = {{type = item, name = ingredient, amount = 4}},
                results = {{type = item, name = stone, amount = 1}},
                main_product = stone
            }
        })
    end
    sortiong_ore_recipe_false(ore_jivolite, b)
    sortiong_ore_recipe_false(ore_crotinnium, d)
    sortiong_ore_recipe_false(ore_rubyte, e)
    sortiong_ore_recipe_false(ore_bobmonium, f)
    sortiong_ore_recipe_false(wolframite_ore, g)
    sortiong_ore_recipe_false(brannerite_ore, h)
    sortiong_ore_recipe_false(antimonite_ore, i)
    sortiong_ore_recipe_false(germanite_ore, j)
    if mods[moshine_mods] then
        sortiong_ore_recipe_false(monazite_ore, k)
    end
    if mods[corrundum_mods] then
        sortiong_ore_recipe_false(chalcopyrite_ore, l)
    end
    if mods[castra_mods] then
        sortiong_ore_recipe_false(millerite_ore, m)
    end
    if mods[paracelsin_mods] then
        sortiong_ore_recipe_false(sphalerite_ore, n)
        sortiong_ore_recipe_false(tetrahedrite_ore, o)
    end
end