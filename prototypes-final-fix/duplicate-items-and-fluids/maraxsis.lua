if mods [maraxsis_mods] then
    local replacements =
    {
        [salt_mods] = salt_angels,
		[limestone_mods] = limestone_angels,
		[glass_panes_maraxsis] = glass_bob,
		[sand_mods] = sand_angels,
        [water_saline_maraxsis] = water_saline_angels,
        [oxygen_mods] = oxygen_angels,
        [hydrogen_mods] = hydrogen_angels,
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

	if mods [panglia_mods] then
		data_recipe["item-maraxsis-conduit-panglia_crushing"] = nil
	end

	data_recipe["maraxsis-conduit-recycling"] = nil

	data_technology["maraxsis-effect-transmission-2"] = nil

	local conduit_maraxsis = "maraxsis-conduit"
	data_item[conduit_maraxsis] = nil
	data_recipe[conduit_maraxsis] = nil
	data_beacon[conduit_maraxsis] = nil

	data_item[glass_panes_maraxsis] = nil

	data_item[limestone_mods] = nil

	data_fluid[water_saline_maraxsis] = nil
end