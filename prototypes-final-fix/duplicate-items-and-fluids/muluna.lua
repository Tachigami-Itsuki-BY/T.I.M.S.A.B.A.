if mods [muluna_mods] then
    local replacements =
    {
        [alumina_mods] = aluminium_oxide,
		[aluminum_plate_mods] = aluminium_plate_bob,
        [stone_crushed_mods] = stone_crushed_angels,
        [silicon_carbide_mods] = silicon_carbide_bob,
        [cellulose_mods] = cellulose_fiber_angels,
        [sapling_muluna] = tree_angels,
        [molten_aluminum_mods] = aluminium_molten_angels,
        [oxygen_mods] = oxygen_angels,
        [carbon_dioxide_mods] = carbon_dioxide_angels
    }
    for _, recipe in pairs(data.raw.recipe or {}) do
        for _, ingredient in pairs(recipe.ingredients or {}) do
            local replace = replacements[ingredient.name]
		    if replace then
                ingredient.name = replace
            end
        end

    	for _, result in pairs(recipe.results or {}) do
	    	local replace = replacements[result.name]
		    if replace then
	    		result.name = replace
	    	end
	    end

        if recipe.main_product then
	    	local replace = replacements[recipe.main_product]
		    if replace then
	    		recipe.main_product = replace
	    	end
        end
    end
    for _, tile in pairs(data.raw.tile or {}) do
	    if tile.fluid then
		    local replace = replacements[tile.fluid]
		    if replace then
		    	tile.fluid = replace
		    end
	    end
    end
    for _, technology in pairs(data.raw.technology or {}) do
	    if technology.research_trigger then
		    local replace = replacements[technology.research_trigger.item]
		    if replace then
		    	technology.research_trigger.item = replace
		    end
	    end
	    if technology.research_trigger then
	    	local replace = replacements[technology.research_trigger.fluid]
	    	if replace then
	    		technology.research_trigger.fluid = replace
	    	end
	    end
    end
    for _, resource in pairs(data.raw.resource or {}) do
	    if resource.minable.result then
		    local replace = replacements[resource.minable.result]
		    if replace then
			    resource.minable.result = replace
		    end
	    end
	    for _, results in pairs(resource.minable.results or {}) do
		    local replace = replacements[results.name]
		    if replace then
			    results.name = replace
		    end
	    end
    end
    for _, entity in pairs(data.raw["simple-entity"] or {}) do
	    if entity.minable then
		    for _, results in pairs(entity.minable.results or {}) do
			    local replace = replacements[results.name]
			    if replace then
				    results.name = replace
			    end
		    end
	    end
    end
    for _, tree in pairs(data.raw.tree or {}) do
	    if tree.minable then
		    for _, results in pairs(tree.minable.results or {}) do
			    local replace = replacements[results.name]
			    if replace then
				    results.name = replace
			    end
		    end
	    end
    end
	for _, spawner in pairs(data.raw["unit-spawner"] or {}) do
		if spawner.loot then
    		for _, entry in pairs(spawner.loot) do
				local new = replacements[entry.item]
				if new then
					entry.item = new
				end
    		end
  		end
	end

	data_tile["muluna-gravel"] = nil
	data_item[alumina_mods] = nil
    data_item[aluminum_plate_mods] = nil
	data_item[stone_crushed_mods] = nil
    data_item[cellulose_mods] = nil
    data_item[sapling_muluna] = nil
	data_plant["muluna-placed-tree"] = nil
    data_fluid[molten_aluminum_mods] = nil
	data_recipe["oxygen-venting"] = nil
	data_recipe["hydrogen-venting"] = nil
	data_recipe["carbon-dioxide-venting"] = nil
	data_technology["muluna-gas-venting"] = nil
	data_recipe["muluna-rocket-buggy-recycling"] = nil

	local muluna_rocket_buggy = "muluna-rocket-buggy"
	data_technology[muluna_rocket_buggy] = nil
	data_item_entity[muluna_rocket_buggy] = nil
    data_recipe[muluna_rocket_buggy] = nil
    data_car[muluna_rocket_buggy] = nil

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
end