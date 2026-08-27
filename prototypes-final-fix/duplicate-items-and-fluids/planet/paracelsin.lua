if mods[paracelsin_mods] then
    local replace_prototypes =
    {
		[zinc_mods] = zinc_ore_bob,
        [zinc_plate_mods] = zinc_plate_bob,
        [nitrogen_mods] = nitrogen_angels,
        [nitric_acid_mods] = nitric_acid_angels
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto =
	{
		zinc_mods,
		zinc_plate_mods
	}
	TIMSABA.functions.delete_duplicated_prototypes(delete_proto)

	local delete_prototypes =
	{
		"macerator",
		"accumulator-v2",
		"solar-matrix",
		"macerating",
		nitric_acid_mods,
		"sphalerite-processing",
		"sphalerite-melting",
		"tetrahedrite-processing",
		"tetrahedrite-melting",
		"zinc",
		"zinc-concentrate",
		"dirty-zinc-solution",
		"zinc-leaching",
		"zinc-solution",
		"zinc-purification",
		"lubricant-from-nitric-acid",
		"paracelsin-processing-units-from-nitric-acid",
		"batteries-from-nitric-acid",
		"advanced-repair-device",
		"vaterite-processing-productivity"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)

	local casting_galvanized_steel_plate = "casting-galvanized-steel-plate"
	local replacements =
	{
		[casting_galvanized_steel_plate] = galvanized_steel_plate
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
	data_recipe[casting_galvanized_steel_plate] = nil

	for recipe_name, _ in pairs(data_recipe) do
		if string.find(recipe_name, "-macerating", 1, true) then
			data_recipe[recipe_name] = nil
		end
	end

	data_corpse["accumulatorv2-remnants"] = nil
	data_corpse["solar-matrix-remnants"] = nil
end