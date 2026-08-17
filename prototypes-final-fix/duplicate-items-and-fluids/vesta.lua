if mods[vesta_mods] then
    local replacements =
    {
        [hydrogen_vesta] = hydrogen_angels,
        [oxygen_vesta] = oxygen_angels,
        [nitrogen_vesta] = nitrogen_angels,
        [carbon_dioxide_vesta] = carbon_dioxide_angels,
        [carbon_monoxide_vesta] = carbon_monoxide_angels,
        [hydrogen_sulfide_vesta] = hydrogen_sulfide_angels,
        [methane_vesta] = methane_angels,
        [deuterium_mods] = deuterium_angels,
		[tritium_mods] = tritium_gas
    }
	TIMSABA.functions.delete_duplicate_item_and_fluid(replacements)

	data_fluid[hydrogen_vesta] = nil
    data_fluid[oxygen_vesta] = nil
    data_fluid[nitrogen_vesta] = nil
    data_fluid[carbon_dioxide_vesta] = nil
    data_fluid[carbon_monoxide_vesta] = nil
    data_fluid[hydrogen_sulfide_vesta] = nil
    data_fluid[methane_vesta] = nil
	data_fluid[deuterium_mods] = nil
	data_fluid[tritium_mods] = nil

	data_recipe["ske-h2o"] = nil
	data_recipe["ske-water-electrolysis"] = nil
	data_recipe["ske_co2_filter_oxygen"] = nil
	data_recipe["nutrients-from-co2"] = nil
	data_recipe["steel-from-iron-algea"] = nil
	data_recipe["ske_crude_solution"] = nil
	data_recipe["ske-processors-from-lithium"] = nil

	local dt_fuel = "ske_dt_fuel"
	data_fluid[dt_fuel] = nil
	data_recipe[dt_fuel] = nil

	local fusion_construction_robot = "fusion-construction-robot"
	local fusion_logistic_robot = "fusion-logistic-robot"
	local mod_items =
	{
		"calcized-iron-plate",
		"calcized-copper-plate",
        "ske_dt_fuel_container",
        "ske_fusion_framework",
        fusion_construction_robot,
        fusion_logistic_robot
	}
	for _, name in ipairs(mod_items) do
		data_item[name] = nil
        data_recipe[name] = nil
		data_recipe[name .. _recycling] = nil
		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
	end
	data_construction_robot[fusion_construction_robot] = nil
	data_logistic_robot[fusion_logistic_robot] = nil

	data_recipe["ske_cf_copper_hyd"] = nil
	data_recipe["ske_cf_copper_oxy"] = nil
	data_recipe["ske_cf_iron_hyd"] = nil
	data_recipe["ske_cf_iron_oxy"] = nil
	data_recipe["ske_cf_steel_hyd"] = nil
	data_recipe["ske_cf_steel_oxy"] = nil
	data_recipe["ske_methane_petro"] = nil

	local magnetic_pipe = "magnetic-pipe"
	local replacements_2 =
	{
        [magnetic_pipe] = magnetic_pipe_vesta
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
	data_recipe[magnetic_pipe] = nil

	local fusion_missile = "fusion-missile"
	data_ammo[fusion_missile] = nil
	data_recipe[fusion_missile] = nil
	data_recipe[fusion_missile .. _recycling] = nil
	if mods[panglia_mods] then
		data_recipe[item_ .. fusion_missile .. _panglia_crushing] = nil
	end
	data_technology[fusion_missile] = nil

	data_technology["s1_algea_discovery"] = nil
	data_technology["s1_iridium"] = nil
	data_technology["s1_cluster_processing"] = nil

	data_technology["s2_fusion_robots"] = nil
	data_technology["s2_intermediate_productivity"] = nil
end