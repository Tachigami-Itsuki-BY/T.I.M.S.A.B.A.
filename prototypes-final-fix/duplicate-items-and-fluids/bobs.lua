local fibreglass_board = "bob-fibreglass-board"
local lead_oxide_bob = "bob-lead-oxide"
local silicon_powder_bob = "bob-silicon-powder"
local alumina_bob = "bob-alumina"
local silver_nitrate_bob = "bob-silver-nitrate"
local cobalt_oxide_bob = "bob-cobalt-oxide"
local tungsten_powdered_bob = "bob-powdered-tungsten"
local tungsten_oxide_bob = "bob-tungsten-oxide"
local tin_cable_bob = "bob-tinned-copper-cable"
local gold_cable_bob = "bob-gilded-copper-cable"
local steam_inserter = "bob-steam-inserter"
local steam_mining_drill = "bob-steam-mining-drill"
local burner_assembling_machine = "bob-burner-assembling-machine"
local steam_assembling_machine = "bob-steam-assembling-machine"
local replacements =
{
	[fibreglass_board] = glass_fiber_board,
    [sour_gas_bob] = hydrogen_sulfide_angels,
	[lead_oxide_bob] = lead_oxide_II,
	[silicon_powder_bob] = silicon_powder,
	[alumina_bob] = aluminium_oxide,
	[silver_nitrate_bob] = silver_nitrate_I,
	[cobalt_oxide_bob] = cobalt_oxide_II_III,
	[tungsten_powdered_bob] = tungsten_powder,
	[tungsten_oxide_bob] = tungsten_oxide_VI,
	[tin_cable_bob] = tin_cable,
	[gold_cable_bob] = gold_cable,
	-- FOR mods
	[steam_inserter] = T0_inserter,
	[steam_mining_drill] = burner_mining_drill,
	[steam_assembling_machine] = assembling_machine_1,
    [burner_assembling_machine] = assembling_machine_1
}
TIMSABA.functions.replace_duplicate_prototypes(replacements)

data_item[steam_inserter] = nil
data_recipe[steam_inserter] = nil
data_inserter[steam_inserter] = nil
data_recipe[steam_inserter .. _recycling] = nil
if mods[panglia_mods] then
	data_recipe[item_ .. steam_inserter .. _panglia_crushing] = nil
	data_inserter[steam_inserter .. _panglia_fast_version] = nil
end

data_item[steam_mining_drill] = nil
data_recipe[steam_mining_drill] = nil
data_mining_drill[steam_mining_drill] = nil
data_recipe[steam_mining_drill .. _recycling] = nil
if mods[panglia_mods] then
	data_recipe[item_ .. steam_mining_drill .. _panglia_crushing] = nil
end

data_item[burner_assembling_machine] = nil
data_recipe[burner_assembling_machine] = nil
data_assembling[burner_assembling_machine] = nil
data_recipe[burner_assembling_machine .. _recycling] = nil
if mods[panglia_mods] then
	data_recipe[item_ .. burner_assembling_machine .. _panglia_crushing] = nil
end

data_item[steam_assembling_machine] = nil
data_recipe[steam_assembling_machine] = nil
data_assembling[steam_assembling_machine] = nil
data_recipe[steam_assembling_machine .. _recycling] = nil
if mods[panglia_mods] then
	data_recipe[item_ .. steam_assembling_machine .. _panglia_crushing] = nil
end

local chemical_structures =
{
    {name = "bob-stone-chemical-furnace",    data_type = data_assembling},
    {name = "bob-steel-chemical-furnace",    data_type = data_assembling},
    {name = "bob-electric-chemical-furnace", data_type = data_assembling},
    {name = "bob-electrolyser",              data_type = data_assembling},
    {name = "bob-distillery",                data_type = data_furnace}
}
for _, struct in ipairs(chemical_structures) do
    data_item[struct.name] = nil
    data_recipe[struct.name] = nil
    data_recipe[struct.name .. _recycling] = nil
    struct.data_type[struct.name] = nil
    if mods[panglia_mods] then
        data_recipe[item_ .. struct.name .. _panglia_crushing] = nil
    end
end

local nuclear_cells =
{
    {name = "bob-empty-nuclear-fuel-cell",       has_recipe = true},
    {name = "bob-plutonium-fuel-cell",           has_recipe = true},
    {name = "bob-thorium-fuel-cell",             has_recipe = true},
    {name = "bob-thorium-plutonium-fuel-cell",   has_recipe = true},
    {name = "bob-deuterium-fuel-cell",           has_recipe = true},
    {name = "bob-deuterium-fuel-cell-2",         has_recipe = true},
    {name = "bob-depleted-thorium-fuel-cell",    has_recipe = false},
    {name = "bob-depleted-deuterium-fuel-cell",  has_recipe = false}
}
for _, cell in ipairs(nuclear_cells) do
    local name = cell.name

    data_item[name] = nil
    data_recipe[name .. _recycling] = nil
    if cell.has_recipe then
        data_recipe[name] = nil
    end
    if mods[panglia_mods] then
        data_recipe[item_ .. name .. _panglia_crushing] = nil
    end
