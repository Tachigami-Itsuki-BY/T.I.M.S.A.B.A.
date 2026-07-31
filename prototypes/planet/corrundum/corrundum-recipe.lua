if mods [corrundum_mods] then
    -- CORRUNDUM AIR
    corrundum_air_separation = "corrundum-air-separation"
    corrundum_air_separation_2 = "corrundum-air-separation-2"
    TIMSABA.functions.create_recipes
    ({
        {
            name = corrundum_air,
            category = angels_petrochem_air_filtering,
            subgroup = is_corrundum_air,
            icon = data_fluid[corrundum_air].icon,
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = corrundum_air, amount = 240}},
            main_product = corrundum_air,
            surface_conditions = {{property = pressure, min = 6000, max = 6000}}
        },
        {
            name = corrundum_air_separation,
            category = angels_advanced_chemistry,
            subgroup = is_corrundum_air,
            icons = FOUR_R_I(corrundum_air, nitrogen_angels, oxygen_angels, carbon_dioxide_angels),
            order = a_a,
            energy_required = 2,
            ingredients = {{type = fluid, name = corrundum_air, amount = 120}},
            results =
            {
                {type = fluid, name = nitrogen_angels, amount = 60},
                {type = fluid, name = oxygen_angels, amount = 30},
                {type = fluid, name = carbon_dioxide_angels, amount = 30}
            },
            main_product = nitrogen_angels
        },
        {
            name = corrundum_air_separation_2,
            category = angels_advanced_chemistry,
            subgroup = is_corrundum_air,
            icons = FOUR_R_I(corrundum_air, condensates_angels, hydrogen_sulfide_angels, sulfur_dioxide_angels),
            order = a_a,
            energy_required = 2,
            ingredients = {{type = fluid, name = corrundum_air, amount = 120}},
            results =
            {
                {type = fluid, name = condensates_angels, amount = 60},
                {type = fluid, name = hydrogen_sulfide_angels, amount = 30},
                {type = fluid, name = sulfur_dioxide_angels, amount = 30}
            },
            main_product = condensates_angels
        }
    })

    -- PLATINUM
    platinum_powder_corrundum = "platinum-powder-corrundum"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = data_item[platinum_powder].localised_name,
            name = platinum_powder_corrundum,
            category = powderizing_4,
            subgroup = is_corrundum_platinum,
            icons = TWO_I(platinum_ore_angels, platinum_powder),
            order = b,
            ingredients = {{type = item, name = platinum_ore_angels, amount = 4}},
            results = {{type = item, name = platinum_powder, amount = 1}},
            main_product = platinum_powder,
            surface_conditions = {{property = pressure, min = 6000, max = 6000}}
        }
    })
end