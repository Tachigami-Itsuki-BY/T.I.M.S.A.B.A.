local assembling_machine = "assembling-machine"
local angels_mod = "angels"
local big = "big"
local medium = "medium"
local big_tint = "big-tint"
local refining = "refining"
local petrochem = "petrochem"
if not (reskins.angels and reskins.angels.triggers.refining.entities) then
	return
end
if not (reskins.angels and reskins.angels.triggers.smelting.entities) then
	return
end
if not (reskins.angels and reskins.angels.triggers.petrochem.entities) then
	return
end

-- ORE CRUSHER
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "ore-crusher",
        base_entity_name = assembling_machine_1,
        mod = angels_mod,
        particles = {[big] = 1, [medium] = 2},
        group = refining,
        make_remnants = false
    }
    local tier_map = {[ore_crusher_4] = {tier = 4}}
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.defer_to_data_updates = map.defer_to_data_updates
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation =
        {
            layers =
            {
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/ore-crusher/ore-crusher-base.png",
                    priority = extra_high,
                    width = 189,
                    height = 214,
                    frame_count = 16,
                    line_length = 4,
                    shift = util.by_pixel(-0.5, -5),
                    animation_speed = 0.5,
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/ore-crusher/ore-crusher-mask.png",
                    priority = extra_high,
                    width = 189,
                    height = 214,
                    repeat_count = 16,
                    shift = util.by_pixel(-0.5, -5),
                    tint = inputs.tint,
                    animation_speed = 0.5,
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/ore-crusher/ore-crusher-highlights.png",
                    priority = extra_high,
                    width = 189,
                    height = 214,
                    repeat_count = 16,
                    shift = util.by_pixel(-0.5, -5),
                    blend_mode = reskins.lib.settings.blend_mode,
                    animation_speed = 0.5,
                    scale = 0.5
                },
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/ore-crusher/ore-crusher-shadow.png",
                    priority = extra_high,
                    width = 282,
                    height = 140,
                    repeat_count = 16,
                    shift = util.by_pixel(24, 17.5),
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    scale = 0.5
                }
            }
        }
        ::continue::
    end
end

-- ORE FLOTATION CELL
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "ore-flotation-cell",
        base_entity_name = assembling_machine_1,
        mod = angels_mod,
        particles = {[big] = 1, [medium] = 2},
        group = refining,
        make_remnants = false
    }
    local tier_map = {[ore_floatation_cell_4] = {tier = 4, prog_tier = 5}}
    local function return_pipe_overlay(direction)
        local animation =
        {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = extra_high,
            width = 333,
            height = 363,
            x = direction * 333,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5
        }
        return animation
    end
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.working_visualisations =
        {
            {
                always_draw = true,
                animation =
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-idle.png",
                    priority = extra_high,
                    width = 166,
                    height = 117,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel_hr(62, 5),
                    scale = 0.5
                }
            },
            {
                fadeout = true,
                animation =
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-base.png",
                    priority = extra_high,
                    width = 166,
                    height = 117,
                    frame_count = 64,
                    line_length = 8,
                    shift = util.by_pixel_hr(62, 5),
                    scale = 0.5
                }
            },
            {
                fadeout = true,
                apply_recipe_tint = "primary",
                animation =
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-water-tintable.png",
                    priority = extra_high,
                    width = 166,
                    height = 117,
                    frame_count = 64,
                    line_length = 8,
                    shift = util.by_pixel_hr(62, 5),
                    scale = 0.5
                }
            },
            {
                fadeout = true,
                apply_recipe_tint = "secondary",
                animation =
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-froth-tintable.png",
                    priority = extra_high,
                    width = 166,
                    height = 117,
                    frame_count = 64,
                    line_length = 8,
                    shift = util.by_pixel_hr(62, 5),
                    scale = 0.5
                }
            },
            {
                always_draw = true,
                animation =
                {
                    layers =
                    {
                        {
                            filename = "__reskins-angels__/graphics/entity/refining/ore-flotation-cell/ore-flotation-cell-mask.png",
                            priority = extra_high,
                            width = 333,
                            height = 363,
                            shift = util.by_pixel_hr(-1, -1),
                            tint = inputs.tint,
                            scale = 0.5
                        },
                        {
                            filename = "__reskins-angels__/graphics/entity/refining/ore-flotation-cell/ore-flotation-cell-highlights.png",
                            priority = extra_high,
                            width = 333,
                            height = 363,
                            shift = util.by_pixel_hr(-1, -1),
                            blend_mode = reskins.lib.settings.blend_mode,
                            scale = 0.5
                        }
                    }
                }
            },
            {
                always_draw = true,
                render_layer = "higher-object-under",
                north_animation = return_pipe_overlay(0),
                east_animation = return_pipe_overlay(1),
                south_animation = return_pipe_overlay(0),
                west_animation = return_pipe_overlay(1)
            },
            {
                always_draw = true,
                north_animation = reskins.lib.sprites.pipes.get_vertical_pipe_shadow({ 0, -2 }),
                south_animation = reskins.lib.sprites.pipes.get_vertical_pipe_shadow({ 0, -2 })
            }
        }
        entity.fluid_boxes[1].pipe_picture = nil
        entity.fluid_boxes[2].pipe_picture = nil
        entity.match_animation_speed_to_activity = false
        ::continue::
    end
