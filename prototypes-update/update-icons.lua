if mods[bobwarfare] then
    data_fluid[nitroglycerin_bob].icons = nil
    data_fluid[nitroglycerin_bob].icon = "__TIMSABA__/graphics/icons/bobs/bob-nitroglycerin.png"
    data_fluid[nitroglycerin_bob].base_color = TIMSABA.functions.fluid_color("C3H5N3O9")
    data_fluid[nitroglycerin_bob].flow_color = TIMSABA.functions.flow_color("C3H5N3O9")
end

data_fluid[liquid_fuel_bob].icons = nil
data_fluid[liquid_fuel_bob].icon = "__TIMSABA__/graphics/icons/bobs/bob-liquid-fuel.png"
data_fluid[liquid_fuel_bob].base_color = {r = 255 / 255, g = 220 / 255, b = 78 / 255}
data_fluid[liquid_fuel_bob].flow_color = {r = 255 / 255, g = 222 / 255, b = 87 / 255}

data_resource[ore_saphirite].icon = data_item[ore_saphirite].icon

if mods[muluna_mods] then
    data_recipe[silicon_solar_panel_small_4].icons = BUILDING_R_IS(solar_panel_small_4, silicon_cell_mods)
    data_recipe[silicon_solar_panel_4].icons = BUILDING_R_IS(solar_panel_4, silicon_cell_mods)
    data_recipe[silicon_solar_panel_large_4].icons = BUILDING_R_IS(solar_panel_large_4, silicon_cell_mods)
end