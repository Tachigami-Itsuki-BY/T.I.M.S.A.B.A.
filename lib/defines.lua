---@class TIMSABA.Api.Defines
local defines_api = {}

---@enum TIMSABA.Api.Defines.Stage
defines_api.stage =
{
	settings = 0,
	settings_updates = 1,
	settings_final_fixes = 2,
	data = 3,
	data_updates = 4,
	data_final_fixes = 5,
	runtime = 6
}

---@enum TIMSABA.Api.Defines.BeltSprites
defines_api.belt_sprites =
{
	standard = 1,
	fast = 2,
	turbo = 3
}

---@enum TIMSABA.Api.Defines.BeltPresets
defines_api.belt_presets =
{
	standard = 1,
	fast = 2,
	express = 3,
	turbo = 4
}

return defines_api