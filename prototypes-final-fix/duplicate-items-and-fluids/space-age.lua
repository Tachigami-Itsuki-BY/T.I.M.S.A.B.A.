local replacements_1 =
{
	[carbon] = carbon_angels,
	[tungsten_carbide] = tungsten_carbide_bob,
	[tungsten_plate] = tungsten_plate_bob,
	--[wolframite_ore] = tungsten_ore_bob,
	[lithium_plate] = lithium_bob,
	[lithium] = lithium_chloride_angels,
	[ammonia] = ammonia_angels,
	[molten_iron] = iron_molten_angels,
	[molten_copper] = copper_molten_angels,
	[lithium_brine] = water_thermal_angels,
	[heavy_oil] = multi_phase_oil_angels,
	[sulfuric_acid] = sulfuric_acid_angels
}
for _, recipe in pairs(data.raw.recipe or {}) do
    for _, ingredient in pairs(recipe.ingredients or {}) do
        local replace = replacements_1[ingredient.name]
		if replace then
            ingredient.name = replace
        end
    end

	for _, result in pairs(recipe.results or {}) do
		local replace = replacements_1[result.name]
		if replace then
			result.name = replace
		end
	end

    if recipe.main_product then
		local replace = replacements_1[recipe.main_product]
		if replace then
			recipe.main_product = replace
		end
    end
end
for _, tile in pairs(data.raw.tile or {}) do
	if tile.fluid then
		local replace = replacements_1[tile.fluid]
		if replace then
			tile.fluid = replace
		end
	end
end
for _, technology in pairs(data.raw.technology or {}) do
	if technology.research_trigger then
		local replace = replacements_1[technology.research_trigger.item]
		if replace then
			technology.research_trigger.item = replace
		end
	end
	if technology.research_trigger then
		local replace = replacements_1[technology.research_trigger.fluid]
		if replace then
			technology.research_trigger.fluid = replace
		end
	end
end
for _, resource in pairs(data.raw.resource or {}) do
	if resource.minable.result then
		local replace = replacements_1[resource.minable.result]
		if replace then
			resource.minable.result = replace
		end
	end
	for _, results in pairs(resource.minable.results or {}) do
		local replace = replacements_1[results.name]
		if replace then
			results.name = replace
		end
	end
end
for _, entity in pairs(data.raw["simple-entity"] or {}) do
	if entity.minable then
		for _, results in pairs(entity.minable.results or {}) do
			local replace = replacements_1[results.name]
			if replace then
				results.name = replace
			end
		end
	end
end
for _, tree in pairs(data.raw.tree or {}) do
	if tree.minable then
		for _, results in pairs(tree.minable.results or {}) do
			local replace = replacements_1[results.name]
			if replace then
				results.name = replace
			end
		end
	end
end

data_item[lithium] = nil
data_item[lithium_plate] = nil
data_fluid[ammonia] = nil
data_fluid[lithium_brine] = nil
data_item[carbon] = nil
--data_item[wolframite_ore] = nil
data_item[tungsten_plate] = nil
data_item[tungsten_carbide] = nil
data_fluid[molten_iron] = nil
data_fluid[molten_copper] = nil
local holmium_solution = "holmium-solution"
data_fluid[holmium_solution] = nil
data_recipe[holmium_solution] = nil

data_recipe["lithium-recycling"] = nil
data_recipe["lithium-plate-recycling"] = nil
data_recipe["carbon-recycling"] = nil
data_recipe["tungsten-ore-recycling"] = nil
data_recipe["tungsten-plate-recycling"] = nil
data_recipe["tungsten-carbide-recycling"] = nil

data_recipe["concrete-from-molten-iron"] = nil

local fluoroketone = "fluoroketone"
local fluoroketone_cooling = "fluoroketone-cooling"
local replacements_2 =
{
	[fluoroketone] = fluoroketone_hot,
	[fluoroketone_cooling] = fluoroketone_cold
}
for _, technology in pairs(data.raw.technology or {}) do
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