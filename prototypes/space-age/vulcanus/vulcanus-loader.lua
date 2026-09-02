if mods[loaders_modernized_integrations] then
    local constants = require("__loaders-modernized__.constants")
    local settings_cache = require("__loaders-modernized__.prototypes.settings-cache")

    local loaders = {}
    loaders["vulcanus-"] =
    {
        subgroup = is_vulcanus_logistic,
        order = z,
        underground_name = vulcanus_underground_belt,
        upgrade_from_tier = "ultimate-",
        tint = util.color("B5FFA135"),
        prerequisite_techs = {vulcanus_transport_belt, T5_loader},
        recipe_data =
        {
            --category = data_recipe[vulcanus_underground_belt].category,
            --surface_conditions = data_recipe[vulcanus_underground_belt].surface_conditions,
            ingredients =
            {
                {type = item, name = molybdenum_gear_wheel, amount = 4},
                {type = item, name = rhenium_bearing, amount = 4},
                {type = item, name = advanced_processing_unit, amount = 4},
                {type = item, name = molybdenum_rhenium_plate, amount = 4},
                {type = item, name = vulcanus_underground_belt, amount = 1},
                {type = item, name = T5_loader, amount = 1}
            },
            --[[stack_ingredients =
            {
                {type = item, name = molybdenum_gear_wheel, amount = 16},
                {type = item, name = rhenium_bearing, amount = 16},
                {type = item, name = advanced_processing_unit, amount = 4},
                {type = item, name = molybdenum_rhenium_plate, amount = 16},
                {type = item, name = vulcanus_underground_belt, amount = 1},
                {type = item, name = T5_loader, amount = 1}
            }]]
        }
    }

    --[[if settings.startup["bobmods-logistics-beltrequireprevious"].value == false then
        for _, loader in pairs(loaders) do
            if loader.recipe_data then
                for _, kind in ipairs({"ingredients", "stack_ingredients"}) do
                    if loader.recipe_data[kind] then
                        for i, ingredient in ipairs(loader.recipe_data[kind]) do
                            if string.find(ingredient.name, "loader") then
                                table.remove(loader.recipe_data[kind], i)
                            end
                        end
                    end
                end
            end
        end
    end]]

    MdrnLoaders.add_loaders(loaders)
end