local bobs_mod = "bobs"
local big = "big"
local medium = "medium"
local power = "power"
if not (reskins.bobs and reskins.bobs.triggers.assembly.entities) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.power.entities) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.power.nuclear) then
	return
end
if reskins.compatibility then
	reskins.compatibility.triggers.minimachines.centrifuges = true
end
-- BOILER
-- STEAM ENGINE
-- STEAM TURBINE
do
	local inputs =
	{
		type = "generator",
		icon_name = steam_turbine_1,
		base_entity_name = steam_turbine_1,
		mod = bobs_mod,
		group = power,
		particles = {[medium] = 2, [big] = 1},
	}
	local tier_map = {[steam_turbine_4] = {tier = 4, prog_tier = 6}}
	---@param tint data.Color
	---@return data.RotatedAnimation
	local function get_steam_turbine_remnant_animation(tint)
		---@type data.RotatedAnimation
		local remnant_animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/steam-turbine/remnants/steam-turbine-remnants.png",
					width = 460,
					height = 408,
					direction_count = 4,
					shift = util.by_pixel(6, 0),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-turbine/remnants/steam-turbine-remnants-mask.png",
					width = 460,
					height = 408,
					direction_count = 4,
					shift = util.by_pixel(6, 0),
					tint = tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-turbine/remnants/steam-turbine-remnants-highlights.png",
					width = 460,
					height = 408,
					direction_count = 4,
					shift = util.by_pixel(6, 0),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				}
			}
		}
		return remnant_animation
	end
	for name, map in pairs(tier_map) do
		---@type data.GeneratorPrototype
		local entity = data.raw[inputs.type][name]
		if not entity then
			goto continue
		end
		local tier = reskins.lib.tiers.get_tier(map)
		inputs.tint = reskins.lib.tiers.get_tint(tier)
		reskins.lib.setup_standard_entity(name, tier, inputs)
		local remnant = data.raw["corpse"][name .. "-remnants"]
		local remnant_animation = get_steam_turbine_remnant_animation(inputs.tint)
		remnant.animation = make_rotated_animation_variations_from_sheet(1, remnant_animation)
		entity.horizontal_animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H.png",
					width = 320,
					height = 245,
					frame_count = 8,
					line_length = 4,
					shift = util.by_pixel(0, -2.75),
					run_mode = "backward",
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-turbine/steam-turbine-H-mask.png",
					width = 320,
					height = 245,
					repeat_count = 8,
					shift = util.by_pixel(0, -2.75),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-turbine/steam-turbine-H-highlights.png",
					width = 320,
					height = 245,
					repeat_count = 8,
					shift = util.by_pixel(0, -2.75),
					blend_mode = reskins.lib.settings.blend_mode, -- "additive",
					scale = 0.5
				},
				{
					filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
					width = 435,
					height = 150,
					repeat_count = 8,
					draw_as_shadow = true,
					shift = util.by_pixel(28.5, 18),
					run_mode = "backward",
					scale = 0.5
				}
			}
		}
		entity.vertical_animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V.png",
					width = 217,
					height = 374,
					frame_count = 8,
					line_length = 4,
					shift = util.by_pixel(4.75, 0.0),
					run_mode = "backward",
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-turbine/steam-turbine-V-mask.png",
					width = 217,
					height = 347,
					repeat_count = 8,
					shift = util.by_pixel(4.75, 6.75),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-turbine/steam-turbine-V-highlights.png",
					width = 217,
					height = 347,
					repeat_count = 8,
					shift = util.by_pixel(4.75, 6.75),
					blend_mode = reskins.lib.settings.blend_mode, -- "additive",
					scale = 0.5
				},
				{
					filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
					width = 302,
					height = 260,
					repeat_count = 8,
					draw_as_shadow = true,
					shift = util.by_pixel(39.5, 24.5),
					run_mode = "backward",
					scale = 0.5
				}
			}
		}
		::continue::
	end
