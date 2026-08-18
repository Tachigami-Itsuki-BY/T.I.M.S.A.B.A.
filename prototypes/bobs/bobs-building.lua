function TIMSABA.numeral_tier(icon_data, tier, tint)
    local icons = angelsmods.functions.add_number_icon_layer({icon_data}, tier, tint)
    return icons
end

-- STEAM POWER
local is_boiler = "bob-energy-boiler"
local is_steam_engine = "bob-energy-steam-engine"
if settings.startup[setting_bobmods_power_steam].value then
    data:extend
    ({
        -- BOILER
        {
            type = item,
            name = boiler_6,
            subgroup = is_boiler,
            icon = "__base__/graphics/icons/boiler.png",
            order = f,
            place_result = boiler_6,
            stack_size = 32,
            weight = 31250
        },
        {
            type = recipe,
            name = boiler_6,
            category = crafting,
            subgroup = is_boiler,
            icon = "__base__/graphics/icons/boiler.png",
            order = f,
            enabled = false,
            auto_recycle = true,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = true,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = molybdenum_rhenium_pipe, amount = 4},
                {type = item, name = molybdenum_rhenium_plate, amount = 4},
                {type = item, name = boiler_5, amount = 1}
            },
            results = {{type = item, name = boiler_6, amount = 1}},
            main_product = boiler_6
        },
        util.merge
        ({
            data_boiler[boiler],
            {
                localised_description = {"entity-description.boiler"},
                name = boiler_6,
                subgroup = is_boiler,
                icon = "__base__/graphics/icons/boiler.png",
                icon_size = 64,
                order = f,
                minable = {mining_time = 0.5, result = boiler_6},
                max_health = 450,
                target_temperature = 915,
                energy_consumption = 10800 .. kW,
                energy_source =
                {
                    emissions_per_minute = {pollution = 24},
                    fuel_categories = {base_fuel, advanced_fuel}
                }
            }
        }),
        -- STEAM ENGINE
        {
            type = item,
            name = steam_engine_6,
            subgroup = is_steam_engine,
            icon = "__base__/graphics/icons/steam-engine.png",
            order = f,
            place_result = steam_engine_6,
            stack_size = 32,
            weight = 31250
        },
        {
            type = recipe,
            name = steam_engine_6,
            category = crafting,
            subgroup = is_steam_engine,
            icon = "__base__/graphics/icons/steam-engine.png",
            order = f,
            enabled = false,
            auto_recycle = true,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = true,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = molybdenum_gear_wheel, amount = 8},
                {type = item, name = rhenium_bearing, amount = 8},
                {type = item, name = molybdenum_rhenium_pipe, amount = 4},
                {type = item, name = molybdenum_rhenium_plate, amount = 4},
                {type = item, name = steam_engine_5, amount = 1}
            },
            results = {{type = item, name = steam_engine_6, amount = 1}},
            main_product = steam_engine_6
        },
        util.merge
        ({
            data_generator["steam-engine"],
            {
                localised_description = {"entity-description.steam-engine"},
                name = steam_engine_6,
                subgroup = is_steam_engine,
                icon = "__base__/graphics/icons/steam-engine.png",
                icon_size = 64,
                order = f,
                minable = {mining_time = 1, result = steam_engine_6},
                max_health = 900,
                maximum_temperature = 915
            }
        }),
        -- STEAM TURBINE
        {
            type = item,
            name = steam_turbine_4,
            subgroup = is_energy_steam_turbine,
            icon = "__base__/graphics/icons/steam-turbine.png",
            order = d,
            place_result = steam_turbine_4,
            stack_size = 32,
            weight = 31250
        },
        {
            type = recipe,
            name = steam_turbine_4,
            category = crafting,
            subgroup = is_energy_steam_turbine,
            icon = "__base__/graphics/icons/steam-turbine.png",
            order = d,
            enabled = false,
            auto_recycle = true,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = true,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = molybdenum_gear_wheel, amount = 8},
                {type = item, name = rhenium_bearing, amount = 8},
                {type = item, name = advanced_processing_unit, amount = 4},
                {type = item, name = molybdenum_rhenium_pipe, amount = 8},
                {type = item, name = molybdenum_rhenium_plate, amount = 32},
                {type = item, name = steam_turbine_3, amount = 1}
            },
            results = {{type = item, name = steam_turbine_4, amount = 1}},
            main_product = steam_turbine_4
        },
        util.merge
        ({
            data_generator[steam_turbine_1],
            {
                localised_description = {"entity-description.steam-turbine"},
                name = steam_turbine_4,
                subgroup = is_energy_steam_turbine,
                icon = "__base__/graphics/icons/steam-turbine.png",
                icon_size = 64,
                order = d,
                minable = {mining_time = 1, result = steam_turbine_4},
                max_health = 1500,
                maximum_temperature = 915
            }
        })
    })
    data_boiler[boiler_5].next_upgrade = boiler_6
    data_boiler[boiler_6].next_upgrade = nil
    data_generator[steam_engine_5].next_upgrade = steam_engine_6
    data_generator[steam_engine_6].next_upgrade = nil
    data_generator[steam_turbine_3].next_upgrade = steam_turbine_4
    data_generator[steam_turbine_4].next_upgrade = nil
