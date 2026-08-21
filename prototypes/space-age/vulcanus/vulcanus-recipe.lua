-- VULCANUS AIR
vulcanus_air_separation = "vulcanus-air-separation"
TIMSABA.functions.create_recipes
({
    {
        name = vulcanus_air,
        category = angels_petrochem_air_filtering,
        subgroup = is_vulcanus_air,
        icon = data_fluid[vulcanus_air].icon,
        order = a,
        energy_required = 8,
        ingredients = {},
        results = {{type = fluid, name = vulcanus_air, amount = 240}},
        main_product = vulcanus_air,
        surface_conditions = {{property = pressure, min = 4000, max = 4000}}
    },
    {
        name = vulcanus_air_separation,
        category = angels_advanced_chemistry,
        subgroup = is_vulcanus_air,
        icons = FOUR_R_I(vulcanus_air, nitrogen_angels, carbon_dioxide_angels, hydrogen_sulfide_angels),
        order = a_a,
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

-- LAVA
jivolite_from_lava = "jivolite-from-lava"
crotinnium_from_lava = "crotinnium-from-lava"
rubyte_from_lava = "rubyte-from-lava"
bobmonium_from_lava = "bobmonium-from-lava"
TIMSABA.functions.create_recipes
({
    {
        name = lava,
        category = metallurgy,
        subgroup = is_lava,
        icons = TWO_I(stone, lava),
        order = a,
        allow_productivity = true,
        energy_required = 32,
        ingredients = {{type = item, name = stone, amount = 64}},
        results = {{type = fluid, name = lava, amount = 480}},
        main_product = lava,
        surface_conditions = {{property = pressure, min = 4000, max = 4000}}
    },
    {
        name = jivolite_from_lava,
        category = metallurgy,
        subgroup = is_lava,
        icons = TWO_D_I(lava, calcite, ore_jivolite, stone),
        order = a_b,
        allow_productivity = true,
        energy_required = 16,
        ingredients =
        {
            {type = fluid, name = lava, amount = 480},
            {type = item, name = calcite, amount = 4}
        },
        results =
        {
            {type = item, name = ore_jivolite, amount = 16},
            {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
        },
        main_product = ore_jivolite,
        surface_conditions = {{property = pressure, min = 4000, max = 4000}}
    },
    {
        name = crotinnium_from_lava,
        category = metallurgy,
        subgroup = is_lava,
        icons = TWO_D_I(lava, calcite, ore_crotinnium, stone),
        order = a_d,
        allow_productivity = true,
        energy_required = 16,
        ingredients =
        {
            {type = fluid, name = lava, amount = 480},
            {type = item, name = calcite, amount = 4}
        },
        results =
        {
            {type = item, name = ore_crotinnium, amount = 16},
            {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
        },
        main_product = ore_crotinnium,
        surface_conditions = {{property = pressure, min = 4000, max = 4000}}
    },
    {
        name = rubyte_from_lava,
        category = metallurgy,
        subgroup = is_lava,
        icons = TWO_D_I(lava, calcite, ore_rubyte, stone),
        order = a_e,
        allow_productivity = true,
        energy_required = 16,
        ingredients =
        {
            {type = fluid, name = lava, amount = 480},
            {type = item, name = calcite, amount = 4}
        },
        results =
        {
            {type = item, name = ore_rubyte, amount = 16},
            {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
        },
        main_product = ore_rubyte,
        surface_conditions = {{property = pressure, min = 4000, max = 4000}}
    },
    {
        name = bobmonium_from_lava,
        category = metallurgy,
        subgroup = is_lava,
        icons = TWO_D_I(lava, calcite, ore_bobmonium, stone),
        order = a_f,
        allow_productivity = true,
        energy_required = 16,
        ingredients =
        {
            {type = fluid, name = lava, amount = 480},
            {type = item, name = calcite, amount = 4}
        },
        results =
        {
            {type = item, name = ore_bobmonium, amount = 16},
            {type = item, name = stone, amount = 8, ignored_by_productivity = 8}
        },
        main_product = ore_bobmonium,
        surface_conditions = {{property = pressure, min = 4000, max = 4000}}
    }
})

-- MOLTEN
molten_steel = "molten-steel"
molten_tin = "molten-tin"
molten_lead = "timsaba-molten-lead"
molten_manganese = "molten-manganese"
molten_magnesium = "molten-magnesium"
molten_nickel = "molten-nickel"
molten_aluminium = "molten-aluminium"
molten_zinc = "molten-zinc"
molten_silver = "molten-silver"
molten_titanium = "molten-titanium"
molten_gold = "molten-gold"
molten_cobalt = "molten-cobalt"
molten_chromium = "molten-chromium"
molten_platinum = "molten-platinum"
molten_glass = "molten-glass"
molten_solder = "molten-solder"
molten_bronze = "molten-bronze"
molten_brass = "molten-brass"
molten_invar = "molten-invar"
molten_cobalt_steel = "molten-cobalt-steel"
molten_nitinol = "molten-nitinol"
local function molten_metal(parameters)
    local info_recipe =
    {
        type = recipe,
        name = parameters.name,
        category = metallurgy,
        subgroup = is_vulcanus_molten,
        icons = TWO_I(parameters.ing, parameters.res),
        order = parameters.order,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients = {{type = item, name = parameters.ing, amount = 16}},
        results = {{type = fluid, name = parameters.res, amount = 480}},
        main_product = parameters.res
    }
    data:extend({info_recipe})
end
molten_metal({name = molten_steel,     order = b, ing = steel_ingot,     res = steel_molten_angels})
molten_metal({name = molten_lead,      order = d, ing = lead_ingot,      res = lead_molten_angels})
molten_metal({name = molten_tin,       order = e, ing = tin_ingot,       res = tin_molten_angels})
molten_metal({name = molten_manganese, order = f, ing = manganese_ingot, res = manganese_molten_angels})
molten_metal({name = molten_magnesium, order = g, ing = magnesium_ingot, res = magnesium_molten})
molten_metal({name = molten_nickel,    order = i, ing = nickel_ingot,    res = nickel_molten_angels})
molten_metal({name = molten_aluminium, order = j, ing = aluminium_ingot, res = aluminium_molten_angels})
molten_metal({name = molten_zinc,      order = k, ing = zinc_ingot,      res = zinc_molten_angels})
molten_metal({name = molten_silver,    order = l, ing = silver_ingot,    res = silver_molten_angels})
molten_metal({name = molten_titanium,  order = m, ing = titanium_ingot,  res = titanium_molten_angels})
molten_metal({name = molten_gold,      order = n, ing = gold_ingot,      res = gold_molten_angels})
molten_metal({name = molten_cobalt,    order = o, ing = cobalt_ingot,    res = cobalt_molten_angels})
molten_metal({name = molten_chromium,  order = p, ing = chromium_ingot,  res = chromium_molten_angels})
molten_metal({name = molten_platinum,  order = q, ing = platinum_ingot,  res = platinum_molten_angels})
molten_metal({name = molten_glass,     order = r, ing = glass_mixture,   res = glass_molten_angels})

data_recipe[molten_chromium].hidden = true
data_recipe[molten_chromium].hidden_in_factoriopedia = true

advanced_molten_iron = "advanced-molten-iron"
advanced_molten_steel = "advanced-molten-steel"
advanced_molten_aluminium = "advanced-molten-aluminium"
advanced_molten_titanium = "advanced-molten-titanium"
local function advanced_molten_metal(parameters)
    local info_recipe =
    {
        type = recipe,
        name = parameters.name,
        category = metallurgy,
        subgroup = is_vulcanus_molten,
        icons = AR_FOUR_I(parameters.ing, manganese_molten_angels, magnesium_molten, parameters.res),
        order = parameters.order,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients =
        {
            {type = item, name = parameters.ing, amount = 16},
            {type = fluid, name = manganese_molten_angels, amount = 120},
            {type = fluid, name = magnesium_molten, amount = 120}
        },
        results = {{type = fluid, name = parameters.res, amount = 480}},
        main_product = parameters.res
    }
    data:extend({info_recipe})
end
advanced_molten_metal({name = advanced_molten_iron,      order = a_a, ing = iron_ingot,      res = iron_molten_angels})
advanced_molten_metal({name = advanced_molten_steel,     order = b_a, ing = steel_ingot,     res = steel_molten_angels})
advanced_molten_metal({name = advanced_molten_aluminium, order = j_a, ing = aluminium_ingot, res = aluminium_molten_angels})
advanced_molten_metal({name = advanced_molten_titanium,  order = m_a, ing = titanium_ingot,  res = titanium_molten_angels})

local function molten_alloy(parameters)
    local info_recipe =
    {
        type = recipe,
        name = parameters.name,
        category = metallurgy,
        subgroup = is_vulcanus_molten,
        icons = THREE_I(parameters.ing_1, parameters.ing_2, parameters.res),
        order = parameters.order,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients =
        {
            {type = fluid, name = parameters.ing_1, amount = 240},
            {type = fluid, name = parameters.ing_2, amount = 240}
        },
        results = {{type = fluid, name = parameters.res, amount = 240}},
        main_product = parameters.res
    }
    data:extend({info_recipe})
end
molten_alloy({name = molten_solder,       order = s, ing_1 = lead_molten_angels,   ing_2 = tin_molten_angels,      res = solder_molten_angels})
molten_alloy({name = molten_bronze,       order = t, ing_1 = copper_molten_angels, ing_2 = tin_molten_angels,      res = bronze_molten_angels})
molten_alloy({name = molten_brass,        order = u, ing_1 = copper_molten_angels, ing_2 = zinc_molten_angels,     res = brass_molten_angels})
molten_alloy({name = molten_invar,        order = v, ing_1 = iron_molten_angels,   ing_2 = nickel_molten_angels,   res = invar_molten_angels})
molten_alloy({name = molten_cobalt_steel, order = w, ing_1 = cobalt_molten_angels, ing_2 = steel_molten_angels,    res = cobalt_steel_molten_angels})
molten_alloy({name = molten_nitinol,      order = x, ing_1 = nickel_molten_angels, ing_2 = titanium_molten_angels, res = nitinol_molten_angels})

-- PLATE
casting_lead = "timsaba-casting-lead"
casting_tin = "casting-tin"
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
local function casting_metal(parameters)
    local info_recipe =
    {
        type = recipe,
        name = parameters.name,
        category = metallurgy,
        subgroup = is_vulcanus_plate,
        icons = TWO_I(parameters.ing, parameters.res),
        order = parameters.order,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = parameters.ing, amount = 60}},
        results = {{type = item, name = parameters.res, amount = 4}},
        main_product = parameters.res
    }
    data:extend({info_recipe})
end
casting_metal({name = casting_lead,         order = d, ing = lead_molten_angels,         res = lead_plate_bob})
casting_metal({name = casting_tin,          order = e, ing = tin_molten_angels,          res = tin_plate_bob})
casting_metal({name = casting_nickel,       order = i, ing = nickel_molten_angels,       res = nickel_plate_bob})
casting_metal({name = casting_aluminium,    order = j, ing = aluminium_molten_angels,    res = aluminium_plate_bob})
casting_metal({name = casting_zinc,         order = k, ing = zinc_molten_angels,         res = zinc_plate_bob})
casting_metal({name = casting_silver,       order = l, ing = silver_molten_angels,       res = silver_plate_bob})
casting_metal({name = casting_titanium,     order = m, ing = titanium_molten_angels,     res = titanium_plate_bob})
casting_metal({name = casting_gold,         order = n, ing = gold_molten_angels,         res = gold_plate_bob})
casting_metal({name = casting_platinum,     order = q, ing = platinum_molten_angels,     res = platinum_plate})
casting_metal({name = casting_glass,        order = r, ing = glass_molten_angels,        res = glass_bob})
casting_metal({name = casting_solder,       order = s, ing = solder_molten_angels,       res = solder})
casting_metal({name = casting_bronze,       order = t, ing = bronze_molten_angels,       res = bronze_plate_bob})
casting_metal({name = casting_brass,        order = u, ing = brass_molten_angels,        res = brass_plate_bob})
casting_metal({name = casting_invar,        order = v, ing = invar_molten_angels,        res = invar_plate_bob})
casting_metal({name = casting_cobalt_steel, order = w, ing = cobalt_steel_molten_angels, res = cobalt_steel_plate_bob})
casting_metal({name = casting_nitinol,      order = x, ing = nitinol_molten_angels,      res = nitinol_plate_bob})

-- INTERMEDIATES
casting_steel_rod = "casting-steel-rod"
casting_titanium_rod = "casting-titanium-rod"
casting_steel_gear_wheel = "casting-steel-gear-wheel"
casting_brass_gear_wheel = "casting-brass-gear-wheel"
casting_cobalt_steel_gear_wheel = "casting-cobalt-steel-gear-wheel"
casting_titanium_gear_wheel = "casting-titanium-gear-wheel"
casting_nitinol_gear_wheel = "casting-nitinol-gear-wheel"
casting_iron_bearing_ball = "casting-iron-bearing-ball"
casting_steel_bearing_ball = "casting-steel-bearing-ball"
casting_brass_bearing_ball = "casting-brass-bearing-ball"
casting_cobalt_steel_bearing_ball = "casting-cobalt-steel-bearing-ball"
casting_titanium_bearing_ball = "casting-titanium-bearing-ball"
casting_nitinol_bearing_ball = "casting-nitinol-bearing-ball"
casting_iron_bearing = "casting-iron-bearing"
casting_steel_bearing = "casting-steel-bearing"
casting_brass_bearing = "casting-brass-bearing"
casting_cobalt_steel_bearing = "casting-cobalt-steel-bearing"
casting_titanium_bearing = "casting-titanium-bearing"
casting_nitinol_bearing = "casting-nitinol-bearing"
casting_tin_cable = "casting-tin-cable"
casting_silver_cable = "casting-silver-cable"
casting_gold_cable = "casting-gold-cable"
casting_platinum_cable = "casting-platinum-cable"
TIMSABA.functions.create_recipes
({
    {
        name = casting_steel_rod,
        category = metallurgy,
        subgroup = is_vulcanus_rod,
        icons = TWO_I(steel_molten_angels, steel_rod),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = steel_molten_angels, amount = 30}},
        results = {{type = item, name = steel_rod, amount = 4}},
        main_product = steel_rod
    },
    {
        name = casting_titanium_rod,
        category = metallurgy,
        subgroup = is_vulcanus_rod,
        icons = TWO_I(titanium_molten_angels, titanium_rod),
        order = c,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = titanium_molten_angels, amount = 30}},
        results = {{type = item, name = titanium_rod, amount = 4}},
        main_product = titanium_rod
    },
    -- GEAR WHEEL
    {
        name = casting_steel_gear_wheel,
        category = metallurgy,
        subgroup = is_vulcanus_gear_wheel,
        icons = TWO_I(steel_molten_angels, steel_gear_wheel),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = steel_molten_angels, amount = 15}},
        results = {{type = item, name = steel_gear_wheel, amount = 1}},
        main_product = steel_gear_wheel
    },
    {
        name = casting_brass_gear_wheel,
        category = metallurgy,
        subgroup = is_vulcanus_gear_wheel,
        icons = TWO_I(brass_molten_angels, brass_gear_wheel),
        order = c,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = brass_molten_angels, amount = 15}},
        results = {{type = item, name = brass_gear_wheel, amount = 1}},
        main_product = brass_gear_wheel
    },
    {
        name = casting_cobalt_steel_gear_wheel,
        category = metallurgy,
        subgroup = is_vulcanus_gear_wheel,
        icons = TWO_I(cobalt_steel_molten_angels, cobalt_steel_gear_wheel),
        order = d,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = cobalt_steel_molten_angels, amount = 15}},
        results = {{type = item, name = cobalt_steel_gear_wheel, amount = 1}},
        main_product = cobalt_steel_gear_wheel
    },
    {
        name = casting_titanium_gear_wheel,
        category = metallurgy,
        subgroup = is_vulcanus_gear_wheel,
        icons = TWO_I(titanium_molten_angels, titanium_gear_wheel),
        order = e,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = titanium_molten_angels, amount = 15}},
        results = {{type = item, name = titanium_gear_wheel, amount = 1}},
        main_product = titanium_gear_wheel
    },
    {
        name = casting_nitinol_gear_wheel,
        category = metallurgy,
        subgroup = is_vulcanus_gear_wheel,
        icons = TWO_I(nitinol_molten_angels, nitinol_gear_wheel),
        order = f,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = nitinol_molten_angels, amount = 15}},
        results = {{type = item, name = nitinol_gear_wheel, amount = 1}},
        main_product = nitinol_gear_wheel
    },
    -- BEARING BALL
    {
        name = casting_iron_bearing_ball,
        category = metallurgy,
        subgroup = is_vulcanus_bearing_ball,
        icons = TWO_I(iron_molten_angels, iron_bearing_ball),
        order = a,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = iron_molten_angels, amount = 15}},
        results = {{type = item, name = iron_bearing_ball, amount = 8}},
        main_product = iron_bearing_ball
    },
    {
        name = casting_steel_bearing_ball,
        category = metallurgy,
        subgroup = is_vulcanus_bearing_ball,
        icons = TWO_I(steel_molten_angels, steel_bearing_ball),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = steel_molten_angels, amount = 15}},
        results = {{type = item, name = steel_bearing_ball, amount = 8}},
        main_product = steel_bearing_ball
    },
    {
        name = casting_brass_bearing_ball,
        category = metallurgy,
        subgroup = is_vulcanus_bearing_ball,
        icons = TWO_I(brass_molten_angels, brass_bearing_ball),
        order = c,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = brass_molten_angels, amount = 15}},
        results = {{type = item, name = brass_bearing_ball, amount = 8}},
        main_product = brass_bearing_ball
    },
    {
        name = casting_cobalt_steel_bearing_ball,
        category = metallurgy,
        subgroup = is_vulcanus_bearing_ball,
        icons = TWO_I(cobalt_steel_molten_angels, cobalt_steel_bearing_ball),
        order = d,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = cobalt_steel_molten_angels, amount = 15}},
        results = {{type = item, name = cobalt_steel_bearing_ball, amount = 8}},
        main_product = cobalt_steel_bearing_ball
    },
    {
        name = casting_titanium_bearing_ball,
        category = metallurgy,
        subgroup = is_vulcanus_bearing_ball,
        icons = TWO_I(titanium_molten_angels, titanium_bearing_ball),
        order = e,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = titanium_molten_angels, amount = 15}},
        results = {{type = item, name = titanium_bearing_ball, amount = 8}},
        main_product = titanium_bearing_ball
    },
    {
        name = casting_nitinol_bearing_ball,
        category = metallurgy,
        subgroup = is_vulcanus_bearing_ball,
        icons = TWO_I(nitinol_molten_angels, nitinol_bearing_ball),
        order = f,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = nitinol_molten_angels, amount = 15}},
        results = {{type = item, name = nitinol_bearing_ball, amount = 8}},
        main_product = nitinol_bearing_ball
    },
    -- BEARING
    {
        name = casting_iron_bearing,
        category = metallurgy,
        subgroup = is_vulcanus_bearing,
        icons = B_F_L(nil, iron_bearing_ball, iron_molten_angels, iron_bearing),
        order = a,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = iron_bearing_ball, amount = 16},
            {type = fluid, name = iron_molten_angels, amount = 30}
        },
        results = {{type = item, name = iron_bearing, amount = 2}},
        main_product = iron_bearing
    },
    {
        name = casting_steel_bearing,
        category = metallurgy,
        subgroup = is_vulcanus_bearing,
        icons = B_F_L(nil, steel_bearing_ball, steel_molten_angels, steel_bearing),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = steel_bearing_ball, amount = 16},
            {type = fluid, name = steel_molten_angels, amount = 30}
        },
        results = {{type = item, name = steel_bearing, amount = 2}},
        main_product = steel_bearing
    },
    {
        name = casting_brass_bearing,
        category = metallurgy,
        subgroup = is_vulcanus_bearing,
        icons = B_F_L(lubricant, brass_bearing_ball, brass_molten_angels, brass_bearing),
        order = c,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = brass_bearing_ball, amount = 16},
            {type = fluid, name = brass_molten_angels, amount = 30},
            {type = fluid, name = lubricant, amount = 15}
        },
        results = {{type = item, name = brass_bearing, amount = 2}},
        main_product = brass_bearing
    },
    {
        name = casting_cobalt_steel_bearing,
        category = metallurgy,
        subgroup = is_vulcanus_bearing,
        icons = B_F_L(lubricant, cobalt_steel_bearing_ball, cobalt_steel_molten_angels, cobalt_steel_bearing),
        order = d,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = cobalt_steel_bearing_ball, amount = 16},
            {type = fluid, name = cobalt_steel_molten_angels, amount = 30},
            {type = fluid, name = lubricant, amount = 15}
        },
        results = {{type = item, name = cobalt_steel_bearing, amount = 2}},
        main_product = cobalt_steel_bearing
    },
    {
        name = casting_titanium_bearing,
        category = metallurgy,
        subgroup = is_vulcanus_bearing,
        icons = B_F_L(lubricant, titanium_bearing_ball, titanium_molten_angels, titanium_bearing),
        order = e,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = titanium_bearing_ball, amount = 16},
            {type = fluid, name = titanium_molten_angels, amount = 30},
            {type = fluid, name = lubricant, amount = 15}
        },
        results = {{type = item, name = titanium_bearing, amount = 2}},
        main_product = titanium_bearing
    },
    {
        name = casting_nitinol_bearing,
        category = metallurgy,
        subgroup = is_vulcanus_bearing,
        icons = B_F_L(lubricant, nitinol_bearing_ball, nitinol_molten_angels, nitinol_bearing),
        order = f,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = nitinol_bearing_ball, amount = 16},
            {type = fluid, name = nitinol_molten_angels, amount = 30},
            {type = fluid, name = lubricant, amount = 15}
        },
        results = {{type = item, name = nitinol_bearing, amount = 2}},
        main_product = nitinol_bearing
    },
    -- CABLE
    {
        name = casting_tin_cable,
        category = metallurgy,
        subgroup = is_vulcanus_cable,
        icons = THREE_I(copper_molten_angels, tin_molten_angels, tin_cable),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        ingredients =
        {
            {type = fluid, name = copper_molten_angels, amount = 60},
            {type = fluid, name = tin_molten_angels, amount = 15}
        },
        results = {{type = item, name = tin_cable, amount = 16}},
        main_product = tin_cable
    },
    {
        name = casting_silver_cable,
        category = metallurgy,
        subgroup = is_vulcanus_cable,
        icons = THREE_I(copper_molten_angels, silver_molten_angels, silver_cable),
        order = c,
        allow_productivity = true,
        allow_quality = true,
        ingredients =
        {
            {type = fluid, name = copper_molten_angels, amount = 60},
            {type = fluid, name = silver_molten_angels, amount = 15}
        },
        results = {{type = item, name = silver_cable, amount = 16}},
        main_product = silver_cable
    },
    {
        name = casting_gold_cable,
        category = metallurgy,
        subgroup = is_vulcanus_cable,
        icons = THREE_I(copper_molten_angels, gold_molten_angels, gold_cable),
        order = d,
        allow_productivity = true,
        allow_quality = true,
        ingredients =
        {
            {type = fluid, name = copper_molten_angels, amount = 60},
            {type = fluid, name = gold_molten_angels, amount = 15}
        },
        results = {{type = item, name = gold_cable, amount = 16}},
        main_product = gold_cable
    },
    {
        name = casting_platinum_cable,
        category = metallurgy,
        subgroup = is_vulcanus_cable,
        icons = THREE_I(copper_molten_angels, platinum_molten_angels, platinum_cable),
        order = e,
        allow_productivity = true,
        allow_quality = true,
        ingredients =
        {
            {type = fluid, name = copper_molten_angels, amount = 60},
            {type = fluid, name = platinum_molten_angels, amount = 15}
        },
        results = {{type = item, name = platinum_cable, amount = 16}},
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
local function casting_pipes(parameters)
    local info_recipe =
    {
        type = recipe,
        name = parameters.name,
        category = metallurgy,
        subgroup = is_vulcanus_pipe,
        icons = TWO_I(parameters.ing, parameters.res),
        order = parameters.order,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = parameters.ing, amount = 15}},
        results = {{type = item, name = parameters.res, amount = 1}},
        main_product = parameters.res
    }
    data:extend({info_recipe})
