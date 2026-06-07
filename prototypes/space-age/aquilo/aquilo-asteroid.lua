-- ITEM
local antimonite_asteroid_chunk = "antimonite-asteroid-chunk"
local germanite_asteroid_chunk = "germanite-asteroid-chunk"
data:extend
({
    {
        type = item,
        name = antimonite_asteroid_chunk,
        subgroup = is_space_environment_4,
        icon = "__TIMSABA__/graphics/entity/asteroid/antimonite-asteroid-chunk.png",
        order = e,
        stack_size = 64,
        weight = 15625
    },
    {
        type = item,
        name = germanite_asteroid_chunk,
        subgroup = is_space_environment_5,
        icon = "__TIMSABA__/graphics/entity/asteroid/germanite-asteroid-chunk.png",
        order = e,
        stack_size = 64,
        weight = 15625
    }
})

--[[data:extend
({
    {
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/asteroid/.png",
        order = ,
        stack_size = 64,
        weight = 15625
    }
})]]

-- RECIPE
antimonite_asteroid_crushing = "antimonite-asteroid-crushing"
germanite_asteroid_crushing = "germanite-asteroid-crushing"
data:extend
({
    {
        type = recipe,
        name = antimonite_asteroid_crushing,
        category = crushing,
        subgroup = is_space_environment_4,
        icons = TWO_I(antimonite_asteroid_chunk, antimonite_ore),
        order = e_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients = {{type = item, name = antimonite_asteroid_chunk, amount = 1}},
        results = {{type = item, name = antimonite_ore, amount = 16}},
        main_product = antimonite_ore
    },
    {
        type = recipe,
        name = germanite_asteroid_crushing,
        category = crushing,
        subgroup = is_space_environment_5,
        icons = TWO_I(germanite_asteroid_chunk, germanite_ore),
        order = e_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients = {{type = item, name = germanite_asteroid_chunk, amount = 1}},
        results = {{type = item, name = germanite_ore, amount = 16}},
        main_product = germanite_ore
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

local particle_sounds = require("__base__.prototypes.entity.sounds")
local particle_animations = require("__space-age__/prototypes/particle-animations")
local util = require("util")
local default_ended_in_water_trigger_effect = function()
    return
    {
        {
            type = "create-particle",
            probability = 1,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "tintable-water-particle",
            apply_tile_tint = "secondary",
            offset_deviation = {{-0.05, -0.05}, {0.05, 0.05}},
            initial_height = 0,
            initial_height_deviation = 0.02,
            initial_vertical_speed = 0.05,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.01,
            speed_from_center_deviation = 0.006,
            frame_speed = 1,
            frame_speed_deviation = 0,
            tail_length = 2,
            tail_length_deviation = 1,
            tail_width = 3,
            only_when_visible = true
        },
        {
            type = "create-particle",
            repeat_count = 10,
            repeat_count_deviation = 6,
            probability = 0.03,
            affects_target = false,
            show_in_tooltip = false,
            particle_name = "tintable-water-particle",
            apply_tile_tint = "primary",
            offsets =
            {
                {0, 0},
                {0.01563, -0.09375},
                {0.0625, 0.09375},
                {-0.1094, 0.0625}
            },
            offset_deviation = {{-0.2969, -0.1992}, {0.2969, 0.1992}},
            initial_height = 0,
            initial_height_deviation = 0.02,
            initial_vertical_speed = 0.053,
            initial_vertical_speed_deviation = 0.005,
            speed_from_center = 0.02,
            speed_from_center_deviation = 0.006,
            frame_speed = 1,
            frame_speed_deviation = 0,
            tail_length = 9,
            tail_length_deviation = 0,
            tail_width = 1,
            only_when_visible = true
        },
        {
            type = "play-sound",
            sound = particle_sounds.small_splash
        }
    }
end
local make_particle = function(params)
    if not params then error("No params given to make_particle function") end
    local name = params.name or error("No name given")
    local ended_in_water_trigger_effect = params.ended_in_water_trigger_effect or default_ended_in_water_trigger_effect()
    if params.ended_in_water_trigger_effect == false then
        ended_in_water_trigger_effect = nil
    end
    local particle =
    {
        type = "optimized-particle",
        name = name,
        life_time = params.life_time or (60 * 15),
        fade_away_duration = params.fade_away_duration,
        render_layer = params.render_layer or "projectile",
        render_layer_when_on_ground = params.render_layer_when_on_ground or "corpse",
        regular_trigger_effect_frequency = params.regular_trigger_effect_frequency or 2,
        regular_trigger_effect = params.regular_trigger_effect,
        ended_in_water_trigger_effect = ended_in_water_trigger_effect,
        pictures = params.pictures,
        shadows = params.shadows,
        draw_shadow_when_on_ground = params.draw_shadow_when_on_ground,
        movement_modifier_when_on_ground = params.movement_modifier_when_on_ground,
        movement_modifier = params.movement_modifier,
        vertical_acceleration = params.vertical_acceleration,
        mining_particle_frame_speed = params.mining_particle_frame_speed,
    }
    return particle
end
data:extend({
    -- ANTIMONITE
    -- BIG (12 x 10)
    make_particle {
        name = "antimonite-asteroid-particle-big",
        pictures =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/antimonite-asteroid-particle-big.png",
            width = 36, height = 36, variation_count = 120, line_length = 12, scale = 0.5
        }},
        shadows =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/antimonite-asteroid-particle-big.png",
            width = 36, height = 36, variation_count = 120, line_length = 12, scale = 0.5, tint = {0, 0, 0, 0.5}, shift = {0.2, 0.2}
        }},
        life_time = 240, ended_in_water_trigger_effect = false
    },
    -- MEDIUM (12 x 10)
    make_particle {
        name = "antimonite-asteroid-chunk-particle-medium",
        pictures =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/antimonite-asteroid-particle-medium.png",
            width = 22, height = 20, variation_count = 120, line_length = 12, scale = 0.8
        }},
        shadows =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/antimonite-asteroid-particle-medium.png",
            width = 22, height = 20, variation_count = 120, line_length = 12, scale = 0.8, tint = {0, 0, 0, 0.5}, shift = {0.15, 0.15}
        }},
        life_time = 180, ended_in_water_trigger_effect = false
    },
    -- SMALL (12 x 10)
    make_particle {
        name = "antimonite-asteroid-particle-small",
        pictures =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/antimonite-asteroid-particle-small.png",
            width = 14, height = 16, variation_count = 120, line_length = 12, scale = 1
        }},
        shadows =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/antimonite-asteroid-particle-small.png",
            width = 14, height = 16, variation_count = 120, line_length = 12, scale = 1, tint = {0, 0, 0, 0.5}, shift = {0.1, 0.1}
        }},
        life_time = 120, ended_in_water_trigger_effect = false
    },
    -- TOP BIG (16 x 6)
    make_particle {
        name = "antimonite-asteroid-particle-top-big",
        pictures =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/antimonite-asteroid-particle-top-big.png",
            width = 82, height = 86, variation_count = 96, line_length = 16, scale = 0.5
        }},
        shadows =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/antimonite-asteroid-particle-top-big.png",
            width = 82, height = 86, variation_count = 96, line_length = 16, scale = 0.5, tint = {0, 0, 0, 0.5}, shift = {0.3, 0.3}
        }},
        life_time = 80, render_layer = "air-object", movement_modifier = 0.1, ended_in_water_trigger_effect = false
    },
    -- TOP SMALL (16 x 6)
    make_particle {
        name = "antimonite-asteroid-particle-top-small",
        pictures =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/antimonite-asteroid-particle-top-small.png",
            width = 62, height = 56, variation_count = 96, line_length = 16, scale = 0.5
        }},
        shadows =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/antimonite-asteroid-particle-top-small.png",
            width = 62, height = 56, variation_count = 96, line_length = 16, scale = 0.5, tint = {0, 0, 0, 0.5}, shift = {0.2, 0.2}
        }},
        life_time = 80, render_layer = "air-object", movement_modifier = 0.1, ended_in_water_trigger_effect = false
    },
    -- GERMANITE
    -- BIG (12 x 10)
    make_particle {
        name = "germanite-asteroid-particle-big",
        pictures =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/germanite-asteroid-particle-big.png",
            width = 36, height = 36, variation_count = 120, line_length = 12, scale = 0.5
        }},
        shadows =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/germanite-asteroid-particle-big.png",
            width = 36, height = 36, variation_count = 120, line_length = 12, scale = 0.5, tint = {0, 0, 0, 0.5}, shift = {0.2, 0.2}
        }},
        life_time = 240, ended_in_water_trigger_effect = false
    },
    -- MEDIUM (12 x 10)
    make_particle {
        name = "germanite-asteroid-chunk-particle-medium",
        pictures =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/germanite-asteroid-particle-medium.png",
            width = 22, height = 20, variation_count = 120, line_length = 12, scale = 0.8
        }},
        shadows =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/germanite-asteroid-particle-medium.png",
            width = 22, height = 20, variation_count = 120, line_length = 12, scale = 0.8, tint = {0, 0, 0, 0.5}, shift = {0.15, 0.15}
        }},
        life_time = 180, ended_in_water_trigger_effect = false
    },
    -- SMALL (12 x 10)
    make_particle {
        name = "germanite-asteroid-particle-small",
        pictures =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/germanite-asteroid-particle-small.png",
            width = 14, height = 16, variation_count = 120, line_length = 12, scale = 1
        }},
        shadows =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/germanite-asteroid-particle-small.png",
            width = 14, height = 16, variation_count = 120, line_length = 12, scale = 1, tint = {0, 0, 0, 0.5}, shift = {0.1, 0.1}
        }},
        life_time = 120, ended_in_water_trigger_effect = false
    },
    -- TOP BIG (16 x 6)
    make_particle {
        name = "germanite-asteroid-particle-top-big",
        pictures =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/germanite-asteroid-particle-top-big.png",
            width = 82, height = 86, variation_count = 96, line_length = 16, scale = 0.5
        }},
        shadows =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/germanite-asteroid-particle-top-big.png",
            width = 82, height = 86, variation_count = 96, line_length = 16, scale = 0.5, tint = {0, 0, 0, 0.5}, shift = {0.3, 0.3}
        }},
        life_time = 80, render_layer = "air-object", movement_modifier = 0.1, ended_in_water_trigger_effect = false
    },
    -- TOP SMALL (16 x 6)
    make_particle {
        name = "germanite-asteroid-particle-top-small",
        pictures =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/germanite-asteroid-particle-top-small.png",
            width = 62, height = 56, variation_count = 96, line_length = 16, scale = 0.5
        }},
        shadows =
        {{
            filename = "__TIMSABA__/graphics/entity/particles/asteroid-particle/germanite-asteroid-particle-top-small.png",
            width = 62, height = 56, variation_count = 96, line_length = 16, scale = 0.5, tint = {0, 0, 0, 0.5}, shift = {0.2, 0.2}
        }},
        life_time = 80, render_layer = "air-object", movement_modifier = 0.1, ended_in_water_trigger_effect = false
    }
})

