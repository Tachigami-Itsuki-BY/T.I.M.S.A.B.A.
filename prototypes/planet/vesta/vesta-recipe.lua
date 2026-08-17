if mods[vesta_mods] then
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"fluid-name." .. hydrogen_angels},
            name = hydrogen_vesta,
            category = angels_petrochem_air_filtering,
            subgroup = is_vesta_air,
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = hydrogen_angels, amount = 240}},
            main_product = hydrogen_angels,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        },
        {
            localised_name = {"fluid-name." .. nitrogen_angels},
            name = nitrogen_vesta,
            category = angels_petrochem_air_filtering,
            subgroup = is_vesta_air,
            order = b,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = nitrogen_angels, amount = 240}},
            main_product = nitrogen_angels,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        },
        {
            localised_name = {"fluid-name." .. carbon_dioxide_angels},
            name = carbon_dioxide_vesta,
            category = angels_petrochem_air_filtering,
            subgroup = is_vesta_air,
            order = c,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = carbon_dioxide_angels, amount = 240}},
            main_product = carbon_dioxide_angels,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        },
        {
            localised_name = {"fluid-name." .. hydrogen_sulfide_angels},
            name = hydrogen_sulfide_vesta,
            category = angels_petrochem_air_filtering,
            subgroup = is_vesta_air,
            order = d,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = hydrogen_sulfide_angels, amount = 240}},
            main_product = hydrogen_sulfide_angels,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        },
        {
            localised_name = {"fluid-name." .. methane_angels},
            name = methane_vesta,
            category = angels_petrochem_air_filtering,
            subgroup = is_vesta_air,
            order = e,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = methane_angels, amount = 240}},
            main_product = methane_angels,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        },
        {
            name = helium_vesta,
            category = angels_petrochem_air_filtering,
            subgroup = is_vesta_air,
            order = f,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = helium_vesta, amount = 240}},
            main_product = helium_vesta,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        }
    })

    -- ORE to PLATE
    _burning = "-burning"
    local function ore_to_plate_recipe(name_ore, order, name_plate)
        TIMSABA.functions.create_recipes
        ({
            {
                localised_name = {"recipe-name.burning", {"item-name." .. name_plate}},
                name = name_plate .. _burning,
                category = vesta_combustion,
                subgroup = is_ore_to_plate,
                icons = THREE_D_I(name_ore, hydrogen_angels, oxygen_angels, name_plate),
                order = order,
                allow_productivity = true,
                energy_required = 1,
                ingredients =
                {
                    {type = item, name = name_ore, amount = 1},
                    {type = fluid, name = hydrogen_angels, amount = 15},
                    {type = fluid, name = oxygen_angels, amount = 15}
                },
                results = {{type = item, name = name_plate, amount = 1}},
                main_product = name_plate,
                surface_conditions = {{property = pressure, min = 500, max = 500}}
            }
        })
    end
    ore_to_plate_recipe(iron_ore, a, iron_plate)
    ore_to_plate_recipe(copper_ore, b, copper_plate)
    ore_to_plate_recipe(lead_ore_bob, c, lead_plate_bob)
    ore_to_plate_recipe(tin_ore_bob, d, tin_plate_bob)
    ore_to_plate_recipe(nickel_ore_bob, e, nickel_plate_bob)
    ore_to_plate_recipe(aluminium_ore_bob, f, aluminium_plate_bob)
    ore_to_plate_recipe(zinc_ore_bob, g, zinc_plate_bob)
    ore_to_plate_recipe(silver_ore_bob, h, silver_plate_bob)
    ore_to_plate_recipe(titanium_ore_bob, i, titanium_plate_bob)
    ore_to_plate_recipe(gold_ore_bob, j, gold_plate_bob)
    ore_to_plate_recipe(platinum_ore_angels, k, platinum_plate)
    ore_to_plate_recipe(holmium_ore, l, holmium_plate)
    ore_to_plate_recipe(antimony_ore, m, antimony_plate)
    ore_to_plate_recipe(germanium_ore, n, germanium_plate)
    if mods[shchierbin_mods] then
        ore_to_plate_recipe(vanadium_ore, o, vanadium_plate)
    end

    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"recipe-name.burning", {"item-name." .. steel_plate}},
            name = steel_plate .. _burning,
            category = vesta_combustion,
            subgroup = is_ore_to_plate,
            icons = FOUR_D_I(iron_ore, hydrogen_angels, carbon_angels, oxygen_angels, steel_plate),
            order = a_a,
            allow_productivity = true,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = carbon_angels, amount = 1},
                {type = fluid, name = hydrogen_angels, amount = 15},
                {type = fluid, name = oxygen_angels, amount = 15}
            },
            results = {{type = item, name = steel_plate, amount = 1}},
            main_product = steel_plate,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        }
    })

    -- IRIDIUM
    sodium_hexachloroiridate_IV_2 = "sodium-hexachloroiridate-IV-2"
    iridium_powder_2 = "iridium-powder-2"
    TIMSABA.functions.create_recipes
    ({
        {
            name = iridium_ore,
            category = cryogenics,
            subgroup = is_iridium,
            order = a,
            allow_productivity = true,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = pure_saphirite, amount = 4},
                {type = item, name = pure_jivolite, amount = 4},
                {type = item, name = pure_stiratite, amount = 4},
                {type = item, name = pure_crotinnium, amount = 4},
                {type = fluid, name = algea_water_vesta, amount = 15},
                {type = fluid, name = deuterium_angels, amount = 15},
                {type = fluid, name = tritium_gas, amount = 15}
            },
            results = {{type = item, name = iridium_ore, amount = 16}},
            main_product = iridium_ore,
            surface_conditions = {{property = pressure, min = 500, max = 500}}
        },
        {
            name = iridium_processed,
            category = angels_processed_pressing_4,
            subgroup = is_iridium,
            icons = TWO_I(iridium_ore, iridium_processed),
            order = b,
            energy_required = 2,
            ingredients = {{type = item, name = iridium_ore, amount = 4}},
            results = {{type = item, name = iridium_processed, amount = 4}},
            main_product = iridium_processed
        },
        {
            name = iridium_pellet,
            category = angels_pellet_pressing_4,
            subgroup = is_iridium,
            icons = TWO_I(iridium_processed, iridium_pellet),
            order = c,
            energy_required = 2,
            ingredients = {{type = item, name = iridium_processed, amount = 4}},
            results = {{type = item, name = iridium_pellet, amount = 4}},
            main_product = iridium_pellet
        },
        {
            name = iridium_powder,
            category = angels_chemical_smelting_4,
            subgroup = is_iridium,
            icons = THREE_D_I(ammonium_hexachloroiridate_IV, nil, hydrogen_angels, iridium_powder, ammonia_angels, hydrogen_chloride_angels),
            order = e,
            energy_required = 8, -- (NH₄)₂IrCl₆(s) + 2H₂(g) --> Ir + 2NH₃(g) + 6HCl(g)
            ingredients =
            {
                {type = item, name = ammonium_hexachloroiridate_IV, amount = 16},
                {type = fluid, name = hydrogen_angels, amount = 480}
            },
            results =
            {
                {type = item, name = iridium_powder, amount = 16},
                {type = fluid, name = ammonia_angels, amount = 240}, -- 480
                {type = fluid, name = hydrogen_chloride_angels, amount = 480} -- 1440
            },
            main_product = iridium_powder
        },
        {
            localised_name = {"item-name." .. iridium_powder},
            name = iridium_powder_2,
            category = angels_chemical_smelting_4,
            subgroup = is_iridium,
            icons = THREE_D_I(hexachloroiridic_acid, nil, nil, iridium_powder, chlorine_angels, hydrogen_chloride_angels),
            order = e_a,
            energy_required = 8, -- H₂IrCl₆(s) --> Ir(s) + 2Cl₂(g) + 2HCl(g)
            ingredients = {{type = item, name = hexachloroiridic_acid, amount = 16}},
            results =
            {
                {type = item, name = iridium_powder, amount = 16},
                {type = fluid, name = chlorine_angels, amount = 240}, -- 480
                {type = fluid, name = hydrogen_chloride_angels, amount = 240} -- 480
            },
            main_product = iridium_powder
        },
        -- CHEMISTRY
        {
            name = sodium_hexachloroiridate_IV,
            category = angels_chemical_smelting_4,
            subgroup = is_iridium_chemistry,
            icons = THREE_D_I(iridium_ore, salt_angels, chlorine_angels, sodium_hexachloroiridate_IV),
            order = a,
            energy_required = 8, -- Ir(s) + 2NaCl₂(s) + Cl₂(g) --> Na₂IrCl₆(s)
            ingredients =
            {
                {type = item, name = iridium_ore, amount = 32},
                {type = item, name = salt_angels, amount = 32},
                {type = fluid, name = chlorine_angels, amount = 240}
            },
            results = {{type = item, name = sodium_hexachloroiridate_IV, amount = 16}},
            main_product = sodium_hexachloroiridate_IV
        },
        {
            localised_name = {"item-name." .. sodium_hexachloroiridate_IV},
            name = sodium_hexachloroiridate_IV_2,
            category = angels_chemical_smelting_4,
            subgroup = is_iridium_chemistry,
            icons = TWO_D_I(sodium_iridate_IV, hydrogen_chloride_angels, sodium_hexachloroiridate_IV, water_purified_angels),
            order = a_a,
            -- Na₂IrO₃(s) + 6HCl(g) --> Na₂IrCl₆(s) + 3H₂O(l)
            ingredients =
            {
                {type = item, name = sodium_iridate_IV, amount = 8},
                {type = fluid, name = hydrogen_chloride_angels, amount = 720}
            },
            results =
            {
                {type = item, name = sodium_hexachloroiridate_IV, amount = 8},
                {type = fluid, name = water_purified_angels, amount = 120} -- 360
            },
            main_product = sodium_hexachloroiridate_IV
        },
        {
            name = ammonium_hexachloroiridate_IV,
            category = angels_chemical_smelting_4,
            subgroup = is_iridium_chemistry,
            icons = TWO_D_I(sodium_hexachloroiridate_IV, ammonium_chloride_solution_angels, ammonium_hexachloroiridate_IV, sodium_chloride_solution),
            order = b,
            energy_required = 8, -- Na₂IrCl₆(s) + 2NH₄Cl(aq) --> (NH₄)₂IrCl₆(s) + 2NaCl(aq)
            ingredients =
            {
                {type = item, name = sodium_hexachloroiridate_IV, amount = 16},
                {type = fluid, name = ammonium_chloride_solution_angels, amount = 480}
            },
            results =
            {
                {type = item, name = ammonium_hexachloroiridate_IV, amount = 16},
                {type = fluid, name = sodium_chloride_solution, amount = 240} -- 480
            },
            main_product = ammonium_hexachloroiridate_IV
        },
        {
            name = sodium_iridate_IV,
            category = angels_chemical_smelting_4,
            subgroup = is_iridium_chemistry,
            icons = TWO_D_I(iridium_processed, sodium_peroxide, sodium_iridate_IV, sodium_oxide),
            order = c,
            energy_required = 8, -- Ir(s) + 2Na₂O₂(s) --> Na₂IrO₃(s) + Na₂O(s)
            ingredients =
            {
                {type = item, name = iridium_processed, amount = 16},
                {type = item, name = sodium_peroxide, amount = 32}
            },
            results =
            {
                {type = item, name = sodium_iridate_IV, amount = 16},
                {type = item, name = sodium_oxide, amount = 16} -- 32
            },
            main_product = sodium_iridate_IV
        },
        {
            name = iridium_fluoride_VI,
            category = angels_chemical_smelting_4,
            subgroup = is_iridium_chemistry,
            icons = THREE_I(iridium_pellet, fluorine, iridium_fluoride_VI),
            order = d,
            energy_required = 8, -- Ir(s) + 3F₂(g) --> IrF6(s)
            ingredients =
            {
                {type = item, name = iridium_pellet, amount = 8},
                {type = fluid, name = fluorine, amount = 720}
            },
            results = {{type = item, name = iridium_fluoride_VI, amount = 16}},
            main_product = iridium_fluoride_VI
        },
        {
            name = iridium_hydroxide_IV,
            category = angels_chemical_smelting_4,
            subgroup = is_iridium_chemistry,
            icons = THREE_D_I(iridium_fluoride_VI, nil, water_purified_angels, iridium_hydroxide_IV, hydrogen_fluoride_angels, oxygen_angels),
            order = e,
            -- 2IrF₆(s) + 10H₂O(l) --> 2Ir(OH)₄(s) + 12HF(g) + O₂(g)
            ingredients =
            {
                {type = item, name = iridium_fluoride_VI, amount = 8},
                {type = fluid, name = water_purified_angels, amount = 600}
            },
            results =
            {
                {type = item, name = iridium_hydroxide_IV, amount = 8},
                {type = fluid, name = hydrogen_fluoride_angels, amount = 240}, -- 720
                {type = fluid, name = oxygen_angels, amount = 30} -- 60
            },
            main_product = iridium_hydroxide_IV
        },
        {
            name = hexachloroiridic_acid,
            category = angels_chemical_smelting_4,
            subgroup = is_iridium_chemistry,
            icons = TWO_D_I(iridium_hydroxide_IV, hydrogen_chloride_angels, hexachloroiridic_acid, water_purified_angels),
            order = f,
            -- Ir(OH)₄(s) + 6HCl(g) --> H₂IrCl₆(s) + 4H₂O(l)
            ingredients =
            {
                {type = item, name = iridium_hydroxide_IV, amount = 8},
                {type = fluid, name = hydrogen_chloride_angels, amount = 720}
            },
            results =
            {
                {type = item, name = hexachloroiridic_acid, amount = 8},
                {type = fluid, name = water_purified_angels, amount = 240} -- 480
            },
            main_product = hexachloroiridic_acid
        }
    })

    TIMSABA.functions.create_recipes
    ({
        -- NITROGEN
        {
            name = ammonium_chloride,
            category = chemistry,
            subgroup = is_nitrogen,
            icons = THREE_I(ammonia_angels, hydrogen_chloride_angels, ammonium_chloride),
            order = e,
            energy_required = 2, -- NH₃(g) + HCl(g) --> NH₄Cl(s)
            ingredients =
            {
                {type = fluid, name = ammonia_angels, amount = 60},
                {type = fluid, name = hydrogen_chloride_angels, amount = 60}
            },
            results = {{type = item, name = ammonium_chloride, amount = 4}},
            main_product = ammonium_chloride
        },
        -- SODIUM
        {
            name = sodium_peroxide,
            category = chemistry,
            subgroup = is_sodium,
            icons = THREE_I(sodium_oxide, oxygen_angels, sodium_peroxide),
            order = l,
            -- 2Na₂O(s) + O₂(g) --> 2Na₂O₂(s)
            ingredients =
            {
                {type = item, name = sodium_oxide, amount = 8},
                {type = fluid, name = oxygen_angels, amount = 30}
            },
            results = {{type = item, name = sodium_peroxide, amount = 8}},
            main_product = sodium_peroxide
        },
        -- LOGISTICS
        {
            name = magnetic_pipe_vesta,
            category = vesta_magnetizing,
            subgroup = is_vesta_logistics,
            order = a,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = niobium_titanium_plate, amount = 1},
                {type = item, name = niobium_titanium_cable, amount = 8},
                {type = item, name = niobium_tungsten_molybdenum_plate, amount = 1},
                {type = item, name = iridium_plate_mods, amount = 1},
                {type = fluid, name = supermagnetic_vesta, amount = 30}
            },
            results =
            {
                {type = item, name = magnetic_pipe_vesta, amount = 1},
                {type = fluid, name = electrolyte, amount = 15},
            },
            main_product = magnetic_pipe_vesta
        }
    })
end