if mods[shchierbin_mods] then
    -- VANADIUM
    vanadium_oxide_V_2 = "vanadium-oxide-V-2"
    vanadium_oxide_V_3 = "vanadium-oxide-V-3"
    TIMSABA.functions.create_recipes
    ({
        {
            name = vanadium_processed,
            category = angels_processed_pressing_4,
            subgroup = is_shchierbin_vanadium,
            icons = TWO_I(vanadium_ore, vanadium_processed),
            order = b,
            energy_required = 2,
            ingredients = {{type = item, name = vanadium_ore, amount = 4}},
            results = {{type = item, name = vanadium_processed, amount = 4}},
            main_product = vanadium_processed
        },
        {
            name = vanadium_pellet,
            category = angels_pellet_pressing_4,
            subgroup = is_shchierbin_vanadium,
            icons = TWO_I(vanadium_processed, vanadium_pellet),
            order = c,
            energy_required = 2,
            ingredients = {{type = item, name = vanadium_processed, amount = 4}},
            results = {{type = item, name = vanadium_pellet, amount = 4}},
            main_product = vanadium_pellet
        },
        {
            name = vanadium_ingot,
            category = angels_blast_smelting_4,
            subgroup = is_shchierbin_vanadium,
            icons = TWO_D_I(vanadium_oxide_V, calcium, vanadium_ingot, lime_angels),
            order = d,
            energy_required = 8, -- V₂O₅ + 5Ca --> 2V + 5CaO
            ingredients =
            {
                {type = item, name = vanadium_oxide_V, amount = 8},
                {type = item, name = calcium, amount = 40}
            },
            results =
            {
                {type = item, name = vanadium_ingot, amount = 16},
                {type = item, name = lime_angels, amount = 8} -- 40
            },
            main_product = vanadium_ingot
        },
        {
            name = vanadium_powder,
            category = powderizing_4,
            subgroup = is_shchierbin_vanadium,
            icons = TWO_I(vanadium_ingot, vanadium_powder),
            order = e,
            energy_required = 0.5,
            ingredients = {{type = item, name = vanadium_ingot, amount = 1}},
            results = {{type = item, name = vanadium_powder, amount = 1}},
            main_product = vanadium_powder
        },
        -- CHEMISTRY
        {
            localised_name = {"item-name." .. vanadium_oxide_V},
            name = vanadium_oxide_V_2,
            category = angels_chemical_smelting_4,
            subgroup = is_shchierbin_vanadium_chemistry,
            icons = THREE_D_I(dioxovanadium_nitrate_V, nil, nil, vanadium_oxide_V, nitrogen_dioxide_angels, oxygen_angels),
            order = a_a,
            energy_required = 8, -- 4VO₂NO₃(s) --> 2V₂O₅(s) + 4NO₂(g) + O₂(g)
            ingredients = {{type = item, name = dioxovanadium_nitrate_V, amount = 16}},
            results =
            {
                {type = item, name = vanadium_oxide_V, amount = 8},
                {type = fluid, name = nitrogen_dioxide_angels, amount = 120}, -- 240
                {type = fluid, name = oxygen_angels, amount = 30} -- 60
            },
            main_product = vanadium_oxide_V
        },
        {
            localised_name = {"item-name." .. vanadium_oxide_V},
            name = vanadium_oxide_V_3,
            category = angels_chemical_smelting_4,
            subgroup = is_shchierbin_vanadium_chemistry,
            icons = THREE_D_I(ammonium_metavanadate, nil, oxygen_angels, vanadium_oxide_V, nitrogen_angels, steam),
            order = a_b,
            energy_required = 8, -- 4NH₄VO₃(s) + 3O₂(g) --> 2V₂O₅(s) + 2N₂(g) + 8H₂O(g)
            ingredients =
            {
                {type = item, name = ammonium_metavanadate, amount = 16},
                {type = fluid, name = oxygen_angels, amount = 180}
            },
            results =
            {
                {type = item, name = vanadium_oxide_V, amount = 8},
                {type = fluid, name = nitrogen_angels, amount = 60}, -- 120
                {type = fluid, name = steam, amount = 240} -- 480
            },
            main_product = vanadium_oxide_V
        },
        {
            name = dioxovanadium_nitrate_V,
            category = angels_chemical_smelting_4,
            subgroup = is_shchierbin_vanadium_chemistry,
            icons = THREE_D_I(vanadium_processed, nil, nitric_acid_angels, dioxovanadium_nitrate_V, nitrogen_dioxide_angels, oxygen_angels),
            order = b,
            -- V(processed) + 6HNO₃(l) --> VO₂NO₃(s) + 5NO₂(g) + O₂(g)
            ingredients =
            {
                {type = item, name = vanadium_processed, amount = 8},
                {type = fluid, name = nitric_acid_angels, amount = 720}
            },
            results =
            {
                {type = item, name = dioxovanadium_nitrate_V, amount = 8},
                {type = fluid, name = nitrogen_dioxide_angels, amount = 120}, -- 600
                {type = fluid, name = steam, amount = 60} -- 120
            },
            main_product = dioxovanadium_nitrate_V
        },
        {
            name = vanadium_sulfate_IV_solution,
            category = angels_advanced_chemistry,
            subgroup = is_shchierbin_vanadium_chemistry,
            icons = THREE_D_I(vanadium_pellet, nil, sulfuric_acid_angels, vanadium_sulfate_IV_solution, sulfur_dioxide_angels, water_purified_angels),
            order = c,
            energy_required = 8, -- V(pellet) + 3H₂SO₄(l) --> VOSO₄(aq) + 2SO₂(g) + 2H₂O(l)
            ingredients =
            {
                {type = item, name = vanadium_pellet, amount = 8},
                {type = fluid, name = sulfuric_acid_angels, amount = 720}
            },
            results =
            {
                {type = fluid, name = vanadium_sulfate_IV_solution, amount = 240},
                {type = fluid, name = sulfur_dioxide_angels, amount = 240}, -- 480
                {type = fluid, name = water_purified_angels, amount = 240} -- 480
            },
            main_product = vanadium_sulfate_IV_solution
        },
        {
            name = ammonium_metavanadate,
            category = angels_advanced_chemistry,
            subgroup = is_shchierbin_vanadium_chemistry,
            icons = THREE_D_I(vanadium_sulfate_IV_solution, hydrogen_peroxide, ammonia_solution, ammonium_metavanadate, ammonium_sulfate_solution, water_purified_angels),
            order = d,
            energy_required = 8, -- 2VOSO₄(aq) + H₂O₂(l) + 6NH₃(aq) --> 2NH₄VO₃(s) + 2(NH₄)₂SO₄(aq) + 4H₂O(l)
            ingredients =
            {
                {type = fluid, name = vanadium_sulfate_IV_solution, amount = 240},
                {type = fluid, name = hydrogen_peroxide, amount = 120},
                {type = fluid, name = ammonia_solution, amount = 720}
            },
            results =
            {
                {type = item, name = ammonium_metavanadate, amount = 16},
                {type = fluid, name = ammonium_sulfate_solution, amount = 120}, -- 240
                {type = fluid, name = water_purified_angels, amount = 240} -- 480
            },
            main_product = ammonium_metavanadate
        },
        -- CASTING
        {
            name = vanadium_molten,
            category = angels_induction_smelting_4,
            subgroup = is_shchierbin_vanadium_casting,
            icons = TWO_I(vanadium_ingot, vanadium_molten),
            order = a,
            energy_required = 8,
            ingredients = {{type = item, name = vanadium_ingot, amount = 16}},
            results = {{type = fluid, name = vanadium_molten, amount = 240}},
            main_product = vanadium_molten
        },
        -- CASTING Fe-V
        -- CASTING FeC-V
        {
            name = vanadium_steel_molten,
            category = metallurgy,
            subgroup = is_shchierbin_vanadium_steel,
            icons = THREE_I(steel_molten_angels, vanadium_molten, vanadium_steel_molten),
            order = a,
            allow_productivity = true,
            energy_required = 8, -- Steel molten + Vanadium molten --> Vanadium-steel molten
            ingredients =
            {
                {type = fluid, name = steel_molten_angels, amount = 240},
                {type = fluid, name = vanadium_molten, amount = 240}
            },
            results = {{type = fluid, name = vanadium_steel_molten, amount = 240}},
            main_product = vanadium_steel_molten
        },
        {
            name = vanadium_steel_gear_wheel,
            category = metallurgy,
            subgroup = is_shchierbin_vanadium_steel,
            icons = TWO_I(vanadium_steel_molten, vanadium_steel_gear_wheel),
            order = c,
            auto_recycle = true,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients = {{type = fluid, name = vanadium_steel_molten, amount = 15}},
            results = {{type = item, name = vanadium_steel_gear_wheel, amount = 1}},
            main_product = vanadium_steel_gear_wheel
        },
        {
            name = vanadium_steel_bearing_ball,
            category = metallurgy,
            subgroup = is_shchierbin_vanadium_steel,
            icons = TWO_I(vanadium_steel_molten, vanadium_steel_bearing_ball),
            order = d,
            auto_recycle = true,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients = {{type = fluid, name = vanadium_steel_molten, amount = 15}},
            results = {{type = item, name = vanadium_steel_bearing_ball, amount = 8}},
            main_product = vanadium_steel_bearing_ball
        },
        {
            name = vanadium_steel_bearing,
            category = metallurgy,
            subgroup = is_shchierbin_vanadium_steel,
            icons = B_F_L(lubricant, vanadium_steel_bearing_ball, vanadium_steel_molten, vanadium_steel_bearing),
            order = e,
            auto_recycle = true,
            allow_productivity = true,
            allow_quality = true,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = vanadium_steel_bearing_ball, amount = 16},
                {type = fluid, name = vanadium_steel_molten, amount = 30},
                {type = fluid, name = lubricant, amount = 15}
            },
            results = {{type = item, name = vanadium_steel_bearing, amount = 2}},
            main_product = vanadium_steel_bearing
        },
        -- CASTING Ti-Al-V
        {
            name = titanium_aluminium_vanadium_molten,
            category = metallurgy,
            subgroup = is_shchierbin_titanium_aluminium_vanadium,
            icons = THREE_D_I(vanadium_ingot, aluminium_molten_angels, titanium_molten_angels, titanium_aluminium_vanadium_molten),
            order = a,
            allow_productivity = true,
            energy_required = 8, -- Vanadium ingot + Aluminium molten + Titanium molten --> Titanium-aluminium-vanadium molten
            ingredients =
            {
                {type = item, name = vanadium_ingot, amount = 16},
                {type = fluid, name = aluminium_molten_angels, amount = 240},
                {type = fluid, name = titanium_molten_angels, amount = 240}
            },
            results = {{type = fluid, name = titanium_aluminium_vanadium_molten, amount = 240}},
            main_product = titanium_aluminium_vanadium_molten
        },
        {
            name = titanium_aluminium_vanadium_plate,
            category = metallurgy,
            subgroup = is_shchierbin_titanium_aluminium_vanadium,
            icons = TWO_I(titanium_aluminium_vanadium_molten, titanium_aluminium_vanadium_plate),
            order = b,
            allow_productivity = true,
            allow_quality = true,
            ingredients = {{type = fluid, name = titanium_aluminium_vanadium_molten, amount = 60}},
            results = {{type = item, name = titanium_aluminium_vanadium_plate, amount = 4}},
            main_product = titanium_aluminium_vanadium_plate
        }
        -- CASTING V-Cr-Ti
    })

    data_recipe[vanadium_powder].hidden = true
    data_recipe[vanadium_powder].hidden_in_factoriopedia = true
end