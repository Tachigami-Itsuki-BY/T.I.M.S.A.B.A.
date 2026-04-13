local tungsten_gear_wheel = "bob-tungsten-gear-wheel"
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
local replacements =
{
	[tungsten_gear_wheel] = copper_tungsten_gear_wheel,
	[fibreglass_board] = glass_fiber_board,
    [sour_gas_bob] = hydrogen_sulfide_angels,
	[lead_oxide_bob] = lead_oxide,
	[silicon_powder_bob] = silicon_powder,
	[alumina_bob] = aluminium_oxide,
	[silver_nitrate_bob] = silver_nitrate,
	[cobalt_oxide_bob] = cobalt_oxide,
	[tungsten_powdered_bob] = tungsten_powder,
	[tungsten_oxide_bob] = tungsten_oxide,
	[tin_cable_bob] = tin_cable,
	[gold_cable_bob] = gold_cable
}
for _, recipe in pairs(data.raw.recipe or {}) do
    for _, ingredient in pairs(recipe.ingredients or {}) do
        local replace = replacements[ingredient.name]
	    if replace then
            ingredient.name = replace
        end
    end
	for _, result in pairs(recipe.results or {}) do
    	local replace = replacements[result.name]
	    if replace then
    		result.name = replace
    	end
    end
    if recipe.main_product then
    	local replace = replacements[recipe.main_product]
	    if replace then
    		recipe.main_product = replace
    	end
    end
end
for _, technology in pairs(data.raw.technology or {}) do
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
for _, technology in pairs(data.raw.technology or {}) do
	if technology.research_trigger then
		local replace = replacements[technology.research_trigger.item]
		if replace then
			technology.research_trigger.item = replace
		end
	end
	if technology.research_trigger then
		local replace = replacements[technology.research_trigger.fluid]
		if replace then
			technology.research_trigger.fluid = replace
		end
	end
end

if data_technology["bob-burner-reactor-1"] then
	if mods [panglia_mods] then
		data_recipe["item-bob-burner-reactor-panglia_crushing"] = nil
		data_recipe["item-bob-fluid-reactor-panglia_crushing"] = nil
	end
	data_recipe["bob-burner-reactor-recycling"] = nil
    data_technology["bob-burner-reactor-1"] = nil
    local burner_reactor = "bob-burner-reactor"
    data_item[burner_reactor] = nil
    data_recipe[burner_reactor] = nil
    data_reactor[burner_reactor] = nil
	data_recipe["bob-fluid-reactor-recycling"] = nil
    local fluid_reactor = "bob-fluid-reactor"
    data_item[fluid_reactor] = nil
    data_recipe[fluid_reactor] = nil
    data_reactor[fluid_reactor] = nil
end

local fluid_reactor_from_fluid_furnace = "bob-fluid-reactor-from-fluid-furnace"
if data_recipe[fluid_reactor_from_fluid_furnace] then
    data_recipe[fluid_reactor_from_fluid_furnace] = nil
end

local burner_reactor_2 = "bob-burner-reactor-2"
if data_technology[burner_reactor_2] then
	if mods [panglia_mods] then
		data_recipe["item-bob-burner-reactor-2-panglia_crushing"] = nil
		data_recipe["item-bob-fluid-reactor-2-panglia_crushing"] = nil
	end
	data_recipe["bob-burner-reactor-2-recycling"] = nil
    data_technology[burner_reactor_2] = nil
    data_item[burner_reactor_2] = nil
    data_recipe[burner_reactor_2] = nil
    data_reactor[burner_reactor_2] = nil
	data_recipe["bob-fluid-reactor-2-recycling"] = nil
    local fluid_reactor_2 = "bob-fluid-reactor-2"
    data_item[fluid_reactor_2] = nil
    data_recipe[fluid_reactor_2] = nil
    data_reactor[fluid_reactor_2] = nil
end

if data_technology["bob-oil-boiler-1"] then
	if mods [panglia_mods] then
		data_recipe["item-bob-oil-boiler-panglia_crushing"] = nil
	end
	data_recipe["bob-oil-boiler-recycling"] = nil
    data_technology["bob-oil-boiler-1"] = nil
    local oil_boiler = "bob-oil-boiler"
    data_item[oil_boiler] = nil
    data_recipe[oil_boiler] = nil
    data_boiler[oil_boiler] = nil
