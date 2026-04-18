local recipe = "recipe"
-- LAVA
lava_alt = "lava-alt"
jivolite_from_lava = "jivolite-from-lava"
crotinnium_from_lava = "crotinnium-from-lava"
rubyte_from_lava = "rubyte-from-lava"
bobmonium_from_lava = "bobmonium-from-lava"
data:extend
({
    {
        type = recipe,
        name = lava,
        category = metallurgy,
        subgroup = is_lava,
        icons = TWO_I(stone, lava),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = stone, amount = 64}},
        results = {{type = fluid, name = lava, amount = 480}},
        main_product = lava,
        surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
    },
    {
        type = recipe,
        name = lava_alt,
        category = metallurgy,
        subgroup = is_lava,
        icons = TWO_I(stone_brick, lava),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = stone_brick, amount = 32}},
        results = {{type = fluid, name = lava, amount = 480}},
        main_product = lava,
        surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
    },
    {
        type = recipe,
        name = jivolite_from_lava,
        category = metallurgy,
        subgroup = is_lava,
        icons = TWO_D_I(lava, calcite, jivolite, stone),
        order = a_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 16,
        ingredients =
        {
            {type = fluid, name = lava, amount = 480},
            {type = item, name = calcite, amount = 4}
        },
        results =
        {
            {type = item, name = jivolite, amount = 16},
            {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
        },
        main_product = jivolite,
        surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
    },
    {
        type = recipe,
        name = crotinnium_from_lava,
        category = metallurgy,
        subgroup = is_lava,
        icons = TWO_D_I(lava, calcite, crotinnium, stone),
        order = a_d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 16,
        ingredients =
        {
            {type = fluid, name = lava, amount = 480},
            {type = item, name = calcite, amount = 4}
        },
        results =
        {
            {type = item, name = crotinnium, amount = 16},
            {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
        },
        main_product = crotinnium,
        surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
    },
    {
        type = recipe,
        name = rubyte_from_lava,
        category = metallurgy,
        subgroup = is_lava,
        icons = TWO_D_I(lava, calcite, rubyte, stone),
        order = a_e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 16,
        ingredients =
        {
            {type = fluid, name = lava, amount = 480},
            {type = item, name = calcite, amount = 4}
        },
        results =
        {
            {type = item, name = rubyte, amount = 16},
            {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
        },
        main_product = rubyte,
        surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
    },
    {
        type = recipe,
        name = bobmonium_from_lava,
        category = metallurgy,
        subgroup = is_lava,
        icons = TWO_D_I(lava, calcite, bobmonium, stone),
        order = a_f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 16,
        ingredients =
        {
            {type = fluid, name = lava, amount = 480},
            {type = item, name = calcite, amount = 4}
        },
        results =
        {
            {type = item, name = bobmonium, amount = 16},
            {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
        },
        main_product = bobmonium,
        surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
    }
})

-- MOLTEN
advanced_molten_iron = "advanced-molten-iron"
molten_steel = "molten-steel"
advanced_molten_steel = "advanced-molten-steel"
molten_tin = "molten-tin"
molten_lead = "molten-lead"
molten_manganese = "molten-manganese"
molten_magnesium = "molten-magnesium"
molten_silicon = "molten-silicon"
molten_nickel = "molten-nickel"
molten_aluminium = "molten-aluminium"
advanced_molten_aluminium = "advanced-molten-aluminium"
molten_zinc = "molten-zinc"
molten_silver = "molten-silver"
molten_titanium = "molten-titanium"
advanced_molten_titanium = "advanced-molten-titanium"
molten_gold = "molten-gold"
molten_cobalt = "molten-cobalt"
molten_chrome = "molten-chrome"
molten_platinum = "molten-platinum"
molten_glass = "molten-glass"
molten_solder = "molten-solder"
molten_bronze = "molten-bronze"
molten_brass = "molten-brass"
molten_invar = "molten-invar"
molten_cobalt_steel = "molten-cobalt-steel"
molten_nitinol = "molten-nitinol"
data:extend
({
    {
        type = recipe,
        name = advanced_molten_iron,
        category = metallurgy,
        subgroup = is_molten,
        icons = THREE_D_I(iron_ingot, manganese_molten_angels, magnesium_molten, iron_molten_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients =
        {
            {type = item, name = iron_ingot, amount = 32},
            {type = fluid, name = manganese_molten_angels, amount = 240},
            {type = fluid, name = magnesium_molten, amount = 240}
        },
        results = {{type = fluid, name = iron_molten_angels, amount = 960}},
        main_product = iron_molten_angels
    },
    {
        type = recipe,
        name = molten_steel,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(steel_ingot, steel_molten_angels),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = steel_ingot, amount = 32}},
        results = {{type = fluid, name = steel_molten_angels, amount = 480}},
        main_product = steel_molten_angels
    },
    {
        type = recipe,
        name = advanced_molten_steel,
        category = metallurgy,
        subgroup = is_molten,
        icons = THREE_D_I(steel_ingot, manganese_molten_angels, magnesium_molten, steel_molten_angels),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients =
        {
            {type = item, name = steel_ingot, amount = 32},
            {type = fluid, name = manganese_molten_angels, amount = 240},
            {type = fluid, name = magnesium_molten, amount = 240}
        },
        results = {{type = fluid, name = steel_molten_angels, amount = 960}},
        main_product = steel_molten_angels
    },
    {
        type = recipe,
        name = molten_lead,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(lead_ingot, lead_molten_angels),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = lead_ingot, amount = 32}},
        results = {{type = fluid, name = lead_molten_angels, amount = 480}},
        main_product = lead_molten_angels
    },
    {
        type = recipe,
        name = molten_tin,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(tin_ingot, tin_molten_angels),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = tin_ingot, amount = 32}},
        results = {{type = fluid, name = tin_molten_angels, amount = 480}},
        main_product = tin_molten_angels
    },
    {
        type = recipe,
        name = molten_manganese,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(manganese_ingot, manganese_molten_angels),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = manganese_ingot, amount = 32}},
        results = {{type = fluid, name = manganese_molten_angels, amount = 480}},
        main_product = manganese_molten_angels
    },
    {
        type = recipe,
        name = molten_magnesium,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(magnesium_ingot, magnesium_molten),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = magnesium_ingot, amount = 32}},
        results = {{type = fluid, name = magnesium_molten, amount = 480}},
        main_product = magnesium_molten
    },
    {
        type = recipe,
        name = molten_silicon,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(silicon_ingot, silicon_molten_angels),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = silicon_ingot, amount = 32}},
        results = {{type = fluid, name = silicon_molten_angels, amount = 480}},
        main_product = silicon_molten_angels
    },
    {
        type = recipe,
        name = molten_nickel,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(nickel_ingot, nickel_molten_angels),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = nickel_ingot, amount = 32}},
        results = {{type = fluid, name = nickel_molten_angels, amount = 480}},
        main_product = nickel_molten_angels
    },
    {
        type = recipe,
        name = molten_aluminium,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(aluminium_ingot, aluminium_molten_angels),
        order = j,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = aluminium_ingot, amount = 32}},
        results = {{type = fluid, name = aluminium_molten_angels, amount = 480}},
        main_product = aluminium_molten_angels
    },
    {
        type = recipe,
        name = advanced_molten_aluminium,
        category = metallurgy,
        subgroup = is_molten,
        icons = THREE_D_I(aluminium_ingot, manganese_molten_angels, magnesium_molten, aluminium_molten_angels),
        order = j_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients =
        {
            {type = item, name = aluminium_ingot, amount = 32},
            {type = fluid, name = manganese_molten_angels, amount = 240},
            {type = fluid, name = magnesium_molten, amount = 240}
        },
        results = {{type = fluid, name = aluminium_molten_angels, amount = 960}},
        main_product = aluminium_molten_angels
    },
    {
        type = recipe,
        name = molten_zinc,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(zinc_ingot, zinc_molten_angels),
        order = k,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = zinc_ingot, amount = 32}},
        results = {{type = fluid, name = zinc_molten_angels, amount = 480}},
        main_product = zinc_molten_angels
    },
    {
        type = recipe,
        name = molten_silver,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(silver_ingot, silver_molten_angels),
        order = l,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = silver_ingot, amount = 32}},
        results = {{type = fluid, name = silver_molten_angels, amount = 480}},
        main_product = silver_molten_angels
    },
    {
        type = recipe,
        name = molten_titanium,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(titanium_ingot, titanium_molten_angels),
        order = m,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = titanium_ingot, amount = 32}},
        results = {{type = fluid, name = titanium_molten_angels, amount = 480}},
        main_product = titanium_molten_angels
    },
    {
        type = recipe,
        name = advanced_molten_titanium,
        category = metallurgy,
        subgroup = is_molten,
        icons = THREE_D_I(titanium_ingot, manganese_molten_angels, magnesium_molten, titanium_molten_angels),
        order = m_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients =
        {
            {type = item, name = titanium_ingot, amount = 32},
            {type = fluid, name = manganese_molten_angels, amount = 240},
            {type = fluid, name = magnesium_molten, amount = 240}
        },
        results = {{type = fluid, name = titanium_molten_angels, amount = 960}},
        main_product = titanium_molten_angels
    },
    {
        type = recipe,
        name = molten_gold,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(gold_ingot, gold_molten_angels),
        order = n,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = gold_ingot, amount = 32}},
        results = {{type = fluid, name = gold_molten_angels, amount = 480}},
        main_product = gold_molten_angels
    },
    {
        type = recipe,
        name = molten_cobalt,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(cobalt_ingot, cobalt_molten_angels),
        order = o,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = cobalt_ingot, amount = 32}},
        results = {{type = fluid, name = cobalt_molten_angels, amount = 480}},
        main_product = cobalt_molten_angels
    },
    {
        type = recipe,
        name = molten_chrome,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(chrome_ingot, chrome_molten_angels),
        order = p,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = chrome_ingot, amount = 32}},
        results = {{type = fluid, name = chrome_molten_angels, amount = 480}},
        main_product = chrome_molten_angels
    },
    {
        type = recipe,
        name = molten_platinum,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(platinum_ingot, platinum_molten_angels),
        order = q,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = platinum_ingot, amount = 32}},
        results = {{type = fluid, name = platinum_molten_angels, amount = 480}},
        main_product = platinum_molten_angels
    },
    {
        type = recipe,
        name = molten_glass,
        category = metallurgy,
        subgroup = is_molten,
        icons = TWO_I(glass_mixture, glass_molten_angels),
        order = r,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients = {{type = item, name = glass_mixture, amount = 32}},
        results = {{type = fluid, name = glass_molten_angels, amount = 480}},
        main_product = glass_molten_angels
    },
    {
        type = recipe,
        name = molten_solder,
        category = metallurgy,
        subgroup = is_molten,
        icons = THREE_I(lead_molten_angels, tin_molten_angels, solder_molten_angels),
        order = s,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients =
        {
            {type = fluid, name = lead_molten_angels, amount = 480},
            {type = fluid, name = tin_molten_angels, amount = 480}
        },
        results = {{type = fluid, name = solder_molten_angels, amount = 960}},
        main_product = solder_molten_angels
    },
    {
        type = recipe,
        name = molten_bronze,
        category = metallurgy,
        subgroup = is_molten,
        icons = THREE_I(copper_molten_angels, tin_molten_angels, bronze_molten_angels),
        order = t,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients =
        {
            {type = fluid, name = copper_molten_angels, amount = 480},
            {type = fluid, name = tin_molten_angels, amount = 480}
        },
        results = {{type = fluid, name = bronze_molten_angels, amount = 960}},
        main_product = bronze_molten_angels
    },
    {
        type = recipe,
        name = molten_brass,
        category = metallurgy,
        subgroup = is_molten,
        icons = THREE_I(copper_molten_angels, zinc_molten_angels, brass_molten_angels),
        order = u,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients =
        {
            {type = fluid, name = copper_molten_angels, amount = 480},
            {type = fluid, name = zinc_molten_angels, amount = 480}
        },
        results = {{type = fluid, name = brass_molten_angels, amount = 960}},
        main_product = brass_molten_angels
    },
    {
        type = recipe,
        name = molten_invar,
        category = metallurgy,
        subgroup = is_molten,
        icons = THREE_I(iron_molten_angels, nickel_molten_angels, invar_molten_angels),
        order = v,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients =
        {
            {type = fluid, name = iron_molten_angels, amount = 480},
            {type = fluid, name = nickel_molten_angels, amount = 480}
        },
        results = {{type = fluid, name = invar_molten_angels, amount = 960}},
        main_product = invar_molten_angels
    },
    {
        type = recipe,
        name = molten_cobalt_steel,
        category = metallurgy,
        subgroup = is_molten,
        icons = THREE_I(cobalt_molten_angels, steel_molten_angels, cobalt_steel_molten_angels),
        order = w,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients =
        {
            {type = fluid, name = cobalt_molten_angels, amount = 480},
            {type = fluid, name = steel_molten_angels, amount = 480}
        },
        results = {{type = fluid, name = cobalt_steel_molten_angels, amount = 960}},
        main_product = cobalt_steel_molten_angels
    },
    {
        type = recipe,
        name = molten_nitinol,
        category = metallurgy,
        subgroup = is_molten,
        icons = THREE_I(nickel_molten_angels, titanium_molten_angels, nitinol_molten_angels),
        order = x,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 32,
        ingredients =
        {
            {type = fluid, name = nickel_molten_angels, amount = 480},
            {type = fluid, name = titanium_molten_angels, amount = 480}
        },
        results = {{type = fluid, name = nitinol_molten_angels, amount = 960}},
        main_product = nitinol_molten_angels
    }
})

