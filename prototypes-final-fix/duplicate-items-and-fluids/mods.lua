if mods [muluna_mods] or mods [shchierbin_mods] and not mods [maraxsis_mods] then
    data_fluid[atmosphere_maraxsis] = nil
    data_recipe[atmosphere_maraxsis] = nil
end

if mods [castra_mods] or mods [corrundum_mods] or mods[shchierbin_mods] then
    data_fluid[hydrogen_sulfide_mods] = nil
end

if mods [corrundum_mods] or mods [shchierbin_mods] then
    data_fluid[sulfur_dioxide_mods] = nil
end

if mods [secretas_frozeta_mods] or mods [nexus_mods] then
    data_item[gold_ore_mods] = nil
    data_item[gold_plate_mods] = nil
end

if mods [maraxsis_mods] or mods [moshine_mods] then
    data_item[sand_mods] = nil
end

if mods [maraxsis_mods] or mods [shchierbin_mods] then
    data_fluid[hydrogen_mods] = nil
end

if mods [maraxsis_mods] or mods [shchierbin_mods] then
    data_item[salt_mods] = nil
end

if mods [moshine_mods] or mods [muluna_mods] then
    data_item[silicon_carbide_mods] = nil
end

if mods [muluna_mods] or mods [corrundum_mods] or mods [shchierbin_mods] then
    data_fluid[carbon_dioxide_mods] = nil
end

if mods [muluna_mods] or mods [maraxsis_mods] or mods [shchierbin_mods] then
    data_fluid[oxygen_mods] = nil
end

if mods [paracelsin_mods] or mods [shchierbin_mods] then
    data_fluid[nitrogen_mods] = nil
end