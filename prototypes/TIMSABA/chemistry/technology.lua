tech_magnesium_smelting_1 = "magnesium-smelting-1"
tech_magnesium_smelting_2 = "magnesium-smelting-2"
tech_magnesium_smelting_3 = "magnesium-smelting-3"
tech_powellite_processing_1 = "powellite-processing-1"
tech_powellite_processing_2 = "powellite-processing-2"
local tech_powellite_processing_3 = "powellite-processing-3"
tech_powellite_processing_4 = "powellite-processing-4"
local tech_molybdenite_processing_1 = "molybdenite-processing-1"
local tech_molybdenite_processing_2 = "molybdenite-processing-2"
local tech_molybdenite_processing_3 = "molybdenite-processing-3"
tech_molybdenite_processing_4 = "molybdenite-processing-4"
local tech_molybdenum_smelting_1 = "molybdenum-smelting-1"
local tech_molybdenum_smelting_2 = "molybdenum-smelting-2"
tech_molybdenum_smelting_3 = "molybdenum-smelting-3"
tech_molybdenum_processing = "molybdenum-processing"
tech_molybdenum_synthesis = "molybdenum-synthesis"
local tech_rhenium_smelting_1 = "rhenium-smelting-1"
local tech_rhenium_smelting_2 = "rhenium-smelting-2"
tech_rhenium_smelting_3 = "rhenium-smelting-3"
tech_rhenium_processing = "rhenium-processing"
tech_molybdenum_rhenium_processing = "molybdenum-rhenium-processing"
tech_potassium_processing = "potassium-processing"
tech_boron_processing = "boron-processing"
tech_phosphorus_processing = "phosphorus-processing"
data:extend
({
    -- MAGNESIUM
    {
        localised_name = {"technology-name.magnesium-smelting-1"},
        localised_description = {"technology-description.magnesium-smelting-1"},
        type = technology,
        name = tech_magnesium_smelting_1,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/technology/smelting-magnesium-tech.png",
        icon_size = 256,
        prerequisites = {tech_metallurgy_1, tech_coal_processing_1, tech_ore_advanced_crushing},
        effects =
        {
            {type = unlock_recipe, recipe = magnesium_oxide},
            {type = unlock_recipe, recipe = magnesium_gas},
            {type = unlock_recipe, recipe = magnesium_ingot},
            {type = unlock_recipe, recipe = magnesium_molten}
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                {automation_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.magnesium-smelting-2"},
        localised_description = {"technology-description.magnesium-smelting-2"},
        type = technology,
        name = tech_magnesium_smelting_2,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/technology/smelting-magnesium-tech.png",
        icon_size = 256,
        prerequisites = {tech_magnesium_smelting_1, tech_ore_processing_1, tech_powder_metallurgy_2},
        effects =
        {
            {type = unlock_recipe, recipe = magnesium_processed},
            {type = unlock_recipe, recipe = magnesium_oxide_2},
            {type = unlock_recipe, recipe = magnesium_powder}
        },
        unit =
        {
            count = 150,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.magnesium-smelting-3"},
        localised_description = {"technology-description.magnesium-smelting-3"},
        type = technology,
        name = tech_magnesium_smelting_3,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/magnesium/technology/smelting-magnesium-tech.png",
        icon_size = 256,
        prerequisites = {tech_magnesium_smelting_2, tech_sulfur_processing_1, tech_ore_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = magnesium_pellet},
            {type = unlock_recipe, recipe = magnesium_chloride},
            {type = unlock_recipe, recipe = magnesium_chloride_gas},
            {type = unlock_recipe, recipe = magnesium_gas_from_magnesium_chloride_gas}
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1}
            },
            time = 30
        }
    },
    -- POWELLITE
    {
        localised_name = {"technology-name.powellite-processing-1"},
        localised_description = {"technology-description.powellite-processing-1"},
        type = technology,
        name = tech_powellite_processing_1,
        icon = "__TIMSABA__/graphics/icons/angels/resource/powellite/technology/powellite-processing.png",
        icon_size = 256,
        prerequisites = {tech_ore_crushing},
        effects =
        {
            {type = unlock_recipe, recipe = powellite_crushed},
            {type = unlock_recipe, recipe = powellite_crushed_sorting}
        },
        unit =
        {
            count = 50,
            ingredients = {{automation_science_pack, 1}},
            time = 30
        }
    },
    {
        localised_name = {"technology-name.powellite-processing-2"},
        localised_description = {"technology-description.powellite-processing-2"},
        type = technology,
        name = tech_powellite_processing_2,
        icon = "__TIMSABA__/graphics/icons/angels/resource/powellite/technology/powellite-processing.png",
        icon_size = 256,
        prerequisites = {tech_ore_floatation, tech_powellite_processing_1, production_science_pack, tech_advanced_ore_refining_3},
        effects =
        {
            {type = unlock_recipe, recipe = powellite_chunks},
            {type = unlock_recipe, recipe = powellite_chunks_sorting}
        },
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
        localised_name = {"technology-name.powellite-processing-3"},
        localised_description = {"technology-description.powellite-processing-3"},
        type = technology,
        name = tech_powellite_processing_3,
        icon = "__TIMSABA__/graphics/icons/angels/resource/powellite/technology/powellite-processing.png",
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_4, tech_powellite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = powellite_crystals},
            {type = unlock_recipe, recipe = powellite_crystals_sorting}
        },
        unit =
        {
            count = 200,
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
        localised_name = {"technology-name.powellite-processing-4"},
        localised_description = {"technology-description.powellite-processing-4"},
        type = technology,
        name = tech_powellite_processing_4,
        icon = "__TIMSABA__/graphics/icons/angels/resource/powellite/technology/powellite-processing.png",
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_5, tech_powellite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = powellite_purified},
            {type = unlock_recipe, recipe = powellite_purified_sorting}
        },
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
    -- MOLYBDENITE
    {
        localised_name = {"technology-name.molybdenite-processing-1"},
        localised_description = {"technology-description.molybdenite-processing-1"},
        type = technology,
        name = tech_molybdenite_processing_1,
        icon = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/technology/molybdenite-processing.png",
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_4},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenite_crushed},
            {type = unlock_recipe, recipe = molybdenite_crushed_sorting}
        },
        unit =
        {
            count = 200,
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
        localised_name = {"technology-name.molybdenite-processing-2"},
        localised_description = {"technology-description.molybdenite-processing-2"},
        type = technology,
        name = tech_molybdenite_processing_2,
        icon = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/technology/molybdenite-processing.png",
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_5, tech_molybdenite_processing_1},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenite_chunks},
            {type = unlock_recipe, recipe = molybdenite_chunks_sorting}
        },
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
        localised_name = {"technology-name.molybdenite-processing-3"},
        localised_description = {"technology-description.molybdenite-processing-3"},
        type = technology,
        name = tech_molybdenite_processing_3,
        icon = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/technology/molybdenite-processing.png",
        icon_size = 256,
        prerequisites = {tech_advanced_ore_refining_6, tech_molybdenite_processing_2},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenite_crystals},
            {type = unlock_recipe, recipe = molybdenite_crystals_sorting}
        },
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        localised_name = {"technology-name.molybdenite-processing-4"},
        localised_description = {"technology-description.molybdenite-processing-4"},
        type = technology,
        name = tech_molybdenite_processing_4,
        icon = "__TIMSABA__/graphics/icons/angels/resource/molybdenite/technology/molybdenite-processing.png",
        icon_size = 256,
        prerequisites = {cryogenic_science_pack, tech_molybdenite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenite_purified},
            {type = unlock_recipe, recipe = molybdenite_purified_sorting},
            {type = unlock_recipe, recipe = selenium_powder}
        },
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    -- MOLYBDENUM
    {
        localised_name = {"technology-name.molybdenum-smelting-1"},
        type = technology,
        name = tech_molybdenum_smelting_1,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/technology/smelting-molybdenum-technology.png",
        icon_size = 256,
        prerequisites = {tech_molybdenite_processing_1, tech_metallurgy_5},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenum_oxide_VI},
            {type = unlock_recipe, recipe = molybdenum_powder},
            {type = unlock_recipe, recipe = molybdenum_plate}
        },
        unit =
        {
            count = 200,
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
        localised_name = {"technology-name.molybdenum-smelting-2"},
        type = technology,
        name = tech_molybdenum_smelting_2,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/technology/smelting-molybdenum-technology.png",
        icon_size = 256,
        prerequisites = {tech_molybdenum_smelting_1, tech_molybdenite_processing_2, tech_potassium_processing, tech_ore_processing_5},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenum_processed},
            {type = unlock_recipe, recipe = potassium_molybdate},
            {type = unlock_recipe, recipe = molybdenum_chloride_III_solution},
            {type = unlock_recipe, recipe = molybdic_acid},
            {type = unlock_recipe, recipe = molybdenum_oxide_VI_2}
        },
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
        localised_name = {"technology-name.molybdenum-smelting-3"},
        type = technology,
        name = tech_molybdenum_smelting_3,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/technology/smelting-molybdenum-technology.png",
        icon_size = 256,
        prerequisites = {tech_molybdenum_smelting_2, tech_molybdenite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenum_pellet},
            {type = unlock_recipe, recipe = molybdenum_fluoride_IV},
            {type = unlock_recipe, recipe = molybdenum_powder_2}
        },
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_molybdenum_processing,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/technology/molybdenum-processing.png",
        icon_size = 256,
        prerequisites = {tech_molybdenum_smelting_1},
        effects = {{type = unlock_recipe, recipe = molybdenum_gear_wheel}},
        research_trigger =
        {
            type = craft_item,
            item = molybdenum_plate,
            count = 256
        }
    },
    {
        type = technology,
        name = tech_molybdenum_synthesis,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/technology/molybdenum-synthesis.png",
        icon_size = 256,
        prerequisites = {cryogenic_science_pack, tech_molybdenite_processing_4, tech_molybdenum_smelting_3, tech_powellite_processing_4},
        effects = {{type = unlock_recipe, recipe = molybdenum_ore_recipe}},
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    -- RHENIUM
    {
        localised_name = {"technology-name.rhenium-smelting-1"},
        type = technology,
        name = tech_rhenium_smelting_1,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/technology/smelting-rhenium-technology.png",
        icon_size = 256,
        prerequisites = {tech_molybdenite_processing_1, tech_metallurgy_5},
        effects =
        {
            {type = unlock_recipe, recipe = rhenium_oxide_VI},
            {type = unlock_recipe, recipe = rhenium_powder},
            {type = unlock_recipe, recipe = rhenium_plate}
        },
        unit =
        {
            count = 200,
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
        localised_name = {"technology-name.rhenium-smelting-2"},
        type = technology,
        name = tech_rhenium_smelting_2,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/technology/smelting-rhenium-technology.png",
        icon_size = 256,
        prerequisites = {tech_rhenium_smelting_1, tech_molybdenite_processing_2, tech_potassium_processing, tech_ore_processing_5},
        effects =
        {
            {type = unlock_recipe, recipe = rhenium_processed},
            {type = unlock_recipe, recipe = rhenium_chloride_V},
            {type = unlock_recipe, recipe = rhenium_oxide_IV},
            {type = unlock_recipe, recipe = rhenium_oxide_VI_2},
            {type = unlock_recipe, recipe = potassium_perrhenate},
            {type = unlock_recipe, recipe = rhenium_powder_2}
        },
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
        localised_name = {"technology-name.rhenium-smelting-3"},
        type = technology,
        name = tech_rhenium_smelting_3,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/technology/smelting-rhenium-technology.png",
        icon_size = 256,
        prerequisites = {tech_rhenium_smelting_2, tech_molybdenite_processing_3},
        effects =
        {
            {type = unlock_recipe, recipe = rhenium_pellet},
            {type = unlock_recipe, recipe = rhenium_acid},
            {type = unlock_recipe, recipe = ammonium_perrhenate},
            {type = unlock_recipe, recipe = rhenium_powder_3}
        },
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
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = tech_rhenium_processing,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/technology/rhenium-processing.png",
        icon_size = 256,
        prerequisites = {tech_rhenium_smelting_1},
        effects =
        {
            {type = unlock_recipe, recipe = rhenium_bearing_ball},
            {type = unlock_recipe, recipe = rhenium_bearing}
        },
        research_trigger =
        {
            type = craft_item,
            item = rhenium_plate,
            count = 256
        }
    },
    -- MOLYBDENUM and RHENIUM
    {
        type = technology,
        name = tech_molybdenum_rhenium_processing,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/technology/molybdenum-rhenium-processing.png",
        icon_size = 256,
        prerequisites = {tech_molybdenum_smelting_1, tech_rhenium_smelting_1, tech_powder_metallurgy_5},
        effects =
        {
            {type = unlock_recipe, recipe = molybdenum_rhenium_powder_mixture},
            {type = unlock_recipe, recipe = molybdenum_rhenium_plate},
            {type = unlock_recipe, recipe = molybdenum_rhenium_pipe},
            {type = unlock_recipe, recipe = molybdenum_rhenium_pipe_to_ground}
        },
        unit =
        {
            count = 200,
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
    -- POTASSIUM
    {
        type = technology,
        name = tech_potassium_processing,
        icons = TIMSABA.functions.create_gas_tech_icon("KKK"),
        prerequisites = {tech_water_treatment_4},
        effects =
        {
            {type = unlock_recipe, recipe = carnallite},
            {type = unlock_recipe, recipe = carnallite_reprocessing},
            {type = unlock_recipe, recipe = potassium_chloride_solution},
            {type = unlock_recipe, recipe = potassium_chloride_solution_2},
            {type = unlock_recipe, recipe = potassium_hydroxide},
            {type = unlock_recipe, recipe = potassium_hydroxide_solution},
            {type = unlock_recipe, recipe = potassium_hypochlorite_solution},
            {type = unlock_recipe, recipe = potassium_chlorate},
            {type = unlock_recipe, recipe = potassium_chlorate_solution},
            {type = unlock_recipe, recipe = potassium_permanganate}
        },
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
    -- BORON
    {
        type = technology,
        name = tech_boron_processing,
        icons = TIMSABA.functions.create_gas_tech_icon("BBB"),
        prerequisites = {tech_advanced_ore_refining_2},
        effects =
        {
            {type = unlock_recipe, recipe = borax_recipe},
            {type = unlock_recipe, recipe = boric_acid_solution},
            {type = unlock_recipe, recipe = boric_acid_from_diborane_gas},
            {type = unlock_recipe, recipe = boric_acid_from_hydrochloric_acid}
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1}
            },
            time = 30
        }
    },
    -- PHOSPHORUS
    {
        type = technology,
        name = tech_phosphorus_processing,
        icons = TIMSABA.functions.create_gas_tech_icon("PPP"),
        prerequisites = {tech_advanced_ore_refining_3, tech_metallurgy_4},
        effects =
        {
            {type = unlock_recipe, recipe = fluorapatite_recipe},
            {type = unlock_recipe, recipe = white_phosphorus_gas},
            {type = unlock_recipe, recipe = white_phosphorus},
            {type = unlock_recipe, recipe = phosphorus_chloride_III_liquid},
            {type = unlock_recipe, recipe = phosphorus_chloride_V},
            {type = unlock_recipe, recipe = phosphorus_fluoride_V_gas},
            {type = unlock_recipe, recipe = metasilicic_acid},
            {type = unlock_recipe, recipe = silicon_oxide_IV_from_metasilicic_acid}
        },
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
    }
})

data_technology[tech_magnesium_smelting_1].prerequisites = {tech_metallurgy_1, tech_coal_processing_1, tech_ore_advanced_crushing, tech_powellite_processing_1}

if settings.startup[setting_flow_control_new].value then
    table.insert(data_technology[tech_molybdenum_rhenium_processing].effects, {type = unlock_recipe, recipe = molybdenum_rhenium_pipe .. _straight})
    table.insert(data_technology[tech_molybdenum_rhenium_processing].effects, {type = unlock_recipe, recipe = molybdenum_rhenium_pipe .. _elbow})
    table.insert(data_technology[tech_molybdenum_rhenium_processing].effects, {type = unlock_recipe, recipe = molybdenum_rhenium_pipe .. _junction})
end