-- PLATE
casting_lead = "casting-lead"
casting_tin = "casting-tin"
casting_silicon = "casting-silicon"
casting_nickel = "casting-nickel"
casting_aluminium = "casting-aluminium"
casting_zinc = "casting-zinc"
casting_silver = "casting-silver"
casting_titanium = "casting-titanium"
casting_gold = "casting-gold"
casting_platinum = "casting-platinum"
casting_glass = "casting-glass"
casting_solder = "casting-solder"
casting_bronze = "casting-bronze"
casting_brass = "casting-brass"
casting_invar = "casting-invar"
casting_cobalt_steel = "casting-cobalt-steel"
casting_nitinol = "casting-nitinol"
data:extend
({
    {
        type = recipe,
        name = casting_lead,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(lead_molten_angels, lead_plate_bob),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = lead_molten_angels, amount = 60}},
        results = {{type = item, name = lead_plate_bob, amount = 4}},
        main_product = lead_plate_bob
    },
    {
        type = recipe,
        name = casting_tin,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(tin_molten_angels, tin_plate_bob),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = tin_molten_angels, amount = 60}},
        results = {{type = item, name = tin_plate_bob, amount = 4}},
        main_product = tin_plate_bob
    },
    {
        type = recipe,
        name = casting_silicon,
        category = metallurgy,
        subgroup = is_plate,
        icons = THREE_I(silicon_mono_seed, silicon_molten_angels, silicon_mono),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = silicon_mono_seed, amount = 4},
            {type = fluid, name = silicon_molten_angels, amount = 60},
            {type = item, name = silicon_crucible, amount = 4}
        },
        results =
        {
            {type = item, name = silicon_mono, amount = 8},
            {type = item, name = silicon_crucible, amount = 4, ignored_by_productivity = 4, probability = 0.75}
        },
        main_product = silicon_mono
    },
    {
        type = recipe,
        name = casting_nickel,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(nickel_molten_angels, nickel_plate_bob),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = nickel_molten_angels, amount = 60}},
        results = {{type = item, name = nickel_plate_bob, amount = 4}},
        main_product = nickel_plate_bob
    },
    {
        type = recipe,
        name = casting_aluminium,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(aluminium_molten_angels, aluminium_plate_bob),
        order = j,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = aluminium_molten_angels, amount = 60}},
        results = {{type = item, name = aluminium_plate_bob, amount = 4}},
        main_product = aluminium_plate_bob
    },
    {
        type = recipe,
        name = casting_zinc,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(zinc_molten_angels, zinc_plate_bob),
        order = k,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = zinc_molten_angels, amount = 60}},
        results = {{type = item, name = zinc_plate_bob, amount = 4}},
        main_product = zinc_plate_bob
    },
    {
        type = recipe,
        name = casting_silver,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(silver_molten_angels, silver_plate_bob),
        order = l,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = silver_molten_angels, amount = 60}},
        results = {{type = item, name = silver_plate_bob, amount = 4}},
        main_product = silver_plate_bob
    },
    {
        type = recipe,
        name = casting_titanium,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(titanium_molten_angels, titanium_plate_bob),
        order = m,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = titanium_molten_angels, amount = 60}},
        results = {{type = item, name = titanium_plate_bob, amount = 4}},
        main_product = titanium_plate_bob
    },
    {
        type = recipe,
        name = casting_gold,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(gold_molten_angels, gold_plate_bob),
        order = n,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = gold_molten_angels, amount = 60}},
        results = {{type = item, name = gold_plate_bob, amount = 4}},
        main_product = gold_plate_bob
    },
    {
        type = recipe,
        name = casting_platinum,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(platinum_molten_angels, platinum_plate),
        order = q,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = platinum_molten_angels, amount = 60}},
        results = {{type = item, name = platinum_plate, amount = 4}},
        main_product = platinum_plate
    },
    {
        type = recipe,
        name = casting_glass,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(glass_molten_angels, glass_bob),
        order = r,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = glass_molten_angels, amount = 60}},
        results = {{type = item, name = glass_bob, amount = 4}},
        main_product = glass_bob
    },
    {
        type = recipe,
        name = casting_solder,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(solder_molten_angels, solder),
        order = s,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = solder_molten_angels, amount = 60}},
        results = {{type = item, name = solder, amount = 4}},
        main_product = solder
    },
    {
        type = recipe,
        name = casting_bronze,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(bronze_molten_angels, bronze_plate_bob),
        order = t,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = bronze_molten_angels, amount = 60}},
        results = {{type = item, name = bronze_plate_bob, amount = 4}},
        main_product = bronze_plate_bob
    },
    {
        type = recipe,
        name = casting_brass,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(brass_molten_angels, brass_plate_bob),
        order = u,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = brass_molten_angels, amount = 60}},
        results = {{type = item, name = brass_plate_bob, amount = 4}},
        main_product = brass_plate_bob
    },
    {
        type = recipe,
        name = casting_invar,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(invar_molten_angels, invar_plate_bob),
        order = v,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = invar_molten_angels, amount = 60}},
        results = {{type = item, name = invar_plate_bob, amount = 4}},
        main_product = invar_plate_bob
    },
    {
        type = recipe,
        name = casting_cobalt_steel,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(cobalt_steel_molten_angels, cobalt_steel_plate_bob),
        order = w,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = cobalt_steel_molten_angels, amount = 60}},
        results = {{type = item, name = cobalt_steel_plate_bob, amount = 4}},
        main_product = cobalt_steel_plate_bob
    },
    {
        type = recipe,
        name = casting_nitinol,
        category = metallurgy,
        subgroup = is_plate,
        icons = TWO_I(nitinol_molten_angels, nitinol_plate_bob),
        order = x,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = nitinol_molten_angels, amount = 60}},
        results = {{type = item, name = nitinol_plate_bob, amount = 4}},
        main_product = nitinol_plate_bob
    }
})

