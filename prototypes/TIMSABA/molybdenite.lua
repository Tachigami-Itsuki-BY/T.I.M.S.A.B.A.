-- Molybdenite ore / Mo + Re + Ag + Au + W + Se
molybdenite_ore = "molybdenite-ore"
molybdenite_crushed = "molybdenite-crushed"
molybdenite_chunks = "molybdenite-chunks"
molybdenite_crystals = "molybdenite-crystals"
molybdenite_purified = "molybdenite-purified"
TIMSABA.functions.create_items
({
    {
        localised_description = {"item-description.molybdenite-ore"},
        name = molybdenite_ore,
        subgroup = is_ores,
        icon = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/molybdenite-ore.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/molybdenite-ore-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/molybdenite-ore-2.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/molybdenite-ore-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = g
    },
    {
        localised_description = {"item-description.molybdenite-crushed"},
        name = molybdenite_crushed,
        subgroup = is_ore_processing_a,
        icon = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/molybdenite-crushed.png",
        icon_size = 32,
        order = g
    },
    {
        localised_description = {"item-description.molybdenite-chunks"},
        name = molybdenite_chunks,
        subgroup = is_ore_processing_b,
        icon = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/molybdenite-chunks.png",
        icon_size = 32,
        order = g
    },
    {
        localised_description = {"item-description.molybdenite-crystals"},
        name = molybdenite_crystals,
        subgroup = is_ore_processing_c,
        icon = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/molybdenite-crystals.png",
        icon_size = 32,
        order = g
    },
    {
        localised_description = {"item-description.molybdenite-purified"},
        name = molybdenite_purified,
        subgroup = is_ore_processing_d,
        icon = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/molybdenite-purified.png",
        icon_size = 32,
        order = g
    }
})

-- FLUID


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
local molybdenite_particle = table.deepcopy(data.raw["optimized-particle"]["iron-ore-particle"])
molybdenite_particle.name = "molybdenite-ore-particle"
for _, picture in pairs(molybdenite_particle.pictures) do
    picture.tint = {r = 110/256, g = 200/256, b = 175/256, a = 1.000}
end
data:extend({molybdenite_particle})

local resource_autoplace = require("resource-autoplace")
local base_tile_sounds = require("__base__.prototypes.tile.tile-sounds")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")
local function resource(resource_parameters, autoplace_parameters)
    return
    {
        localised_description = resource_parameters.localised_description,
        factoriopedia_description = resource_parameters.factoriopedia_description,
        type = "resource",
        name = resource_parameters.name,
        subgroup = resource_parameters.subgroup,
        icon = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/" .. resource_parameters.name .. ".png",
        order = resource_parameters.order,
        category = resource_parameters.category,
        minable = resource_parameters.minable or
        {
            mining_particle = resource_parameters.name .. "-particle",
            mining_time = resource_parameters.mining_time,
            result = resource_parameters.name
        },
        flags = {"placeable-neutral"},
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        walking_sound = resource_parameters.walking_sound,
        collision_mask = resource_parameters.collision_mask,
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        resource_patch_search_radius = resource_parameters.resource_patch_search_radius,
        autoplace = autoplace_parameters.probability_expression ~= nil and
        {
            order = resource_parameters.order,
            probability_expression = autoplace_parameters.probability_expression,
            richness_expression = autoplace_parameters.richness_expression
        }
            or resource_autoplace.resource_autoplace_settings
        {
            name = resource_parameters.name,
            order = resource_parameters.order,
            autoplace_control_name = resource_parameters.autoplace_control_name,
            base_density = autoplace_parameters.base_density,
            base_spots_per_km = autoplace_parameters.base_spots_per_km2,
            regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
            starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
            candidate_spot_count = autoplace_parameters.candidate_spot_count,
            tile_restriction = autoplace_parameters.tile_restriction
        },
        stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
        stages =
        {
            sheet =
            {
                filename = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/" .. resource_parameters.name .. "/" .. resource_parameters.name .. ".png",
                priority = extra_high,
                size = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        },
        map_color = resource_parameters.map_color,
        mining_visualisation_tint = resource_parameters.mining_visualisation_tint,
        factoriopedia_simulation = resource_parameters.factoriopedia_simulation
    }
end

data:extend
({
    {
        localised_name = {"", "[entity=molybdenite-ore] ", {"entity-name.molybdenite"}},
        type = "autoplace-control",
        name = molybdenite_ore,
        order = a_h,
        category = "resource",
        richness = true,
        can_be_disabled = true
    }
})

data:extend
({
    resource(
        {
            localised_description = {"entity-description.molybdenite-ore"},
            factoriopedia_description = "",
            name = molybdenite_ore,
            subgroup = is_ores,
            order = g,
            mining_time = 4,
            walking_sound = base_tile_sounds.walking.ore,
            map_color = {r = 45/255, g = 110/255, b = 95/255, a = 1.000},
            mining_visualisation_tint = {r = 100/255, g = 210/255, b = 180/255, a = 1.000},
            autoplace_control_name = molybdenite_ore,
        },
        {
            base_density = 8,
            base_spots_per_km2 = 1.25,
            candidate_spot_count = 22,
            random_probability_multiplier = 0.8
        }
    )
})

local nauvis = "nauvis"
if data_planet[nauvis] then
    data_planet[nauvis].map_gen_settings.autoplace_controls[molybdenite_ore] = {}
    if not data_planet[nauvis].map_gen_settings then
        data_planet[nauvis].map_gen_settings.autoplace_settings.entity = {settings = {}}
    end
    data_planet[nauvis].map_gen_settings.autoplace_settings.entity.settings[molybdenite_ore] = {}
end

data_resource[molybdenite_ore].location = nauvis