end
casting_pipes({name = casting_copper_pipe,   order = b, ing = copper_molten_angels,   res = copper_pipe})
casting_pipes({name = casting_bronze_pipe,   order = c, ing = bronze_molten_angels,   res = bronze_pipe})
casting_pipes({name = casting_steel_pipe,    order = d, ing = steel_molten_angels,    res = steel_pipe})
casting_pipes({name = casting_brass_pipe,    order = e, ing = brass_molten_angels,    res = brass_pipe})
casting_pipes({name = casting_titanium_pipe, order = f, ing = titanium_molten_angels, res = titanium_pipe})
casting_pipes({name = casting_nitinol_pipe,  order = g, ing = nitinol_molten_angels,  res = nitinol_pipe})

-- PIPE TO GROUND
casting_copper_pipe_to_ground = "casting-copper-pipe-to-ground"
casting_bronze_pipe_to_ground = "casting-bronze-pipe-to-ground"
casting_steel_pipe_to_ground = "casting-steel-pipe-to-ground"
casting_brass_pipe_to_ground = "casting-brass-pipe-to-ground"
casting_titanium_pipe_to_ground = "casting-titanium-pipe-to-ground"
casting_nitinol_pipe_to_ground = "casting-nitinol-pipe-to-ground"
local function casting_pipes(parameters)
    local info_recipe =
    {
        type = recipe,
        name = parameters.name,
        category = metallurgy,
        subgroup = is_vulcanus_pipe_to_ground,
        icons = TWO_I(parameters.ing, parameters.res),
        order = parameters.order,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = fluid, name = parameters.ing, amount = parameters.amount_ing}},
        results = {{type = item, name = parameters.res, amount = 2}},
        main_product = parameters.res
    }
    data:extend({info_recipe})