end

local oil_boiler_2 = "bob-oil-boiler-2"
if data_technology[oil_boiler_2] then
	if mods [panglia_mods] then
		data_recipe["item-bob-oil-boiler-2-panglia_crushing"] = nil
	end
	data_recipe["bob-oil-boiler-2-recycling"] = nil
    data_technology[oil_boiler_2] = nil
    data_item[oil_boiler_2] = nil
    data_recipe[oil_boiler_2] = nil
    data_boiler[oil_boiler_2] = nil
end

local oil_boiler_3 = "bob-oil-boiler-3"
if data_technology[oil_boiler_3] then
	if mods [panglia_mods] then
		data_recipe["item-bob-oil-boiler-3-panglia_crushing"] = nil
	end
	data_recipe["bob-oil-boiler-3-recycling"] = nil
    data_technology[oil_boiler_3] = nil
    data_item[oil_boiler_3] = nil
    data_recipe[oil_boiler_3] = nil
    data_boiler[oil_boiler_3] = nil
end

local oil_boiler_4 = "bob-oil-boiler-4"
if data_technology[oil_boiler_4] then
	if mods [panglia_mods] then
		data_recipe["item-bob-oil-boiler-4-panglia_crushing"] = nil
	end
	data_recipe["bob-oil-boiler-4-recycling"] = nil
    data_technology[oil_boiler_4] = nil
    data_item[oil_boiler_4] = nil
    data_recipe[oil_boiler_4] = nil
    data_boiler[oil_boiler_4] = nil
end

data_technology["steam-power"].effects =
{
	{type = unlock_recipe, recipe = iron_pipe},
	{type = unlock_recipe, recipe = iron_pipe_to_ground},
	{type = unlock_recipe, recipe = "offshore-pump"},
	{type = unlock_recipe, recipe = boiler_1},
	{type = unlock_recipe, recipe = "steam-engine"},
	{type = unlock_recipe, recipe = copper_pipe},
	{type = unlock_recipe, recipe = copper_pipe_to_ground},
	{type = unlock_recipe, recipe = stone_pipe},
	{type = unlock_recipe, recipe = stone_pipe_to_ground}
}

local steam_inserter = "bob-steam-inserter"
if data_item[steam_inserter] then
	if mods [panglia_mods] then
		data_recipe["item-bob-steam-inserter-panglia_crushing"] = nil
		data_inserter["bob-steam-inserter_panglia_fast_version"] = nil
	end
	data_recipe["bob-steam-inserter-recycling"] = nil
	data_item[steam_inserter] = nil
	data_recipe[steam_inserter] = nil
	data_inserter[steam_inserter] = nil
end

local steam_mining_drill = "bob-steam-mining-drill"
if data_item[steam_mining_drill] then
	if mods [panglia_mods] then
		data_recipe["item-bob-steam-mining-drill-panglia_crushing"] = nil
	end
	data_recipe["bob-steam-mining-drill-recycling"] = nil
	data_item[steam_mining_drill] = nil
	data_recipe[steam_mining_drill] = nil
	data_mining_drill[steam_mining_drill] = nil
end

local steam_assembling_machine = "bob-steam-assembling-machine"
if data_item[steam_assembling_machine] then
	if mods [panglia_mods] then
		data_recipe["item-bob-steam-assembling-machine-panglia_crushing"] = nil
	end
	data_recipe["bob-steam-assembling-machine-recycling"] = nil
    data_item[steam_assembling_machine] = nil
    data_recipe[steam_assembling_machine] = nil
    data_assembling[steam_assembling_machine] = nil
end

local valve = "bob-valve"
data_item[valve] = nil
data_recipe[valve] = nil
data_valve[valve] = nil
data_recipe["bob-valve-recycling"] = nil

local valve_overflow = "bob-overflow-valve"
data_item[valve_overflow] = nil
data_recipe[valve_overflow] = nil
data_valve[valve_overflow] = nil
data_recipe["bob-overflow-valve-recycling"] = nil

