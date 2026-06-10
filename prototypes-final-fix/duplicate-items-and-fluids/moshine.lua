if mods [moshine_mods] then
    local replacements =
    {
		[neodymium_mods] = neodymium_magnet,
        [sand_mods] = sand_angels,
        [glass_mods] = glass_bob,
        [silicon_carbide_mods] = silicon_carbide_bob
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

	data_item[neodymium_mods] = nil
	data_recipe[neodymium_mods .. _recycling] = nil
	if mods [panglia_mods] then
		data_recipe[item_ .. neodymium_mods .. _panglia_crushing] = nil
	end

	data_item[glass_mods] = nil
	data_recipe[glass_mods .. _recycling] = nil
	if mods [panglia_mods] then
		data_recipe[item_ .. glass_mods .. _panglia_crushing] = nil
	end

	data_recipe[silicon_carbide_mods .. _recycling] = nil
	if mods [panglia_mods] then
		data_recipe[item_ .. silicon_carbide_mods .. _panglia_crushing] = nil
	end

	data_recipe["concrete-from-molten-iron-and-sand"] = nil
	data_recipe["petroleum-from-sand-sulfur-steam-carbon"] = nil

	data_technology["moshine-concrete-from-molten-iron-and-sand"] = nil
	data_technology["moshine-petroleum-from-sand-sulfur-steam-carbon"] = nil

	local better_substation = "snouz_better_substation"
	data_item[better_substation] = nil
	data_recipe[better_substation] = nil
	data_recipe[better_substation .. _recycling] = nil
	if mods [panglia_mods] then
		data_recipe[item_ .. better_substation .. _panglia_crushing] = nil
	end
	data_electric_pole[better_substation] = nil
	data_technology[better_substation .. "_tech"] = nil

	local long_stack_inserter = "long-stack-inserter"
	data_item[long_stack_inserter] = nil
	data_recipe[long_stack_inserter] = nil
    data_recipe[long_stack_inserter .. _recycling] = nil
    if mods [panglia_mods] then
		data_recipe[item_ .. long_stack_inserter .. _panglia_crushing] = nil
	end
	data_inserter[long_stack_inserter] = nil
	if mods [panglia_mods] then
		data_inserter[long_stack_inserter .. _panglia_fast_version] = nil
	end
    data_technology[long_stack_inserter] = nil
end