if mods[terrapalus_mods] then
    data_planet[planet_terrapalus].surface_properties[pressure] = 2111

    TIMSABA.functions.create_recipes
    ({
        {
            name = palusium_powder,
            category = powderizing_4,
            subgroup = is_terrapalus_recipe,
            icons = TWO_I(palusium_ore, palusium_powder),
            order = b,
            energy_required = 2,
            ingredients = {{type = item, name = palusium_ore, amount = 4}},
            results = {{type = item, name = palusium_powder, amount = 1}},
            main_product = palusium_powder
        },
        {
            name = palusium_crystal,
            category = chemistry,
            subgroup = is_terrapalus_recipe,
            icons = THREE_I(palusium_powder, water_purified_angels, palusium_crystal),
            order = c,
            energy_required = 16,
            ingredients =
            {
                {type = item, name = palusium_powder, amount = 8},
                {type = fluid, name = water_purified_angels, amount = 480}
            },
            results = {{type = item, name = palusium_crystal, amount = 1}},
            main_product = palusium_crystal
        },
        {
            name = palusium_plate,
            category = smelting,
            subgroup = is_terrapalus_recipe,
            icons = TWO_I(palusium_powder, palusium_plate),
            order = d,
            energy_required = 4,
            ingredients = {{type = item, name = palusium_powder, amount = 4}},
            results = {{type = item, name = palusium_plate, amount = 1}},
            main_product = palusium_plate
        },
        {
            name = ultravium,
            category = chemistry,
            subgroup = is_terrapalus_recipe,
            icons = THREE_D_I(palusium_powder, water_purified_angels, crude_oil, ultravium),
            order = e,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = palusium_powder, amount = 8},
                {type = fluid, name = water_purified_angels, amount = 30},
                {type = fluid, name = crude_oil, amount = 30}
            },
            results = {{type = fluid, name = ultravium, amount = 60}},
            main_product = ultravium
        }
    })
end