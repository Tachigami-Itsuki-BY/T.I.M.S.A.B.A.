if mods [clowns_nuclear] and mods [shattered_mods] then
    local replacements =
    {
        [plutonium_239_bob] = plutonium_239_shattered,
        [plutonium_239_mods] = plutonium_239_shattered
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

    data_recipe["bob-plutonium-239-recycling"] = nil
    data_item[plutonium_239_bob] = nil
    data_recipe["plutonium-239-recycling"] = nil
    data_item[plutonium_239_mods] = nil
    data_recipe["angels-plutonium-240-recycling"] = nil
elseif mods [clowns_nuclear] and not mods [shattered_mods] then
    local replacements =
    {
        [plutonium_239_mods] = plutonium_239_bob
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

    data_item[plutonium_239_mods] = nil
elseif not mods [clowns_nuclear] and mods [shattered_mods] then
    local replacements =
    {
        [plutonium_239_bob] = plutonium_239_shattered
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

    data_recipe["bob-plutonium-239-recycling"] = nil
    data_item[plutonium_239_bob] = nil
    data_recipe["angels-plutonium-240-recycling"] = nil
end
