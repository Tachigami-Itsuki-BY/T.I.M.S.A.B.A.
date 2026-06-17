if mods [moshine_mods] then
    local replacements =
    {
		[neodymium_mods] = neodymium_magnet,
        [sand_mods] = sand_angels,
        [glass_mods] = glass_bob,
        [silicon_carbide_mods] = silicon_carbide_bob
    }
    delete_duplicate_item_and_fluid(replacements)

	data_item[neodymium_mods] = nil
	data_recipe[neodymium_mods .. _recycling] = nil
	if mods [panglia_mods] then
		data_recipe[item_ .. neodymium_mods .. _panglia_crushing] = nil
	end

	data_item[glass_mods] = nil
	data_recipe[glass_mods .. _recycling] = nil
	if mods [panglia_mods] then
		data_recipe[item_ .. glass_mods .. _panglia_crushing] = nil
	end

	data_recipe["concrete-from-molten-iron-and-sand"] = nil
	data_recipe["petroleum-from-sand-sulfur-steam-carbon"] = nil

	data_technology["moshine-concrete-from-molten-iron-and-sand"] = nil
	data_technology["moshine-petroleum-from-sand-sulfur-steam-carbon"] = nil

	local better_substation = "snouz_better_substation"
	data_item[better_substation] = nil
	data_recipe[better_substation] = nil
	data_recipe[better_substation .. _recycling] = nil
	if mods [panglia_mods] then
		data_recipe[item_ .. better_substation .. _panglia_crushing] = nil
	end
	data_electric_pole[better_substation] = nil
	data_technology[better_substation .. "_tech"] = nil

	local long_stack_inserter = "long-stack-inserter"
	data_item[long_stack_inserter] = nil
	data_recipe[long_stack_inserter] = nil
    data_recipe[long_stack_inserter .. _recycling] = nil
    if mods [panglia_mods] then
		data_recipe[item_ .. long_stack_inserter .. _panglia_crushing] = nil
	end
	data_inserter[long_stack_inserter] = nil
	if mods [panglia_mods] then
		data_inserter[long_stack_inserter .. _panglia_fast_version] = nil
	end
    data_technology[long_stack_inserter] = nil
end