-- INTERMEDIATES
casting_steel_gear_wheel = "casting-steel-gear-wheel"
casting_brass_gear_wheel = "casting-brass-gear-wheel"
casting_cobalt_steel_gear_wheel = "casting-cobalt-steel-gear-wheel"
casting_titanium_gear_wheel = "casting-titanium-gear-wheel"
casting_nitinol_gear_wheel = "casting-nitinol-gear-wheel"
casting_tin_cable = "casting-tin-cable"
casting_silver_cable = "casting-silver-cable"
casting_gold_cable = "casting-gold-cable"
casting_platinum_cable = "casting-platinum-cable"
data:extend
({
    {
        type = recipe,
        name = casting_steel_gear_wheel,
        category = metallurgy,
        subgroup = is_intermediates,
        icons = TWO_I(steel_molten_angels, steel_gear_wheel),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = steel_molten_angels, amount = 15}},
        results = {{type = item, name = steel_gear_wheel, amount = 1}},
        main_product = steel_gear_wheel
    },
    {
        type = recipe,
        name = casting_brass_gear_wheel,
        category = metallurgy,
        subgroup = is_intermediates,
        icons = TWO_I(brass_molten_angels, brass_gear_wheel),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = brass_molten_angels, amount = 15}},
        results = {{type = item, name = brass_gear_wheel, amount = 1}},
        main_product = brass_gear_wheel
    },
    {
        type = recipe,
        name = casting_cobalt_steel_gear_wheel,
        category = metallurgy,
        subgroup = is_intermediates,
        icons = TWO_I(cobalt_steel_molten_angels, cobalt_steel_gear_wheel),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = cobalt_steel_molten_angels, amount = 15}},
        results = {{type = item, name = cobalt_steel_gear_wheel, amount = 1}},
        main_product = cobalt_steel_gear_wheel
    },
    {
        type = recipe,
        name = casting_titanium_gear_wheel,
        category = metallurgy,
        subgroup = is_intermediates,
        icons = TWO_I(titanium_molten_angels, titanium_gear_wheel),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = titanium_molten_angels, amount = 15}},
        results = {{type = item, name = titanium_gear_wheel, amount = 1}},
        main_product = titanium_gear_wheel
    },
    {
        type = recipe,
        name = casting_nitinol_gear_wheel,
        category = metallurgy,
        subgroup = is_intermediates,
        icons = TWO_I(nitinol_molten_angels, nitinol_gear_wheel),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = nitinol_molten_angels, amount = 15}},
        results = {{type = item, name = nitinol_gear_wheel, amount = 1}},
        main_product = nitinol_gear_wheel
    },
    {
        type = recipe,
        name = casting_tin_cable,
        category = metallurgy,
        subgroup = is_intermediates,
        icons = THREE_I(copper_molten_angels, tin_molten_angels, tin_cable),
        order = j,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = fluid, name = copper_molten_angels, amount = 60},
            {type = fluid, name = tin_molten_angels, amount = 15}
        },
        results = {{type = item, name = tin_cable, amount = 8}},
        main_product = tin_cable
    },
    {
        type = recipe,
        name = casting_silver_cable,
        category = metallurgy,
        subgroup = is_intermediates,
        icons = THREE_I(copper_molten_angels, silver_molten_angels, silver_cable),
        order = k,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = fluid, name = copper_molten_angels, amount = 60},
            {type = fluid, name = silver_molten_angels, amount = 15}
        },
        results = {{type = item, name = silver_cable, amount = 8}},
        main_product = silver_cable
    },
    {
        type = recipe,
        name = casting_gold_cable,
        category = metallurgy,
        subgroup = is_intermediates,
        icons = THREE_I(copper_molten_angels, gold_molten_angels, gold_cable),
        order = l,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = fluid, name = copper_molten_angels, amount = 60},
            {type = fluid, name = gold_molten_angels, amount = 15}
        },
        results = {{type = item, name = gold_cable, amount = 8}},
        main_product = gold_cable
    },
    {
        type = recipe,
        name = casting_platinum_cable,
        category = metallurgy,
        subgroup = is_intermediates,
        icons = THREE_I(copper_molten_angels, platinum_molten_angels, platinum_cable),
        order = m,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = fluid, name = copper_molten_angels, amount = 60},
            {type = fluid, name = platinum_molten_angels, amount = 15}
        },
        results = {{type = item, name = platinum_cable, amount = 8}},
        main_product = platinum_cable
    }
})