end

-- ORE LEACHING PLANT
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "ore-leaching-plant",
        base_entity_name = assembling_machine_1,
        mod = angels_mod,
        particles = {[big] = 1, [medium] = 2},
        group = refining,
        make_remnants = false
    }
    local tier_map = {[ore_leaching_plant_4] = {tier = 4, prog_tier = 6}}
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation =
        {
            layers =
            {
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/ore-leaching-plant/1ore-leaching-plant.png",
                    priority = extra_high,
                    width = 192,
                    height = 192,
                    shift = {0.4, -0.14}
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/ore-leaching-plant/ore-leaching-plant-mask.png",
                    priority = extra_high,
                    width = 192,
                    height = 192,
                    shift = {0.4, -0.14},
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/ore-leaching-plant/ore-leaching-plant-highlights.png",
                    priority = extra_high,
                    width = 192,
                    height = 192,
                    shift = {0.4, -0.14},
                    blend_mode = reskins.lib.settings.blend_mode
                }
            }
        }
        ::continue::
    end
end

-- ORE REFINERY
do
    local inputs =
    {
        type = assembling_machine,
	    icon_name = "ore-refinery",
	    base_entity_name = oil_refinery_1,
	    mod = angels_mod,
	    particles = {[big_tint] = 5, [medium] = 2},
	    group = refining,
	    make_remnants = false
    }
    local tier_map =
    {
	    [ore_refinery_3] = {tier = 3, prog_tier = 6},
	    [ore_refinery_4] = {tier = 4, prog_tier = 6}
    }
    for name, map in pairs(tier_map) do
    	---@type data.AssemblingMachinePrototype
	    local entity = data.raw[inputs.type][name]
	    if not entity then
		    goto continue
	    end
        local tier = reskins.lib.tiers.get_tier(map)
	    inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
	    reskins.lib.setup_standard_entity(name, tier, inputs)
	    entity.graphics_set.animation =
        {
            layers =
            {
			    {
			    	filename = "__angelsrefininggraphics__/graphics/entity/ore-refinery/ore-refinery-base.png",
			    	priority = extra_high,
			    	width = 440,
			    	height = 509,
			    	shift = util.by_pixel(0.5, -16),
			    	scale = 0.5
			    },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/ore-refinery/ore-refinery-mask.png",
                    priority = extra_high,
                    width = 440,
                    height = 509,
                    shift = util.by_pixel(0.5, -16),
                    tint = inputs.tint,
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/ore-refinery/ore-refinery-highlights.png",
                    priority = extra_high,
                    width = 440,
                    height = 509,
                    shift = util.by_pixel(0.5, -16),
                    blend_mode = reskins.lib.settings.blend_mode,
                    scale = 0.5
                },
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/ore-refinery/ore-refinery-shadow.png",
                    priority = extra_high,
                    width = 522,
                    height = 340,
                    shift = util.by_pixel(21.5, 29),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        }
        ::continue::
    end