local types =
{
    antimonite = "metallic",
    germanite = "carbonic"
}
local sizes = {"1", "2", "3", "4", "5"}
for my_type, source_type in pairs(types) do
    for _, s in pairs(sizes) do
        local source_name = source_type .. "-asteroid-explosion-" .. s
        local source_explosion = data.raw["explosion"][source_name]
        if source_explosion then
            local explosion = util.table.deepcopy(source_explosion)
            explosion.name = my_type .. "-asteroid-explosion-" .. s
            data:extend({explosion})
        end
    end
end

local simulations = require("prototypes.factoriopedia-simulations")
local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require ("__space-age__.prototypes.entity.sounds")
local asteroid_sizes = {"chunk", "small", "medium", "big", "huge"}
local shared_resistances =
{
    physical =
    {
        decrease = {0, 0, 0, 2000, 3000},
        percent = {0, 0, 10, 10, 10}
    },
    explosion =
    {
        decrease = {0, 0, 0, 0, 0},
        percent = {0, 50, 30, 10, 99}
    },
    laser =
    {
        decrease = {0, 0, 0, 0, 0},
        percent = {0, 20, 90, 95, 99}
    }
}
local shared_health = {0, 100, 400, 2000, 5000}
local shared_mass = {0, 200000, 500000, 5000000, 100000000}
local asteroids_data =
{
    antimonite =
    {
        order = a,
        subgroup = is_space_environment_4,
        mass = shared_mass,
        max_health = shared_health,
        resistances = shared_resistances,
        shading_data =
        {
            normal_strength = 1.2,
            light_width = 0,
            brightness = 0.9,
            specular_strength = 2,
            specular_power = 2,
            specular_purity = 0,
            sss_contrast = 1,
            sss_amount = 0,
            lights = {
                { color = {0.96,1,0.99}, direction = {0.7,0.6,-1} },
                { color = {0.57,0.33,0.23}, direction = {-0.72,-0.46,1} },
                { color = {0.1,0.1,0.1}, direction = {-0.4,-0.25,-0.5} },
            },
            ambient_light = {0.01, 0.01, 0.01}
        }
    },
    germanite =
    {
        order = a,
        subgroup = is_space_environment_5,
        mass = shared_mass,
        max_health = shared_health,
        resistances = shared_resistances,
        shading_data =
        {
            normal_strength = 1,
            light_width = 0,
            brightness = 0.9,
            specular_strength = 2.5,
            specular_power = 0.8,
            specular_purity = 0,
            sss_contrast = 1,
            sss_amount = 0,
            lights =
            {
                {color = {1,1,1}, direction = {0.7,0.6,-1}},
                {color = {0.16,0.14,0.22}, direction = {-1,-1, 1}},
            },
            ambient_light = {0.01, 0.01, 0.01}
        }
    }
}
local collision_radiuses =
{
    0.4, -- chunk
    0.5, -- small
    1, -- medium
    2, -- big
    4.5  -- huge
    }
