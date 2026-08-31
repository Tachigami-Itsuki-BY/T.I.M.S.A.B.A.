local bobs_mod = "bobs"
if not (reskins.bobs and reskins.bobs.triggers.power.entities) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.power.steam) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.power.solar) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.power.accumulators) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.mining.entities) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.power.nuclear) then
	return
end
if not (reskins.bobs and (reskins.bobs.triggers.assembly.entities or reskins.bobs.triggers.plates.entities)) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.assembly.entities) then
	return
end

-- BOILER
do
	local inputs =
	{
		type = boiler,
		base_entity_name = boiler_1,
		mod = bobs_mod,
		group = power,
		particles = {[big] = 3}
	}
	local tier_map = {[boiler_6] = {tier = 6, prog_tier = 6}}
	for name, map in pairs(tier_map) do
		---@type data.BoilerPrototype
		local entity = data.raw[inputs.type][name]
		if not entity then
			goto continue
		end
		local tier = reskins.lib.tiers.get_tier(map)
		inputs.tint = reskins.lib.tiers.get_tint(tier)
		if map.has_fluids == true then
			inputs.icon_name = "oil-boiler"
		else
			inputs.icon_name = "boiler"
		end
		reskins.lib.setup_standard_entity(name, tier, inputs)
		local remnant = data.raw["corpse"][name .. "-remnants"]
		remnant.animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/boiler/remnants/boiler-remnants.png",
					width = 274,
					height = 220,
					direction_count = 4,
					shift = util.by_pixel(-0.5, -3),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/boiler/remnants/boiler-remnants-mask.png",
					width = 274,
					height = 220,
					direction_count = 4,
					shift = util.by_pixel(-0.5, -3),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/boiler/remnants/boiler-remnants-highlights.png",
					width = 274,
					height = 220,
					direction_count = 4,
					shift = util.by_pixel(-0.5, -3),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				}
			}
		}
		entity.pictures.north.structure =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
					priority = extra_high,
					width = 269,
					height = 221,
					shift = util.by_pixel(-1.25, 5.25),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/boiler/boiler-N-idle-mask.png",
					priority = extra_high,
					width = 269,
					height = 221,
					shift = util.by_pixel(-1.25, 5.25),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/boiler/boiler-N-idle-highlights.png",
					priority = extra_high,
					width = 269,
					height = 221,
					shift = util.by_pixel(-1.25, 5.25),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
					priority = extra_high,
					width = 274,
					height = 164,
					scale = 0.5,
					shift = util.by_pixel(20.5, 9),
					draw_as_shadow = true,
				}
			}
		}
		entity.pictures.east.structure =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/boiler/boiler-E-idle.png",
					priority = extra_high,
					width = 216,
					height = 301,
					shift = util.by_pixel(-3, 1.25),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/boiler/boiler-E-idle-mask.png",
					priority = extra_high,
					width = 216,
					height = 301,
					shift = util.by_pixel(-3, 1.25),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/boiler/boiler-E-idle-highlights.png",
					priority = extra_high,
					width = 216,
					height = 301,
					shift = util.by_pixel(-3, 1.25),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
					priority = extra_high,
					width = 184,
					height = 194,
					scale = 0.5,
					shift = util.by_pixel(30, 9.5),
					draw_as_shadow = true
				}
			}
		}
		entity.pictures.south.structure =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/boiler/boiler-S-idle.png",
					priority = extra_high,
					width = 260,
					height = 192,
					shift = util.by_pixel(4, 13),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/boiler/boiler-S-idle-mask.png",
					priority = extra_high,
					width = 260,
					height = 192,
					shift = util.by_pixel(4, 13),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/boiler/boiler-S-idle-highlights.png",
					priority = extra_high,
					width = 260,
					height = 192,
					shift = util.by_pixel(4, 13),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
					priority = extra_high,
					width = 311,
					height = 131,
					scale = 0.5,
					shift = util.by_pixel(29.75, 15.75),
					draw_as_shadow = true
				}
			}
		}
		entity.pictures.west.structure =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/boiler/boiler-W-idle.png",
					priority = extra_high,
					width = 196,
					height = 273,
					shift = util.by_pixel(1.5, 7.75),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/boiler/boiler-W-idle-mask.png",
					priority = extra_high,
					width = 196,
					height = 273,
					shift = util.by_pixel(1.5, 7.75),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/boiler/boiler-W-idle-highlights.png",
					priority = extra_high,
					width = 196,
					height = 273,
					shift = util.by_pixel(1.5, 7.75),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				},
				{
					filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
					priority = extra_high,
					width = 206,
					height = 218,
					scale = 0.5,
					shift = util.by_pixel(19.5, 6.5),
					draw_as_shadow = true
				}
			}
		}
		entity.energy_source.light_flicker =
		{
			color = {0, 0, 0},
			minimum_light_size = 0,
			light_intensity_to_size_coefficient = 0
		}
		if map.has_fluids then
			entity.energy_source.fluid_box.pipe_covers = pipecoverspictures()
			entity.energy_source.fluid_box.pipe_picture = reskins.bobs.assembly_pipe_pictures(inputs.tint)
		end
		::continue::
	end
end

-- STEAM ENGINE
do
	local inputs =
	{
		type = generator,
		icon_name = steam_engine_1,
		base_entity_name = steam_engine_1,
		mod = bobs_mod,
		group = power,
		particles = {[medium] = 2, [big] = 1}
	}
	local tier_map = {[steam_engine_6] = {tier = 6}}
	---@param tint data.Color
	---@return data.RotatedAnimation
	local function get_steam_engine_remnant_animation(tint)
		---@type data.RotatedAnimation
		local remnant_animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/steam-engine/remnants/steam-engine-remnants.png",
					width = 462,
					height = 386,
					direction_count = 4,
					shift = util.by_pixel(17, 6.5),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-engine/remnants/steam-engine-remnants-mask.png",
					width = 462,
					height = 386,
					direction_count = 4,
					shift = util.by_pixel(17, 6.5),
					tint = tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-engine/remnants/steam-engine-remnants-highlights.png",
					width = 462,
					height = 386,
					direction_count = 4,
					shift = util.by_pixel(17, 6.5),
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
		inputs.tint = reskins.lib.tiers.get_tint(map.tier)
		reskins.lib.setup_standard_entity(name, map.tier, inputs)
		local remnant = data.raw["corpse"][name .. "-remnants"]
		local remnant_animation = get_steam_engine_remnant_animation(inputs.tint)
		remnant.animation = make_rotated_animation_variations_from_sheet(1, remnant_animation)
		entity.horizontal_animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/steam-engine/steam-engine-H.png",
					width = 352,
					height = 257,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(1, -4.75),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-engine/steam-engine-H-mask.png",
					width = 352,
					height = 257,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(1, -4.75),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-engine/steam-engine-H-highlights.png",
					width = 352,
					height = 257,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(1, -4.75),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				},
				{
					filename = "__base__/graphics/entity/steam-engine/steam-engine-H-shadow.png",
					width = 508,
					height = 160,
					frame_count = 32,
					line_length = 8,
					draw_as_shadow = true,
					shift = util.by_pixel(48, 24),
					scale = 0.5
				}
			}
		}
		entity.vertical_animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/steam-engine/steam-engine-V.png",
					width = 225,
					height = 391,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(4.75, -6.25),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-engine/steam-engine-V-mask.png",
					width = 225,
					height = 391,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(4.75, -6.25),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/steam-engine/steam-engine-V-highlights.png",
					width = 225,
					height = 391,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(4.75, -6.25),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				},
				{
					filename = "__base__/graphics/entity/steam-engine/steam-engine-V-shadow.png",
					width = 330,
					height = 307,
					frame_count = 32,
					line_length = 8,
					draw_as_shadow = true,
					shift = util.by_pixel(40.5, 9.25),
					scale = 0.5
				}
			}
		}
		::continue::
	end
