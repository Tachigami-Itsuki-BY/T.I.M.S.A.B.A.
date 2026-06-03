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

local miscellaneous_items =
{
    {name = tree_seed_angels,       has_base_recipe = false},
    {name = "angels-plutonium-239", has_base_recipe = true},
    {name = "angels-thorium-232",   has_base_recipe = true}
}
for _, item in ipairs(miscellaneous_items) do
    local name = item.name

	data_item[name] = nil
	data_recipe[name .. _recycling] = nil

	if item.has_base_recipe then
		data_recipe[name] = nil
	end

	if mods[panglia_mods] then 
		data_recipe[item_ .. name .. _panglia_crushing] = nil
	end
end

-- ANGELS RESOURCE REFINING
data_recipe["angels-stone-from-crushed-stone"] = nil

local angels_resources =
{
    {name = "angels-thorium-ore",    has_base_recipe = false, has_smelting = false},
    {name = "angels-iron-pebbles",   has_base_recipe = true,  has_smelting = true},
    {name = "angels-iron-nugget",    has_base_recipe = true,  has_smelting = true},
    {name = "angels-iron-slag",      has_base_recipe = true,  has_smelting = true},
    {name = "angels-copper-pebbles", has_base_recipe = true,  has_smelting = true},
    {name = "angels-copper-nugget",  has_base_recipe = true,  has_smelting = true},
    {name = "angels-copper-slag",    has_base_recipe = true,  has_smelting = true}
}
for _, item in ipairs(angels_resources) do
    local name = item.name

    data_item[name] = nil
    data_recipe[name .. _recycling] = nil

    if item.has_base_recipe then
        data_recipe[name] = nil
    end

    if item.has_smelting then
        data_recipe[name .. _smelting] = nil
    end

    if mods[panglia_mods] then
        data_recipe[item_ .. name .. _panglia_crushing] = nil
    end
end

-- ANGELS METALLURGY SMELTING
local angels_ores =
{
    {name = "angels-lead-ore",        is_ore = true},
    {name = "angels-tin-ore",         is_ore = true},
    {name = "angels-quartz",          is_ore = true},
    {name = "angels-nickel-ore",      is_ore = true},
    {name = "angels-bauxite-ore",     is_ore = true},
    {name = "angels-zinc-ore",        is_ore = true},
    {name = "angels-silver-ore",      is_ore = true},
    {name = "angels-rutile-ore",      is_ore = true},
    {name = "angels-gold-ore",        is_ore = true},
    {name = "angels-cobalt-ore",      is_ore = true},
    {name = "angels-tungsten-ore",    is_ore = true},

    {name = "angels-powder-tungsten", is_ore = false, has_item = false},

    {name = "angels-solder-mixture",  is_ore = false, has_item = true, has_base_recipe = true, has_smelting = true}
}
for _, item in ipairs(angels_ores) do
    local name = item.name

    data_recipe[name .. _recycling] = nil

    if mods[panglia_mods] then 
        data_recipe[item_ .. name .. _panglia_crushing] = nil
    end

    if item.is_ore then
        data_item[name] = nil
    else
        if item.has_item then        data_item[name] = nil end
        if item.has_base_recipe then data_recipe[name] = nil end
        if item.has_smelting then    data_recipe[name .. _smelting] = nil end
    end
end

