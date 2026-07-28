if mods [paracelsin_mods] then
    local replacements =
    {
		[zinc_mods] = zinc_ore_bob,
        [zinc_plate_mods] = zinc_plate_bob,
        [nitrogen_mods] = nitrogen_angels,
        [nitric_acid_mods] = nitric_acid_angels
    }
    TIMSABA.functions.delete_duplicate_item_and_fluid(replacements)

	local macerator = "macerator"
	local mod_items =
	{
		zinc_mods,
		zinc_plate_mods,
		macerator
	}
	for _, name in ipairs(mod_items) do
		data_item[name] = nil
		data_recipe[name] = nil
		data_recipe[name .. _recycling] = nil
		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
	end

	data_furnace[macerator] = nil

	for _, name in ipairs({"accumulator-v2", "solar-matrix"}) do
        data_item[name] = nil
        data_recipe[name] = nil
        data_recipe[name .. _recycling] = nil
		if mods[panglia_mods] then
            data_recipe[item_ .. name .. _panglia_crushing] = nil
        end
		if data_accumulator[name] then
			data_accumulator[name] = nil
		end
		if data_solar_panel[name] then
			data_solar_panel[name] = nil
		end
		data_technology[name] = nil

        if mods [solar_productivity] then
            for i = 1, 99 do
                local sp_prefix = "sp-" .. i .. "-"
                if sp_prefix then
					if data_accumulator[sp_prefix .. name] then
                    	data_accumulator[sp_prefix .. name] = nil
					elseif data_solar_panel[sp_prefix .. name] then
						data_solar_panel[sp_prefix .. name] = nil
					end
                end
            end
        end
    end

	data_technology["macerating"] = nil

	data_fluid[nitric_acid_mods] = nil

	local sphalerite_processing = "sphalerite-processing"
	data_recipe[sphalerite_processing] = nil
	data_technology[sphalerite_processing] = nil

	data_recipe["sphalerite-melting"] = nil

	local tetrahedrite_processing = "tetrahedrite-processing"
	data_recipe[tetrahedrite_processing] = nil
	data_technology[tetrahedrite_processing] = nil

	data_recipe["tetrahedrite-melting"] = nil

	local zinc_concentrate = "zinc-concentrate"
	data_fluid[zinc_concentrate] = nil

	local dirty_zinc_solution = "dirty-zinc-solution"
	data_fluid[dirty_zinc_solution] = nil

	data_recipe["zinc-leaching"] = nil

	local zinc_solution = "zinc-solution"
	data_fluid[zinc_solution] = nil

	data_recipe["zinc-purification"] = nil

	local casting_galvanized_steel_plate = "casting-galvanized-steel-plate"
	local replacements_2 =
	{
		[casting_galvanized_steel_plate] = galvanized_steel_plate
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
	data_recipe[casting_galvanized_steel_plate] = nil

	data_recipe["lubricant-from-nitric-acid"] = nil

	data_recipe["paracelsin-processing-units-from-nitric-acid"] = nil

	data_recipe["batteries-from-nitric-acid"] = nil

	local advanced_repair_device = "advanced-repair-device"
	data_repair_tool[advanced_repair_device] = nil
	data_recipe[advanced_repair_device] = nil
    data_technology[advanced_repair_device] = nil

	data_technology["vaterite-processing-productivity"] = nil

	for recipe_name, _ in pairs(data_recipe) do
		if string.find(recipe_name, "-macerating", 1, true) then
			data_recipe[recipe_name] = nil
		end
	end
end