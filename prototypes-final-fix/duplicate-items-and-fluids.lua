local Public = {}

function Public.delete_duplicate_item_and_fluid(replacements)
    -- Ingredients and Results(main_product)
    for _, recipe in pairs(data_recipe or {}) do
        for _, ingredient in pairs(recipe.ingredients or {}) do
            local name = ingredient.name or ingredient[1] or ingredient
            local replace = replacements[name]
            if replace then
                if ingredient.name then ingredient.name = replace elseif ingredient[1] then ingredient[1] = replace end
            end
        end

        for _, result in pairs(recipe.results or {}) do
            local name = result.name or result[1] or result
            local replace = replacements[name]
            if replace then
                if result.name then result.name = replace elseif result[1] then result[1] = replace end
            end
        end

        if recipe.main_product then
            local replace = replacements[recipe.main_product]
            if replace then
                recipe.main_product = replace
            end
        end
    end
    -- Tiles
    for _, tile in pairs(data_tile or {}) do
        if tile.fluid then
            local replace = replacements[tile.fluid]
            if replace then
                tile.fluid = replace
            end
        end
    end
    -- Technology
    for _, technology in pairs(data_technology or {}) do
        if technology.research_trigger then
            if technology.research_trigger.item then
                local replace = replacements[technology.research_trigger.item]
                if replace and (data.raw.item[replace] or data.raw.tool[replace]) then
                    technology.research_trigger.item = replace
                end
            end
            if technology.research_trigger.fluid then
                local replace = replacements[technology.research_trigger.fluid]
                if replace and data.raw.fluid[replace] then
                    technology.research_trigger.fluid = replace
                end
            end
        end
    end
    -- Resource
    for _, resource in pairs(data_resource or {}) do
        if resource.minable then
            if resource.minable.result then
                local replace = replacements[resource.minable.result]
                if replace then
                    resource.minable.result = replace
                end
            end
            for _, results in pairs(resource.minable.results or {}) do
                local name = results.name or results[1] or results
                local replace = replacements[name]
                if replace then
                    if results.name then results.name = replace elseif results[1] then results[1] = replace end
                end
            end
        end
    end
    -- Entity / Tree / Plant
    local entities_to_check = {data_entity, data_tree, data_plant}
    for _, entity_table in ipairs(entities_to_check) do
        for _, entity in pairs(entity_table or {}) do
            if entity.minable and entity.minable.results then
                for _, results in pairs(entity.minable.results) do
                    local name = results.name or results[1] or results
                    local replace = replacements[name]
                    if replace then
                        if results.name then results.name = replace elseif results[1] then results[1] = replace end
                    end
                end
            end
        end
    end
    -- Spawner
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
end

return Public