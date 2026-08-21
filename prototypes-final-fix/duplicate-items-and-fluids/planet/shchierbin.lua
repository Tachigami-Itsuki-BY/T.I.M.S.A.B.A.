if mods[shchierbin_mods] then
    local replacements =
    {
        [salt_mods] = salt_angels,
        [quicklime_mods] = lime_angels,
        [slaked_lime_mods] = calcium_hydroxide,
        [calcium_mods] = calcium,
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
    TIMSABA.functions.delete_duplicate_item_and_fluid(replacements)

    local vanadium_concetrate = "vanadium-concetrate"
    local vanadium_dust = "vanadium-dust"
    local ferrovanadium = "ferrovanadium"
    local vanadium_oxide_catalyst = "vanadium-oxide-catalyst"
    local vanadium_lithium_battery = "vanadium-lithium-battery"
    local accumulator_vanad = "accumulator-vanad"
	local mod_items =
	{
        quicklime_mods,
        slaked_lime_mods,
        calcium_mods,
        vanadium_concetrate,
        vanadium_dust,
        ferrovanadium,
        vanadium_oxide_catalyst,
        vanadium_lithium_battery,
        accumulator_vanad
	}
	for _, name in ipairs(mod_items) do
		data_item[name] = nil
        if name ~= slaked_lime_mods and name ~= calcium_mods then
            data_recipe[name] = nil
        end
		data_recipe[name .. _recycling] = nil
		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
        if name == accumulator_vanad then
            data_accumulator[name] = nil
        end
        if data_technology[name] then
            data_technology[name] = nil
        end
	end

	data_fluid[natural_gas_mods] = nil

	data_fluid[methane_mods] = nil

	data_fluid[chloromethane_mods] = nil

	data_fluid[ethylene_mods] = nil

	data_fluid[sea_water_mods] = nil

	data_fluid[sodium_hydroxide_mods] = nil

	data_fluid[ferric_chloride_mods] = nil
    data_recipe[ferric_chloride_mods] = nil
    data_technology[ferric_chloride_mods] = nil

	data_fluid[chlorine_mods] = nil

    data_recipe["natural-gas-processing"] = nil
    data_recipe["fecl-advanced-circuit"] = nil
    data_recipe["water-electrolysis-shchierbin"] = nil
    local atmosphere = "atmosphere"
    data_recipe[atmosphere] = nil
    data_recipe[atmosphere .. "-goj"] = nil
    local tech_ammonia_syntes = "ammonia-syntes"
    data_recipe[tech_ammonia_syntes] = nil
    data_technology[tech_ammonia_syntes] = nil
    data_recipe["sulfur-dioxide-from-hydrogen-sulfide"] = nil
    data_recipe["sulfur-dioxide-from-sulfur"] = nil
    data_recipe["sulfur-from-sulfuric-gases"] = nil
    data_recipe["sulfuric-acid-vanadium"] = nil

    -- Проходим по всем типам прототипов в data.raw
    for proto_type, prototypes in pairs(data.raw) do
        if type(prototypes) == "table" then
            for name, _ in pairs(prototypes) do
                -- Проверяем, содержит ли имя строки "gas-ballon"
                if string.find(name, "gas-ballon", 1, true) then
                    -- Удаляем предмет, рецепт или другой прототип
                    data.raw[proto_type][name] = nil
                end
            end
        end
    end

    data_recipe["metallic-asteroid-crushing-2"] = nil
    data_recipe["carbonic-asteroid-crushing-2"] = nil
    data_recipe["oxide-asteroid-crushing-2"] = nil

    data_technology[vanadium_oxide_V] = nil
    data_technology[vanadium_plate] = nil

    data_technology["water-electrolysis"] = nil
    data_technology[atmosphere .. _processing] = nil
    data_technology["sulfur-acid" .. _processing] = nil
	data_technology["vanadium-bones"] = nil
end