local graphics_powellite = "__TIMSABA__/graphics/icons/angels/resource/powellite/"

-- Powellite ore / Ca + Cu + Pb + W + Mo + Ho
powellite_ore = "powellite-ore"
powellite_crushed = "powellite-crushed"
powellite_chunks = "powellite-chunks"
powellite_crystals = "powellite-crystals"
powellite_purified = "powellite-purified"
TIMSABA.functions.create_items
({
    {
        name = powellite_ore,
        subgroup = is_ores,
        icon = graphics_powellite .. powellite_ore .. ".png",
        pictures =
        {
            {filename = graphics_powellite .. powellite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_powellite .. powellite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_powellite .. powellite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = h
    },
    {
        name = powellite_crushed,
        subgroup = is_ore_processing_a,
        icon = graphics_powellite .. powellite_crushed .. ".png",
        icon_size = 32,
        order = h
    },
    {
        name = powellite_chunks,
        subgroup = is_ore_processing_b,
        icon = graphics_powellite .. powellite_chunks .. ".png",
        icon_size = 32,
        order = h
    },
    {
        name = powellite_crystals,
        subgroup = is_ore_processing_c,
        icon = graphics_powellite .. powellite_crystals .. ".png",
        icon_size = 32,
        order = h
    },
    {
        name = powellite_purified,
        subgroup = is_ore_processing_d,
        icon = graphics_powellite .. powellite_purified .. ".png",
        icon_size = 32,
        order = h
    }
})

-- FLUID


powellite_crushed_sorting = "powellite-crushed-sorting"
powellite_chunks_sorting = "powellite-chunks-sorting"
powellite_crystals_sorting = "powellite-crystals-sorting"
powellite_purified_sorting = "powellite-purified-sorting"
TIMSABA.functions.create_recipes
({
    -- CRUSHED
    {
        name = powellite_crushed,
        category = angels_ore_refining_T1,
        subgroup = is_ore_processing_a,
        icons = THREE_R_I(powellite_ore, powellite_crushed, stone_crushed_angels),
        order = h,
        energy_required = 2, -- Powellite ore -crushing-> Powellite crushed + Stone crushed (crushing)
        ingredients = {{type = item, name = powellite_ore, amount = 2}},
        results =
        {
            {type = item, name = powellite_crushed, amount = 2},
            {type = item, name = stone_crushed_angels, amount = 1}
        },
        main_product = powellite_crushed
    },
    -- CHUNKS
    {
        name = powellite_chunks,
        category = angels_ore_refining_T2,
        subgroup = is_ore_processing_b,
        icons = THREE_D_I(powellite_crushed, nil, water_purified_angels, powellite_chunks, calcium_silicate, water_green_waste),
        order = h,
        energy_required = 2, -- Powellite crushed + Purified water -flotation-> Powellite chunks + Calcium silicate + Chloric waste water
        ingredients =
        {
            {type = item, name = powellite_crushed, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = powellite_chunks, amount = 4},
            {type = item, name = calcium_silicate, amount = 1, probability = 0.5},
            {type = fluid, name = water_green_waste, amount = 60}
        },
        main_product = powellite_chunks
    },
    -- CRYSTALS
    {
        name = powellite_crystals,
        category = angels_ore_refining_T3,
        subgroup = is_ore_processing_c,
        icons = THREE_I(powellite_chunks, hydrochloric_acid_angels, powellite_crystals),
        order = h,
        energy_required = 2, -- Powellite chunks + HCl -leaching-> Powellite crystals
        ingredients =
        {
            {type = item, name = powellite_chunks, amount = 4},
            {type = fluid, name = hydrochloric_acid_angels, amount = 15}
        },
        results = {{type = item, name = powellite_crystals, amount = 4}},
        main_product = powellite_crystals
    },
    -- PURIFIED
    {
        name = powellite_purified,
        category = angels_ore_refining_T4,
        subgroup = is_ore_processing_d,
        icons = TWO_I(powellite_crystals, powellite_purified),
        order = h,
        energy_required = 2, -- Powellite crystals -refinery-> Powellite purified
        ingredients = {{type = item, name = powellite_crystals, amount = 4}},
        results = {{type = item, name = powellite_purified, amount = 4}},
        main_product = powellite_purified
    },
    -- SORTING
    {
        name = powellite_crushed_sorting,
        category = angels_ore_sorting_1,
        subgroup = is_ore_sorting_T1,
        icons = RECYCLING_I(recycling_png, powellite_crushed),
        order = h,
        allow_productivity = true,
        energy_required = 1, -- Powellite crushed (Sorting) / Ca + Cu + Slag
        ingredients = {{type = item, name = powellite_crushed, amount = 4}},
        results =
        {
            {type = item, name = calcium, amount = 2},
            {type = item, name = copper_ore, amount = 1},
            {type = item, name = slag_angels, amount = 1}
        },
        main_product = calcium
    },
    {
        name = powellite_chunks_sorting,
        category = angels_ore_sorting_4,
        subgroup = is_ore_sorting_T2,
        icons = RECYCLING_I(recycling_png, powellite_chunks),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Powellite chunks (Sorting) / Ca + Cu + Pb + W + Slag
        ingredients = {{type = item, name = powellite_chunks, amount = 8}},
        results =
        {
            {type = item, name = calcium, amount = 4},
            {type = item, name = copper_ore, amount = 2},
            {type = item, name = lead_ore_bob, amount = 1},
            {type = item, name = tungsten_ore_bob, amount = 1},
            {type = item, name = slag_angels, amount = 1}
        },
        main_product = calcium
    },
    {
        name = powellite_crystals_sorting,
        category = angels_ore_sorting_5,
        subgroup = is_ore_sorting_T3,
        icons = RECYCLING_I(recycling_png, powellite_crystals),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Powellite crystals (Sorting) / Ca + Cu + Pb + W + Mo + Slag
        ingredients = {{type = item, name = powellite_crystals, amount = 8}},
        results =
        {
            {type = item, name = calcium, amount = 4},
            {type = item, name = copper_ore, amount = 2},
            {type = item, name = lead_ore_bob, amount = 1},
            {type = item, name = tungsten_ore_bob, amount = 1},
            {type = item, name = molybdenum_ore, amount = 1},
            {type = item, name = slag_angels, amount = 1}
        },
        main_product = calcium
    },
    {
        name = powellite_purified_sorting,
        category = ore_sorting_6,
        subgroup = is_ore_sorting_T4,
        icons = RECYCLING_I(recycling_png, powellite_purified),
        order = h,
        allow_productivity = true,
        energy_required = 2, -- Powellite purified (Sorting) / Ca + Cu + Pb + W + Mo + Ho
        ingredients = {{type = item, name = powellite_purified, amount = 8}},
        results =
        {
            {type = item, name = calcium, amount = 4},
            {type = item, name = copper_ore, amount = 2},
            {type = item, name = lead_ore_bob, amount = 1},
            {type = item, name = tungsten_ore_bob, amount = 1},
            {type = item, name = molybdenum_ore, amount = 1},
            {type = item, name = holmium_ore, amount = 1}
        },
        main_product = calcium
    }
})

-- ORE
local powellite_ore_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
powellite_ore_particle.name = powellite_ore .. _particle
for _, picture in pairs(powellite_ore_particle.pictures) do
    picture.tint = {r = 215/256, g = 145/256, b = 45/256, a = 1.000}
end
data:extend({powellite_ore_particle})

data:extend
({
    TIMSABA.functions.create_resource(
        {name = powellite_ore, subgroup = is_ores, order = h, map_color = {r = 180/255, g = 110/255, b = 30/255, a = 1.000}, mining_visualisation_tint = {r = 240/255, g = 175/255, b = 60/255, a = 1.000}},
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    )
})

TIMSABA.functions.create_autoplace_control(powellite_ore)

data_planet[planet_nauvis].map_gen_settings.autoplace_controls[powellite_ore] = {}
if not data_planet[planet_nauvis].map_gen_settings then
    data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity = {settings = {}}
end
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[powellite_ore] = {}

data_resource[powellite_ore].location = planet_nauvis