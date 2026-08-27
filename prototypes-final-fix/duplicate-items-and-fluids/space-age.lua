local light_oil = "light-oil"
local petroleum_gas = "petroleum-gas"
local holmium_solution = "holmium-solution"
local replace_prototypes =
{
	[carbon] = carbon_angels,
	[tungsten_carbide] = tungsten_carbide_plate_bob,
	[tungsten_plate] = tungsten_plate_bob,
	[lithium_plate] = lithium_bob,
	[lithium] = lithium_chloride_angels,
	[ammonia] = ammonia_angels,
	[lithium_brine] = water_thermal_angels,
	[heavy_oil] = multi_phase_oil_angels,
	[sulfuric_acid] = sulfuric_acid_angels,
	[molten_iron] = iron_molten_angels,
	[molten_copper] = copper_molten_angels,
	[light_oil] = fuel_oil_angels,
	[petroleum_gas] = methane_angels,
	[holmium_solution] = holmium_chloride_III_solution
}
TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

local delete_proto =
{
	lithium,
	lithium_plate,
	carbon,
	tungsten_plate,
	tungsten_carbide
}
TIMSABA.functions.delete_duplicated_prototypes(delete_proto)

local delete_fluid =
{
	ammonia,
	lithium_brine,
	heavy_oil,
	sulfuric_acid,
	light_oil,
	petroleum_gas
}
for _, name in ipairs(delete_fluid) do
	data_fluid[name] = nil
	data_recipe[name .. _barrel_recycling] = nil
	if data_recipe[item_ .. name .. _barrel_panglia_crushing] then data_recipe[item_ .. name .. _barrel_panglia_crushing] = nil end
	if data_recipe[item_ .. name .. _barrel_incineration] then data_recipe[item_ .. name .. _barrel_incineration] = nil end
end

data_fluid[molten_iron] = nil
data_fluid[molten_copper] = nil

local delete_prototypes =
{
	holmium_solution,
	"concrete-from-molten-iron"
}
TIMSABA.functions.delete_prototypes(delete_prototypes)

local fluoroketone = "fluoroketone"
local fluoroketone_cooling = "fluoroketone-cooling"
local replacements =
{
	[fluoroketone] = fluoroketone_hot,
	[fluoroketone_cooling] = fluoroketone_cold
}
for _, technology in pairs(data_technology or {}) do
	if technology.effects then
		for _, effect in pairs(technology.effects) do
			if effect.type == unlock_recipe then
				local replace = replacements[effect.recipe]
				if replace then
					effect.recipe = replace
				end
			end
		end
	end
end
data_recipe[fluoroketone] = nil
data_recipe[fluoroketone_cooling] = nil