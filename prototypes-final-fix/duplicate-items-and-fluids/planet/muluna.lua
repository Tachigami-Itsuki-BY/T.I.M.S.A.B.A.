if mods[muluna_mods] then
	local sapling_muluna = "muluna-sapling"
    local replace_prototypes =
    {
        [alumina_mods] = aluminium_oxide,
		[aluminium_plate_mods] = aluminium_plate_bob,
        [stone_crushed_mods] = stone_crushed_angels,
        [silicon_carbide_mods] = silicon_carbide_bob,
        [cellulose_mods] = cellulose_fiber_angels,
        [sapling_muluna] = tree_angels,
        [molten_aluminium_mods] = aluminium_molten_angels,
        [oxygen_mods] = oxygen_angels,
        [carbon_dioxide_mods] = carbon_dioxide_angels
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto =
	{
		alumina_mods,
		aluminium_plate_mods,
		stone_crushed_mods,
		cellulose_mods,
		sapling_muluna
	}
	TIMSABA.functions.delete_duplicated_prototypes(delete_proto)

	local delete_prototypes =
	{
		"muluna-gravel",
		"casting-aluminum",
		"oxygen-venting",
		"hydrogen-venting",
		"carbon-dioxide-venting",
		"thruster-fuel-from-rocket-fuel",
		carbon_dioxide_mods,
		"atmosphere-oxygen-separation",
		"muluna-placed-tree",
		molten_aluminium_mods,
		"muluna-gas-venting",
		--"thruster-fuel-productivity",
		"muluna-rocket-buggy",
		"space-chest-muluna",
		"muluna-greenhouse"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)

	local regolith_digging = "muluna-regolith-digging"
	local alumina_crushing = "alumina-crushing"
	local aluminum_crushing = "aluminum-crushing"
	local vacuum_heating = "muluna-vacuum-heating"
	local replacements_2 =
	{
		[regolith_digging] = lunar_regolith,
		[alumina_crushing] = alumina_crushed,
		[aluminum_crushing] = aluminium_plate_crushed,
		[vacuum_heating] = heat
	}
	for _, technology in pairs(data_technology or {}) do
		if technology.effects then
			for _, effect in pairs(technology.effects) do
				if effect.type == unlock_recipe or (effect.type == change_recipe_productivity and effect.recipe == regolith_digging) then
					local replace = replacements_2[effect.recipe]
					if replace then
						effect.recipe = replace
					end
				end
			end
		end
	end
	for _, machine in pairs(data_assembling or {}) do
        if machine.fixed_recipe == regolith_digging then
            machine.fixed_recipe = lunar_regolith
        end
    end
	data_recipe[regolith_digging] = nil
	data_recipe[alumina_crushing] = nil
	data_recipe[aluminum_crushing] = nil
	data_recipe[vacuum_heating] = nil

	data_recipe[copper_cable .. _recycling].surface_conditions = nil
	data_recipe[copper_cable .. _recycling .. "-muluna"] = nil

	data_technology[thruster_fuel].effects = {{type = unlock_recipe, recipe = thruster_fuel}}

	data_technology[carbonic_asteroid_crushing_1].effects =
	{
		{type = unlock_recipe, recipe = carbonic_asteroid_crushing_1},
		{type = unlock_recipe, recipe = electric_engine_unit_from_carbon}
	}

	local tech_space_platform_thruster = "space-platform-thruster"
    data_technology[tech_space_platform_thruster].prerequisites = {rocket_silo}

    data_technology[thruster_oxidizer].prerequisites = {tech_space_platform_thruster, space_platform}

	local tech_fluid_barreling = "fluid-barreling"
	data_technology[tech_fluid_barreling].hidden = true
	data_technology[tech_fluid_barreling].hidden_in_factoriopedia = true
end