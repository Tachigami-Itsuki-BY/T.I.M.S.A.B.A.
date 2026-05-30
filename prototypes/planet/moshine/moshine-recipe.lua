if mods[moshine_mods] then
    -- MOSHINE AIR
    moshine_air_separation = "moshine-air-separation"
    moshine_air_separation_2 = "moshine-air-separation-2"
    data:extend
    ({
        {
            type = recipe,
            name = moshine_air,
            category = angels_petrochem_air_filtering,
            subgroup = is_moshine_ore,
            icon = data_fluid[moshine_air].icon,
            order = a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            always_show_products = true,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = moshine_air, amount = 240}},
            main_product = moshine_air,
            surface_conditions = {{property = pressure, min = 701, max = 701}}
        },
        {
            type = recipe,
            name = moshine_air_separation,
            category = angels_advanced_chemistry,
            subgroup = is_moshine_ore,
            icons = FOUR_R_I(moshine_air, nitrogen_angels, carbon_dioxide_angels, steam),
            order = a_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2,
            ingredients = {{type = fluid, name = moshine_air, amount = 120}},
            results =
            {
                {type = fluid, name = nitrogen_angels, amount = 60},
                {type = fluid, name = carbon_dioxide_angels, amount = 30},
                {type = fluid, name = steam, amount = 30}
            },
            main_product = nitrogen_angels
        },
        {
            type = recipe,
            name = moshine_air_separation_2,
            category = angels_advanced_chemistry,
            subgroup = is_moshine_ore,
            icons = FOUR_R_I(moshine_air, hydrogen_sulfide_angels, hydrogen_fluoride_angels, sulfur_dioxide_angels),
            order = a_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2,
            ingredients = {{type = fluid, name = moshine_air, amount = 120}},
            results =
            {
                {type = fluid, name = hydrogen_sulfide_angels, amount = 60},
                {type = fluid, name = hydrogen_fluoride_angels, amount = 30},
                {type = fluid, name = sulfur_dioxide_angels, amount = 30}
            },
            main_product = hydrogen_sulfide_angels
        }
    })

    --[[data:extend
    ({
        {
            type = recipe,
            name = ,
            category = ,
            subgroup = ,
            icons = ,
            order = ,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = ,
            ingredients = {{type = , name = , amount = }},
            results = {{type = , name = , amount = }},
            main_product = 
        }
    })]]

    -- RECIPE
    saphirite_from_lava_moshine = "saphirite-from-lava-moshine"
    jivolite_from_lava_moshine = "jivolite-from-lava-moshine"
    stiratite_from_lava_moshine = "stiratite-from-lava-moshine"
    crotinnium_from_lava_moshine = "crotinnium-from-lava-moshine"
    rubyte_from_lava_moshine = "rubyte-from-lava-moshine"
    bobmonium_from_lava_moshine = "bobmonium-from-lava-moshine"
    data:extend
    ({
        {
            type = recipe,
            name = saphirite_from_lava_moshine,
            category = metallurgy,
            subgroup = is_moshine_recipe,
            icons = TWO_I(lava, ore_saphirite),
            order = a_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 16,
            ingredients = {{type = fluid, name = lava, amount = 480}},
            results = {{type = item, name = ore_saphirite, amount = 16}},
            main_product = ore_saphirite,
            surface_conditions = {{property = pressure, min = 701, max = 701}}
        },
        {
            type = recipe,
            name = jivolite_from_lava_moshine,
            category = metallurgy,
            subgroup = is_moshine_recipe,
            icons = TWO_I(lava, ore_jivolite),
            order = a_b,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 16,
            ingredients = {{type = fluid, name = lava, amount = 480}},
            results = {{type = item, name = ore_jivolite, amount = 16}},
            main_product = ore_jivolite,
            surface_conditions = {{property = pressure, min = 701, max = 701}}
        },
        {
            type = recipe,
            name = stiratite_from_lava_moshine,
            category = metallurgy,
            subgroup = is_moshine_recipe,
            icons = TWO_I(lava, ore_stiratite),
            order = a_c,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 16,
            ingredients = {{type = fluid, name = lava, amount = 480}},
            results = {{type = item, name = ore_stiratite, amount = 16}},
            main_product = ore_stiratite,
            surface_conditions = {{property = pressure, min = 701, max = 701}}
        },
        {
            type = recipe,
            name = crotinnium_from_lava_moshine,
            category = metallurgy,
            subgroup = is_moshine_recipe,
            icons = TWO_I(lava, ore_crotinnium),
            order = a_d,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 16,
            ingredients = {{type = fluid, name = lava, amount = 480}},
            results = {{type = item, name = ore_crotinnium, amount = 16}},
            main_product = ore_crotinnium,
            surface_conditions = {{property = pressure, min = 701, max = 701}}
        },
        {
            type = recipe,
            name = rubyte_from_lava_moshine,
            category = metallurgy,
            subgroup = is_moshine_recipe,
            icons = TWO_I(lava, ore_rubyte),
            order = a_e,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 16,
            ingredients = {{type = fluid, name = lava, amount = 480}},
            results = {{type = item, name = ore_rubyte, amount = 16}},
            main_product = ore_rubyte,
            surface_conditions = {{property = pressure, min = 701, max = 701}}
        },
        {
            type = recipe,
            name = bobmonium_from_lava_moshine,
            category = metallurgy,
            subgroup = is_moshine_recipe,
            icons = TWO_I(lava, ore_bobmonium),
            order = a_f,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 16,
            ingredients = {{type = fluid, name = lava, amount = 480}},
            results = {{type = item, name = ore_bobmonium, amount = 16}},
            main_product = ore_bobmonium,
            surface_conditions = {{property = pressure, min = 701, max = 701}}
        }
    })

    --[[data:extend
    ({
        {
            type = recipe,
            name = ,
            category = ,
            subgroup = ,
            icons = ,
            order = ,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = ,
            ingredients = {{type = , name = , amount = }},
            results = {{type = , name = , amount = }},
            main_product = 
        }
    })]]

    -- NEODYMIUM
    neodymium_ingot_2 = "neodymium-ingot-2"
    neodymium_oxide_III_2 = "neodymium-oxide-III-2"
    data:extend
    ({
        {
            type = recipe,
            name = neodymium_processed,
            category = angels_processed_pressing_4,
            subgroup = is_neodymium,
            icons = TWO_I(neodymium_ore, neodymium_processed),
            order = b,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2,
            ingredients = {{type = item, name = neodymium_ore, amount = 4}},
            results = {{type = item, name = neodymium_processed, amount = 4}},
            main_product = neodymium_processed
        },
        {
            type = recipe,
            name = neodymium_pellet,
            category = angels_pellet_pressing_4,
            subgroup = is_neodymium,
            icons = TWO_I(neodymium_processed, neodymium_pellet),
            order = c,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 2,
            ingredients = {{type = item, name = neodymium_processed, amount = 4}},
            results = {{type = item, name = neodymium_pellet, amount = 4}},
            main_product = neodymium_pellet
        },
        {
            type = recipe,
            name = neodymium_ingot,
            category = angels_blast_smelting_4,
            subgroup = is_neodymium,
            icons = TWO_D_I(neodymium_chloride_III, calcium, neodymium_ingot, calcium_chloride_angels),
            order = d,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 8, -- 2NdCl₃(s) + 3Ca(s) --> 2Nd(s) + 3CaCl₂(s)
            ingredients =
            {
                {type = item, name = neodymium_chloride_III, amount = 16},
                {type = item, name = calcium, amount = 24}
            },
            results =
            {
                {type = item, name = neodymium_ingot, amount = 16},
                {type = item, name = calcium_chloride_angels, amount = 8} -- 24
            },
            main_product = neodymium_ingot
        },
        {
            type = recipe,
            name = neodymium_ingot_2,
            category = angels_blast_smelting_4,
            subgroup = is_neodymium,
            icons = THREE_D_I(neodymium_oxide_III, calcium_chloride_angels, sodium_angels, neodymium_ingot, lime_angels, salt_angels),
            order = d_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 8, -- Nd₂O₃(s) + 3CaCl₂(s) + 6Na(s) --> 2Nd(s) + 3CaO(s) + 6NaCl(s)
            ingredients =
            {
                {type = item, name = neodymium_oxide_III, amount = 8},
                {type = item, name = calcium_chloride_angels, amount = 24},
                {type = item, name = sodium_angels, amount = 48}
            },
            results =
            {
                {type = item, name = neodymium_ingot, amount = 16},
                {type = item, name = lime_angels, amount = 8}, -- 24
                {type = item, name = salt_angels, amount = 16} -- 48
            },
            main_product = neodymium_ingot
        },
        -- CHEMISTRY
        {
            type = recipe,
            name = neodymium_chloride_III,
            category = angels_chemical_smelting_4,
            subgroup = is_neodymium_chemistry,
            icons = THREE_I(neodymium_ore, chlorine_angels, neodymium_chloride_III),
            order = a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 8, -- 2Nd(s) + 3Cl₂(g) --> 2NdCl₃(s)
            ingredients =
            {
                {type = item, name = neodymium_ore, amount = 32},
                {type = fluid, name = chlorine_angels, amount = 360}
            },
            results = {{type = item, name = neodymium_chloride_III, amount = 16}},
            main_product = neodymium_chloride_III
        },
        {
            type = recipe,
            name = neodymium_hydroxide_III,
            category = angels_chemical_smelting_4,
            subgroup = is_neodymium_chemistry,
            icons = TWO_D_I(neodymium_processed, water_purified_angels, neodymium_hydroxide_III, hydrogen_angels),
            order = b,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 8, -- 2Nd(s) + 6H₂O(l) --> 2Nd(OH)₃(s) + 3H₂(g)
            ingredients =
            {
                {type = item, name = neodymium_processed, amount = 16},
                {type = fluid, name = water_purified_angels, amount = 720}
            },
            results =
            {
                {type = item, name = neodymium_hydroxide_III, amount = 16},
                {type = fluid, name = hydrogen_angels, amount = 120} -- 360
            },
            main_product = neodymium_hydroxide_III
        },
        {
            type = recipe,
            name = neodymium_oxide_III,
            category = angels_blast_smelting_4,
            subgroup = is_neodymium_chemistry,
            icons = THREE_R_I(neodymium_hydroxide_III, neodymium_oxide_III, steam),
            order = c,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 8, -- 2Nd(OH)₃(s) --> Nd₂O₃(s) + 3H₂O(g)
            ingredients = {{type = item, name = neodymium_hydroxide_III, amount = 16}},
            results =
            {
                {type = item, name = neodymium_oxide_III, amount = 8},
                {type = fluid, name = steam, amount = 120} -- 360
            },
            main_product = neodymium_oxide_III
        },
        {
            type = recipe,
            name = neodymium_oxide_III_2,
            category = angels_blast_smelting_4,
            subgroup = is_neodymium_chemistry,
            icons = THREE_I(neodymium_pellet, oxygen_angels, neodymium_oxide_III),
            order = c_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 8, -- 4Nd(s) + 3O₂(g) --> 2Nd₂O₃(s)
            ingredients =
            {
                {type = item, name = neodymium_pellet, amount = 8},
                {type = fluid, name = oxygen_angels, amount = 180}
            },
            results = {{type = item, name = neodymium_oxide_III, amount = 8}},
            main_product = neodymium_oxide_III
        },
        -- CASTING
        {
            type = recipe,
            name = neodymium_iron_boron_molten,
            category = metallurgy,
            subgroup = is_neodymium_casting,
            icons = THREE_D_I(neodymium_ingot, iron_ingot, boron, neodymium_iron_boron_molten),
            order = a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 8, -- 2Nd(s) + 14Fe(s) + B(s) -Ar-> Nd₂Fe₁₄B(molten)
            ingredients =
            {
                {type = item, name = neodymium_ingot, amount = 32},
                {type = item, name = iron_ingot, amount = 56},
                {type = item, name = boron, amount = 16}
            },
            results = {{type = fluid, name = neodymium_iron_boron_molten, amount = 240}},
            main_product = neodymium_iron_boron_molten
        }
    })

    --[[data:extend
    ({
        {
            type = recipe,
            name = ,
            category = ,
            subgroup = ,
            icons = ,
            order = ,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = ,
            ingredients = {{type = , name = , amount = }},
            results = {{type = , name = , amount = }},
            main_product = 
        }
    })]]

    -- SMELTING
    lead_ingot_4 = "lead-ingot-4"
    potassium_chloride_solution_2 = "potassium-chloride-solution-2"
    orthophosphoric_acid_from_phosphate_ore = "orthophosphoric-acid-from-phosphate-ore"
    data:extend
    ({
        {
            type = recipe,
            name = lead_ingot_4,
            category = angels_chemical_smelting_4,
            subgroup = is_lead,
            icons = THREE_D_I(lead_sulfate_II, nil, coal, lead_ingot, sulfur_dioxide_angels, carbon_dioxide_angels),
            order = d_e,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 8, -- PbSO₄(s) + C(s) --> Pb(s) + SO₂(g) + CO₂(g)
            ingredients =
            {
                {type = item, name = lead_sulfate_II, amount = 16},
                {type = item, name = coal, amount = 16}
            },
            results =
            {
                {type = item, name = lead_ingot, amount = 16},
                {type = fluid, name = sulfur_dioxide_angels, amount = 120}, -- 240
                {type = fluid, name = carbon_dioxide_angels, amount = 120} -- 240
            },
            main_product = lead_ingot
        },
        -- BORON
        {
            type = recipe,
            name = boron_oxide_III,
            category = chemistry,
            subgroup = is_boron,
            icons = THREE_R_I(boric_acid_solution, boron_oxide_III, steam),
            order = d,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4, -- 2H₃BO₃(aq) --> B₂O₃(s) + 5H₂O(g)
            ingredients = {{type = fluid, name = boric_acid_solution, amount = 120}},
            results =
            {
                {type = item, name = boron_oxide_III, amount = 4},
                {type = fluid, name = steam, amount = 120} -- 300
            },
            main_product = boron_oxide_III
        },
        {
            type = recipe,
            name = boron,
            category = smelting_filtering,
            subgroup = is_boron,
            icons = TWO_D_I(boron_oxide_III, magnesium_powder, boron, magnesium_oxide),
            order = e,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4, -- B₂O₃(s) + 3Mg(s) --> 2B(s) + 3MgO(s)
            ingredients =
            {
                {type = item, name = boron_oxide_III, amount = 4},
                {type = item, name = magnesium_powder, amount = 12}
            },
            results =
            {
                {type = item, name = boron, amount = 8},
                {type = item, name = magnesium_oxide, amount = 4} -- 12
            },
            main_product = boron
        },
        -- POTASSIUM
        {
            type = recipe,
            name = potassium_chloride_solution_2,
            category = chemistry,
            subgroup = is_potassium_fluid,
            icons = TWO_D_I(potassium, hydrochloric_acid_angels, potassium_chloride_solution, hydrogen_angels),
            order = b_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4, -- 2K(s) + 2HCl(aq) --> 2KCl(aq) + H₂(g)
            ingredients =
            {
                {type = item, name = potassium, amount = 4},
                {type = fluid, name = hydrochloric_acid_angels, amount = 60}
            },
            results =
            {
                {type = fluid, name = potassium_chloride_solution, amount = 60},
                {type = fluid, name = hydrogen_angels, amount = 15} -- 30
            },
            main_product = potassium_chloride_solution
        },
        -- PHOSPHORUS
        {
            type = recipe,
            name = orthophosphoric_acid,
            category = chemistry,
            subgroup = is_phosphorus,
            icons = THREE_D_I(calcium_phosphate, sulfuric_acid_angels, water_purified_angels, orthophosphoric_acid, nil, calcium_sulfate_angels),
            order = h,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4, -- Ca₃(PO₄)₂(s) + 3H₂SO₄(l) + H₂O(l) --> H₃PO₄(aq) + 3CaSO₄(s)
            ingredients =
            {
                {type = item, name = calcium_phosphate, amount = 4},
                {type = fluid, name = sulfuric_acid_angels, amount = 180},
                {type = fluid, name = water_purified_angels, amount = 180}
            },
            results =
            {
                {type = fluid, name = orthophosphoric_acid, amount = 60},
                {type = item, name = calcium_sulfate_angels, amount = 4} -- 12
            },
            main_product = orthophosphoric_acid
        },
        {
            type = recipe,
            name = orthophosphoric_acid_from_phosphate_ore,
            category = chemistry,
            subgroup = is_phosphorus,
            icons = THREE_D_I(phosphate_ore, sulfuric_acid_angels, water_purified_angels, orthophosphoric_acid, hydrofluoric_acid_angels, calcium_sulfate_angels),
            order = h_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4, -- Ca₅(PO₄)₃F + 5H₂SO₄(l) + 4H₂O(l) --> 3H₃PO₄(aq) + HF(aq) + 5CaSO₄(s)
            ingredients =
            {
                {type = item, name = phosphate_ore, amount = 4},
                {type = fluid, name = sulfuric_acid_angels, amount = 300},
                {type = fluid, name = water_purified_angels, amount = 240}
            },
            results =
            {
                {type = fluid, name = orthophosphoric_acid, amount = 180},
                {type = fluid, name = hydrofluoric_acid_angels, amount = 30}, -- 60
                {type = item, name = calcium_sulfate_angels, amount = 8} -- 20
            },
            main_product = orthophosphoric_acid
        }
    })

    --[[data:extend
    ({
        {
            type = recipe,
            name = ,
            category = ,
            subgroup = ,
            icons = ,
            order = ,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = ,
            ingredients = {{type = , name = , amount = }},
            results = {{type = , name = , amount = }},
            main_product = 
        }
    })]]

    -- WATER TREATMENT
    water_orange_waste_purification = "water-orange-waste-purification"
    data:extend
    ({
        {
            type = recipe,
            name = water_orange_waste_purification,
            category = angels_water_treatment,
            subgroup = is_water_cleaning,
            icons = FOUR_R_I(water_orange_waste, water_mineralized_angels, calcium_phosphate, water_purified_angels),
            order = e,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = fluid, name = water_orange_waste, amount = 120}},
            results =
            {
                {type = item, name = calcium_phosphate, amount = 2},
                {type = fluid, name = water_mineralized_angels, amount = 30},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            main_product = calcium_phosphate
        }
    })

    --[[data:extend
    ({
        {
            type = recipe,
            name = ,
            category = ,
            subgroup = ,
            icons = ,
            order = ,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = ,
            ingredients = {{type = , name = , amount = }},
            results = {{type = , name = , amount = }},
            main_product = 
        }
    })]]

    -- BARITE
    barite_sorting = "barite-sorting"
    data:extend
    ({
        {
            type = recipe,
            name = barite_sorting,
            category = ore_sorting_6,
            subgroup = is_barium,
            icons = RECYCLING_I(recycling_png, barite),
            order = a_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1, -- (Ba,Ca,Pb)SO₄ --> BaSO₄ + CaSO₄ + PbSO₄
            ingredients = {{type = item, name = barite, amount = 1}},
            results =
            {
                {type = item, name = barium_sulfate, amount = 1},
                {type = item, name = lead_sulfate_II, amount = 1},
                {type = item, name = calcium_sulfate_angels, amount = 1}
            },
            main_product = barium_sulfate
        }
    })

    --[[data:extend
    ({
        {
            type = recipe,
            name = ,
            category = ,
            subgroup = ,
            icons = ,
            order = ,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = ,
            ingredients = {{type = , name = , amount = }},
            results = {{type = , name = , amount = }},
            main_product = 
        }
    })]]

    -- BIOTITE MICA
    biotite_mica_sorting = "biotite-mica-sorting"
    data:extend
    ({
        {
            type = recipe,
            name = biotite_mica_sorting,
            category = ore_sorting_6,
            subgroup = is_biotite_mica,
            icons = RECYCLING_I(recycling_png, biotite_mica),
            order = a_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 1, -- K(Mg₃,Fe₃,Al₂)[Si₄O₁₀](OH,F)₂ + 8CaO + 2CaCl₂ --> K + Mg + 2MgCl₂ + Fe + Fe₂O₃ + Al₂O₃ + 4CaSiO₃ + Ca(OH)₂ + CaF₂ + 4Ca
            ingredients =
            {
                {type = item, name = biotite_mica, amount = 1},
                {type = item, name = lime_angels, amount = 8},
                {type = item, name = calcium_chloride_angels, amount = 2}
            },
            results =
            {
                {type = item, name = potassium, amount = 1},
                {type = item, name = magnesium_ore, amount = 1},
                {type = item, name = magnesium_chloride, amount = 2},
                {type = item, name = iron_ore, amount = 1},
                {type = item, name = iron_oxide_III, amount = 1},
                {type = item, name = aluminium_oxide, amount = 1},
                {type = item, name = calcium_silicate, amount = 4},
                {type = item, name = calcium_hydroxide, amount = 1},
                {type = item, name = fluorite_angels, amount = 1},
                {type = item, name = calcium, amount = 4}
            },
            main_product = potassium
        }
    })

    --[[data:extend
    ({
        {
            type = recipe,
            name = ,
            category = ,
            subgroup = ,
            icons = ,
            order = ,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = ,
            ingredients = {{type = , name = , amount = }},
            results = {{type = , name = , amount = }},
            main_product = 
        }
    })]]

    -- SPACE
    advanced_full_metallic_asteroid_crushing_9 = "advanced-full-metallic-asteroid-crushing-9"
    advanced_full_metallic_asteroid_crushing_10 = "advanced-full-metallic-asteroid-crushing-10"
    promethium_asteroid_crushing_1 = "promethium-asteroid-crushing"
    data:extend
    ({
        {
            type = recipe,
            name = advanced_full_metallic_asteroid_crushing_9,
            category = crushing,
            subgroup = is_space_environment_1,
            icons = TWO_I(metallic_asteroid_chunk, neodymium_ore),
            order = h_i,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4,
            ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
            results = {{type = item, name = neodymium_ore, amount = 8}},
            main_product = neodymium_ore
        },
        {
            type = recipe,
            name = advanced_full_metallic_asteroid_crushing_10,
            category = crushing,
            subgroup = is_space_environment_1,
            icons = TWO_I(metallic_asteroid_chunk, cerium_ore),
            order = h_j,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4,
            ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
            results = {{type = item, name = cerium_ore, amount = 8}},
            main_product = cerium_ore
        },
        {
            type = recipe,
            name = promethium_asteroid_crushing_1,
            category = crushing,
            subgroup = is_space_environment_6,
            icons = TWO_I(promethium_asteroid_chunk, promethium_ore),
            order = e_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 16,
            ingredients = {{type = item, name = promethium_asteroid_chunk, amount = 1}},
            results = {{type = item, name = promethium_ore, amount = 4}},
            main_product = promethium_ore
        }
    })

    --[[data:extend
    ({
        {
            type = recipe,
            name = ,
            category = ,
            subgroup = ,
            icons = ,
            order = ,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = ,
            ingredients = {{type = , name = , amount = }},
            results = {{type = , name = , amount = }},
            main_product = 
        }
    })]]
end