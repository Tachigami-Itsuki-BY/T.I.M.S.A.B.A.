if mods[maraxsis_mods] then
    maraxsis_air_separation = "maraxsis-air-separation"
    TIMSABA.functions.create_recipes
    ({
        {
            name = maraxsis_air_separation,
            category = angels_advanced_chemistry,
            subgroup = is_maraxsis_air,
            icons = FOUR_R_I(maraxsis_air, nitrogen_angels, hydrogen_angels, oxygen_angels),
            order = a_a,
            energy_required = 2,
            ingredients = {{type = fluid, name = maraxsis_air, amount = 120}},
            results =
            {
                {type = fluid, name = nitrogen_angels, amount = 60},
                {type = fluid, name = hydrogen_angels, amount = 30},
                {type = fluid, name = oxygen_angels, amount = 30}
            },
            main_product = nitrogen_angels
        }
    })
end