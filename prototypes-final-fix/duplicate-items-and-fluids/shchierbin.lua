if mods[shchierbin_mods] then
    local replacements =
    {
        [salt_mods] = salt_angels,
        [quicklime_mods] = lime_angels,
        [natural_gas_mods] = natural_gas_angels,
        [hydrogen_sulfide_mods] = hydrogen_sulfide_angels,
        [sulfur_dioxide_mods] = sulfur_dioxide_angels,
        [methane_mods] = methane_angels,
        [chloromethane_mods] = chloromethane_angels,
        [ethylene_mods] = ethylene_angels,
        [sea_water_mods] = water_saline_angels,
        [sodium_hydroxide_mods] = sodium_hydroxide_solution_angels,
        [ferric_chloride_mods] = iron_chloride_III_solution_angels,
        [chlorine_mods] = chlorine_angels,
        [nitrogen_mods] = nitrogen_angels,
        [hydrogen_mods] = hydrogen_angels,
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

	data_item[quicklime_mods] = nil
	data_fluid[natural_gas_mods] = nil
	data_fluid[methane_mods] = nil
	data_fluid[chloromethane_mods] = nil
	data_fluid[ethylene_mods] = nil
	data_fluid[sea_water_mods] = nil
	data_fluid[sodium_hydroxide_mods] = nil
	data_fluid[ferric_chloride_mods] = nil
	data_fluid[chlorine_mods] = nil

	local vanadium_bones = "vanadium-bones"
	data_technology[vanadium_bones].effects = nil
	data_technology[vanadium_bones] = nil
end