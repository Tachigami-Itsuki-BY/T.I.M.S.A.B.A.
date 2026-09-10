local graphics_molybdenite = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/"

-- Molybdenite ore / Mo + Re + Ag + Au + W + Se
molybdenite_ore = "molybdenite-ore"
molybdenite_crushed = "molybdenite-crushed"
molybdenite_chunks = "molybdenite-chunks"
molybdenite_crystals = "molybdenite-crystals"
molybdenite_purified = "molybdenite-purified"
TIMSABA.functions.create_items
({
    {
        name = molybdenite_ore,
        subgroup = is_ores,
        icon = graphics_molybdenite .. molybdenite_ore .. ".png",
        pictures =
        {
            {filename = graphics_molybdenite .. molybdenite_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_molybdenite .. molybdenite_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
            {filename = graphics_molybdenite .. molybdenite_ore .. "-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = g
    },
    {
        name = molybdenite_crushed,
        subgroup = is_ore_processing_a,
        icon = graphics_molybdenite .. molybdenite_crushed .. ".png",
        icon_size = 32,
        order = g
    },
    {
        name = molybdenite_chunks,
        subgroup = is_ore_processing_b,
        icon = graphics_molybdenite .. molybdenite_chunks .. ".png",
        icon_size = 32,
        order = g
    },
    {
        name = molybdenite_crystals,
        subgroup = is_ore_processing_c,
        icon = graphics_molybdenite .. molybdenite_crystals .. ".png",
        icon_size = 32,
        order = g
    },
    {
        name = molybdenite_purified,
        subgroup = is_ore_processing_d,
        icon = graphics_molybdenite .. molybdenite_purified .. ".png",
        icon_size = 32,
        order = g
    }
})

-- FLUID


-- RECIPE
molybdenite_crushed_sorting = "molybdenite-crushed-sorting"
molybdenite_chunks_sorting = "molybdenite-chunks-sorting"
molybdenite_crystals_sorting = "molybdenite-crystals-sorting"
molybdenite_purified_sorting = "molybdenite-purified-sorting"
TIMSABA.functions.create_recipes
({
    -- CRUSHED
    {
        name = molybdenite_crushed,
        category = angels_ore_refining_T1,
        subgroup = is_ore_processing_a,
        icons = THREE_R_I(molybdenite_ore, molybdenite_crushed, stone_crushed_angels),
        order = g,
        energy_required = 2, -- Molybdenite ore -crushing-> Molybdenite crushed + Stone crushed (crushing)
        ingredients = {{type = item, name = molybdenite_ore, amount = 2}},
        results =
        {
            {type = item, name = molybdenite_crushed, amount = 2},
            {type = item, name = stone_crushed_angels, amount = 1}
        },
        main_product = molybdenite_crushed
    },
    -- CHUNKS
    {
        name = molybdenite_chunks,
        category = angels_ore_refining_T2,
        subgroup = is_ore_processing_b,
        icons = THREE_D_I(molybdenite_crushed, nil, water_purified_angels, molybdenite_chunks, sulfur, water_red_waste),
        order = g,
        energy_required = 2, -- Molybdenite crushed + Purified water -flotation-> Molybdenite chunks + S + Nitric waste water
        ingredients =
        {
            {type = item, name = molybdenite_crushed, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = molybdenite_chunks, amount = 4},
            {type = item, name = sulfur, amount = 1, probability = 0.5},
            {type = fluid, name = water_red_waste, amount = 60}
        },
        main_product = molybdenite_chunks
    },
    -- CRYSTALS
    {
        name = molybdenite_crystals,
        category = angels_ore_refining_T3,
        subgroup = is_ore_processing_c,
        icons = THREE_I(molybdenite_chunks, nitric_acid_angels, molybdenite_crystals),
        order = g,
        energy_required = 2, -- Molybdenite chunks + HNO₃ -leaching-> Molybdenite crystals
        ingredients =
        {
            {type = item, name = molybdenite_chunks, amount = 4},
            {type = fluid, name = nitric_acid_angels, amount = 15}
        },
        results = {{type = item, name = molybdenite_crystals, amount = 4}},
        main_product = molybdenite_crystals
    },
    -- PURIFIED
    {
        name = molybdenite_purified,
        category = angels_ore_refining_T4,
        subgroup = is_ore_processing_d,
        icons = TWO_I(molybdenite_crystals, molybdenite_purified),
        order = g,
        energy_required = 2, -- Molybdenite crystals -refinery-> Molybdenite purified
        ingredients = {{type = item, name = molybdenite_crystals, amount = 4}},
        results = {{type = item, name = molybdenite_purified, amount = 4}},
        main_product = molybdenite_purified
    },
    -- SORTING
    {
        name = molybdenite_crushed_sorting,
        category = angels_ore_sorting_5,
        subgroup = is_ore_sorting_T1,
        icons = RECYCLING_I(recycling_png, molybdenite_crushed),
        order = g,
        allow_productivity = true,
        energy_required = 1, -- Molybdenite crushed (Sorting) / Mo + Re + S
        ingredients = {{type = item, name = molybdenite_crushed, amount = 4}},
        results =
        {
            {type = item, name = molybdenum_ore, amount = 2},
            {type = item, name = rhenium_ore, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = molybdenum_ore
    },
    {
        name = molybdenite_chunks_sorting,
        category = ore_sorting_6,
        subgroup = is_ore_sorting_T2,
        icons = RECYCLING_I(recycling_png, molybdenite_chunks),
        order = g,
        allow_productivity = true,
        energy_required = 2, -- Molybdenite chunks (Sorting) / Mo + Re + Ag + Au + S
        ingredients = {{type = item, name = molybdenite_chunks, amount = 8}},
        results =
        {
            {type = item, name = molybdenum_ore, amount = 4},
            {type = item, name = rhenium_ore, amount = 2},
            {type = item, name = silver_ore_bob, amount = 1},
            {type = item, name = gold_ore_bob, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = molybdenum_ore
    },
    {
        name = molybdenite_crystals_sorting,
        category = ore_sorting_6,
        subgroup = is_ore_sorting_T3,
        icons = RECYCLING_I(recycling_png, molybdenite_crystals),
        order = g,
        allow_productivity = true,
        energy_required = 2, -- Molybdenite crystals (Sorting) / Mo + Re + Ag + Au + W + S
        ingredients = {{type = item, name = molybdenite_crystals, amount = 8}},
        results =
        {
            {type = item, name = molybdenum_ore, amount = 4},
            {type = item, name = rhenium_ore, amount = 2},
            {type = item, name = silver_ore_bob, amount = 1},
            {type = item, name = gold_ore_bob, amount = 1},
            {type = item, name = tungsten_ore_bob, amount = 1},
            {type = item, name = sulfur, amount = 1}
        },
        main_product = molybdenum_ore
    },
    {
        name = molybdenite_purified_sorting,
        category = ore_sorting_6,
        subgroup = is_ore_sorting_T4,
        icons = RECYCLING_I(recycling_png, molybdenite_purified),
        order = g,
        allow_productivity = true,
        energy_required = 2, -- Molybdenite purified (Sorting) / Mo + Re + Ag + Au + W + Se
        ingredients = {{type = item, name = molybdenite_purified, amount = 8}},
        results =
        {
            {type = item, name = molybdenum_ore, amount = 4},
            {type = item, name = rhenium_ore, amount = 2},
            {type = item, name = silver_ore_bob, amount = 1},
            {type = item, name = gold_ore_bob, amount = 1},
            {type = item, name = tungsten_ore_bob, amount = 1},
            {type = item, name = selenium, amount = 1}
        },
        main_product = molybdenum_ore
    }
})

-- ORE
local molybdenite_ore_particle = table.deepcopy(data_optimized_particle[iron_ore .. _particle])
molybdenite_ore_particle.name = molybdenite_ore .. _particle
for _, picture in pairs(molybdenite_ore_particle.pictures) do
    picture.tint = {r = 110/256, g = 200/256, b = 175/256, a = 1.000}
end
data:extend({molybdenite_ore_particle})

data:extend
({
    TIMSABA.functions.create_resource(
        {name = molybdenite_ore, subgroup = is_ores, order = g, map_color = {r = 45/255, g = 110/255, b = 95/255, a = 1.000}, mining_visualisation_tint = {r = 100/255, g = 210/255, b = 180/255, a = 1.000}},
        {base_density = 8, base_spots_per_km2 = 1.25, candidate_spot_count = 22, random_probability_multiplier = 0.8}
    )
})

TIMSABA.functions.create_autoplace_control(molybdenite_ore)

data_planet[planet_nauvis].map_gen_settings.autoplace_controls[molybdenite_ore] = {}
if not data_planet[planet_nauvis].map_gen_settings then
    data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity = {settings = {}}
end
data_planet[planet_nauvis].map_gen_settings.autoplace_settings.entity.settings[molybdenite_ore] = {}

data_resource[molybdenite_ore].location = planet_nauvis