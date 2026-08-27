if mods[vesta_mods] then
    local replace_prototypes =
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
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	data_fluid[hydrogen_vesta] = nil
    data_fluid[oxygen_vesta] = nil
    data_fluid[nitrogen_vesta] = nil
    data_fluid[carbon_dioxide_vesta] = nil
    data_fluid[carbon_monoxide_vesta] = nil
    data_fluid[hydrogen_sulfide_vesta] = nil
    data_fluid[methane_vesta] = nil
	data_fluid[deuterium_mods] = nil
	data_fluid[tritium_mods] = nil

	local fusion_construction_robot = "fusion-construction-robot"
	local fusion_logistic_robot = "fusion-logistic-robot"
	local delete_prototypes =
	{
		"ske-h2o",
		"ske-water-electrolysis",
		"ske_co2_filter_oxygen",
		"nutrients-from-co2",
		"steel-from-iron-algea",
		"ske_crude_solution",
		"ske-processors-from-lithium",
		"calcized-iron-plate",
		"calcized-copper-plate",
        "ske_dt_fuel_container",
        "ske_fusion_framework",
        fusion_construction_robot,
        fusion_logistic_robot,
		"ske_dt_fuel",
		"ske_cf_copper_hyd",
		"ske_cf_copper_oxy",
		"ske_cf_iron_hyd",
		"ske_cf_iron_oxy",
		"ske_cf_steel_hyd",
		"ske_cf_steel_oxy",
		"ske_methane_petro",
		"fusion-missile",
		"s1_algea_discovery",
		"s1_iridium",
		"s1_cluster_processing",
		"s2_fusion_robots",
		"s2_intermediate_productivity"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)
	data_construction_robot[fusion_construction_robot] = nil
	data_logistic_robot[fusion_logistic_robot] = nil

	local magnetic_pipe = "magnetic-pipe"
	local replacements = {[magnetic_pipe] = magnetic_pipe_vesta}
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
	data_recipe[magnetic_pipe] = nil
end