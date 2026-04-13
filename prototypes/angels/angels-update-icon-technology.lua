if not (reskins.angels and reskins.angels.triggers.refining.technologies) then
	return
end
---@type CreateIconsFromListInputs
local inputs =
{
	mod = "angels",
	group = "refining",
	type = "technology",
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