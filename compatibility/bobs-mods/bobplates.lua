if mods [bobplates] >= "2.1.0" then
    data:extend
    ({
        --[[{
            type = item,
            name = cobalt_steel_gear_wheel,
            subgroup = is_gears,
            icon = "__reskins-angels__/graphics/icons/smelting/gears/bob-cobalt-steel-gear-wheel.png",
            order = e,
            stack_size = 200,
            weight = 5000
        },]]
        -- BEARING BALL
        {
            type = item,
            name = ceramic_bearing_ball,
            subgroup = is_bearing_ball,
            icon = "__reskins-angels__/graphics/icons/smelting/bearing-balls/bob-ceramic-bearing-ball.png",
            order = d,
            stack_size = 200,
            weight = 5000
        },
        --[[{
            type = item,
            name = cobalt_steel_bearing_ball,
            subgroup = is_bearing_ball,
            icon = "__reskins-angels__/graphics/icons/smelting/bearing-balls/bob-cobalt-steel-bearing-ball.png",
            order = e,
            stack_size = 200,
            weight = 5000
        },]]
        -- BEARING
        {
            type = item,
            name = ceramic_bearing,
            subgroup = is_bearing,
            icon = "__reskins-angels__/graphics/icons/smelting/bearings/bob-ceramic-bearing.png",
            order = d,
            stack_size = 200,
            weight = 5000
        },
        --[[{
            type = item,
            name = cobalt_steel_bearing,
            subgroup = is_bearing,
            icon = "__reskins-angels__/graphics/icons/smelting/bearings/bob-cobalt-steel-bearing.png",
            order = e,
            stack_size = 200,
            weight = 5000
        },]]
        -- CASTING
        {
            type = item,
            name = tungsten_plate_bob,
            subgroup = is_tungsten_casting,
            icon = "__reskins-angels__/graphics/icons/smelting/plates/angels-plate-tungsten.png",
            order = a,
            stack_size = 200,
            weight = 5000
        },
        {
            type = item,
            name = tungsten_carbide_plate_bob,
            subgroup = is_tungsten_casting,
            icon = "__reskins-bobs__/graphics/icons/plates/plates/bob-tungsten-carbide.png",
            order = b,
            stack_size = 200,
            weight = 5000
        },
        {
            type = item,
            name = lithium_bob,
            subgroup = is_alloys,
            icon = "__reskins-bobs__/graphics/icons/plates/plates/bob-lithium-plate.png",
            order = f,
            stack_size = 200,
            weight = 5000
        },
        -- RECIPE
        --[[{
            type = recipe,
            name = cobalt_steel_gear_wheel,
            category = crafting,
            subgroup = is_gears,
            order = e,
            enabled = false,
            auto_recycle = true,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = cobalt_steel_plate_bob, amount = 1}},
            results = {{type = item, name = cobalt_steel_gear_wheel, amount = 1}},
            main_product = cobalt_steel_gear_wheel
        },]]
        -- BEARING BALL
        {
            type = recipe,
            name = ceramic_bearing_ball,
            category = crafting,
            subgroup = is_bearing_ball,
            order = d,
            enabled = false,
            auto_recycle = true,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = silicon_nitride_bob, amount = 1}},
            results = {{type = item, name = ceramic_bearing_ball, amount = 8}},
            main_product = ceramic_bearing_ball
        },
        --[[{
            type = recipe,
            name = cobalt_steel_bearing_ball,
            category = crafting,
            subgroup = is_bearing_ball,
            order = e,
            enabled = false,
            auto_recycle = true,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 1,
            ingredients = {{type = item, name = cobalt_steel_plate_bob, amount = 1}},
            results = {{type = item, name = cobalt_steel_bearing_ball, amount = 8}},
            main_product = cobalt_steel_bearing_ball
        },]]
        -- BEARING
        {
            type = recipe,
            name = ceramic_bearing,
            category = crafting_fluid,
            subgroup = is_bearing,
            order = d,
            enabled = false,
            auto_recycle = true,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = ceramic_bearing_ball, amount = 16},
                {type = item, name = silicon_nitride_bob, amount = 2},
                {type = fluid, name = lubricant, amount = 15}
            },
            results = {{type = item, name = ceramic_bearing, amount = 2}},
            main_product = ceramic_bearing
        },
        --[[{
            type = recipe,
            name = cobalt_steel_bearing,
            category = crafting_fluid,
            subgroup = is_bearing,
            order = e,
            enabled = false,
            auto_recycle = true,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = cobalt_steel_bearing_ball, amount = 16},
                {type = item, name = cobalt_steel_plate_bob, amount = 2},
                {type = fluid, name = lubricant, amount = 15}
            },
            results = {{type = item, name = cobalt_steel_bearing, amount = 2}},
            main_product = cobalt_steel_bearing
        },]]
        -- CASTING
        {
            type = recipe,
            name = tungsten_carbide_plate_2,
            category = angels_sintering_4,
            subgroup = is_tungsten_casting,
            order = b_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = tungsten_powder, amount = 16},
                {type = item, name = carbon_angels, amount = 16}
            },
            results = {{type = item, name = tungsten_carbide_plate_bob, amount = 16}},
            main_product = tungsten_carbide_plate_bob
        },
        {
            type = recipe,
            name = lithium_bob,
            category = angels_petrochem_electrolyser,
            subgroup = is_alloys,
            order = f,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 8,
            ingredients =
            {
                {type = item, name = lithium_chloride_angels, amount = 16},
                {type = item, name = electrode, amount = 1}
            },
            results =
            {
                {type = item, name = lithium_bob, amount = 16},
                {type = fluid, name = chlorine_angels, amount = 240},
                {type = item, name = electrode_used, amount = 1}
            },
            main_product = lithium_bob
        }
    })
    -- TECHNOLOGY
    if not data_technology[tech_tungsten_alloy_processing] then
        data:extend
        ({
            {
                localised_name = {"technology-name.bob-tungsten-alloy-processing"},
                localised_description = {"technology-description.bob-tungsten-alloy-processing"},
                type = technology,
                name = tech_tungsten_alloy_processing,
                icon = "__reskins-bobs__/graphics/technology/plates/plates/bob-tungsten-alloy-processing.png",
                icon_size = 256,
                prerequisites = {tech_tungsten_processing, tech_copper_smelting_2, utility_science_pack},
                effects =
                {
                    {type = unlock_recipe, recipe = copper_tungsten_plate_bob},
                    {type = unlock_recipe, recipe = copper_tungsten_pipe},
                    {type = unlock_recipe, recipe = copper_tungsten_pipe_to_ground}
                },
                unit =
                {
                    count = 64,
                    ingredients =
                    {
                        {automation_science_pack, 1},
                        {logistic_science_pack, 1},
                        {chemical_science_pack, 1},
                        {production_science_pack, 1},
                        {utility_science_pack, 1}
                    },
                    time = 32
                }
            }
        })
    end
end