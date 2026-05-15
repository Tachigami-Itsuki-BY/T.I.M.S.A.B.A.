data:extend
({
    -- ANGELS RESOURCE REFINING
    {
        localised_name = {"technology-name.advanced-ore-refining-5"},
        localised_description = {"technology-description.angels-advanced-ore-refining"},
        type = technology,
        name = tech_advanced_ore_refining_5,
        icon = "__angelsrefininggraphics__/graphics/technology/ore-sorting.png",
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_4, space_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = ore_leaching_plant_4},
            {type = unlock_recipe, recipe = ore_refinery_3},
            {type = unlock_recipe, recipe = ore_sorting_facility_6},
            {type = unlock_recipe, recipe = electro_whinning_cell_3}
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
        localised_name = {"technology-name.advanced-ore-refining-6"},
        localised_description = {"technology-description.angels-advanced-ore-refining"},
        type = technology,
        name = tech_advanced_ore_refining_6,
        icon = "__angelsrefininggraphics__/graphics/technology/ore-sorting.png",
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_5, electromagnetic_science_pack, agricultural_science_pack, metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = ore_refinery_4},
            {type = unlock_recipe, recipe = electro_whinning_cell_4}
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
    -- ANGELS METALLURGY CASTING
    {
        localised_name = {"technology-name.stome-smelting-4"},
        localised_description = {"technology-description.angels-stome-smelting"},
        type = technology,
        name = tech_stone_smelting_4,
        icon = data_technology[tech_stone_smelting_1].icon,
        icon_size = data_technology[tech_stone_smelting_1].icon_size,
        prerequisites = {tech_stone_smelting_3, tech_titanium_processing, utility_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = titanium_rod},
            {type = unlock_recipe, recipe = reinforced_titanium_concrete_brick}
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
    },
    {
        localised_name = {"technology-name.stome-smelting-5"},
        localised_description = {"technology-description.angels-stome-smelting"},
        type = technology,
        name = tech_stone_smelting_5,
        icon = data_technology[tech_stone_smelting_1].icon,
        icon_size = data_technology[tech_stone_smelting_1].icon_size,
        prerequisites = {tech_stone_smelting_4, space_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = epoxy_resin_liquid},
            {type = unlock_recipe, recipe = adiponitrile_liquid},
            {type = unlock_recipe, recipe = hexamethylenediamine},
            {type = unlock_recipe, recipe = carbon_concrete_brick}
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
                {utility_science_pack, 1},
                {space_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.stome-smelting-6"},
        localised_description = {"technology-description.angels-stome-smelting"},
        type = technology,
        name = tech_stone_smelting_6,
        icon = data_technology[tech_stone_smelting_1].icon,
        icon_size = data_technology[tech_stone_smelting_1].icon_size,
        prerequisites = {tech_stone_smelting_5, electromagnetic_science_pack, agricultural_science_pack, metallurgic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = refined_concrete_liquid},
            {type = unlock_recipe, recipe = ethylene_glycol_liquid},
            {type = unlock_recipe, recipe = glyoxal_liquid},
            {type = unlock_recipe, recipe = chlorobutane_liquid},
            {type = unlock_recipe, recipe = imidazole_solution},
            {type = unlock_recipe, recipe = imidazole},
            {type = unlock_recipe, recipe = imidazolium_salt},
            {type = unlock_recipe, recipe = hexafluorophosphoric_acid},
            {type = unlock_recipe, recipe = ionic_liquid},
            {type = unlock_recipe, recipe = reinforced_graphene_concrete_brick}
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
if settings.startup[setting_early_sintering_oven].value then
    data:extend
    ({
        {
            localised_name = {"technology-name.powder-metallurgy-6"},
            localised_description = {"technology-description.angels-powder-metallurgy"},
            type = technology,
            name = tech_powder_metallurgy_6,
            icon = "__angelssmeltinggraphics__/graphics/technology/sintering-oven-tech.png",
            icon_size = 256,
            prerequisites = {tech_powder_metallurgy_5, space_science_pack, tech_stone_smelting_5},
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
            localised_name = {"technology-name.powder-metallurgy-6-3"},
            localised_description = {"technology-description.angels-powder-metallurgy"},
            type = technology,
            name = tech_powder_metallurgy_6,
            icon = "__angelssmeltinggraphics__/graphics/technology/sintering-oven-tech.png",
            icon_size = 256,
            prerequisites = {tech_powder_metallurgy_5, space_science_pack, tech_stone_smelting_5},
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
            localised_name = {"technology-name.powder-metallurgy-7-4"},
            localised_description = {"technology-description.angels-powder-metallurgy"},
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
end

data:extend
({
    -- ANGELS WATER TREATMENT
    {
        localised_name = {"technology-name.water-treatment-5"},
        localised_description = {"technology-description.angels-water-treatment"},
        type = technology,
        name = tech_water_treatment_5,
        icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
        icon_size = 256,
        prerequisites = {electric_boiler_3, tech_water_treatment_4, tech_stone_smelting_4},
        effects =
        {
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
                {utility_science_pack, 1}
            },
            time = 15
        }
    },
    {
        localised_name = {"technology-name.water-treatment-6"},
        localised_description = {"technology-description.angels-water-treatment"},
        type = technology,
        name = tech_water_treatment_6,
        icon = "__angelsrefininggraphics__/graphics/technology/water-treatment.png",
        icon_size = 256,
        prerequisites = {tech_water_treatment_5, space_science_pack, tech_stone_smelting_5},
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
                {space_science_pack, 1}
            },
            time = 30
        }
    },
    -- ANGELS PETROCHEM REFINING
    {
        localised_name = {"technology-name.advanced-chemistry-6"},
        localised_description = {"technology-description.angels-advanced-chemistry"},
        type = technology,
        name = tech_advanced_chemistry_6,
        icon = data_technology[tech_advanced_chemistry_5].icon,
        icon_size = data_technology[tech_advanced_chemistry_5].icon_size,
        prerequisites = {tech_advanced_chemistry_5, space_science_pack, tech_stone_smelting_5},
        effects =
        {
            {type = unlock_recipe, recipe = advanced_chemical_plant_4},
            {type = unlock_recipe, recipe = advanced_gas_refinery_4}
        },
        unit =
        {
            count = 50,
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
        localised_name = {"technology-name.coal-processing-4"},
        localised_description = {"technology-description.angels-coal-processing"},
        type = technology,
        name = tech_coal_processing_4,
        icons = TIMSABA.functions.create_gas_tech_icon("CcCcCc"),
        prerequisites = {tech_potassium_processing, tech_coal_processing_3, tech_nitrogen_processing_4},
        effects =
        {
            {type = unlock_recipe, recipe = coal_tar_liquid},
            {type = unlock_recipe, recipe = pitch},
            {type = unlock_recipe, recipe = raw_graphite_block},
            {type = unlock_recipe, recipe = raw_graphite_block_2},
            {type = unlock_recipe, recipe = graphite_block},
            {type = unlock_recipe, recipe = graphite_plate},
            {type = unlock_recipe, recipe = graphite_electrode},
            {type = unlock_recipe, recipe = argon_gas},
            {type = unlock_recipe, recipe = carbon_nanotube},
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
    }
})

table.insert(data_technology[tech_advanced_ore_refining_5].prerequisites, tech_stone_smelting_5)
table.insert(data_technology[tech_stone_smelting_6].prerequisites, tech_advanced_chemistry_6)
table.insert(data_technology[tech_advanced_ore_refining_6].prerequisites, tech_stone_smelting_6)

--[[data:extend
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
})]]