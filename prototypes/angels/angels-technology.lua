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
        localised_name = {"technology-name.stone-smelting-4"},
        localised_description = {"technology-description.angels-stone-smelting"},
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
        localised_name = {"technology-name.stone-smelting-5"},
        localised_description = {"technology-description.angels-stone-smelting"},
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
        localised_name = {"technology-name.stone-smelting-6"},
        localised_description = {"technology-description.angels-stone-smelting"},
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
    },
    -- ANGELS BIOPROCESSING NAUVIS
    -- ARBORETUM
    {
        localised_name = {"", {"technology-name.angels-bio-arboretum"}, " 4"},
        localised_description = {"technology-description.angels-bio-arboretum"},
        type = technology,
        name = tech_bio_arboretum_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-arboretum-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_arboretum_3, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = bio_arboretum_4}},
        unit =
        {
            count = 30,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    -- TREE GENERATOR SEED
    -- TEMPERATE
    {
        localised_name = {"", {"technology-name.angels-bio-arboretum-temperate"}, " 4"},
        localised_description = {"technology-description.angels-bio-arboretum-temperate"},
        type = technology,
        name = tech_bio_arboretum_temperate_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-temperate-generator-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_arboretum_temperate_3, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = bio_generator_t_4}},
        unit =
        {
            count = 200,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    -- SWAMP
    {
        localised_name = {"", {"technology-name.angels-bio-arboretum-swamp"}, " 4"},
        localised_description = {"technology-description.angels-bio-arboretum-swamp"},
        type = technology,
        name = tech_bio_arboretum_swamp_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-swamp-generator-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_arboretum_swamp_3, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = bio_generator_s_4}},
        unit =
        {
            count = 200,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    -- DESERT
    {
        localised_name = {"", {"technology-name.angels-bio-arboretum-desert"}, " 4"},
        localised_description = {"technology-description.angels-bio-arboretum-desert"},
        type = technology,
        name = tech_bio_arboretum_desert_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-desert-generator-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_arboretum_desert_3, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = bio_generator_d_4}},
        unit =
        {
            count = 200,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    -- ANGELS BIOPROCESSING VEGETABLES
    -- BASIC FARM and BIO PROCESSOR
    {
        localised_name = {"", {"technology-name.angels-bio-farm"}, " 3"},
        localised_description = {"technology-description.angels-bio-farm"},
        type = technology,
        name = tech_bio_farm_3,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/base-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_temperate_farming_2, tech_bio_swamp_farming_2, tech_bio_desert_farming_2},
        effects =
        {
            {type = unlock_recipe, recipe = basic_farm_2},
            {type = unlock_recipe, recipe = bio_processor_2}
        },
        unit =
        {
            count = 150,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-farm"}, " 4"},
        localised_description = {"technology-description.angels-bio-farm"},
        type = technology,
        name = tech_bio_farm_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/base-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_farm_3, tech_titanium_processing, tech_stone_smelting_3},
        effects =
        {
            {type = unlock_recipe, recipe = basic_farm_3},
            {type = unlock_recipe, recipe = bio_processor_3}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-farm"}, " 5"},
        localised_description = {"technology-description.angels-bio-farm"},
        type = technology,
        name = tech_bio_farm_5,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/base-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_farm_4, tech_nitinol_processing, tech_stone_smelting_4},
        effects =
        {
            {type = unlock_recipe, recipe = basic_farm_4},
            {type = unlock_recipe, recipe = bio_processor_4}
        },
        unit =
        {
            count = 250,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1}
            },
            time = 30
        }
    },
    -- TEMPERATE FARM
    {
        localised_name = {"", {"technology-name.angels-bio-temperate-farming"}, " 3"},
        localised_description = {"technology-description.angels-bio-temperate-farming"},
        type = technology,
        name = tech_bio_temperate_farming_3,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/temperate-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_farm_3, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = temperate_farm_2}},
        unit =
        {
            count = 100,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 4},
                {logistic_science_pack, 4},
                {chemical_science_pack, 4},
                {production_science_pack, 4}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-temperate-farming"}, " 4"},
        localised_description = {"technology-description.angels-bio-temperate-farming"},
        type = technology,
        name = tech_bio_temperate_farming_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/temperate-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_temperate_farming_3, tech_nitinol_processing, tech_stone_smelting_4},
        effects = {{type = unlock_recipe, recipe = temperate_farm_3}},
        unit =
        {
            count = 150,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 4},
                {logistic_science_pack, 4},
                {chemical_science_pack, 4},
                {production_science_pack, 4},
                {utility_science_pack, 4}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-temperate-farming"}, " 5"},
        localised_description = {"technology-description.angels-bio-temperate-farming"},
        type = technology,
        name = tech_bio_temperate_farming_5,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/temperate-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_temperate_farming_4, tech_stone_smelting_5},
        effects = {{type = unlock_recipe, recipe = temperate_farm_4}},
        unit =
        {
            count = 200,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 4},
                {logistic_science_pack, 4},
                {chemical_science_pack, 4},
                {production_science_pack, 4},
                {utility_science_pack, 4},
                {space_science_pack, 4}
            },
            time = 30
        }
    },
    -- SWAMP FARM
    {
        localised_name = {"", {"technology-name.angels-bio-swamp-farming"}, " 3"},
        localised_description = {"technology-description.angels-bio-swamp-farming"},
        type = technology,
        name = tech_bio_swamp_farming_3,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/swamp-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_farm_3, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = swamp_farm_2}},
        unit =
        {
            count = 100,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 4},
                {logistic_science_pack, 4},
                {chemical_science_pack, 4},
                {production_science_pack, 4}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-swamp-farming"}, " 4"},
        localised_description = {"technology-description.angels-bio-swamp-farming"},
        type = technology,
        name = tech_bio_swamp_farming_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/swamp-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_swamp_farming_3, tech_nitinol_processing, tech_stone_smelting_4},
        effects = {{type = unlock_recipe, recipe = swamp_farm_3}},
        unit =
        {
            count = 150,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 4},
                {logistic_science_pack, 4},
                {chemical_science_pack, 4},
                {production_science_pack, 4},
                {utility_science_pack, 4}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-swamp-farming"}, " 5"},
        localised_description = {"technology-description.angels-bio-swamp-farming"},
        type = technology,
        name = tech_bio_swamp_farming_5,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/swamp-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_swamp_farming_4, tech_stone_smelting_5},
        effects = {{type = unlock_recipe, recipe = swamp_farm_4}},
        unit =
        {
            count = 200,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 4},
                {logistic_science_pack, 4},
                {chemical_science_pack, 4},
                {production_science_pack, 4},
                {utility_science_pack, 4},
                {space_science_pack, 4}
            },
            time = 30
        }
    },
    -- DESERT FARM
    {
        localised_name = {"", {"technology-name.angels-bio-desert-farming"}, " 3"},
        localised_description = {"technology-description.angels-bio-desert-farming"},
        type = technology,
        name = tech_bio_desert_farming_3,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/desert-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_farm_3, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = desert_farm_2}},
        unit =
        {
            count = 100,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 4},
                {logistic_science_pack, 4},
                {chemical_science_pack, 4},
                {production_science_pack, 4}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-desert-farming"}, " 4"},
        localised_description = {"technology-description.angels-bio-desert-farming"},
        type = technology,
        name = tech_bio_desert_farming_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/desert-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_desert_farming_3, tech_nitinol_processing, tech_stone_smelting_4},
        effects = {{type = unlock_recipe, recipe = desert_farm_3}},
        unit =
        {
            count = 150,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 4},
                {logistic_science_pack, 4},
                {chemical_science_pack, 4},
                {production_science_pack, 4},
                {utility_science_pack, 4}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-desert-farming"}, " 5"},
        localised_description = {"technology-description.angels-bio-desert-farming"},
        type = technology,
        name = tech_bio_desert_farming_5,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/desert-farm-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_desert_farming_4, tech_stone_smelting_5},
        effects = {{type = unlock_recipe, recipe = desert_farm_4}},
        unit =
        {
            count = 200,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 4},
                {logistic_science_pack, 4},
                {chemical_science_pack, 4},
                {production_science_pack, 4},
                {utility_science_pack, 4},
                {space_science_pack, 4}
            },
            time = 30
        }
    },
    -- SEED EXTRACTOR
    {
        localised_name = {"", {"technology-name.angels-gardens"}, " 4"},
        localised_description = {"technology-description.angels-gardens"},
        type = technology,
        name = tech_gardens_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/seed-extractor-tech.png", icon_size = 128}},
        prerequisites = {tech_gardens_3, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = seed_extractor_3}},
        unit =
        {
            count = 200,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-gardens"}, " 5"},
        localised_description = {"technology-description.angels-gardens"},
        type = technology,
        name = tech_gardens_5,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/seed-extractor-tech.png", icon_size = 128}},
        prerequisites = {tech_gardens_4, tech_nitinol_processing, tech_stone_smelting_4},
        effects = {{type = unlock_recipe, recipe = seed_extractor_4}},
        unit =
        {
            count = 250,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1}
            },
            time = 30
        }
    },
    -- COMPOSTER
    {
        localised_name = {"", {"technology-name.angels-composting"}, " 2"},
        localised_description = {"technology-description.angels-composting"},
        type = technology,
        name = tech_composting_2,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/fermentation-tech.png", icon_size = 128}},
        prerequisites = {tech_composting_1, tech_steel_processing, tech_stone_smelting_1},
        effects = {{type = unlock_recipe, recipe = composter_2}},
        unit =
        {
            count = 15,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1}
            },
            time = 15
        }
    },
    {
        localised_name = {"", {"technology-name.angels-composting"}, " 3"},
        localised_description = {"technology-description.angels-composting"},
        type = technology,
        name = tech_composting_3,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/fermentation-tech.png", icon_size = 128}},
        prerequisites = {tech_composting_2, tech_brass_processing, tech_stone_smelting_2},
        effects = {{type = unlock_recipe, recipe = composter_3}},
        unit =
        {
            count = 30,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1}
            },
            time = 15
        }
    },
    {
        localised_name = {"", {"technology-name.angels-composting"}, " 4"},
        localised_description = {"technology-description.angels-composting"},
        type = technology,
        name = tech_composting_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/fermentation-tech.png", icon_size = 128}},
        prerequisites = {tech_composting_3, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = composter_4}},
        unit =
        {
            count = 60,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 15
        }
    },
    -- BIO PRESS
    {
        localised_name = {"", {"technology-name.angels-bio-pressing"}, " 3"},
        localised_description = {"technology-description.angels-bio-pressing"},
        type = technology,
        name = tech_bio_pressing_3,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/press-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_pressing_2, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = bio_press_3}},
        unit =
        {
            count = 100,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-pressing"}, " 4"},
        localised_description = {"technology-description.angels-bio-pressing"},
        type = technology,
        name = tech_bio_pressing_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/press-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_pressing_3, tech_nitinol_processing, tech_stone_smelting_4},
        effects = {{type = unlock_recipe, recipe = bio_press_4}},
        unit =
        {
            count = 150,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1}
            },
            time = 30
        }
    },
    -- NUTRIENT EXTRACTOR
    {
        localised_name = {"", {"technology-name.angels-bio-nutrient-paste"}, " 2"},
        localised_description = {"technology-description.angels-bio-nutrient-paste"},
        type = technology,
        name = tech_bio_nutrient_paste_2,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/nutrient-extractor-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_nutrient_paste_1, tech_brass_processing, tech_stone_smelting_2},
        effects = {{type = unlock_recipe, recipe = nutrient_extractor_2}},
        unit =
        {
            count = 50,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-nutrient-paste"}, " 3"},
        localised_description = {"technology-description.angels-bio-nutrient-paste"},
        type = technology,
        name = tech_bio_nutrient_paste_3,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/nutrient-extractor-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_nutrient_paste_2, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = nutrient_extractor_3}},
        unit =
        {
            count = 100,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-nutrient-paste"}, " 4"},
        localised_description = {"technology-description.angels-bio-nutrient-paste"},
        type = technology,
        name = tech_bio_nutrient_paste_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/nutrient-extractor-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_nutrient_paste_3, tech_nitinol_processing, tech_stone_smelting_4},
        effects = {{type = unlock_recipe, recipe = nutrient_extractor_4}},
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
            time = 30
        }
    },
    -- ANGELS BIOPROCESSING ALIEN
    -- FISH REFUGIUM
    {
        localised_name = {"", {"technology-name.angels-bio-refugium-fish"}, " 3"},
        localised_description = {"technology-description.angels-bio-refugium-fish"},
        type = technology,
        name = tech_bio_refugium_fish_3,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-fish-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_fish_2, tech_brass_processing, tech_stone_smelting_2},
        effects = {{type = unlock_recipe, recipe = fish_refugium_2}},
        unit =
        {
            count = 150,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-refugium-fish"}, " 4"},
        localised_description = {"technology-description.angels-bio-refugium-fish"},
        type = technology,
        name = tech_bio_refugium_fish_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-fish-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_fish_3, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = fish_refugium_3}},
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-refugium-fish"}, " 5"},
        localised_description = {"technology-description.angels-bio-refugium-fish"},
        type = technology,
        name = tech_bio_refugium_fish_5,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-fish-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_fish_4, tech_nitinol_processing, tech_stone_smelting_4},
        effects = {{type = unlock_recipe, recipe = fish_refugium_4}},
        unit =
        {
            count = 250,
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
    -- BUTCHERY
    {
        localised_name = {"", {"technology-name.angels-bio-refugium-butchery"}, " 3"},
        localised_description = {"technology-description.angels-bio-refugium-butchery"},
        type = technology,
        name = tech_bio_refugium_butchery_3,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-butchery-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_butchery_2, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = butchery_3}},
        unit =
        {
            count = 150,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-refugium-butchery"}, " 4"},
        localised_description = {"technology-description.angels-bio-refugium-butchery"},
        type = technology,
        name = tech_bio_refugium_butchery_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-butchery-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_butchery_3, tech_nitinol_processing, tech_stone_smelting_4},
        effects = {{type = unlock_recipe, recipe = butchery_4}},
        unit =
        {
            count = 200,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1}
            },
            time = 30
        }
    },
    -- HATCHERY
    {
        localised_name = {"", {"technology-name.angels-bio-refugium-hatchery"}, " 2"},
        localised_description = {"technology-description.angels-bio-refugium-hatchery"},
        type = technology,
        name = tech_bio_refugium_hatchery_2,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-hatchery-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_hatchery_1, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = hatchery_2}},
        unit =
        {
            count = 100,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-refugium-hatchery"}, " 3"},
        localised_description = {"technology-description.angels-bio-refugium-hatchery"},
        type = technology,
        name = tech_bio_refugium_hatchery_3,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-hatchery-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_hatchery_2, tech_nitinol_processing, tech_stone_smelting_4},
        effects = {{type = unlock_recipe, recipe = hatchery_3}},
        unit =
        {
            count = 150,
            ingredients =
            {
                {bio_token, 1},
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
        localised_name = {"", {"technology-name.angels-bio-refugium-hatchery"}, " 4"},
        localised_description = {"technology-description.angels-bio-refugium-hatchery"},
        type = technology,
        name = tech_bio_refugium_hatchery_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-hatchery-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_hatchery_3, tech_stone_smelting_5},
        effects = {{type = unlock_recipe, recipe = hatchery_4}},
        unit =
        {
            count = 200,
            ingredients =
            {
                {bio_token, 1},
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
    -- PUFFER REFUGIUM
    {
        localised_name = {"", {"technology-name.angels-bio-refugium-puffer"}, " 5"},
        localised_description = {"technology-description.angels-bio-refugium-puffer"},
        type = technology,
        name = tech_bio_refugium_puffer_5,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-puffer-breeding-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_puffer_4, tech_titanium_processing, tech_stone_smelting_3},
        effects = {{type = unlock_recipe, recipe = puffer_refugium_2}},
        unit =
        {
            count = 625,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"", {"technology-name.angels-bio-refugium-puffer"}, " 6"},
        localised_description = {"technology-description.angels-bio-refugium-puffer"},
        type = technology,
        name = tech_bio_refugium_puffer_6,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-puffer-breeding-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_puffer_5, tech_nitinol_processing, tech_stone_smelting_4},
        effects = {{type = unlock_recipe, recipe = puffer_refugium_3}},
        unit =
        {
            count = 750,
            ingredients =
            {
                {bio_token, 1},
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
        localised_name = {"", {"technology-name.angels-bio-refugium-puffer"}, " 7"},
        localised_description = {"technology-description.angels-bio-refugium-puffer"},
        type = technology,
        name = tech_bio_refugium_puffer_7,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-puffer-breeding-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_puffer_6, tech_stone_smelting_5},
        effects = {{type = unlock_recipe, recipe = puffer_refugium_4}},
        unit =
        {
            count = 875,
            ingredients =
            {
                {bio_token, 1},
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
    -- BITER REFUGIUM
    {
        localised_name = {"", {"technology-name.angels-bio-refugium-biter"}, " 4"},
        localised_description = {"technology-description.angels-bio-refugium-biter"},
        type = technology,
        name = tech_bio_refugium_biter_4,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-biter-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_biter_3, tech_nitinol_processing, tech_stone_smelting_4},
        effects = {{type = unlock_recipe, recipe = biter_refugium_2}},
        unit =
        {
            count = 625,
            ingredients =
            {
                {bio_token, 1},
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
        localised_name = {"", {"technology-name.angels-bio-refugium-biter"}, " 5"},
        localised_description = {"technology-description.angels-bio-refugium-biter"},
        type = technology,
        name = tech_bio_refugium_biter_5,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-biter-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_biter_4, tech_stone_smelting_5},
        effects = {{type = unlock_recipe, recipe = biter_refugium_3}},
        unit =
        {
            count = 750,
            ingredients =
            {
                {bio_token, 1},
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
        localised_name = {"", {"technology-name.angels-bio-refugium-biter"}, " 6"},
        localised_description = {"technology-description.angels-bio-refugium-biter"},
        type = technology,
        name = tech_bio_refugium_biter_6,
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/technology/bio-refugium-biter-tech.png", icon_size = 128}},
        prerequisites = {tech_bio_refugium_biter_5, tech_stone_smelting_6},
        effects = {{type = unlock_recipe, recipe = biter_refugium_4}},
        unit =
        {
            count = 875,
            ingredients =
            {
                {bio_token, 1},
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    }
})

table.insert(data_technology[tech_advanced_ore_refining_5].prerequisites, tech_stone_smelting_5)
table.insert(data_technology[tech_advanced_ore_refining_6].prerequisites, tech_stone_smelting_6)

table.insert(data_technology[tech_stone_smelting_6].prerequisites, tech_advanced_chemistry_6)