end

-- SOLAR PANELS
local is_solar_panel = "bob-energy-solar-panel"
data:extend
({
    -- SMALL
    {
        type = item,
        name = solar_panel_small_4,
        subgroup = is_solar_panel_small,
        icon = "__base__/graphics/icons/solar-panel.png",
        order = d,
        place_result = solar_panel_small_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = solar_panel_small_4,
        category = crafting,
        subgroup = is_solar_panel_small,
        icon = "__base__/graphics/icons/solar-panel.png",
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = nitinol_plate_bob, amount = 4},
            {type = item, name = platinum_cable, amount = 4},
            {type = item, name = solar_panel_small_3, amount = 1},
            {type = item, name = silicon_wafer, amount = 4},
            {type = item, name = platinum_plate, amount = 8}
        },
        results = {{type = item, name = solar_panel_small_4, amount = 1}},
        main_product = solar_panel_small_4
    },
    util.merge
    ({
        data_solar_panel[solar_panel_small_1],
        {
            localised_description = {"entity-description.solar-panel"},
            name = solar_panel_small_4,
            subgroup = is_solar_panel_small,
            icon = "__base__/graphics/icons/solar-panel.png",
            icon_size = 64,
            order = d,
            minable = {mining_time = 0.5, result = solar_panel_small_4},
            max_health = 250,
            production = 120 .. kW
        }
    }),
    -- MEDIUM
    {
        type = item,
        name = solar_panel_4,
        subgroup = is_solar_panel,
        icon = "__base__/graphics/icons/solar-panel.png",
        order = d,
        place_result = solar_panel_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = solar_panel_4,
        category = crafting,
        subgroup = is_solar_panel,
        icon = "__base__/graphics/icons/solar-panel.png",
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 16},
            {type = item, name = nitinol_plate_bob, amount = 8},
            {type = item, name = platinum_cable, amount = 8},
            {type = item, name = solar_panel_3, amount = 1},
            {type = item, name = silicon_wafer, amount = 8},
            {type = item, name = platinum_plate, amount = 16}
        },
        results = {{type = item, name = solar_panel_4, amount = 1}},
        main_product = solar_panel_4
    },
    util.merge
    ({
        data_solar_panel[solar_panel_1],
        {
            localised_description = {"entity-description.solar-panel"},
            name = solar_panel_4,
            subgroup = is_solar_panel,
            icon = "__base__/graphics/icons/solar-panel.png",
            icon_size = 64,
            order = d,
            minable = {mining_time = 0.5, result = solar_panel_4},
            max_health = 500,
            production = 240 .. kW
        }
    }),
    -- LARGE
    {
        type = item,
        name = solar_panel_large_4,
        subgroup = is_solar_panel_large,
        icon = "__base__/graphics/icons/solar-panel.png",
        order = d,
        place_result = solar_panel_large_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = solar_panel_large_4,
        category = crafting,
        subgroup = is_solar_panel_large,
        icon = "__base__/graphics/icons/solar-panel.png",
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 32},
            {type = item, name = nitinol_plate_bob, amount = 16},
            {type = item, name = platinum_cable, amount = 16},
            {type = item, name = solar_panel_large_3, amount = 1},
            {type = item, name = silicon_wafer, amount = 16},
            {type = item, name = platinum_plate, amount = 32}
        },
        results = {{type = item, name = solar_panel_large_4, amount = 1}},
        main_product = solar_panel_large_4
    },
    util.merge
    ({
        data_solar_panel[solar_panel_large_1],
        {
            localised_description = {"entity-description.solar-panel"},
            name = solar_panel_large_4,
            subgroup = is_solar_panel_large,
            icon = "__base__/graphics/icons/solar-panel.png",
            icon_size = 64,
            order = d,
            minable = {mining_time = 0.5, result = solar_panel_large_4},
            max_health = 750,
            production = 480 .. kW
        }
    })
})
data_solar_panel[solar_panel_small_3].next_upgrade = solar_panel_small_4
data_solar_panel[solar_panel_small_4].next_upgrade = nil
data_solar_panel[solar_panel_3].next_upgrade = solar_panel_4
data_solar_panel[solar_panel_4].next_upgrade = nil
data_solar_panel[solar_panel_large_3].next_upgrade = solar_panel_large_4
data_solar_panel[solar_panel_large_4].next_upgrade = nil