end

-- ORE SORTING FACILITY
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "ore-sorting-facility",
        base_entity_name = assembling_machine_1,
        mod = angels_mod,
        particles = {[big] = 1, [medium] = 2},
        group = refining,
        make_remnants = false
    }
    local tier_map = {[ore_sorting_facility_6] = {tier = 6}}
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation =
        {
            layers =
            {
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/ore-sorting-facility/ore-sorting-facility-base.png",
                    priority = "extra-high",
                    width = 449,
                    height = 458,
                    frame_count = 40,
                    line_length = 10,
                    shift = util.by_pixel(0, -2.5),
                    animation_speed = 0.5,
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/ore-sorting-facility/ore-sorting-facility-mask.png",
                    priority = "extra-high",
                    width = 449,
                    height = 458,
                    frame_count = 40,
                    line_length = 10,
                    shift = util.by_pixel(0, -2.5),
                    animation_speed = 0.5,
                    tint = inputs.tint,
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/ore-sorting-facility/ore-sorting-facility-highlights.png",
                    priority = "extra-high",
                    width = 449,
                    height = 458,
                    frame_count = 40,
                    line_length = 10,
                    shift = util.by_pixel(0, -2.5),
                    animation_speed = 0.5,
                    blend_mode = reskins.lib.settings.blend_mode,
                    scale = 0.5
                },
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/ore-sorting-facility/ore-sorting-facility-shadow.png",
                    priority = "extra-high",
                    width = 528,
                    height = 356,
                    repeat_count = 40,
                    shift = util.by_pixel(21.5, 24.5),
                    animation_speed = 0.5,
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        }
        ::continue::
    end
end

-- ORE POWDERIZER
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "ore-powderizer",
        base_entity_name = assembling_machine_1,
        mod = angels_mod,
        particles = {[big] = 1, [medium] = 2},
        group = refining,
        make_remnants = false
    }
    local tier_map = {[powderizer_4] = {tier = 4, prog_tier = 5}}
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation =
        {
            layers =
            {
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/ore-powderizer/powderizer.png",
                    priority = extra_high,
                    width = 256,
                    height = 256,
                    frame_count = 36,
                    line_length = 6,
                    shift = {0, 0},
                    animation_speed = 0.5,
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/ore-powderizer/ore-powderizer-mask.png",
                    priority = extra_high,
                    width = 256,
                    height = 256,
                    repeat_count = 36,
                    shift = {0, 0},
                    animation_speed = 0.5,
                    tint = inputs.tint,
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/ore-powderizer/ore-powderizer-highlights.png",
                    priority = extra_high,
                    width = 256,
                    height = 256,
                    repeat_count = 36,
                    shift = {0, 0},
                    animation_speed = 0.5,
                    blend_mode = reskins.lib.settings.blend_mode,
                    scale = 0.5
                }
            }
        }
        ::continue::
    end
end

-- ELECTROWINNING CELL
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "electrowinning-cell",
        base_entity_name = assembling_machine_1,
        mod = angels_mod,
        particles = {[big] = 1, [medium] = 2},
        group = refining,
        make_remnants = false
    }
    local tier_map =
    {
        [electro_whinning_cell_3] = {tier = 3, prog_tier = 6},
        [electro_whinning_cell_4] = {tier = 4, prog_tier = 6}
    }
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation =
        {
            layers =
            {
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/electro-whinning-cell/electro-whinning-cell.png",
                    priority = "extra-high",
                    width = 224,
                    height = 224,
                    frame_count = 36,
                    line_length = 6,
                    shift = { 0, 0 },
                    animation_speed = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/electrowinning-cell/electrowinning-cell-mask.png",
                    priority = "extra-high",
                    width = 224,
                    height = 224,
                    repeat_count = 36,
                    shift = { 0, 0 },
                    animation_speed = 0.5,
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/electrowinning-cell/electrowinning-cell-highlights.png",
                    priority = "extra-high",
                    width = 224,
                    height = 224,
                    repeat_count = 36,
                    shift = { 0, 0 },
                    animation_speed = 0.5,
                    blend_mode = reskins.lib.settings.blend_mode
                }
            }
        }
        ::continue::
    end