end
-- CENTRIFUGE
do
	local inputs =
	{
		type = "assembling-machine",
		icon_name = centrifuge_1,
		base_entity_name = centrifuge_1,
		mod = bobs_mod,
		group = "assembly",
		particles = {[big] = 1, [medium] = 2},
	}
	local tier_map = {[centrifuge_4] = {tier = 4, prog_tier = 6}}
	for name, map in pairs(tier_map) do
		---@type data.AssemblingMachinePrototype
		local entity = data.raw[inputs.type][name]
		if not entity then
			goto continue
		end
		local tier = reskins.lib.tiers.get_tier(map)
		inputs.tint = reskins.lib.tiers.get_tint(tier)
		reskins.lib.setup_standard_entity(name, tier, inputs)
		local remnant = data.raw["corpse"][name .. "-remnants"]
		remnant.animation = make_rotated_animation_variations_from_sheet(1,
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/centrifuge/remnants/centrifuge-remnants.png",
					width = 286,
					height = 284,
					direction_count = 1,
					shift = util.by_pixel(7, 4),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/centrifuge/remnants/centrifuge-remnants-mask.png",
					width = 286,
					height = 284,
					direction_count = 1,
					shift = util.by_pixel(7, 4),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/centrifuge/remnants/centrifuge-remnants-highlights.png",
					width = 286,
					height = 284,
					direction_count = 1,
					shift = util.by_pixel(7, 4),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				}
			}
		})
		entity.graphics_set.idle_animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-C.png",
					priority = "high",
					scale = 0.5,
					line_length = 8,
					width = 237,
					height = 214,
					frame_count = 64,
					shift = util.by_pixel(-0.25, -26.5),
				},
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-C-shadow.png",
					draw_as_shadow = true,
					priority = "high",
					scale = 0.5,
					line_length = 8,
					width = 279,
					height = 152,
					frame_count = 64,
					shift = util.by_pixel(16.75, -10)
				},
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-B.png",
					priority = "high",
					scale = 0.5,
					line_length = 8,
					width = 156,
					height = 234,
					frame_count = 64,
					shift = util.by_pixel(23, 6.5)
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/centrifuge/centrifuge-B-mask.png",
					priority = "high",
					tint = inputs.tint,
					scale = 0.5,
					line_length = 8,
					width = 156,
					height = 234,
					frame_count = 64,
					shift = util.by_pixel(23, 6.5)
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/centrifuge/centrifuge-B-highlights.png",
					priority = "high",
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5,
					line_length = 8,
					width = 156,
					height = 234,
					frame_count = 64,
					shift = util.by_pixel(23, 6.5)
				},
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-B-shadow.png",
					draw_as_shadow = true,
					priority = "high",
					scale = 0.5,
					line_length = 8,
					width = 251,
					height = 149,
					frame_count = 64,
					shift = util.by_pixel(63.25, 15.25)
				},
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-A.png",
					priority = "high",
					scale = 0.5,
					line_length = 8,
					width = 139,
					height = 246,
					frame_count = 64,
					shift = util.by_pixel(-26.25, 3.5)
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/centrifuge/centrifuge-A-mask.png",
					priority = "high",
					tint = inputs.tint,
					scale = 0.5,
					line_length = 8,
					width = 139,
					height = 246,
					frame_count = 64,
					shift = util.by_pixel(-26.25, 3.5)
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/centrifuge/centrifuge-A-highlights.png",
					priority = "high",
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5,
					line_length = 8,
					width = 139,
					height = 246,
					frame_count = 64,
					shift = util.by_pixel(-26.25, 3.5)
				},
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-A-shadow.png",
					priority = "high",
					draw_as_shadow = true,
					scale = 0.5,
					line_length = 8,
					width = 230,
					height = 124,
					frame_count = 64,
					shift = util.by_pixel(8.5, 23.5)
				}
			}
		}
		entity.graphics_set.working_visualisations =
		{
			{
				effect = "uranium-glow",
				apply_recipe_tint = "primary",
				fadeout = true,
				light = {intensity = 0.1, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}},
			},
			{
				effect = "uranium-glow",
				fadeout = true,
				apply_recipe_tint = "primary",
				animation =
				{
					layers =
					{
						{
							filename = "__reskins-bobs__/graphics/entity/assembly/centrifuge/centrifuge-C-light.png",
							priority = "high",
							scale = 0.5,
							blend_mode = "additive",
							line_length = 8,
							width = 190,
							height = 207,
							frame_count = 64,
							shift = util.by_pixel(0, -27.25),
							draw_as_glow = true
						},
						{
							filename = "__reskins-bobs__/graphics/entity/assembly/centrifuge/centrifuge-B-light.png",
							priority = "high",
							scale = 0.5,
							blend_mode = "additive",
							line_length = 8,
							width = 131,
							height = 206,
							frame_count = 64,
							shift = util.by_pixel(16.75, 0.5),
							draw_as_glow = true
						},
						{
							filename = "__reskins-bobs__/graphics/entity/assembly/centrifuge/centrifuge-A-light.png",
							priority = "high",
							scale = 0.5,
							blend_mode = "additive",
							line_length = 8,
							width = 108,
							height = 197,
							frame_count = 64,
							shift = util.by_pixel(-23.5, -1.75),
							draw_as_glow = true
						}
					}
				}
			}
		}
		::continue::
	end