-- ACCUMULATOR
local is_accumulator = "bob-energy-accumulator"
data:extend
({
    {
        type = item,
        name = accumulator_4,
        subgroup = is_accumulator,
        icon = "__base__/graphics/icons/accumulator.png",
        order = d,
        place_result = accumulator_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = accumulator_4,
        category = crafting,
        additional_categories = {electromagnetics},
        subgroup = is_accumulator,
        icon = "__base__/graphics/icons/accumulator.png",
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = battery_graphene, amount = 8},
            {type = item, name = advanced_processing_unit, amount = 2},
            {type = item, name = nitinol_plate_bob, amount = 2},
            {type = item, name = accumulator_3, amount = 1}
        },
        results = {{type = item, name = accumulator_4, amount = 1}},
        main_product = accumulator_4
    },
    util.merge
    ({
        data_accumulator[accumulator_1],
        {
            localised_name = {"entity-name.accumulator-4"},
            name = accumulator_4,
            subgroup = is_accumulator,
            icon = "__base__/graphics/icons/accumulator.png",
            icon_size = 64,
            order = d,
            minable = {mining_time = 0.5, result = accumulator_4},
            max_health = 450,
            energy_source =
            {
                type = electric,
                buffer_capacity = 38400 .. kJ,
                usage_priority = tertiary,
                input_flow_limit = 2400 .. kW,
                output_flow_limit = 2400 .. kW
            }
        }
    })
})
data_accumulator[accumulator_3].next_upgrade = accumulator_4
data_accumulator[accumulator_4].next_upgrade = nil

-- ELECTRIC MINING DRILLS
data:extend
({
    {
        type = item,
        name = electric_mining_drill_6,
        subgroup = is_extraction_machine_mining,
        icon = "__base__/graphics/icons/electric-mining-drill.png",
        order = f,
        place_result = electric_mining_drill_6,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = electric_mining_drill_6,
        category = crafting,
        subgroup = is_extraction_machine_mining,
        icon = "__base__/graphics/icons/electric-mining-drill.png",
        order = f,
        enabled = false,
        auto_recycle = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = molybdenum_gear_wheel, amount = 8},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = molybdenum_plate, amount = 8},
            {type = item, name = electric_mining_drill_5, amount = 1}
        },
        results = {{type = item, name = electric_mining_drill_6, amount = 1}},
        main_product = electric_mining_drill_6
    },
    util.merge
    ({
        data_mining_drill[electric_mining_drill_1],
        {
            name = electric_mining_drill_6,
            subgroup = is_extraction_machine_mining,
            icon = "__base__/graphics/icons/electric-mining-drill.png",
            icon_size = 64,
            order = f,
            minable = {mining_time = 0.5, result = electric_mining_drill_6},
            max_health = 1050,
            energy_usage = 720 .. kW,
            module_slots = 6,
            mining_speed = 6,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 6}
            }
        }
    })
})
data_mining_drill[electric_mining_drill_5].next_upgrade = electric_mining_drill_6
data_mining_drill[electric_mining_drill_6].next_upgrade = nil
data_mining_drill[electric_mining_drill_6].graphics_set.animation.animation_speed = 6
data_mining_drill[electric_mining_drill_6].collision_mask = data_mining_drill[electric_mining_drill_5].collision_mask