local graphics_scale =
{
    0.5, -- chunk
    0.5, -- small
    0.5, -- medium
    0.6, -- big
    0.75 -- huge
}
local sizes_resolution =
{
    {50,1}, -- chunk
    {128,1}, -- small
    {230,0}, -- medium
    {304,6}, -- big
    {512,0} -- huge
}
local size_letters =
{
    small = a,
    medium = b,
    big = c,
    huge = d,
    chunk = e
}
local function asteroid_variation(asteroid_type, suffix, scale, size)
    return
    {
        color_texture =
        {
            filename = "__TIMSABA__/graphics/entity/asteroid/" .. asteroid_type .. "/" .. asteroid_sizes[size] .. "/" .. "asteroid-" .. asteroid_type .. "-" .. asteroid_sizes[size] .. "-colour-" .. suffix .. ".png",
            size =  sizes_resolution[size][1],
            scale = scale
        },
        shadow_shift = {0.25 * size, 0.25 * size},
        normal_map =
        {
            filename = "__TIMSABA__/graphics/entity/asteroid/" .. asteroid_type .. "/" .. asteroid_sizes[size].."/".."asteroid-" .. asteroid_type .. "-" .. asteroid_sizes[size] .. "-normal-" .. suffix .. ".png",
            premul_alpha = false,
            size = sizes_resolution[size][1],
            scale = scale
        },
        roughness_map =
        {
            filename = "__TIMSABA__/graphics/entity/asteroid/" .. asteroid_type .. "/" .. asteroid_sizes[size] .. "/" .. "asteroid-" .. asteroid_type .. "-" .. asteroid_sizes[size] .. "-roughness-" .. suffix .. ".png",
            premul_alpha = false,
            size = sizes_resolution[size][1],
            scale = scale
        }
    }
