local recipe = "recipe"
-- ANTIMONY ORE
antimony_ore_recipe = "ore-pure-mix4-processing"
data:extend
({
    {
        type = recipe,
        name = antimony_ore_recipe,
        category = angels_ore_sorting_5,
        subgroup = is_ore_sorting_advanced_4,
        icons = AR_FOUR_I(hybride_catalyst, pure_rubyte, pure_bobmonium, antimony_ore),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 1},
            {type = item, name = pure_rubyte, amount = 2},
            {type = item, name = pure_bobmonium, amount = 2}
        },
        results = {{type = item, name = antimony_ore, amount = 4}},
        main_product = antimony_ore
    }
})

-- ANTIMONY SMELTING
antimony_ingot_2 = "antimony-ingot-2"
antimony_ingot_3 = "antimony-ingot-3"
data:extend
({
    {
        type = recipe,
        name = antimony_processed,
        category = angels_processed_pressing_4,
        subgroup = is_antimony,
        icons = TWO_I(antimony_ore, antimony_processed),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = antimony_ore, amount = 4}},
        results = {{type = item, name = antimony_processed, amount = 4}},
        main_product = antimony_processed
    },
    {
        type = recipe,
        name = antimony_pellet,
        category = angels_pellet_pressing_4,
        subgroup = is_antimony,
        icons = TWO_I(antimony_processed, antimony_pellet),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = antimony_processed, amount = 4}},
        results = {{type = item, name = antimony_pellet, amount = 4}},
        main_product = antimony_pellet
    },
    {
        type = recipe,
        name = antimony_ingot,
        category = angels_blast_smelting_4,
        subgroup = is_antimony,
        icons = THREE_I(antimony_ore, carbon_angels, antimony_ingot),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Sb -C-> Sb
        ingredients =
        {
            {type = item, name = antimony_ore, amount = 32},
            {type = item, name = carbon_angels, amount = 32}
        },
        results = {{type = item, name = antimony_ingot, amount = 16}},
        main_product = antimony_ingot
    },
    {
        type = recipe,
        name = antimony_ingot_2,
        category = angels_blast_smelting_4,
        subgroup = is_antimony,
        icons = TWO_D_I(antimony_oxide, carbon, antimony_ingot, carbon_dioxide_angels),
        order = d_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Sb₂O₅ + 5C --> 2Sb + 5CO 
        ingredients =
        {
            {type = item, name = antimony_oxide, amount = 8},
            {type = item, name = carbon, amount = 40}
        },
        results =
        {
            {type = item, name = antimony_ingot, amount = 16},
            {type = fluid, name = carbon_dioxide_angels, amount = 480} -- 1200
        },
        main_product = antimony_ingot
    },
    {
        type = recipe,
        name = antimony_ingot_3,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony,
        icons = THREE_D_I(hexachloroantimonic_acid, nil, zinc_ingot, antimony_ingot, zinc_chloride, hydrochloric_acid_angels),
        order = d_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2HSbCl₆(aq) + 5Zn --> 2Sb + 5ZnCl₂ + 2HCl(aq)
        ingredients =
        {
            {type = fluid, name = hexachloroantimonic_acid, amount = 240},
            {type = item, name = zinc_ingot, amount = 40}
        },
        results =
        {
            {type = item, name = antimony_ingot, amount = 16},
            {type = item, name = zinc_chloride, amount = 120}, -- 600
            {type = fluid, name = hydrochloric_acid_angels, amount = 120} -- 240
        },
        main_product = antimony_ingot
    },
    {
        type = recipe,
        name = antimony_powder,
        category = powderizing_4,
        subgroup = is_antimony,
        icons = TWO_I(antimony_ingot, antimony_powder),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 0.5,
        ingredients = {{type = item, name = antimony_ingot, amount = 1}},
        results = {{type = item, name = antimony_powder, amount = 1}},
        main_product = antimony_powder
    }
})