end

-- FILTRATION UNIT
do
	local inputs =
	{
		type = assembling_machine,
		icon_name = "filtration-unit",
		base_entity_name = assembling_machine_1,
		mod = angels_mod,
		particles = {[big] = 1, [medium] = 2},
		group = refining,
		make_remnants = false
	}
	local tier_map = {[filtration_unit_4] = {tier = 4, prog_tier = 5}}
	for name, map in pairs(tier_map) do
		---@type data.AssemblingMachinePrototype
		local entity = data.raw[inputs.type][name]
		if not entity then
			goto continue
		end
		local tier = reskins.lib.tiers.get_tier(map)
		inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
		reskins.lib.setup_standard_entity(name, tier, inputs)
		entity.graphics_set.animation =
		{
			layers =
			{
				{
					filename = "__angelsrefininggraphics__/graphics/entity/filtration-unit/filtration-unit.png",
					priority = extra_high,
					width = 224,
					height = 224,
					shift = {0, -0.2}
				},
				{
					filename = "__reskins-angels__/graphics/entity/refining/filtration-unit/filtration-unit-mask.png",
					priority = extra_high,
					width = 224,
					height = 224,
					shift = {0, -0.2},
					tint = inputs.tint
				},
				{
					filename = "__reskins-angels__/graphics/entity/refining/filtration-unit/filtration-unit-highlights.png",
					priority = extra_high,
					width = 224,
					height = 224,
					shift = {0, -0.2},
					blend_mode = reskins.lib.settings.blend_mode
				}
			}
		}
		::continue::
	end
end

-- CRYSTALLIZER
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "crystallizer",
        base_entity_name = assembling_machine_1,
        mod = angels_mod,
        particles = {[big] = 1, [medium] = 2},
        group = refining,
        make_remnants = false
    }
    local tier_map = {[crystallizer_4] = {tier = 4, prog_tier = 5}}
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation =
        {
            layers =
            {
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer.png",
                    priority = extra_high,
                    width = 390,
                    height = 326,
                    shift = util.by_pixel(16, 0),
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/crystallizer/crystallizer-mask.png",
                    priority = extra_high,
                    width = 390,
                    height = 326,
                    shift = util.by_pixel(16, 0),
                    tint = inputs.tint,
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/crystallizer/crystallizer-highlights.png",
                    priority = extra_high,
                    width = 390,
                    height = 326,
                    shift = util.by_pixel(16, 0),
                    blend_mode = reskins.lib.settings.blend_mode,
                    scale = 0.5
                },
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-shadow.png",
                    priority = extra_high,
                    width = 390,
                    height = 326,
                    shift = util.by_pixel(16, 0),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        }
        ::continue::
    end
end

