if mods [hyarion_mods] then
    local replacements =
    {
        [aluminium_hyarion] = aluminium_molten_angels,
        [raw_emerald_hyarion] = raw_emerald_bob,
        [raw_ruby_hyarion] = raw_ruby_bob,
        [raw_sapphire_hyarion] = raw_sapphire_bob,
        [polished_diamond_hyarion] = polished_diamond_bob,
        [polished_emerald_hyarion] = polished_emerald_bob,
        [polished_ruby_hyarion] = polished_ruby_bob,
        [polished_sapphire_hyarion] = polished_sapphire_bob
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

	data_fluid[aluminium_hyarion] = nil
	data_item[raw_emerald_hyarion] = nil
    data_item[raw_ruby_hyarion] = nil
    data_item[raw_sapphire_hyarion] = nil
    data_item[polished_diamond_hyarion] = nil
    data_item[polished_emerald_hyarion] = nil
    data_item[polished_ruby_hyarion] = nil
    data_item[polished_sapphire_hyarion] = nil
end