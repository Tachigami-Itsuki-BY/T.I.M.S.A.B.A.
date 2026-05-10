if mods [muluna_mods] then
    casting_aluminium_cable = "casting-aluminum-cable"
    casting_low_density_structure_muluna = "casting-low-density-structure-aluminum"
    table.insert(data_technology[tech_vulcanus_metallurgic].effects, {type = unlock_recipe, recipe = casting_aluminium_cable})
    table.insert(data_technology[tech_vulcanus_metallurgic].effects, {type = unlock_recipe, recipe = casting_low_density_structure_muluna})
end