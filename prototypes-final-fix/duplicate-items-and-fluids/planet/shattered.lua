if mods[shattered_mods] then
    local helium_mods = "helium"
    local liquid_nitrogen_shattered = "ske_liquid_nitrogen"
    local speed_module_3_shattered = "speed-module-3-shattered"
    local efficiency_module_3_shattered = "efficiency-module-3-shattered"
    local productivity_module_3_shattered = "productivity-module-3-shattered"
    local promethium_ore_shattered = "ske_promethium_ore"
    local replacements =
    {
		[americium_241_angels] = americium_241_shattered,
        [curium_245_angels] = curium_245_shattered,
        [thorium_232_bob] = thorium_shattered,
        [argon_mods] = argon_gas,
        [helium_mods] = helium_vesta,
        [nitrogen_mods] = nitrogen_angels,
        [liquid_nitrogen_shattered] = nitrogen_liquid,
        [speed_module_3_shattered] = speed_module_8,
        [efficiency_module_3_shattered] = efficiency_module_8,
        [productivity_module_3_shattered] = productivity_module_8,
	}
    --[[if mods[moshine_mods] then
        replacements[promethium_ore_shattered] = promethium_ore
    end]]
    TIMSABA.functions.delete_duplicate_item_and_fluid(replacements)

    local mod_items =
	{
		americium_241_angels,
		curium_245_angels,
		thorium_232_bob
	}
	for _, name in ipairs(mod_items) do
		data_item[name] = nil
		data_recipe[name .. _recycling] = nil
		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
	end

    data_fluid[argon_mods] = nil
    data_fluid[helium_mods] = nil

    local mod_modules =
	{
		speed_module_3_shattered,
		efficiency_module_3_shattered,
		productivity_module_3_shattered
	}
	for _, name in ipairs(mod_modules) do
		data_module[name] = nil
		data_recipe[name .. _recycling] = nil
		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
	end

    data_recipe["ske_speed_module_3"] = nil
    data_recipe["ske_efficiency_module_3"] = nil
    data_recipe["ske_production_module_3"] = nil

    data_technology["s1_shattered_modules"] = nil
end