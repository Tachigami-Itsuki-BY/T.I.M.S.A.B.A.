if (mods[muluna_mods] or mods[shchierbin_mods]) and not mods[maraxsis_mods] then
    local replacements = {[maraxsis_air] = compressed_air}
    TIMSABA.functions.delete_duplicate_item_and_fluid(replacements)
    data_fluid[maraxsis_air] = nil
    data_recipe[maraxsis_air] = nil
end

if mods[castra_mods] or mods[corrundum_mods] or mods[shchierbin_mods] then
    data_fluid[hydrogen_sulfide_mods] = nil
end

if mods[corrundum_mods] or mods[shchierbin_mods] then
    data_fluid[sulfur_dioxide_mods] = nil
end

if mods[secretas_frozeta_mods] or mods[nexus_mods] then
    data_item[gold_ore_mods] = nil
    data_recipe[gold_ore_mods.. _recycling] = nil
	if mods[panglia_mods] then
		data_recipe[item_ .. gold_ore_mods.. _panglia_crushing] = nil
	end

    data_item[gold_plate_mods] = nil
    data_recipe[gold_plate_mods.. _recycling] = nil
	if mods[panglia_mods] then
		data_recipe[item_ .. gold_plate_mods.. _panglia_crushing] = nil
	end
end

if mods[maraxsis_mods] or mods[moshine_mods] then
    data_item[sand_mods] = nil
    data_recipe[sand_mods.. _recycling] = nil
    if mods[panglia_mods] then
        data_recipe[item_ .. sand_mods.. _panglia_crushing] = nil
    end
end

if mods[maraxsis_mods] or mods[shchierbin_mods] then
    data_fluid[hydrogen_mods] = nil
end

if mods[maraxsis_mods] or mods[shchierbin_mods] then
    data_item[salt_mods] = nil
    data_recipe[salt_mods] = nil
    data_recipe[salt_mods.. _recycling] = nil
	if mods[panglia_mods] then
		data_recipe[item_ .. salt_mods.. _panglia_crushing] = nil
	end
end

if mods[moshine_mods] or mods[muluna_mods] then
    data_item[silicon_carbide_mods] = nil
    data_recipe[silicon_carbide_mods.. _recycling] = nil
	if mods[panglia_mods] then
		data_recipe[item_ .. silicon_carbide_mods.. _panglia_crushing] = nil
	end
end

if mods[muluna_mods] or mods[corrundum_mods] or mods[shchierbin_mods] then
    data_fluid[carbon_dioxide_mods] = nil
end

if mods[muluna_mods] or mods[maraxsis_mods] or mods[shchierbin_mods] then
    data_fluid[oxygen_mods] = nil
end

if mods[paracelsin_mods] or mods[shchierbin_mods] or mods[shattered_mods] then
    data_fluid[nitrogen_mods] = nil
end

if mods[muluna_mods] then
    -- 1. Полностью вырезаем вольфрам из импорта (как и раньше)
    if Muluna and Muluna.constants and Muluna.constants.cargo_drop_spawn_imports then
        local spawn_imports = Muluna.constants.cargo_drop_spawn_imports
        for i = #spawn_imports, 1, -1 do
            local path = spawn_imports[i]
            if path and string.find(path, "tungsten%-plate") then
                table.remove(spawn_imports, i)
            end
        end
    end

    -- 2. Перенаправляем золото и платину на аналоги Боба/Ангела
    if Muluna and Muluna.constants and Muluna.constants.names then
        if mods[corrundum_mods] then
            Muluna.constants.names[platinum_plate_mods] = platinum_plate
        end
        if mods[secretas_frozeta_mods] then
            Muluna.constants.names[gold_plate_mods] = gold_plate_bob
        end
        if mods[castra_mods] then
            Muluna.constants.names[nickel_plate_mods] = nickel_plate_bob
        end
    end
end