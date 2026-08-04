tech_advanced_asteroid_processing = "advanced-asteroid-processing"
tech_full_asteroid_processing = "full-asteroid-processing"
tech_full_asteroid_productivity = "full-asteroid-productivity"
tech_advanced_full_asteroid_processing = "advanced-full-asteroid-processing"
tech_advanced_full_asteroid_productivity = "advanced-full-asteroid-productivity"

advanced_thruster_fuel = "advanced-thruster-fuel"
advanced_thruster_oxidizer = "advanced-thruster-oxidizer"
data:extend
({
    {
        type = technology,
        name = tech_full_asteroid_processing,
        icon = data_technology[tech_advanced_asteroid_processing].icon,
        icon_size = 256,
        prerequisites = {cryogenic_science_pack},
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
            {type = unlock_recipe, recipe = full_oxide_asteroid_crushing_1},
            {type = unlock_recipe, recipe = full_oxide_asteroid_crushing_2},
            {type = unlock_recipe, recipe = lithium_space},
            {type = unlock_recipe, recipe = fluoroketone_liquid},
            {type = unlock_recipe, recipe = oxygen_fluoride_space},
            {type = unlock_recipe, recipe = advanced_thruster_fuel},
            {type = unlock_recipe, recipe = advanced_thruster_oxidizer}
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 120
        }
    },
    {
        localised_name = {"technology-name.full-asteroid-productivity"},
        type = technology,
        name = tech_full_asteroid_productivity,
        icons = util.technology_icon_constant_productivity("__space-age__/graphics/technology/asteroid-productivity.png"),
        prerequisites = {tech_full_asteroid_processing},
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
            {type = change_recipe_productivity, recipe = full_oxide_asteroid_crushing_1, change = 0.1},
            {type = change_recipe_productivity, recipe = full_oxide_asteroid_crushing_2, change = 0.1}
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 60
        },
        max_level = 30,
        upgrade = true
    },
    {
        type = technology,
        name = tech_advanced_full_asteroid_processing,
        icon = data_technology[tech_advanced_asteroid_processing].icon,
        icon_size = 256,
        prerequisites = {tech_full_asteroid_processing, promethium_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_1},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_2},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_3},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_4},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_5},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_6},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_7},
            {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_8}
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 120
        }
    },
    {
        localised_name = {"technology-name.advanced-full-asteroid-productivity"},
        type = technology,
        name = tech_advanced_full_asteroid_productivity,
        icons = util.technology_icon_constant_productivity("__space-age__/graphics/technology/asteroid-productivity.png"),
        prerequisites = {tech_advanced_full_asteroid_processing},
        effects =
        {
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_1, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_2, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_3, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_4, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_5, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_6, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_7, change = 0.1},
            {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_8, change = 0.1}
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 60
        },
        max_level = 30,
        upgrade = true
    }
})