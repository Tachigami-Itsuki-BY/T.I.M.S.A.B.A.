local tree_seed_angels = "angels-tree-seed"
local replacements_1 =
{
	[tree_seed_angels] = tree_seed
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

data_item[tree_seed_angels] = nil

data_item["angels-plutonium-239"] = nil
data_item["angels-thorium-232"] = nil

-- ANGELS RESOURCE REFINING
data_item["angels-thorium-ore"] = nil
data_recipe["angels-thorium-ore-recycling"] = nil
local iron_pebbles = "angels-iron-pebbles"
data_item[iron_pebbles] = nil
data_recipe[iron_pebbles] = nil
data_recipe["angels-iron-pebbles-recycling"] = nil
data_recipe["angels-iron-pebbles-smelting"] = nil
local iron_nugget = "angels-iron-nugget"
data_item[iron_nugget] = nil
data_recipe[iron_nugget] = nil
data_recipe["angels-iron-nugget-recycling"] = nil
data_recipe["angels-iron-nugget-smelting"] = nil
local iron_slag = "angels-iron-slag"
data_item[iron_slag] = nil
data_recipe[iron_slag] = nil
data_recipe["angels-iron-slag-recycling"] = nil
data_recipe["angels-iron-slag-smelting"] = nil
local copper_pebbles = "angels-copper-pebbles"
data_item[copper_pebbles] = nil
data_recipe[copper_pebbles] = nil
data_recipe["angels-copper-pebbles-recycling"] = nil
data_recipe["angels-copper-pebbles-smelting"] = nil
local copper_nugget = "angels-copper-nugget"
data_item[copper_nugget] = nil
data_recipe[copper_nugget] = nil
data_recipe["angels-copper-nugget-recycling"] = nil
data_recipe["angels-copper-nugget-smelting"] = nil
local copper_slag = "angels-copper-slag"
data_item[copper_slag] = nil
data_recipe[copper_slag] = nil
data_recipe["angels-copper-slag-recycling"] = nil
data_recipe["angels-copper-slag-smelting"] = nil

-- ANGELS METALLURGY SMELTING
data_item["angels-lead-ore"] = nil
data_recipe["angels-lead-ore-recycling"] = nil
data_item["angels-tin-ore"] = nil
data_recipe["angels-tin-ore-recycling"] = nil
data_item["angels-quartz"] = nil
data_recipe["angels-quartz-recycling"] = nil
data_recipe["angels-powder-silicon-recycling"] = nil
data_item["angels-nickel-ore"] = nil
data_recipe["angels-nickel-ore-recycling"] = nil
data_item["angels-bauxite-ore"] = nil
data_recipe["angels-bauxite-ore-recycling"] = nil
data_item["angels-zinc-ore"] = nil
data_recipe["angels-zinc-ore-recycling"] = nil
data_item["angels-silver-ore"] = nil
data_recipe["angels-silver-ore-recycling"] = nil
data_recipe["angels-solid-silver-nitrate-recycling"] = nil
data_item["angels-rutile-ore"] = nil
data_recipe["angels-rutile-ore-recycling"] = nil
data_item["angels-gold-ore"] = nil
data_recipe["angels-gold-ore-recycling"] = nil
data_item["angels-cobalt-ore"] = nil
data_recipe["angels-cobalt-ore-recycling"] = nil
data_recipe["angels-solid-cobalt-oxide-recycling"] = nil
data_item["angels-tungsten-ore"] = nil
data_recipe["angels-tungsten-ore-recycling"] = nil
data_recipe["angels-powder-tungsten-recycling"] = nil
local solder_mixture = "angels-solder-mixture"
data_item[solder_mixture] = nil
data_recipe[solder_mixture] = nil
data_recipe["angels-solder-mixture-recycling"] = nil
data_recipe["angels-solder-mixture-smelting"] = nil

-- ANGELS METALLURGY CASTING
local rod_stack_iron = "angels-rod-stack-iron"
data_item[rod_stack_iron] = nil
data_recipe[rod_stack_iron] = nil
data_recipe["angels-rod-stack-iron-recycling"] = nil
data_recipe["angels-rod-stack-iron-2"] = nil
data_recipe["angels-rod-iron-2"] = nil
local rod_stack_steel = "angels-rod-stack-steel"
data_item[rod_stack_steel] = nil
data_recipe[rod_stack_steel] = nil
data_recipe["angels-rod-stack-steel-recycling"] = nil
data_recipe["angels-rod-stack-steel-2"] = nil
data_item["angels-plate-steel"] = nil
data_recipe["angels-plate-steel-recycling"] = nil
local rod_steel = "angels-rod-steel"
data_item[rod_steel] = nil
data_recipe[rod_steel] = nil
data_recipe["angels-rod-steel-recycling"] = nil
data_recipe["angels-rod-steel-2"] = nil
data_item["angels-plate-lead"] = nil
data_recipe["angels-plate-lead-recycling"] = nil
data_item["angels-plate-tin"] = nil
data_recipe["angels-plate-tin-recycling"] = nil
data_item["angels-silicon-wafer"] = nil
data_recipe["angels-silicon-wafer-recycling"] = nil
data_item["angels-plate-nickel"] = nil
data_recipe["angels-plate-nickel-recycling"] = nil
data_item["angels-plate-aluminium"] = nil
data_recipe["angels-plate-aluminium-recycling"] = nil
data_item["angels-plate-zinc"] = nil
data_recipe["angels-plate-zinc-recycling"] = nil
data_item["angels-plate-silver"] = nil
data_recipe["angels-plate-silver-recycling"] = nil
data_item["angels-plate-titanium"] = nil
data_recipe["angels-plate-titanium-recycling"] = nil
data_item["angels-plate-gold"] = nil
data_recipe["angels-plate-gold-recycling"] = nil
data_item["angels-plate-tungsten"] = nil
data_recipe["angels-plate-tungsten-recycling"] = nil
data_item["angels-plate-glass"] = nil
data_recipe["angels-plate-glass-recycling"] = nil
data_item["angels-solder"] = nil
data_recipe["angels-solder-recycling"] = nil

data_item["angels-motor-casing-0"] = nil
data_recipe["angels-motor-casing-0-recycling"] = nil
data_recipe["angels-casing-resin-mold"] = nil
data_recipe["angels-mold-expendable"] = nil
data_item["angels-mold-expendable"] = nil
data_recipe["angels-mold-expendable-recycling"] = nil
local mold_non_expendable = "angels-mold-non-expendable"
data_item[mold_non_expendable] = nil
data_recipe[mold_non_expendable] = nil
data_recipe["angels-mold-non-expendable-recycling"] = nil
data_item["angels-spent-mold-non-expendable"] = nil
data_recipe["angels-spent-mold-non-expendable-recycling"] = nil
data_recipe["angels-mold-non-expendable-wash"] = nil

data_recipe["angels-plate-glass-2"] = nil
data_recipe["angels-plate-glass-3"] = nil

data_recipe["angels-liquid-molten-solder-4"] = nil

-- ANGELS WATER TREATMENT
data_recipe["angels-solid-salt-dissolving"] = nil

-- ANGELS PETROCHEM REFINING
data_item["angels-solid-resin"] = nil
data_recipe["angels-solid-resin-recycling"] = nil
data_item["angels-solid-rubber"] = nil
data_recipe["angels-solid-rubber-recycling"] = nil

-- ANGELS BIOPROCESSING
data_recipe["angels-tree-seed-recycling"] = nil
data_recipe["angels-liquid-polluted-fish-atmosphere-raw-meat"] = nil
data_recipe["angels-alien-fish-0-raw"] = nil
data_recipe["angels-angels-liquid-polluted-fish-atmosphere-raw-meat"] = nil
data_recipe["angels-crystal-splinter-cutting"] = nil
data_recipe["angels-crystal-shard-cutting"] = nil
data_recipe["angels-crystal-full-cutting"] = nil

-- VOIDS
data_item["angels-chemical-void"] = nil
data_item["angels-water-void"] = nil

if mods [panglia_mods] then
    data_recipe["item-angels-thorium-ore-panglia_crushing"] = nil
end

-- REPLACEMENT RECIPE (FLUID --> ITEM)
local polyethylene_angels = "angels-liquid-polyethylene"
local phenol_angels = "angels-liquid-phenol"
local bisphenol_a_angels = "angels-liquid-bisphenol-a"
local cellulose_acetate_mixture = "angels-liquid-cellulose-acetate-mixture"
local cellulose_acetate = "angels-liquid-cellulose-acetate"
local replacements_2 =
{
	[polyethylene_angels] = polyethylene,
	[phenol_angels] = phenol,
	[bisphenol_a_angels] = bisphenol_a,
	[cellulose_acetate_mixture] = cellulose_triacetate,
	[cellulose_acetate] = cellulose_diacetate
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
data_fluid[polyethylene_angels] = nil
data_recipe[polyethylene_angels] = nil
data_fluid[phenol_angels] = nil
data_recipe[phenol_angels] = nil
data_fluid[bisphenol_a_angels] = nil
data_recipe[bisphenol_a_angels] = nil

data_fluid[cellulose_acetate_mixture] = nil
data_recipe[cellulose_acetate_mixture] = nil
data_fluid[cellulose_acetate] = nil
data_recipe[cellulose_acetate] = nil

-- REPLACEMENT RECIPE (RECIPE = ITEM)
local platinum_ore_processing = "angels-platinum-ore-processing"
local platinum_processed_processing = "angels-platinum-processed-processing"
local pellet_platinum_smelting = "angels-pellet-platinum-smelting"
local liquid_hexachloroplatinic_acid_smelting = "angels-liquid-hexachloroplatinic-acid-smelting"
local platinum_ore_smelting = "angels-platinum-ore-smelting"
local processed_platinum_smelting = "angels-processed-platinum-smelting"
local solid_ammonium_chloroplatinate_smelting = "angels-solid-ammonium-chloroplatinate-smelting"
--local 
local replacements_3 =
{
	[platinum_ore_processing] = platinum_processed,
	[platinum_processed_processing] = platinum_pellet,
	[pellet_platinum_smelting] = hexachloroplatinic_acid,
	[liquid_hexachloroplatinic_acid_smelting] = ammonium_chloroplatinate,
	[platinum_ore_smelting] = platinum_ingot,
	[processed_platinum_smelting] = platinum_ingot_2,
	[solid_ammonium_chloroplatinate_smelting] = platinum_ingot_3,
	--[] = platinum_powder
}
for _, technology in pairs(data.raw.technology or {}) do
	if technology.effects then
		for _, effect in pairs(technology.effects) do
			if effect.type == unlock_recipe then
				local replace = replacements_3[effect.recipe]
				if replace then
					effect.recipe = replace
				end
			end
		end
	end
end
data_recipe[platinum_ore_processing] = nil
data_recipe[platinum_processed_processing] = nil
data_recipe[pellet_platinum_smelting] = nil
data_recipe[liquid_hexachloroplatinic_acid_smelting] = nil
data_recipe[platinum_ore_smelting] = nil
data_recipe[processed_platinum_smelting] = nil
data_recipe[solid_ammonium_chloroplatinate_smelting] = nil
--data_recipe[] = nil