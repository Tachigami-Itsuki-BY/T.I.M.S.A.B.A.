local tree_seed_angels = "angels-tree-seed"
local replace_prototypes =
{
	[tree_seed_angels] = tree_seed
}
TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

local delete_proto =
{
    tree_seed_angels,

    -- ANGELS RESOURCE REFINING
    "angels-thorium-ore",

    -- ANGELS METALLURGY CASTING
    "angels-plate-steel",
    "angels-plate-lead",
    "angels-plate-tin",
    "angels-silicon-wafer",
    "angels-plate-nickel",
    "angels-plate-aluminium",
    "angels-plate-zinc",
    "angels-plate-silver",
    "angels-plate-titanium",
    "angels-plate-gold",
    "angels-plate-tungsten",
    "angels-plate-glass",
    "angels-solder",

    -- ANGELS PETROCHEM REFINING
    "angels-solid-resin",
    "angels-solid-rubber",

    -- VOIDS
    "angels-chemical-void",
    "angels-water-void"
}
TIMSABA.functions.delete_duplicated_items(delete_proto)

local delete_prototypes =
{
    "angels-plutonium-239",
    "angels-thorium-232",

    -- ANGELS RESOURCE REFINING
    "angels-stone-from-crushed-stone",
    "angels-iron-pebbles",
    "angels-iron-nugget",
    "angels-iron-slag",
    "angels-copper-pebbles",
    "angels-copper-nugget",
    "angels-copper-slag",

    -- ANGELS METALLURGY SMELTING
    "angels-lead-ore",
    "angels-tin-ore",
    "angels-quartz",
    "angels-nickel-ore",
    "angels-bauxite-ore",
    "angels-zinc-ore",
    "angels-silver-ore",
    "angels-rutile-ore",
    "angels-gold-ore",
    "angels-tungsten-ore",
    "angels-solder-mixture",

    -- ANGELS METALLURGY CASTING
    "angels-rod-stack-iron",
    "angels-rod-stack-iron-2",
    "angels-rod-iron-2",
    "angels-rod-stack-steel",
    "angels-rod-stack-steel-2",
    "angels-rod-steel-2",
    "angels-mold-expendable",
    "angels-mold-non-expendable",
    "angels-mold-non-expendable-wash",
    "angels-motor-casing-0",
    "angels-spent-mold-non-expendable",
    "angels-casting-powder-tungsten",
    "angels-casting-powder-tungsten-2",
    "angels-casing-resin-mold",
    "angels-plate-glass-2",
    "angels-plate-glass-3",
    "angels-liquid-molten-solder-4",

    -- ANGELS WATER TREATMENT
    "angels-solid-salt-dissolving",

    -- ANGELS BIOPROCESSING
    "angels-liquid-polluted-fish-atmosphere-raw-meat",
    "angels-alien-fish-0-raw",
    "angels-angels-liquid-polluted-fish-atmosphere-raw-meat",
    "angels-crystal-splinter-cutting",
    "angels-crystal-shard-cutting",
    "angels-crystal-full-cutting"
}
TIMSABA.functions.delete_prototypes(delete_prototypes)

if settings.startup[setting_early_sintering_oven].value == false then
    local delete_prototypes =
    {
        sintering_oven_1,
        sintering_oven_2,
        sintering_oven_3,
        tech_powder_metallurgy_1
    }
    TIMSABA.functions.delete_prototypes(delete_prototypes)

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
end

-- REPLACEMENT RECIPE (FLUID --> ITEM)
local polyethylene_angels = "angels-liquid-polyethylene"
local phenol_angels = "angels-liquid-phenol"
local bisphenol_a_angels = "angels-liquid-bisphenol-a"
local cellulose_acetate_mixture = "angels-liquid-cellulose-acetate-mixture"
local cellulose_acetate = "angels-liquid-cellulose-acetate"
local replacements_fluid_item =
{
	[polyethylene_angels] = polyethylene,
	[phenol_angels] = phenol,
	[bisphenol_a_angels] = bisphenol_a,
	[cellulose_acetate_mixture] = cellulose_triacetate,
	[cellulose_acetate] = cellulose_diacetate
}
local function replace_fluid_in_table(item_table)
    if not item_table then return end

    for i = 1, #item_table do
        local item = item_table[i]

        if type(item) == "table" then
            local current_name = nil
            local old_amount = 1
            local is_dictionary = false

            if item.name then
                current_name = item.name
                old_amount = item.amount or 1
                is_dictionary = true
            elseif type(item[1]) == "string" then
                current_name = item[1]
                old_amount = item[2] or 1
                is_dictionary = false
            end

            if current_name and replacements_fluid_item[current_name] then
                local target_replacement = replacements_fluid_item[current_name]
                local new_amount = math.ceil(old_amount / 10)

                if is_dictionary then
                    item.name = target_replacement
                    item.type = "item"
                    item.amount = new_amount
                    item.temperature = nil
                else
                    item_table[i] = {target_replacement, new_amount}
                end
            end
        end
    end
end

for _, recipe in pairs(data_recipe or {}) do
    replace_fluid_in_table(recipe.ingredients)
    replace_fluid_in_table(recipe.results)
end

for _, technology in pairs(data_technology or {}) do
    for _, effect in pairs(technology.effects or {}) do
        if effect.type == unlock_recipe then
            local replace = replacements_fluid_item[effect.recipe]
            if replace then
                effect.recipe = replace
            end
        end
    end
end

for old_name, _ in pairs(replacements_fluid_item) do
    data_recipe[old_name] = nil
end

local delete_proto =
{
    polyethylene_angels,
	phenol_angels,
	bisphenol_a_angels,
	cellulose_acetate_mixture,
	cellulose_acetate
}
TIMSABA.functions.delete_duplicated_fluids(delete_proto)

-- REPLACEMENT RECIPE (RECIPE = ITEM)
local platinum_ore_processing = "angels-platinum-ore-processing"
local platinum_processed_processing = "angels-platinum-processed-processing"
local pellet_platinum_smelting = "angels-pellet-platinum-smelting"
local liquid_hexachloroplatinic_acid_smelting = "angels-liquid-hexachloroplatinic-acid-smelting"
local platinum_ore_smelting = "angels-platinum-ore-smelting"
local processed_platinum_smelting = "angels-processed-platinum-smelting"
local solid_ammonium_chloroplatinate_smelting = "angels-solid-ammonium-chloroplatinate-smelting"
--local 
local replacements_recipe_item =
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
for _, technology in pairs(data_technology or {}) do
	if technology.effects then
		for _, effect in pairs(technology.effects) do
			if effect.type == unlock_recipe then
				local replace = replacements_recipe_item[effect.recipe]
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