local bobs_mod = "bobs"
local technology = "technology"
if not (reskins.bobs and reskins.bobs.triggers.power.technologies) then
	return
end
if not (reskins.bobs and reskins.bobs.triggers.assembly.technologies) then
	return
end
-- STEAM TURBINE
do
	---@type CreateIconsFromListInputs
	local inputs =
	{
		mod = bobs_mod,
		group = "power",
		type = technology,
		technology_icon_size = 256,
	}
	---@type CreateIconsFromListTable
	local technologies = {}
	if reskins.bobs.triggers.power.steam then
		technologies[steam_turbine_4] = {tier = 4, prog_tier = 6, icon_name = steam_turbine_1, technology_icon_size = 128}
	end
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
		technology_icon_size = 256,
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