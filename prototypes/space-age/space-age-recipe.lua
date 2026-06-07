-- METALLIC
metallic_asteroid_crushing_2 = "metallic-asteroid-crushing-2" -- Copper ore
metallic_asteroid_crushing_3 = "metallic-asteroid-crushing-3" -- Lead ore
metallic_asteroid_crushing_4 = "metallic-asteroid-crushing-4" -- Tin ore
metallic_asteroid_crushing_5 = "metallic-asteroid-crushing-5" -- Manganese ore
metallic_asteroid_crushing_6 = "metallic-asteroid-crushing-6" -- Magnesium ore
advanced_metallic_asteroid_crushing_2 = "advanced-metallic-asteroid-crushing-2" -- Aluminium ore
advanced_metallic_asteroid_crushing_3 = "advanced-metallic-asteroid-crushing-3" -- Zinc ore
advanced_metallic_asteroid_crushing_4 = "advanced-metallic-asteroid-crushing-4" -- Silver ore
full_metallic_asteroid_crushing_1 = "full-metallic-asteroid-crushing-1" -- Titanium ore
full_metallic_asteroid_crushing_2 = "full-metallic-asteroid-crushing-2" -- Gold ore
full_metallic_asteroid_crushing_3 = "full-metallic-asteroid-crushing-3" -- Cobalt ore
full_metallic_asteroid_crushing_4 = "full-metallic-asteroid-crushing-4" -- Uranium ore
full_metallic_asteroid_crushing_5 = "full-metallic-asteroid-crushing-5" -- Thorium ore
full_metallic_asteroid_crushing_6 = "full-metallic-asteroid-crushing-6" -- Tungsten ore
full_metallic_asteroid_crushing_7 = "full-metallic-asteroid-crushing-7" -- Tungsten ore
full_metallic_asteroid_crushing_8 = "full-metallic-asteroid-crushing-8" -- Platinum ore
advanced_full_metallic_asteroid_crushing_1 = "advanced-full-metallic-asteroid-crushing-1" -- Molybdenum ore
advanced_full_metallic_asteroid_crushing_2 = "advanced-full-metallic-asteroid-crushing-2" -- Rhenium ore
advanced_full_metallic_asteroid_crushing_3 = "advanced-full-metallic-asteroid-crushing-3" -- Holmium ore
advanced_full_metallic_asteroid_crushing_4 = "advanced-full-metallic-asteroid-crushing-4" -- Niobium ore
advanced_full_metallic_asteroid_crushing_5 = "advanced-full-metallic-asteroid-crushing-5" -- Antimony ore
advanced_full_metallic_asteroid_crushing_6 = "advanced-full-metallic-asteroid-crushing-6" -- Germanium ore
advanced_full_metallic_asteroid_crushing_7 = "advanced-full-metallic-asteroid-crushing-7" -- Galium ore
advanced_full_metallic_asteroid_crushing_8 = "advanced-full-metallic-asteroid-crushing-8" -- Vanadium ore
data:extend
({
    {
        type = recipe,
        name = metallic_asteroid_crushing_2,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, copper_ore),
        order = e_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = copper_ore, amount = 8}},
        main_product = copper_ore
    },
    {
        type = recipe,
        name = metallic_asteroid_crushing_3,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, lead_ore_bob),
        order = e_c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = lead_ore_bob, amount = 8}},
        main_product = lead_ore_bob
    },
    {
        type = recipe,
        name = metallic_asteroid_crushing_4,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, tin_ore_bob),
        order = e_d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = tin_ore_bob, amount = 8}},
        main_product = tin_ore_bob
    },
    {
        type = recipe,
        name = metallic_asteroid_crushing_5,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, manganese_ore_angels),
        order = e_e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = manganese_ore_angels, amount = 8}},
        main_product = manganese_ore_angels
    },
    {
        type = recipe,
        name = metallic_asteroid_crushing_6,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, magnesium_ore),
        order = e_f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = magnesium_ore, amount = 8}},
        main_product = magnesium_ore
    },
    {
        type = recipe,
        name = advanced_metallic_asteroid_crushing_2,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, aluminium_ore_bob),
        order = f_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = aluminium_ore_bob, amount = 8}},
        main_product = aluminium_ore_bob
    },
    {
        type = recipe,
        name = advanced_metallic_asteroid_crushing_3,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, zinc_ore_bob),
        order = f_c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = zinc_ore_bob, amount = 8}},
        main_product = zinc_ore_bob
    },
    {
        type = recipe,
        name = advanced_metallic_asteroid_crushing_4,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, silver_ore_bob),
        order = f_d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = silver_ore_bob, amount = 8}},
        main_product = silver_ore_bob
    },
    {
        type = recipe,
        name = full_metallic_asteroid_crushing_1,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, titanium_ore_bob),
        order = g_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = titanium_ore_bob, amount = 8}},
        main_product = titanium_ore_bob
    },
    {
        type = recipe,
        name = full_metallic_asteroid_crushing_2,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, gold_ore_bob),
        order = g_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = gold_ore_bob, amount = 8}},
        main_product = gold_ore_bob
    },
    {
        type = recipe,
        name = full_metallic_asteroid_crushing_3,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, cobalt_ore_bob),
        order = g_c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = cobalt_ore_bob, amount = 8}},
        main_product = cobalt_ore_bob
    },
    {
        type = recipe,
        name = full_metallic_asteroid_crushing_4,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, uranium_ore),
        order = g_d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = uranium_ore, amount = 8}},
        main_product = uranium_ore
    },
    {
        type = recipe,
        name = full_metallic_asteroid_crushing_5,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, thorium_ore_bob),
        order = g_e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = thorium_ore_bob, amount = 8}},
        main_product = thorium_ore_bob
    },
    {
        type = recipe,
        name = full_metallic_asteroid_crushing_6,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, chromium_ore_angels),
        order = g_f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = chromium_ore_angels, amount = 8}},
        main_product = chromium_ore_angels
    },
    {
        type = recipe,
        name = full_metallic_asteroid_crushing_7,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, tungsten_ore_bob),
        order = g_g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = tungsten_ore_bob, amount = 8}},
        main_product = tungsten_ore_bob
    },
    {
        type = recipe,
        name = full_metallic_asteroid_crushing_8,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, platinum_ore_angels),
        order = g_h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = platinum_ore_angels, amount = 8}},
        main_product = platinum_ore_angels
    },
    {
        type = recipe,
        name = advanced_full_metallic_asteroid_crushing_1,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, molybdenum_ore),
        order = h_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = molybdenum_ore, amount = 8}},
        main_product = molybdenum_ore
    },
    {
        type = recipe,
        name = advanced_full_metallic_asteroid_crushing_2,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, rhenium_ore),
        order = h_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = rhenium_ore, amount = 8}},
        main_product = rhenium_ore
    },
    {
        type = recipe,
        name = advanced_full_metallic_asteroid_crushing_3,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, holmium_ore),
        order = h_c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = holmium_ore, amount = 8}},
        main_product = holmium_ore
    },
    {
        type = recipe,
        name = advanced_full_metallic_asteroid_crushing_4,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, niobium_ore),
        order = h_d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = niobium_ore, amount = 8}},
        main_product = niobium_ore
    },
    {
        type = recipe,
        name = advanced_full_metallic_asteroid_crushing_5,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, antimony_ore),
        order = h_e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = antimony_ore, amount = 8}},
        main_product = antimony_ore
    },
    {
        type = recipe,
        name = advanced_full_metallic_asteroid_crushing_6,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, germanium_ore),
        order = h_f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = germanium_ore, amount = 8}},
        main_product = germanium_ore
    },
    {
        type = recipe,
        name = advanced_full_metallic_asteroid_crushing_7,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, galium_ore),
        order = h_g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = galium_ore, amount = 8}},
        main_product = galium_ore
    },
    {
        type = recipe,
        name = advanced_full_metallic_asteroid_crushing_8,
        category = crushing,
        subgroup = is_space_environment_1,
        icons = TWO_I(metallic_asteroid_chunk, vanadium_ore),
        order = h_h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = metallic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = vanadium_ore, amount = 8}},
        main_product = vanadium_ore
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
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = ,
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]