-- ANGELS METALLURGY CASTING
local angels_plates_and_molds =
{
    {name = "angels-rod-stack-iron",            has_base = true, extra_recipe = "angels-rod-stack-iron-2"},
    {name = "angels-rod-stack-steel",           has_base = true, extra_recipe = "angels-rod-stack-steel-2"},

    {name = "angels-plate-steel",               has_base = false},
    {name = "angels-plate-lead",                has_base = false},
    {name = "angels-plate-tin",                 has_base = false},
    {name = "angels-silicon-wafer",             has_base = false},
    {name = "angels-plate-nickel",              has_base = false},
    {name = "angels-plate-aluminium",           has_base = false},
    {name = "angels-plate-zinc",                has_base = false},
    {name = "angels-plate-silver",              has_base = false},
    {name = "angels-plate-titanium",            has_base = false},
    {name = "angels-plate-gold",                has_base = false},
    {name = "angels-plate-tungsten",            has_base = false},
    {name = "angels-plate-glass",               has_base = false},
    {name = "angels-solder",                    has_base = false},
    {name = "angels-motor-casing-0",            has_base = false},

    {name = "angels-mold-expendable",           has_base = true},
    {name = "angels-mold-non-expendable",       has_base = true, extra_recipe = "angels-mold-non-expendable-wash"},
    {name = "angels-spent-mold-non-expendable", has_base = false},
    {name = "angels-casting-powder-tungsten",   has_base = true, extra_recipe = "angels-casting-powder-tungsten-2"},
}
for _, item in ipairs(angels_plates_and_molds) do
    local name = item.name

    data_item[name] = nil
    data_recipe[name .. _recycling] = nil

    if item.has_base then
        data_recipe[name] = nil
    end

    if item.extra_recipe then
        data_recipe[item.extra_recipe] = nil
    end

    if mods[panglia_mods] then
        data_recipe[item_ .. name .. _panglia_crushing] = nil
    end
end

data_recipe["angels-rod-iron-2"] = nil

data_recipe["angels-rod-steel-2"] = nil

data_recipe["angels-casing-resin-mold"] = nil

data_recipe["angels-plate-glass-2"] = nil
data_recipe["angels-plate-glass-3"] = nil

data_recipe["angels-liquid-molten-solder-4"] = nil

if settings.startup[setting_early_sintering_oven].value == false then
	data_item[sintering_oven_1] = nil
	data_item[sintering_oven_2] = nil
	data_item[sintering_oven_3] = nil
	data_recipe[sintering_oven_1] = nil
	data_recipe[sintering_oven_2] = nil
	data_recipe[sintering_oven_3] = nil
	data_assembling[sintering_oven_1] = nil
	data_assembling[sintering_oven_2] = nil
	data_assembling[sintering_oven_3] = nil

    data_technology[tech_powder_metallurgy_1] = nil
    data_technology[tech_powder_metallurgy_2].prerequisites = {tech_metallurgy_2}
    data_technology[tech_powder_metallurgy_2].effects =
    {
        {type = unlock_recipe, recipe = powder_mixer_1},
        {type = unlock_recipe, recipe = powderizer_1}
    }
    data_technology[tech_powder_metallurgy_3].effects =
    {
        {type = unlock_recipe, recipe = powder_mixer_2},
        {type = unlock_recipe, recipe = powderizer_2}
    }

	data_recipe[sintering_oven_1 .. _recycling] = nil
	data_recipe[sintering_oven_2 .. _recycling] = nil
	data_recipe[sintering_oven_3 .. _recycling] = nil
end

-- ANGELS WATER TREATMENT
data_recipe["angels-solid-salt-dissolving"] = nil

-- ANGELS PETROCHEM REFINING
local angels_solids =
{
    "angels-solid-resin",
    "angels-solid-rubber"
}
for _, name in ipairs(angels_solids) do
    data_item[name] = nil
    data_recipe[name .. _recycling] = nil

    if mods[panglia_mods] then
        data_recipe[item_ .. name .. _panglia_crushing] = nil
    end
end


-- ANGELS BIOPROCESSING
local angels_standalone_recipes =
{
    "angels-tree-seed-recycling",
    "angels-liquid-polluted-fish-atmosphere-raw-meat",
    "angels-alien-fish-0-raw",
    "angels-angels-liquid-polluted-fish-atmosphere-raw-meat",
    "angels-crystal-splinter-cutting",
    "angels-crystal-shard-cutting",
    "angels-crystal-full-cutting"
}
for _, recipe_name in ipairs(angels_standalone_recipes) do
    data_recipe[recipe_name] = nil
end

-- VOIDS
local angels_voids =
{
    "angels-chemical-void",
    "angels-water-void"
}
for _, name in ipairs(angels_voids) do
    data_item[name] = nil
    data_recipe[name .. _recycling] = nil

    if mods[panglia_mods] then
        data_recipe[item_ .. name .. _panglia_crushing] = nil
    end
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
	[liquid_hexachloroplatinic_acid_smelting] = ammonium_hexachloroplatinate_IV,
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