local valve_topup = "bob-topup-valve"
data_item[valve_topup] = nil
data_recipe[valve_topup] = nil
data_valve[valve_topup] = nil
data_recipe["bob-topup-valve-recycling"] = nil

local void_pump = "bob-void-pump"
data_item[void_pump] = nil
data_recipe[void_pump] = nil
data_furnace[void_pump] = nil
data_recipe["bob-void-pump-recycling"] = nil

local air_pump_1 = "bob-air-pump"
data_item[air_pump_1] = nil
data_recipe[air_pump_1] = nil
data_assembling[air_pump_1] = nil
data_recipe["bob-air-pump-recycling"] = nil
data_technology["bob-air-compressor-1"] = nil
data_technology["bob-nitrogen-processing"] = nil
data_technology["bob-void-fluid"] = nil

local air_pump_2 = "bob-air-pump-2"
data_item[air_pump_2] = nil
data_recipe[air_pump_2] = nil
data_assembling[air_pump_2] = nil
data_recipe["bob-air-pump-2-recycling"] = nil
data_technology["bob-air-compressor-2"] = nil

local air_pump_3 = "bob-air-pump-3"
data_item[air_pump_3] = nil
data_recipe[air_pump_3] = nil
data_assembling[air_pump_3] = nil
data_recipe["bob-air-pump-3-recycling"] = nil
data_technology["bob-air-compressor-3"] = nil

local air_pump_4 = "bob-air-pump-4"
data_item[air_pump_4] = nil
data_recipe[air_pump_4] = nil
data_assembling[air_pump_4] = nil
data_recipe["bob-air-pump-4-recycling"] = nil
data_technology["bob-air-compressor-4"] = nil

local water_pump_1 = "bob-water-pump"
data_item[water_pump_1] = nil
data_recipe[water_pump_1] = nil
data_assembling[water_pump_1] = nil
data_recipe["bob-water-pump-recycling"] = nil
data_technology["bob-water-bore-1"] = nil

local water_pump_2 = "bob-water-pump-2"
data_item[water_pump_2] = nil
data_recipe[water_pump_2] = nil
data_assembling[water_pump_2] = nil
data_recipe["bob-water-pump-2-recycling"] = nil
data_technology["bob-water-bore-2"] = nil

local water_pump_3 = "bob-water-pump-3"
data_item[water_pump_3] = nil
data_recipe[water_pump_3] = nil
data_assembling[water_pump_3] = nil
data_recipe["bob-water-pump-3-recycling"] = nil
data_technology["bob-water-bore-3"] = nil

local water_pump_4 = "bob-water-pump-4"
data_item[water_pump_4] = nil
data_recipe[water_pump_4] = nil
data_assembling[water_pump_4] = nil
data_recipe["bob-water-pump-4-recycling"] = nil
data_technology["bob-water-bore-4"] = nil

local stone_chemical_furnace = "bob-stone-chemical-furnace"
data_item[stone_chemical_furnace] = nil
data_recipe[stone_chemical_furnace] = nil
data_assembling[stone_chemical_furnace] = nil
data_recipe["bob-stone-chemical-furnace-recycling"] = nil

local steel_chemical_furnace = "bob-steel-chemical-furnace"
data_item[steel_chemical_furnace] = nil
data_recipe[steel_chemical_furnace] = nil
data_assembling[steel_chemical_furnace] = nil
data_recipe["bob-steel-chemical-furnace-recycling"] = nil

local electric_chemical_furnace = "bob-electric-chemical-furnace"
data_item[electric_chemical_furnace] = nil
data_recipe[electric_chemical_furnace] = nil
data_assembling[electric_chemical_furnace] = nil
data_recipe["bob-electric-chemical-furnace-recycling"] = nil

local electrolyser_bob = "bob-electrolyser"
data_item[electrolyser_bob] = nil
data_recipe[electrolyser_bob] = nil
data_assembling[electrolyser_bob] = nil
data_recipe["bob-electrolyser-recycling"] = nil

local distillery = "bob-distillery"
data_item[distillery] = nil
data_recipe[distillery] = nil
data_furnace[distillery] = nil
data_recipe["bob-distillery-recycling"] = nil

