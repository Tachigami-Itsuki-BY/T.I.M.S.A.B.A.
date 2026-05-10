local technology = "technology"
data:extend
({
    {
        localised_name = {"technology-name.battery-4"},
        localised_description = {"technology-description.battery"},
        type = technology,
        name = battery_4,
        icon = "__base__/graphics/technology/battery.png",
        icon_size = 256,
        prerequisites =
        {
            battery_3,
            utility_science_pack,
            tech_potassium_processing,
            tech_coal_processing_4
        },
        effects =
        {
            {type = unlock_recipe, recipe = hydrogen_fluoride_liquefied},
            {type = unlock_recipe, recipe = lithium_hydroxide},
            {type = unlock_recipe, recipe = lithium_fluoride},
            {type = unlock_recipe, recipe = lithium_hexafluorophosphate},
            {type = unlock_recipe, recipe = lithium_hexafluorophosphate_solution_carbonate},
            {type = unlock_recipe, recipe = battery_graphene}
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1}
            },
            time = 30
        }
    }
})

data_technology[electric_energy_accumulators_4].prerequisites =
{
    electric_energy_accumulators_3,
    utility_science_pack,
    battery_4
}