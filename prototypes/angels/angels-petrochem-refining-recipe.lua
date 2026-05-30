-- ANGELS PETROCHEM REFINING
-- BASIC PETROCHEN FLUIDS
data:extend
({
    {
        type = recipe,
        name = argon_gas,
        category = chemistry,
        subgroup = is_basic_fluids,
        icons = TWO_I(compressed_air, argon_gas),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients = {{type = fluid, name = compressed_air, amount = 960}},
        results = {{type = fluid, name = argon_gas, amount_min = 0, amount_max = 15}},
        main_product = argon_gas
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

-- COAL
raw_graphite_block_2 = "raw-graphite-block-2"
data:extend
({
    {
        type = recipe,
        name = coke_processed,
        category = angels_processed_pressing_1,
        subgroup = is_coal,
        icons = TWO_I(coke_angels, coke_processed),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 1, -- C --> C
        ingredients = {{type = item, name = coke_angels, amount = 1}},
        results = {{type = item, name = coke_processed, amount = 1}},
        main_product = coke_processed
    },
    {
        type = recipe,
        name = pitch,
        category = chemistry,
        subgroup = is_coal,
        icons = TWO_D_I(coal_tar_liquid, steam, pitch, liquid_fuel_bob),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Coal tar liquid + Steam --> Pitch + Liquid fuel
        ingredients =
        {
            {type = fluid, name = coal_tar_liquid, amount = 60},
            {type = fluid, name = steam, amount = 60}
        },
        results =
        {
            {type = item, name = pitch, amount = 4},
            {type = fluid, name = liquid_fuel_bob, amount = 60, ignored_by_productivity = 60}
        },
        main_product = pitch
    },
    {
        type = recipe,
        name = raw_graphite_block,
        category = chemistry,
        subgroup = is_coal,
        icons = THREE_I(coke_angels, pitch, raw_graphite_block),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Coke + Pitch --> Raw graphite block
        ingredients =
        {
            {type = item, name = coke_angels, amount = 4},
            {type = item, name = pitch, amount = 4}
        },
        results = {{type = item, name = raw_graphite_block, amount = 1}},
        main_product = raw_graphite_block
    },
    {
        type = recipe,
        name = raw_graphite_block_2,
        category = chemistry,
        subgroup = is_coal,
        icons = THREE_I(graphite_chips, pitch, raw_graphite_block),
        order = h_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Graphite chips + Pitch --> Raw graphite block
        ingredients =
        {
            {type = item, name = graphite_chips, amount = 4},
            {type = item, name = pitch, amount = 4}
        },
        results = {{type = item, name = raw_graphite_block, amount = 1}},
        main_product = raw_graphite_block
    },
    {
        type = recipe,
        name = graphite_block,
        category = smelting,
        subgroup = is_coal,
        icons = TWO_I(raw_graphite_block, graphite_block),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Raw graphite block --> Graphite block
        ingredients = {{type = item, name = raw_graphite_block, amount = 4}},
        results = {{type = item, name = graphite_block, amount = 4}},
        main_product = graphite_block
    },
    {
        type = recipe,
        name = graphite_plate,
        category = advanced_crafting,
        subgroup = is_coal,
        icons = THREE_R_I(graphite_block, graphite_plate, graphite_chips),
        order = j,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Graphite block --> Graphite plate + Graphite chips
        ingredients = {{type = item, name = graphite_block, amount = 1}},
        results =
        {
            {type = item, name = graphite_plate, amount = 2},
            {type = item, name = graphite_chips, amount = 4}
        },
        main_product = graphite_plate
    },
    {
        type = recipe,
        name = graphite_electrode,
        category = smelting,
        subgroup = is_coal,
        icons = THREE_I(graphite_block, pitch, graphite_electrode),
        order = l,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Graphite block + Pitch --> Graphite electrode
        ingredients =
        {
            {type = item, name = graphite_block, amount = 1},
            {type = item, name = pitch, amount = 4}
        },
        results = {{type = item, name = graphite_electrode, amount = 4}},
        main_product = graphite_electrode
    },
    {
        type = recipe,
        name = carbon_nanotube,
        category = angels_petrochem_electrolyser,
        subgroup = is_coal,
        icons = THREE_R_I(graphite_electrode, carbon_nanotube, graphite_chips),
        order = m,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Graphite electrode -electrolyser/cat(4)/Argon gas-> Carbon nanotube + Graphite chips
        ingredients =
        {
            {type = item, name = graphite_electrode, amount = 16},
            {type = fluid, name = argon_gas, amount = 240},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = item, name = carbon_nanotube, amount = 8},
            {type = item, name = graphite_chips, amount = 16},
            {type = fluid, name = argon_gas, amount = 120}, -- 240
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = carbon_nanotube
    },
    {
        type = recipe,
        name = graphene_oxide,
        category = chemistry,
        subgroup = is_coal,
        icons = THREE_D_I(graphite_plate, potassium_permanganate, sulfuric_acid, graphene_oxide, manganese_sulfate_II_solution, potassium_sulfate_solution),
        order = n,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4, -- 4Graphite plate + 2KMnO₄ + 3H₂SO₄ --> Graphene oxide + 2MnSO₄(aq) + K₂SO₄(aq)
        ingredients =
        {
            {type = item, name = graphite_plate, amount = 8},
            {type = item, name = potassium_permanganate, amount = 4},
            {type = fluid, name = sulfuric_acid, amount = 90}
        },
        results =
        {
            {type = item, name = graphene_oxide, amount = 2},
            {type = fluid, name = manganese_sulfate_II_solution, amount = 30}, -- 60
            {type = fluid, name = potassium_sulfate_solution, amount = 15} -- 30
        },
        main_product = graphene_oxide
    },
    {
        type = recipe,
        name = graphene,
        category = chemistry,
        subgroup = is_coal,
        icons = THREE_D_I(graphene_oxide, nil, dinitrogen_tetroxide_angels, graphene, steam, nitrogen_angels),
        order = o,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4, -- Graphene oxide + N₂H₄ --> Graphene + H₂O(g) + N₂
        ingredients =
        {
            {type = item, name = graphene_oxide, amount = 8},
            {type = fluid, name = dinitrogen_tetroxide_angels, amount = 120}
        },
        results =
        {
            {type = item, name = graphene, amount = 8},
            {type = fluid, name = steam, amount = 60}, -- 120
            {type = fluid, name = nitrogen_angels, amount = 60} -- 120
        },
        main_product = graphene
    },
    -- COAL FLUID
    {
        type = recipe,
        name = coal_tar_liquid,
        category = chemistry,
        subgroup = is_carbon_fluids_1,
        icons = THREE_R_I(coal, coal_tar_liquid, coke_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Coal crushed --> Coal tar liquid + Coke
        ingredients = {{type = item, name = coal, amount = 4}},
        results =
        {
            {type = fluid, name = coal_tar_liquid, amount = 30},
            {type = item, name = coke_angels, amount = 2}
        },
        main_product = coal_tar_liquid
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

-- CARBON FLUIDS 1
carbonic_acid_reversed = "carbonic-acid-reversed"
data:extend
({
    {
        type = recipe,
        name = carbonic_acid_reversed,
        category = chemistry,
        subgroup = is_carbon_fluids_1,
        icons = THREE_R_I(carbonic_acid, water_purified_angels, carbon_dioxide_angels),
        order = c_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- H₂CO₃(aq) --> ((H₂O + CO₂) + H₂O)
        ingredients = {{type = fluid, name = carbonic_acid, amount = 60}},
        results =
        {
            {type = fluid, name = water_purified_angels, amount = 120},
            {type = fluid, name = carbon_dioxide_angels, amount = 60}
        },
    }
})

-- NITROGEN
local is_nitrogen = "angels-petrochem-nitrogen"
ammonia_gas_alt = "ammonia-gas-alt"
nitrogen_monoxide_2 = "nitrogen-monoxide-2"
ammonium_chloride_reprocess = "ammonium-chloride-reprocess"
melamine_solution_from_dicyandiamide_solution = "melamine-solution-from-dicyandiamide-solution"
ammonium_chloride_solution_alt = "ammonium-chloride-solution-alt"
ammonium_sulfate_solution_alt = "ammonium-sulfate-solution-alt"
ammonium_hydrosulfate_reprocess = "ammonium-hydrosulfate-reprocess"
data:extend
({
    {
        type = recipe,
        name = ammonium_sulfate,
        category = chemistry,
        subgroup = is_nitrogen,
        icons = THREE_I(ammonia_angels, sulfuric_acid_angels, ammonium_sulfate),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2NH₃ + H₂SO₄ --> (NH₄)₂SO₄
        ingredients =
        {
            {type = fluid, name = ammonia_angels, amount = 120},
            {type = fluid, name = sulfuric_acid_angels, amount = 60}
        },
        results = {{type = item, name = ammonium_sulfate, amount = 4}},
        main_product = ammonium_sulfate
    },
    {
        type = recipe,
        name = ammonium_chloride_reprocess,
        category = chemistry,
        subgroup = is_nitrogen,
        icons = TWO_D_I(ammonium_chloride, sodium_hydroxide_solution_angels, ammonia_solution, sodium_chloride_solution),
        order = e_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NH₄Cl + NaOH(aq) --> NH₃(aq) + NaCl(aq)
        ingredients =
        {
            {type = item, name = ammonium_chloride, amount = 4},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 60},
        },
        results =
        {
            {type = fluid, name = ammonia_solution, amount = 30}, -- 60
            {type = fluid, name = sodium_chloride_solution, amount = 30}, -- 60
        },
    },
    {
        type = recipe,
        name = ammonium_hydrosulfate_reprocess,
        category = angels_advanced_chemistry,
        subgroup = is_nitrogen,
        icons = FOUR_R_I(ammonium_hydrosulfate, ammonia_angels, sulfur_trioxide_gas, steam),
        order = f_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NH₄HSO₄ --> NH₃ + SO₃ + H₂O
        ingredients = {{type = item, name = ammonium_hydrosulfate, amount = 8}},
        results =
        {
            {type = fluid, name = ammonia_angels, amount = 120},
            {type = fluid, name = sulfur_trioxide_gas, amount = 120},
            {type = fluid, name = steam, amount = 120}
        }
    },
    {
        type = recipe,
        name = hexamethylenediamine,
        category = chemistry,
        subgroup = is_nitrogen,
        icons = THREE_I(adiponitrile_liquid, hydrogen_angels, hexamethylenediamine),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₆H₈N₂(l) + 4H₂(g) --> С₆H₁₆N₂(s)
        ingredients =
        {
            {type = fluid, name = adiponitrile_liquid, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 240}
        },
        results = {{type = item, name = hexamethylenediamine, amount = 4}},
        main_product = hexamethylenediamine
    },
    {
        type = recipe,
        name = imidazole,
        category = chemistry,
        subgroup = is_nitrogen,
        icons = THREE_R_I(imidazole_solution, imidazole, steam),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₃H₄N₂(aq) --> C₃H₄N₂(s) + H₂O(g)
        ingredients = {{type = fluid, name = imidazole_solution, amount = 60}},
        results =
        {
            {type = item, name = imidazole, amount = 4},
            {type = fluid, name = steam, amount = 30} -- 60
        },
        main_product = imidazole
    },
    -- FLUID
    {
        type = recipe,
        name = ammonia_gas_alt,
        category = chemistry,
        subgroup = is_nitrogen_fluids,
        icons = THREE_R_I(ammonia_solution, ammonia_angels, steam),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- NH₃(aq) --> NH₃ + H₂O
        ingredients =
        {
            {type = fluid, name = ammonia_solution, amount = 60}
        },
        results =
        {
            {type = fluid, name = ammonia_angels, amount = 60},
            {type = fluid, name = steam, amount = 60},
        },
    },
    {
        type = recipe,
        name = nitrogen_monoxide_2,
        category = chemistry,
        subgroup = is_nitrogen_fluids,
        icons = TWO_D_I(ammonia_angels, oxygen_angels, nitrogen_monoxide_angels, steam, number_2),
        order = c_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- 4NH₃ + 5O₂ -cat-> 4NO + 6H₂O
        ingredients =
        {
            {type = fluid, name = ammonia_angels, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 75},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = nitrogen_monoxide_angels, amount = 60},
            {type = fluid, name = steam, amount = 30}, -- 90
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = nitrogen_monoxide_angels
    },
    {
        type = recipe,
        name = melamine_solution_from_dicyandiamide_solution,
        category = angels_advanced_chemistry,
        subgroup = is_nitrogen_fluids,
        icons = THREE_R_I(dicyandiamide_solution, melamine_solution_angels, water_purified_angels),
        order = g_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 3(NH₂)₂(CN)₂(aq) -NH₃-> 2C₃H₆N₆(aq) + H₂O
        ingredients =
        {
            {type = fluid, name = dicyandiamide_solution, amount = 120},
            {type = fluid, name = ammonia_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = melamine_solution_angels, amount = 60}, -- 80
            {type = fluid, name = water_purified_angels, amount = 30}, -- 40
            {type = fluid, name = ammonia_angels, amount = 30} -- 60
        }
    },
    {
        type = recipe,
        name = ammonium_chloride_solution_alt,
        category = angels_liquifying,
        subgroup = is_nitrogen_fluids,
        icons = THREE_I(ammonium_chloride, water_purified_angels, ammonium_chloride_solution_angels),
        order = o_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NH₄Cl + H₂O --> NH₄Cl(aq)
        ingredients =
        {
            {type = item, name = ammonium_chloride, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = ammonium_chloride_solution_angels, amount = 60}}
    },
    {
        type = recipe,
        name = dicyandiamide_solution,
        category = chemistry,
        subgroup = is_nitrogen_fluids,
        icons = THREE_R_I(cyanamide_solution, dicyandiamide_solution, water_purified_angels),
        order = q,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2NH₂CN(aq) --> (NH₂)₂(CN)₂(aq) + H₂O
        ingredients = {{type = fluid, name = cyanamide_solution, amount = 120}},
        results =
        {
            {type = fluid, name = dicyandiamide_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 30} -- 60
        },
        main_product = dicyandiamide_solution
    },
    {
        type = recipe,
        name = ammonium_sulfate_solution,
        category = angels_liquifying,
        subgroup = is_nitrogen_fluids,
        icons = THREE_I(ammonium_sulfate, water_purified_angels, ammonium_sulfate_solution),
        order = r,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- (NH₄)₂SO₄ + H₂O --> (NH₄)₂SO₄(aq)
        ingredients =
        {
            {type = item, name = ammonium_sulfate, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = ammonium_sulfate_solution, amount = 60}},
        main_product = ammonium_sulfate_solution
    },
    {
        type = recipe,
        name = ammonium_sulfate_solution_alt,
        category = chemistry,
        subgroup = is_nitrogen_fluids,
        icons = THREE_I(ammonium_hydrosulfate, ammonia_solution, ammonium_sulfate_solution),
        order = r_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- NH₄HSO₄ + NH₃(aq) --> (NH₄)₂SO₄(aq)
        ingredients =
        {
            {type = item, name = ammonium_hydrosulfate, amount = 4},
            {type = fluid, name = ammonia_solution, amount = 60}
        },
        results = {{type = fluid, name = ammonium_sulfate_solution, amount = 60}},
    },
    {
        type = recipe,
        name = acrylonitrile,
        category = angels_advanced_chemistry,
        subgroup = is_nitrogen_fluids,
        icons = THREE_I(acetylene_gas, hydrocyanic_acid, acrylonitrile),
        order = s,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₂H₂ + HCN -NH₄CuCl₂-> C₃H₃N
        ingredients =
        {
            {type = fluid, name = acetylene_gas, amount = 120},
            {type = fluid, name = hydrocyanic_acid, amount = 120},
            {type = fluid, name = ammonium_dichlorocuprate_I_solution, amount = 60}
        },
        results =
        {
            {type = fluid, name = acrylonitrile, amount = 120},
            {type = fluid, name = ammonium_dichlorocuprate_I_solution, amount = 30}
        },
        main_product = acrylonitrile
    },
    {
        type = recipe,
        name = acetone_cyanohydrin,
        category = chemistry,
        subgroup = is_nitrogen_fluids,
        icons = THREE_I(methanol_angels, hydrocyanic_acid, acetone_cyanohydrin),
        order = t,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- C₃H₆O + HCN -cat-> C₄H₇NO
        ingredients =
        {
            {type = fluid, name = methanol_angels, amount = 60},
            {type = fluid, name = hydrocyanic_acid, amount = 60},
            {type = item, name = catalyst_red, amount = 1}
        },
        results =
        {
            {type = fluid, name = acetone_cyanohydrin, amount = 60},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = acetone_cyanohydrin
    },
    {
        type = recipe,
        name = adiponitrile_liquid,
        category = chemistry,
        subgroup = is_nitrogen_fluids,
        icons = THREE_I(butadiene_angels, hydrocyanic_acid, adiponitrile_liquid),
        order = w,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₄H₆(g) + 2HCN(l) --> C₆H₈N₂(l)
        ingredients =
        {
            {type = fluid, name = butadiene_angels, amount = 60},
            {type = fluid, name = hydrocyanic_acid, amount = 120}
        },
        results = {{type = fluid, name = adiponitrile_liquid, amount = 60}},
        main_product = adiponitrile_liquid
    },
    {
        type = recipe,
        name = imidazole_solution,
        category = angels_advanced_chemistry,
        subgroup = is_nitrogen_fluids,
        icons = THREE_D_I(glyoxal_liquid, ammonia_angels, formaldehyde_angels, imidazole_solution, nil, water_purified_angels),
        order = x,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2NH₃(g) + CH₂O(l) + C₂H₂O₂(l) --> C₃H₄N₂(aq) + 2H₂O(l)
        ingredients =
        {
            {type = fluid, name = glyoxal_liquid, amount = 120},
            {type = fluid, name = ammonia_angels, amount = 60},
            {type = fluid, name = formaldehyde_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = imidazole_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = imidazole_solution
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

-- FLUORINE
data:extend
({
    {
        type = recipe,
        name = hydrogen_fluoride_liquefied,
        category = angels_cooling,
        subgroup = is_fluorine_fluids,
        icons = TWO_I(hydrogen_fluoride_angels, hydrogen_fluoride_liquefied),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- HF(g) -Coolant-> HF(liquefied)
        ingredients =
        {
            {type = fluid, name = hydrogen_fluoride_angels, amount = 120},
            {type = fluid, name = coolant, amount = 120}
        },
        results =
        {
            {type = fluid, name = hydrogen_fluoride_liquefied, amount = 120},
            {type = fluid, name = coolant_used, amount = 60} -- 120
        },
        main_product = hydrogen_fluoride_liquefied
    }
})

-- SODIUM
sodium_chloride = "sodium-chloride"
sodium_sulfate = "sodium-sulfate"
sodium_carbonate = "sodium-carbonate"
sodium_nitrate = "sodium-nitrate"
sodium_peroxide_reprocess = "sodium-peroxide-reprocess"
sodium_hypochlorite_solution_from_sodium_hydroxide_solution = "sodium-hypochlorite-solution-from-sodium-hydroxide-solution"
sodium_chlorate_solution_from_sodium_hypochlorite_solution = "sodium-chlorate-solution-from-sodium-hypochlorite-solution"
sodium_perchlorate_solution_from_sodium_chlorate_solution = "sodium-perchlorate-solution-from-sodium-chlorate-solution"
sodium_chloride_solution_from_sodium_bicarbonate_solution = "sodium-chloride-solution-from-sodium-bicarbonate-solution"
sodium_sulfate_from_sodium_bicarbonate_solution = "sodium-sulfate-from-sodium-bicarbonate-solution"
sodium_cyanide_solution_alt = "sodium-cyanide-solution-alt"
data:extend
({
    {
        type = recipe,
        name = sodium_chloride,
        category = chemistry,
        subgroup = is_sodium,
        icons = THREE_R_I(sodium_chloride_solution, salt_angels, steam),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NaCl(aq) --> NaCl + H₂O
        ingredients = {{type = fluid, name = sodium_chloride_solution, amount = 60}},
        results =
        {
            {type = item, name = salt_angels, amount = 4},
            {type = fluid, name = steam, amount = 60}
        },
        main_product = salt_angels
    },
    {
        type = recipe,
        name = sodium_sulfate,
        category = chemistry,
        subgroup = is_sodium,
        icons = THREE_R_I(sodium_sulfate_solution, sodium_sulfate_angels, steam),
        order = d_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Na₂SO₄(aq) --> Na₂SO₄ + H₂O
        ingredients = {{type = fluid, name = sodium_sulfate_solution, amount = 60}},
        results =
        {
            {type = item, name = sodium_sulfate_angels, amount = 4},
            {type = fluid, name = steam, amount = 60}
        },
        main_product = sodium_sulfate_angels
    },
    {
        type = recipe,
        name = sodium_carbonate,
        category = chemistry,
        subgroup = is_sodium,
        icons = THREE_R_I(sodium_carbonate_solution, sodium_carbonate_angels, steam),
        order = e_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2Na₂CO₃(aq) --> Na₂CO₃ + 2H₂O
        ingredients = {{type = fluid, name = sodium_carbonate_solution, amount = 60}},
        results =
        {
            {type = item, name = sodium_carbonate_angels, amount = 4},
            {type = fluid, name = steam, amount = 60}
        },
        main_product = sodium_carbonate_angels
    },
    {
        type = recipe,
        name = sodium_nitrate,
        category = chemistry,
        subgroup = is_sodium,
        icons = THREE_R_I(sodium_nitrate_solution, sodium_nitrate_angels, steam),
        order = g_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NaNO₃(aq) --> NaNO₃ + H₂O
        ingredients = {{type = fluid, name = sodium_nitrate_solution, amount = 60}},
        results =
        {
            {type = item, name = sodium_nitrate_angels, amount = 4},
            {type = fluid, name = steam, amount = 60}
        },
        main_product = sodium_nitrate_angels
    },
    {
        type = recipe,
        name = sodium_peroxide_reprocess,
        category = chemistry,
        subgroup = is_sodium,
        icons = TWO_D_I(sodium_peroxide, hydrocyanic_acid, sodium_cyanide_angels, hydrogen_peroxide),
        order = l_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Na₂O₂ + 2HCN -cat-> 2NaCN + H₂O₂
        ingredients =
        {
            {type = item, name = sodium_peroxide, amount = 4},
            {type = fluid, name = hydrocyanic_acid, amount = 120},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = item, name = sodium_cyanide_angels, amount = 8},
            {type = fluid, name = hydrogen_peroxide, amount = 60},
            {type = item, name = catalyst_carrier, amount = 1}
        },
    },
    {
        type = recipe,
        name = sodium_chloride_solution,
        category = angels_liquifying,
        subgroup = is_sodium_fluids,
        icons = THREE_I(salt_angels, water_purified_angels, sodium_chloride_solution),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NaCl + H₂O --> NaCl(aq)
        ingredients =
        {
            {type = item, name = salt_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_chloride_solution, amount = 60}},
        main_product = sodium_chloride_solution
    },
    {
        type = recipe,
        name = sodium_sulfate_solution,
        category = angels_liquifying,
        subgroup = is_sodium_fluids,
        icons = THREE_I(sodium_sulfate_angels, water_purified_angels, sodium_sulfate_solution),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Na₂SO₄ + H₂O --> Na₂SO₄(aq)
        ingredients =
        {
            {type = item, name = sodium_sulfate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_sulfate_solution, amount = 60}},
        main_product = sodium_sulfate_solution
    },
    {
        type = recipe,
        name = sodium_carbonate_solution,
        category = angels_liquifying,
        subgroup = is_sodium_fluids,
        icons = THREE_I(sodium_carbonate_angels, water_purified_angels, sodium_carbonate_solution),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Na₂CO₃ + H₂O --> Na₂CO₃(aq)
        ingredients =
        {
            {type = item, name = sodium_carbonate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_carbonate_solution, amount = 60}},
        main_product = sodium_carbonate_solution
    },
    {
        type = recipe,
        name = sodium_nitrate_solution,
        category = angels_liquifying,
        subgroup = is_sodium_fluids,
        icons = THREE_I(sodium_nitrate_angels, water_purified_angels, sodium_nitrate_solution),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NaNO₃ + H₂O --> NaNO₃(aq)
        ingredients =
        {
            {type = item, name = sodium_nitrate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_nitrate_solution, amount = 60}},
        main_product = sodium_nitrate_solution
    },
    {
        type = recipe,
        name = sodium_hypochlorite_solution,
        category = angels_liquifying,
        subgroup = is_sodium_fluids,
        icons = THREE_I(sodium_hypochlorite_angels, water_purified_angels, sodium_hypochlorite_solution),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NaClO + H₂O --> NaClO(aq)
        ingredients =
        {
            {type = item, name = sodium_hypochlorite_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_hypochlorite_solution, amount = 60}},
        main_product = sodium_hypochlorite_solution
    },
    {
        type = recipe,
        name = sodium_hypochlorite_solution_from_sodium_hydroxide_solution,
        category = angels_advanced_chemistry,
        subgroup = is_sodium_fluids,
        icons = THREE_D_I(sodium_hydroxide_solution_angels, nil, chlorine_angels, sodium_hypochlorite_solution, sodium_chloride_solution, water_purified_angels),
        order = f_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2NaOH(aq) + Cl₂ --> NaClO(aq) + NaCl(aq) + H₂O
        ingredients =
        {
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 240},
            {type = fluid, name = chlorine_angels, amount = 120},
        },
        results =
        {
            {type = fluid, name = sodium_hypochlorite_solution, amount = 120},
            {type = fluid, name = sodium_chloride_solution, amount = 120},
            {type = fluid, name = water_purified_angels, amount = 120}
        },
    },
    {
        type = recipe,
        name = sodium_chlorate_solution,
        category = angels_liquifying,
        subgroup = is_sodium_fluids,
        icons = THREE_I(sodium_chlorate_angels, water_purified_angels, sodium_chlorate_solution),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NaClO₃ + H₂O --> NaClO₃(aq)
        ingredients =
        {
            {type = item, name = sodium_chlorate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_chlorate_solution, amount = 60}},
        main_product = sodium_chlorate_solution
    },
    {
        type = recipe,
        name = sodium_chlorate_solution_from_sodium_hypochlorite_solution,
        category = chemistry,
        subgroup = is_sodium_fluids,
        icons = THREE_R_I(sodium_hypochlorite_solution, sodium_chlorate_solution, sodium_chloride_solution),
        order = g_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 3NaClO(aq) --> NaClO₃(aq) + 2NaCl(aq)
        ingredients = {{type = fluid, name = sodium_hypochlorite_solution, amount = 180}},
        results =
        {
            {type = fluid, name = sodium_chlorate_solution, amount = 60},
            {type = fluid, name = sodium_chloride_solution, amount = 120}
        }
    },
    {
        type = recipe,
        name = sodium_perchlorate_solution,
        category = angels_liquifying,
        subgroup = is_sodium_fluids,
        icons = THREE_I(sodium_perchlorate_angels, water_purified_angels, sodium_perchlorate_solution),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NaClO₄ + H₂O --> NaClO₄(aq)
        ingredients =
        {
            {type = item, name = sodium_perchlorate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_perchlorate_solution, amount = 60}},
        main_product = sodium_perchlorate_solution
    },
    {
        type = recipe,
        name = sodium_perchlorate_solution_from_sodium_chlorate_solution,
        category = chemistry,
        subgroup = is_sodium_fluids,
        icons = TWO_D_I(sodium_chlorate_solution, water_purified_angels, sodium_perchlorate_solution, hydrogen_angels),
        order = h_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NaClO₃(aq) + H₂O -cat-> NaClO₄(aq) + H₂
        ingredients =
        {
            {type = fluid, name = sodium_chlorate_solution, amount = 120},
            {type = fluid, name = water_purified_angels, amount = 120},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = fluid, name = sodium_perchlorate_solution, amount = 120},
            {type = fluid, name = hydrogen_angels, amount = 120},
            {type = item, name = catalyst_carrier, amount = 1}
        },
    },
    {
        type = recipe,
        name = sodium_chloride_solution_from_sodium_bicarbonate_solution,
        category = chemistry,
        subgroup = is_sodium_fluids,
        icons = TWO_D_I(sodium_bicarbonate_solution, hydrochloric_acid_angels, sodium_chloride_solution, carbonic_acid),
        order = i_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NaHCO₃(aq) + HCl(aq) --> NaCl(aq) + H₂CO₃(aq)
        ingredients =
        {
            {type = fluid, name = sodium_bicarbonate_solution, amount = 60},
            {type = fluid, name = hydrochloric_acid_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = sodium_chloride_solution, amount = 60},
            {type = fluid, name = carbonic_acid, amount = 60}
        },
    },
    {
        type = recipe,
        name = sodium_sulfate_from_sodium_bicarbonate_solution,
        category = chemistry,
        subgroup = is_sodium_fluids,
        icons = TWO_D_I(sodium_bicarbonate_solution, sulfuric_acid_angels, sodium_sulfate_angels, carbonic_acid),
        order = i_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 4NaHCO₃(aq) + 2H₂SO₄ --> 2Na₂SO₄ + 4H₂CO₃(aq)
        ingredients =
        {
            {type = fluid, name = sodium_bicarbonate_solution, amount = 120},
            {type = fluid, name = sulfuric_acid_angels, amount = 60}
        },
        results =
        {
            {type = item, name = sodium_sulfate_angels, amount = 4},
            {type = fluid, name = carbonic_acid, amount = 120}
        },
    },
    {
        type = recipe,
        name = sodium_cyanide_solution,
        category = chemistry,
        subgroup = is_sodium_fluids,
        icons = THREE_I(sodium_cyanide_angels, water_purified_angels, sodium_cyanide_solution),
        order = j,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- NaCN + H₂O --> NaCN(aq)
        ingredients =
        {
            {type = item, name = sodium_cyanide_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = sodium_cyanide_solution, amount = 60}},
        main_product = sodium_cyanide_solution
    },
    {
        type = recipe,
        name = sodium_cyanide_solution_alt,
        category = chemistry,
        subgroup = is_sodium_fluids,
        icons = THREE_I(sodium_hydroxide_angels, hydrocyanic_acid, sodium_cyanide_solution),
        order = j,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- NaOH + HCN--> NaCN(aq)
        ingredients =
        {
            {type = item, name = sodium_hydroxide_angels, amount = 4},
            {type = fluid, name = hydrocyanic_acid, amount = 60}
        },
        results = {{type = fluid, name = sodium_cyanide_solution, amount = 60}},
        main_product = sodium_cyanide_solution
    }
})

-- SULFUR
sulfur_trioxide_separation = "sulfur-trioxide-separation"
sulfuric_acid_from_hydrogen_peroxide = "sulfuric-acid-from-hydrogen-peroxide"
data:extend
({
    {
        type = recipe,
        name = sulfur_trioxide_separation,
        category = chemistry,
        subgroup = is_sulfur_fluids,
        icons = THREE_R_I(sulfur_trioxide_gas, sulfur_dioxide_angels, oxygen_angels),
        order = d_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2SO₃ -cat-> 2SO₂ + O₂
        ingredients =
        {
            {type = fluid, name = sulfur_trioxide_gas, amount = 120},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = sulfur_dioxide_angels, amount = 120},
            {type = fluid, name = oxygen_angels, amount = 60},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = sulfur_dioxide_angels
    },
    {
        type = recipe,
        name = sulfuric_acid_from_hydrogen_peroxide,
        category = chemistry,
        subgroup = is_sulfur_fluids,
        icons = THREE_I(hydrogen_peroxide, sulfur_dioxide_angels, sulfuric_acid_angels),
        order = f_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- SO₂ + H₂O₂ --> H₂SO₄
        ingredients =
        {
            {type = fluid, name = hydrogen_peroxide, amount = 120},
            {type = fluid, name = sulfur_dioxide_angels, amount = 120}
        },
        results = {{type = fluid, name = sulfuric_acid_angels, amount = 120}},
        main_product = sulfuric_acid_angels
    },
    {
        type = recipe,
        name = sulfur_trioxide_gas,
        category = chemistry,
        subgroup = is_sulfur_fluids,
        icons = THREE_I(sulfur_dioxide_angels, oxygen_angels, sulfur_trioxide_gas),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2SO₂ + O₂ --> 2SO₃
        ingredients =
        {
            {type = fluid, name = sulfur_dioxide_angels, amount = 120},
            {type = fluid, name = oxygen_angels, amount = 60}
        },
        results = {{type = fluid, name = sulfur_trioxide_gas, amount = 120}},
        main_product = sulfur_trioxide_gas
    },
    {
        type = recipe,
        name = peroxydisulfuric_acid,
        category = angels_petrochem_electrolyser,
        subgroup = is_sulfur_fluids,
        icons = FOUR_R_I(sulfuric_acid_angels, hydrogen_angels, peroxydisulfuric_acid, oxygen_angels),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2H₂SO₄ + 2H₂O -electrode/electrolyser-> H₂S₂O₈ + 2H₂ + O₂
        ingredients =
        {
            {type = fluid, name = sulfuric_acid_angels, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 240},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = item, name = peroxydisulfuric_acid, amount = 8},
            {type = fluid, name = hydrogen_angels, amount = 120}, -- 240
            {type = fluid, name = oxygen_angels, amount = 60}, -- 120
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = peroxydisulfuric_acid
    }
})

-- CHLORINE
data:extend
({
    {
        type = recipe,
        name = phosgene_gas,
        category = chemistry,
        subgroup = is_chlorine_fluids,
        icons = THREE_I(carbon_monoxide_angels, chlorine_angels, phosgene_gas),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- CO + Cl₂ --> COCl₂
        ingredients =
        {
            {type = fluid, name = carbon_monoxide_angels, amount = 60},
            {type = fluid, name = chlorine_angels, amount = 60}
        },
        results = {{type = fluid, name = phosgene_gas, amount = 60}}
    },
    {
        type = recipe,
        name = chlorine_oxide_gas,
        category = angels_advanced_chemistry,
        subgroup = is_chlorine_fluids,
        icons = THREE_D_I(chlorine_angels, sodium_carbonate_solution, water_purified_angels, chlorine_oxide_gas, sodium_chlorate_solution, sodium_bicarbonate_solution),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 4Cl₂ + 4Na₂CO₃(aq) + 2H₂O + (4H₂O) --> 2Cl₂O + 4NaCl(aq) + 4NaHCO₃(aq)
        ingredients =
        {
            {type = fluid, name = chlorine_angels, amount = 240},
            {type = fluid, name = sodium_carbonate_solution, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 360}
        },
        results =
        {
            {type = fluid, name = chlorine_oxide_gas, amount = 120},
            {type = fluid, name = sodium_chlorate_solution, amount = 240},
            {type = fluid, name = sodium_bicarbonate_solution, amount = 240}
        },
        main_product = chlorine_oxide_gas
    },
    {
        type = recipe,
        name = hypochlorous_acid,
        category = chemistry,
        subgroup = is_chlorine_fluids,
        icons = THREE_I(chlorine_oxide_gas, water_purified_angels, hypochlorous_acid),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- (Cl₂O + H₂O) + 2H₂O --> 2HClO(aq)
        ingredients =
        {
            {type = fluid, name = chlorine_oxide_gas, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 180}
        },
        results = {{type = fluid, name = hypochlorous_acid, amount = 120}},
        main_product = hypochlorous_acid
    },
    {
        type = recipe,
        name = chloroethane_gas,
        category = chemistry,
        subgroup = is_chlorine_fluids,
        icons = THREE_I(ethylene_angels, hydrogen_chloride_angels, chloroethane_gas),
        order = j,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₂H₄ + HCl --> C₂H₅Cl
        ingredients =
        {
            {type = fluid, name = ethylene_angels, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 60},
        },
        results = {{type = fluid, name = chloroethane_gas, amount = 60}},
        main_product = chloroethane_gas
    },
    {
        type = recipe,
        name = chlorobutane_liquid,
        category = chemistry,
        subgroup = is_chlorine_fluids,
        icons = TWO_D_I(butane_angels, chlorine_angels, chlorobutane_liquid, hydrogen_chloride_angels),
        order = k,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₄H₁₀(g) + Cl₂(g) --> C₄H₉Cl(l) + HCl(g)
        ingredients =
        {
            {type = fluid, name = butane_angels, amount = 60},
            {type = fluid, name = chlorine_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = chlorobutane_liquid, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 30} -- 60
        },
        main_product = chlorobutane_liquid
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

-- CALCIUM
lime_from_calcium_hydroxide = "lime-from-calcium-hydroxide"
calcium_hydroxide_from_calcium_cyanamide = "calcium-hydroxide-from-calcium-cyanamide"
limestone_from_calcium_cyanamide = "limestone-from-calcium-cyanamide"
limestone_from_calcium_hydroxide_solution = "limestone-from-calcium-hydroxide-solution"
data:extend
({
    {
        type = recipe,
        name = calcium_sulfate_angels,
        category = chemistry,
        subgroup = is_calcium,
        icons = TWO_D_I(calcium_hydroxide, sulfuric_acid_angels, calcium_sulfate_angels, water_purified_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Ca(OH)₂ + H₂SO₄ --> CaSO₄ + 2H₂O
        ingredients =
        {
            {type = item, name = calcium_hydroxide, amount = 4},
            {type = fluid, name = sulfuric_acid_angels, amount = 60}
        },
        results =
        {
            {type = item, name = calcium_sulfate_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = calcium_sulfate_angels
    },
    {
        type = recipe,
        name = lime_from_calcium_hydroxide,
        category = angels_blast_smelting_4,
        subgroup = is_calcium,
        icons = THREE_R_I(calcium_hydroxide, lime_angels, steam),
        order = c_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Ca(OH)₂ --> CaO + H₂O
        ingredients = {{type = item, name = calcium_hydroxide, amount = 16}},
        results =
        {
            {type = item, name = lime_angels, amount = 16},
            {type = fluid, name = steam, amount = 120} -- 240
        }
    },
    {
        type = recipe,
        name = calcium_carbide,
        category = angels_blast_smelting_4,
        subgroup = is_calcium,
        icons = TWO_D_I(lime_angels, coke_angels, calcium_carbide, carbon_monoxide_angels),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- CaO + 3C --> CaC₂ + CO 
        ingredients =
        {
            {type = item, name = lime_angels, amount = 16},
            {type = item, name = carbon_angels, amount = 48}
        },
        results =
        {
            {type = item, name = calcium_carbide, amount = 16},
            {type = fluid, name = carbon_monoxide_angels, amount = 120} -- 240
        },
        main_product = calcium_carbide
    },
    {
        type = recipe,
        name = calcium_cyanamide,
        category = angels_chemical_smelting_4,
        subgroup = is_calcium,
        icons = TWO_D_I(calcium_carbide, nitrogen_angels, calcium_cyanamide, carbon_angels),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- CaC₂ + N₂ --> CaCN₂ + C
        ingredients =
        {
            {type = item, name = calcium_carbide, amount = 16},
            {type = fluid, name = nitrogen_angels, amount = 240}
        },
        results =
        {
            {type = item, name = calcium_cyanamide, amount = 16},
            {type = item, name = carbon_angels, amount = 8} -- 16
        },
        main_product = calcium_cyanamide
    },
    {
        type = recipe,
        name = calcium_hydroxide,
        category = angels_chemical_smelting_4,
        subgroup = is_calcium,
        icons = TWO_D_I(calcium_carbide, water_purified_angels, calcium_hydroxide, acetylene_gas),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- CaC₂ + 2H₂O --> Ca(OH)₂ + C₂H₂
        ingredients =
        {
            {type = item, name = calcium_carbide, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 480}
        },
        results =
        {
            {type = item, name = calcium_hydroxide, amount = 16},
            {type = fluid, name = acetylene_gas, amount = 240}
        },
        main_product = calcium_hydroxide
    },
    {
        type = recipe,
        name = calcium_hydroxide_from_calcium_cyanamide,
        category = angels_chemical_smelting_4,
        subgroup = is_calcium,
        icons = TWO_D_I(calcium_cyanamide, water_purified_angels, calcium_hydroxide, urea_solution_angels),
        order = g_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- CaCN₂ + 4H₂O --> Ca(OH)₂ + (NH₂)₂CO(aq)
        ingredients =
        {
            {type = item, name = calcium_cyanamide, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 960}
        },
        results =
        {
            {type = item, name = calcium_hydroxide, amount = 16},
            {type = fluid, name = urea_solution_angels, amount = 240}
        }
    },
    {
        type = recipe,
        name = limestone_from_calcium_cyanamide,
        category = angels_chemical_smelting_4,
        subgroup = is_calcium,
        icons = THREE_D_I(calcium_cyanamide, water_purified_angels, carbon_dioxide_angels, limestone_angels, nil, cyanamide_solution),
        order = h_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- CaCN₂ + 2H₂O + CO₂ --> CaCO₃ + NH₂CN(aq)
        ingredients =
        {
            {type = item, name = calcium_cyanamide, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 480},
            {type = fluid, name = carbon_dioxide_angels, amount = 240}
        },
        results =
        {
            {type = item, name = limestone_angels, amount = 16},
            {type = fluid, name = cyanamide_solution, amount = 240}
        }
    },
    {
        type = recipe,
        name = limestone_from_calcium_hydroxide_solution,
        category = chemistry,
        subgroup = is_calcium,
        icons = TWO_D_I(calcium_hydroxide_solution, carbon_dioxide_angels, limestone_angels, water_purified_angels),
        order = h_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Ca(OH)₂(aq) + CO₂ --> CaCO₃ + 2H₂O
        ingredients =
        {
            {type = fluid, name = calcium_hydroxide_solution, amount = 60},
            {type = fluid, name = carbon_dioxide_angels, amount = 60}
        },
        results =
        {
            {type = item, name = limestone_angels, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        }
    },
    {
        type = recipe,
        name = calcium_chloride_solution,
        category = chemistry,
        subgroup = is_calcium_fluids,
        icons = TWO_D_I(calcium_hydroxide, hydrochloric_acid_angels, calcium_chloride_solution, water_purified_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Ca(OH)₂ + 2HCl(aq) --> CaCl₂(aq) + 2H₂O
        ingredients =
        {
            {type = item, name = calcium_hydroxide, amount = 4},
            {type = fluid, name = hydrochloric_acid_angels, amount = 120}
        },
        results =
        {
            {type = fluid, name = calcium_chloride_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        },
        main_product = calcium_chloride_solution
    },
    {
        type = recipe,
        name = calcium_hydroxide_solution,
        category = chemistry,
        subgroup = is_calcium_fluids,
        icons = THREE_I(calcium_hydroxide, water_purified_angels, calcium_hydroxide_solution),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- Ca(OH)₂ + H₂O --> Ca(OH)₂(aq)
        ingredients =
        {
            {type = item, name = calcium_hydroxide, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = calcium_hydroxide_solution, amount = 60}},
        main_product = calcium_hydroxide_solution
    }
})

-- OTHERS
data:extend
({
    {
        type = recipe,
        name = imidazolium_salt,
        category = chemistry,
        subgroup = is_others,
        icons = THREE_I(imidazole, chlorobutane_liquid, imidazolium_salt),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₃H₄N₂(s) + C₄H₉Cl(l) -Ar-> [C₇H₁₃N₂]Cl(s)
        ingredients =
        {
            {type = item, name = imidazole, amount = 4},
            {type = fluid, name = chlorobutane_liquid, amount = 60},
            {type = fluid, name = argon_gas, amount = 60}
        },
        results =
        {
            {type = item, name = imidazolium_salt, amount = 4},
            {type = fluid, name = argon_gas, amount = 30} -- 60
        },
        main_product = imidazolium_salt
    },
    -- FLUID
    {
        type = recipe,
        name = hydrogen_peroxide,
        category = chemistry,
        subgroup = is_others_fluids,
        icons = TWO_D_I(peroxydisulfuric_acid, water_purified_angels, hydrogen_peroxide, sulfuric_acid_angels),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- H₂S₂O₈ + H₂O --> H₂O₂ + 2H₂SO₄
        ingredients =
        {
            {type = item, name = peroxydisulfuric_acid, amount = 8},
            {type = fluid, name = water_purified_angels, amount = 120}
        },
        results =
        {
            {type = fluid, name = hydrogen_peroxide, amount = 120},
            {type = fluid, name = sulfuric_acid_angels, amount = 120} -- 240
        },
        main_product = hydrogen_peroxide
    },
    {
        type = recipe,
        name = ionic_liquid,
        category = chemistry,
        subgroup = is_others_fluids,
        icons = TWO_D_I(imidazolium_salt, hexafluorophosphoric_acid, ionic_liquid, hydrochloric_acid_angels),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- [C₇H₁₃N₂]Cl(s) + HPF₆(aq) --> [C₇H₁₃N₂]PF₆(l) + HCl(aq)
        ingredients =
        {
            {type = item, name = imidazolium_salt, amount = 4},
            {type = fluid, name = hexafluorophosphoric_acid, amount = 60}
        },
        results =
        {
            {type = fluid, name = ionic_liquid, amount = 60},
            {type = fluid, name = hydrochloric_acid_angels, amount = 30} -- 60
        },
        main_product = ionic_liquid
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

-- MULTI-PHASE OIL
lubricant_from_naphtha = "lubricant-from-naphtha"
data:extend
({
    {
        type = recipe,
        name = residual_angels,
        category = chemistry,
        subgroup = is_multi_phase_oil,
        icons = THREE_I(methane_angels, carbon_dioxide_angels, residual_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- CH₄ + CO₂ --> (CH₄ + CO₂)
        ingredients =
        {
            {type = fluid, name = methane_angels, amount = 60},
            {type = fluid, name = carbon_dioxide_angels, amount = 60}
        },
        results = {{type = fluid, name = residual_angels, amount = 60}},
        main_product = residual_angels
    },
    {
        type = recipe,
        name = lubricant,
        category = chemistry,
        subgroup = is_multi_phase_oil,
        icons = TWO_I(fuel_oil_angels, lubricant),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2C₂₀H₄₂ -cat-> C₄₀H₈₂
        ingredients =
        {
            {type = fluid, name = fuel_oil_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = fluid, name = lubricant, amount = 30},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = lubricant
    },
    {
        type = recipe,
        name = lubricant_from_naphtha,
        category = chemistry,
        subgroup = is_multi_phase_oil,
        icons = TWO_D_I(naphtha_angels, residual_angels, lubricant, steam),
        order = f_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 4C₈H₁₈ + 4(CH₄ + CO₂) -cat-> C₄₀H₈₂ + 2H₂O
        ingredients =
        {
            {type = fluid, name = naphtha_angels, amount = 60},
            {type = fluid, name = residual_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = fluid, name = lubricant, amount = 15},
            {type = fluid, name = steam, amount = 30},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = lubricant
    }
})

-- CARBON FLUIDS 2
methane_from_acetylene_gas = "methane-from-acetylene-gas"
ethane_from_acetylene_gas = "ethane-from-acetylene-gas"
chloroethane_from_acetylene_gas = "chloroethane-from-acetylene-gas"
data:extend
({
    {
        type = recipe,
        name = methane_from_acetylene_gas,
        category = chemistry,
        subgroup = is_carbon_fluids_2,
        icons = THREE_I(acetylene_gas, hydrogen_angels, methane_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₂H₂ + H₂ -cat-> C₂H₄
        ingredients =
        {
            {type = fluid, name = acetylene_gas, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 60},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = methane_angels, amount = 60},
            {type = item, name = catalyst_carrier, amount = 1}
        }
    },
    {
        type = recipe,
        name = ethane_from_acetylene_gas,
        category = chemistry,
        subgroup = is_carbon_fluids_2,
        icons = THREE_I(acetylene_gas, hydrogen_angels, ethane_angels),
        order = a_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₂H₂ + 2H₂ -cat-> C₂H₆
        ingredients =
        {
            {type = fluid, name = acetylene_gas, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 120},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = ethane_angels, amount = 60},
            {type = item, name = catalyst_carrier, amount = 1}
        }
    },
    {
        type = recipe,
        name = chloroethane_from_acetylene_gas,
        category = chemistry,
        subgroup = is_carbon_fluids_2,
        icons = THREE_I(acetylene_gas, hydrogen_chloride_angels, chloroethane_gas),
        order = a_c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₂H₂ + HCl -cat-> C₂H₃Cl
        ingredients =
        {
            {type = fluid, name = acetylene_gas, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 60},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = chloroethane_gas, amount = 60},
            {type = item, name = catalyst_carrier, amount = 1}
        }
    },
    {
        type = recipe,
        name = diethyl_ether,
        category = angels_advanced_chemistry,
        subgroup = is_carbon_fluids_2,
        icons = THREE_R_I(ethanol_angels, diethyl_ether, steam),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2C₂H₆O -H₂SO₄-> (C₂H₅)₂O + H₂O
        ingredients =
        {
            {type = fluid, name = ethanol_angels, amount = 120},
            {type = fluid, name = sulfuric_acid_angels, amount = 60}
        },
        results =
        {
            {type = fluid, name = diethyl_ether, amount = 60},
            {type = fluid, name = steam, amount = 30}, -- 60
            {type = fluid, name = sulfuric_acid_angels, amount = 30} -- 60
        },
        main_product = diethyl_ether
    },
    {
        type = recipe,
        name = methyl_methacrylate,
        category = angels_advanced_chemistry,
        subgroup = is_carbon_fluids_2,
        icons = THREE_D_I(acetone_cyanohydrin, methanol_angels, sulfuric_acid_angels, methyl_methacrylate, nil, ammonium_hydrosulfate),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₄H₇NO + CH₄O + H₂SO₄ --> C₅H₈O₂ + NH₄HSO₄
        ingredients =
        {
            {type = fluid, name = acetone_cyanohydrin, amount = 120},
            {type = fluid, name = methanol_angels, amount = 120},
            {type = fluid, name = sulfuric_acid_angels, amount = 120}
        },
        results =
        {
            {type = fluid, name = methyl_methacrylate, amount = 120},
            {type = item, name = ammonium_hydrosulfate, amount = 8}
        },
        main_product = methyl_methacrylate
    },
    {
        type = recipe,
        name = formic_acid,
        category = chemistry,
        subgroup = is_carbon_fluids_2,
        icons = THREE_D_I(formaldehyde_angels, nil, copper_hydroxide_II, formic_acid, copper_oxide_I, water_purified_angels),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- CH₂O + Cu(OH)₂ --> CH₂O₂ + Cu₂O + H₂O 
        ingredients =
        {
            {type = fluid, name = formaldehyde_angels, amount = 60},
            {type = item, name = copper_hydroxide_II, amount = 4}
        },
        results =
        {
            {type = fluid, name = formic_acid, amount = 60},
            {type = item, name = copper_oxide_I, amount = 2},
            {type = fluid, name = water_purified_angels, amount = 30} -- 60
        },
        main_product = formic_acid
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

-- METHANE
methane_from_ethane = "methane-from-ethane"
methane_and_propene_from_butane = "methane-and-propene-from-butane"
data:extend
({
    {
        type = recipe,
        name = methane_from_ethane,
        category = chemistry,
        subgroup = is_methane,
        icons = TWO_I(ethane_angels, methane_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₂H₆ + H₂ -cat-> 2CH₄
        ingredients =
        {
            {type = fluid, name = ethane_angels, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1},
        },
        results =
        {
            {type = fluid, name = methane_angels, amount = 120},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = methane_angels
    },
    {
        type = recipe,
        name = methane_and_propene_from_butane,
        category = chemistry,
        subgroup = is_methane,
        icons = THREE_R_I(butane_angels, methane_angels, propene_angels),
        order = a_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₄H₁₀ -cat-> CH₄ + C₃H₆
        ingredients =
        {
            {type = fluid, name = butane_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = fluid, name = methane_angels, amount = 60},
            {type = fluid, name = propene_angels, amount = 60},
            {type = item, name = catalyst_carrier, amount = 1},
        },
        main_product = methane_angels
    },
    {
        type = recipe,
        name = dimethyl_carbonate,
        category = chemistry,
        subgroup = is_methane,
        icons = TWO_D_I(methanol_angels, phosgene_gas, dimethyl_carbonate, hydrogen_chloride_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2CH₄O + COCl₂ --> C₃H₆O₃ + 2HCl
        ingredients =
        {
            {type = fluid, name = methanol_angels, amount = 120},
            {type = fluid, name = phosgene_gas, amount = 60}
        },
        results =
        {
            {type = fluid, name = dimethyl_carbonate, amount = 60},
            {type = fluid, name = hydrogen_chloride_angels, amount = 60}
        },
        main_product = dimethyl_carbonate
    },
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

-- ETHANE
ethane_and_ethylene_from_butane = "ethane-and-ethylene-from-butane"
data:extend
({
    {
        type = recipe,
        name = ethane_angels,
        category = chemistry,
        subgroup = is_ethane,
        icons = TWO_D_I(chloromethane_angels, sodium_angels, ethane_angels, salt_angels),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2CH₃Cl + 2Na --> C₂H₆ + 2NaCl
        ingredients =
        {
            {type = fluid, name = chloromethane_angels, amount = 120},
            {type = item, name = sodium_angels, amount = 8}
        },
        results =
        {
            {type = fluid, name = ethane_angels, amount = 60},
            {type = item, name = salt_angels, amount = 4}
        },
        main_product = ethane_angels
    },
    {
        type = recipe,
        name = ethane_and_ethylene_from_butane,
        category = chemistry,
        subgroup = is_ethane,
        icons = THREE_R_I(butane_angels, ethane_angels, ethylene_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₄H₁₀ -cat-> C₂H₆ + C₂H₄
        ingredients =
        {
            {type = fluid, name = butane_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = fluid, name = ethane_angels, amount = 60},
            {type = fluid, name = ethylene_angels, amount = 60},
            {type = item, name = catalyst_carrier, amount = 1},
        },
        main_product = ethane_angels
    },
    {
        type = recipe,
        name = polyethylene,
        category = chemistry,
        subgroup = is_ethane,
        icons = TWO_I(ethylene_angels, polyethylene),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₂H₄ -cat-> (C₂H₄)n
        ingredients =
        {
            {type = fluid, name = ethylene_angels, amount = 120},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = item, name = polyethylene, amount = 4},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = polyethylene
    },
    {
        type = recipe,
        name = ethylene_oxide,
        category = chemistry,
        subgroup = is_ethane,
        icons = THREE_I(ethylene_angels, oxygen_angels, ethylene_oxide),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2C₂H₄ + O₂ -cat-> 2C₂H₄O
        ingredients =
        {
            {type = fluid, name = ethylene_angels, amount = 120},
            {type = fluid, name = oxygen_angels, amount = 60},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = ethylene_oxide, amount = 120},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = ethylene_oxide
    },
    {
        type = recipe,
        name = ethylene_carbonate,
        category = chemistry,
        subgroup = is_ethane,
        icons = THREE_I(ethylene_oxide, carbon_dioxide_angels, ethylene_carbonate),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₂H₄O + CO₂ -cat-> C₃H₄O₃
        ingredients =
        {
            {type = fluid, name = ethylene_oxide, amount = 120},
            {type = fluid, name = carbon_dioxide_angels, amount = 120},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = ethylene_carbonate, amount = 120},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = ethylene_carbonate
    },
    {
        type = recipe,
        name = ethylene_glycol_liquid,
        category = chemistry,
        subgroup = is_ethane,
        icons = THREE_I(ethylene_oxide, water_purified_angels, ethylene_glycol_liquid),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₂H₄O(l) + H₂O(l) --> C₂H₆O₂(l)
        ingredients =
        {
            {type = fluid, name = ethylene_oxide, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = fluid, name = ethylene_glycol_liquid, amount = 60}},
        main_product = ethylene_glycol_liquid
    },
    {
        type = recipe,
        name = glyoxal_liquid,
        category = chemistry,
        subgroup = is_ethane,
        icons = TWO_D_I(ethylene_glycol_liquid, oxygen_angels, glyoxal_liquid, water_purified_angels),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₂H₆O₂(l) + O₂(g) -cat(Ag/Cu)-> C₂H₂O₂(l) + 2H₂O(l)
        ingredients =
        {
            {type = fluid, name = ethylene_glycol_liquid, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 60},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = glyoxal_liquid, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60}, -- 120
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = glyoxal_liquid
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

-- BUTANE
butene_gas_from_butane_gas = "butene-gas-from-butane-gas"
data:extend
({
    {
        type = recipe,
        name = butane_angels,
        category = chemistry,
        subgroup = is_butane,
        icons = TWO_D_I(chloroethane_gas, sodium_angels, butane_angels, salt_angels),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2C₂H₅Cl + 2Na --> C₄H₁₀ + 2NaCl
        ingredients =
        {
            {type = fluid, name = chloroethane_gas, amount = 120},
            {type = item, name = sodium_angels, amount = 8}
        },
        results =
        {
            {type = fluid, name = butane_angels, amount = 60},
            {type = item, name = salt_angels, amount = 4}
        },
        main_product = butane_angels
    },
    {
        type = recipe,
        name = butene_gas,
        category = chemistry,
        subgroup = is_butane,
        icons = TWO_I(ethylene_angels, butene_gas),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2C₂H₄ -cat-> C₄H₈ 
        ingredients =
        {
            {type = fluid, name = ethylene_angels, amount = 120},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = butene_gas, amount = 60},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = butene_gas
    },
    {
        type = recipe,
        name = butene_gas_from_butane_gas,
        category = chemistry,
        subgroup = is_butane,
        icons = TWO_I(butane_angels, butene_gas),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₄H₁₀ -cat-> C₄H₈ + H₂
        ingredients =
        {
            {type = fluid, name = butane_angels, amount = 60},
            {type = item, name = catalyst_blue, amount = 1}
        },
        results =
        {
            {type = fluid, name = butene_gas, amount = 60},
            {type = fluid, name = hydrogen_angels, amount = 60},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = butene_gas
    },
    {
        type = recipe,
        name = acetone_angels,
        category = chemistry,
        subgroup = is_butane,
        icons = THREE_I(propene_angels, oxygen_angels, acetone_angels),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2C₃H₆ + O₂ -cat-> 2C₃H₆O
        ingredients =
        {
            {type = fluid, name = propene_angels, amount = 120},
            {type = fluid, name = oxygen_angels, amount = 60},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = acetone_angels, amount = 120},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = acetone_angels
    },
    {
        type = recipe,
        name = phenol,
        category = chemistry,
        subgroup = is_butane,
        icons = THREE_I(benzene_angels, oxygen_angels, phenol),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2C₆H₆ + O₂ -cat-> 2C₆H₆O
        ingredients =
        {
            {type = fluid, name = benzene_angels, amount = 120},
            {type = fluid, name = oxygen_angels, amount = 60},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = item, name = phenol, amount = 8},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = phenol
    },
    {
        type = recipe,
        name = bisphenol_a,
        category = chemistry,
        subgroup = is_butane,
        icons = TWO_D_I(phenol, acetone_angels, bisphenol_a, water_purified_angels),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2C₆H₆O + C₃H₆O -HCl-> C₁₅H₁₆O₂ + H₂O
        ingredients =
        {
            {type = item, name = phenol, amount = 8},
            {type = fluid, name = acetone_angels, amount = 60},
            {type = fluid, name = hydrochloric_acid_angels, amount = 60},
        },
        results =
        {
            {type = item, name = bisphenol_a, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60},
            {type = fluid, name = hydrochloric_acid_angels, amount = 30},
        },
        main_product = bisphenol_a
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

-- PLASTIC
liquid_plastic_4 = "liquid-plastic-4"
liquid_plastic_5 = "liquid-plastic-5"
data:extend
({
    {
        type = recipe,
        name = liquid_plastic_4,
        category = angels_advanced_chemistry,
        subgroup = is_plastic,
        icons = FOUR_I(acrylonitrile, butadiene_angels, styrene_angels, liquid_plastic_angels),
        order = a_c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₃H₃N + С₄H₆ + C₈H₈ -cat-> жидкий пластик
        ingredients =
        {
            {type = fluid, name = acrylonitrile, amount = 30},
            {type = fluid, name = butadiene_angels, amount = 30},
            {type = fluid, name = styrene_angels, amount = 30},
            {type = item, name = catalyst_yellow, amount = 1}
        },
        results =
        {
            {type = fluid, name = liquid_plastic_angels, amount = 120},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = liquid_plastic_angels
    },
    {
        type = recipe,
        name = liquid_plastic_5,
        category = chemistry,
        subgroup = is_plastic,
        icons = TWO_I(methyl_methacrylate, liquid_plastic_angels),
        order = a_d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₅H₈O₂ -cat-> жидкий пластик
        ingredients =
        {
            {type = fluid, name = methyl_methacrylate, amount = 30},
            {type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = liquid_plastic_angels, amount = 60},
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = liquid_plastic_angels
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

-- RESINE
data:extend
({
    {
        type = recipe,
        name = epoxy_resin_liquid,
        category = angels_advanced_chemistry,
        subgroup = is_resin,
        icons = THREE_D_I(bisphenol_a, epichlorohydrin_angels, sodium_hydroxide_solution_angels, epoxy_resin_liquid, sodium_chloride_solution, water_purified_angels),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2С₃H₅ClO(l) + C₁₅H₁₆O₂(s) + 2NaOH(aq) --> C₂₁H₂₄O₄(l) + 2NaCl(aq) + 2H₂O(l)
        ingredients =
        {
            {type = item, name = bisphenol_a, amount = 8},
            {type = fluid, name = epichlorohydrin_angels, amount = 60},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 120}
        },
        results =
        {
            {type = fluid, name = epoxy_resin_liquid, amount = 120},
            {type = fluid, name = sodium_chloride_solution, amount = 120}, -- 240
            {type = fluid, name = water_purified_angels, amount = 120} -- 240
        },
        main_product = epoxy_resin_liquid
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

-- EXPLOSIVES
data:extend
({
    {
        type = recipe,
        name = glycerol_dichlorohydrin,
        category = chemistry,
        subgroup = is_explosives,
        icons = TWO_D_I(allyl_chloride_angels, hypochlorous_acid, glycerol_dichlorohydrin, water_purified_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- C₃H₅Cl + HClO(aq) --> C₃H₆Cl₂O + H₂O
        ingredients =
        {
            {type = fluid, name = allyl_chloride_angels, amount = 60},
            {type = fluid, name = hypochlorous_acid, amount = 60}
        },
        results =
        {
            {type = fluid, name = glycerol_dichlorohydrin, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        main_product = glycerol_dichlorohydrin
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