local empty_nuclear_fuel_cell = "bob-empty-nuclear-fuel-cell"
data_item[empty_nuclear_fuel_cell] = nil
data_recipe[empty_nuclear_fuel_cell] = nil
data_recipe["bob-empty-nuclear-fuel-cell-recycling"] = nil
local plutonium_fuel_cell_bob = "bob-plutonium-fuel-cell"
data_item[plutonium_fuel_cell_bob] = nil
data_recipe[plutonium_fuel_cell_bob] = nil
data_recipe["bob-plutonium-fuel-cell-recycling"] = nil
local thorium_fuel_cell_bob = "bob-thorium-fuel-cell"
data_item[thorium_fuel_cell_bob] = nil
data_recipe[thorium_fuel_cell_bob] = nil
data_recipe["bob-thorium-fuel-cell-recycling"] = nil
local thorium_plutonium_fuel_cell_bob = "bob-thorium-plutonium-fuel-cell"
data_item[thorium_plutonium_fuel_cell_bob] = nil
data_recipe[thorium_plutonium_fuel_cell_bob] = nil
data_recipe["bob-thorium-plutonium-fuel-cell-recycling"] = nil
data_item["bob-depleted-thorium-fuel-cell"] = nil
data_recipe["bob-depleted-thorium-fuel-cell-recycling"] = nil
data_recipe["bob-thorium-fuel-reprocessing"] = nil
local deuterium_fuel_cell_bob = "bob-deuterium-fuel-cell"
data_item[deuterium_fuel_cell_bob] = nil
data_recipe[deuterium_fuel_cell_bob] = nil
data_recipe["bob-deuterium-fuel-cell-recycling"] = nil
local deuterium_fuel_cell_bob_2 = "bob-deuterium-fuel-cell-2"
data_item[deuterium_fuel_cell_bob_2] = nil
data_recipe[deuterium_fuel_cell_bob_2] = nil
data_recipe["bob-deuterium-fuel-cell-2-recycling"] = nil
data_item["bob-depleted-deuterium-fuel-cell"] = nil
data_recipe["bob-depleted-deuterium-fuel-cell-recycling"] = nil
data_recipe["bob-deuterium-fuel-reprocessing"] = nil

local limestone_bob = "bob-limestone"
data_item[limestone_bob] = nil
data_recipe[limestone_bob] = nil
data_recipe["bob-limestone-recycling"] = nil
local salt_bob = "bob-salt"
data_item[salt_bob] = nil
data_recipe[salt_bob] = nil
data_recipe["bob-salt-recycling"] = nil
local lithium_chloride_bob = "bob-lithium-chloride"
data_item[lithium_chloride_bob] = nil
data_recipe[lithium_chloride_bob] = nil
data_recipe["bob-lithium-chloride-recycling"] = nil
local carbon_bob = "bob-carbon"
data_item[carbon_bob] = nil
data_recipe[carbon_bob] = nil
data_recipe["bob-carbon-recycling"] = nil
local sodium_hydroxide_bob = "bob-sodium-hydroxide"
data_item[sodium_hydroxide_bob] = nil
data_recipe[sodium_hydroxide_bob] = nil
data_recipe["bob-sodium-hydroxide-recycling"] = nil
local sodium_carbonate_bob = "bob-sodium-carbonate"
data_item[sodium_carbonate_bob] = nil
data_recipe[sodium_carbonate_bob] = nil
data_recipe["bob-sodium-carbonate-recycling"] = nil
local sodium_chlorate_bob = "bob-sodium-chlorate"
data_item[sodium_chlorate_bob] = nil
data_recipe[sodium_chlorate_bob] = nil
data_recipe["bob-sodium-chlorate-recycling"] = nil
local fusion_catalyst_bob = "bob-fusion-catalyst"
data_item[fusion_catalyst_bob] = nil
data_recipe[fusion_catalyst_bob] = nil
data_recipe["bob-fusion-catalyst-recycling"] = nil
local sodium_perchlorate = "bob-sodium-perchlorate"
data_item[sodium_perchlorate] = nil
data_recipe[sodium_perchlorate] = nil
data_recipe["bob-sodium-perchlorate-recycling"] = nil
local calcium_chloride_bob = "bob-calcium-chloride"
data_item[calcium_chloride_bob] = nil
data_recipe[calcium_chloride_bob] = nil
data_recipe["bob-calcium-chloride-recycling"] = nil
local ammonium_chloride_bob = "bob-ammonium-chloride"
data_item[ammonium_chloride_bob] = nil
data_recipe[ammonium_chloride_bob] = nil
data_recipe["bob-ammonium-chloride-recycling"] = nil
data_recipe["bob-ammonium-chloride-reprocessing"] = nil
local sodium_bicarbonate_bob = "bob-sodium-bicarbonate"
data_item[sodium_bicarbonate_bob] = nil
data_recipe[sodium_bicarbonate_bob] = nil
data_recipe["bob-sodium-bicarbonate-recycling"] = nil
local silicon_plate = "bob-silicon-plate"
data_item[silicon_plate] = nil
data_recipe[silicon_plate] = nil
data_recipe["bob-silicon-plate-recycling"] = nil
local cobalt_plate_bob = "bob-cobalt-plate"
data_item[cobalt_plate_bob] = nil
data_recipe[cobalt_plate_bob] = nil
data_recipe["bob-cobalt-plate-recycling"] = nil
data_recipe["bob-cobalt-steel-alloy"] = nil
local solder_alloy = "bob-solder-alloy"
data_item[solder_alloy] = nil
data_recipe[solder_alloy] = nil
data_recipe["bob-solder-alloy-recycling"] = nil
data_recipe["bob-solder-alloy-lead"] = nil
data_recipe["bob-solder"] = nil

