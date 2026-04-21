local technology = "technology"
local change_recipe_productivity = "change-recipe-productivity"
tech_advanced_asteroid_processing = "advanced-asteroid-processing"
advanced_thruster_fuel = "advanced-thruster-fuel"
advanced_thruster_oxidizer = "advanced-thruster-oxidizer"

full_asteroid_processing = "full-asteroid-processing"
full_asteroid_productivity = "full-asteroid-productivity"
data:extend
({
    {
        type = technology,
        name = full_asteroid_processing,
        icon = data_technology[tech_advanced_asteroid_processing].icon,
        icon_size = 256,
        prerequisites = {electromagnetic_science_pack, agricultural_science_pack, metallurgic_science_pack, cryogenic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_1},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_2},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_3},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_4},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_5},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_6},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_7},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_8},
            {type = unlock_recipe, recipe = full_metallic_asteroid_crushing_9},
            {type = unlock_recipe, recipe = full_oxide_asteroid_crushing_1},
            {type = unlock_recipe, recipe = full_oxide_asteroid_crushing_2},
            {type = unlock_recipe, recipe = lithium_space},
            {type = unlock_recipe, recipe = fluoroketone_liquid},
            {type = unlock_recipe, recipe = oxygen_fluoride_space},
            {type = unlock_recipe, recipe = advanced_thruster_fuel},
            {type = unlock_recipe, recipe = advanced_thruster_oxidizer},
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
                {electromagnetic_science_pack, 1},
                {agricultural_science_pack, 1},
                {metallurgic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 120
        }
    },
    {
        type = technology,
        name = full_asteroid_productivity,
        icons = util.technology_icon_constant_productivity("__space-age__/graphics/technology/asteroid-productivity.png"),
        prerequisites = {full_asteroid_processing},
        effects =
        {
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_1, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_2, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_3, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_4, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_5, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_6, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_7, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_8, change = 0.1},
            {type = change_recipe_productivity, recipe = full_metallic_asteroid_crushing_9, change = 0.1},
            {type = change_recipe_productivity, recipe = full_oxide_asteroid_crushing_1, change = 0.1},
            {type = change_recipe_productivity, recipe = full_oxide_asteroid_crushing_2, change = 0.1},
        },
        unit =
        {
            count_formula = "1.5^L*1000",
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {agricultural_science_pack, 1},
                {metallurgic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 60
        },
        max_level = 30,
        upgrade = true
    }
})
