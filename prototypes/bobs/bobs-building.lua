local recipe = "recipe"
local kW = "kW"
local is_production_machine = "production-machine"
steam_turbine_4 = "steam-turbine-4"
centrifuge_4 = "centrifuge-4"
data:extend
({
    -- BOILER
    -- TIER 6
    -- STEAM ENGINE
    -- TIER 6
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
        subgroup = is_energy_steam_turbine,
        icon = "__base__/graphics/icons/steam-turbine.png",
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 16,
        ingredients =
        {
            {type = item, name = copper_tungsten_gear_wheel, amount = 8},
            {type = item, name = copper_tungsten_bearing, amount = 8},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = copper_tungsten_pipe, amount = 8},
            {type = item, name = copper_tungsten_plate_bob, amount = 32},
            {type = item, name = steam_turbine_3, amount = 1}
        },
        results = {{type = item, name = steam_turbine_4, amount = 1}},
        main_product = steam_turbine_4,
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
    }),
    -- CENTIFUGE
    {
        type = item,
        name = centrifuge_4,
        subgroup = is_production_machine,
        icon = "__base__/graphics/icons/centrifuge.png",
        order = d,
        place_result = centrifuge_4,
        stack_size = 32,
        weight = 31250
    },
    {
        type = recipe,
        name = centrifuge_4,
        subgroup = is_production_machine,
        icon = "__base__/graphics/icons/centrifuge.png",
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_show = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = 16,
        ingredients =
        {
            {type = item, name = copper_tungsten_gear_wheel, amount = 128},
            {type = item, name = copper_tungsten_bearing, amount = 32},
            {type = item, name = advanced_processing_unit, amount = 128},
            {type = item, name = copper_tungsten_plate_bob, amount = 64},
            {type = item, name = tungsten_plate_bob, amount = 128},
            {type = item, name = centrifuge_3, amount = 1}
        },
        results = {{type = item, name = centrifuge_4, amount = 1}},
        main_product = centrifuge_4,
    },
    util.merge
    ({
        data_assembling[centrifuge_3],
        {
            name = centrifuge_4,
            subgroup = is_production_machine,
            icon = "__base__/graphics/icons/centrifuge.png",
            order = d,
            minable = {result = centrifuge_4},
            module_slots = 4,
            crafting_speed = 4,
            energy_source =
            {
                type = "electric",
                usage_priority = "secondary-input",
                emissions_per_minute = {pollution = 4},
                drain = 60 .. kW
            },
            energy_usage = 900 .. kW,
            max_health = 650
        }
    })
})

data_generator[steam_turbine_3].next_upgrade = steam_turbine_4
data_assembling[centrifuge_3].next_upgrade = centrifuge_4