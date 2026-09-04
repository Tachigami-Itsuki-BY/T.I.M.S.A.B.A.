local fibreglass_board = "bob-fibreglass-board"
local sour_gas_bob = "bob-sour-gas"
local water_lithia_bob = "bob-lithia-water"
local water_pure_bob = "bob-pure-water"
local hydrogen_peroxide_bob = "bob-hydrogen-peroxide"
local lead_oxide_bob = "bob-lead-oxide"
local silicon_powder_bob = "bob-silicon-powder"
local alumina_bob = "bob-alumina"
local silver_nitrate_bob = "bob-silver-nitrate"
local cobalt_oxide_bob = "bob-cobalt-oxide"
local tungsten_powdered_bob = "bob-powdered-tungsten"
local tungsten_oxide_bob = "bob-tungsten-oxide"
local tin_cable_bob = "bob-tinned-copper-cable"
local gold_cable_bob = "bob-gilded-copper-cable"
local steam_inserter_bob = "bob-steam-inserter"
local burner_assembling_machine_bob = "bob-burner-assembling-machine"
local steam_assembling_machine_bob = "bob-steam-assembling-machine"
local steam_mining_drill = "bob-steam-mining-drill"
local electric_chemical_furnace_1 = "bob-electric-chemical-furnace"
local replace_prototypes =
{
	[fibreglass_board] = glass_fiber_board,
    [sour_gas_bob] = hydrogen_sulfide_angels,
    [water_lithia_bob] = water_thermal_angels,
    [water_pure_bob] = water_purified_angels,
    [hydrogen_peroxide_bob] = hydrogen_peroxide,
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
    [steam_inserter_bob] = T0_inserter,
	[steam_mining_drill] = burner_mining_drill,
    [electric_chemical_furnace_1] = electric_mixing_furnace_1
}
if mods[lignumis_mods] then
    replace_prototypes[burner_assembling_machine_bob] = "burner-assembling-machine"
    replace_prototypes[steam_assembling_machine_bob] = "steam-assembling-machine"
else
    replace_prototypes[burner_assembling_machine_bob] = assembling_machine_1
    replace_prototypes[steam_assembling_machine_bob] = assembling_machine_1
end
TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

local delete_proto =
{
    "bob-depleted-thorium-fuel-cell",
    "bob-depleted-deuterium-fuel-cell",
    fibreglass_board
}
TIMSABA.functions.delete_duplicated_items(delete_proto)

local ammoniated_brine = "bob-ammoniated-brine"
local sulfuric_nitric_acid = "bob-sulfuric-nitric-acid"
local delete_proto =
{
    sour_gas_bob,
    water_lithia_bob,
    water_pure_bob,
    "bob-hydrogen",
    "bob-oxygen",
    "bob-nitrogen",
    "bob-chlorine",
    "bob-deuterium",
    "bob-liquid-air",
    "bob-hydrogen-chloride",
    "bob-sulfur-dioxide",
    "bob-hydrogen-sulfide",
    "bob-nitrogen-dioxide",
    "bob-nitric-acid",
    "bob-tungstic-acid",
    "bob-ferric-chloride-solution",
    "bob-heavy-water",
    "bob-dinitrogen-tetroxide",
    "bob-hydrazine",
    hydrogen_peroxide_bob,
    "bob-nitric-oxide",
    "bob-carbon-dioxide",
    "bob-brine",
    ammoniated_brine,
    sulfuric_nitric_acid,
    "bob-glycerol"
}
TIMSABA.functions.delete_duplicated_fluids(delete_proto)
data_recipe[ammoniated_brine] = nil
data_recipe[sulfuric_nitric_acid] = nil

if data_recipe[yeet_item_ .. nitroglycerin_bob .. _barrel] then data_recipe[yeet_item_ .. nitroglycerin_bob .. _barrel] = nil end

if data_recipe[yeet_item_ .. yellow_fluid .. _barrel] then data_recipe[yeet_item_ .. yellow_fluid .. _barrel] = nil end
if data_recipe[yeet_item_ .. purple_fluid .. _barrel] then data_recipe[yeet_item_ .. purple_fluid .. _barrel] = nil end
if data_recipe[yeet_item_ .. green_fluid .. _barrel] then data_recipe[yeet_item_ .. green_fluid .. _barrel] = nil end
if data_recipe[yeet_item_ .. red_fluid .. _barrel] then data_recipe[yeet_item_ .. red_fluid .. _barrel] = nil end

local delete_prototypes =
{
    steam_inserter_bob,
    burner_assembling_machine_bob,
    steam_assembling_machine_bob,
    steam_mining_drill,
    "bob-stone-chemical-furnace",
    "bob-steel-chemical-furnace",
    electric_chemical_furnace_1,
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
    "bob-god-module",
    "bob-god-module" .. _productivity,
    "bob-god-module-quality",
    "bob-robot-gun-drones",
    "bob-robot-laser-drones",
    "bob-robot-flamethrower-drones",
    "bob-robot-plasma-drones"
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