-- SINTERING OVEN
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "sintering-oven",
        base_entity_name = oil_refinery_1,
        mod = angels_mod,
        particles = {[big_tint] = 5, [medium] = 2},
        group = "smelting",
        make_remnants = false
    }
    local tier_map = {}
    if settings.startup[setting_early_sintering_oven].value then
        tier_map =
        {
            [sintering_oven_1] = {tier = 1, prog_tier = 1},
            [sintering_oven_2] = {tier = 2, prog_tier = 2},
            [sintering_oven_3] = {tier = 3, prog_tier = 3},
            [sintering_oven_4] = {tier = 4, prog_tier = 4},
            [sintering_oven_5] = {tier = 5, prog_tier = 5},
            [sintering_oven_6] = {tier = 6, prog_tier = 6}
        }
    else
        tier_map =
        {
            [sintering_oven_4] = {tier = 1, prog_tier = 4, defer_to_data_updates = true},
            [sintering_oven_5] = {tier = 2, prog_tier = 5, defer_to_data_updates = true},
            [sintering_oven_6] = {tier = 3, prog_tier = 6, defer_to_data_updates = false},
            [sintering_oven_7] = {tier = 4, prog_tier = 6, defer_to_data_updates = false}
        }
    end
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.defer_to_data_updates = map.defer_to_data_updates
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation =
        {
            layers =
            {
                {
                    filename = "__angelssmeltinggraphics__/graphics/entity/sintering-oven/sintering-oven-base.png",
                    priority = extra_high,
                    width = 326,
                    height = 350,
                    shift = util.by_pixel(-1, -6.5),
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/smelting/sintering-oven/sintering-oven-mask.png",
                    priority = extra_high,
                    width = 326,
                    height = 350,
                    shift = util.by_pixel(-1, -6.5),
                    tint = inputs.tint,
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/smelting/sintering-oven/sintering-oven-highlights.png",
                    priority = extra_high,
                    width = 326,
                    height = 350,
                    shift = util.by_pixel(-1, -6.5),
                    blend_mode = reskins.lib.settings.blend_mode,
                    scale = 0.5
                },
                {
                    filename = "__angelssmeltinggraphics__/graphics/entity/sintering-oven/sintering-oven-shadow.png",
                    priority = extra_high,
                    width = 424,
                    height = 227,
                    shift = util.by_pixel(23, 28),
                    draw_as_shadow = true,
                    scale = 0.5
                }
            }
        }
        ::continue::
    end
end

-- HYDRO PLANT
do
	local inputs =
	{
		type = assembling_machine,
		icon_name = "hydro-plant",
		base_entity_name = assembling_machine_1,
		mod = angels_mod,
		particles = {[big] = 1, [medium] = 2},
		group = refining,
		make_remnants = false
	}
	local tier_map = {[hydro_plant_4] = {tier = 4}}
	for name, map in pairs(tier_map) do
		---@type data.AssemblingMachinePrototype
		local entity = data.raw[inputs.type][name]
		if not entity then
			goto continue
		end
		local tier = reskins.lib.tiers.get_tier(map)
		inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
		reskins.lib.setup_standard_entity(name, tier, inputs)
		entity.graphics_set.animation =
		{
			layers =
			{
				{
					filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-base.png",
					priority = extra_high,
					width = 459,
					height = 491,
					shift = util.by_pixel(0, 0),
					scale = 0.5
				},
				{
					filename = "__reskins-angels__/graphics/entity/refining/hydro-plant/hydro-plant-mask.png",
					priority = extra_high,
					width = 459,
					height = 491,
					shift = util.by_pixel(0, 0),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-angels__/graphics/entity/refining/hydro-plant/hydro-plant-highlights.png",
					priority = extra_high,
					width = 459,
					height = 491,
					shift = util.by_pixel(0, 0),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				}
			}
		}
		::continue::
	end
end

-- WASHING PLANT
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "washing-plant",
        base_entity_name = assembling_machine_1,
        mod = angels_mod,
        particles = {[big] = 1, [medium] = 2},
        group = refining,
        make_remnants = false
    }
    local tier_map =
    {
        [washing_plant_3] = {tier = 3},
        [washing_plant_4] = {tier = 4}
    }
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation =
        {
            layers =
            {
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/washing-plant/washing-plant.png",
                    priority = extra_high,
                    width = 224,
                    height = 224,
                    frame_count = 25,
                    line_length = 5,
                    shift = {0, 0}
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/washing-plant/washing-plant-base-patch.png",
                    priority = extra_high,
                    width = 224,
                    height = 224,
                    repeat_count = 25,
                    shift = {0, 0}
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/washing-plant/washing-plant-mask.png",
                    priority = extra_high,
                    width = 224,
                    height = 224,
                    repeat_count = 25,
                    shift = {0, 0},
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/washing-plant/washing-plant-highlights.png",
                    priority = extra_high,
                    width = 224,
                    height = 224,
                    repeat_count = 25,
                    shift = {0, 0},
                    blend_mode = reskins.lib.settings.blend_mode
                }
            }
        }
        ::continue::
    end
