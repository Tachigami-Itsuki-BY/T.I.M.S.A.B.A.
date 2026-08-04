if mods[shattered_mods] then
    local replacements_2 =
    {
		[americium_241_angels] = americium_241_shattered,
        [curium_245_angels] = curium_245_shattered,
        [thorium_232_bob] = thorium_shattered
	}
    for _, recipe in pairs(data.raw.recipe or {}) do
        for _, ingredient in pairs(recipe.ingredients or {}) do
            local t = ingredient.type or item
            if t == item then
                local replace = replacements_2[ingredient.name]
                if replace then
                    ingredient.name = replace
                end
            end
        end

		local results_have_replacement  = {}
        for _, result in pairs(recipe.results or {}) do
            local t = result.type or item
            if t == item then
                local replace = replacements_2[result.name]
                if replace then
                    result.name = replace
					results_have_replacement[result.name] = true
                end
            end
        end

        if recipe.main_product then
            local replace = replacements_2[recipe.main_product]
            if replace and results_have_replacement[replace] then
                recipe.main_product = replace
            end
        end
    end

    data_recipe["angels-americium-241-recycling"] = nil
    data_item[americium_241_angels] = nil
    data_recipe["angels-curium-245-recycling"] = nil
    data_item[curium_245_angels] = nil
    data_recipe["bob-thorium-232-recycling"] = nil
    data_item[thorium_232_bob] = nil
    data_recipe["angels-thorium-232-recycling"] = nil

    data_fluid[helium_mods] = nil

    data_technology["s1_shattered_modules"] = nil

    data_module["speed-module-3-shattered"] = nil
    data_recipe["ske_speed_module_3"] = nil

    data_module["efficiency-module-3-shattered"] = nil
    data_recipe["ske_efficiency_module_3"] = nil

    data_module["productivity-module-3-shattered"] = nil
    data_recipe["ske_production_module_3"] = nil

    data_recipe["nitrogen"] = nil
end