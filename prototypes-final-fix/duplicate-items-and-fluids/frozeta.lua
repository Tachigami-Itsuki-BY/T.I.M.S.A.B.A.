if mods[secretas_frozeta_mods] then
    local replacements =
    {
        [gold_ore_mods] = gold_ore_bob,
        [gold_plate_mods] = gold_plate_bob,
        [speed_module_4_S] = speed_module_5,
        [efficiency_module_4_S] = efficiency_module_5,
        [productivity_module_4_S] = productivity_module_5,
        [quality_module_4_S] = quality_module_5
    }
    TIMSABA.functions.delete_duplicate_item_and_fluid(replacements)

    local mod_items =
	{
		speed_module_4_S,
		efficiency_module_4_S,
		productivity_module_4_S,
		quality_module_4_S
	}
	for _, name in ipairs(mod_items) do
		data_module[name] = nil
        data_recipe[name] = nil
		data_recipe[name .. _recycling] = nil
		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
	end
    data_technology["module-finale"] = nil

    data_tile["gold-path"] = nil

    data_technology[gold_plate_mods.. _productivity] = nil

    local hyper_inserter = "hyper-inserter"
    data_item[hyper_inserter] = nil
    data_recipe[hyper_inserter] = nil
    data_recipe[hyper_inserter .. _recycling] = nil
    if mods[panglia_mods] then
        data_recipe[item_ .. hyper_inserter .. _panglia_crushing] = nil
    end
    data_inserter[hyper_inserter] = nil
    if mods[panglia_mods] then
        data_inserter[hyper_inserter .. _panglia_fast_version] = nil
    end
    data_technology[hyper_inserter] = nil

    local gold_heat_pipe = "gold-heat-pipe"
    data_item[gold_heat_pipe] = nil
    data_recipe[gold_heat_pipe] = nil
    data_recipe[gold_heat_pipe .. _recycling] = nil
    if mods[panglia_mods] then
        data_recipe[item_ .. gold_heat_pipe .. _panglia_crushing] = nil
    end
    data_heat_pipe[gold_heat_pipe] = nil
    data_technology[gold_heat_pipe] = nil

    local pentapod_egg_unrestricted = "pentapod-egg-unrestricted"
    data_recipe[pentapod_egg_unrestricted] = nil
    data_technology[pentapod_egg_unrestricted] = nil

    local gold_railgun_turret = "gold-railgun-turret"
    data_item[gold_railgun_turret] = nil
    data_recipe[gold_railgun_turret] = nil
    data_ammo_turret[gold_railgun_turret] = nil
    data_technology[gold_railgun_turret] = nil

    data_recipe["gold-plate-alt"] = nil
	data_recipe["golden-egg"] = nil
end