end

-- STEAM TURBINE
do
	local inputs =
	{
		type = generator,
		icon_name = steam_turbine_1,
		base_entity_name = steam_turbine_1,
		mod = bobs_mod,
		group = power,
		particles = {[medium] = 2, [big] = 1}
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
					blend_mode = reskins.lib.settings.blend_mode,
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
					blend_mode = reskins.lib.settings.blend_mode,
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

-- SOLAR PANELS
do
	local inputs =
	{
		type = solar_panel,
		base_entity_name = solar_panel_1,
		mod = bobs_mod,
		group = power,
		particles = {[small] = 2}
	}
	local tier_map =
	{
		[solar_panel_small_4] = {tier = 4, prog_tier = 5},
		[solar_panel_4] = {tier = 4, prog_tier = 5},
		[solar_panel_large_4] = {tier = 4, prog_tier = 5}
	}
	---@param tint data.Color
	---@return data.RotatedAnimation
	local function get_small_solar_panel_remnant_animation(tint)
		---@type data.RotatedAnimation
		local remnant_animation =
		{
			layers =
			{
				{
					filename = "__reskins-bobs__/graphics/entity/power/solar-panel-small/remnants/small-solar-panel-remnants-base.png",
					width = 246,
					height = 198,
					direction_count = 1,
					shift = util.by_pixel(-1, -0.5),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/solar-panel-small/remnants/small-solar-panel-remnants-mask.png",
					width = 246,
					height = 198,
					direction_count = 1,
					shift = util.by_pixel(-1, -0.5),
					tint = tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/solar-panel-small/remnants/small-solar-panel-remnants-highlights.png",
					width = 246,
					height = 198,
					direction_count = 1,
					shift = util.by_pixel(-1, -0.5),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				}
			}
		}
		return remnant_animation
	end
	---@param tint data.Color
	---@return data.RotatedAnimation
	local function get_solar_panel_remnant_animation(tint)
		---@type data.RotatedAnimation
		local remnant_animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/solar-panel/remnants/solar-panel-remnants.png",
					width = 290,
					height = 282,
					direction_count = 1,
					shift = util.by_pixel(3.5, 0),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/solar-panel/remnants/solar-panel-remnants-mask.png",
					width = 290,
					height = 282,
					direction_count = 1,
					shift = util.by_pixel(3.5, 0),
					tint = tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/solar-panel/remnants/solar-panel-remnants-highlights.png",
					width = 290,
					height = 282,
					direction_count = 1,
					shift = util.by_pixel(3.5, 0),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				}
			}
		}
		return remnant_animation
	end
	for name, map in pairs(tier_map) do
		---@type data.SolarPanelPrototype
		local entity = data.raw[inputs.type][name]
		if not entity then
			goto continue
		end
		local tier = reskins.lib.tiers.get_tier(map)
		inputs.tint = reskins.lib.tiers.get_tint(tier)
		local letter
		if string.find(name, "small", 1, true) then
			letter = "S"
			inputs.icon_name = "solar-panel-small"
		elseif string.find(name, "large", 1, true) then
			letter = "L"
			inputs.icon_name = "solar-panel-large"
		else
			letter = "M"
			inputs.icon_name = "solar-panel"
		end
		inputs.icon_extras = reskins.lib.icons.get_letter(letter, inputs.tint)
		reskins.lib.setup_standard_entity(name, tier, inputs)
		local remnant = data.raw["corpse"][name .. "-remnants"]
		if inputs.icon_name == "solar-panel-small" then
			local remnant_animation = get_small_solar_panel_remnant_animation(inputs.tint)
			remnant.animation = make_rotated_animation_variations_from_sheet(2, remnant_animation)
			entity.picture =
			{
				layers =
				{
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel-small/base/solar-panel-small.png",
						priority = high,
						width = 180,
						height = 150,
						shift = util.by_pixel(5, 0.5),
						scale = 0.5
					},
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel-small/solar-panel-small-mask.png",
						priority = high,
						width = 180,
						height = 150,
						shift = util.by_pixel(5, 0.5),
						tint = inputs.tint,
						scale = 0.5
					},
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel-small/solar-panel-small-highlights.png",
						priority = high,
						width = 180,
						height = 150,
						shift = util.by_pixel(5, 0.5),
						blend_mode = reskins.lib.settings.blend_mode,
						scale = 0.5
					},
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel-small/base/solar-panel-small-shadow.png",
						priority = high,
						width = 180,
						height = 150,
						shift = util.by_pixel(5, 0.5),
						draw_as_shadow = true,
						scale = 0.5
					}
				}
			}
			entity.overlay =
			{
				layers =
				{
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel-small/base/solar-panel-small-shadow-overlay.png",
						priority = high,
						width = 180,
						height = 150,
						shift = util.by_pixel(5, 0.5),
						scale = 0.5
					}
				}
			}
		elseif inputs.icon_name == "solar-panel" then
			local remnant_animation = get_solar_panel_remnant_animation(inputs.tint)
			remnant.animation = make_rotated_animation_variations_from_sheet(2, remnant_animation)
			entity.picture =
			{
				layers =
				{
					{
						filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
						priority = high,
						width = 230,
						height = 224,
						shift = util.by_pixel(-3, 3.5),
						scale = 0.5
					},
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel/solar-panel-mask.png",
						priority = high,
						width = 230,
						height = 224,
						shift = util.by_pixel(-3, 3.5),
						tint = inputs.tint,
						scale = 0.5
					},
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel/solar-panel-highlights.png",
						priority = high,
						width = 230,
						height = 224,
						shift = util.by_pixel(-3, 3.5),
						blend_mode = reskins.lib.settings.blend_mode,
						scale = 0.5
					},
					{
						filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
						priority = high,
						width = 220,
						height = 180,
						shift = util.by_pixel(9.5, 6),
						draw_as_shadow = true,
						scale = 0.5
					}
				}
			}
			entity.overlay =
			{
				layers =
				{
					{
						filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
						priority = high,
						width = 214,
						height = 180,
						shift = util.by_pixel(10.5, 6),
						scale = 0.5
					}
				}
			}
		elseif inputs.icon_name == "solar-panel-large" then
			entity.picture =
			{
				layers =
				{
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/base/solar-panel-large.png",
						priority = high,
						width = 308,
						height = 274,
						shift = util.by_pixel(5, 3.5),
						scale = 0.5
					},
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/solar-panel-large-mask.png",
						priority = high,
						width = 308,
						height = 274,
						shift = util.by_pixel(5, 3.5),
						tint = inputs.tint,
						scale = 0.5
					},
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/solar-panel-large-highlights.png",
						priority = high,
						width = 308,
						height = 274,
						shift = util.by_pixel(5, 3.5),
						blend_mode = reskins.lib.settings.blend_mode,
						scale = 0.5
					},
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/base/solar-panel-large-shadow.png",
						priority = high,
						width = 308,
						height = 274,
						shift = util.by_pixel(5, 3.5),
						draw_as_shadow = true,
						scale = 0.5
					}
				}
			}
			entity.overlay =
			{
				layers =
				{
					{
						filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/base/solar-panel-large-shadow-overlay.png",
						priority = high,
						width = 308,
						height = 274,
						shift = util.by_pixel(5, 3.5),
						scale = 0.5
					}
				}
			}
		end
		::continue::
	end
end