end

-- SALINATION PLANT
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "salination-plant",
        base_entity_name = assembling_machine_1,
        mod = angels_mod,
        particles = {[big] = 1, [medium] = 2},
        group = refining,
        make_remnants = false
    }
    local tier_map =
    {
        [salination_plant_3] = {tier = 3, prog_tier = 5},
        [salination_plant_4] = {tier = 4, prog_tier = 6}
    }
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation =
        {
            layers =
            {
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/salination-plant/salination-plant-base.png",
                    priority = extra_high,
                    width = 484,
                    height = 540,
                    frame_count = 36,
                    line_length = 6,
                    shift = util.by_pixel(-2.5, -12),
                    animation_speed = 0.5,
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/salination-plant/salination-plant-mask.png",
                    priority = extra_high,
                    width = 484,
                    height = 540,
                    repeat_count = 36,
                    shift = util.by_pixel(-2.5, -12),
                    tint = inputs.tint,
                    animation_speed = 0.5,
                    scale = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/refining/salination-plant/salination-plant-highlights.png",
                    priority = extra_high,
                    width = 484,
                    height = 540,
                    repeat_count = 36,
                    shift = util.by_pixel(-2.5, -12),
                    blend_mode = reskins.lib.settings.blend_mode,
                    animation_speed = 0.5,
                    scale = 0.5
                },
                {
                    filename = "__angelsrefininggraphics__/graphics/entity/salination-plant/salination-plant-shadow.png",
                    priority = extra_high,
                    width = 509,
                    height = 467,
                    repeat_count = 36,
                    shift = util.by_pixel(10, 6.5),
                    draw_as_shadow = true,
                    animation_speed = 0.5,
                    scale = 0.5
                }
            }
        }
        ::continue::
    end
end

-- ELECTRIC BOILER
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "electric-boiler",
        base_entity_name = "boiler",
        mod = angels_mod,
        particles = {[big] = 3},
        group = petrochem,
        make_remnants = false
    }
    local tier_map = {[electric_boiler_4] = {tier = 4, prog_tier = 5}}
    local working_lights = reskins.lib.sprites.make_4way_animation_from_spritesheet
    ({
        filename = "__reskins-angels__/graphics/entity/petrochem/electric-boiler/electric-boiler-working-lights.png",
        priority = extra_high,
        width = 160,
        height = 160,
        shift = { 0, 0 },
        blend_mode = "additive",
        draw_as_glow = true,
    })
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation = reskins.lib.sprites.make_4way_animation_from_spritesheet
        ({
            layers =
            {
                {
                    filename = "__reskins-angels__/graphics/entity/petrochem/electric-boiler/electric-boiler-base.png",
                    priority = extra_high,
                    width = 160,
                    height = 160,
                    shift = {0, 0}
                },
                {
                    filename = "__reskins-angels__/graphics/entity/petrochem/electric-boiler/electric-boiler-mask.png",
                    priority = extra_high,
                    width = 160,
                    height = 160,
                    shift = {0, 0},
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-angels__/graphics/entity/petrochem/electric-boiler/electric-boiler-highlights.png",
                    priority = extra_high,
                    width = 160,
                    height = 160,
                    shift = {0, 0},
                    blend_mode = reskins.lib.settings.blend_mode
                }
            }
        })
        entity.graphics_set.idle_animation = nil
        entity.graphics_set.working_visualisations =
        {
            {
                fadeout = true,
                effect = "uranium-glow",
                north_animation = working_lights.north,
                east_animation = working_lights.east,
                south_animation = working_lights.south,
                west_animation = working_lights.west
            }
        }
        ::continue::
    end
