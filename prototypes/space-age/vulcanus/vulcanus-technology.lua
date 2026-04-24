local technology = "technology"
data:extend
({
    {
        type = technology,
        name = "vulcanus-metallurgic",
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/vulcanus-metallurgic.png",
        icon_size = 256,
        prerequisites = {metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = advanced_molten_iron},
            {type = unlock_recipe, recipe = advanced_molten_steel},
            {type = unlock_recipe, recipe = casting_silicon_from_crucible},
            {type = unlock_recipe, recipe = advanced_molten_aluminium},
            {type = unlock_recipe, recipe = advanced_molten_titanium}
        },
        unit =
        {
            count = 3000,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1}
            },
            time = 60
        }
    }
})