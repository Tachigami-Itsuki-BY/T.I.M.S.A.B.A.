for name, recipe in pairs(data.raw.recipe) do
    if name:find("recycling") then
        recipe.energy_required = 0.25
        local target_item = recipe.main_product 
        or (recipe.ingredients and recipe.ingredients[1] and (recipe.ingredients[1].name or recipe.ingredients[1]))
        or name:gsub("%-recycling", "")
        local new_icons = RECYCLING_IS(recycling_png, target_item)
        if new_icons and #new_icons > 0 then
            recipe.icons = new_icons
            recipe.icon = nil
        end
    end
end

data_recipe["uranium-ore-recycling"].results = {{type = item, name = uranium_ore, amount = 1, probability = 0.25}}
data_recipe["uranium-ore-recycling"].main_product = uranium_ore
data_recipe["uranium-fuel-cell-recycling"].results = {{type = item, name = uranium_235_fuel_cell, amount = 1, probability = 0.25}}
data_recipe["uranium-fuel-cell-recycling"].main_product = uranium_235_fuel_cell