-- ANTIMONY CHEMISTRY
antimony_chloride_V_liquid_2 = "antimony-chloride-V-liquid-2"
antimony_chloride_V_liquid_3 = "antimony-chloride-V-liquid-3"
data:extend
({
    {
        type = recipe,
        name = antimony_chloride_III,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_ore, chlorine_angels, antimony_chloride_III),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Sb + 3Cl₂ --> 2SbCl₃
        ingredients =
        {
            {type = item, name = antimony_ore, amount = 32},
            {type = fluid, name = chlorine_angels, amount = 360}
        },
        results = {{type = item, name = antimony_chloride_III, amount = 16}},
        main_product = antimony_chloride_III
    },
    {
        type = recipe,
        name = antimony_chloride_V_liquid,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_chloride_III, chlorine_angels, antimony_chloride_V_liquid),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- SbCl₃ + Cl₂ --> SbCl₅
        ingredients =
        {
            {type = item, name = antimony_chloride_III, amount = 16},
            {type = fluid, name = chlorine_angels, amount = 240}
        },
        results = {{type = fluid, name = antimony_chloride_V_liquid, amount = 240}},
        main_product = antimony_chloride_V_liquid
    },
    {
        type = recipe,
        name = antimony_chloride_V_liquid_2,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_processed, chlorine_angels, antimony_chloride_V_liquid),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Sb + 5Cl₂ --> 2SbCl₅
        ingredients =
        {
            {type = item, name = antimony_processed, amount = 16},
            {type = fluid, name = chlorine_angels, amount = 600}
        },
        results = {{type = fluid, name = antimony_chloride_V_liquid, amount = 240}},
        main_product = antimony_chloride_V_liquid
    },
    {
        type = recipe,
        name = antimony_chloride_V_liquid_3,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_pellet, chlorine_angels, antimony_chloride_V_liquid),
        order = b_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Sb + 5Cl₂ --> 2SbCl₅
        ingredients =
        {
            {type = item, name = antimony_pellet, amount = 8},
            {type = fluid, name = chlorine_angels, amount = 600}
        },
        results = {{type = fluid, name = antimony_chloride_V_liquid, amount = 240}},
        main_product = antimony_chloride_V_liquid
    },
    {
        type = recipe,
        name = antimony_acid,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = TWO_D_I(antimony_chloride_V_liquid, water_purified_angels, antimony_acid, hydrogen_chloride_angels),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- SbCl₅ + 5H₂O --> H₃SbO₄(aq) + 5HCl
        ingredients =
        {
            {type = fluid, name = antimony_chloride_V_liquid, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 600}
        },
        results =
        {
            {type = fluid, name = antimony_acid, amount = 240},
            {type = fluid, name = hydrogen_chloride_angels, amount = 120} -- 600
        },
        main_product = antimony_acid
    },
    {
        type = recipe,
        name = antimony_oxide,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_R_I(antimony_acid, antimony_oxide, steam),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2H₃SbO₄(aq) --> Sb₂O₅ + 5H₂O(g)
        ingredients = {{type = fluid, name = antimony_acid, amount = 240}},
        results =
        {
            {type = item, name = antimony_oxide, amount = 8},
            {type = fluid, name = steam, amount = 120} -- 600
        },
        main_product = antimony_oxide
    },
    {
        type = recipe,
        name = hexachloroantimonic_acid,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_chloride_V_liquid, hydrochloric_acid_angels, hexachloroantimonic_acid),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- SbCl₅ + HCl(aq) --> HSbCl₆(aq)
        ingredients =
        {
            {type = fluid, name = antimony_chloride_V_liquid, amount = 240},
            {type = fluid, name = hydrochloric_acid_angels, amount = 240}
        },
        results = {{type = fluid, name = hexachloroantimonic_acid, amount = 240}},
        main_product = hexachloroantimonic_acid
    }
})

-- ANTIMONY CASTING
--tin_molten_2 = "tin-molten-2"
--lead_molten_2 = "lead-molten-2"
data:extend
({
    {
        type = recipe,
        name = antimony_molten,
        category = angels_induction_smelting_4,
        subgroup = is_antimony_casting,
        icons = TWO_I(antimony_ingot, antimony_molten),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients = {{type = item, name = antimony_ingot, amount = 16}},
        results = {{type = fluid, name = antimony_molten, amount = 240}},
        main_product = antimony_molten
    }
})

