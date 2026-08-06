if mods[castra_mods] then
    local replacements =
    {
        [hydrogen_sulfide_mods] = hydrogen_sulfide_angels,
        [nickel_plate_mods] = nickel_plate_bob
    }
    TIMSABA.functions.delete_duplicate_item_and_fluid(replacements)

	local lithium_battery = "lithium-battery"
	local carbon_fiber_wall = "carbon-fiber-wall"
	local energy_shield_mk3_equipment = "energy-shield-mk3-equipment"
	local mod_items =
	{
		nickel_plate_mods,
		lithium_battery,
		carbon_fiber_wall,
		energy_shield_mk3_equipment
	}
	for _, name in ipairs(mod_items) do
		data_item[name] = nil
		data_recipe[name .. _recycling] = nil
		if name ~= nickel_plate_mods then
			data_recipe[name] = nil
			data_technology[name] = nil
		end
		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
		if name == carbon_fiber_wall then
			data_wall[name] = nil
		end
		if name == energy_shield_mk3_equipment then
			data_energy_shield_eq[name] = nil
		end
	end

	bobmods.lib.recipe.update_recycling_recipe
	({
		railgun,
    	railgun_turret
	})

	data_recipe["hydrogen-sulfide-carbon-extraction"] = nil

	data_recipe["nickel-extraction"] = nil
	data_recipe["battery-nickel"] = nil
	data_recipe["tank-nickel"] = nil
	data_recipe["nickel-sulfide-reduction"] = nil
	data_technology["millerite-processing"] = nil

	local advanced_nickel_processing = "advanced-nickel-processing"
	data_recipe[advanced_nickel_processing] = nil
	data_technology[advanced_nickel_processing] = nil

	local reverse_cracking = "reverse-cracking"
	data_recipe[reverse_cracking] = nil
	data_technology[reverse_cracking] = nil

	local holmium_catalyzing = "holmium-catalyzing"
	data_recipe[holmium_catalyzing] = nil
	data_technology[holmium_catalyzing] = nil

	local jammed_data_collector_process = "jammed-data-collector-process"
	local replacements_2 =
	{
		[jammed_data_collector_process] = castra_data
	}
	for _, technology in pairs(data_technology or {}) do
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
	for _, machine in pairs(data_assembling or {}) do
        -- Если у автомата жестко задан старый рецепт, меняем его на новый
        if machine.fixed_recipe == jammed_data_collector_process then
            machine.fixed_recipe = castra_data
        end
    end

	data_recipe[jammed_data_collector_process] = nil
end