-- CARBONIC
advanced_carbonic_asteroid_crushing_2 = "advanced-carbonic-asteroid-crushing-2"
data:extend
({
    {
        type = recipe,
        name = advanced_carbonic_asteroid_crushing_2,
        category = crushing,
        subgroup = is_space_environment_2,
        icons = TWO_I(carbonic_asteroid_chunk, calcite),
        order = f_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = carbonic_asteroid_chunk, amount = 1}},
        results = {{type = item, name = calcite, amount = 8}},
        main_product = calcite
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
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = ,
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]

-- OXIDE
oxide_asteroid_crushing_2 = "oxide-asteroid-crushing-2"
oxide_asteroid_crushing_3 = "oxide-asteroid-crushing-3"
advanced_oxide_asteroid_crushing_2 = "advanced-oxide-asteroid-crushing-2"
full_oxide_asteroid_crushing_1 = "full-oxide-asteroid-crushing-1"
full_oxide_asteroid_crushing_2 = "full-oxide-asteroid-crushing-2"
data:extend
({
    {
        type = recipe,
        name = oxide_asteroid_crushing_2,
        category = chemistry,
        subgroup = is_space_environment_3,
        icons = TWO_I(oxide_asteroid_chunk, nitrogen_oxide),
        order = e_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = oxide_asteroid_chunk, amount = 1},
            --{type = item, name = catalyst_red, amount = 1}
        },
        results =
        {
            {type = fluid, name = nitrogen_oxide, amount = 120},
            --{type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1}
        },
        main_product = nitrogen_oxide
    },
    {
        type = recipe,
        name = oxide_asteroid_crushing_3,
        category = chemistry,
        subgroup = is_space_environment_3,
        icons = TWO_I(oxide_asteroid_chunk, chlorine_oxide_gas),
        order = e_c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = oxide_asteroid_chunk, amount = 1},
            --{type = item, name = catalyst_red, amount = 1}
        },
        results =
        {
            {type = fluid, name = chlorine_oxide_gas, amount = 120},
            --{type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1}
        },
        main_product = chlorine_oxide_gas
    },
    {
        type = recipe,
        name = advanced_oxide_asteroid_crushing_2,
        category = chemistry,
        subgroup = is_space_environment_3,
        icons = TWO_I(oxide_asteroid_chunk, nitrogen_dioxide_angels),
        order = f_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = oxide_asteroid_chunk, amount = 1},
            --{type = item, name = catalyst_green, amount = 1}
        },
        results =
        {
            {type = fluid, name = nitrogen_dioxide_angels, amount = 120},
            --{type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1}
        },
        main_product = nitrogen_dioxide_angels
    },
    {
        type = recipe,
        name = full_oxide_asteroid_crushing_1,
        category = crushing,
        subgroup = is_space_environment_3,
        icons = TWO_I(oxide_asteroid_chunk, lithium_oxide),
        order = g_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = oxide_asteroid_chunk, amount = 1}},
        results = {{type = item, name = lithium_oxide, amount = 8}},
        main_product = lithium_oxide
    },
    {
        type = recipe,
        name = full_oxide_asteroid_crushing_2,
        category = chemistry,
        subgroup = is_space_environment_3,
        icons = TWO_I(oxide_asteroid_chunk, oxygen_fluoride_gas),
        order = g_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = item, name = oxide_asteroid_chunk, amount = 1}},
        results = {{type = fluid, name = oxygen_fluoride_gas, amount = 120}},
        main_product = oxygen_fluoride_gas
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
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = ,
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]

