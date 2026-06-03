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

	local mod_items =
	{
		alumina_mods,
		aluminium_plate_mods,
		stone_crushed_mods,
		cellulose_mods,
		sapling_muluna
	}
	for _, name in ipairs(mod_items) do
		data_item[name] = nil
		data_recipe[name .. _recycling] = nil

		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
	end

	local mod_recipes =
	{
		"casting-aluminum",
		"oxygen-venting",
		"hydrogen-venting",
		"carbon-dioxide-venting",
		"thruster-fuel-from-rocket-fuel",
		carbon_dioxide_mods,
		"atmosphere-oxygen-separation"
	}
	for _, name in ipairs(mod_recipes) do
		data_recipe[name] = nil
	end

	data_plant["muluna-placed-tree"] = nil

    data_fluid[molten_aluminium_mods] = nil
	data_recipe[molten_aluminium_mods] = nil

	data_technology["muluna-gas-venting"] = nil
	data_technology["thruster-fuel-productivity"] = nil

	local muluna_objects =
	{
		{name = "muluna-rocket-buggy", item_table = data_item_entity, custom_table = data_car,       has_tech = true},
		{name = "space-chest-muluna",  item_table = data_item,        custom_table = data_container, has_tech = true},
		{name = "muluna-greenhouse",   item_table = data_item,        custom_table = nil,            has_tech = false}
	}
	for _, obj in ipairs(muluna_objects) do
		local name = obj.name

		obj.item_table[name] = nil

		data_recipe[name] = nil
		data_recipe[name .. _recycling] = nil

		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end

		if obj.custom_table then
			obj.custom_table[name] = nil
		end

		if obj.has_tech then
			data_technology[name] = nil
		end
	end

	data_technology[thruster_fuel].effects = {{type = unlock_recipe, recipe = thruster_fuel}}

	local carbonic_asteroid_crushing = "carbonic-asteroid-crushing"
	data_technology[carbonic_asteroid_crushing].effects =
	{
		{type = unlock_recipe, recipe = carbonic_asteroid_crushing},
		{type = unlock_recipe, recipe = "electric-engine-unit-from-carbon"}
	}

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

	data_recipe[copper_cable .. _recycling].surface_conditions = nil
	data_recipe[copper_cable .. _recycling .. "-muluna"] = nil

	local tech_space_platform_thruster = "space-platform-thruster"
    data_technology[tech_space_platform_thruster].prerequisites = {rocket_silo}

    data_technology[thruster_oxidizer].prerequisites = {tech_space_platform_thruster, space_platform}

	local tech_fluid_barreling = "fluid-barreling"
	data_technology[tech_fluid_barreling].hidden = true
	data_technology[tech_fluid_barreling].hidden_in_factoriopedia = true
end