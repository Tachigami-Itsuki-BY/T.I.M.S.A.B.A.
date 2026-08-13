-- MULUNA
if mods[muluna_mods] then
    data_recipe[aluminium_pipe].icons = {{icon = "__TIMSABA__/graphics/icons/muluna/".. aluminium_pipe .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(3, aluminium_pipe, recipe)

    data_recipe[aluminium_pipe_to_ground].icons = {{icon = "__TIMSABA__/graphics/icons/muluna/".. aluminium_pipe_to_ground .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(3, aluminium_pipe_to_ground, recipe)
end

-- PARACELSIN
if mods[paracelsin_mods] then
    data_recipe[galvanized_pipe].icons = {{icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_pipe .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(6, galvanized_pipe, recipe)

    data_recipe[galvanized_pipe_to_ground].icons = {{icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_pipe_to_ground .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(6, galvanized_pipe_to_ground, recipe)

    data_recipe[galvanized_storage_tank].icons = {{icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_storage_tank .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(6, galvanized_storage_tank, recipe)

    data_recipe[galvanized_pump].icons = {{icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_pump .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(6, galvanized_pump, recipe)
end