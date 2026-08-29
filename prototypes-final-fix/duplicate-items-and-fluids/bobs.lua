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
local replace_prototypes =
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
TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

local delete_proto =
{
    "bob-depleted-thorium-fuel-cell",
    "bob-depleted-deuterium-fuel-cell",
    fibreglass_board
}
TIMSABA.functions.delete_duplicated_items(delete_proto)

local delete_prototypes =
{
    steam_inserter,
    steam_mining_drill,
    burner_assembling_machine,
    steam_assembling_machine,
    "bob-stone-chemical-furnace",
    "bob-steel-chemical-furnace",
    "bob-electric-chemical-furnace",
    "bob-electrolyser",
    "bob-distillery",
    "bob-empty-nuclear-fuel-cell",
    "bob-plutonium-fuel-cell",
    "bob-thorium-fuel-cell",
    "bob-thorium-plutonium-fuel-cell",
    "bob-deuterium-fuel-cell",
    "bob-deuterium-fuel-cell-2",
    "bob-thorium-fuel-reprocessing",
    "bob-deuterium-fuel-reprocessing",
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
    "bob-sodium-bicarbonate",
    "bob-ammonium-chloride-reprocessing",
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
    gold_cable_bob,
    "bob-solder-alloy-lead",
    "bob-fluid-furnace",
    "bob-fluid-chemical-furnace",
    "bob-fluid-mixing-furnace",
    "bob-water-miner-1",
    "bob-water-miner-2",
    "bob-water-miner-3",
    "bob-water-miner-4",
    "bob-electronics-machine-1",
    "bob-electronics-machine-2",
    "bob-electronics-machine-3",
    "bob-god-module",
    "bob-god-module" .. _productivity,
    "bob-god-module-quality"
}
TIMSABA.functions.delete_prototypes(delete_prototypes)

data_recipe["bob-cobalt-steel-alloy"] = nil

data_recipe["bob-solder"] = nil
data_recipe[tungsten_carbide_plate_bob] = nil

-- LOGISTICS
data_container[steel_chest].next_upgrade = nil
data_logistic_container[active_provider_chest].next_upgrade = nil
data_logistic_container[buffer_chest].next_upgrade = nil
data_logistic_container[passive_provider_chest].next_upgrade = nil
data_logistic_container[requester_chest].next_upgrade = nil
data_logistic_container[storage_chest].next_upgrade = nil

-- TECHNOLOGY
data_technology["bob-lead-processing"].effects = {}
data_technology["bob-aluminium-processing"].effects = {}