if mods [muluna_mods] then
	local sapling_muluna = "muluna-sapling"
    local replacements_1 =
    {
        [alumina_mods] = aluminium_oxide,
		[aluminium_plate_mods] = aluminium_plate_bob,
        [stone_crushed_mods] = stone_crushed_angels,
        [silicon_carbide_mods] = silicon_carbide_bob,
        [cellulose_mods] = cellulose_fiber_angels,
        [sapling_muluna] = tree_angels,
        [molten_aluminium_mods] = aluminium_molten_angels,
        [oxygen_mods] = oxygen_angels,
        [carbon_dioxide_mods] = carbon_dioxide_angels,
		[atmosphere_maraxsis] = compressed_air
    }
    for _, recipe in pairs(data.raw.recipe or {}) do
        for _, ingredient in pairs(recipe.ingredients or {}) do
            local replace = replacements_1[ingredient.name]
		    if replace then
                ingredient.name = replace
            end
        end

    	for _, result in pairs(recipe.results or {}) do
	    	local replace = replacements_1[result.name]
		    if replace then
	    		result.name = replace
	    	end
	    end

        if recipe.main_product then
	    	local replace = replacements_1[recipe.main_product]
		    if replace then
	    		recipe.main_product = replace
	    	end
        end
    end
    for _, tile in pairs(data.raw.tile or {}) do
	    if tile.fluid then
		    local replace = replacements_1[tile.fluid]
		    if replace then
		    	tile.fluid = replace
		    end
	    end
    end
    for _, technology in pairs(data.raw.technology or {}) do
	    if technology.research_trigger then
		    local replace = replacements_1[technology.research_trigger.item]
		    if replace then
		    	technology.research_trigger.item = replace
		    end
	    end
	    if technology.research_trigger then
	    	local replace = replacements_1[technology.research_trigger.fluid]
	    	if replace then
	    		technology.research_trigger.fluid = replace
	    	end
	    end
    end
    for _, resource in pairs(data.raw.resource or {}) do
	    if resource.minable.result then
		    local replace = replacements_1[resource.minable.result]
		    if replace then
			    resource.minable.result = replace
		    end
	    end
	    for _, results in pairs(resource.minable.results or {}) do
		    local replace = replacements_1[results.name]
		    if replace then
			    results.name = replace
		    end
	    end
    end
    for _, entity in pairs(data.raw["simple-entity"] or {}) do
	    if entity.minable then
		    for _, results in pairs(entity.minable.results or {}) do
			    local replace = replacements_1[results.name]
			    if replace then
				    results.name = replace
			    end
		    end
	    end
    end
    for _, tree in pairs(data.raw.tree or {}) do
	    if tree.minable then
		    for _, results in pairs(tree.minable.results or {}) do
			    local replace = replacements_1[results.name]
			    if replace then
				    results.name = replace
			    end
		    end
	    end
    end
	for _, spawner in pairs(data.raw["unit-spawner"] or {}) do
		if spawner.loot then
    		for _, entry in pairs(spawner.loot) do
				local new = replacements_1[entry.item]
				if new then
					entry.item = new
				end
    		end
  		end
	end

	data_tile["muluna-gravel"] = nil
	data_item[alumina_mods] = nil
    data_item[aluminium_plate_mods] = nil
	data_recipe["aluminum-plate-recycling"] = nil
	data_item[stone_crushed_mods] = nil
    data_item[cellulose_mods] = nil
    data_item[sapling_muluna] = nil
	data_plant["muluna-placed-tree"] = nil
    data_fluid[molten_aluminium_mods] = nil
	data_recipe[molten_aluminium_mods] = nil
	data_recipe["casting-aluminum"] = nil
	data_recipe["oxygen-venting"] = nil
	data_recipe["hydrogen-venting"] = nil
	data_recipe["carbon-dioxide-venting"] = nil
	data_technology["muluna-gas-venting"] = nil

	local muluna_rocket_buggy = "muluna-rocket-buggy"
	data_technology[muluna_rocket_buggy] = nil
	data_item_entity[muluna_rocket_buggy] = nil
    data_recipe[muluna_rocket_buggy] = nil
    data_car[muluna_rocket_buggy] = nil
	data_recipe["muluna-rocket-buggy-recycling"] = nil

	data_technology[thruster_fuel].effects = {{type = unlock_recipe, recipe = thruster_fuel}}

	data_technology["thruster-fuel-productivity"] = nil

	data_recipe["thruster-fuel-from-rocket-fuel"] = nil

	local carbonic_asteroid_crushing = "carbonic-asteroid-crushing"
	data_technology[carbonic_asteroid_crushing].effects =
	{
		{type = unlock_recipe, recipe = carbonic_asteroid_crushing},
		{type = unlock_recipe, recipe = "electric-engine-unit-from-carbon"}
	}

	data_recipe["stone-crushed-recycling"] = nil
	data_recipe["cellulose-recycling"] = nil
	data_recipe["muluna-sapling-recycling"] = nil

	data_recipe[carbon_dioxide_mods] = nil
	data_recipe["atmosphere-oxygen-separation"] = nil

	local greenhouse = "muluna-greenhouse"
	data_item[greenhouse] = nil
    data_recipe[greenhouse] = nil
	data_recipe["muluna-greenhouse-recycling"] = nil

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
	for _, technology in pairs(data.raw.technology or {}) do
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
	data_recipe[regolith_digging] = nil
	data_recipe[alumina_crushing] = nil
	data_recipe[aluminum_crushing] = nil
	data_recipe[vacuum_heating] = nil

	local replacements_2_productivity =
	{
		[regolith_digging] = lunar_regolith
	}
	for _, technology in pairs(data.raw.technology or {}) do
		if technology.effects then
			for _, effect in pairs(technology.effects) do
				if effect.type == "change-recipe-productivity" then
					local replace = replacements_2_productivity[effect.recipe]
					if replace then
						effect.recipe = replace
					end
				end
			end
		end
	end

	data_recipe["copper-cable-recycling"].surface_conditions = nil
	data_recipe["copper-cable-recycling-muluna"] = nil
end