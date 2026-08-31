local bobs_mod = "bobs"
if not (reskins.bobs and reskins.bobs.triggers.power.technologies) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.mining.technologies) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.plates.technologies) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.assembly.technologies) then
	return
end

do
	---@type CreateIconsFromListInputs
	local inputs =
	{
		mod = bobs_mod,
		group = "power",
		type = technology,
		technology_icon_size = 256
	}
	---@type data.IconData[]
	local boiler_icon_extra =
	{
		{
			icon = "__reskins-bobs__/graphics/technology/power/boiler/boiler-technology-light.png",
			icon_size = 128,
			tint = {1, 1, 1, 0}
		}
	}
	---@type CreateIconsFromListTable
	local technologies = {}
	if reskins.bobs.triggers.power.steam then
		-- BOILER
		technologies[boiler_6] = {tier = 6, icon_name = boiler_1, technology_icon_size = 128, technology_icon_extras = boiler_icon_extra}
		-- STEAM ENGINE
		technologies[steam_engine_6] = {tier = 6, icon_name = steam_engine_1, technology_icon_size = 128}
		-- STEAM TURBINE
		technologies[steam_turbine_4] = {tier = 4, prog_tier = 6, icon_name = steam_turbine_1, technology_icon_size = 128}
	end
	if reskins.bobs.triggers.power.solar then
		-- SOLAR PANELS
		technologies[tech_solar_energy_4] = {tier = 4, prog_tier = 5, icon_name = tech_solar_energy_1}
	end
	if reskins.bobs.triggers.power.accumulators then
		-- ACCUMULATOR
		technologies[tech_electric_energy_accumulators_4] = {tier = 4, prog_tier = 5, icon_name = accumulator_1}
	end
	local material_tiers =
	{
		"base",
		"aluminum-invar",
		"silver-titanium",
		"gold-copper"
	}
	if reskins.bobs.triggers.power.nuclear then
		-- REACTOR
		technologies[tech_uranium_power] = {tier = 1, prog_tier = 3, icon_name = "nuclear-power", tint = reskins.bobs.nuclear_reactor_index[uranium_reactor].tint}
		technologies[tech_uranium_power].icon_base = "nuclear-power-uranium-" .. material_tiers[1]
		technologies[tech_uranium_power_2] = {tier = 2, prog_tier = 4, icon_name = "nuclear-power", tint = reskins.bobs.nuclear_reactor_index[thorium_reactor].tint}
		technologies[tech_uranium_power_2].icon_base = "nuclear-power-uranium-" .. material_tiers[2]
		technologies[tech_thorium_power] = {tier = 2, prog_tier = 4, icon_name = "nuclear-power", tint = reskins.bobs.nuclear_reactor_index[thorium_reactor].tint}
		technologies[tech_thorium_power].icon_base = "nuclear-power-uranium-" .. material_tiers[2]
		technologies[tech_uranium_power_3] = {tier = 3, prog_tier = 5, icon_name = "nuclear-power", tint = reskins.bobs.nuclear_reactor_index[deuterium_reactor].tint}
		technologies[tech_uranium_power_3].icon_base = "nuclear-power-uranium-" .. material_tiers[3]
		technologies[tech_deuterium_power] = {tier = 3, prog_tier = 5, icon_name = "nuclear-power", tint = reskins.bobs.nuclear_reactor_index[deuterium_reactor].tint}
		technologies[tech_deuterium_power].icon_base = "nuclear-power-uranium-" .. material_tiers[3]
		local tritium_tint = {r = 0.72, g = 0.05, b = 1.0, a = 1.0}
		technologies[tech_tritium_power] = {tier = 4, prog_tier = 6, icon_name = "nuclear-power", tint = tritium_tint}
		technologies[tech_tritium_power].icon_base = "nuclear-power-uranium-" .. material_tiers[4]
		if reskins.lib.settings.get_value("bobmods-revamp-nuclear") == true then
			technologies[tech_uranium_power_2].icon_base = "nuclear-power-thorium-" .. material_tiers[2]
			if reskins.lib.settings.get_value("bobmods-plates-bluedeuterium") == true then
				technologies[tech_uranium_power_3].icon_base = "nuclear-power-deuterium-blue-" .. material_tiers[3]
				technologies[tech_deuterium_power].icon_base = "nuclear-power-deuterium-blue-" .. material_tiers[3]
				technologies[tech_tritium_power].icon_base = "nuclear-power-deuterium-pink-" .. material_tiers[4]
			else
				technologies[tech_uranium_power_3].icon_base = "nuclear-power-deuterium-pink-" .. material_tiers[3]
				technologies[tech_deuterium_power].icon_base = "nuclear-power-deuterium-pink-" .. material_tiers[3]
				technologies[tech_tritium_power].icon_base = "nuclear-power-deuterium-blue-" .. material_tiers[4]
			end
		end
	end
	reskins.internal.create_icons_from_list(technologies, inputs)