-- AQUILO AIR
aquilo_air_separation = "aquilo-air-separation"
nitrogen_trifluoride_liquefied_elecrolysis = "nitrogen-trifluoride-liquefied-elecrolysis"
data:extend
({
    {
        type = recipe,
        name = aquilo_air,
        category = angels_petrochem_air_filtering,
        subgroup = is_aquilo_air,
        icon = data_fluid[aquilo_air].icon,
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        always_show_products = true,
        energy_required = 8,
        ingredients = {},
        results = {{type = fluid, name = aquilo_air, amount = 240}},
        main_product = aquilo_air,
        surface_conditions = {{property = "pressure", min = 300, max = 300}}
    },
    {
        type = recipe,
        name = aquilo_air_separation,
        category = angels_advanced_chemistry,
        subgroup = is_aquilo_air,
        icons = FOUR_R_I(aquilo_air, nitrogen_angels, ammonia_angels, tetrafluorohydrazine_gas),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = fluid, name = aquilo_air, amount = 120}},
        results =
        {
            {type = fluid, name = nitrogen_angels, amount = 60},
            {type = fluid, name = ammonia_angels, amount = 30},
            {type = fluid, name = tetrafluorohydrazine_gas, amount = 30}
        },
        main_product = nitrogen_angels
    },
    {
        type = recipe,
        name = nitrogen_trifluoride_gas,
        category = chemistry,
        subgroup = is_aquilo_air,
        icons = THREE_R_I(tetrafluorohydrazine_gas, nitrogen_trifluoride_gas, nitrogen_angels),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- 3N₂F₄ --> 4NF₃(g) + N₂
        ingredients = {{type = fluid, name = tetrafluorohydrazine_gas, amount = 45}},
        results =
        {
            {type = fluid, name = nitrogen_trifluoride_gas, amount = 60},
            {type = fluid, name = nitrogen_angels, amount = 15}
        },
        main_product = nitrogen_trifluoride_gas
    },
    {
        type = recipe,
        name = nitrogen_trifluoride_liquefied,
        category = cryogenics,
        subgroup = is_aquilo_air,
        icons = TWO_I(nitrogen_trifluoride_gas, nitrogen_trifluoride_liquefied),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NF₃(g) -H₂O-> NF₃(l)
        ingredients =
        {
            {type = fluid, name = nitrogen_trifluoride_gas, amount = 60},
            {type = item, name = ice, amount = 8}
        },
        results =
        {
            {type = fluid, name = nitrogen_trifluoride_liquefied, amount = 60},
            {type = fluid, name = steam, amount = 120, temperature = 915}
        },
        main_product = nitrogen_trifluoride_liquefied
    },
    {
        type = recipe,
        name = nitrogen_trifluoride_liquefied_elecrolysis,
        category = angels_petrochem_electrolyser,
        subgroup = is_aquilo_air,
        icons = FOUR_R_I(nitrogen_trifluoride_liquefied, fluorine, nil, nitrogen_angels),
        order = d_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2NF₃(l) -electrode/electrolys-> 3F₂ + N₂ 
        ingredients =
        {
            {type = fluid, name = nitrogen_trifluoride_liquefied, amount = 240},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = fluid, name = fluorine, amount = 360},
            {type = fluid, name = nitrogen_angels, amount = 120},
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = fluorine
    }
})

