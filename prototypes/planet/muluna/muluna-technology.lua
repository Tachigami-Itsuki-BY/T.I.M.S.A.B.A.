if mods [muluna_mods] then
    local silicon_processing = "muluna-silicon-processing"
    table.insert(data_technology[silicon_processing].effects, {type = unlock_recipe, recipe = "silicon-solar-panel-mk2"})
    table.insert(data_technology[silicon_processing].effects, {type = unlock_recipe, recipe = "silicon-solar-panel-mk3"})
end