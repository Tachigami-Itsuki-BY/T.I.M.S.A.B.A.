for _, recipe in pairs(data.raw.recipe) do
    recipe.always_show_products = true
    recipe.always_show_made_in = true
end

-- Функция для поиска подгруппы у объекта (предмета/жидкости), чье имя совпадает с рецептом
local function get_item_subgroup(name)
    -- Список актуальных типов прототипов для Factorio 2.0
    local types = {"item", "fluid", "tool", "ammo", "armor", "gun", "capsule", "module", "item-with-entity-data"}

    for _, type_name in ipairs(types) do
        if data.raw[type_name] and data.raw[type_name][name] then
        return data.raw[type_name][name].subgroup
        end
    end
    return nil
end

-- Проходим по всем рецептам Space Age
for recipe_name, recipe in pairs(data.raw.recipe) do
    -- Ищем подгруппу у предмета с точно таким же именем, как у рецепта
    local subgroup = get_item_subgroup(recipe_name)

    -- Если совпадение найдено и у предмета есть подгруппа, копируем её в рецепт
    if subgroup then
        recipe.subgroup = subgroup
    end
end