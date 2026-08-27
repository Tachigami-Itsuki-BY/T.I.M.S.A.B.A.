if (mods[muluna_mods] or mods[shchierbin_mods]) and not mods[maraxsis_mods] then
    local replace_prototypes = {[maraxsis_air] = compressed_air}
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    local delete_prototypes = {maraxsis_air}
    TIMSABA.functions.delete_prototypes(delete_prototypes)
end

if mods[castra_mods] or mods[corrundum_mods] or mods[shchierbin_mods] then
    data_fluid[hydrogen_sulfide_mods] = nil
end

if mods[corrundum_mods] or mods[shchierbin_mods] then
    data_fluid[sulfur_dioxide_mods] = nil
end

if mods[secretas_frozeta_mods] or mods[nexus_mods] then
    local delete_proto = {gold_ore_mods, gold_plate_mods}
    TIMSABA.functions.delete_duplicated_prototypes(delete_proto)
end

if mods[maraxsis_mods] or mods[moshine_mods] then
    local delete_proto = {sand_mods}
    TIMSABA.functions.delete_duplicated_prototypes(delete_proto)
end

if mods[maraxsis_mods] or mods[shchierbin_mods] then
    data_fluid[hydrogen_mods] = nil
end

if mods[maraxsis_mods] or mods[shchierbin_mods] then
    local delete_prototypes = {salt_mods}
    TIMSABA.functions.delete_prototypes(delete_prototypes)
end

if mods[moshine_mods] or mods[muluna_mods] then
    local delete_proto = {silicon_carbide_mods}
    TIMSABA.functions.delete_duplicated_prototypes(delete_proto)
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
    if Muluna and Muluna.constants and Muluna.constants.cargo_drop_spawn_imports then
        local spawn_imports = Muluna.constants.cargo_drop_spawn_imports
        for i = #spawn_imports, 1, -1 do
            local path = spawn_imports[i]
            if path and string.find(path, "tungsten%-plate") then
                table.remove(spawn_imports, i)
            end
        end
    end

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