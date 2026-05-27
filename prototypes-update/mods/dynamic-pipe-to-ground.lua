if settings.startup[setting_dynamic_pipe_to_ground] and settings.startup[setting_dynamic_pipe_to_ground].value then
    local function remove_pipe_from_recipe(recipe_name, pipe_ingredient_name)
        local recipe = data_recipe[recipe_name]
        if not recipe or not recipe.ingredients then return end

        for i = #recipe.ingredients, 1, -1 do
            local ingredient = recipe.ingredients[i]
            local name = ingredient.name or ingredient[1]

            if name == pipe_ingredient_name then
                table.remove(recipe.ingredients, i)
                break
            end
        end
    end

    remove_pipe_from_recipe(iron_pipe_to_ground, iron_pipe)
    remove_pipe_from_recipe(copper_pipe_to_ground, copper_pipe)
    remove_pipe_from_recipe(stone_pipe_to_ground, stone_pipe)
    remove_pipe_from_recipe(bronze_pipe_to_ground, bronze_pipe)
    remove_pipe_from_recipe(steel_pipe_to_ground, steel_pipe)
    remove_pipe_from_recipe(plastic_pipe_to_ground, plastic_pipe)
    remove_pipe_from_recipe(brass_pipe_to_ground, brass_pipe)
    remove_pipe_from_recipe(titanium_pipe_to_ground, titanium_pipe)
    remove_pipe_from_recipe(ceramic_pipe_to_ground, ceramic_pipe)
    remove_pipe_from_recipe(tungsten_pipe_to_ground, tungsten_pipe)
    remove_pipe_from_recipe(nitinol_pipe_to_ground, nitinol_pipe)
    remove_pipe_from_recipe(copper_tungsten_pipe_to_ground, copper_tungsten_pipe)
    remove_pipe_from_recipe(molybdenum_rhenium_pipe_to_ground, molybdenum_rhenium_pipe)

    bobmods.lib.recipe.update_recycling_recipe
    ({
        iron_pipe_to_ground,
        copper_pipe_to_ground,
        stone_pipe_to_ground,
        bronze_pipe_to_ground,
        steel_pipe_to_ground,
        plastic_pipe_to_ground,
        brass_pipe_to_ground,
        titanium_pipe_to_ground,
        ceramic_pipe_to_ground,
        tungsten_pipe_to_ground,
        nitinol_pipe_to_ground,
        copper_tungsten_pipe_to_ground,
        molybdenum_rhenium_pipe_to_ground
    })
end