-- ACCUMULATOR
do
	local inputs =
	{
		type = accumulator,
		icon_name = accumulator_1,
		base_entity_name = accumulator_1,
		mod = bobs_mod,
		group = power,
		particles = {[medium] = 2, [small] = 3},
	}
	local tier_map = {[accumulator_4] = {tier = 4, prog_tier = 5, wire = 1, letter = "H"}}
	local function accumulator_picture_tinted(inputs, repeat_count)
		return
		{
			layers =
			{
				{
					filename = "__reskins-bobs__/graphics/entity/power/accumulator/wires/accumulator-" .. inputs.wire .. ".png",
					priority = high,
					width = 130,
					height = 189,
					repeat_count = repeat_count,
					shift = util.by_pixel(0, -11),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/accumulator/accumulator-mask.png",
					priority = high,
					width = 130,
					height = 189,
					repeat_count = repeat_count,
					shift = util.by_pixel(0, -11),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/accumulator/accumulator-highlights.png",
					priority = high,
					width = 130,
					height = 189,
					repeat_count = repeat_count,
					shift = util.by_pixel(0, -11),
					blend_mode = reskins.lib.settings.blend_mode, -- "additive",
					scale = 0.5
				},
				{
					filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
					priority = high,
					width = 234,
					height = 106,
					repeat_count = repeat_count,
					shift = util.by_pixel(29, 6),
					draw_as_shadow = true,
					scale = 0.5
				}
			}
		}
	end
	local function accumulator_charge_tinted(inputs)
		return
		{
			layers =
			{
				accumulator_picture_tinted(inputs, 24),
				{
					filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
					priority = high,
					width = 178,
					height = 206,
					line_length = 6,
					frame_count = 24,
					draw_as_glow = true,
					shift = util.by_pixel(0, -22),
					scale = 0.5
				}
			}
		}
	end
	local function accumulator_discharge_tinted(inputs)
		return
		{
			layers =
			{
				accumulator_picture_tinted(inputs, 24),
				{
					filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
					priority = high,
					width = 170,
					height = 210,
					line_length = 6,
					frame_count = 24,
					draw_as_glow = true,
					shift = util.by_pixel(-1, -23),
					scale = 0.5
				}
			}
		}
	end
	for name, map in pairs(tier_map) do
		---@type data.AccumulatorPrototype
		local entity = data.raw[inputs.type][name]
		if not entity then
			goto continue
		end
		local tier = reskins.lib.tiers.get_tier(map)
		inputs.wire = map.wire
		inputs.tint = reskins.lib.tiers.get_tint(tier)
		inputs.icon_base = "accumulator-" .. map.wire
		inputs.icon_extras = reskins.lib.icons.get_letter(map.letter, reskins.lib.tiers.get_tint(tier))
		reskins.lib.setup_standard_entity(name, tier, inputs)
		local remnant = data.raw["corpse"][name .. "-remnants"]
		remnant.animation = make_rotated_animation_variations_from_sheet(1,
		{
			layers =
			{
				{
					filename = "__reskins-bobs__/graphics/entity/power/accumulator/remnants/wires/accumulator-" .. inputs.wire .. "-remnants.png",
					width = 172,
					height = 146,
					direction_count = 1,
					shift = util.by_pixel(2.5, 3.5),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/accumulator/remnants/accumulator-remnants-mask.png",
					width = 172,
					height = 146,
					direction_count = 1,
					shift = util.by_pixel(2.5, 3.5),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/power/accumulator/remnants/accumulator-remnants-highlights.png",
					width = 172,
					height = 146,
					direction_count = 1,
					shift = util.by_pixel(2.5, 3.5),
					blend_mode = reskins.lib.settings.blend_mode, -- "additive",
					scale = 0.5
				}
			}
		})
		entity.chargable_graphics.picture = accumulator_picture_tinted(inputs)
		entity.chargable_graphics.charge_animation = accumulator_charge_tinted(inputs)
		entity.chargable_graphics.discharge_animation = accumulator_discharge_tinted(inputs)
		entity.chargable_graphics.charge_light = nil
		entity.chargable_graphics.discharge_light = nil
		::continue::
	end
end

