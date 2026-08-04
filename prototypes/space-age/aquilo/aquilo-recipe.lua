-- AQUILO AIR
aquilo_air_separation = "aquilo-air-separation"
nitrogen_trifluoride_liquefied_elecrolysis = "nitrogen-trifluoride-liquefied-elecrolysis"
TIMSABA.functions.create_recipes
({
    {
        name = aquilo_air,
        category = angels_petrochem_air_filtering,
        subgroup = is_aquilo_air,
        icon = data_fluid[aquilo_air].icon,
        order = a,
        energy_required = 8,
        ingredients = {},
        results = {{type = fluid, name = aquilo_air, amount = 240}},
        main_product = aquilo_air,
        surface_conditions = {{property = pressure, min = 300, max = 300}}
    },
    {
        name = aquilo_air_separation,
        category = angels_advanced_chemistry,
        subgroup = is_aquilo_air,
        icons = FOUR_R_I(aquilo_air, nitrogen_angels, ammonia_angels, tetrafluorohydrazine_gas),
        order = a_a,
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
        name = nitrogen_trifluoride_gas,
        category = chemistry,
        subgroup = is_aquilo_air,
        icons = THREE_R_I(tetrafluorohydrazine_gas, nitrogen_trifluoride_gas, nitrogen_angels),
        order = c,
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
        name = nitrogen_trifluoride_liquefied,
        category = cryogenics,
        subgroup = is_aquilo_air,
        icons = TWO_I(nitrogen_trifluoride_gas, nitrogen_trifluoride_liquefied),
        order = d,
        -- NF₃(g) -H₂O-> NF₃(l)
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
        name = nitrogen_trifluoride_liquefied_elecrolysis,
        category = angels_petrochem_electrolyser,
        subgroup = is_aquilo_air,
        icons = FOUR_R_I(nitrogen_trifluoride_liquefied, fluorine, nil, nitrogen_angels),
        order = d_a,
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
TIMSABA.functions.create_recipes
({
    {
        localised_name = {"fluid-name." .. hydrogen_fluoride_angels},
        name = hydogen_fluoride_gas,
        category = chemistry,
        subgroup = is_aquilo_fluorine,
        icons = THREE_I(fluorine, hydrogen_angels, hydrogen_fluoride_angels),
        order = b_a,
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
        name = chloroform_liquid,
        category = chemistry,
        subgroup = is_aquilo_fluorine,
        icons = TWO_D_I(methane_angels, chlorine_angels, chloroform_liquid, hydrogen_chloride_angels),
        order = c,
        energy_required = 2, -- CH₄ + 3Cl₂ --> CHCl₃ + 3HCl
        ingredients =
        {
            {type = fluid, name = methane_angels, amount = 60},
            {type = fluid, name = chlorine_angels, amount = 180}
        },
        results =
        {
            {type = fluid, name = chloroform_liquid, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 60} -- 180
        },
        main_product = chloroform_liquid
    },
    {
        name = difluorochloromethane_gas,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = TWO_D_I(chloroform_liquid, hydrogen_fluoride_angels, difluorochloromethane_gas, hydrogen_chloride_angels),
        order = d,
        -- CHCl₃ + 2HF -SbCl₅-> CHClF₂ + 2HCl
        ingredients =
        {
            {type = fluid, name = chloroform_liquid, amount = 60},
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
        name = tetrafluoroethylene_gas,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = THREE_R_I(difluorochloromethane_gas, tetrafluoroethylene_gas, hydrogen_chloride_angels),
        order = e,
        -- 2CHClF₂ --> C₂F₄ + 2HCl
        ingredients = {{type = fluid, name = difluorochloromethane_gas, amount = 60}},
        results =
        {
            {type = fluid, name = tetrafluoroethylene_gas, amount = 30},
            {type = fluid, name = hydrogen_chloride_angels, amount = 30} -- 60
        },
        main_product = tetrafluoroethylene_gas
    },
    {
        name = hexafluoropropylene_gas,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = TWO_I(tetrafluoroethylene_gas, hexafluoropropylene_gas),
        order = f,
        -- 3C₂F₄ --> 2C₃F₆
        ingredients = {{type = fluid, name = tetrafluoroethylene_gas, amount = 90}},
        results = {{type = fluid, name = hexafluoropropylene_gas, amount = 60}},
        main_product = hexafluoropropylene_gas
    },
    {
        name = hexafluoropropylene_oxide_gas,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = THREE_I(hexafluoropropylene_gas, oxygen_angels, hexafluoropropylene_oxide_gas),
        order = g,
        -- 2C₃F₆ + O₂ -cat-> 2C₃F₆O
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
        name = fluoroketone_hot,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = THREE_I(hexafluoropropylene_oxide_gas, hexafluoropropylene_gas, fluoroketone_hot),
        order = h,
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
        name = fluoroketone_cold,
        category = cryogenics,
        subgroup = is_aquilo_fluorine,
        icons = CORNER_I(_C6F12O_, nil, ice, cooling_png, steam),
        order = i,
        -- C₆F₁₂O(hot) -H₂O-> C₆F₁₂O(cold)
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

-- SEMICONDUCTOR BRANCH
semiconductor_2 = "semiconductor-2"
TIMSABA.functions.create_recipes
({
    {
        name = nitrobenzene_liquid,
        category = angels_advanced_chemistry,
        subgroup = is_aquilo_recipe,
        icons = TWO_D_I(benzene_angels, nitric_acid_angels, nitrobenzene_liquid, water_purified_angels),
        order = g,
        -- C₆H₆(l) + HNO₃(l) -H₂SO₄-> C₆H₅NO₂(l) + H₂O(l)
        ingredients =
        {
            {type = fluid, name = benzene_angels, amount = 120},
            {type = fluid, name = nitric_acid_angels, amount = 120},
            {type = fluid, name = sulfuric_acid_angels, amount = 120}
        },
        results =
        {
            {type = fluid, name = nitrobenzene_liquid, amount = 120},
            {type = fluid, name = water_purified_angels, amount = 60}, -- 120
            {type = fluid, name = sulfuric_acid_angels, amount = 60} -- 120
        },
        main_product = nitrobenzene_liquid
    },
    {
        name = aniline_liquid,
        category = chemistry,
        subgroup = is_aquilo_recipe,
        icons = TWO_D_I(nitrobenzene_liquid, hydrogen_angels, aniline_liquid, water_purified_angels),
        order = h,
        -- C₆H₅NO₂(l) + 3H₂(g) -cat(Ni/Pd)-> C₆H₇N(l) + 2H₂O(l)
        ingredients =
        {
            {type = fluid, name = nitrobenzene_liquid, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 180},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = aniline_liquid, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60}, -- 120
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = aniline_liquid
    },
    {
        name = sodium_nitrite,
        category = angels_advanced_chemistry,
        subgroup = is_aquilo_recipe,
        icons = THREE_D_I(sodium_carbonate_solution, nitrogen_monoxide_angels, nitrogen_dioxide_angels, sodium_nitrite, carbon_dioxide_angels, water_purified_angels),
        order = i,
        -- Na₂CO₃(aq) + NO(g) + NO₂(g) --> 2NaNO₂(s) + CO₂(g) + H₂O(l)
        ingredients =
        {
            {type = fluid, name = sodium_carbonate_solution, amount = 120},
            {type = fluid, name = nitrogen_monoxide_angels, amount = 120},
            {type = fluid, name = nitrogen_dioxide_angels, amount = 120}
        },
        results =
        {
            {type = item, name = sodium_nitrite, amount = 16},
            {type = fluid, name = carbon_dioxide_angels, amount = 60}, -- 120
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = sodium_nitrite
    },
    {
        name = benzenediazonium_chloride_solution,
        category = angels_advanced_chemistry,
        subgroup = is_aquilo_recipe,
        icons = THREE_D_I(aniline_liquid, sodium_nitrite, hydrochloric_acid_angels, benzenediazonium_chloride_solution, sodium_chloride_solution, water_purified_angels),
        order = j,
        -- C₆H₇N(l) + NaNO₂(s) + 2HCl(aq) --> C₆H₅N₂Cl(aq) + NaCl(aq) + 2H₂O(l)
        ingredients =
        {
            {type = fluid, name = aniline_liquid, amount = 120},
            {type = item, name = sodium_nitrite, amount = 8},
            {type = fluid, name = hydrochloric_acid_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = benzenediazonium_chloride_solution, amount = 120},
            {type = fluid, name = sodium_chloride_solution, amount = 60}, -- 120
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        },
        main_product = benzenediazonium_chloride_solution
    },
    {
        name = lactic_acid,
        category = angels_advanced_chemistry,
        subgroup = is_aquilo_recipe,
        icons = THREE_D_I(acetaldehyde, hydrocyanic_acid, water_purified_angels, lactic_acid, nil, ammonia_angels),
        order = k,
        -- C₂H₄O(l) + HCN(l) + H₂O(l) --> C₃H₆O₃(l) + NH₃(g)
        ingredients =
        {
            {type = fluid, name = acetaldehyde, amount = 120},
            {type = fluid, name = hydrocyanic_acid, amount = 120},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = lactic_acid, amount = 120},
            {type = fluid, name = ammonia_angels, amount = 60} -- 120
        },
        main_product = lactic_acid
    },
    {
        name = ethyl_lactate_liquid,
        category = chemistry,
        subgroup = is_aquilo_recipe,
        icons = TWO_D_I(lactic_acid, ethanol_angels, ethyl_lactate_liquid, water_purified_angels),
        order = l,
        -- C₃H₆O₃(l) + C₂H₅OH(l) --> C₅H₁₀O₃(l) + H₂O(l)
        ingredients =
        {
            {type = fluid, name = lactic_acid, amount = 60},
            {type = fluid, name = ethanol_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = ethyl_lactate_liquid, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 30} -- 60
        },
        main_product = ethyl_lactate_liquid
    },
    {
        type = recipe,
        name = photoresist_liquid,
        category = angels_advanced_chemistry,
        subgroup = is_aquilo_recipe,
        icons = FOUR_I(liquid_plastic_angels, benzenediazonium_chloride_solution, ethyl_lactate_liquid, photoresist_liquid),
        order = m,
        -- Liquid Plastic + C₆H₅N₂Cl(aq) + C₅H₁₀O₃(l) --> Photoresist liquid
        ingredients =
        {
            {type = fluid, name = liquid_plastic_angels, amount = 120},
            {type = fluid, name = benzenediazonium_chloride_solution, amount = 120},
            {type = fluid, name = ethyl_lactate_liquid, amount = 120}
        },
        results = {{type = fluid, name = photoresist_liquid, amount = 120}},
        main_product = photoresist_liquid
    },
    {
        name = semiconductor,
        category = electromagnetics,
        subgroup = is_aquilo_recipe,
        icons = R_P_I(semiconductor, nil, nil, number_1),
        order = n,
        allow_productivity = true,
        allow_quality = true,
        -- Plastic + Germanium plate + Antimony plate + Platinum wire + Photoresist liquid --> Semiconductor
        ingredients =
        {
            {type = item, name = plastic, amount = 4},
            {type = item, name = antimony_plate, amount = 4},
            {type = item, name = germanium_plate, amount = 4},
            {type = item, name = platinum_cable, amount = 4},
            {type = fluid, name = photoresist_liquid, amount = 60}
        },
        results = {{type = item, name = semiconductor, amount = 2}},
        main_product = semiconductor
    },
    {
        name = semiconductor_2,
        category = electromagnetics,
        subgroup = is_aquilo_recipe,
        icons = R_P_I(semiconductor, nil, nil, number_2),
        order = n_a,
        allow_productivity = true,
        allow_quality = true,
        -- LDS + Gallium arsenide + Gallium nitride + Niobium-titanium wire + Photoresist --> Semiconductor T2
        ingredients =
        {
            {type = item, name = low_density_structure, amount = 4},
            {type = item, name = galium_arsenide, amount = 4},
            {type = item, name = galium_nitride, amount = 4},
            {type = item, name = niobium_titanium_cable, amount = 4},
            {type = fluid, name = photoresist_liquid, amount = 60}
        },
        results = {{type = item, name = semiconductor, amount = 4}},
        main_product = semiconductor
    }
})

-- OTHERS
arsenic_recipe = "arsenic-pure-mix-processing"
ethanol_from_chloroethane_gas = "ethanol-from-chloroethane-gas"
TIMSABA.functions.create_recipes
({
    {
        name = arsenic_recipe,
        category = ore_sorting_6,
        subgroup = is_antimonite,
        icons = AR_FOUR_I(hybride_catalyst, antimonite_purified, germanite_purified, arsenic),
        order = j,
        allow_productivity = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = hybride_catalyst, amount = 1},
            {type = item, name = antimonite_purified, amount = 2},
            {type = item, name = germanite_purified, amount = 2}
        },
        results = {{type = item, name = arsenic, amount = 4}},
        main_product = arsenic
    },
    {
        type = recipe,
        name = ethanol_from_chloroethane_gas,
        category = chemistry,
        subgroup = "angels-bio-processor-fermentation",
        icons = TWO_D_I(chloroethane_gas, sodium_hydroxide_solution_angels, ethanol_angels, sodium_chloride_solution),
        order = d_a,
        allow_productivity = false,
        -- C₂H₅Cl(g) + NaOH(aq) --> C₂H₅OH(l) + NaCl(aq)
        ingredients =
        {
            {type = fluid, name = chloroethane_gas, amount = 60},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = ethanol_angels, amount = 60},
            {type = fluid, name = sodium_chloride_solution, amount = 30} -- 60
        },
        main_product = ethanol_angels
    },
    {
        name = acetaldehyde,
        category = chemistry,
        subgroup = is_carbon_fluids_2,
        icons = THREE_R_I(ethanol_angels, acetaldehyde, hydrogen_angels),
        order = c,
        allow_productivity = false,
        -- C₂H₅OH(l) -cat(Cu/Ag)-> C₂H₄O(l) + H₂(g)
        ingredients =
        {
            {type = fluid, name = ethanol_angels, amount = 60},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = acetaldehyde, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 30}, -- 60
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = acetaldehyde
    },
    {
        name = hydrocyanic_acid,
        category = angels_advanced_chemistry,
        subgroup = is_others_fluids,
        icons = THREE_D_I(methane_angels, ammonia_angels, oxygen_angels, hydrocyanic_acid, nil, steam),
        order = b,
        -- 2CH₄(g) + 2NH₃(g) + 3O₂(g) --> 2HCN + 6H₂O
        ingredients =
        {
            {type = fluid, name = methane_angels, amount = 120},
            {type = fluid, name = ammonia_angels, amount = 120},
            {type = fluid, name = oxygen_angels, amount = 180}
        },
        results =
        {
            {type = fluid, name = hydrocyanic_acid, amount = 120},
            {type = fluid, name = steam, amount = 240} -- 720
        },
        main_product = hydrocyanic_acid
    }
})

-- ROLL and COIL T3