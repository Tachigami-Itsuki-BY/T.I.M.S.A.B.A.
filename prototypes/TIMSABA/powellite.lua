-- Powellite ore / Ca + Cu + Pb + W + Mo + Ho
powellite_ore = "powellite-ore"
powellite_crushed = "powellite-crushed"
powellite_chunks = "powellite-chunks"
powellite_crystals = "powellite-crystals"
powellite_purified = "powellite-purified"
data:extend
({
    {
        localised_description = {"item-description.powellite-ore"},
        type = item,
        name = powellite_ore,
        subgroup = is_ores,
        icon = "__TIMSABA__/graphics/icons/angels/resource/powellite/powellite-ore.png",
        order = h,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/angels/resource/powellite/powellite-ore-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/resource/powellite/powellite-ore-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/angels/resource/powellite/powellite-ore-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = {"item-description.powellite-crushed"},
        type = item,
        name = powellite_crushed,
        subgroup = is_ore_processing_a,
        icon = "__TIMSABA__/graphics/icons/angels/resource/powellite/powellite-crushed.png",
        icon_size = 32,
        order = h,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = {"item-description.powellite-chunk"},
        type = item,
        name = powellite_chunks,
        subgroup = is_ore_processing_b,
        icon = "__TIMSABA__/graphics/icons/angels/resource/powellite/powellite-chunks.png",
        icon_size = 32,
        order = h,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = {"item-description.powellite-crystal"},
        type = item,
        name = powellite_crystals,
        subgroup = is_ore_processing_c,
        icon = "__TIMSABA__/graphics/icons/angels/resource/powellite/powellite-crystals.png",
        icon_size = 32,
        order = h,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = {"item-description.powellite-pure"},
        type = item,
        name = powellite_purified,
        subgroup = is_ore_processing_d,
        icon = "__TIMSABA__/graphics/icons/angels/resource/powellite/powellite-purified.png",
        icon_size = 32,
        order = h,
        stack_size = 200,
        weight = 5000
    }
})

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""),
        flow_color = TIMSABA.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

powellite_crushed_sorting = "powellite-crushed-sorting"
powellite_chunks_sorting = "powellite-chunks-sorting"
powellite_crystals_sorting = "powellite-crystals-sorting"
powellite_purified_sorting = "powellite-purified-sorting"
data:extend
({
    -- CRUSHED
    {
        type = recipe,
        name = powellite_crushed,
        category = angels_ore_refining_T1,
        subgroup = is_ore_processing_a,
        icons = THREE_R_I(powellite_ore, powellite_crushed, stone_crushed_angels),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = powellite_chunks,
        category = angels_ore_refining_T2,
        subgroup = is_ore_processing_b,
        icons = THREE_D_I(powellite_crushed, nil, water_purified_angels, powellite_chunks, calcium_silicate, water_green_waste),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Powellite crushed + Purified water -flotation-> Powellite chunks + Calcium silicate + Chloric waste water
        ingredients =
        {
            {type = item, name = powellite_crushed, amount = 2},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = powellite_chunks, amount = 2},
            {type = item, name = calcium_silicate, amount = 1, probability = 0.5},
            {type = fluid, name = water_green_waste, amount = 60}
        },
        main_product = powellite_chunks
    },
    -- CRYSTALS
    {
        type = recipe,
        name = powellite_crystals,
        category = angels_ore_refining_T3,
        subgroup = is_ore_processing_c,
        icons = THREE_I(powellite_chunks, hydrochloric_acid_angels, powellite_crystals),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Powellite chunks + HCl -leaching-> Powellite crystals
        ingredients =
        {
            {type = item, name = powellite_chunks, amount = 2},
            {type = fluid, name = hydrochloric_acid_angels, amount = 15}
        },
        results = {{type = item, name = powellite_crystals, amount = 2}},
        main_product = powellite_crystals
    },
    -- PURIFIED
    {
        type = recipe,
        name = powellite_purified,
        category = angels_ore_refining_T4,
        subgroup = is_ore_processing_d,
        icons = TWO_I(powellite_crystals, powellite_purified),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2, -- Powellite crystals -refinery-> Powellite purified
        ingredients = {{type = item, name = powellite_crystals, amount = 4}},
        results = {{type = item, name = powellite_purified, amount = 4}},
        main_product = powellite_purified
    },
    -- SORTING
    {
        type = recipe,
        name = powellite_crushed_sorting,
        category = angels_ore_sorting_1,
        subgroup = is_ore_sorting_T1,
        icons = RECYCLING_I(recycling_png, powellite_crushed),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = powellite_chunks_sorting,
        category = angels_ore_sorting_4,
        subgroup = is_ore_sorting_T2,
        icons = RECYCLING_I(recycling_png, powellite_chunks),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = powellite_crystals_sorting,
        category = ore_sorting_6,
        subgroup = is_ore_sorting_T3,
        icons = RECYCLING_I(recycling_png, powellite_crystals),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        type = recipe,
        name = powellite_purified_sorting,
        category = ore_sorting_6,
        subgroup = is_ore_sorting_T4,
        icons = RECYCLING_I(recycling_png, powellite_purified),
        order = h,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
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
        energy_required = ,
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]

-- ORE
local powellite_particle = table.deepcopy(data.raw["optimized-particle"]["iron-ore-particle"])
powellite_particle.name = "powellite-ore-particle"
for _, picture in pairs(powellite_particle.pictures) do
    picture.tint = {r = 215/256, g = 145/256, b = 45/256, a = 1.000}
end
data:extend({powellite_particle})

local resource_autoplace = require("resource-autoplace")
local base_tile_sounds = require("__base__.prototypes.tile.tile-sounds")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")
local function resource(resource_parameters, autoplace_parameters)
    return
    {
        localised_description = resource_parameters.localised_description,
        type = "resource",
        name = resource_parameters.name,
        subgroup = resource_parameters.subgroup,
        icon = "__TIMSABA__/graphics/icons/angels/resource/powellite/" .. resource_parameters.name .. ".png",
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
                filename = "__TIMSABA__/graphics/icons/angels/resource/powellite/" .. resource_parameters.name .. "/" .. resource_parameters.name .. ".png",
                priority = "extra-high",
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
        localised_name = {"", "[entity=powellite-ore] ", {"entity-name.powellite"}},
        type = "autoplace-control",
        name = powellite_ore,
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
            localised_description = {"entity-description.powellite-ore"},
            name = powellite_ore,
            subgroup = is_ores,
            order = g,
            mining_time = 1,
            walking_sound = base_tile_sounds.walking.ore,
            map_color = {r = 180/255, g = 110/255, b = 30/255, a = 1.000},
            mining_visualisation_tint = {r = 240/255, g = 175/255, b = 60/255, a = 1.000},
            autoplace_control_name = powellite_ore,
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
    data_planet[nauvis].map_gen_settings.autoplace_controls[powellite_ore] = {}
    if not data_planet[nauvis].map_gen_settings then
        data_planet[nauvis].map_gen_settings.autoplace_settings.entity = {settings = {}}
    end
    data_planet[nauvis].map_gen_settings.autoplace_settings.entity.settings[powellite_ore] = {}
end

data_resource[powellite_ore].location = nauvis