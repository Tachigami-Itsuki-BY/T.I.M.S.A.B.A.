if settings.startup[setting_dynamic_underground_belts] and settings.startup[setting_dynamic_underground_belts].value then
    -- Belts
    local function cheapen_recipe(recipe_name, base_ingredient_name, plate_name)
        local recipe = data_recipe[recipe_name]
        if not recipe or not recipe.ingredients then return end

        for i = #recipe.ingredients, 1, -1 do
            local ingredient = recipe.ingredients[i]
            local name = ingredient.name or ingredient[1]

            if recipe_name == T0_transport_belt then
                if ingredient.amount then
                    ingredient.amount = math.max(1, math.ceil(ingredient.amount / 2))
                elseif ingredient[2] then
                    ingredient[2] = math.max(1, math.ceil(ingredient[2] / 2))
                end
            elseif name == base_ingredient_name then
            elseif name == plate_name then
                if ingredient.amount then
                    ingredient.amount = math.max(1, math.ceil(ingredient.amount / 2))
                elseif ingredient[2] then
                    ingredient[2] = math.max(1, math.ceil(ingredient[2] / 2))
                end

            else
                if ingredient.amount then
                    ingredient.amount = math.max(1, math.ceil(ingredient.amount / 4))
                elseif ingredient[2] then
                    ingredient[2] = math.max(1, math.ceil(ingredient[2] / 4))
                end
            end
        end
    end

    if data_recipe[T0_transport_belt] then
        cheapen_recipe(T0_transport_belt)
        bobmods.lib.recipe.update_recycling_recipe({T0_transport_belt})
    end

    cheapen_recipe(T1_transport_belt, T0_transport_belt, tin_plate_bob)
    cheapen_recipe(T2_transport_belt, T1_transport_belt, bronze_plate_bob)
    cheapen_recipe(T3_transport_belt, T2_transport_belt, aluminium_plate_bob)
    cheapen_recipe(T4_transport_belt, T3_transport_belt, titanium_plate_bob)
    cheapen_recipe(T5_transport_belt, T4_transport_belt, nitinol_plate_bob)
    cheapen_recipe(vulcanus_transport_belt, T5_transport_belt, molybdenum_rhenium_plate)

    bobmods.lib.recipe.update_recycling_recipe
    ({
        T1_transport_belt,
        T2_transport_belt,
        T3_transport_belt,
        T4_transport_belt,
        T5_transport_belt,
        vulcanus_transport_belt
    })

    -- Underground Belts
    local function cheapen_recipe(recipe_name, base_ingredient_name)
        if not recipe_name then return end

        local recipe = data_recipe[recipe_name]
        if not recipe or not recipe.ingredients then return end

        for i = 1, #recipe.ingredients do
            local ingredient = recipe.ingredients[i]
            local name = ingredient.name or ingredient[1]

            if base_ingredient_name and name == base_ingredient_name then
            else
                if ingredient.amount then
                    ingredient.amount = math.max(1, math.ceil(ingredient.amount / 4))
                elseif ingredient[2] then
                    ingredient[2] = math.max(1, math.ceil(ingredient[2] / 4))
                end
            end
        end
    end

    if data_recipe[T0_underground_belt] then
        cheapen_recipe(T0_underground_belt)
        cheapen_recipe(T1_underground_belt, T0_underground_belt)
        bobmods.lib.recipe.update_recycling_recipe({T0_underground_belt})
    else
        cheapen_recipe(T1_underground_belt)
    end

    cheapen_recipe(T2_underground_belt, T1_underground_belt)
    cheapen_recipe(T3_underground_belt, T2_underground_belt)
    cheapen_recipe(T4_underground_belt, T3_underground_belt)
    cheapen_recipe(T5_underground_belt, T4_underground_belt)
    cheapen_recipe(vulcanus_underground_belt, T5_underground_belt)

    bobmods.lib.recipe.update_recycling_recipe
    ({
        T1_underground_belt,
        T2_underground_belt,
        T3_underground_belt,
        T4_underground_belt,
        T5_underground_belt,
        vulcanus_underground_belt
    })
end