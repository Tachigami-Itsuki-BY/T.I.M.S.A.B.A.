local replacements =
{
	[carbon] = carbon_angels,
	[tungsten_carbide] = tungsten_carbide_plate_bob,
	[tungsten_plate] = tungsten_plate_bob,
	[lithium_plate] = lithium_bob,
	[lithium] = lithium_chloride_angels,
	[ammonia] = ammonia_angels,
	[molten_iron] = iron_molten_angels,
	[molten_copper] = copper_molten_angels,
	[lithium_brine] = water_thermal_angels,
	[heavy_oil] = multi_phase_oil_angels,
	[sulfuric_acid] = sulfuric_acid_angels
}
TIMSABA.functions.delete_duplicate_item_and_fluid(replacements)

local mod_items =
{
	lithium,
	lithium_plate,
	carbon,
	tungsten_plate,
	tungsten_carbide
}
for _, name in ipairs(mod_items) do
	data_item[name] = nil
	data_recipe[name .. _recycling] = nil
	if mods[panglia_mods] then
		data_recipe[item_ .. name .. _panglia_crushing] = nil
	end
end

data_fluid[ammonia] = nil
data_fluid[lithium_brine] = nil
data_fluid[heavy_oil] = nil
data_fluid[sulfuric_acid] = nil

data_fluid[molten_iron] = nil
data_fluid[molten_copper] = nil

local holmium_solution = "holmium-solution"
data_fluid[holmium_solution] = nil
data_recipe[holmium_solution] = nil

data_recipe["concrete-from-molten-iron"] = nil

local fluoroketone = "fluoroketone"
local fluoroketone_cooling = "fluoroketone-cooling"
local replacements_2 =
{
	[fluoroketone] = fluoroketone_hot,
	[fluoroketone_cooling] = fluoroketone_cold
}
for _, technology in pairs(data_technology or {}) do
	if technology.effects then
		for _, effect in pairs(technology.effects) do
			if effect.type == unlock_recipe then
				local replace = replacements_2[effect.recipe]
				if replace then
					effect.recipe = replace
				end
			end
		end
	end
end
data_recipe[fluoroketone] = nil
data_recipe[fluoroketone_cooling] = nil

if mods[muluna_mods] then
	if Muluna and Muluna.constants and Muluna.constants.cargo_drop_spawn_imports then
		for i = #Muluna.constants.cargo_drop_spawn_imports, 1, -1 do
			local path = Muluna.constants.cargo_drop_spawn_imports[i]

			if path and string.find(path, "tungsten%-plate") then
				table.remove(Muluna.constants.cargo_drop_spawn_imports, i)
			end
		end
	end
end