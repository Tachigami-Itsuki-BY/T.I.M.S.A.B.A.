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
end