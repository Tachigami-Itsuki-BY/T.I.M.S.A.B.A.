local angels_mod = "angels"
local powder_metallurgy = "powder-metallurgy"
local powder_metallurgy_special_vanilla = "powder-metallurgy-special-vanilla"
if not (reskins.angels and reskins.angels.triggers.refining.technologies) then
	return
end
if not (reskins.angels and reskins.angels.triggers.smelting.technologies) then
	return
end
do
	---@type CreateIconsFromListInputs
	local inputs =
	{
		mod = angels_mod,
		group = refining,
		type = technology,
		technology_icon_size = 256
	}
	---@type CreateIconsFromListTable
	local technologies =
	{
		[tech_advanced_ore_refining_1] = {tier = 1, icon_name = "advanced-ore-refining"},
		[tech_advanced_ore_refining_2] = {tier = 2, icon_name = "advanced-ore-refining"},
		[tech_advanced_ore_refining_3] = {tier = 3, icon_name = "advanced-ore-refining"},
		[tech_advanced_ore_refining_4] = {tier = 4, icon_name = "advanced-ore-refining"},
		[tech_advanced_ore_refining_5] = {tier = 5, icon_name = "advanced-ore-refining"},
		[tech_advanced_ore_refining_6] = {tier = 6, icon_name = "advanced-ore-refining"},
		[tech_water_treatment_5] = {tier = 5, icon_name = "water-treatment"},
		[tech_water_treatment_6] = {tier = 6, icon_name = "water-treatment"},
	}
	reskins.internal.create_icons_from_list(technologies, inputs)
end

do
	---@type CreateIconsFromListInputs
	local inputs =
	{
		mod = angels_mod,
		group = smelting,
		type = technology,
		technology_icon_size = 256,
	}

	---@param material string
	---@return CreateIconsFromListOverrides
	local function get_smelting_overrides(material)
		---@type CreateIconsFromListOverrides
		local override =
		{
			subgroup = smelting,
			flat_icon = true,
			image = "smelting-" .. material .. "-technology-icon",
		}

		return override
	end

	---@type CreateIconsFromListTable
	local technologies =
	{
		[tech_iron_smelting_1] = get_smelting_overrides("iron"),
		[tech_copper_smelting_1] = get_smelting_overrides("copper"),
		[tech_lead_smelting_1] = get_smelting_overrides("lead"),
		[tech_tin_smelting_1] = get_smelting_overrides("tin"),
		[tech_manganese_smelting_1] = get_smelting_overrides("manganese"),
		[tech_silicon_smelting_1] = get_smelting_overrides("silicon"),
		[tech_nickel_smelting_1] = get_smelting_overrides("nickel"),
		[tech_aluminium_smelting_1] = get_smelting_overrides("aluminium"),
		[tech_zinc_smelting_1] = get_smelting_overrides("zinc"),
		[tech_silver_smelting_1] = get_smelting_overrides("silver"),
		[tech_titanium_smelting_1] = get_smelting_overrides("titanium"),
		[tech_gold_smelting_1] = get_smelting_overrides("gold"),
		[tech_platinum_smelting_1] = get_smelting_overrides("platinum")
	}
	if settings.startup[setting_early_sintering_oven].value then
		technologies[tech_powder_metallurgy_1] = {tier = 1, prog_tier = 1, icon_name = powder_metallurgy}
		technologies[tech_powder_metallurgy_2] = {tier = 2, prog_tier = 2, icon_name = powder_metallurgy}
		technologies[tech_powder_metallurgy_3] = {tier = 3, prog_tier = 3, icon_name = powder_metallurgy}
		technologies[tech_powder_metallurgy_4] = {tier = 4, prog_tier = 4, icon_name = powder_metallurgy}
		technologies[tech_powder_metallurgy_5] = {tier = 5, prog_tier = 5, icon_name = powder_metallurgy}
		technologies[tech_powder_metallurgy_6] = {tier = 6, prog_tier = 6, icon_name = powder_metallurgy}
	else
		technologies[tech_powder_metallurgy_2] = {tier = 1, prog_tier = 2, icon_name = powder_metallurgy_special_vanilla, defer_to_data_updates = true}
		technologies[tech_powder_metallurgy_3] = {tier = 2, prog_tier = 3, icon_name = powder_metallurgy_special_vanilla, defer_to_data_updates = true}
		technologies[tech_powder_metallurgy_4] = {tier = 3, prog_tier = 4, icon_name = powder_metallurgy, defer_to_data_updates = true}
		technologies[tech_powder_metallurgy_5] = {tier = 4, prog_tier = 5, icon_name = powder_metallurgy, defer_to_data_updates = true}
		technologies[tech_powder_metallurgy_6] = {tier = 5, prog_tier = 6, icon_name = powder_metallurgy, defer_to_data_updates = false}
		technologies[tech_powder_metallurgy_7] = {tier = 6, prog_tier = 6, icon_name = powder_metallurgy, defer_to_data_updates = false}
	end
	if angelsmods and angelsmods.functions.is_special_vanilla() then
		technologies[tech_powder_metallurgy_2] = {tier = 1, prog_tier = 2, icon_name = powder_metallurgy_special_vanilla, defer_to_data_updates = true}
		technologies[tech_powder_metallurgy_3] = {tier = 2, prog_tier = 3, icon_name = powder_metallurgy_special_vanilla, defer_to_data_updates = true}
		technologies[tech_powder_metallurgy_4] = {tier = 3, prog_tier = 4, icon_name = powder_metallurgy_special_vanilla, defer_to_data_updates = true}
		technologies[tech_powder_metallurgy_5] = {tier = 4, prog_tier = 5, icon_name = powder_metallurgy_special_vanilla, defer_to_data_updates = true}
		technologies[tech_powder_metallurgy_6] = {tier = 5, prog_tier = 6, icon_name = powder_metallurgy_special_vanilla, defer_to_data_updates = false}
		technologies[tech_powder_metallurgy_7] = {tier = 6, prog_tier = 6, icon_name = powder_metallurgy_special_vanilla, defer_to_data_updates = false}
	end
	reskins.internal.create_icons_from_list(technologies, inputs)
end