end

-- AIR FILTER
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "air-filter",
        base_entity_name = assembling_machine_1,
        mod = angels_mod,
        particles = {[big] = 1, [medium] = 2},
        group = petrochem,
        make_remnants = false
    }
    local tier_map = {[air_filter_4] = {tier = 4}}
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation =
        {
            layers =
            {
                {
                    filename = "__reskins-angels__/graphics/entity/petrochem/air-filter/air-filter-base.png",
                    priority = extra_high,
                    width = 256,
                    height = 256,
                    frame_count = 36,
                    line_length = 6,
                    shift = { 0.5, -0.5 },
                    animation_speed = 0.5
                },
                {
                    filename = "__reskins-angels__/graphics/entity/petrochem/air-filter/air-filter-mask.png",
                    priority = extra_high,
                    width = 256,
                    height = 256,
                    frame_count = 36,
                    line_length = 6,
                    shift = { 0.5, -0.5 },
                    animation_speed = 0.5,
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-angels__/graphics/entity/petrochem/air-filter/air-filter-highlights.png",
                    priority = extra_high,
                    width = 256,
                    height = 256,
                    frame_count = 36,
                    line_length = 6,
                    shift = { 0.5, -0.5 },
                    animation_speed = 0.5,
                    blend_mode = reskins.lib.settings.blend_mode
                }
            }
        }
        ::continue::
    end
end

-- ADVANCED CHEMICAL PLANT
do
    local inputs =
    {
        type = assembling_machine,
        icon_name = "advanced-chemical-plant",
        base_entity_name = assembling_machine_1,
        mod = angels_mod,
        particles = {[big] = 1, [medium] = 2},
        group = petrochem,
        make_remnants = false
    }
    local tier_map =
    {
        [advanced_chemical_plant_3] = {tier = 3, prog_tier = 5},
        [advanced_chemical_plant_4] = {tier = 4, prog_tier = 6}
    }
    for name, map in pairs(tier_map) do
        ---@type data.AssemblingMachinePrototype
        local entity = data.raw[inputs.type][name]
        if not entity then
            goto continue
        end
        local tier = reskins.lib.tiers.get_tier(map)
        inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
        reskins.lib.setup_standard_entity(name, tier, inputs)
        entity.graphics_set.animation =
        {
            layers =
            {
                {
                    filename = "__angelspetrochemgraphics__/graphics/entity/advanced-chemical-plant/advanced-chemical-plant.png",
                    priority = "extra-high",
                    width = 224,
                    height = 224,
                    frame_count = 16,
                    line_length = 4,
                    animation_speed = 0.5,
                    shift = {0, 0}
                },
                {
                    filename = "__reskins-angels__/graphics/entity/petrochem/advanced-chemical-plant/advanced-chemical-plant-base-patch.png",
                    priority = "extra-high",
                    width = 224,
                    height = 224,
                    repeat_count = 16,
                    animation_speed = 0.5,
                    shift = {0, 0}
                },
                {
                    filename = "__reskins-angels__/graphics/entity/petrochem/advanced-chemical-plant/advanced-chemical-plant-mask.png",
                    priority = "extra-high",
                    width = 224,
                    height = 224,
                    repeat_count = 16,
                    animation_speed = 0.5,
                    shift = {0, 0},
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-angels__/graphics/entity/petrochem/advanced-chemical-plant/advanced-chemical-plant-highlights.png",
                    priority = "extra-high",
                    width = 224,
                    height = 224,
                    repeat_count = 16,
                    animation_speed = 0.5,
                    shift = {0, 0},
                    blend_mode = reskins.lib.settings.blend_mode
                }
            }
        }
        ::continue::
    end
end