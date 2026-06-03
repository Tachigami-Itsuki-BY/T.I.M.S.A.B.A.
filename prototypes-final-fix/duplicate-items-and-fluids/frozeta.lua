if mods [secretas_frozeta_mods] then
    local replacements =
    {
        [gold_ore_mods] = gold_ore_bob,
        [gold_plate_mods] = gold_plate_bob,
        [speed_module_4_S] = speed_module_5,
        [efficiency_module_4_S] = efficiency_module_5,
        [productivity_module_4_S] = productivity_module_5,
        [quality_module_4_S] = quality_module_5
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
    for _, achievement in pairs(data.raw["produce-per-hour-achievement"] or {}) do
        if achievement.item_product then
            local replace = replacements[achievement.item_product]
            if replace then
                achievement.item_product = replace
            end
        end
    end
    for _, achievement in pairs(data.raw["produce-achievement"] or {}) do
        if achievement.item_product then
            local replace = replacements[achievement.item_product]
            if replace then
                achievement.item_product = replace
            end
        end
    end

    data_tile["gold-path"] = nil

    data_technology["module-finale"] = nil

    data_recipe["speed-module-4-S-recycling"] = nil
    data_module[speed_module_4_S] = nil
    data_recipe[speed_module_4_S] = nil

    data_recipe["efficiency-module-4-S-recycling"] = nil
    data_module[efficiency_module_4_S] = nil
    data_recipe[efficiency_module_4_S] = nil

    data_recipe["productivity-module-4-S-recycling"] = nil
    data_module[productivity_module_4_S] = nil
    data_recipe[productivity_module_4_S] = nil

    data_recipe["quality-module-4-S-recycling"] = nil
    data_module[quality_module_4_S] = nil
    data_recipe[quality_module_4_S] = nil

    data_technology["gold-plate-productivity"] = nil

    local hyper_inserter = "hyper-inserter"
    data_item[hyper_inserter] = nil
    data_recipe[hyper_inserter] = nil
    data_recipe[hyper_inserter .. _recycling] = nil
    if mods [panglia_mods] then data_recipe[item_ .. hyper_inserter .. _panglia_crushing] = nil end
    data_inserter[hyper_inserter] = nil
    data_technology[hyper_inserter] = nil

    local gold_heat_pipe = "gold-heat-pipe"
    data_item[gold_heat_pipe] = nil
    data_recipe[gold_heat_pipe] = nil
    data_recipe[gold_heat_pipe .. _recycling] = nil
    if mods [panglia_mods] then data_recipe[item_ .. gold_heat_pipe .. _panglia_crushing] = nil end
    data_heat_pipe[gold_heat_pipe] = nil
    data_technology[gold_heat_pipe] = nil
end