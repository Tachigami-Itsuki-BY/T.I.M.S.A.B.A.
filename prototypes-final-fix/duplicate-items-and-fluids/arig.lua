if mods [arig_mods] then
    local replacements =
    {
        [glass_panel_arig] = glass_bob,
		[raw_diamond_arig] = raw_diamond_bob
    }
	delete_duplicate_item_and_fluid(replacements)

	data_item[glass_panel_arig] = nil
	data_recipe[glass_panel_arig .. _recycling] = nil
	if mods[panglia_mods] then
		data_recipe[item_ .. glass_panel_arig .. _panglia_crushing] = nil
	end

    data_item[raw_diamond_arig] = nil
	data_recipe[raw_diamond_arig .. _recycling] = nil
	if mods[panglia_mods] then
		data_recipe[item_ .. raw_diamond_arig .. _panglia_crushing] = nil
	end

	data_recipe["planetaris-steam-venting"] = nil

	data_recipe["planetaris-sulfur"] = nil
	data_recipe["planetaris-lithium-brine-sifting"] = nil
	data_recipe["planetaris-lithium-plate"] = nil
end