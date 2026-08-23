if mods[castra_mods] then
    local replace_prototypes =
    {
        [hydrogen_sulfide_mods] = hydrogen_sulfide_angels,
        [nickel_plate_mods] = nickel_plate_bob
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local carbon_fiber_wall = "carbon-fiber-wall"
	local energy_shield_mk3_equipment = "energy-shield-mk3-equipment"
	local delete_prototypes =
	{
		nickel_plate_mods,
		"lithium-battery",
		carbon_fiber_wall,
		energy_shield_mk3_equipment,
		"hydrogen-sulfide-carbon-extraction",
		"nickel-extraction",
		"battery-nickel",
		"tank-nickel",
		"nickel-sulfide-reduction",
		"millerite-processing",
		"advanced-nickel-processing",
		"reverse-cracking",
		"holmium-catalyzing",
	}
	TIMSABA.functions.delete_the_replaced_prototypes(delete_prototypes)
	data_wall[carbon_fiber_wall] = nil
	data_energy_shield_eq[energy_shield_mk3_equipment] = nil

	bobmods.lib.recipe.update_recycling_recipe
	({
		railgun,
    	railgun_turret
	})

	local jammed_data_collector_process = "jammed-data-collector-process"
	local replacements =
	{
		[jammed_data_collector_process] = castra_data
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
	for _, machine in pairs(data_assembling or {}) do
        if machine.fixed_recipe == jammed_data_collector_process then
            machine.fixed_recipe = castra_data
        end
    end
	data_recipe[jammed_data_collector_process] = nil
end