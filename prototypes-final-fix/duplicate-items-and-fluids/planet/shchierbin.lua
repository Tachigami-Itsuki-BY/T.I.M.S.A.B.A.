if mods[shchierbin_mods] then
    local replace_prototypes =
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
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto = {slaked_lime_mods, calcium_mods}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

    data_fluid[chloromethane_mods] = nil
    data_fluid[ethylene_mods] = nil
    data_fluid[chlorine_mods] = nil

    data_recipe["natural-gas-processing"] = nil

    data_technology[vanadium_oxide_V] = nil
    data_technology[vanadium_plate] = nil

    local delete_prototypes =
	{
		quicklime_mods,
        "vanadium-concetrate",
        "vanadium-dust",
        "ferrovanadium",
        "vanadium-oxide-catalyst",
        "vanadium-lithium-battery",
        "accumulator-vanad",
        natural_gas_mods,
        methane_mods,
        sea_water_mods,
        sodium_hydroxide_mods,
        ferric_chloride_mods,
        "fecl-advanced-circuit",
        "water-electrolysis-shchierbin",
        "atmosphere",
        "atmosphere-goj",
        "atmosphere" .. _processing,
        "ammonia-syntes",
        "sulfur-dioxide-from-hydrogen-sulfide",
        "sulfur-dioxide-from-sulfur",
        "sulfur-from-sulfuric-gases",
        "sulfuric-acid-vanadium",
        "metallic-asteroid-crushing-2",
        "carbonic-asteroid-crushing-2",
        "oxide-asteroid-crushing-2",
        "water-electrolysis",
        "sulfur-acid" .. _processing,
        "vanadium-bones",
        "salt-v"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)

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
end