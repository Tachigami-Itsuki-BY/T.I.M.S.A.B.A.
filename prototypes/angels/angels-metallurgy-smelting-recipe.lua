-- ANGELS METALLURGY SMELTING
-- IRON and STEEL
iron_hydroxide_II_from_iron_sulfate_II_solution = "iron-hydroxide-II-from-iron-sulfate-II-solution"
iron_oxide_III_from_iron_sulfate_II = "iron-oxide-III-from-iron-sulfate-II"
steel_ingot_2 = "ingot-steel-2"
steel_ingot_3 = "ingot-steel-3"
data:extend
({
    -- IRON
    {
        localised_name = {"item-name.iron-hydroxide-II"},
        type = recipe,
        name = iron_hydroxide_II,
        category = angels_chemical_smelting_1,
        subgroup = is_iron_chemistry,
        icons = THREE_D_I(iron_processed, water_purified_angels, oxygen_angels, iron_hydroxide_II),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Fe + 2H₂O + O₂ --> 2Fe(OH)₂
        ingredients =
        {
            {type = item, name = iron_processed, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 240},
            {type = fluid, name = oxygen_angels, amount = 120}
        },
        results = {{type = item, name = iron_hydroxide_II, amount = 16}},
        main_product = iron_hydroxide_II
    },
    {
        type = recipe,
        name = iron_sulfate_II,
        category = angels_chemical_smelting_2,
        subgroup = is_iron_chemistry,
        icons = TWO_D_I(iron_pellet, sulfuric_acid_angels, iron_sulfate_II, hydrogen_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Fe + H₂SO₄ --> FeSO₄ + H₂
        ingredients =
        {
            {type = item, name = iron_pellet, amount = 8},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results =
        {
            {type = item, name = iron_sulfate_II, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 240
        },
        main_product = iron_sulfate_II
    },
    {
        type = recipe,
        name = iron_sulfate_II_solution,
        category = angels_chemical_smelting_2,
        subgroup = is_iron_chemistry,
        icons = THREE_I(iron_sulfate_II, water_purified_angels, iron_sulfate_II_solution),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- FeSO₄ + H₂O --> FeSO₄(aq)
        ingredients =
        {
            {type = item, name = iron_sulfate_II, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results = {{type = fluid, name = iron_sulfate_II_solution, amount = 240}},
        main_product = iron_sulfate_II_solution
    },
    {
        type = recipe,
        name = iron_cathode,
        category = angels_petrochem_electrolyser,
        subgroup = is_iron_chemistry,
        icons = FOUR_R_I(iron_sulfate_II_solution, sulfuric_acid_angels, iron_cathode, ammonia_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- (FeSO₄ + H₂O) + ((NH₄)₂SO₄ + H₂O) -electrode/electrolys-> Fe + 2H₂SO₄ + 2NH₃ + H₂O₂
        ingredients =
        {
            {type = fluid, name = iron_sulfate_II_solution, amount = 240},
            {type = fluid, name = ammonium_sulfate_solution, amount = 240},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = item, name = iron_cathode, amount = 16},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}, -- 480
            {type = fluid, name = ammonia_angels, amount = 240}, -- 480
            --{type = fluid, name = hydrogen_peroxide, amount = 120}, -- 240
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = iron_cathode
    },
    {
        type = recipe,
        name = iron_hydroxide_III,
        category = angels_chemical_smelting_2,
        subgroup = is_iron_chemistry,
        icons = THREE_D_I(iron_hydroxide_II, water_purified_angels, oxygen_angels, iron_hydroxide_III),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 4Fe(OH)₂ + O₂ + 2H₂O --> 4Fe(OH)₃
        ingredients =
        {
            {type = item, name = iron_hydroxide_II, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 120},
            {type = fluid, name = oxygen_angels, amount = 60}
        },
        results = {{type = item, name = iron_hydroxide_III, amount = 16}},
        main_product = iron_hydroxide_III
    },
    {
        type = recipe,
        name = iron_oxide_III,
        category = angels_blast_smelting_3,
        subgroup = is_iron_chemistry,
        icons = THREE_R_I(iron_hydroxide_III, iron_oxide_III, steam),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Fe(OH)₃ --> Fe₂O₃ + 3H₂O
        ingredients = {{type = item, name = iron_hydroxide_III, amount = 16}},
        results =
        {
            {type = item, name = iron_oxide_III, amount = 8},
            {type = fluid, name = steam, amount = 120} -- 360
        },
        main_product = iron_oxide_III
    },
    {
        type = recipe,
        name = iron_oxide_III_from_iron_sulfate_II,
        category = angels_chemical_smelting_4,
        subgroup = is_iron_chemistry,
        icons = THREE_D_I(iron_sulfate_II, nil, nil, iron_oxide_III, sulfur_dioxide_angels, sulfur_trioxide_gas),
        order = f_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2FeSO₄(s) --> Fe₂O₃(s) + SO₂(g) + SO₃(g)
        ingredients = {{type = item, name = iron_sulfate_II, amount = 16}},
        results =
        {
            {type = item, name = iron_oxide_III, amount = 8},
            {type = fluid, name = sulfur_dioxide_angels, amount = 60}, -- 120
            {type = fluid, name = sulfur_trioxide_gas, amount = 60} -- 120
        },
        main_product = iron_oxide_III
    },
    {
        type = recipe,
        name = iron_hydroxide_II_from_iron_sulfate_II_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_iron_chemistry,
        icons = TWO_D_I(iron_sulfate_II_solution, lime_angels, iron_hydroxide_II, calcium_sulfate_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- (FeSO₄ + H₂O) + CaO --> Fe(OH)₂ + CaSO₄
        ingredients =
        {
            {type = fluid, name = iron_sulfate_II_solution, amount = 240},
            {type = item, name = lime_angels, amount = 16}
        },
        results =
        {
            {type = item, name = iron_hydroxide_II, amount = 16},
            {type = item, name = calcium_sulfate_angels, amount = 8} -- 16
        },
        main_product = iron_hydroxide_II
    },
    -- STEEL
    {
        type = recipe,
        name = steel_ingot_2,
        category = angels_chemical_smelting_1,
        subgroup = is_steel,
        icons = THREE_D_I(iron_hydroxide_II, carbon_angels, oxygen_angels, steel_ingot, steam, carbon_monoxide_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Fe(OH)₂ + 2C -O₂-> FeC + H₂O + CO
        ingredients =
        {
            {type = item, name = iron_hydroxide_II, amount = 16},
            {type = item, name = carbon_angels, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 120}
        },
        results =
        {
            {type = item, name = steel_ingot, amount = 16},
            {type = fluid, name = steam, amount = 120}, -- 240
            {type = fluid, name = carbon_monoxide_angels, amount = 120} -- 240
        },
        main_product = steel_ingot
    },
    {
        type = recipe,
        name = steel_ingot_3,
        category = angels_blast_smelting_3,
        subgroup = is_steel,
        icons = THREE_D_I(iron_oxide_III, carbon_angels, oxygen_angels, steel_ingot, nil, carbon_dioxide_angels),
        order = a_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Fe₂O₃ + 8C + O₂ -O₂-> 4FeC + 4CO₂
        ingredients =
        {
            {type = item, name = iron_oxide_III, amount = 8},
            {type = item, name = carbon_angels, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 120}
        },
        results =
        {
            {type = item, name = steel_ingot, amount = 16},
            {type = fluid, name = carbon_dioxide_angels, amount = 120} -- 240
        },
        main_product = steel_ingot
    }
})

-- COPPER
copper_hydroxide_II_from_copper_sulfate_II_solution = "copper-hydroxide-II-from-copper-sulfate-II-solution"
copper_hydroxide_II_from_copper_nitrate_II_solution = "copper-hydroxide-II-from-copper-nitrate-II-solution"
copper_chloride_I_alt = "copper-chloride-I-alt"
data:extend
({
    {
        type = recipe,
        name = copper_hydroxide_II,
        category = angels_chemical_smelting_1,
        subgroup = is_copper_chemistry,
        icons = THREE_D_I(copper_processed, water_purified_angels, oxygen_angels, copper_hydroxide_II),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Cu + 2H₂O + O₂ --> 2Cu(OH)₂
        ingredients =
        {
            {type = item, name = copper_processed, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 240},
            {type = fluid, name = oxygen_angels, amount = 120}
        },
        results = {{type = item, name = copper_hydroxide_II, amount = 16}},
        main_product = copper_hydroxide_II
    },
    {
        type = recipe,
        name = copper_hydroxide_II_from_copper_sulfate_II_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_copper_chemistry,
        icons = TWO_D_I(copper_sulfate_II_solution, lime_angels, copper_hydroxide_II, calcium_sulfate_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- (CuSO₄ + H₂O) + CaO --> Cu(OH)₂ + CaSO₄
        ingredients =
        {
            {type = fluid, name = copper_sulfate_II_solution, amount = 240},
            {type = item, name = lime_angels, amount = 16}
        },
        results =
        {
            {type = item, name = copper_hydroxide_II, amount = 16},
            {type = item, name = calcium_sulfate_angels, amount = 8} -- 16
        },
        main_product = copper_hydroxide_II
    },
    {
        type = recipe,
        name = copper_hydroxide_II_from_copper_nitrate_II_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_copper_chemistry,
        icons = THREE_D_I(copper_nitrate_II_solution, nil, sodium_hydroxide_angels, copper_hydroxide_II, sodium_nitrate_angels, water_purified_angels),
        order = a_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Cu(NO₃)₂(aq) + 2NaOH --> Cu(OH)₂ + 2NaNO₃ + H₂O
        ingredients =
        {
            {type = fluid, name = copper_nitrate_II_solution, amount = 240},
            {type = item, name = sodium_hydroxide_angels, amount = 32}
        },
        results =
        {
            {type = item, name = copper_hydroxide_II, amount = 16},
            {type = item, name = sodium_nitrate_angels, amount = 16}, -- 32
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        },
        main_product = copper_hydroxide_II
    },
    {
        type = recipe,
        name = copper_sulfate_II,
        category = angels_chemical_smelting_2,
        subgroup = is_copper_chemistry,
        icons = TWO_D_I(copper_pellet, sulfuric_acid_angels, copper_sulfate_II, hydrogen_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Cu + H₂SO₄ --> CuSO₄ + H₂
        ingredients =
        {
            {type = item, name = copper_pellet, amount = 8},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results =
        {
            {type = item, name = copper_sulfate_II, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 240
        },
        main_product = copper_sulfate_II
    },
    {
        type = recipe,
        name = copper_sulfate_II_solution,
        category = angels_chemical_smelting_2,
        subgroup = is_copper_chemistry,
        icons = THREE_I(copper_sulfate_II, water_purified_angels, copper_sulfate_II_solution),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- CuSO₄ + H₂O --> CuSO₄(aq)
        ingredients =
        {
            {type = item, name = copper_sulfate_II, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results = {{type = fluid, name = copper_sulfate_II_solution, amount = 120}},
        main_product = copper_sulfate_II_solution
    },
    {
        type = recipe,
        name = copper_chloride_I,
        category = angels_blast_smelting_4,
        subgroup = is_copper_chemistry,
        icons = TWO_D_I(copper_ingot, copper_chloride_II_solution_angels, copper_chloride_I, steam),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Cu(s) + CuCl₂(aq) --> 2CuCl(s) + H₂O(g)
        ingredients =
        {
            {type = item, name = copper_powder, amount = 16},
            {type = fluid, name = copper_chloride_II_solution_angels, amount = 240}
        },
        results =
        {
            {type = item, name = copper_chloride_I, amount = 32},
            {type = fluid, name = steam, amount = 120}, -- 240
        },
        main_product = copper_chloride_I
    },
    {
        type = recipe,
        name = copper_chloride_I_alt,
        category = angels_chemical_smelting_4,
        subgroup = is_copper_chemistry,
        icons = THREE_D_I(copper_chloride_II_solution_angels, sulfur_dioxide_angels, water_purified_angels, copper_chloride_I, sulfuric_acid_angels, hydrochloric_acid_angels),
        order = e_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2CuCl₂(aq) + SO₂(g) + 2H₂O(l) --> 2CuCl(s) + H₂SO₄(l) + 2HCl(aq)
        ingredients =
        {
            {type = fluid, name = copper_chloride_II_solution_angels, amount = 480},
            {type = fluid, name = sulfur_dioxide_angels, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 480}
        },
        results =
        {
            {type = item, name = copper_chloride_I, amount = 32},
            {type = fluid, name = sulfuric_acid_angels, amount = 120}, -- 240
            {type = fluid, name = hydrochloric_acid_angels, amount = 240} -- 480
        },
        main_product = copper_chloride_I
    },
    {
        type = recipe,
        name = ammonium_dichlorocuprate_I_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_copper_chemistry,
        icons = THREE_I(ammonium_chloride_solution_angels, copper_chloride_I, ammonium_dichlorocuprate_I_solution),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- NH₄Cl(aq) + CuCl --> NH₄CuCl₂(aq)
        ingredients =
        {
            {type = fluid, name = ammonium_chloride_solution_angels, amount = 240},
            {type = item, name = copper_chloride_I, amount = 16}
        },
        results = {{type = fluid, name = ammonium_dichlorocuprate_I_solution, amount = 240}},
        main_product = ammonium_dichlorocuprate_I_solution
    },
    {
        type = recipe,
        name = copper_nitrate_II_solution,
        category = angels_advanced_chemistry,
        subgroup = is_copper_chemistry,
        icons = THREE_D_I(copper_oxide_I, nil, nitric_acid_angels, copper_nitrate_II_solution, nitrogen_dioxide_angels, water_purified_angels),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Cu₂O + 6HNO₃ --> 2Cu(NO₃)₂(aq) + 2NO₂ + H₂O
        ingredients =
        {
            {type = item, name = copper_oxide_I, amount = 8},
            {type = fluid, name = nitric_acid_angels, amount = 720}
        },
        results =
        {
            {type = fluid, name = copper_nitrate_II_solution, amount = 240},
            {type = fluid, name = nitrogen_dioxide_angels, amount = 120}, -- 240
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = copper_nitrate_II_solution
    }
})

-- LEAD
data:extend
({
    {
        type = recipe,
        name = hexafluorosilicate_lead_II_solution,
        category = angels_chemical_smelting_2,
        subgroup = is_lead_chemistry,
        icons = THREE_I(lead_pellet, hexafluorosilicic_acid, hexafluorosilicate_lead_II_solution),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Pb + H₂SiF₆(aq) --> PbSiF₆(aq) + H₂
        ingredients =
        {
            {type = item, name = lead_pellet, amount = 8},
            {type = fluid, name = hexafluorosilicic_acid, amount = 240}
        },
        results =
        {
            {type = fluid, name = hexafluorosilicate_lead_II_solution, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 240
        },
        main_product = hexafluorosilicate_lead_II_solution
    },
    {
        type = recipe,
        name = lead_oxide_IV,
        category = angels_blast_smelting_2,
        subgroup = is_lead_chemistry,
        icons = THREE_I(lead_oxide_II, oxygen_angels, lead_oxide_IV),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2PbO + O₂ --> 2PbO₂
        ingredients =
        {
            {type = item, name = lead_oxide_II, amount = 16},
            {type = fluid, name = oxygen_angels, amount = 120}
        },
        results = {{type = item, name = lead_oxide_IV, amount = 16}},
        main_product = lead_oxide_IV
    },
    {
        type = recipe,
        name = lead_sponge,
        category = angels_chemical_smelting_1,
        subgroup = is_lead_chemistry,
        icons = THREE_R_I(lead_oxide_II, lead_sponge, oxygen_angels),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2PbO --> 2Pb + O₂
        ingredients = {{type = item, name = lead_oxide_II, amount = 16}},
        results =
        {
            {type = item, name = lead_sponge, amount = 16},
            {type = fluid, name = oxygen_angels, amount = 60} -- 120
        },
        main_product = lead_sponge
    }
})

-- TIN
data:extend
({
    {
        type = recipe,
        name = tin_chloride_IV,
        category = angels_chemical_smelting_1,
        subgroup = is_tin_chemistry,
        icons = THREE_I(tin_processed, chlorine_angels, tin_chloride_IV),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Sn + 2Cl₂ --> SnCl₄
        ingredients =
        {
            {type = item, name = tin_processed, amount = 16},
            {type = fluid, name = chlorine_angels, amount = 480}
        },
        results = {{type = fluid, name = tin_chloride_IV, amount = 240}},
        main_product = tin_chloride_IV
    },
    {
        type = recipe,
        name = hexafluorosilicate_tin_II_solution,
        category = angels_chemical_smelting_2,
        subgroup = is_tin_chemistry,
        icons = THREE_I(tin_pellet, hexafluorosilicic_acid, hexafluorosilicate_tin_II_solution),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Sn + H₂SiF₆(aq) --> SnSiF₆(aq) + H₂
        ingredients =
        {
            {type = item, name = tin_pellet, amount = 8},
            {type = fluid, name = hexafluorosilicic_acid, amount = 240}
        },
        results =
        {
            {type = fluid, name = hexafluorosilicate_tin_II_solution, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 240
        },
        main_product = hexafluorosilicate_tin_II_solution
    },
    {
        type = recipe,
        name = tin_cathode,
        category = angels_petrochem_electrolyser,
        subgroup = is_tin_chemistry,
        icons = FOUR_R_I(hexafluorosilicate_tin_II_solution, silicon_chloride_IV_gas, tin_cathode, hydrogen_fluoride_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- (SnSiF₆ + H₂O) + (H₂SiF₆ + H₂O) -electrode/electrolys-> Sn + 2SiF₄ + 4HF + H₂O₂
        ingredients =
        {
            {type = fluid, name = hexafluorosilicate_tin_II_solution, amount = 240},
            {type = fluid, name = hexafluorosilicic_acid, amount = 240},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = item, name = tin_cathode, amount = 16},
            {type = fluid, name = silicon_chloride_IV_gas, amount = 240}, -- 480
            {type = fluid, name = hydrogen_fluoride_angels, amount = 480}, -- 960
            --{type = fluid, name = hydrogen_peroxide, amount = 120}, -- 240
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = tin_cathode
    }
})

-- MANGANESE
manganese_sulfate_II_solution_from_manganese_oxide_II = "manganese-sulfate-II-solution-from-manganese-oxide-II"
data:extend
({
    {
        type = recipe,
        name = manganese_oxide_IV,
        category = angels_blast_smelting_1,
        subgroup = is_manganese_chemistry,
        icons = THREE_I(manganese_ore_angels, oxygen_angels, manganese_oxide_IV),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Mn + O₂ --> MnO₂
        ingredients =
        {
            {type = item, name = manganese_ore_angels, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 240}
        },
        results = {{type = item, name = manganese_oxide_IV, amount = 16}},
        main_product = manganese_oxide_IV
    },
    {
        type = recipe,
        name = manganese_sulfate_II,
        category = angels_chemical_smelting_1,
        subgroup = is_manganese_chemistry,
        icons = TWO_D_I(manganese_processed, sulfuric_acid_angels, manganese_sulfate_II, hydrogen_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Mn + H₂SO₄ --> MnSO₄ + H₂
        ingredients =
        {
            {type = item, name = manganese_processed, amount = 16},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results =
        {
            {type = item, name = manganese_sulfate_II, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 240
        },
        main_product = manganese_sulfate_II
    },
    {
        type = recipe,
        name = manganese_sulfate_II_solution,
        category = angels_chemical_smelting_1,
        subgroup = is_manganese_chemistry,
        icons = THREE_I(manganese_sulfate_II, water_purified_angels, manganese_sulfate_II_solution),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- MnSO₄ + H₂O --> MnSO₄(aq)
        ingredients =
        {
            {type = item, name = manganese_sulfate_II, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results = {{type = fluid, name = manganese_sulfate_II_solution, amount = 240}},
        main_product = manganese_sulfate_II_solution
    },
    {
        type = recipe,
        name = manganese_sulfate_II_solution_from_manganese_oxide_II,
        category = angels_chemical_smelting_2,
        subgroup = is_manganese_chemistry,
        icons = THREE_I(manganese_oxide_II, sulfuric_acid_angels, manganese_sulfate_II_solution),
        order = d_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- MnO + H₂SO₄ --> MnSO₄(aq)
        ingredients =
        {
            {type = item, name = manganese_oxide_II, amount = 16},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results = {{type = fluid, name = manganese_sulfate_II_solution, amount = 240}},
        main_product = manganese_sulfate_II_solution
    },
    {
        type = recipe,
        name = potassium_permanganate,
        category = angels_advanced_chemistry,
        subgroup = is_manganese_chemistry,
        icons = FOUR_THREE_I(manganese_oxide_II, potassium_hydroxide_solution, oxygen_angels, chlorine_angels, potassium_permanganate, potassium_chloride_solution, water_purified_angels),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2MnO₂ + 4KOH(aq) + O₂ + Cl₂ --> 2KMnO₄(s) + 2KCl(aq) + 4H₂O
        ingredients =
        {
            {type = item, name = manganese_oxide_II, amount = 16},
            {type = fluid, name = potassium_hydroxide_solution, amount = 480},
            {type = fluid, name = oxygen_angels, amount = 120},
            {type = fluid, name = chlorine_angels, amount = 120}
        },
        results =
        {
            {type = item, name = potassium_permanganate, amount = 16},
            {type = fluid, name = potassium_chloride_solution, amount = 120}, -- 240
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = potassium_permanganate
    }
})

-- SILICON
silicon_oxide_IV_from_silicon_chloride_IV_gas = "silicon-oxide-IV-from-silicon-chloride-IV-gas"
silicon_oxide_IV_from_silicon_fluoride_IV_gas = "silicon-oxide-IV-from-silicon-fluoride-IV-gas"
silane_gas_from_magnesium_silicide_ingot = "silane-gas-from-magnesium-silicide-ingot"
hexafluorosilicic_acid_from_silicon_fluoride_IV_gas = "hexafluorosilicic-acid-from-silicon-fluoride-IV-gas"
data:extend
({
     {
        type = recipe,
        name = silicon_oxide_IV,
        category = angels_blast_smelting_2,
        subgroup = is_silicon_chemistry,
        icons = THREE_I(silicon_ore_bob, oxygen_angels, silicon_oxide_IV),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Si + O₂ --> SiO₂
        ingredients =
        {
            {type = item, name = silicon_ore_bob, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 240}
        },
        results = {{type = item, name = silicon_oxide_IV, amount = 16}},
        main_product = silicon_oxide_IV
    },
    {
        type = recipe,
        name = silicon_oxide_IV_from_silicon_chloride_IV_gas,
        category = angels_chemical_smelting_2,
        subgroup = is_silicon_chemistry,
        icons = TWO_D_I(silicon_chloride_IV_gas, water_purified_angels, silicon_oxide_IV, hydrogen_chloride_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- SiCl₄ + 2H₂O -T-> SiO₂ + 4HCl
        ingredients =
        {
            {type = fluid, name = silicon_chloride_IV_gas, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 480}
        },
        results =
        {
            {type = item, name = silicon_oxide_IV, amount = 16},
            {type = fluid, name = hydrogen_chloride_angels, amount = 480} -- 960
        },
        main_product = silicon_oxide_IV
    },
    {
        type = recipe,
        name = silicon_oxide_IV_from_silicon_fluoride_IV_gas,
        category = angels_chemical_smelting_3,
        subgroup = is_silicon_chemistry,
        icons = TWO_D_I(silicon_fluoride_IV_gas, lime_angels, silicon_oxide_IV, fluorite_angels),
        order = a_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- SiF₄ + 2CaO -T-> SiO₂ + 2CaF₂
        ingredients =
        {
            {type = fluid, name = silicon_fluoride_IV_gas, amount = 240},
            {type = item, name = lime_angels, amount = 32}
        },
        results =
        {
            {type = item, name = silicon_oxide_IV, amount = 16},
            {type = item, name = fluorite_angels, amount = 16} -- 32
        },
        main_product = silicon_oxide_IV
    },
    {
        type = recipe,
        name = silane_gas_from_magnesium_silicide_ingot,
        category = angels_advanced_chemistry,
        subgroup = is_silicon_chemistry,
        icons = THREE_D_I(magnesium_silicide_ingot, nil, hydrochloric_acid_angels, silane_gas, magnesium_chloride_solution, water_purified_angels),
        order = d_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Mg₂Si + 4HCl(aq) --> 2MgCl₂(aq) + SiH₄ + 2H₂O
        ingredients =
        {
            {type = item, name = magnesium_silicide_ingot, amount = 16},
            {type = fluid, name = hydrochloric_acid_angels, amount = 960}
        },
        results =
        {
            {type = fluid, name = silane_gas, amount = 240},
            {type = fluid, name = magnesium_chloride_solution, amount = 240}, -- 480
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = silane_gas
    },
    {
        type = recipe,
        name = hexafluorosilicic_acid_from_silicon_fluoride_IV_gas,
        category = angels_chemical_smelting_2,
        subgroup = is_silicon_chemistry,
        icons = THREE_I(silicon_fluoride_IV_gas, hydrofluoric_acid_angels, hexafluorosilicic_acid),
        order = h_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- SiF₄ + 2HF(aq) --> H₂SiF₆(aq)
        ingredients =
        {
            {type = fluid, name = silicon_fluoride_IV_gas, amount = 240},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 480}
        },
        results = {{type = fluid, name = hexafluorosilicic_acid, amount = 240}},
        main_product = hexafluorosilicic_acid
    }
})

-- NICKEL
data:extend
({
    {
        type = recipe,
        name = nickel_sulfate_II_solution,
        category = angels_chemical_smelting_2,
        subgroup = is_nickel_chemistry,
        icons = THREE_I(nickel_sulfate_II, water_purified_angels, nickel_sulfate_II_solution),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- NiSO₄ + H₂O --> NiSO₄(aq)
        ingredients =
        {
            {type = item, name = nickel_sulfate_II, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results = {{type = fluid, name = nickel_sulfate_II_solution, amount = 240}},
        main_product = nickel_sulfate_II_solution
    },
    {
        type = recipe,
        name = tetracarbonyl_nickel,
        category = angels_chemical_smelting_3,
        subgroup = is_nickel_chemistry,
        icons = THREE_I(nickel_pellet, carbon_monoxide_angels, tetracarbonyl_nickel),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Ni + 4CO --> Ni(CO)₄
        ingredients =
        {
            {type = item, name = nickel_pellet, amount = 8},
            {type = fluid, name = carbon_monoxide_angels, amount = 960}
        },
        results = {{type = fluid, name = tetracarbonyl_nickel, amount = 240}},
        main_product = tetracarbonyl_nickel
    }
})

-- ALUMINIUM
aluminium_chloride_2 = "aluminium-chloride-2"
aluminium_chloride_solution_from_aluminium_hydroxide = "aluminium-chloride-solution-from-aluminium-hydroxide"
lithium_tetraethoxy_aluminate_solution_ether_reprocess = "lithium-tetraethoxy-aluminate-solution-ether-reprocess"
data:extend
({
    {
        type = recipe,
        name = aluminium_chloride,
        category = angels_chemical_smelting_1,
        subgroup = is_aluminium_chemistry,
        icons = THREE_I(aluminium_ore_bob, chlorine_angels, aluminium_chloride),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Al + 3Cl₂ --> 2AlCl₃
        ingredients =
        {
            {type = item, name = aluminium_ore_bob, amount = 32},
            {type = fluid, name = chlorine_angels, amount = 360}
        },
        results = {{type = item, name = aluminium_chloride, amount = 16}},
        main_product = aluminium_chloride
    },
    {
        type = recipe,
        name = aluminium_chloride_2,
        category = angels_blast_smelting_3,
        subgroup = is_aluminium_chemistry,
        icons = THREE_R_I(aluminium_chloride_solution, aluminium_chloride, steam),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- AlCl₃(aq) --> AlCl₃ + H₂O
        ingredients = {{type = fluid, name = aluminium_chloride_solution, amount = 240}},
        results =
        {
            {type = item, name = aluminium_chloride, amount = 16},
            {type = fluid, name = steam, amount = 120} -- 360
        },
        main_product = aluminium_chloride
    },
    {
        type = recipe,
        name = aluminium_chloride_solution,
        category = angels_chemical_smelting_2,
        subgroup = is_aluminium_chemistry,
        icons = THREE_D_I(aluminium_processed, hydrogen_chloride_angels, water_purified_angels, aluminium_chloride_solution, nil, hydrogen_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Al + 6HCl + 2H₂O --> 2AlCl₃(aq) + 3H₂
        ingredients =
        {
            {type = item, name = aluminium_processed, amount = 16},
            {type = fluid, name = hydrogen_chloride_angels, amount = 720},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = aluminium_chloride_solution, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 360
        },
        main_product = aluminium_chloride_solution
    },
    {
        type = recipe,
        name = aluminium_chloride_solution_from_aluminium_hydroxide,
        category = angels_chemical_smelting_4,
        subgroup = is_aluminium_chemistry,
        icons = TWO_D_I(aluminium_hydroxide, hydrochloric_acid_angels, aluminium_chloride_solution, water_purified_angels),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Al(OH)₃ + 3HCl(aq) --> AlCl₃(aq) + 3H₂O + (2H₂O = aq)
        ingredients =
        {
            {type = item, name = aluminium_hydroxide, amount = 16},
            {type = fluid, name = hydrochloric_acid_angels, amount = 720}
        },
        results =
        {
            {type = fluid, name = aluminium_chloride_solution, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 480} -- 1200
        },
        main_product = aluminium_chloride_solution
    },
    {
        type = recipe,
        name = aluminium_chloride_solution_ether,
        category = angels_chemical_smelting_2,
        subgroup = is_aluminium_chemistry_ether,
        icons = THREE_I(aluminium_chloride, diethyl_ether, aluminium_chloride_solution_ether),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- AlCl₃ + (C₂H₅)₂O --> AlCl₃(ether)
        ingredients =
        {
            {type = item, name = aluminium_chloride, amount = 16},
            {type = fluid, name = diethyl_ether, amount = 240}
        },
        results = {{type = fluid, name = aluminium_chloride_solution_ether, amount = 240}},
        main_product = aluminium_chloride_solution_ether
    },
    {
        type = recipe,
        name = lithium_aluminium_hydride_solution_ether,
        category = angels_chemical_smelting_2,
        subgroup = is_aluminium_chemistry_ether,
        icons = TWO_D_I(lithium_hydride, aluminium_chloride_solution_ether, lithium_aluminium_hydride_solution_ether, lithium_chloride_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 4LiH + AlCl₃(ether) --> LiAlH₄(ether) + 3LiCl
        ingredients =
        {
            {type = item, name = lithium_hydride, amount = 16},
            {type = fluid, name = aluminium_chloride_solution_ether, amount = 60}
        },
        results =
        {
            {type = fluid, name = lithium_aluminium_hydride_solution_ether, amount = 60},
            {type = item, name = lithium_chloride_angels, amount = 4} -- 12
        },
        main_product = lithium_aluminium_hydride_solution_ether
    },
    {
        type = recipe,
        name = lithium_tetraethoxy_aluminate_solution_ether,
        category = angels_chemical_smelting_4,
        subgroup = is_aluminium_chemistry_ether,
        icons = THREE_I(acetaldehyde, lithium_aluminium_hydride_solution_ether, lithium_tetraethoxy_aluminate_solution_ether),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 4C₂H₄O + LiAlH₄(ether) --> LiAl(C₂H₅O)₄(ether)
        ingredients =
        {
            {type = fluid, name = acetaldehyde, amount = 960},
            {type = fluid, name = lithium_aluminium_hydride_solution_ether, amount = 240}
        },
        results = {{type = fluid, name = lithium_tetraethoxy_aluminate_solution_ether, amount = 240}},
        main_product = lithium_tetraethoxy_aluminate_solution_ether
    },
    {
        type = recipe,
        name = lithium_tetraethoxy_aluminate_solution_ether_reprocess,
        category = angels_chemical_smelting_4,
        subgroup = is_aluminium_chemistry_ether,
        icons = FOUR_THREE_R_I(lithium_tetraethoxy_aluminate_solution_ether, nil, water_purified_angels, ethanol_angels, lithium_hydroxide, aluminium_hydroxide, diethyl_ether),
        order = c_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- LiAl(C₂H₅O)₄(ether) + 4H₂O --> 4C₂H₆O + LiOH + Al(OH)₃ + (C₂H₅)₂O
        ingredients =
        {
            {type = fluid, name = lithium_tetraethoxy_aluminate_solution_ether, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 960}
        },
        results =
        {
            {type = item, name = lithium_hydroxide, amount = 8}, -- 16
            {type = item, name = aluminium_hydroxide, amount = 8}, -- 16
            {type = fluid, name = ethanol_angels, amount = 480}, -- 960
            {type = fluid, name = diethyl_ether, amount = 120} -- 240
        },
        main_product = ethanol_angels
    }
})

-- ZINC
data:extend
({
    {
        type = recipe,
        name = zinc_chloride,
        category = angels_chemical_smelting_1,
        subgroup = is_zinc_chemistry,
        icons = THREE_I(zinc_ore_bob, chlorine_angels, zinc_chloride),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Zn + Cl₂ --> ZnCl₂
        ingredients =
        {
            {type = item, name = zinc_ore_bob, amount = 32},
            {type = fluid, name = chlorine_angels, amount = 240}
        },
        results = {{type = item, name = zinc_chloride, amount = 16}},
        main_product = zinc_chloride
    },
    {
        type = recipe,
        name = zinc_chloride_solution,
        category = angels_chemical_smelting_1,
        subgroup = is_zinc_chemistry,
        icons = THREE_I(zinc_chloride, water_purified_angels, zinc_chloride_solution),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- ZnCl₂ + H₂O --> ZnCl₂(aq)
        ingredients =
        {
            {type = item, name = zinc_chloride, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results = {{type = fluid, name = zinc_chloride_solution, amount = 240}},
        main_product = zinc_chloride_solution
    },
    {
        type = recipe,
        name = zinc_gas,
        category = angels_blast_smelting_1,
        subgroup = is_zinc_chemistry,
        icons = TWO_D_I(zinc_oxide, silicon_powder, zinc_gas, silicon_oxide_IV),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2ZnO + Si -T-> 2Zn(g) + SiO₂
        ingredients =
        {
            {type = item, name = zinc_oxide, amount = 16},
            {type = item, name = silicon_powder, amount = 8}
        },
        results =
        {
            {type = fluid, name = zinc_gas, amount = 240},
            {type = item, name = silicon_oxide_IV, amount = 4}
        },
        main_product = zinc_gas
    },
    {
        type = recipe,
        name = zinc_sulfate_solution,
        category = angels_chemical_smelting_3,
        subgroup = is_zinc_chemistry,
        icons = THREE_I(zinc_oxide, sulfuric_acid_angels, zinc_sulfate_solution),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- ZnO + H₂SO₄ --> ZnSO₄(aq)
        ingredients =
        {
            {type = item, name = zinc_oxide, amount = 16},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results = {{type = fluid, name = zinc_sulfate_solution, amount = 240}},
        main_product = zinc_sulfate_solution
    }
})

-- SILVER
data:extend
({
    {
        type = recipe,
        name = sodium_dicyanoargentate_I_solution,
        category = angels_chemical_smelting_3,
        subgroup = is_silver_chemistry,
        icons = THREE_I(sodium_dicyanoargentate_I, water_purified_angels, sodium_dicyanoargentate_I_solution),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- NaAg(CN)₂ + H₂O --> NaAg(CN)₂(aq)
        ingredients =
        {
            {type = item, name = sodium_dicyanoargentate_I, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results = {{type = fluid, name = sodium_dicyanoargentate_I_solution, amount = 240}},
        main_product = sodium_dicyanoargentate_I_solution
    }
})

-- TITANIUM
data:extend
({
    {
        type = recipe,
        name = titanium_iodide_IV_gas,
        category = angels_chemical_smelting_4,
        subgroup = is_titanium_chemistry,
        icons = THREE_I(titanium_pellet, iodine_gas, titanium_iodide_IV_gas),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Ti + 2I₂ --> TiI₄
        ingredients =
        {
            {type = item, name = titanium_pellet, amount = 8},
            {type = fluid, name = iodine_gas, amount = 480}
        },
        results = {{type = fluid, name = titanium_iodide_IV_gas, amount = 240}},
        main_product = titanium_iodide_IV_gas
    },
    {
        type = recipe,
        name = titanium_oxide_IV,
        category = angels_chemical_smelting_2,
        subgroup = is_titanium_chemistry,
        icons = TWO_D_I(titanium_chloride_IV, oxygen_angels, titanium_oxide_IV, chlorine_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- TiCl₄ + O₂ --> TiO₂ + 2Cl₂
        ingredients =
        {
            {type = fluid, name = titanium_chloride_IV, amount = 240},
            {type = fluid, name = oxygen_angels, amount = 240}
        },
        results =
        {
            {type = item, name = titanium_oxide_IV, amount = 16},
            {type = fluid, name = chlorine_angels, amount = 240} -- 480
        },
        main_product = titanium_oxide_IV
    }
})

-- GOLD
data:extend
({
    {
        type = recipe,
        name = sodium_dicyanoaurate_I_solution,
        category = angels_chemical_smelting_3,
        subgroup = is_gold_chemistry,
        icons = THREE_I(sodium_dicyanoaurate_I, water_purified_angels, sodium_dicyanoaurate_I_solution),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- NaAu(CN)₂ + H₂O --> NaAu(CN)₂(aq)
        ingredients =
        {
            {type = item, name = sodium_dicyanoaurate_I, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results = {{type = fluid, name = sodium_dicyanoaurate_I_solution, amount = 240}},
        main_product = sodium_dicyanoaurate_I_solution
    }
})

-- COBALT
data:extend
({
    {
        type = recipe,
        name = cobalt_chloride_II_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_cobalt_chemistry,
        icons = THREE_D_I(cobalt_pellet, hydrogen_chloride_angels, water_purified_angels, cobalt_chloride_II_solution, nil, hydrogen_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Co + 2HCl + H₂O --> CoCl₂(aq) + H₂
        ingredients =
        {
            {type = item, name = cobalt_pellet, amount = 8},
            {type = fluid, name = hydrogen_chloride_angels, amount = 480},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = cobalt_chloride_II_solution, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 240
        },
        main_product = cobalt_chloride_II_solution
    }
})

-- CHROMIUM
data:extend
({
    {
        type = recipe,
        name = chromium_oxide_VI,
        category = angels_blast_smelting_4,
        subgroup = is_chromium_chemistry,
        icons = THREE_I(chromium_ore_angels, oxygen_angels, chromium_oxide_VI),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Cr + 3O₂ --> 2CrO₃
        ingredients =
        {
            {type = item, name = chromium_ore_angels, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 360}
        },
        results = {{type = item, name = chromium_oxide_VI, amount = 16}},
        main_product = chromium_oxide_VI
    },
    {
        type = recipe,
        name = chromic_acid,
        category = angels_chemical_smelting_3,
        subgroup = is_chromium_chemistry,
        icons = THREE_I(chromium_oxide_VI, water_purified_angels, chromic_acid),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- CrO₃ + 2H₂O --> H₂CrO₄(aq)
        ingredients =
        {
            {type = item, name = chromium_oxide_VI, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 480}
        },
        results = {{type = fluid, name = chromic_acid, amount = 240}},
        main_product = chromic_acid
    },
    {
        type = recipe,
        name = chromium_cathode,
        category = angels_petrochem_electrolyser,
        subgroup = is_chromium_chemistry,
        icons = FOUR_R_I(chromic_acid, sulfur_trioxide_gas, chromium_cathode, hydrogen_peroxide),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- (H₂CrO₄ + H₂O) + H₂SO₄ -electrode/electrolys-> Cr + SO₃ + 3H₂O₂
        ingredients =
        {
            {type = fluid, name = chromic_acid, amount = 240},
            {type = fluid, name = sulfuric_acid_angels, amount = 240},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = item, name = chromium_cathode, amount = 16},
            {type = fluid, name = sulfur_trioxide_gas, amount = 120}, -- 240
            {type = fluid, name = hydrogen_peroxide, amount = 240}, -- 720
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = chromium_cathode
    },
    {
        type = recipe,
        name = chromium_sulfate_II_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_chromium_chemistry,
        icons = THREE_D_I(chromium_processed, sulfuric_acid_angels, water_purified_angels, chromium_sulfate_II_solution, nil, hydrogen_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Cr + H₂SO₄ + H₂O --> CrSO₄(aq) + H₂
        ingredients =
        {
            {type = item, name = chromium_processed, amount = 16},
            {type = fluid, name = sulfuric_acid_angels, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = chromium_sulfate_II_solution, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 240
        },
        main_product = chromium_sulfate_II_solution
    },
    {
        type = recipe,
        name = potassium_chromate_solution,
        category = angels_advanced_chemistry,
        subgroup = is_chromium_chemistry,
        icons = THREE_D_I(chromium_oxide_III, potassium_hypochlorite_solution, potassium_hydroxide_solution, potassium_chromate_solution, potassium_chloride_solution, water_purified_angels),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Cr₂O₃ + 3KClO(aq) + 4KOH(aq) --> 2K₂CrO₄(aq) + 3KCl(aq) + 2H₂O + (2H₂O = aq)
        ingredients =
        {
            {type = item, name = chromium_oxide_III, amount = 16},
            {type = fluid, name = potassium_hypochlorite_solution, amount = 720},
            {type = fluid, name = potassium_hydroxide_solution, amount = 960}
        },
        results =
        {
            {type = fluid, name = potassium_chromate_solution, amount = 480},
            {type = fluid, name = potassium_chloride_solution, amount = 240}, -- 720
            {type = fluid, name = water_purified_angels, amount = 480} -- 960
        },
        main_product = potassium_chromate_solution
    },
    {
        type = recipe,
        name = potassium_dichromate_solution,
        category = angels_advanced_chemistry,
        subgroup = is_chromium_chemistry,
        icons = THREE_D_I(potassium_chromate_solution, nil, sulfuric_acid_angels, potassium_dichromate_solution, potassium_sulfate_solution, water_purified_angels),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2K₂CrO₄(aq) + H₂SO₄ --> K₂Cr₂O₇(aq) + K₂SO₄(aq) + H₂O
        ingredients =
        {
            {type = fluid, name = potassium_chromate_solution, amount = 480},
            {type = fluid, name = sulfuric_acid_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = potassium_dichromate_solution, amount = 240},
            {type = fluid, name = potassium_sulfate_solution, amount = 120}, -- 240
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        },
        main_product = potassium_dichromate_solution
    }
})

-- TUNGSTEN
data:extend
({
    {
        type = recipe,
        name = copper_tungsten_powder,
        category = angels_powder_mixing_3,
        subgroup = is_tungsten,
        icons = THREE_I(tungsten_powder, copper_powder, copper_tungsten_powder),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- W + Cu --> WCu
        ingredients =
        {
            {type = item, name = tungsten_powder, amount = 8},
            {type = item, name = copper_powder, amount = 8}
        },
        results = {{type = item, name = copper_tungsten_powder, amount = 8}},
        main_product = copper_tungsten_powder
    },
    -- CHEMISTRY
    {
        type = recipe,
        name = peroxo_tungstic_acid,
        category = angels_chemical_smelting_4,
        subgroup = is_tungsten_chemistry,
        icons = TWO_D_I(tungsten_pellet, hydrogen_peroxide, peroxo_tungstic_acid, water_purified_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- W + 5H₂O₂ --> H₂WO₆(aq) + 3H₂O
        ingredients =
        {
            {type = item, name = tungsten_pellet, amount = 8},
            {type = fluid, name = hydrogen_peroxide, amount = 1200}
        },
        results =
        {
            {type = fluid, name = peroxo_tungstic_acid, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 240} -- 720
        },
        main_product = peroxo_tungstic_acid
    },
    {
        type = recipe,
        name = tungstic_acid,
        category = angels_chemical_smelting_4,
        subgroup = is_tungsten_chemistry,
        icons = THREE_D_I(peroxo_tungstic_acid, nil, nil, tungstic_acid, oxygen_angels, steam),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- H₂WO₆(aq) --> H₂WO₄ + O₂ + H₂O
        ingredients = {{type = fluid, name = peroxo_tungstic_acid, amount = 240}},
        results =
        {
            {type = item, name = tungstic_acid, amount = 16},
            {type = fluid, name = oxygen_angels, amount = 120}, -- 240
            {type = fluid, name = steam, amount = 120} -- 240
        },
        main_product = tungstic_acid
    }
})

-- PLATINUM
local is_platinum = "angels-platinum"
platinum_ingot_2 = "angels-ingot-platinum-2"
platinum_ingot_3 = "angels-ingot-platinum-3"
data:extend
({
    {
        type = recipe,
        name = platinum_processed,
        category = angels_processed_pressing_4,
        subgroup = is_platinum,
        icons = TWO_I(platinum_ore_angels, platinum_processed),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = platinum_ore_angels, amount = 4}},
        results = {{type = item, name = platinum_processed, amount = 4}},
        main_product = platinum_processed
    },
    {
        type = recipe,
        name = platinum_pellet,
        category = angels_pellet_pressing_4,
        subgroup = is_platinum,
        icons = TWO_I(platinum_processed, platinum_pellet),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = platinum_processed, amount = 4}},
        results = {{type = item, name = platinum_pellet, amount = 4}},
        main_product = platinum_pellet
    },
    {
        type = recipe,
        name = platinum_ingot,
        category = angels_chemical_smelting_3,
        subgroup = is_platinum,
        icons = TWO_D_I(platinum_fluoride_IV, hydrogen_angels, platinum_ingot, hydrogen_chloride_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- PtF₄ + 2H₂ --> Pt + 4HF
        ingredients =
        {
            {type = item, name = platinum_fluoride_IV, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 480}
        },
        results =
        {
            {type = item, name = platinum_ingot, amount = 16},
            {type = fluid, name = hydrogen_chloride_angels, amount = 480} -- 960
        },
        main_product = platinum_ingot
    },
    {
        type = recipe,
        name = platinum_ingot_2,
        category = angels_chemical_smelting_4,
        subgroup = is_platinum,
        icons = FOUR_THREE_R_I(ammonium_hexachloroplatinate_IV, nil, formic_acid, platinum_ingot, ammonium_chloride, carbon_dioxide_angels, hydrogen_chloride_angels),
        order = d_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- (NH₄)₂PtCl₆ + 2CH₂O₂ --> Pt + 2NH₄Cl + 2CO₂ + 4HCl
        ingredients =
        {
            {type = item, name = ammonium_hexachloroplatinate_IV, amount = 16},
            {type = fluid, name = formic_acid, amount = 480}
        },
        results =
        {
            {type = item, name = platinum_ingot, amount = 16},
            {type = item, name = ammonium_chloride, amount = 16}, -- 32
            {type = fluid, name = carbon_dioxide_angels, amount = 240}, -- 480
            {type = fluid, name = hydrogen_chloride_angels, amount = 480} -- 960
        },
        main_product = platinum_ingot
    },
    {
        type = recipe,
        name = platinum_ingot_3,
        category = angels_advanced_chemistry,
        subgroup = is_platinum,
        icons = FOUR_THREE_R_I(sodium_hexahydroxoplatinate_IV_solution, nil, hydrazine_angels, platinum_ingot, nitrogen_angels, sodium_hydroxide_solution_angels, water_purified_angels),
        order = d_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Na₂Pt(OH)₆(aq) + N₂H₄ --> Pt + N₂ + 2NaOH(aq) + 4H₂O
        ingredients =
        {
            {type = fluid, name = sodium_hexahydroxoplatinate_IV_solution, amount = 240},
            {type = fluid, name = hydrazine_angels, amount = 240}
        },
        results =
        {
            {type = item, name = platinum_ingot, amount = 16},
            {type = fluid, name = nitrogen_angels, amount = 120}, -- 240
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 240}, -- 480
            {type = fluid, name = water_purified_angels, amount = 480} -- 960
        },
        main_product = platinum_ingot
    },
    -- CHEMISTRY
    {
        type = recipe,
        name = platinum_chloride_II,
        category = angels_chemical_smelting_3,
        subgroup = is_platinum_chemistry,
        icons = THREE_I(platinum_ore_angels, chlorine_angels, platinum_chloride_II),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Pt + Cl₂ --> PtCl₂
        ingredients =
        {
            {type = item, name = platinum_ore_angels, amount = 32},
            {type = fluid, name = chlorine_angels, amount = 240}
        },
        results = {{type = item, name = platinum_chloride_II, amount = 16}},
        main_product = platinum_chloride_II
    },
    {
        type = recipe,
        name = platinum_fluoride_IV,
        category = angels_blast_smelting_4,
        subgroup = is_platinum_chemistry,
        icons = THREE_D_I(platinum_chloride_II, nil, hydrogen_fluoride_angels, platinum_fluoride_IV, platinum_ingot, hydrogen_chloride_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2PtCl₂ + 4HF --> PtF₄ + Pt + 4HCl
        ingredients =
        {
            {type = item, name = platinum_chloride_II, amount = 32},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 960}
        },
        results =
        {
            {type = item, name = platinum_fluoride_IV, amount = 16},
            {type = item, name = platinum_ingot, amount = 16},
            {type = fluid, name = hydrogen_chloride_angels, amount = 480} -- 960
        },
        main_product = platinum_fluoride_IV
    },
    {
        type = recipe,
        name = hexachloroplatinic_acid,
        category = angels_chemical_smelting_4,
        subgroup = is_platinum_chemistry,
        icons = THREE_D_I(platinum_processed, chlorine_angels, hydrochloric_acid_angels, hexachloroplatinic_acid),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Pt + 2Cl₂ + 2HCl(aq) --> H₂PtCl₆(aq)
        ingredients =
        {
            {type = item, name = platinum_processed, amount = 16},
            {type = fluid, name = chlorine_angels, amount = 480},
            {type = fluid, name = hydrochloric_acid_angels, amount = 480}
        },
        results = {{type = fluid, name = hexachloroplatinic_acid, amount = 240}},
        main_product = hexachloroplatinic_acid
    },
    {
        type = recipe,
        name = ammonium_hexachloroplatinate_IV,
        category = angels_chemical_smelting_4,
        subgroup = is_platinum_chemistry,
        icons = THREE_D_I(hexachloroplatinic_acid, nil, ammonium_chloride_solution_angels, ammonium_hexachloroplatinate_IV, hydrochloric_acid_angels, water_purified_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- H₂PtCl₆(aq) + 2NH₄Cl(aq) --> (NH₄)₂PtCl₆ + 2HCl(aq) + 2H₂O
        ingredients =
        {
            {type = fluid, name = hexachloroplatinic_acid, amount = 240},
            {type = fluid, name = ammonium_chloride_solution_angels, amount = 480}
        },
        results =
        {
            {type = item, name = ammonium_hexachloroplatinate_IV, amount = 16},
            {type = fluid, name = hydrochloric_acid_angels, amount = 240}, -- 480
            {type = fluid, name = water_purified_angels, amount = 240} -- 480
        },
        main_product = ammonium_hexachloroplatinate_IV
    },
    {
        type = recipe,
        name = sodium_hexachloroplatinate_IV_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_platinum_chemistry,
        icons = THREE_D_I(platinum_pellet, chlorine_angels, sodium_chloride_solution, sodium_hexachloroplatinate_IV_solution),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Pt + 2Cl₂ + 2NaCl(aq) --> Na₂PtCl₆(aq)
        ingredients =
        {
            {type = item, name = platinum_pellet, amount = 8},
            {type = fluid, name = chlorine_angels, amount = 480},
            {type = fluid, name = sodium_chloride_solution, amount = 480}
        },
        results = {{type = fluid, name = sodium_hexachloroplatinate_IV_solution, amount = 240}},
        main_product = sodium_hexachloroplatinate_IV_solution
    },
    {
        type = recipe,
        name = platinum_hydroxide_IV,
        category = angels_chemical_smelting_4,
        subgroup = is_platinum_chemistry,
        icons = TWO_D_I(sodium_hexachloroplatinate_IV_solution, sodium_hydroxide_solution_angels, platinum_hydroxide_IV, sodium_chloride_solution),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Na₂PtCl₆(aq) + 4NaOH(aq) --> Pt(OH)₄ + 6NaCl(aq)
        ingredients =
        {
            {type = fluid, name = sodium_hexachloroplatinate_IV_solution, amount = 240},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 960}
        },
        results =
        {
            {type = item, name = platinum_hydroxide_IV, amount = 16},
            {type = fluid, name = sodium_chloride_solution, amount = 480} -- 1440
        },
        main_product = platinum_hydroxide_IV
    },
    {
        type = recipe,
        name = sodium_hexahydroxoplatinate_IV_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_platinum_chemistry,
        icons = THREE_I(platinum_hydroxide_IV, sodium_hydroxide_solution_angels, sodium_hexahydroxoplatinate_IV_solution),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Pt(OH)₄ + 2NaOH(aq) --> Na₂Pt(OH)₆(aq)
        ingredients =
        {
            {type = item, name = platinum_hydroxide_IV, amount = 16},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 480}
        },
        results = {{type = fluid, name = sodium_hexahydroxoplatinate_IV_solution, amount = 240}},
        main_product = sodium_hexahydroxoplatinate_IV_solution
    }
})

-- LITHIUM
lithium_chloride_solution_from_lithium_hydroxide = "lithium-chloride-solution-from-lithium-hydroxide"
data:extend
({
    {
        type = recipe,
        name = lithium_chloride_solution,
        category = angels_liquifying,
        subgroup = is_alloys,
        icons = THREE_I(lithium_chloride_angels, water_purified_angels, lithium_chloride_solution),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- LiCl + H₂O --> LiCl(aq)
        ingredients =
        {
            {type = item, name = lithium_chloride_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = lithium_chloride_solution, amount = 60}},
        main_product = lithium_chloride_solution
    },
    {
        type = recipe,
        name = lithium_chloride_solution_from_lithium_hydroxide,
        category = chemistry,
        subgroup = is_alloys,
        icons = TWO_D_I(lithium_hydroxide, hydrochloric_acid_angels, lithium_chloride_solution, water_purified_angels),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- LiOH(aq) + HCl(aq) --> LiCl(aq) + 2H₂O
        ingredients =
        {
            {type = item, name = lithium_hydroxide, amount = 16},
            {type = fluid, name = hydrochloric_acid_angels, amount = 240}
        },
        results =
        {
            {type = fluid, name = lithium_chloride_solution, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        },
        main_product = lithium_chloride_solution
    },
    {
        type = recipe,
        name = lithium_perchlorate_solution,
        category = chemistry,
        subgroup = is_alloys,
        icons = TWO_D_I(sodium_perchlorate_solution, lithium_chloride_solution, lithium_perchlorate_solution, sodium_chloride_solution),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NaClO₄(aq) + LiCl(aq) --> LiClO₄(aq) + NaCl(aq)
        ingredients =
        {
            {type = fluid, name = sodium_perchlorate_solution, amount = 60},
            {type = fluid, name = lithium_chloride_solution, amount = 60},
        },
        results =
        {
            {type = fluid, name = lithium_perchlorate_solution, amount = 60},
            {type = fluid, name = sodium_chloride_solution, amount = 60},
        },
        main_product = lithium_perchlorate_solution
    },
    {
        type = recipe,
        name = lithium_hydride,
        category = chemistry,
        subgroup = is_alloys,
        icons = THREE_I(lithium_bob, hydrogen_angels, lithium_hydride),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Li + H₂ --> 2LiH
        ingredients =
        {
            {type = item, name = lithium_bob, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 240}
        },
        results = {{type = item, name = lithium_hydride, amount = 16}},
        main_product = lithium_hydride
    },
    {
        type = recipe,
        name = lithium_hydroxide,
        category = angels_petrochem_electrolyser,
        subgroup = is_alloys,
        icons = FOUR_R_I(lithium_chloride_solution, hydrogen_angels, lithium_hydroxide, chlorine_angels),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2(LiCl + H₂O) -electrode/electrolys-> 2LiOH + H₂ + Cl₂
        ingredients =
        {
            {type = fluid, name = lithium_chloride_solution, amount = 240},
            {type = item, name = graphite_electrode, amount = 1}
        },
        results =
        {
            {type = item, name = lithium_hydroxide, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 60}, -- 120
            {type = fluid, name = chlorine_angels, amount = 60}, -- 120
            {type = item, name = graphite_chips, amount = 4}
        },
        main_product = lithium_hydroxide
    },
    {
        type = recipe,
        name = lithium_fluoride,
        category = chemistry,
        subgroup = is_alloys,
        icons = TWO_D_I(lithium_hydroxide, hydrofluoric_acid_angels, lithium_fluoride, water_purified_angels),
        order = j,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- LiOH + HF(aq) --> LiF + 2H₂O
        ingredients =
        {
            {type = item, name = lithium_hydroxide, amount = 4},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 60}
        },
        results =
        {
            {type = item, name = lithium_fluoride, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = lithium_fluoride
    },
    {
        type = recipe,
        name = lithium_hexafluorophosphate,
        category = chemistry,
        subgroup = is_alloys,
        icons = THREE_I(lithium_fluoride, phosphorus_fluoride_V_gas, lithium_hexafluorophosphate),
        order = k,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- LiF + PF₅ -HF(liquefied)-> LiPF₆
        ingredients =
        {
            {type = item, name = lithium_fluoride, amount = 4},
            {type = fluid, name = phosphorus_fluoride_V_gas, amount = 60},
            {type = fluid, name = hydrogen_fluoride_liquefied, amount = 60}
        },
        results =
        {
            {type = item, name = lithium_hexafluorophosphate, amount = 4},
            {type = fluid, name = hydrogen_fluoride_angels, amount = 30}
        },
        main_product = lithium_hexafluorophosphate
    },
    {
        type = recipe,
        name = lithium_hexafluorophosphate_solution_carbonate,
        category = angels_liquifying,
        subgroup = is_alloys,
        icons = THREE_I(lithium_hexafluorophosphate, ethylene_carbonate, lithium_hexafluorophosphate_solution_carbonate),
        order = l,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- LiPF₆ + C₃H₄O₃ --> LiPF₆(carbonate)
        ingredients =
        {
            {type = item, name = lithium_hexafluorophosphate, amount = 4},
            {type = fluid, name = ethylene_carbonate, amount = 60}
        },
        results = {{type = fluid, name = lithium_hexafluorophosphate_solution_carbonate, amount = 60}},
        main_product = lithium_hexafluorophosphate_solution_carbonate
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
        energy_required = , -- 
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]