end

data_recipe["bob-thorium-fuel-reprocessing"] = nil
data_recipe["bob-deuterium-fuel-reprocessing"] = nil

local bob_materials =
{
    "bob-limestone",
    "bob-salt",
    "bob-lithium-chloride",
    "bob-carbon",
    "bob-sodium-hydroxide",
    "bob-sodium-carbonate",
    "bob-sodium-chlorate",
    "bob-fusion-catalyst",
    "bob-sodium-perchlorate",
    "bob-calcium-chloride",
    "bob-ammonium-chloride",
    "bob-sodium-bicarbonate"
}
for _, name in ipairs(bob_materials) do
    data_item[name] = nil
    data_recipe[name] = nil
    data_recipe[name .. _recycling] = nil
    if mods[panglia_mods] then 
        data_recipe[item_ .. name .. _panglia_crushing] = nil
    end
end

data_recipe["bob-ammonium-chloride-reprocessing"] = nil

local plates_and_powders =
{
    "bob-silicon-plate",
    "bob-cobalt-plate",
    "bob-solder-alloy",

    lead_oxide_bob,
    silicon_powder_bob,
    alumina_bob,
    silver_nitrate_bob,
    cobalt_oxide_bob,
    tungsten_powdered_bob,
    tungsten_oxide_bob,
    tin_cable_bob,
    gold_cable_bob
}
for _, name in ipairs(plates_and_powders) do
	data_item[name] = nil
	data_recipe[name] = nil
	data_recipe[name .. _recycling] = nil
	if mods[panglia_mods] then 
		data_recipe[item_ .. name .. _panglia_crushing] = nil
	end
end

data_item[fibreglass_board] = nil
data_recipe[fibreglass_board .. _recycling] = nil
if mods[panglia_mods] then
	data_recipe[item_ .. fibreglass_board .. _panglia_crushing] = nil
end

data_recipe["bob-cobalt-steel-alloy"] = nil
data_recipe["bob-solder-alloy-lead"] = nil
data_recipe["bob-solder"] = nil
data_recipe[tungsten_carbide_plate_bob] = nil

-- LOGISTICS
data_container[steel_chest].next_upgrade = nil
data_logistic_container[active_provider_chest].next_upgrade = nil
data_logistic_container[buffer_chest].next_upgrade = nil
data_logistic_container[passive_provider_chest].next_upgrade = nil
data_logistic_container[requester_chest].next_upgrade = nil
data_logistic_container[storage_chest].next_upgrade = nil

-- PRODUCTION
local fluid_furnace = "bob-fluid-furnace"
local fluid_chemical_furnace = "bob-fluid-chemical-furnace"
local fluid_filtering_furnace = "bob-fluid-mixing-furnace"
local modules_removed =
{
    fluid_furnace,
    fluid_chemical_furnace,
    fluid_filtering_furnace
}
for _, name in ipairs(modules_removed) do
	data_item[name] = nil
	data_recipe[name] = nil
	data_recipe[name .. _recycling] = nil
	if mods[panglia_mods] then 
		data_recipe[item_ .. name .. _panglia_crushing] = nil
	end
end
data_furnace[fluid_furnace] = nil
data_assembling[fluid_chemical_furnace] = nil
data_assembling[fluid_filtering_furnace] = nil

local modules_removed =
{
    "bob-water-miner-1",
    "bob-water-miner-2",
    "bob-water-miner-3",
    "bob-water-miner-4"
}
for _, name in ipairs(modules_removed) do
	data_item[name] = nil
	data_recipe[name] = nil
	data_recipe[name .. _recycling] = nil
	if mods[panglia_mods] then 
		data_recipe[item_ .. name .. _panglia_crushing] = nil
	end
    data_mining_drill[name] = nil
    data_technology[name] = nil
end

local modules_removed =
{
    "bob-electronics-machine-1",
    "bob-electronics-machine-2",
    "bob-electronics-machine-3"
}
for _, name in ipairs(modules_removed) do
	data_item[name] = nil
	data_recipe[name] = nil
	data_recipe[name .. _recycling] = nil
	if mods[panglia_mods] then 
		data_recipe[item_ .. name .. _panglia_crushing] = nil
	end
    data_assembling[name] = nil
    data_technology[name] = nil
end

-- MODULES
local god_module = "bob-god-module"
local modules_removed =
{
    god_module,
    god_module .. _productivity,
    god_module .. "-quality"
}
for _, name in ipairs(modules_removed) do
	data_module[name] = nil
	data_recipe[name] = nil
	data_recipe[name .. _recycling] = nil
	if mods[panglia_mods] then 
		data_recipe[item_ .. name .. _panglia_crushing] = nil
	end
end
data_technology[god_module] = nil

-- TECHNOLOGY
data_technology["bob-lead-processing"].effects = {}
data_technology["bob-aluminium-processing"].effects = {}