-- PIPE
casting_copper_pipe = "casting-copper-pipe"
casting_bronze_pipe = "casting-bronze-pipe"
casting_steel_pipe = "casting-steel-pipe"
casting_brass_pipe = "casting-brass-pipe"
casting_titanium_pipe = "casting-titanium-pipe"
casting_nitinol_pipe = "casting-nitinol-pipe"
data:extend
({
    {
        type = recipe,
        name = casting_copper_pipe,
        category = metallurgy,
        subgroup = is_pipe,
        icons = TWO_I(copper_molten_angels, copper_pipe),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = copper_molten_angels, amount = 15}},
        results = {{type = item, name = copper_pipe, amount = 1}},
        main_product = copper_pipe
    },
    {
        type = recipe,
        name = casting_bronze_pipe,
        category = metallurgy,
        subgroup = is_pipe,
        icons = TWO_I(bronze_molten_angels, bronze_pipe),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = bronze_molten_angels, amount = 15}},
        results = {{type = item, name = bronze_pipe, amount = 1}},
        main_product = bronze_pipe
    },
    {
        type = recipe,
        name = casting_steel_pipe,
        category = metallurgy,
        subgroup = is_pipe,
        icons = TWO_I(steel_molten_angels, steel_pipe),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = steel_molten_angels, amount = 15}},
        results = {{type = item, name = steel_pipe, amount = 1}},
        main_product = steel_pipe
    },
    {
        type = recipe,
        name = casting_brass_pipe,
        category = metallurgy,
        subgroup = is_pipe,
        icons = TWO_I(brass_molten_angels, brass_pipe),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = brass_molten_angels, amount = 15}},
        results = {{type = item, name = brass_pipe, amount = 1}},
        main_product = brass_pipe
    },
    {
        type = recipe,
        name = casting_titanium_pipe,
        category = metallurgy,
        subgroup = is_pipe,
        icons = TWO_I(titanium_molten_angels, titanium_pipe),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = titanium_molten_angels, amount = 15}},
        results = {{type = item, name = titanium_pipe, amount = 1}},
        main_product = titanium_pipe
    },
    {
        type = recipe,
        name = casting_nitinol_pipe,
        category = metallurgy,
        subgroup = is_pipe,
        icons = TWO_I(nitinol_molten_angels, nitinol_pipe),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = nitinol_molten_angels, amount = 15}},
        results = {{type = item, name = nitinol_pipe, amount = 1}},
        main_product = nitinol_pipe
    }
})

