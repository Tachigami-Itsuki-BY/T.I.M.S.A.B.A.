if mods[maraxsis_mods] then
    local replacements =
    {
        [salt_mods] = salt_angels,
		[limestone_mods] = limestone_angels,
		[glass_panes_maraxsis] = glass_bob,
		[sand_mods] = sand_angels,
        [water_saline_maraxsis] = water_saline_angels,
        [oxygen_mods] = oxygen_angels,
        [hydrogen_mods] = hydrogen_angels,
    }
    TIMSABA.functions.replace_duplicate_prototypes(replacements)

	data_item[glass_panes_maraxsis] = nil
	data_recipe[glass_panes_maraxsis] = nil
	data_recipe[glass_panes_maraxsis .. _recycling] = nil
	if mods[panglia_mods] then
		data_recipe[item_ .. glass_panes_maraxsis .. _panglia_crushing] = nil
	end

	data_item[limestone_mods] = nil
	data_recipe[limestone_mods .. _recycling] = nil
	if mods[panglia_mods] then
		data_recipe[item_ .. limestone_mods .. _panglia_crushing] = nil
	end

	data_fluid[water_saline_maraxsis] = nil

	local liquid_atmosphere_maraxsis = "maraxsis-liquid-atmosphere"
	data_fluid[liquid_atmosphere_maraxsis] = nil
	data_recipe[liquid_atmosphere_maraxsis] = nil
	data_technology[liquid_atmosphere_maraxsis] = nil

	data_recipe[liquid_atmosphere_maraxsis .. "-decompression"] = nil

	data_recipe["maraxsis-limestone-processing"] = nil

	data_recipe["maraxsis-petroleum-gas-cracking"] = nil

	data_recipe["maraxsis-holmium-recrystalization"] = nil

	local maraxsis_stone_centrifuging = "maraxsis-stone-centrifuging"
	data_recipe[maraxsis_stone_centrifuging] = nil
	data_technology[maraxsis_stone_centrifuging] = nil

	local conduit_maraxsis = "maraxsis-conduit"
	data_item[conduit_maraxsis] = nil
	data_recipe[conduit_maraxsis] = nil
	data_recipe[conduit_maraxsis .. _recycling] = nil
	if mods[panglia_mods] then
		data_recipe[item_ .. conduit_maraxsis .. _panglia_crushing] = nil
	end
	data_beacon[conduit_maraxsis] = nil

	data_technology["maraxsis-effect-transmission-2"] = nil

	data_technology["sp-spidertron-automation"] = nil
end