-- PUMPJACKS
data:extend
({
    {
        type = item,
        name = pumpjack_5,
        subgroup = is_extraction_machine_pumpjack,
        icon = "__base__/graphics/icons/pumpjack.png",
        order = f,
        place_result = pumpjack_5,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = pumpjack_5,
        category = crafting,
        subgroup = is_extraction_machine_pumpjack,
        icon = "__base__/graphics/icons/pumpjack.png",
        order = f,
        enabled = false,
        auto_recycle = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = molybdenum_gear_wheel, amount = 8},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = molybdenum_rhenium_pipe, amount = 4},
            {type = item, name = molybdenum_rhenium_plate, amount = 4},
            {type = item, name = pumpjack_4, amount = 1}
        },
        results = {{type = item, name = pumpjack_5, amount = 1}},
        main_product = pumpjack_5
    },
    util.merge
    ({
        data_mining_drill[pumpjack_1],
        {
            name = pumpjack_5,
            subgroup = is_extraction_machine_pumpjack,
            icon = "__base__/graphics/icons/pumpjack.png",
            icon_size = 64,
            order = f,
            minable = {mining_time = 1, result = pumpjack_5},
            max_health = 300,
            energy_usage = 600 .. kW,
            module_slots = 5,
            mining_speed = 5,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 5}
            }
        }
    }),
    {
        type = item,
        name = pumpjack_6,
        subgroup = is_extraction_machine_pumpjack,
        icon = "__base__/graphics/icons/pumpjack.png",
        order = g,
        place_result = pumpjack_6,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = pumpjack_6,
        category = crafting,
        subgroup = is_extraction_machine_pumpjack,
        icon = "__base__/graphics/icons/pumpjack.png",
        order = g,
        enabled = false,
        auto_recycle = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 8},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = niobium_iron_plate, amount = 4},
            {type = item, name = niobium_tungsten_molybdenum_plate, amount = 4},
            {type = item, name = pumpjack_5, amount = 1}
        },
        results = {{type = item, name = pumpjack_6, amount = 1}},
        main_product = pumpjack_6
    },
    util.merge
    ({
        data_mining_drill[pumpjack_1],
        {
            name = pumpjack_6,
            subgroup = is_extraction_machine_pumpjack,
            icon = "__base__/graphics/icons/pumpjack.png",
            icon_size = 64,
            order = f,
            minable = {mining_time = 1, result = pumpjack_6},
            max_health = 350,
            energy_usage = 720 .. kW,
            module_slots = 6,
            mining_speed = 6,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = 6}
            }
        }
    })
})
data_mining_drill[pumpjack_4].next_upgrade = pumpjack_5
data_mining_drill[pumpjack_5].next_upgrade = pumpjack_6
data_mining_drill[pumpjack_6].next_upgrade = nil

-- REACTOR
local is_reactor = "angels-power-nuclear-reactor-b"
data:extend
({
    {
        type = item,
        name = tritium_reactor,
        subgroup = is_reactor,
        icon = "__base__/graphics/icons/nuclear-reactor.png",
        order = d,
        place_result = tritium_reactor,
        stack_size = 4,
        weight = 250000
    },
    {
        type = recipe,
        name = tritium_reactor,
        category = crafting,
        subgroup = is_reactor,
        icon = "__base__/graphics/icons/nuclear-reactor.png",
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 64,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 512},
            {type = item, name = heat_pipe_4, amount = 32},
            {type = item, name = lead_plate_bob, amount = 256},
            {type = item, name = molybdenum_rhenium_plate, amount = 256},
            {type = item, name = carbon_concrete_brick, amount = 512},
            {type = item, name = deuterium_reactor, amount = 1}
        },
        results = {{type = item, name = tritium_reactor, amount = 1}},
        main_product = tritium_reactor
    },
    util.merge
    ({
        data_reactor[uranium_reactor],
        {
            localised_description = {"entity-description.tritium-reactor"},
            name = tritium_reactor,
            subgroup = is_reactor,
            icon = "__base__/graphics/icons/nuclear-reactor.png",
            icon_size = 64,
            order = d,
            minable = {mining_time = 0.5, result = tritium_reactor},
            max_health = 1250,
            consumption = (43200 * 2) .. kW,
            heat_buffer =
            {
                max_temperature = 2000,
                specific_heat = 10800 .. kJ,
                max_transfer = 10800000 .. kW,
                minimum_glow_temperature = 250
            },
            energy_source = {fuel_categories = {nuclear_fuel_T4}},
            neighbour_bonus = 1.5
        }
    })
})
data_reactor[deuterium_reactor].next_upgrade = tritium_reactor
data_reactor[tritium_reactor].next_upgrade = nil