end
local function asteroid_graphics_set(rotation_speed, shading_data, variations)
    local result = table.deepcopy(shading_data)
    result.rotation_speed = rotation_speed
    result.variations = variations
    return result
end
for asteroid_size, asteroid_size_name in pairs(asteroid_sizes) do
    for asteroid_type, asteroid_data in pairs(asteroids_data) do
        local graphics_scale = graphics_scale[asteroid_size]
        local collision_radius = collision_radiuses[asteroid_size]
        local selection_radius = collision_radius * 1.1 + 0.1
        local max_health = asteroid_data.max_health[asteroid_size] > 0 and asteroid_data.max_health[asteroid_size] or nil
        local asteroid_name, resistances, factoriopedia_sim
        local dying_trigger_effects =
        {
            {
                type = asteroid_size_name == "chunk" and "create-entity" or "create-explosion",
                entity_name = asteroid_type.."-asteroid-explosion-"..asteroid_size,
                only_when_visible = true
            }
        }
        if asteroid_size_name == "chunk" then
        asteroid_name = asteroid_type .. "-asteroid-chunk"
        else
        asteroid_name = asteroid_size_name .. "-" .. asteroid_type .. "-asteroid"
        factoriopedia_sim = simulations["factoriopedia_" .. asteroid_size_name .. "_" .. asteroid_type .. "_asteroid"]
        local spread = collision_radius * 0.5
        if asteroid_size == 2 then
            table.insert(dying_trigger_effects,
            {
                type = "create-asteroid-chunk",
                asteroid_name = asteroid_type .. "-asteroid-chunk",
                offset_deviation = {{-spread, -spread}, {spread, spread}},
                offsets =
                {
                    {-spread/2, -spread/4},
                    {spread/2, -spread/4}
                }
            })
        else
            table.insert(dying_trigger_effects,
            {
                type = "create-entity",
                entity_name = asteroid_sizes[asteroid_size-1] .. "-" .. asteroid_type .. "-asteroid",
                offset_deviation = {{-spread, -spread}, {spread, spread}},
                offsets =
                {
                    {-spread, -spread/4},
                    {0, -spread/2},
                    {spread, -spread/4}
                }
            })
        end
        resistances = {}
            for damage_name, damage_type in pairs(data.raw["damage-type"]) do
                if asteroid_data.resistances[damage_name] then
                    table.insert(resistances,
                    {
                        type = damage_name,
                        decrease = asteroid_data.resistances[damage_name].decrease[asteroid_size],
                        percent = asteroid_data.resistances[damage_name].percent[asteroid_size]
                    })
                else
                    if damage_name ~= "impact" and damage_name ~= "poison" and damage_name ~= "acid" then
                        table.insert(resistances,
                        {
                            type = damage_name,
                            percent = 100
                        })
                    end
                end
            end
        end
        local variations = {}
        if (asteroid_type == "antimonite") then
            if (asteroid_size_name == "chunk") then
                table.insert(variations, asteroid_variation(asteroid_type, "01", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "02", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "03", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "04", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "05", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "06", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "07", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "08", graphics_scale, asteroid_size))
            elseif (asteroid_size_name == "small") then
                table.insert(variations, asteroid_variation(asteroid_type, "01", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "02", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "03", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "04", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "05", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "06", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "07", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "08", graphics_scale, asteroid_size))
            elseif (asteroid_size_name == "medium") then
                table.insert(variations, asteroid_variation(asteroid_type, "01", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "02", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "03", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "04", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "05", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "06", graphics_scale, asteroid_size))
            elseif (asteroid_size_name == "big") then
                table.insert(variations, asteroid_variation(asteroid_type, "01", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "02", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "03", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "04", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "05", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "06", graphics_scale, asteroid_size))
            elseif (asteroid_size_name == "huge") then
                table.insert(variations, asteroid_variation(asteroid_type, "01", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "02", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "03", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "04", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "05", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "06", graphics_scale, asteroid_size))
            end
        elseif (asteroid_type == "germanite") then
            if (asteroid_size_name == "chunk") then
                table.insert(variations, asteroid_variation(asteroid_type, "01", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "02", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "03", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "04", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "05", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "06", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "09", graphics_scale, asteroid_size))
            elseif (asteroid_size_name == "small") then
                table.insert(variations, asteroid_variation(asteroid_type, "01", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "02", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "03", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "04", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "05", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "06", graphics_scale, asteroid_size))
            elseif (asteroid_size_name == "medium") then
                table.insert(variations, asteroid_variation(asteroid_type, "01", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "02", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "03", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "04", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "05", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "06", graphics_scale, asteroid_size))
            elseif (asteroid_size_name == "big") then
                table.insert(variations, asteroid_variation(asteroid_type, "01", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "02", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "03", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "04", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "05", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "06", graphics_scale, asteroid_size))
            elseif (asteroid_size_name == "huge") then
                table.insert(variations, asteroid_variation(asteroid_type, "01", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "02", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "03", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "04", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "05", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "06", graphics_scale, asteroid_size))
                table.insert(variations, asteroid_variation(asteroid_type, "07", graphics_scale, asteroid_size))
            end
        end
        data:extend
        {
            {
                type = asteroid_size_name == "chunk" and "asteroid-chunk" or "asteroid",
                name = asteroid_name,
                subgroup = (asteroid_type == "antimonite") and is_space_environment_4 or is_space_environment_5,
                order = size_letters[asteroid_size_name],
                overkill_fraction = asteroid_size_name ~= "chunk" and 0.01 or nil,
                localised_description = {"entity-description." .. asteroid_type .. "-asteroid"},
                icon = "__TIMSABA__/graphics/entity/asteroid/" .. asteroid_name .. ".png",
                icon_size = 64,
                selection_box = asteroid_size_name ~= "chunk" and {{-selection_radius, -selection_radius}, {selection_radius, selection_radius}} or nil,
                collision_box = asteroid_size_name ~= "chunk" and {{-collision_radius, -collision_radius}, {collision_radius, collision_radius}} or nil,
                collision_mask = asteroid_size_name ~= "chunk" and {layers = {object = true}, not_colliding_with_itself = true} or nil,
                graphics_set = asteroid_graphics_set(0.0003 * (6 - asteroid_size), asteroids_data[asteroid_type].shading_data, variations),
                dying_trigger_effect = dying_trigger_effects,
                factoriopedia_simulation = factoriopedia_sim,
                max_health = asteroid_size_name ~= "chunk" and asteroid_data.max_health[asteroid_size] or nil,
                mass = asteroid_size_name ~= "chunk" and asteroid_data.mass[asteroid_size] or nil,
                resistances = resistances,
                flags = asteroid_size_name ~= "chunk" and {"placeable-enemy", "placeable-off-grid", "not-repairable", "not-on-map"} or nil,
                minable = asteroid_size_name == "chunk" and {mining_time = 0.2, result = asteroid_name, mining_particle = asteroid_type .. "-asteroid-chunk-particle-medium"} or nil
            }
        }
    end
end