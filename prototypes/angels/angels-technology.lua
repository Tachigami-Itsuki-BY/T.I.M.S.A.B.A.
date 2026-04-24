local technology = "technology"
data:extend
({
    -- ANGELS RESOURCE REFINING
    {
        type = technology,
        name = tech_advanced_ore_refining_5,
        icon = "__angelsrefininggraphics__/graphics/technology/ore-sorting.png",
        icon_size = 256,
        prerequisites = {"angels-advanced-ore-refining-4", space_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = ore_crusher_4},
            {type = unlock_recipe, recipe = ore_floatation_cell_4},
            {type = unlock_recipe, recipe = ore_leaching_plant_4},
            {type = unlock_recipe, recipe = ore_refinery_3},
            --{type = unlock_recipe, recipe = ore_sorting_facility_6},
            {type = unlock_recipe, recipe = powderizer_4},
            --{type = unlock_recipe, recipe = electro_whinning_cell_3},
            {type = unlock_recipe, recipe = filtration_unit_4},
            {type = unlock_recipe, recipe = crystallizer_4},
        },
        unit =
        {
            count = 150,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1}
            },
            time = 15
        }
    },
    {
        type = technology,
        name = tech_advanced_ore_refining_6,
        icon = "__angelsrefininggraphics__/graphics/technology/ore-sorting.png",
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_5, electromagnetic_science_pack, agricultural_science_pack, metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = ore_refinery_4},
            --{type = unlock_recipe, recipe = electro_whinning_cell_4}
        },
        unit =
        {
            count = 300,
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
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    }
})

-- ANGELS METALLURGY CASTING
--[[if settings.startup[setting_early_sintering_oven].value then
    data:extend
    ({
        {
            type = technology,
            name = tech_powder_metallurgy_6,
            icon = "__angelssmeltinggraphics__/graphics/technology/sintering-oven-tech.png",
            icon_size = 256,
            prerequisites = {tech_powder_metallurgy_5, space_science_pack},
            effects = {{type = unlock_recipe, recipe = sintering_oven_6}},
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1}
                },
                time = 30
            }
        }
    })
else
    data:extend
    ({
        {
            type = technology,
            name = tech_powder_metallurgy_6,
            icon = "__angelssmeltinggraphics__/graphics/technology/sintering-oven-tech.png",
            icon_size = 256,
            prerequisites = {tech_powder_metallurgy_5, space_science_pack},
            effects = {{type = unlock_recipe, recipe = sintering_oven_6}},
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1}
                },
                time = 30
            }
        },
        {
            type = technology,
            name = tech_powder_metallurgy_7,
            icon = "__angelssmeltinggraphics__/graphics/technology/sintering-oven-tech.png",
            icon_size = 256,
            prerequisites = {tech_powder_metallurgy_6, electromagnetic_science_pack, agricultural_science_pack, metallurgic_science_pack},
            effects = {{type = unlock_recipe, recipe = sintering_oven_7}},
            unit =
            {
                count = 200,
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
                    {metallurgic_science_pack, 1}
                },
                time = 30
            }
        }
    })
end]]

data:extend
({
    -- ANGELS WATER TREATMENT
    {
        type = technology,
        name = tech_water_treatment_5,
        icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
        icon_size = 256,
        prerequisites = {electric_boiler_3, tech_water_treatment_4, space_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = washing_plant_4},
            {type = unlock_recipe, recipe = salination_plant_3},
            {type = unlock_recipe, recipe = electric_boiler_4}
        },
        unit =
        {
            count = 150,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1}
            },
            time = 15
        }
    },
    {
        type = technology,
        name = tech_water_treatment_6,
        icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
        icon_size = 256,
        prerequisites = {tech_water_treatment_5, electromagnetic_science_pack, agricultural_science_pack, metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = salination_plant_4},
        },
        unit =
        {
            count = 300,
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
                {metallurgic_science_pack, 1}
            },
            time = 30
        }
    },
    -- ANGELS PETROCHEM REFINING
    {
        type = technology,
        name = tech_advanced_chemistry_6,
        icon = "__angelspetrochemgraphics__/graphics/technology/advanced-chemical-plant-tech.png",
        icon_size = 256,
        prerequisites = {tech_advanced_chemistry_5, space_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = advanced_chemical_plant_4},
            {type = unlock_recipe, recipe = "angels-gas-refinery-4"},
        },
        unit =
        {
            count = 150,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1}
            },
            time = 15
        }
    },
    --[[{
        type = technology,
        name = tech_coal_processing_4,
        icons = TIMSABA.functions.create_gas_tech_icon("CcCcCc"),
        prerequisites = {potassium_processing, tech_coal_processing_3, tech_nitrogen_processing_4},
        effects =
        {
            {type = unlock_recipe, recipe = coal_tar_liquid},
            {type = unlock_recipe, recipe = pitch},
            {type = unlock_recipe, recipe = raw_graphite},
            {type = unlock_recipe, recipe = graphite},
            {type = unlock_recipe, recipe = graphene_oxide},
            {type = unlock_recipe, recipe = graphene}
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
            time = 15
        }
    }]]
})

--[[
data:extend
({
    {
        type = ,
        name = ,
        icon = ,
        icon_size = 256,
        prerequisites = {},
        effects = {{type = unlock_recipe, recipe = }},
        unit =
        {
            count = ,
            ingredients = {{, }},
            time = 
        }
    }
})
]]