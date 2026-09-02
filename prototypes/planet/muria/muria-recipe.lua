if mods[muria_mods] then
    -- MRUIA AIR
    muria_air_separation = "muria-air-separation"
    TIMSABA.functions.create_recipes
    ({
        {
            name = muria_air,
            category = angels_petrochem_air_filtering,
            subgroup = is_muria_air,
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = muria_air, amount = 240}},
            main_product = muria_air,
            surface_conditions = {{property = pressure, min = 2180, max = 2180}}
        },
        {
            name = muria_air_separation,
            category = angels_advanced_chemistry,
            subgroup = is_muria_air,
            icons = FOUR_R_I(muria_air, nitrogen_angels, hydrogen_chloride_angels, hydrogen_sulfide_angels),
            order = a_a,
            energy_required = 2,
            ingredients = {{type = fluid, name = muria_air, amount = 120}},
            results =
            {
                {type = fluid, name = nitrogen_angels, amount = 60},
                {type = fluid, name = hydrogen_chloride_angels, amount = 30},
                {type = fluid, name = hydrogen_sulfide_angels, amount = 30}
            },
            main_product = nitrogen_angels
        }
    })

    -- LEAD
    lead_powder_muria = "lead-powder-muria"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"item-name." .. lead_powder},
            name = lead_powder_muria,
            category = powderizing_4,
            subgroup = is_muria_lead,
            icons = TWO_I(lead_ore_bob, lead_powder),
            order = b,
            ingredients = {{type = item, name = lead_ore_bob, amount = 4}},
            results = {{type = item, name = lead_powder, amount = 1}},
            main_product = lead_powder,
            surface_conditions = {{property = pressure, min = 2180, max = 2180}}
        },
        {
            name = muriatic_science_pack,
            category = chemistry,
            subgroup = is_muria_lead,
            order = f,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = inert_muriatic_science_pack, amount = 1},
                {type = fluid, name = hydrogen_chloride_angels, amount = (15/4)}
            },
            results = {{type = item, name = muriatic_science_pack, amount = 1}},
            main_product = muriatic_science_pack
        }
    })
end