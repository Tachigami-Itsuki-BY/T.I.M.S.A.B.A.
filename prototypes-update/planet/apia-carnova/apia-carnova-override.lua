if mods[apia_carnova_mods] then
    -- APIA
    local raw_larvae = "raw-larvae"
    data_item[raw_larvae].subgroup = is_apia_recipe
    data_item[raw_larvae].order = a
    data_item[raw_larvae].fuel_category = base_fuel
    data_item[raw_larvae].fuel_value = 1800 .. kJ
    TIMSABA.void.freezing_organics(raw_larvae)

    data_recipe[larvae_cultivation].subgroup = is_apia_recipe
    data_recipe[larvae_cultivation].icons = STONKS_I(stonks_png, raw_larvae)
    data_recipe[larvae_cultivation].order = a_a
    data_recipe[larvae_cultivation].ingredients =
    {
        {type = item, name = raw_larvae, amount = 2},
        {type = item, name = honey, amount = 1},
        {type = fluid, name = royal_jelly, amount = 60}
    }
    data_recipe[larvae_cultivation].results[1].amount = 4

    local fossil_larvae = "fossil-larvae"
    data_item[fossil_larvae].subgroup = is_apia_recipe
    data_item[fossil_larvae].order = b

    local fossil_larvae_processing = "fossil-larvae-processing"
    data_recipe[fossil_larvae_processing].category = crushing
    data_recipe[fossil_larvae_processing].subgroup = is_apia_recipe
    data_recipe[fossil_larvae_processing].icons = RECYCLING_I(recycling_png, fossil_larvae)
    data_recipe[fossil_larvae_processing].order = b_a
    -- Fossil Larvae --> CaCO₃ + SiO₂ + FeS₂
    data_recipe[fossil_larvae_processing].results =
    {
        {type = item, name = calcite,          amount_min = 0, amount_max = 1, probability = 0.50},
        {type = item, name = silicon_oxide_IV, amount_min = 0, amount_max = 1, probability = 0.50},
        {type = item, name = iron_ore,         amount_min = 0, amount_max = 1, probability = 0.50},
        {type = item, name = sulfur,           amount_min = 0, amount_max = 2, probability = 0.50}
    }

    data_fluid[royal_jelly].subgroup = is_apia_recipe
    data_fluid[royal_jelly].order = c
    TIMSABA.barreling.add_simple_fluid(royal_jelly)

    local biolubricant_from_royal_jelly = "biolubricant-from-royal-jelly"
    data_recipe[biolubricant_from_royal_jelly].subgroup = is_apia_recipe
    data_recipe[biolubricant_from_royal_jelly].icons = THREE_I(royal_jelly, water, lubricant)
    data_recipe[biolubricant_from_royal_jelly].order = c_a
    data_recipe[biolubricant_from_royal_jelly].energy_required = 4
    data_recipe[biolubricant_from_royal_jelly].ingredients =
    {
        {type = fluid, name = royal_jelly, amount = 120},
        {type = fluid, name = water, amount = 30}
    }
    data_recipe[biolubricant_from_royal_jelly].results[1].amount = 60

    data_item[honeycombs].subgroup = is_apia_recipe
    data_item[honeycombs].order = d
    data_item[honeycombs].stack_size = 200
    TIMSABA.void.freezing_organics(honeycombs)
    data_recipe[honeycombs].subgroup = is_apia_recipe
    data_recipe[honeycombs].order = d
    data_recipe[honeycombs].results[1].amount = 8

    local honeycombs_processing = "honeycombs-processing"
    data_recipe[honeycombs_processing].subgroup = is_carnova_recipe
    data_recipe[honeycombs_processing].icons = THREE_R_I(honeycombs, wax, honey)
    data_recipe[honeycombs_processing].order = d_a
    data_recipe[honeycombs_processing].energy_required = 4

    data_item[wax].subgroup = is_apia_recipe
    data_item[wax].order = e
    data_item[wax].fuel_category = base_fuel
    data_item[wax].fuel_value = 1800 .. kJ

    data_item[honey].subgroup = is_apia_recipe
    data_item[honey].order = f
    TIMSABA.void.freezing_organics(honey)

    local nutrients_from_honey = "nutrients-from-honey"
    data_recipe[nutrients_from_honey].subgroup = is_apia_recipe
    data_recipe[nutrients_from_honey].icons = TWO_I(honey, nutrients)
    data_recipe[nutrients_from_honey].order = f_a

    local honey_processing = "honey-processing"
    data_recipe[honey_processing].subgroup = is_apia_recipe
    data_recipe[honey_processing].icons = THREE_R_I(honey, polysaccharides, water)
    data_recipe[honey_processing].order = f_b
    data_recipe[honey_processing].energy_required = 4
    data_recipe[honey_processing].ingredients[1].amount = 8
    data_recipe[honey_processing].results =
    {
        {type = item, name = polysaccharides, amount = 2},
        {type = fluid, name = water, amount = 60}
    }

    local honey_dehydration = "honey-dehydration"
    data_recipe[honey_dehydration].subgroup = is_apia_recipe
    data_recipe[honey_dehydration].icons = TWO_I(honey, polysaccharides)
    data_recipe[honey_dehydration].order = f_c
    data_recipe[honey_dehydration].ingredients[1].amount = 8

    data_item[polysaccharides].subgroup = is_apia_recipe
    data_item[polysaccharides].order = g

    local nutrients_from_polysaccharides = "nutrients-from-polysaccharides"
    data_recipe[nutrients_from_polysaccharides].subgroup = is_apia_recipe
    data_recipe[nutrients_from_polysaccharides].icons = TWO_I(polysaccharides, nutrients)
    data_recipe[nutrients_from_polysaccharides].order = g_a

    local carbon_fiber_apia = "carbon-fiber-apia"
    data_recipe[carbon_fiber_apia].subgroup = is_apia_recipe
    data_recipe[carbon_fiber_apia].icons = BUILDING_R_I(carbon_fiber, planet_apia)
    data_recipe[carbon_fiber_apia].order = g_b
    data_recipe[carbon_fiber_apia].energy_required = 4
    data_recipe[carbon_fiber_apia].ingredients =
    {
        {type = item, name = carbon_angels, amount = 1},
        {type = item, name = wax, amount = 4},
        {type = item, name = polysaccharides, amount = 2}
    }

    local solid_fuel_from_polysaccharides = "solid-fuel-from-polysaccharides"
    data_recipe[solid_fuel_from_polysaccharides].subgroup = is_apia_recipe
    data_recipe[solid_fuel_from_polysaccharides].icons = THREE_I(wax, polysaccharides, solid_fuel)
    data_recipe[solid_fuel_from_polysaccharides].order = g_c
    data_recipe[solid_fuel_from_polysaccharides].ingredients =
    {
        {type = item, name = wax, amount = 4},
        {type = item, name = polysaccharides, amount = 1}
    }

    -- CARNOVA
    data_item[bones].subgroup = is_carnova_recipe
    data_item[bones].order = a
    data_item[bones].stack_size = 200
    data_resource[bones].subgroup = is_carnova_recipe
    data_resource[bones].order = a
    data_resource[bones].minable.fluid_amount = (15/4)

    local bone_meal = "bone-meal"
    data_item[bone_meal].subgroup = is_carnova_recipe
    data_item[bone_meal].order = b

    local simple_bone_processing = "simple-bone-processing"
    data_recipe[simple_bone_processing].category = angels_ore_refining_T1
    data_recipe[simple_bone_processing].subgroup = is_carnova_recipe
    data_recipe[simple_bone_processing].icons = TWO_I(bones, bone_meal)
    data_recipe[simple_bone_processing].order = b_a

    local advanced_bone_processing = "advanced-bone-processing"
    data_recipe[advanced_bone_processing].category = angels_ore_refining_T1
    data_recipe[advanced_bone_processing].subgroup = is_carnova_recipe
    data_recipe[advanced_bone_processing].icons = TWO_I(bones, calcite)
    data_recipe[advanced_bone_processing].order = b_b
    data_recipe[advanced_bone_processing].results = {{type = item, name = calcite, amount = 4, probability = 0.25}}

    local bone_meal_sieving = "bone-meal-sieving"
    data_recipe[bone_meal_sieving].category = ore_sorting_6
    data_recipe[bone_meal_sieving].subgroup = is_carnova_recipe
    data_recipe[bone_meal_sieving].icons = RECYCLING_I(recycling_png, bone_meal)
    data_recipe[bone_meal_sieving].order = b_c
    data_recipe[bone_meal_sieving].energy_required = 2
    -- ~60-70%(Ca,Mg,Na,K)₅(PO₄,CO₃)₃(OH,F) + ~20-30%(CaHbOcNd)e + ~10-20%H₂O + ~0.01%(Zn,Cu,Mn,B,Si,Fe)
    -- (Ca₅(PO₄)₃ + 4Mg + MgCO₃ + Na + 2Na₂CO₃ + 4K + KOH + F) + collagen + water + (Zn,Cu,Mn,B,Si,Fe)
    data_recipe[bone_meal_sieving].ingredients[1].amount = 8
    data_recipe[bone_meal_sieving].results =
    {
        -- MINERALS
        {type = item, name = fluorapatite,             amount_min = 0, amount_max = 1, probability = 0.50},
        {type = item, name = magnesium_ore,            amount_min = 0, amount_max = 4, probability = 0.50},
        --{type = item, name = magnesium_carbonate,      amount_min = 0, amount_max = 1, probability = 0.50},
        {type = item, name = sodium_angels,            amount_min = 0, amount_max = 1, probability = 0.50},
        {type = item, name = sodium_carbonate_angels,  amount_min = 0, amount_max = 2, probability = 0.50},
        {type = item, name = potassium,                amount_min = 0, amount_max = 4, probability = 0.50},
        {type = item, name = potassium_hydroxide,      amount_min = 0, amount_max = 1, probability = 0.50},
        -- ORGANICS
        --{type = item, name = collagen, amount_min = 0, amount_max = 1, probability = 0.25}
        -- WATER
        --{type = fluid, name = water, amount_min = 0, amount_max = 15, probability = 0.125}
        -- METALS
        {type = item, name = zinc_ore_bob,             amount_min = 0, amount_max = 1, probability = 0.015625},
        {type = item, name = copper_ore,               amount_min = 0, amount_max = 1, probability = 0.015625},
        {type = item, name = manganese_ore_angels,     amount_min = 0, amount_max = 1, probability = 0.015625},
        {type = item, name = silicon_ore_bob,          amount_min = 0, amount_max = 1, probability = 0.015625},
        {type = item, name = iron_ore,                 amount_min = 0, amount_max = 1, probability = 0.015625},
    }
    if mods[moshine_mods] then
        table.insert(data_recipe[bone_meal_sieving].results, {type = item, name = boron, amount_min = 0, amount_max = 1, probability = 0.015625})
    end

    data_item[flesh].subgroup = is_carnova_recipe
    data_item[flesh].order = c
    data_item[flesh].stack_size = 200
    TIMSABA.void.freezing_organics(flesh)

    data_recipe[flesh_reproduction].subgroup = is_carnova_recipe
    data_recipe[flesh_reproduction].icons = STONKS_I(stonks_png, flesh)
    data_recipe[flesh_reproduction].order = c_a
    data_recipe[flesh_reproduction].ingredients =
    {
        {type = item, name = nutrients, amount = 4},
        {type = item, name = flesh, amount = 2},
        {type = fluid, name = lymph, amount = 15}
    }
    data_recipe[flesh_reproduction].results =
    {
        {type = item, name = flesh, amount = 4},
        {type = fluid, name = dirty_lymph, amount = (15/2)}
    }

    local flesh_separation = "flesh-separation"
    data_recipe[flesh_separation].subgroup = is_carnova_recipe
    data_recipe[flesh_separation].icons = THREE_R_I(flesh, lipids, proteins)
    data_recipe[flesh_separation].order = f_a
    data_recipe[flesh_separation].ingredients =
    {
        {type = item, name = flesh, amount = 1},
        {type = fluid, name = lymph, amount = 15}
    }
    data_recipe[flesh_separation].results =
    {
        {type = item, name = lipids, amount = 2},
        {type = item, name = proteins, amount = 1},
        {type = fluid, name = dirty_lymph, amount = (15/2)}
    }

    data_fluid[lymph].subgroup = is_carnova_recipe
    data_fluid[lymph].order = d
    TIMSABA.barreling.add_simple_fluid(lymph)

    data_fluid[dirty_lymph].subgroup = is_carnova_recipe
    data_fluid[dirty_lymph].order = e
    TIMSABA.barreling.add_simple_fluid(dirty_lymph)

    local lymph_refining = "lymph-refining"
    data_recipe[lymph_refining].subgroup = is_carnova_recipe
    data_recipe[lymph_refining].icons = TWO_D_I(dirty_lymph, calcite, lymph, carbon_angels)
    data_recipe[lymph_refining].order = e_a
    data_recipe[lymph_refining].energy_required = 4
    data_recipe[lymph_refining].ingredients =
    {
        {type = fluid, name = dirty_lymph, amount = 120},
        {type = item, name = calcite, amount = 1}
    }
    data_recipe[lymph_refining].results =
    {
        {type = fluid, name = lymph, amount = 120},
        {type = item, name = carbon_angels, amount = 1}
    }

    data_fluid[blood].subgroup = is_carnova_recipe
    data_fluid[blood].order = f
    TIMSABA.barreling.add_simple_fluid(blood)

    local blood_separation = "blood-separation"
    data_recipe[blood_separation].subgroup = is_carnova_recipe
    data_recipe[blood_separation].icons = THREE_R_I(blood, nutrients, water)
    data_recipe[blood_separation].order = f_a
    data_recipe[blood_separation].ingredients =
    {
        {type = fluid, name = blood, amount = 240},
        {type = fluid, name = lymph, amount = 60}
    }
    data_recipe[blood_separation].results =
    {
        {type = item, name = nutrients, amount = 4},
        {type = fluid, name = water, amount = 120},
        {type = fluid, name = dirty_lymph, amount = 60}
    }

    data_item[lipids].subgroup = is_carnova_recipe
    data_item[lipids].order = g
    data_item[lipids].fuel_category = base_fuel
    data_item[lipids].fuel_value = 1800 .. kJ
    TIMSABA.void.freezing_organics(lipids)

    local nutrients_from_lipids = "nutrients-from-lipids"
    data_recipe[nutrients_from_lipids].subgroup = is_carnova_recipe
    data_recipe[nutrients_from_lipids].icons = TWO_I(lipids, nutrients)
    data_recipe[nutrients_from_lipids].order = g_a

    local carbon_fiber_carnova = "carbon-fiber-carnova"
    data_recipe[carbon_fiber_carnova].subgroup = is_carnova_recipe
    data_recipe[carbon_fiber_carnova].icons = BUILDING_R_I(carbon_fiber, planet_carnova)
    data_recipe[carbon_fiber_carnova].order = g_b
    data_recipe[carbon_fiber_carnova].energy_required = 4
    data_recipe[carbon_fiber_carnova].ingredients =
    {
        {type = item, name = carbon_angels, amount = 1},
        {type = item, name = lipids, amount = 4}
    }

    data_item[proteins].subgroup = is_carnova_recipe
    data_item[proteins].order = h
    TIMSABA.void.freezing_organics(proteins)

    local nutrients_from_proteins = "nutrients-from-proteins"
    data_recipe[nutrients_from_proteins].subgroup = is_carnova_recipe
    data_recipe[nutrients_from_proteins].icons = TWO_I(proteins, nutrients)
    data_recipe[nutrients_from_proteins].order = h_a
    data_recipe[nutrients_from_proteins].energy_required = 4
    data_recipe[nutrients_from_proteins].results[1].amount = 16

    data_item[piranha_roe].subgroup = is_carnova_recipe
    data_item[piranha_roe].order = i
    TIMSABA.void.freezing_organics(piranha_roe)

    data_recipe[roe_reproduction].subgroup = is_carnova_recipe
    data_recipe[roe_reproduction].icons = STONKS_I(stonks_png, piranha_roe)
    data_recipe[roe_reproduction].order = i_a
    data_recipe[roe_reproduction].ingredients =
    {
        {type = item, name = proteins, amount = 2},
        {type = item, name = piranha_roe, amount = 2},
        {type = fluid, name = blood, amount = 120}
    }
    data_recipe[roe_reproduction].results[1].amount = 4

    data_recipe[glycerine].localised_name = {"fluid-name." .. glycerol_angels}
    data_recipe[glycerine].subgroup = is_carnova_recipe
    data_recipe[glycerine].icons = THREE_I(lipids, water_purified_angels, glycerol_angels)
    data_recipe[glycerine].order = j
    data_recipe[glycerine].ingredients =
    {
        {type = item, name = lipids, amount = 8},
        {type = fluid, name = water_purified_angels, amount = 120}
    }
    data_recipe[glycerine].results[1].amount = 60

    local biolubricant_from_glycerine = "biolubricant-from-glycerine"
    data_recipe[biolubricant_from_glycerine].subgroup = is_carnova_recipe
    data_recipe[biolubricant_from_glycerine].icons = TWO_I(glycerol_angels, lubricant)
    data_recipe[biolubricant_from_glycerine].order = j_a
    data_recipe[biolubricant_from_glycerine].energy_required = 4 -- 8C₃H₈O₃ -bio-> C₄₀H₈₂
    data_recipe[biolubricant_from_glycerine].ingredients[1].amount = 120
    data_recipe[biolubricant_from_glycerine].results[1].amount = 15

    local solid_fuel_from_glycerine = "solid-fuel-from-glycerine"
    data_recipe[solid_fuel_from_glycerine].subgroup = is_carnova_recipe
    data_recipe[solid_fuel_from_glycerine].icons = THREE_I(carbon_angels, glycerol_angels, solid_fuel)
    data_recipe[solid_fuel_from_glycerine].order = j_b
    data_recipe[solid_fuel_from_glycerine].ingredients =
    {
        {type = item, name = carbon_angels, amount = 4},
        {type = fluid, name = glycerol_angels, amount = 30}
    }

    -- RECIPE
    local explosives_from_polysaccharides = "explosives-from-polysaccharides"
    data_recipe[explosives_from_polysaccharides].subgroup = is_apia_carnova_recipe
    data_recipe[explosives_from_polysaccharides].icons = THREE_D_I(white_phosphorus, polysaccharides, water_purified_angels, explosives)
    data_recipe[explosives_from_polysaccharides].order = a_a
    -- P₄ + 4(C₆H₁₀O₅)n + H₂O --> explosives
    data_recipe[explosives_from_polysaccharides].ingredients =
    {
        {type = item, name = white_phosphorus, amount = 1},
        {type = item, name = polysaccharides, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 15}
    }
    data_recipe[explosives_from_polysaccharides].results[1].amount = 2

    local explosives_from_nitroglycerine = "explosives-from-nitroglycerine"
    data_recipe[explosives_from_nitroglycerine].subgroup = is_apia_carnova_recipe
    data_recipe[explosives_from_nitroglycerine].icons = THREE_D_I(white_phosphorus, carbon_angels, glycerol_angels, explosives)
    data_recipe[explosives_from_nitroglycerine].order = a_b
    -- P₄ + 2C + 2C₃H₈O₃ --> explosives
    data_recipe[explosives_from_nitroglycerine].ingredients =
    {
        {type = item, name = white_phosphorus, amount = 1},
        {type = item, name = carbon_angels, amount = 2},
        {type = fluid, name = glycerol_angels, amount = 30}
    }
    data_recipe[explosives_from_nitroglycerine].results[1].amount = 4

    data_recipe[phosphoric_acid].localised_name = {"fluid-name." .. orthophosphoric_acid}
    data_recipe[phosphoric_acid].subgroup = is_apia_carnova_recipe
    data_recipe[phosphoric_acid].icons = THREE_D_I(white_phosphorus, water_purified_angels, oxygen_angels, orthophosphoric_acid, nil, hydrogen_angels)
    data_recipe[phosphoric_acid].order = b
    -- P₄(s) + 8H₂O(l) + 4O₂(g) --> 4H₃PO₄(l) + 2H₂(g)
    data_recipe[phosphoric_acid].ingredients =
    {
        {type = item, name = white_phosphorus, amount = 1},
        {type = fluid, name = water_purified_angels, amount = 120},
        {type = fluid, name = oxygen_angels, amount = 60}
    }
    data_recipe[phosphoric_acid].results =
    {
        {type = fluid, name = orthophosphoric_acid, amount = 120},
        {type = fluid, name = hydrogen_angels, amount = 30}
    }

    local rocket_fuel_from_phosphoric_acid = "rocket-fuel-from-phosphoric-acid"
    data_recipe[rocket_fuel_from_phosphoric_acid].subgroup = is_apia_carnova_recipe
    data_recipe[rocket_fuel_from_phosphoric_acid].icons = PLANET_D_IS(rocket_fuel, planet_apia, planet_carnova)
    data_recipe[rocket_fuel_from_phosphoric_acid].order = b_a
    data_recipe[rocket_fuel_from_phosphoric_acid].surface_conditions = {{property = pressure, min = 2525, max = 2525}}

    local bioplastic_from_wax = "bioplastic-from-wax"
    data_recipe[bioplastic_from_wax].subgroup = is_apia_carnova_recipe
    data_recipe[bioplastic_from_wax].icons = THREE_D_I(wax, steam, orthophosphoric_acid, plastic)
    data_recipe[bioplastic_from_wax].order = b_b
    data_recipe[bioplastic_from_wax].energy_required = 4
    data_recipe[bioplastic_from_wax].ingredients =
    {
        {type = item, name = wax, amount = 2},
        {type = fluid, name = steam, amount = 30},
        {type = fluid, name = orthophosphoric_acid, amount = 60}
    }
    data_recipe[bioplastic_from_wax].results[1].amount = 8

    local bioplastic_from_proteins = "bioplastic-from-proteins"
    data_recipe[bioplastic_from_proteins].subgroup = is_apia_carnova_recipe
    data_recipe[bioplastic_from_proteins].icons = FOUR_I(lipids, orthophosphoric_acid, proteins, plastic)
    data_recipe[bioplastic_from_proteins].order = b_c
    data_recipe[bioplastic_from_proteins].energy_required = 4
    data_recipe[bioplastic_from_proteins].ingredients =
    {
        {type = item, name = lipids, amount = 2},
        {type = item, name = proteins, amount = 4},
        {type = fluid, name = orthophosphoric_acid, amount = 60}
    }
    data_recipe[bioplastic_from_proteins].results[1].amount = 8

    data_tool[apicultural_science_pack].subgroup = is_apia_carnova_recipe
    data_tool[apicultural_science_pack].order = c
    data_recipe[apicultural_science_pack].subgroup = is_apia_carnova_recipe
    data_recipe[apicultural_science_pack].order = c
    data_recipe[apicultural_science_pack].energy_required = 8
    data_recipe[apicultural_science_pack].ingredients =
    {
        {type = item, name = wax, amount = 8},
        {type = item, name = polysaccharides, amount = 2},
        {type = item, name = piranha_roe, amount = 1},
        {type = fluid, name = glycerol_angels, amount = 30},
        {type = fluid, name = lymph, amount = 30}
    }
    data_recipe[apicultural_science_pack].results =
    {
        {type = item, name = apicultural_science_pack, amount = 1},
        {type = fluid, name = dirty_lymph, amount = 15}
    }

    data_item[wax_platform].subgroup = is_apia_carnova_recipe
    data_item[wax_platform].order = d
    data_recipe[wax_platform].subgroup = is_apia_carnova_recipe
    data_recipe[wax_platform].order = d
    data_recipe[wax_platform].ingredients =
    {
        {type = item, name = wax, amount = 64},
        {type = fluid, name = royal_jelly, amount = 480}
    }

    -- BUILDING
    data_item[biosynthesizer].subgroup = is_apia_carnova_building
    data_item[biosynthesizer].order = a
    data_item[biosynthesizer].stack_size = 32
    data_item[biosynthesizer].weight = 31250
    data_assembling[biosynthesizer].subgroup = is_apia_carnova_building
    data_assembling[biosynthesizer].order = a
    data_assembling[biosynthesizer].module_slots = 8
    data_assembling[biosynthesizer].energy_source.emissions_per_minute.pollution = -4
    data_assembling[biosynthesizer].energy_usage = 900 .. kW

    local biosynthesizer_apia = "biosynthesizer-apia"
    data_recipe[biosynthesizer_apia].subgroup = is_apia_carnova_building
    data_recipe[biosynthesizer_apia].order = a_a
    data_recipe[biosynthesizer_apia].energy_required = 16
    data_recipe[biosynthesizer_apia].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = raw_larvae, amount = 64},
        {type = item, name = landfill, amount = 2},
        {type = item, name = nitinol_plate_bob, amount = 16},
        {type = item, name = nutrients, amount = 8}
    }

    local biosynthesizer_carnova = "biosynthesizer-carnova"
    data_recipe[biosynthesizer_carnova].subgroup = is_apia_carnova_building
    data_recipe[biosynthesizer_carnova].order = a_b
    data_recipe[biosynthesizer_carnova].energy_required = 16
    data_recipe[biosynthesizer_carnova].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = piranha_roe, amount = 2},
        {type = item, name = landfill, amount = 2},
        {type = item, name = nitinol_plate_bob, amount = 16},
        {type = item, name = nutrients, amount = 8}
    }

    data_item[artificial_hive].subgroup = is_apia_carnova_building
    data_item[artificial_hive].order = b
    data_item[artificial_hive].stack_size = 1
    data_item[artificial_hive].weight = 1000000
    data_recipe[artificial_hive].subgroup = is_apia_carnova_building
    data_recipe[artificial_hive].order = b
    data_recipe[artificial_hive].energy_required = 16
    data_recipe[artificial_hive].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 4},
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = honeycombs, amount = 32},
        {type = item, name = wax, amount = 128},
        {type = fluid, name = lubricant, amount = 120}
    }
    data_assembling[artificial_hive].subgroup = is_apia_carnova_building
    data_assembling[artificial_hive].order = b
    data_assembling[artificial_hive].energy_usage = 225 .. kW

    bobmods.lib.recipe.update_recycling_recipe({wax_platform, artificial_hive})

    -- TECHNOLOGY
    local planet_discovery_apia_carnova = "planet-discovery-apia-carnova"
    data_technology[planet_discovery_apia_carnova].prerequisites = {tech_advanced_asteroid_processing}
    if mods[muluna_mods] then
        table.insert(data_technology[planet_discovery_apia_carnova].prerequisites, interstellar_science_pack)
    end
    table.insert(data_technology[planet_discovery_apia_carnova].effects, {type = unlock_recipe, recipe = hydrogen_apia_carnova})
    table.insert(data_technology[planet_discovery_apia_carnova].effects, {type = unlock_recipe, recipe = nitrogen_apia_carnova})
    table.insert(data_technology[planet_discovery_apia_carnova].effects, {type = unlock_recipe, recipe = oxygen_apia_carnova})
    data_technology[planet_discovery_apia_carnova].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    local agriculture = "agriculture"
    data_technology[agriculture .. _productivity].effects =
    {
        {type = change_recipe_productivity, recipe = jellynut_processing, change = 0.1},
        {type = change_recipe_productivity, recipe = yumako_processing, change = 0.1}
    }
    local function add_recipe_for_agriculture(recipe)
        table.insert(data_technology[agriculture .. _productivity].effects, {type = change_recipe_productivity, recipe = recipe, change = 0.1})
    end
    if mods[tellus_mods] then
        add_recipe_for_agriculture(cactus_mash)
        add_recipe_for_agriculture(chloroplast_processing)
        add_recipe_for_agriculture(mycelia_processing)
    end
    if mods[pelagos_mods] then
        add_recipe_for_agriculture(coconut_processing)
    end
    data_technology[agriculture .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[biter_egg .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology["bone" .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[carbon_fiber .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[flesh .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology["honeycomb-processing" .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology[lubricant .. _productivity].effects = {{type = change_recipe_productivity, recipe = biolubricant, change = 0.1}}
    local function add_recipe_for_lubricant(recipe)
        table.insert(data_technology[lubricant .. _productivity].effects, {type = change_recipe_productivity, recipe = recipe, change = 0.1})
    end
    if mods[panglia_mods] then
        add_recipe_for_lubricant(branbalite_slurry_to_lubricant)
    end
    if mods[tellus_mods] then
        add_recipe_for_lubricant(chloroplast_lubricant)
    end
    if mods[pelagos_mods] then
        add_recipe_for_lubricant(lubricant_from_coconut_oil)
    end
    add_recipe_for_lubricant(biolubricant_from_royal_jelly)
    add_recipe_for_lubricant(biolubricant_from_glycerine)
    data_technology[lubricant .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    tech_refreshment = "refreshment"
    data_technology[tech_refreshment].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }
end