end

do
	local inputs =
	{
		mod = bobs_mod,
		group = "mining",
		type = technology,
		technology_icon_size = 256
	}
	---@param tier? integer
	---@param prog_tier? integer
	---@return CreateIconsFromListOverrides
	local function get_mining_drill_overrides(tier, prog_tier)
		---@type CreateIconsFromListOverrides
		local override =
		{
			tier = tier,
			prog_tier = prog_tier,
			icon_name = "mining-drill",
			technology_icon_size = 128
		}
		return override
	end
	---@param tier? integer
	---@param prog_tier? integer
	---@return CreateIconsFromListOverrides
	local function get_pumpjack_overrides(tier, prog_tier)
		---@type CreateIconsFromListOverrides
		local override =
		{
			tier = tier,
			prog_tier = prog_tier,
			icon_name = "pumpjack",
		}
		return override
	end
	local technologies =
	{
		-- ELECTRIC MINING DRILLS
		[electric_mining_drill_1] = get_mining_drill_overrides(1),
		-- PUMPJACK
		[tech_pumpjacks_5] = get_pumpjack_overrides(5, 6),
		[tech_pumpjacks_6] = get_pumpjack_overrides(6, 6)
	}
	if settings.startup[setting_bobmods_mining_miningdrills].value then
		technologies[tech_drills_6] = get_mining_drill_overrides(6)
	end
	reskins.internal.create_icons_from_list(technologies, inputs)
end

-- FURNACES
do
	---@type CreateIconsFromListInputs
	local inputs =
	{
		mod = bobs_mod,
		group = "plates",
		type = technology,
		flat_icon = true
	}
	---@return data.IconData[]
	---@param name string
	---@param folder? string
	local function get_technology_light_layer(name, folder)
		folder = folder or name
		---@type data.IconData[]
		local light_layer =
		{
			{
				icon = "__reskins-bobs__/graphics/technology/plates/" .. folder .. "/" .. name .. "-technology-lights.png",
				icon_size = 256,
				tint = {1, 1, 1, 0}
			}
		}
		return light_layer
	end
	---@type CreateIconsFromListTable
	local technologies =
	{
		[tech_advanced_material_processing_5] = {technology_icon_size = 256, flat_icon = false, tier = 6, icon_name = "advanced-material-processing", technology_icon_extras = get_technology_light_layer("advanced-material-processing")},
		[tech_multi_purpose_furnace_3] = {technology_icon_size = 256, flat_icon = false, tier = 6, icon_name = "electric-mixing-furnace", technology_icon_extras = get_technology_light_layer("electric-mixing-furnace")}
	}
	reskins.internal.create_icons_from_list(technologies, inputs)
end

-- CENTRIFUGE
do
	---@type CreateIconsFromListInputs
	local inputs =
	{
		mod = bobs_mod,
		group = "assembly",
		type = technology,
		technology_icon_size = 256
	}
	---@type CreateIconsFromListTable
	local technologies =
	{
		[centrifuge_2] = {icon_name = centrifuge_1, tier = 2, prog_tier = 4},
		[centrifuge_3] = {icon_name = centrifuge_1, tier = 3, prog_tier = 5},
		[centrifuge_4] = {icon_name = centrifuge_1, tier = 4, prog_tier = 6}
	}
	reskins.internal.create_icons_from_list(technologies, inputs)
end

-- BATTERY
if not (reskins.bobs and reskins.bobs.triggers.plates.items) then
	return
end

do
	local inputs =
	{
		mod = bobs_mod,
		group = "plates",
		icon_name = battery_lead_acid,
		technology_icon_size = 256,
		tier_labels = false,
		make_icon_pictures = false,
	}
	reskins.lib.set_inputs_defaults(inputs)
	local batteries = {[battery_graphene] = {tier = 4, prog_tier = 5, technology = tech_battery_4, tint = "333333"}}
	for name, map in pairs(batteries) do
		local item = data.raw.item[name]
		if not item then
			goto continue
		end
		local tier = reskins.lib.tiers.get_tier(map)
		if reskins.lib.settings.get_value("bobmods-colorupdate") then
			inputs.tint = reskins.lib.tiers.get_tint(tier)
		else
			inputs.tint = util.color(map.tint)
		end

		local recipe = data_recipe[name]
		if recipe then
			if not recipe.crafting_machine_tint then
				recipe.crafting_machine_tint = {}
			end
			recipe.crafting_machine_tint.primary = inputs.tint
		end

		reskins.lib.construct_icon(name, tier, inputs)
		if data.raw.technology[map.technology] then
			reskins.lib.construct_technology_icon(map.technology, inputs)
		end
		::continue::
	end
end