local is_smelting_machine_1 = "smelting-machine"
local is_smelting_machine_2 = "bob-smelting-machine"
local is_production_machine = "production-machine"
TIMSABA.functions.create_buildings
({
    -- FURNACE
    {
        name = electric_furnace_4,
        subgroup = is_smelting_machine_1,
        icon = "__base__/graphics/icons/electric-furnace.png",
        order = f,

        energy_required = 1,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = molybdenum_rhenium_plate, amount = 8},
            {type = item, name = rhenium_plate, amount = 4},
            {type = item, name = electric_furnace_3, amount = 1}
        },

        base_prototype = data_furnace[electric_furnace_1],

        crafting_speed = 6,
        module_slots = 6,
        pollution = 6,
        drain = 90 .. kW,
        energy_usage = 270 .. kW,
        max_health = 650
    },
    -- FURNACE (ASSEMBLY)
    {
        name = electric_mixing_furnace_4,
        subgroup = is_smelting_machine_2,
        icons = TIMSABA.numeral_tier({"__bobplates__/graphics/icons/electric-mixing-furnace.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = f,

        energy_required = 1,
        ingredients =
        {
            {type = item, name = advanced_processing_unit, amount = 8},
            {type = item, name = molybdenum_rhenium_plate, amount = 8},
            {type = item, name = rhenium_plate, amount = 4},
            {type = item, name = electric_mixing_furnace_3, amount = 1}
        },

        base_prototype = data_assembling[electric_mixing_furnace_1],

        crafting_speed = 6,
        module_slots = 6,
        pollution = 6,
        drain = 90 .. kW,
        energy_usage = 270 .. kW,
        max_health = 650
    },
    -- CENTIFUGE
    {
        name = centrifuge_4,
        subgroup = is_production_machine,
        icons = TIMSABA.numeral_tier({"__base__/graphics/icons/centrifuge.png", icon_size = 64}, 4, angelsmods.refining.number_tint),
        order = d,

        energy_required = 16,
        ingredients =
        {
            {type = item, name = molybdenum_gear_wheel, amount = 128},
            {type = item, name = rhenium_bearing, amount = 32},
            {type = item, name = advanced_processing_unit, amount = 128},
            {type = item, name = molybdenum_plate, amount = 64},
            {type = item, name = carbon_concrete_brick, amount = 128},
            {type = item, name = centrifuge_3, amount = 1}
        },

        base_prototype = data_assembling[centrifuge_3],

        energy_usage = 1860 .. kW,
        max_health = 650
    }
})

data_furnace[electric_furnace_3].next_upgrade = electric_furnace_4
data_furnace[electric_furnace_4].next_upgrade = nil

data_assembling[electric_mixing_furnace_3].next_upgrade = electric_mixing_furnace_4
data_assembling[electric_mixing_furnace_4].next_upgrade = nil
data_assembling[electric_mixing_furnace_4].crafting_categories = {smelting, smelting_filtering, smelting_chemical}
data_assembling[electric_mixing_furnace_4].ingredient_count = 2

data_assembling[centrifuge_3].next_upgrade = centrifuge_4
data_assembling[centrifuge_4].next_upgrade = nil
table.insert(data_assembling[centrifuge_4].crafting_categories, centrifuging_4)