-- SPACE PROCESSING
nitrogen_oxide_separation = "nitrogen-oxide-gas-separation"
chlorine_oxide_separation = "chlorine-oxide-gas-separation"
nitrogen_monoxide_space = "nitrogen-monoxide-gas-space"
hydrazine_space = "hydrazine-liquid-space"
dinitrogen_tetroxide_space = "dinitrogen-tetroxide-gas-space"
oxygen_fluoride_space = "oxygen-fluoride-gas-space"
fluoroketone_liquid = "fluoroketone-liquid"
data:extend
({
    {
        type = recipe,
        name = nitrogen_oxide_separation,
        category = chemistry,
        subgroup = is_space_processing,
        icons = THREE_R_I(nitrogen_oxide, nitrogen_angels, oxygen_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- 2N₂O --> 2N₂ + O₂
        ingredients =
        {
            {type = fluid, name = nitrogen_oxide, amount = 60},
        },
        results =
        {
            {type = fluid, name = nitrogen_angels, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 30}
        },
        main_product = nitrogen_angels
    },
    {
        type = recipe,
        name = chlorine_oxide_separation,
        category = chemistry,
        subgroup = is_space_processing,
        icons = THREE_R_I(chlorine_oxide_gas, chlorine_angels, oxygen_angels),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- 2Cl₂O --> 2Cl₂ + O₂
        ingredients = {{type = fluid, name = chlorine_oxide_gas, amount = 60}},
        results =
        {
            {type = fluid, name = chlorine_angels, amount = 60},
            {type = fluid, name = oxygen_angels, amount = 30}
        },
        main_product = chlorine_angels
    },
    {
        type = recipe,
        name = nitrogen_monoxide_space,
        category = chemistry,
        subgroup = is_space_processing,
        icons = BUILDING_R_I(nitrogen_monoxide_angels, space_platform),
        order = e,
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
            {type = item, name = catalyst_red, amount = 1}
        },
        results =
        {
            {type = fluid, name = nitrogen_monoxide_angels, amount = 15}, -- 60
            {type = fluid, name = steam, amount = 30}, -- 90
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = nitrogen_monoxide_angels,
        surface_conditions = {{property = gravity, min = 0, max = 0}}
    },
    {
        type = recipe,
        name = hydrazine_space,
        category = chemistry,
        subgroup = is_space_processing,
        icons = BUILDING_R_I(hydrazine_angels, space_platform),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- NH₂Cl + NH₃ -cat-> N₂H₄ + HCl
        ingredients =
        {
            {type = fluid, name = monochloramine_angels, amount = 60},
            {type = fluid, name = ammonia_angels, amount = 60},
            {type = item, name = catalyst_red, amount = 1}
        },
        results =
        {
            {type = fluid, name = hydrazine_angels, amount = 30}, -- 60
            {type = fluid, name = hydrogen_chloride_angels, amount = 30}, -- 60
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = hydrazine_angels,
        surface_conditions = {{property = gravity, min = 0, max = 0}}
    },
    {
        type = recipe,
        name = dinitrogen_tetroxide_space,
        category = chemistry,
        subgroup = is_space_processing,
        icons = BUILDING_R_I(nitrogen_dioxide_angels, space_platform),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- 2NO₂ -cat-> N₂O₄
        ingredients =
        {
            {type = fluid, name = nitrogen_dioxide_angels, amount = 60},
            {type = item, name = catalyst_red, amount = 1}
        },
        results =
        {
            {type = fluid, name = dinitrogen_tetroxide_angels, amount = 15}, -- 30
            {type = item, name = catalyst_carrier, amount = 1}
        },
        main_product = dinitrogen_tetroxide_angels,
        surface_conditions = {{property = gravity, min = 0, max = 0}}
    },
    {
        type = recipe,
        name = oxygen_fluoride_space,
        category = cryogenics,
        subgroup = is_space_processing,
        icons = BUILDING_R_I(oxygen_fluoride_gas, space_platform),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- 2F₂ + O₂ --> OF₂
        ingredients =
        {
            {type = fluid, name = fluorine, amount = 120},
            {type = fluid, name = oxygen_angels, amount = 60}
        },
        results = {{type = fluid, name = oxygen_fluoride_gas, amount = 60}},
        main_product = oxygen_fluoride_gas,
        surface_conditions = {{property = pressure, min = 0, max = 0}}
    },
    {
        type = recipe,
        name = fluoroketone_liquid,
        category = cryogenics,
        subgroup = is_space_processing,
        icons = BUILDING_R_I(fluoroketone_hot, space_platform),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2C₃F₆ + OF₂ --> C₆F₁₂O + F₂
        ingredients =
        {
            {type = fluid, name = hexafluoropropylene_gas, amount = 120},
            {type = fluid, name = oxygen_fluoride_gas, amount = 60}
        },
        results =
        {
            {type = fluid, name = fluoroketone_hot, amount = 60},
            {type = fluid, name = fluorine, amount = 30} -- 60
        },
        main_product = fluoroketone_hot,
        surface_conditions = {{property = "pressure", min = 0, max = 0}}
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
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = ,
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]

-- SPACE PROCESSING 2
lime_space = "lime-space"
sodium_hydroxide_space = "sodium-hydroxide-space"
lithium_space = "lithium-space"
data:extend
({
    {
        type = recipe,
        name = lime_space,
        category = angels_blast_smelting_4,
        subgroup = is_space_processing_2,
        icons = THREE_R_I(calcite, lime_angels, carbon_dioxide_angels),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- CaCO₃ --> CaO + CO₂
        ingredients = {{type = item, name = calcite, amount = 16}},
        results =
        {
            {type = item, name = lime_angels, amount = 16},
            {type = fluid, name = carbon_dioxide_angels, amount = 120} -- 240
        },
        main_product = lime_angels
    },
    {
        type = recipe,
        name = sodium_hydroxide_space,
        category = chemistry,
        subgroup = is_space_processing_2,
        icons = THREE_I(sodium_oxide, water_purified_angels, sodium_hydroxide_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4, -- Na₂O + H₂O --> 2NaOH 
        ingredients =
        {
            {type = item, name = sodium_oxide, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results = {{type = item, name = sodium_hydroxide_angels, amount = 8}},
        main_product = sodium_hydroxide_angels
    },
    {
        type = recipe,
        name = lithium_space,
        category = angels_chemical_smelting_4,
        subgroup = is_space_processing_2,
        icons = TWO_D_I(lithium_oxide, silicon_powder, lithium_bob, silicon_oxide_IV),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 8, -- 2Li₂O + Si -electrolys-> 4Li + SiO₂
        ingredients =
        {
            {type = item, name = lithium_oxide, amount = 16},
            {type = item, name = silicon_powder, amount = 8}
        },
        results =
        {
            {type = item, name = lithium_bob, amount = 32},
            {type = item, name = silicon_oxide_IV, amount = 4} -- 8
        },
        main_product = lithium_bob
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
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = ,
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]