-- ELECTRIC MINING DRILL
do
	if settings.startup[setting_bobmods_mining_miningdrills].value then
		local inputs =
		{
			type = mining_drill,
			icon_name = electric_mining_drill_1,
			base_entity_name = electric_mining_drill_1,
			mod = bobs_mod,
			group = mining,
			particles = {["medium-long"] = 3},
		}
		local tier_map = {[electric_mining_drill_6] = {tier = 6, prog_tier = 6}}
		local function vertical_drill_animation(speed, inputs)
			return
			{
				layers =
				{
					{
						priority = high,
						filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill.png",
						line_length = 6,
						width = 162,
						height = 156,
						frame_count = 30,
						animation_speed = speed,
						frame_sequence = reskins.bobs.electric_drill_animation_sequence,
						shift = util.by_pixel(1, -11),
						scale = 0.5
					},
					{
						priority = high,
						filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-mask.png",
						line_length = 6,
						width = 162,
						height = 156,
						frame_count = 30,
						animation_speed = speed,
						frame_sequence = reskins.bobs.electric_drill_animation_sequence,
						shift = util.by_pixel(1, -11),
						tint = inputs.tint,
						scale = 0.5
					},
					{
						priority = high,
						filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-highlights.png",
						line_length = 6,
						width = 162,
						height = 156,
						frame_count = 30,
						animation_speed = speed,
						frame_sequence = reskins.bobs.electric_drill_animation_sequence,
						shift = util.by_pixel(1, -11),
						blend_mode = reskins.lib.settings.blend_mode,
						scale = 0.5
					},
					{
						priority = high,
						filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-shadow.png",
						line_length = 7,
						width = 218,
						height = 56,
						frame_count = 21,
						animation_speed = speed,
						frame_sequence = reskins.bobs.electric_drill_animation_shadow_sequence,
						draw_as_shadow = true,
						shift = util.by_pixel(21, 5),
						scale = 0.5
					}
				}
			}
		end
		local function horizontal_drill_animation(speed, inputs, is_front)
			local function horizontal_drill_shadow(speed)
				return
				{
					priority = high,
					filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
					line_length = 7,
					width = 180,
					height = 164,
					frame_count = 21,
					animation_speed = speed,
					frame_sequence = reskins.bobs.electric_drill_animation_shadow_sequence,
					draw_as_shadow = true,
					shift = util.by_pixel(48, 5),
					scale = 0.5
				}
			end
			local drill_animation
			if is_front then
				drill_animation =
				{
					layers =
					{
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal-front.png",
							line_length = 6,
							width = 66,
							height = 154,
							frame_count = 30,
							animation_speed = speed,
							frame_sequence = reskins.bobs.electric_drill_animation_sequence,
							shift = util.by_pixel(-3, 3),
							scale = 0.5
						},
						{
							priority = high,
							filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-front-mask.png",
							line_length = 6,
							width = 66,
							height = 154,
							frame_count = 30,
							animation_speed = speed,
							frame_sequence = reskins.bobs.electric_drill_animation_sequence,
							shift = util.by_pixel(-3, 3),
							tint = inputs.tint,
							scale = 0.5
						},
						{
							priority = high,
							filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-front-highlights.png",
							line_length = 6,
							width = 66,
							height = 154,
							frame_count = 30,
							animation_speed = speed,
							frame_sequence = reskins.bobs.electric_drill_animation_sequence,
							shift = util.by_pixel(-3, 3),
							blend_mode = reskins.lib.settings.blend_mode,
							scale = 0.5
						},
						horizontal_drill_shadow(speed)
					}
				}
			else
				drill_animation =
				{
					layers =
					{
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-horizontal.png",
							line_length = 6,
							width = 80,
							height = 160,
							frame_count = 30,
							animation_speed = speed,
							frame_sequence = reskins.bobs.electric_drill_animation_sequence,
							shift = util.by_pixel(2, -12),
							scale = 0.5
						},
						{
							priority = high,
							filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-mask.png",
							line_length = 6,
							width = 80,
							height = 160,
							frame_count = 30,
							animation_speed = speed,
							frame_sequence = reskins.bobs.electric_drill_animation_sequence,
							shift = util.by_pixel(2, -12),
							tint = inputs.tint,
							scale = 0.5
						},
						{
							priority = high,
							filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-highlights.png",
							line_length = 6,
							width = 80,
							height = 160,
							frame_count = 30,
							animation_speed = speed,
							frame_sequence = reskins.bobs.electric_drill_animation_sequence,
							shift = util.by_pixel(2, -12),
							blend_mode = reskins.lib.settings.blend_mode,
							scale = 0.5
						},
						horizontal_drill_shadow(speed)
					}
				}
			end
			return drill_animation
		end
		local function drill_dry_animation(speed, inputs)
			local drill_type = "__base__/graphics/entity/electric-mining-drill"
			if inputs.is_area_drill then
				drill_type = "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame"
			end
			return
			{
				north =
				{
					layers =
					{
						{
							priority = high,
							filename = drill_type .. "/electric-mining-drill-N.png",
							width = 190,
							height = 208,
							animation_speed = speed,
							shift = util.by_pixel(0, -4),
							repeat_count = 5,
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
							line_length = 5,
							width = 60,
							height = 66,
							frame_count = 5,
							animation_speed = speed,
							shift = util.by_pixel(-3, -44),
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-shadow.png",
							width = 212,
							height = 204,
							animation_speed = speed,
							draw_as_shadow = true,
							shift = util.by_pixel(6, -3),
							repeat_count = 5,
							scale = 0.5
						}
					}
				},
				east =
				{
					layers =
					{
						{
							priority = high,
							filename = drill_type .. "/electric-mining-drill-E.png",
							width = 192,
							height = 188,
							animation_speed = speed,
							shift = util.by_pixel(0, -4),
							repeat_count = 5,
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
							line_length = 5,
							width = 50,
							height = 74,
							frame_count = 5,
							animation_speed = speed,
							shift = util.by_pixel(30, -8),
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-shadow.png",
							width = 222,
							height = 182,
							animation_speed = speed,
							draw_as_shadow = true,
							shift = util.by_pixel(10, 2),
							repeat_count = 5,
							scale = 0.5
						}
					}
				},
				south =
				{
					layers =
					{
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S.png",
							width = 184,
							height = 192,
							animation_speed = speed,
							shift = util.by_pixel(0, -1),
							repeat_count = 5,
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-shadow.png",
							width = 212,
							height = 204,
							animation_speed = speed,
							draw_as_shadow = true,
							shift = util.by_pixel(6, 2),
							repeat_count = 5,
							scale = 0.5
						}
					}
				},
				west =
				{
					layers =
					{
						{
							priority = high,
							filename = drill_type .. "/electric-mining-drill-W.png",
							width = 192,
							height = 188,
							animation_speed = speed,
							shift = util.by_pixel(0, -4),
							repeat_count = 5,
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
							line_length = 5,
							width = 50,
							height = 60,
							frame_count = 5,
							animation_speed = speed,
							shift = util.by_pixel(-31, -13),
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-shadow.png",
							width = 200,
							height = 182,
							animation_speed = speed,
							draw_as_shadow = true,
							shift = util.by_pixel(-5, 2),
							repeat_count = 5,
							scale = 0.5
						}
					}
				}
			}
		end
		local function drill_dry_working_visualisation(speed, inputs)
			local drill_type = "__base__/graphics/entity/electric-mining-drill"
			if inputs.is_area_drill then
				drill_type = "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame"
			end
			return
			{
				{
					constant_speed = true,
					synced_fadeout = true,
					align_to_waypoint = true,
					apply_tint = "resource-color",
					animation = reskins.bobs.electric_mining_drill_smoke(),
					north_position = {0, 0.25},
					east_position = {0, 0},
					south_position = {0, 0.25},
					west_position = {0, 0}
				},
				{
					constant_speed = true,
					fadeout = true,
					apply_tint = "resource-color",
					north_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
								line_length = 5,
								width = 42,
								height = 58,
								frame_count = 10,
								animation_speed = speed,
								shift = util.by_pixel(-1, -44),
								scale = 0.5
							}
						}
					},
					east_animation = nil,
					south_animation = nil,
					west_animation = nil
				},
				{
					animated_shift = true,
					always_draw = true,
					north_animation = vertical_drill_animation(speed, inputs),
					east_animation = horizontal_drill_animation(speed, inputs),
					south_animation = vertical_drill_animation(speed, inputs),
					west_animation = horizontal_drill_animation(speed, inputs)
				},
				{
					constant_speed = true,
					synced_fadeout = true,
					align_to_waypoint = true,
					apply_tint = "resource-color",
					animation = reskins.bobs.electric_mining_drill_smoke_front(),
					north_position = {0, 0.25},
					east_position = {0, 0},
					south_position = {0, 0.25},
					west_position = {0, 0}
				},
				{
					constant_speed = true,
					fadeout = true,
					apply_tint = "resource-color",
					north_animation = nil,
					east_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
								line_length = 5,
								width = 46,
								height = 56,
								frame_count = 10,
								animation_speed = speed,
								shift = util.by_pixel(24, -12),
								scale = 0.5
							}
						}
					},
					south_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
								line_length = 5,
								width = 48,
								height = 36,
								frame_count = 10,
								animation_speed = speed,
								shift = util.by_pixel(-2, 20),
								scale = 0.5
							}
						}
					},
					west_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
								line_length = 5,
								width = 46,
								height = 54,
								frame_count = 10,
								animation_speed = speed,
								shift = util.by_pixel(-25, -11),
								scale = 0.5
							}
						}
					}
				},
				{
					animated_shift = true,
					always_draw = true,
					east_animation = horizontal_drill_animation(speed, inputs, true),
					west_animation = horizontal_drill_animation(speed, inputs, true)
				},
				{
					always_draw = true,
					north_animation = nil,
					east_animation =
					{
						priority = high,
						filename = drill_type .. "/electric-mining-drill-E-front.png",
						width = 136,
						height = 148,
						animation_speed = speed,
						shift = util.by_pixel(21, 10),
						scale = 0.5
					},
					south_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = drill_type .. "/electric-mining-drill-S-output.png",
								line_length = 5,
								width = 84,
								height = 56,
								frame_count = 5,
								animation_speed = speed,
								shift = util.by_pixel(-1, 34),
								scale = 0.5
							},
							{
								priority = high,
								filename = drill_type .. "/electric-mining-drill-S-front.png",
								width = 190,
								height = 104,
								animation_speed = speed,
								repeat_count = 5,
								shift = util.by_pixel(0, 27),
								scale = 0.5
							}
						}
					},
					west_animation =
					{
						priority = high,
						filename = drill_type .. "/electric-mining-drill-W-front.png",
						width = 134,
						height = 140,
						animation_speed = speed,
						shift = util.by_pixel(-22, 12),
						scale = 0.5
					}
				},
				reskins.bobs.electric_mining_drill_status_leds_working_visualisation(),
				reskins.bobs.electric_mining_drill_secondary_light,
			}
		end
		local function drill_wet_animation(speed, inputs)
			local drill_type = "__base__/graphics/entity/electric-mining-drill"
			if inputs.is_area_drill then
				drill_type = "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame"
			end
			return
			{
				north =
				{
					layers =
					{
						{
							priority = high,
							filename = drill_type .. "/electric-mining-drill-N-wet.png",
							width = 190,
							height = 198,
							animation_speed = speed,
							shift = util.by_pixel(0, -7),
							repeat_count = 5,
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
							line_length = 5,
							width = 60,
							height = 66,
							frame_count = 5,
							animation_speed = speed,
							shift = util.by_pixel(-3, -44),
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-shadow.png",
							width = 248,
							height = 222,
							animation_speed = speed,
							draw_as_shadow = true,
							shift = util.by_pixel(12, 1),
							repeat_count = 5,
							scale = 0.5
						}
					}
				},
				west =
				{
					layers =
					{
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet.png",
							width = 194,
							height = 208,
							animation_speed = speed,
							shift = util.by_pixel(1, -9),
							repeat_count = 5,
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
							line_length = 5,
							width = 50,
							height = 60,
							frame_count = 5,
							animation_speed = speed,
							shift = util.by_pixel(-31, -13),
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-shadow.png",
							width = 260,
							height = 202,
							animation_speed = speed,
							draw_as_shadow = true,
							shift = util.by_pixel(9, 6),
							repeat_count = 5,
							scale = 0.5
						}
					}
				},
				south =
				{
					layers =
					{
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet.png",
							width = 192,
							height = 208,
							animation_speed = speed,
							shift = util.by_pixel(1, -5),
							repeat_count = 5,
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-shadow.png",
							width = 248,
							height = 192,
							animation_speed = speed,
							draw_as_shadow = true,
							shift = util.by_pixel(12, 5),
							repeat_count = 5,
							scale = 0.5
						}
					}
				},
				east =
				{
					layers =
					{
						{
							priority = high,
							filename = drill_type .. "/electric-mining-drill-E-wet.png",
							width = 194,
							height = 208,
							animation_speed = speed,
							shift = util.by_pixel(-2, -9),
							repeat_count = 5,
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
							line_length = 5,
							width = 50,
							height = 74,
							frame_count = 5,
							animation_speed = speed,
							shift = util.by_pixel(30, -8),
							scale = 0.5
						},
						{
							priority = high,
							filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-shadow.png",
							width = 226,
							height = 202,
							animation_speed = speed,
							draw_as_shadow = true,
							shift = util.by_pixel(9, 5),
							repeat_count = 5,
							scale = 0.5
						}
					}
				}
			}
		end
		local function drill_wet_working_visualisation(speed, inputs)
			local drill_type = "__base__/graphics/entity/electric-mining-drill"
			if inputs.is_area_drill then
				drill_type = "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame"
			end
			return
			{
				{
					constant_speed = true,
					synced_fadeout = true,
					align_to_waypoint = true,
					apply_tint = "resource-color",
					animation = reskins.bobs.electric_mining_drill_smoke(),
					north_position = {0, 0.25},
					east_position = {0, 0},
					south_position = {0, 0.25},
					west_position = {0, 0}
				},
				{
					constant_speed = true,
					fadeout = true,
					apply_tint = "resource-color",
					north_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
								line_length = 5,
								width = 42,
								height = 58,
								frame_count = 10,
								animation_speed = speed,
								shift = util.by_pixel(-1, -44),
								scale = 0.5
							}
						}
					},
					east_animation = nil,
					south_animation = nil,
					west_animation = nil
				},
				{
					animated_shift = true,
					always_draw = true,
					north_animation = vertical_drill_animation(speed, inputs),
					east_animation = horizontal_drill_animation(speed, inputs),
					south_animation = vertical_drill_animation(speed, inputs),
					west_animation = horizontal_drill_animation(speed, inputs)
				},
				{
					constant_speed = true,
					synced_fadeout = true,
					align_to_waypoint = true,
					apply_tint = "resource-color",
					animation = reskins.bobs.electric_mining_drill_smoke_front()
				},
				{
					constant_speed = true,
					fadeout = true,
					apply_tint = "resource-color",
					north_animation = nil,
					east_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
								line_length = 5,
								width = 46,
								height = 56,
								frame_count = 10,
								animation_speed = speed,
								shift = util.by_pixel(24, -12),
								scale = 0.5
							}
						}
					},
					south_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
								line_length = 5,
								width = 48,
								height = 36,
								frame_count = 10,
								animation_speed = speed,
								shift = util.by_pixel(-2, 20),
								scale = 0.5
							}
						}
					},
					west_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
								line_length = 5,
								width = 46,
								height = 54,
								frame_count = 10,
								animation_speed = speed,
								shift = util.by_pixel(-25, -11),
								scale = 0.5
							}
						}
					}
				},
				{
					secondary_draw_order = -49,
					always_draw = true,
					north_animation = nil,
					east_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background.png",
								width = 22,
								height = 14,
								animation_speed = speed,
								shift = util.by_pixel(0, -52),
								scale = 0.5
							}
						}
					},
					south_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background.png",
								width = 30,
								height = 20,
								animation_speed = speed,
								shift = util.by_pixel(-2, -43),
								scale = 0.5
							}
						}
					},
					west_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background.png",
								width = 22,
								height = 14,
								animation_speed = speed,
								shift = util.by_pixel(0, -52),
								scale = 0.5
							}
						}
					}
				},
				{
					always_draw = true,
					secondary_draw_order = -48,
					apply_tint = "input-fluid-base-color",
					north_animation = nil,
					east_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background.png",
								width = 22,
								height = 14,
								animation_speed = speed,
								shift = util.by_pixel(0, -52),
								scale = 0.5
							}
						}
					},
					south_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background.png",
								width = 28,
								height = 18,
								animation_speed = speed,
								shift = util.by_pixel(-2, -43),
								scale = 0.5
							}
						}
					},
					west_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background.png",
								width = 22,
								height = 14,
								animation_speed = speed,
								shift = util.by_pixel(0, -52),
								scale = 0.5
							}
						}
					}
				},
				{
					secondary_draw_order = -47,
					always_draw = true,
					apply_tint = "input-fluid-flow-color",
					north_animation = nil,
					east_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow.png",
								width = 24,
								height = 14,
								animation_speed = speed,
								shift = util.by_pixel(0, -52),
								scale = 0.5
							}
						}
					},
					south_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow.png",
								width = 26,
								height = 16,
								animation_speed = speed,
								shift = util.by_pixel(-2, -42),
								scale = 0.5
							}
						}
					},
					west_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow.png",
								width = 24,
								height = 14,
								animation_speed = speed,
								shift = util.by_pixel(0, -52),
								scale = 0.5
							}
						}
					}
				},
				{
					animated_shift = true,
					always_draw = true,
					east_animation = horizontal_drill_animation(speed, inputs, true),
					west_animation = horizontal_drill_animation(speed, inputs, true)
				},
				{
					always_draw = true,
					north_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-window-background.png",
								width = 172,
								height = 90,
								animation_speed = speed,
								shift = util.by_pixel(0, 9),
								scale = 0.5
							}
						}
					},
					west_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background-front.png",
								width = 80,
								height = 106,
								animation_speed = speed,
								shift = util.by_pixel(14, 10),
								scale = 0.5
							}
						}
					},
					south_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background-front.png",
								width = 172,
								height = 22,
								animation_speed = speed,
								shift = util.by_pixel(0, -7),
								scale = 0.5
							}
						}
					},
					east_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background-front.png",
								width = 82,
								height = 110,
								animation_speed = speed,
								shift = util.by_pixel(-15, 9),
								scale = 0.5
							}
						}
					}
				},
				{
					always_draw = true,
					apply_tint = "input-fluid-base-color",
					north_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-background.png",
								width = 178,
								height = 94,
								animation_speed = speed,
								shift = util.by_pixel(0, 9),
								scale = 0.5
							}
						}
					},
					west_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background-front.png",
								width = 80,
								height = 102,
								animation_speed = speed,
								shift = util.by_pixel(14, 11),
								scale = 0.5
							}
						}
					},
					south_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background-front.png",
								width = 178,
								height = 28,
								animation_speed = speed,
								shift = util.by_pixel(0, -7),
								scale = 0.5
							}
						}
					},
					east_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background-front.png",
								width = 82,
								height = 106,
								animation_speed = speed,
								shift = util.by_pixel(-15, 10),
								scale = 0.5
							}
						}
					}
				},
				{
					always_draw = true,
					apply_tint = "input-fluid-flow-color",
					north_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-flow.png",
								width = 172,
								height = 88,
								animation_speed = speed,
								shift = util.by_pixel(0, 10),
								scale = 0.5
							}
						}
					},
					west_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow-front.png",
								width = 78,
								height = 102,
								animation_speed = speed,
								shift = util.by_pixel(14, 11),
								scale = 0.5
							}
						}
					},
					south_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow-front.png",
								width = 172,
								height = 22,
								animation_speed = speed,
								shift = util.by_pixel(0, -8),
								scale = 0.5
							}
						}
					},
					east_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow-front.png",
								width = 78,
								height = 106,
								animation_speed = speed,
								shift = util.by_pixel(-14, 10),
								scale = 0.5
							}
						}
					}
				},
				{
					always_draw = true,
					north_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-front.png",
								width = 200,
								height = 130,
								animation_speed = speed,
								shift = util.by_pixel(0, 16),
								scale = 0.5
							}
						}
					},
					west_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = drill_type .. "/electric-mining-drill-W-wet-front.png",
								width = 208,
								height = 144,
								animation_speed = speed,
								shift = util.by_pixel(-4, 12),
								scale = 0.5
							}
						}
					},
					south_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = drill_type .. "/electric-mining-drill-S-output.png",
								line_length = 5,
								width = 84,
								height = 56,
								frame_count = 5,
								animation_speed = speed,
								shift = util.by_pixel(-1, 34),
								scale = 0.5
							},
							{
								priority = high,
								filename = drill_type .. "/electric-mining-drill-S-wet-front.png",
								width = 192,
								height = 140,
								animation_speed = speed,
								repeat_count = 5,
								shift = util.by_pixel(0, 18),
								scale = 0.5
							}
						}
					},
					east_animation =
					{
						layers =
						{
							{
								priority = high,
								filename = drill_type .. "/electric-mining-drill-E-wet-front.png",
								width = 208,
								height = 148,
								animation_speed = speed,
								shift = util.by_pixel(3, 11),
								scale = 0.5
							}
						}
					}
				},
				reskins.bobs.electric_mining_drill_status_leds_working_visualisation(),
				reskins.bobs.electric_mining_drill_secondary_light
			}
		end
		local max_playback = 1.2
		local min_playback = 0.4
		local mining_speeds = {}
		local index = 1
		for name, _ in pairs(tier_map) do
			---@type data.MiningDrillPrototype
			local entity = data.raw[inputs.type][name]
			if not entity then
				goto continue
			end
			mining_speeds[index] = data.raw[inputs.type][name].mining_speed
			index = index + 1
			::continue::
		end
		table.sort(mining_speeds)
		local max_speed = mining_speeds[#mining_speeds]
		local min_speed = mining_speeds[1]
		for name, map in pairs(tier_map) do
			---@type data.MiningDrillPrototype
			local entity = data.raw[inputs.type][name]
			if not entity then
				goto continue
			end
			local tier = reskins.lib.tiers.get_tier(map)
			if name == "electric-mining-drill" then
				inputs.defer_to_data_updates = true
			else
				inputs.defer_to_data_updates = nil
			end
			if string.find(name, "area") then
				inputs.icon_base = "large-area-electric-mining-drill"
				inputs.is_area_drill = true
				inputs.icon_extras = reskins.lib.icons.get_symbol("area-drill", reskins.lib.tiers.get_tint(tier))
			else
				inputs.icon_base = "electric-mining-drill"
				inputs.is_area_drill = false
				inputs.icon_extras = nil
			end
			inputs.tint = reskins.lib.tiers.get_tint(tier)
			reskins.lib.setup_standard_entity(name, tier, inputs)
			local speed
			if max_speed - min_speed == 0 then
				speed = entity.mining_speed
			else
				speed = ((entity.mining_speed / (max_speed - min_speed)) - (min_speed / (max_speed - min_speed))) * max_playback + ((max_speed / (max_speed - min_speed)) - (entity.mining_speed / (max_speed - min_speed))) * min_playback
			end
			local remnant = data.raw["corpse"][name .. "-remnants"]
			remnant.animation = make_rotated_animation_variations_from_sheet(4,
			{
				layers =
				{
					{
						filename = "__base__/graphics/entity/electric-mining-drill/remnants/electric-mining-drill-remnants.png",
						width = 356,
						height = 328,
						direction_count = 1,
						shift = util.by_pixel(7, -0.5),
						scale = 0.5
					},
					{
						filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/remnants/electric-mining-drill-remnants-mask.png",
						width = 356,
						height = 328,
						direction_count = 1,
						shift = util.by_pixel(7, -0.5),
						tint = inputs.tint,
						scale = 0.5
					},
					{
						filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/remnants/electric-mining-drill-remnants-highlights.png",
						width = 356,
						height = 328,
						direction_count = 1,
						shift = util.by_pixel(7, -0.5),
						blend_mode = reskins.lib.settings.blend_mode,
						scale = 0.5
					}
				}
			})
			entity.graphics_set.drilling_vertical_movement_duration = 10 / speed
			entity.graphics_set.animation = drill_dry_animation(speed, inputs)
			entity.graphics_set.shift_animation_waypoint_stop_duration = 195 / speed
			entity.graphics_set.shift_animation_transition_duration = 30 / speed
			entity.graphics_set.working_visualisations = drill_dry_working_visualisation(speed, inputs)
			entity.wet_mining_graphics_set.drilling_vertical_movement_duration = 10 / speed
			entity.wet_mining_graphics_set.animation = drill_wet_animation(speed, inputs)
			entity.wet_mining_graphics_set.shift_animation_waypoint_stop_duration = 195 / speed
			entity.wet_mining_graphics_set.shift_animation_transition_duration = 30 / speed
			entity.wet_mining_graphics_set.working_visualisations = drill_wet_working_visualisation(speed, inputs)
			::continue::
		end
	end
end

-- PUMPJACK
do
	local inputs =
	{
		type = mining_drill,
		icon_name = pumpjack_1,
		base_entity_name = pumpjack_1,
		mod = bobs_mod,
		group = mining,
		particles = {[small] = 3},
	}
	local tier_map =
	{
		[pumpjack_5] = {tier = 5, prog_tier = 6},
		[pumpjack_6] = {tier = 6, prog_tier = 6}
	}
	local max_playback = 2
	local min_playback = 0.5
	local pumpjack_speeds = {}
	local index = 1
	for name, _ in pairs(tier_map) do
		---@type data.MiningDrillPrototype
		local entity = data.raw[inputs.type][name]
		if not entity then
			goto continue
		end
		pumpjack_speeds[index] = data.raw[inputs.type][name].mining_speed
		index = index + 1
		::continue::
	end
	table.sort(pumpjack_speeds)
	local max_speed = pumpjack_speeds[#pumpjack_speeds]
	local min_speed = pumpjack_speeds[1]
	---@param tint data.Color
	---@param is_water_miner boolean
	---@return data.RotatedAnimation
	local function get_remnant_animation(tint, is_water_miner)
		---@type data.RotatedAnimation
		local remnant_animation =
		{
			layers =
			{
				{
					filename = is_water_miner and "__reskins-bobs__/graphics/entity/mining/pumpjack/remnants/water-pumpjack-remnants-base.png" or "__base__/graphics/entity/pumpjack/remnants/pumpjack-remnants.png",
					width = 274,
					height = 284,
					direction_count = 1,
					shift = util.by_pixel(0, 3.5),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/mining/pumpjack/remnants/pumpjack-remnants-mask.png",
					width = 274,
					height = 284,
					direction_count = 1,
					shift = util.by_pixel(0, 3.5),
					tint = tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/mining/pumpjack/remnants/pumpjack-remnants-highlights.png",
					width = 274,
					height = 284,
					direction_count = 1,
					shift = util.by_pixel(0, 3.5),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				}
			}
		}
		return remnant_animation
	end
	for name, map in pairs(tier_map) do
		---@type data.MiningDrillPrototype
		local entity = data.raw[inputs.type][name]
		if not entity then
			goto continue
		end
		local tier = reskins.lib.tiers.get_tier(map)
		inputs.tint = reskins.lib.tiers.get_tint(tier)
		if map.is_water_miner then
			inputs.icon_base = "water-pumpjack"
		else
			inputs.icon_base = "pumpjack"
		end
		reskins.lib.setup_standard_entity(name, tier, inputs)
		local animation_speed
		if max_speed - min_speed == 0 then
			animation_speed = entity.mining_speed
		else
			animation_speed = ((entity.mining_speed / (max_speed - min_speed)) - (min_speed / (max_speed - min_speed))) * max_playback + ((max_speed / (max_speed - min_speed)) - (entity.mining_speed / (max_speed - min_speed))) * min_playback
		end
		if map.is_water_miner then
			reskins.lib.create_particle(name, inputs.base_entity_name, reskins.lib.particle_index["big"], 1, util.color("#3083bf"))
			reskins.lib.create_particle(name, inputs.base_entity_name, reskins.lib.particle_index["medium"], 2, util.color("#3083bf"))
		end
		local remnant = data.raw["corpse"][name .. "-remnants"]
		local remnant_animation = get_remnant_animation(inputs.tint, map.is_water_miner)
		remnant.animation = make_rotated_animation_variations_from_sheet(2, remnant_animation)
		entity.base_picture =
		{
			sheets =
			{
				{
					filename = map.is_water_miner and "__reskins-bobs__/graphics/entity/mining/pumpjack/water-pumpjack-base.png" or "__base__/graphics/entity/pumpjack/pumpjack-base.png",
					priority = extra_high,
					width = 261,
					height = 273,
					shift = util.by_pixel(-2.25, -4.75),
					scale = 0.5
				},
				{
					filename = "__base__/graphics/entity/pumpjack/pumpjack-base-shadow.png",
					width = 220,
					height = 220,
					scale = 0.5,
					draw_as_shadow = true,
					shift = util.by_pixel(6, 0.5)
				}
			}
		}
		entity.graphics_set.animation =
		{
			north =
			{
				layers =
				{
					{
						priority = high,
						filename = map.is_water_miner and "__reskins-bobs__/graphics/entity/mining/pumpjack/water-pumpjack-horsehead.png" or "__base__/graphics/entity/pumpjack/pumpjack-horsehead.png",
						animation_speed = animation_speed,
						repeat_count = 6,
						scale = 0.5,
						line_length = 8,
						width = 206,
						height = 202,
						frame_count = 40,
						shift = util.by_pixel(-4, -24)
					},
					{
						priority = high,
						filename = "__reskins-bobs__/graphics/entity/mining/pumpjack/pumpjack-horsehead-mask.png",
						animation_speed = animation_speed,
						repeat_count = 6,
						scale = 0.5,
						line_length = 8,
						width = 206,
						height = 202,
						frame_count = 40,
						shift = util.by_pixel(-4, -24),
						tint = inputs.tint
					},
					{
						priority = high,
						filename = "__reskins-bobs__/graphics/entity/mining/pumpjack/pumpjack-horsehead-highlights.png",
						animation_speed = animation_speed,
						repeat_count = 6,
						scale = 0.5,
						line_length = 8,
						width = 206,
						height = 202,
						frame_count = 40,
						shift = util.by_pixel(-4, -24),
						blend_mode = reskins.lib.settings.blend_mode
					},
					{
						priority = high,
						filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
						animation_speed = animation_speed,
						repeat_count = 6,
						draw_as_shadow = true,
						line_length = 8,
						width = 309,
						height = 82,
						frame_count = 40,
						scale = 0.5,
						shift = util.by_pixel(17.75, 14.5)
					}
				}
			}
		}
		::continue::
	end
end

-- REACTOR
do
	if reskins and reskins.bobs and reskins.bobs.nuclear_reactor_index then
		reskins.bobs.nuclear_reactor_index[tritium_reactor] = {name = "tritium", tint = {r = 0.72, g = 0.05, b = 1.0, a = 1.0}}
		reskins.bobs.nuclear_reactor_index[tritium_reactor].fuel = "tritium"
	end
	local inputs =
	{
		type = reactor,
		icon_name = uranium_reactor,
		base_entity_name = uranium_reactor,
		mod = bobs_mod,
		group = power
	}
	local reactors =
	{
		[uranium_reactor] = {tier = 1, prog_tier = 3, material = "base"},
		[thorium_reactor] = {tier = 2, prog_tier = 4, material = "aluminum-invar"},
		[deuterium_reactor] = {tier = 3, prog_tier = 5, material = "silver-titanium"},
		[tritium_reactor] = {tier = 4, prog_tier = 6, material = "gold-copper"}
		-- "base", "aluminum-invar", "silver-aluminum", "silver-titanium", "gold-copper"
	}
	local function skin_reactor_entity(name, tint, material)
		local entity = data_reactor[name]
		if not entity then return end
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
		if not remnant then return end
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
					blend_mode = reskins.lib.settings.blend_mode,
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
		if name == uranium_reactor then
			inputs.icon_base = "nuclear-reactor-uranium-base"
		elseif name == thorium_reactor then
			inputs.icon_base = "nuclear-reactor-uranium-aluminum-invar"
		elseif name == deuterium_reactor then
			inputs.icon_base = "nuclear-reactor-uranium-silver-titanium"
		else
			inputs.icon_base = "nuclear-reactor-uranium-gold-copper"
		end
		reskins.lib.construct_icon(name, tier, inputs)
		::continue::
	end
end

-- FURNACES
do
	local electric_furnace_map =
	{
		[electric_furnace_4] = {icon_name = electric_furnace_1, furnace = "standard", tier = 6, type = furnace},
		[electric_mixing_furnace_4] = {icon_name = electric_mixing_furnace_1, furnace = "mixing", tier = 6, type = assembling_machine, has_fluids = true},
	}
	local function furnace_heater_animation()
		return
		{
			filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/animations/electric-furnace-heater.png",
			priority = high,
			width = 60,
			height = 56,
			frame_count = 12,
			animation_speed = 0.5,
			shift = util.by_pixel(2, 33),
			draw_as_glow = true,
			scale = 0.5
		}
	end
	local function furnace_heater(has_fluids)
		if has_fluids then
			return
			{
				fadeout = true,
				north_animation = furnace_heater_animation(),
				east_animation = furnace_heater_animation(),
				west_animation = furnace_heater_animation()
			}
		else
			return
			{
				fadeout = true,
				animation = furnace_heater_animation()
			}
		end
	end
	local function furnace_working_light(type, has_partial)
		local working_type = "electric-furnace-light"
		if type then
			if has_partial then
				working_type = "electric-" .. type .. "-furnace-light-obstructed"
			else
				working_type = "electric-" .. type .. "-furnace-light"
			end
		end
		return
		{
			filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/lights/" .. working_type .. ".png",
			priority = high,
			width = 238,
			height = 212,
			shift = util.by_pixel(1, 1),
			blend_mode = "additive",
			draw_as_glow = true,
			scale = 0.5
		}
	end
	local function furnace_ground_light()
		return
		{
			filename = "__base__/graphics/entity/electric-furnace/electric-furnace-ground-light.png",
			blend_mode = "additive",
			width = 166,
			height = 124,
			shift = util.by_pixel(3, 69),
			draw_as_light = true,
			scale = 0.5,
		}
	end
	local function furnace_large_propeller()
		return
		{
			animation =
			{
				filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/animations/propeller-large.png",
				priority = high,
				width = 38,
				height = 26,
				frame_count = 4,
				animation_speed = 0.5,
				shift = util.by_pixel(-20, -18),
				scale = 0.5
			}
		}
	end
	local function furnace_small_propeller(is_shifted)
		local shift = util.by_pixel(4, -37.5)
		if is_shifted then
			shift = util.by_pixel(1, -24)
		end
		return
		{
			animation =
			{
				filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/animations/propeller-small.png",
				priority = high,
				width = 24,
				height = 16,
				frame_count = 4,
				animation_speed = 0.5,
				shift = shift,
				scale = 0.5
			}
		}
	end
	---@return data.WaterReflectionDefinition
	local function get_electric_furnace_water_reflection()
		---@type data.WaterReflectionDefinition
		local water_reflection = {
			pictures = {
				filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
				priority = extra_high,
				width = 24,
				height = 24,
				shift = util.by_pixel(5, 40),
				variation_count = 1,
				scale = 5,
			},
			rotate = false,
			orientation_to_variation = false,
		}

		return water_reflection
	end
	for name, map in pairs(electric_furnace_map) do
		local tier = reskins.lib.tiers.get_tier(map)

		local inputs =
		{
			type = map.type,
			base_entity_name = "electric-furnace",
			directory = reskins.bobs.directory,
			mod = bobs_mod,
			group = "assembly",
			particles = {[medium] = 2},
			tint = map.tint or reskins.lib.tiers.get_tint(tier),
			icon_name = map.icon_name or name,
		}
		if reskins.lib.settings.get_value("reskins-bobs-do-furnace-tier-labeling") == true then
			inputs.tier_labels = true
		else
			inputs.tier_labels = false
		end
		---@type data.FurnacePrototype|data.AssemblingMachinePrototype
		local entity = data.raw[inputs.type][name]
		if not entity then
			goto continue
		end
		reskins.lib.setup_standard_entity(name, tier, inputs)
		local remnant = data.raw["corpse"][name .. "-remnants"]
		remnant.animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/electric-furnace/remnants/electric-furnace-remnants.png",
					width = 454,
					height = 448,
					direction_count = 1,
					shift = util.by_pixel(-3.25, 7.25),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/remnants/electric-furnace-remnants-mask.png",
					width = 214,
					height = 208,
					direction_count = 1,
					shift = util.by_pixel(-3.25, 7.25),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/remnants/electric-furnace-remnants-highlights.png",
					width = 214,
					height = 208,
					direction_count = 1,
					shift = util.by_pixel(-3.25, 7.25),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				}
			}
		}
		entity.graphics_set.animation =
		{
			layers =
			{
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/" .. inputs.icon_name .. "-base.png",
					priority = high,
					width = 238,
					height = 212,
					shift = util.by_pixel(1, 1),
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/" .. inputs.icon_name .. "-mask.png",
					priority = high,
					width = 238,
					height = 212,
					shift = util.by_pixel(1, 1),
					tint = inputs.tint,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/" .. inputs.icon_name .. "-highlights.png",
					priority = high,
					width = 238,
					height = 212,
					shift = util.by_pixel(1, 1),
					blend_mode = reskins.lib.settings.blend_mode,
					scale = 0.5
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/electric-furnace-shadow.png",
					priority = high,
					width = 228,
					height = 172,
					shift = util.by_pixel(10.75, 7.25),
					draw_as_shadow = true,
					scale = 0.5
				}
			}
		}
		if map.furnace == "chemical" then
			entity.graphics_set.working_visualisations =
			{
				furnace_heater(true),
				{
					fadeout = true,
					north_animation = furnace_working_light("chemical"),
					east_animation = furnace_working_light("chemical"),
					west_animation = furnace_working_light("chemical")
				},
				{
					fadeout = true,
					north_animation = furnace_ground_light(),
					east_animation = furnace_ground_light(),
					west_animation = furnace_ground_light()
				},
			}
			table.insert(remnant.animation.layers,
			{
				filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/remnants/chemical-furnace-remnants-overlay.png",
				width = 214,
				height = 208,
				direction_count = 1,
				shift = util.by_pixel(-3.25, 7.25),
				scale = 0.5
			})
		elseif map.furnace == "mixing" then
			entity.graphics_set.working_visualisations =
			{
				furnace_heater(),
				{
					fadeout = true,
					animation = furnace_working_light("mixing"),
				},
				{
					fadeout = true,
					animation = furnace_ground_light(),
				},
				furnace_large_propeller(),
				furnace_small_propeller(true)
			}
		elseif map.furnace == "chemical-mixing" then
			entity.graphics_set.working_visualisations =
			{
				furnace_heater(true),
				{
					fadeout = true,
					north_animation = furnace_working_light("chemical-mixing"),
					east_animation = furnace_working_light("chemical-mixing"),
					south_animation = furnace_working_light("chemical-mixing", true),
					west_animation = furnace_working_light("chemical-mixing")
				},
				{
					fadeout = true,
					north_animation = furnace_ground_light(),
					east_animation = furnace_ground_light(),
					west_animation = furnace_ground_light(),
				},
				furnace_small_propeller(true)
			}
			table.insert(remnant.animation.layers,
			{
				filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/remnants/chemical-mixing-furnace-remnants-overlay.png",
				width = 214,
				height = 208,
				direction_count = 1,
				shift = util.by_pixel(-3.25, 7.25),
				scale = 0.5
			})
		elseif map.furnace == "standard" then
			entity.graphics_set.working_visualisations =
			{
				furnace_heater(),
				{
					fadeout = true,
					animation = furnace_working_light()
				},
				{
					fadeout = true,
					animation = furnace_ground_light()
				},
				furnace_large_propeller(),
				furnace_small_propeller(),
			}
		end
		if map.has_fluids and entity.fluid_boxes then
			for _, fluid_box in pairs(entity.fluid_boxes) do
				fluid_box.pipe_picture = reskins.bobs.furnace_pipe_pictures(inputs.tint)
				fluid_box.pipe_covers = pipecoverspictures()
			end
			entity.fluid_boxes_off_when_no_fluid_recipe = true
		end
		if name ~= "electric-furnace" then
			entity.graphics_set.water_reflection = get_electric_furnace_water_reflection()
		end
		::continue::
	end
