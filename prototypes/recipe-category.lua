local recipe_category = "recipe-category"
centrifuging_4 = "centrifuging-4"
ore_sorting_6 = "ore-sorting-6"
powderizing_4 = "powderizing-4"
sintering_6 = "sintering-6"
extract_ground = "extract-ground"
data:extend
({
    {type = recipe_category, name = centrifuging_4},
    {type = recipe_category, name = ore_sorting_6},
    {type = recipe_category, name = powderizing_4},
    {type = recipe_category, name = sintering_6},
    {type = recipe_category, name = extract_ground}
})

if mods [muluna_mods] then
    lumber_mill_recipe_category = "lumber-mill-recipe-category"
    data:extend({{type = recipe_category, name = lumber_mill_recipe_category}})
end