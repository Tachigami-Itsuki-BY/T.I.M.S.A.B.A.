if mods[secretas_frozeta_mods] then
    ammonia_from_frozeta_air = "ammonia-from-frozeta-air"
    gold_powder_frozeta = "gold-powder-frozeta"
    TIMSABA.functions.create_recipes
    ({
        -- AIR
        {
            localised_name = {"fluid-name." .. ammonia_angels},
            name = ammonia_from_frozeta_air,
            category = angels_petrochem_air_filtering,
            subgroup = is_frozeta_air,
            icon = data_fluid[ammonia_angels].icon,
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = ammonia_angels, amount = 240}},
            main_product = ammonia_angels,
            surface_conditions = {{property = pressure, min = 200, max = 280}}
        },
        -- GOLD
        {
            localised_name = {"item-name." .. gold_powder},
            name = gold_powder_frozeta,
            category = powderizing_4,
            subgroup = is_frozeta_recipe,
            icons = TWO_I(gold_ore_bob, gold_powder),
            order = b,
            ingredients = {{type = item, name = gold_ore_bob, amount = 4}},
            results = {{type = item, name = gold_powder, amount = 1}},
            main_product = gold_powder,
            surface_conditions = {{property = pressure, min = 200, max = 280}}
        },
        -- EGG
        {
            name = golden_biter_egg,
            category = crafting,
            subgroup = is_frozeta_recipe,
            icons = THREE_D_I(biter_egg, gold_plate_bob, jelly, golden_biter_egg),
            order = e,
            ingredients =
            {
                {type = item, name = biter_egg, amount = 1},
                {type = item, name = gold_plate_bob, amount = 2},
                {type = item, name = jelly, amount = 8}
            },
            results = {{type = item, name = golden_biter_egg, amount = 1}},
            main_product = golden_biter_egg,
            surface_conditions = {{property = pressure, min = 200, max = 280}}
        }
    })
end