end
-- SOLAR PANEL
-- ACCUMULATOR
-- REACTOR
do
	local inputs =
	{
		type = "reactor",
		icon_name = uranium_reactor,
		base_entity_name = uranium_reactor,
		mod = bobs_mod,
		group = power,
	}
	local reactors =
	{
		[uranium_reactor] = {tier = 1, prog_tier = 3, material = "base"},
		[thorium_reactor] = {tier = 2, prog_tier = 4, material = "aluminum-invar"},
		[deuterium_reactor] = {tier = 3, prog_tier = 5, material = "silver-titanium"},
		--[_reactor] = {tier = 4, prog_tier = 6, material = "gold-copper"}
		-- "base", "aluminum-invar", "silver-aluminum", "silver-titanium", "gold-copper"
	}
	local function skin_reactor_entity(name, tint, material)
		local entity = data.raw["reactor"][name]
		entity.picture =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/nuclear-reactor/reactor.png",
					width = 302,
					height = 318,
					scale = 0.5,
					shift = util.by_pixel(-5, -7)
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/nuclear-reactor/reactor-mask.png",
					width = 302,
					height = 318,
					scale = 0.5,
					shift = util.by_pixel(-5, -7),
					tint = tint
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/nuclear-reactor/reactor-highlights.png",
					width = 302,
					height = 318,
					scale = 0.5,
					shift = util.by_pixel(-5, -7),
					blend_mode = reskins.lib.settings.blend_mode
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/nuclear-reactor/heat-pipes/" .. material .. "/reactor-piping.png",
					width = 302,
					height = 318,
					scale = 0.5,
					shift = util.by_pixel(-5, -7)
				},
				{
					filename = "__base__/graphics/entity/nuclear-reactor/reactor-shadow.png",
					width = 525,
					height = 323,
					scale = 0.5,
					shift = { 1.625, 0 },
					draw_as_shadow = true
				}
			}
		}
		entity.lower_layer_picture =
		{
			filename = "__reskins-bobs__/graphics/entity/power/nuclear-reactor/heat-pipes/" .. material .. "/reactor-base-pipes.png",
			width = 320,
			height = 316,
			scale = 0.5,
			shift = util.by_pixel(-1, -5)
		}
		entity.connection_patches_connected =
		{
			sheet =
			{
				filename = "__reskins-bobs__/graphics/entity/power/nuclear-reactor/heat-pipes/" .. material .. "/reactor-connect-patches.png",
				width = 64,
				height = 64,
				variation_count = 12,
				scale = 0.5
			}
		}
		entity.connection_patches_disconnected =
		{
			sheet =
			{
				filename = "__reskins-bobs__/graphics/entity/power/nuclear-reactor/heat-pipes/" .. material .. "/reactor-connect-patches.png",
				width = 64,
				height = 64,
				variation_count = 12,
				y = 64,
				scale = 0.5
			}
		}
	end
	local function skin_reactor_remnants(name, tint, material)
		local remnant = data.raw["corpse"][name .. "-remnants"]
		remnant.animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/nuclear-reactor/remnants/nuclear-reactor-remnants.png",
					width = 410,
					height = 396,
					direction_count = 1,
					shift = util.by_pixel(7, 4),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/nuclear-reactor/remnants/nuclear-reactor-remnants-mask.png",
					width = 410,
					height = 396,
					direction_count = 1,
					shift = util.by_pixel(7, 4),
					tint = tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/nuclear-reactor/remnants/nuclear-reactor-remnants-highlights.png",
					width = 410,
					height = 396,
					direction_count = 1,
					shift = util.by_pixel(7, 4),
					blend_mode = reskins.lib.settings.blend_mode, -- "additive",
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/nuclear-reactor/heat-pipes/" .. material .. "/reactor-remnants.png",
					width = 410,
					height = 396,
					direction_count = 1,
					shift = util.by_pixel(7, 4),
					scale = 0.5
				}
			}
		}
	end
	reskins.lib.set_inputs_defaults(inputs)
	for name, map in pairs(reactors) do
		local entity = data.raw[inputs.type][name]
		if not entity then
			goto continue
		end
		local tier = reskins.lib.tiers.get_tier(map)
		inputs.pipe_tier = map.tier
		inputs.fuel = reskins.bobs.nuclear_reactor_index[name]
		reskins.lib.create_explosion(name, inputs)
		if reskins.lib.settings.get_value("bobmods-revamp-nuclear") == true and reskins.lib.settings.get_value("reskins-bobs-do-bobrevamp-reactor-color") == true then
			inputs.reactor = reskins.bobs.nuclear_reactor_index[name]
			inputs.tint = reskins.bobs.nuclear_reactor_index[name].tint
			reskins.lib.create_particle(name, inputs.base_entity_name, reskins.lib.particle_index[big], 1, inputs.tint)
			reskins.lib.create_particle(name, inputs.base_entity_name, reskins.lib.particle_index[medium], 2, inputs.tint)
		else
			inputs.reactor = "reactor-" .. tier
			inputs.tint = reskins.lib.tiers.get_tint(tier)
			reskins.lib.create_particle(name, inputs.base_entity_name, reskins.lib.particle_index[big], 1, inputs.tint)
			reskins.lib.create_particle(name, inputs.base_entity_name, reskins.lib.particle_index[medium], 2, inputs.tint)
		end
		reskins.lib.create_remnant(name, inputs)
		skin_reactor_remnants(name, inputs.tint, map.material)
		skin_reactor_entity(name, inputs.tint, map.material)
		inputs.icon_base = "nuclear-reactor-" .. reskins.bobs.nuclear_reactor_index[name].name .. "-" .. map.material
		reskins.lib.construct_icon(name, tier, inputs)
		::continue::
	end
end