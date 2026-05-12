data:extend
({
    -- BOILER
    --[[{
        localised_name = {"technology-name.boiler-6"},
        localised_description = {"technology-description.bob-boiler"},
        type = technology,
        name = boiler_6,
        icon = "__bobpower__/graphics/icons/technology/boiler.png",
        icon_size = 256,
        prerequisites = {boiler_5, space_science_pack},
        effects = {{type = unlock_recipe, recipe = boiler_6}},
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
            time = 30
        }
    },
    -- STEAM ENGINE
    {
        localised_name = {"technology-name.steam-engine-6"},
        localised_description = {"technology-description.bob-steam-engine"},
        type = technology,
        name = steam_engine_6,
        icon = "__bobpower__/graphics/icons/technology/steam-engine.png",
        icon_size = 256,
        prerequisites = {steam_engine_5, space_science_pack},
        effects = {{type = unlock_recipe, recipe = steam_engine_6}},
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
            time = 30
        }
    },]]
    -- STEAM TURBINE
    {
        localised_name = {"technology-name.steam-turbine-4"},
        localised_description = {"technology-description.bob-steam-turbine"},
        type = technology,
        name = steam_turbine_4,
        icon = "__bobpower__/graphics/icons/technology/steam-turbine.png",
        icon_size = 256,
        prerequisites = {steam_turbine_3, space_science_pack},
        effects = {{type = unlock_recipe, recipe = steam_turbine_4}},
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
    -- SOLAR PANELS
    --[[{
        localised_name = {"technology-name.solar-energy-4"},
        localised_description = {"technology-description.solar-energy"},
        type = technology,
        name = solar_energy_4,
        icon = "__base__/graphics/technology/solar-energy.png",
        icon_size = 256,
        prerequisites = {solar_energy_3, utility_science_pack, advanced_processing_unit},
        effects =
        {
            {type = unlock_recipe, recipe = solar_panel_small_4},
            {type = unlock_recipe, recipe = solar_panel_4},
            {type = unlock_recipe, recipe = solar_panel_large_4}
        },
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
    -- ACCUMULATOR
    {
        localised_name = {"technology-name.electric-energy-accumulators-4"},
        localised_description = {"technology-description.electric-energy-accumulators"},
        type = technology,
        name = electric_energy_accumulators_4,
        icon = "__base__/graphics/technology/electric-energy-acumulators.png",
        icon_size = 256,
        prerequisites = {electric_energy_accumulators_3, utility_science_pack},
        effects = {{type = unlock_recipe, recipe = accumulator_4}},
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
    -- ELECTRIC MINING DRILL
    {
        localised_name = {"technology-name.drills-6"},
        type = technology,
        name = drills_6,
        icon = "__base__/graphics/technology/mining-productivity.png",
        icon_size = 256,
        prerequisites = {drills_5, space_science_pack},
        effects = {{type = unlock_recipe, recipe = electric_mining_drill_6}},
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
    },]]
    -- PUMPJACK
    --[[{
        localised_name = {"technology-name.pumpjacks-5"},
        type = technology,
        name = tech_pumpjacks_5,
        icon = "__base__/graphics/technology/oil-gathering.png",
        icon_size = 256,
        prerequisites = {tech_pumpjacks_3, space_science_pack},
        effects = {{type = unlock_recipe, recipe = pumpjack_5}},
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
        },
    },
    {
        localised_name = {"technology-name.pumpjacks-6"},
        type = technology,
        name = tech_pumpjacks_6,
        icon = "__base__/graphics/technology/oil-gathering.png",
        icon_size = 256,
        prerequisites = {tech_pumpjacks_5, electromagnetic_science_pack, agricultural_science_pack, metallurgic_science_pack},
        effects = {{type = unlock_recipe, recipe = pumpjack_6}},
        unit =
        {
            count = 350,
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
    },]]
    -- REACTOR
    --[[{
        localised_name = {"technology-name.fusion-power-2"},
        type = technology,
        name = tech_fusion_power_2,
        icon = "__base__/graphics/technology/nuclear-power.png",
        icon_size = 256,
        prerequisites = {tech_fusion_power_1, space_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = tritium_reactor},
            {type = unlock_recipe, recipe = advacned_deuterium_fuel_cell_reprocessing},
            {type = unlock_recipe, recipe = tritium_fuel_cell},
            {type = unlock_recipe, recipe = tritium_fuel_cell_reprocessing}
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
                {space_science_pack, 1}
            },
            time = 240
        }
    },
    -- FURNACES
    {
        localised_name = {"technology-name.advanced-material-processing-5"},
        type = technology,
        name = advanced_material_processing_5,
        icon = "__base__/graphics/technology/advanced-material-processing-2.png",
        icon_size = 256,
        prerequisites = {advanced_material_processing_4, space_science_pack},
        effects = {{type = unlock_recipe, recipe = electric_furnace_4}},
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
        localised_name = {"technology-name.multi-porpose-furnace-3"},
        type = technology,
        name = multi_porpose_furnace_3,
        icons =
        {
            {
                icon_size = 256,
                scale = 0.5,
                icon = "__base__/graphics/technology/advanced-material-processing-2.png"
            },
            {
                icon = "__bobassembly__/graphics/icons/technology/chemistry.png",
                icon_size = 64,
                scale = 1,
                shift = {-32, -32}
            },
            {
                icon = "__bobassembly__/graphics/icons/technology/alloy-processing.png",
                icon_size = 128,
                scale = 0.5,
                shift = {32, -32}
            },
        },
        icon_size = 256,
        prerequisites = {multi_porpose_furnace_2, space_science_pack},
        effects = {{type = unlock_recipe, recipe = electric_mixing_furnace_4}},
        unit =
        {
            count = 75,
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
    },]]
    -- CENTRIFUGE
    {
        localised_name = {"technology-name.centrifuge-4"},
        type = technology,
        name = centrifuge_4,
        icon = "__bobassembly__/graphics/icons/technology/centrifuge.png",
        icon_size = 256,
        prerequisites = {centrifuge_3, space_science_pack},
        effects = {{type = unlock_recipe, recipe = centrifuge_4}},
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