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

if mods[muluna_mods] and not mods[lignumis_mods] then
    lumber_mill_recipe_category = "lumber-mill-recipe-category"
    data:extend({{type = recipe_category, name = lumber_mill_recipe_category}})
end

--[[local data_recipe_category = data.raw["recipe-category"]
if not data_recipe_category[hand_crafting] then
    data:extend({{type = recipe_category, name = hand_crafting}})

    for _, character in pairs(data.raw["character"]) do
        if character.crafting_categories then
            local has_category = false

            for _, cat in ipairs(character.crafting_categories) do
                if cat == hand_crafting then
                    has_category = true
                    break
                end
            end

            if not has_category then
                table.insert(character.crafting_categories, hand_crafting)
            end
        end
    end
end]]