end

-- CENTRIFUGE
do
	local inputs =
	{
		type = assembling_machine,
		icon_name = centrifuge_1,
		base_entity_name = centrifuge_1,
		mod = bobs_mod,
		group = assembly,
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
					priority = high,
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
					priority = high,
					scale = 0.5,
					line_length = 8,
					width = 279,
					height = 152,
					frame_count = 64,
					shift = util.by_pixel(16.75, -10)
				},
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-B.png",
					priority = high,
					scale = 0.5,
					line_length = 8,
					width = 156,
					height = 234,
					frame_count = 64,
					shift = util.by_pixel(23, 6.5)
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/centrifuge/centrifuge-B-mask.png",
					priority = high,
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
					priority = high,
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
					priority = high,
					scale = 0.5,
					line_length = 8,
					width = 251,
					height = 149,
					frame_count = 64,
					shift = util.by_pixel(63.25, 15.25)
				},
				{
					filename = "__base__/graphics/entity/centrifuge/centrifuge-A.png",
					priority = high,
					scale = 0.5,
					line_length = 8,
					width = 139,
					height = 246,
					frame_count = 64,
					shift = util.by_pixel(-26.25, 3.5)
				},
				{
					filename = "__reskins-bobs__/graphics/entity/assembly/centrifuge/centrifuge-A-mask.png",
					priority = high,
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
					priority = high,
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
					priority = high,
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
							priority = high,
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
							priority = high,
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
							priority = high,
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