-- PIPE TO GROUND
casting_copper_pipe_to_ground = "casting-copper-pipe-to-ground"
casting_bronze_pipe_to_ground = "casting-bronze-pipe-to-ground"
casting_steel_pipe_to_ground = "casting-steel-pipe-to-ground"
casting_brass_pipe_to_ground = "casting-brass-pipe-to-ground"
casting_titanium_pipe_to_ground = "casting-titanium-pipe-to-ground"
casting_nitinol_pipe_to_ground = "casting-nitinol-pipe-to-ground"
data:extend
({
    {
        type = recipe,
        name = casting_copper_pipe_to_ground,
        category = metallurgy,
        subgroup = is_pipe_to_ground,
        icons = TWO_I(copper_molten_angels, copper_pipe_to_ground),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = copper_molten_angels, amount = 120}},
        results = {{type = item, name = copper_pipe_to_ground, amount = 2}},
        main_product = copper_pipe_to_ground
    },
    {
        type = recipe,
        name = casting_bronze_pipe_to_ground,
        category = metallurgy,
        subgroup = is_pipe_to_ground,
        icons = TWO_I(bronze_molten_angels, bronze_pipe_to_ground),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = bronze_molten_angels, amount = 240}},
        results = {{type = item, name = bronze_pipe_to_ground, amount = 2}},
        main_product = bronze_pipe_to_ground
    },
    {
        type = recipe,
        name = casting_steel_pipe_to_ground,
        category = metallurgy,
        subgroup = is_pipe_to_ground,
        icons = TWO_I(steel_molten_angels, steel_pipe_to_ground),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = steel_molten_angels, amount = 240}},
        results = {{type = item, name = steel_pipe_to_ground, amount = 2}},
        main_product = steel_pipe_to_ground
    },
    {
        type = recipe,
        name = casting_brass_pipe_to_ground,
        category = metallurgy,
        subgroup = is_pipe_to_ground,
        icons = TWO_I(brass_molten_angels, brass_pipe_to_ground),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = brass_molten_angels, amount = 360}},
        results = {{type = item, name = brass_pipe_to_ground, amount = 2}},
        main_product = brass_pipe_to_ground
    },
    {
        type = recipe,
        name = casting_titanium_pipe_to_ground,
        category = metallurgy,
        subgroup = is_pipe_to_ground,
        icons = TWO_I(titanium_molten_angels, titanium_pipe_to_ground),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = titanium_molten_angels, amount = 480}},
        results = {{type = item, name = titanium_pipe_to_ground, amount = 2}},
        main_product = titanium_pipe_to_ground
    },
    {
        type = recipe,
        name = casting_nitinol_pipe_to_ground,
        category = metallurgy,
        subgroup = is_pipe_to_ground,
        icons = TWO_I(nitinol_molten_angels, nitinol_pipe_to_ground),
        order = g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = nitinol_molten_angels, amount = 600}},
        results = {{type = item, name = nitinol_pipe_to_ground, amount = 2}},
        main_product = nitinol_pipe_to_ground
    }
})