-- FLUORINE
hydogen_fluoride_gas = "hydogen-fluoride-gas"
data:extend
({
    {
        type = recipe,
        name = hydogen_fluoride_gas,
        category = chemistry,
        subgroup = is_aquilo_fluorine,
        icons = THREE_I(fluorine, hydrogen_angels, hydrogen_fluoride_angels),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- H₂ + F₂ --> 2HF
        ingredients =
        {
            {type = fluid, name = fluorine, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 60}
        },
        results = {{type = fluid, name = hydrogen_fluoride_angels, amount = 120}},
        main_product = hydrogen_fluoride_angels
    },
    {
        type = recipe,
        name = chloroform_luiqd,
        category = chemistry,
        subgroup = is_aquilo_fluorine,
        icons = TWO_D_I(methane_angels, chlorine_angels, chloroform_luiqd, hydrogen_chloride_angels),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- CH₄ + 3Cl₂ --> CHCl₃ + 3HCl
        ingredients =
        {
            {type = fluid, name = methane_angels, amount = 60},
            {type = fluid, name = chlorine_angels, amount = 180}
        },
        results =
        {
            {type = fluid, name = chloroform_luiqd, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 60} -- 180
        },
        main_product = chloroform_luiqd
    },
    {
        type = recipe,
        name = difluorochloromethane_gas,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = TWO_D_I(chloroform_luiqd, hydrogen_fluoride_angels, difluorochloromethane_gas, hydrogen_chloride_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- CHCl₃ + 2HF -SbCl₅-> CHClF₂ + 2HCl
        ingredients =
        {
            {type = fluid, name = chloroform_luiqd, amount = 60},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 120},
            {type = fluid, name = antimony_chloride_V_liquid, amount = 60}
        },
        results =
        {
            {type = fluid, name = difluorochloromethane_gas, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 60}, -- 120
            {type = fluid, name = antimony_chloride_V_liquid, amount = 30}
        },
        main_product = difluorochloromethane_gas
    },
    {
        type = recipe,
        name = tetrafluoroethylene_gas,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = THREE_R_I(difluorochloromethane_gas, tetrafluoroethylene_gas, hydrogen_chloride_angels),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2CHClF₂ --> C₂F₄ + 2HCl
        ingredients = {{type = fluid, name = difluorochloromethane_gas, amount = 60}},
        results =
        {
            {type = fluid, name = tetrafluoroethylene_gas, amount = 30},
            {type = fluid, name = hydrogen_chloride_angels, amount = 30} -- 60
        },
        main_product = tetrafluoroethylene_gas
    },
    {
        type = recipe,
        name = hexafluoropropylene_gas,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = TWO_I(tetrafluoroethylene_gas, hexafluoropropylene_gas),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 3C₂F₄ --> 2C₃F₆
        ingredients = {{type = fluid, name = tetrafluoroethylene_gas, amount = 90}},
        results = {{type = fluid, name = hexafluoropropylene_gas, amount = 60}},
        main_product = hexafluoropropylene_gas
    },
    {
        type = recipe,
        name = hexafluoropropylene_oxide_gas,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = THREE_I(hexafluoropropylene_gas, oxygen_angels, hexafluoropropylene_oxide_gas),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2C₃F₆ + O₂ -cat-> 2C₃F₆O
        ingredients =
        {
            {type = fluid, name = hexafluoropropylene_gas, amount = 120},
            {type = fluid, name = oxygen_angels, amount = 60},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = hexafluoropropylene_oxide_gas, amount = 120},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = hexafluoropropylene_oxide_gas
    },
    {
        type = recipe,
        name = fluoroketone_hot,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = THREE_I(hexafluoropropylene_oxide_gas, hexafluoropropylene_gas, fluoroketone_hot),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- C₃F₆O + C₃F₆ --> C₆F₁₂O
        ingredients =
        {
            {type = fluid, name = hexafluoropropylene_oxide_gas, amount = 60},
            {type = fluid, name = hexafluoropropylene_gas, amount = 60}
        },
        results = {{type = fluid, name = fluoroketone_hot, amount = 60, temperature = 180}},
        main_product = fluoroketone_hot
    },
    {
        type = recipe,
        name = fluoroketone_cold,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = CORNER_I(_C6F12O_, nil, ice, cooling_png, steam),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,  -- C₆F₁₂O(hot) -H₂O-> C₆F₁₂O(cold)
        ingredients =
        {
            {type = fluid, name = fluoroketone_hot, amount = 60},
            {type = item, name = ice, amount = 8}
        },
        results =
        {
            {type = fluid, name = fluoroketone_cold, amount = 60},
            {type = fluid, name = steam, amount = 120, temperature = 915}
        },
        main_product = fluoroketone_cold
    }
})

-- VULCANUS RECIPE
molten_antimony = "molten-antimony"
data:extend
({
    {
        type = recipe,
        name = molten_antimony,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(antimony_ingot, antimony_molten),
        order = z,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = antimony_ingot, amount = 32}},
        results = {{type = fluid, name = antimony_molten, amount = 480}},
        main_product = antimony_molten
    }
})

--[[
data:extend
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
})
]]