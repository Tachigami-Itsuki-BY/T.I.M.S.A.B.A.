if mods [hyarion_mods] then
    local replacements =
    {
        [aluminium_hyarion] = aluminium_molten_angels,
        [raw_emerald_hyarion] = raw_emerald_bob,
        [raw_ruby_hyarion] = raw_ruby_bob,
        [raw_sapphire_hyarion] = raw_sapphire_bob,
        [polished_diamond_hyarion] = polished_diamond_bob,
        [polished_emerald_hyarion] = polished_emerald_bob,
        [polished_ruby_hyarion] = polished_ruby_bob,
        [polished_sapphire_hyarion] = polished_sapphire_bob,
		[carbon_nanotube_hyarion] = carbon_nanotube
    }
	TIMSABA.functions.delete_duplicate_item_and_fluid(replacements)

	data_fluid[aluminium_hyarion] = nil

	local beryllium_wall = "planetaris-beryllium-coating"
	local hyarion_items =
	{
		raw_emerald_hyarion,
		raw_ruby_hyarion,
		raw_sapphire_hyarion,
		polished_diamond_hyarion,
		polished_emerald_hyarion,
		polished_ruby_hyarion,
		polished_sapphire_hyarion,
		carbon_nanotube_hyarion,
		beryllium_wall
	}
	for _, name in ipairs(hyarion_items) do
		data_item[name] = nil
		data_recipe[name .. _recycling] = nil
		if mods [panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
		if name == beryllium_wall then
			data_recipe[name] = nil
			data_wall[name] = nil
		end
	end

	data_recipe["planetaris-metallic-smelting"] = nil
	data_recipe["planetaris-burner-drill-alternative"] = nil
	data_recipe["planetaris-hyarion-rocket-silo"] = nil
	data_recipe["planetaris-hyarion-cargo-landing-pad"] = nil
end