data_item[tungsten_gear_wheel] = nil
data_recipe[tungsten_gear_wheel] = nil
data_recipe["bob-tungsten-gear-wheel-recycling"] = nil
data_item[fibreglass_board] = nil
data_recipe["bob-fibreglass-board-recycling"] = nil

data_item[lead_oxide_bob] = nil
data_recipe[lead_oxide_bob] = nil
data_recipe["bob-lead-oxide-recycling"] = nil
data_item[silicon_powder_bob] = nil
data_recipe[silicon_powder_bob] = nil
data_recipe["bob-silicon-powder-recycling"] = nil
data_item[alumina_bob] = nil
data_recipe[alumina_bob] = nil
data_recipe["bob-alumina-recycling"] = nil
data_item[silver_nitrate_bob] = nil
data_recipe[silver_nitrate_bob] = nil
data_recipe["bob-silver-nitrate-recycling"] = nil
data_item[cobalt_oxide_bob] = nil
data_recipe[cobalt_oxide_bob] = nil
data_recipe["bob-cobalt-oxide-recycling"] = nil
data_item[tungsten_powdered_bob] = nil
data_recipe[tungsten_powdered_bob] = nil
data_recipe["bob-powdered-tungsten-recycling"] = nil
data_item[tungsten_oxide_bob] = nil
data_recipe[tungsten_oxide_bob] = nil
data_recipe["bob-tungsten-oxide-recycling"] = nil
data_item[tin_cable_bob] = nil
data_recipe[tin_cable_bob] = nil
data_recipe["bob-tinned-copper-cable-recycling"] = nil
data_item[gold_cable_bob] = nil
data_recipe[gold_cable_bob] = nil
data_recipe["bob-gilded-copper-cable-recycling"] = nil

-- LOGISTICS
data_item["bob-valve"] = nil
data_recipe["bob-valve-recycling"] = nil
data_item["bob-overflow"] = nil
data_recipe["bob-overflow-recycling"] = nil
data_item["bob-topup-valve"] = nil
data_recipe["bob-topup-valve-recycling"] = nil

data_container[steel_chest].next_upgrade = nil
data_logistic_container[active_provider_chest].next_upgrade = nil
data_logistic_container[buffer_chest].next_upgrade = nil
data_logistic_container[passive_provider_chest].next_upgrade = nil
data_logistic_container[requester_chest].next_upgrade = nil
data_logistic_container[storage_chest].next_upgrade = nil