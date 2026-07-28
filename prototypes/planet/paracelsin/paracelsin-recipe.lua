if mods [paracelsin_mods] then
    nitrogen_from_paracelsin_air = "nitrogen-from-paracelsin-air"
    TIMSABA.functions.create_recipes
    ({
        -- AIR
        {
            name = nitrogen_from_paracelsin_air,
            category = angels_petrochem_air_filtering,
            subgroup = is_paracelsin_air,
            icon = data_fluid[nitrogen_angels].icon,
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = nitrogen_angels, amount = 240}},
            main_product = nitrogen_angels,
            surface_conditions = {{property = pressure, min = 5300, max = 5300}}
        },
        -- ZINC
        {
            name = galvanized_steel_plate,
            category = metallurgy,
            subgroup = is_vaterite_zinc,
            icons = THREE_I(steel_plate, zinc_molten_angels, galvanized_steel_plate),
            order = f,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = steel_plate, amount = 16},
                {type = fluid, name = zinc_molten_angels, amount = 240}
            },
            results = {{type = item, name = galvanized_steel_plate, amount = 16}},
            main_product = galvanized_steel_plate
        }
    })
end