-- VOLCANIC AIR
vulcanus_air_separation = "vulcanus-air-separation"
data:extend
({
    {
        type = recipe,
        name = vulcanus_air,
        category = angels_petrochem_air_filtering,
        subgroup = is_vulcanus_air,
        icon = data_fluid[vulcanus_air].icon,
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        always_show_products = true,
        energy_required = 8,
        ingredients = {},
        results = {{type = fluid, name = vulcanus_air, amount = 240}},
        main_product = vulcanus_air,
        surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
    },
    {
        type = recipe,
        name = vulcanus_air_separation,
        category = angels_advanced_chemistry,
        subgroup = is_vulcanus_air,
        icons = FOUR_R_I(vulcanus_air, nitrogen_angels, carbon_dioxide_angels, hydrogen_sulfide_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = fluid, name = vulcanus_air, amount = 120}},
        results =
        {
            {type = fluid, name = nitrogen_angels, amount = 60},
            {type = fluid, name = carbon_dioxide_angels, amount = 30},
            {type = fluid, name = hydrogen_sulfide_angels, amount = 30}
        },
        main_product = nitrogen_angels
    }
})

-- TUNGSTEN
wolframite_ore_sorting = "wolframite-ore-sorting"
data:extend
({
    {
        type = recipe,
        name = wolframite_ore_sorting,
        category = angels_ore_sorting_5,
        subgroup = is_tungsten,
        icons = RECYCLING_I(recycling_png, wolframite_ore),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = wolframite_ore, amount = 8}},
        results =
        {
            {type = item, name = tungsten_ore_bob, amount = 4},
            {type = item, name = iron_ore, amount = 1},
            {type = item, name = manganese_ore_angels, amount = 1}
        },
        main_product = tungsten_ore_bob
    }
})

--[[
data:extend
({
    {
        type = recipe,
        name = ,
        category = metallurgy,
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