end
casting_pipes({name = casting_copper_pipe_to_ground,   order = b, ing = copper_molten_angels,   amount_ing = 120, res = copper_pipe_to_ground})
casting_pipes({name = casting_bronze_pipe_to_ground,   order = c, ing = bronze_molten_angels,   amount_ing = 240, res = bronze_pipe_to_ground})
casting_pipes({name = casting_steel_pipe_to_ground,    order = d, ing = steel_molten_angels,    amount_ing = 240, res = steel_pipe_to_ground})
casting_pipes({name = casting_brass_pipe_to_ground,    order = e, ing = brass_molten_angels,    amount_ing = 360, res = brass_pipe_to_ground})
casting_pipes({name = casting_titanium_pipe_to_ground, order = f, ing = titanium_molten_angels, amount_ing = 480, res = titanium_pipe_to_ground})
casting_pipes({name = casting_nitinol_pipe_to_ground,  order = g, ing = nitinol_molten_angels,  amount_ing = 600, res = nitinol_pipe_to_ground})

-- TUNGSTEN
tungsten_powder_vulcanus = "tungsten-powder-vulcanus"
TIMSABA.functions.create_recipes
({
    {
        localised_name = {"item-name." .. tungsten_powder},
        name = tungsten_powder_vulcanus,
        category = powderizing_4,
        subgroup = is_vulcanus_tungsten,
        icons = TWO_I(tungsten_ore_bob, tungsten_powder),
        order = a,
        ingredients = {{type = item, name = tungsten_ore_bob, amount = 4}},
        results = {{type = item, name = tungsten_powder, amount = 1}},
        main_product = tungsten_powder,
        surface_conditions = {{property = pressure, min = 4000, max = 4000}}
    }
})