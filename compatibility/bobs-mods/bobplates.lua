TIMSABA.functions.create_items
({
    -- BEARING BALL
    {
        name = ceramic_bearing_ball,
        subgroup = is_bearing_ball,
        icon = "__reskins-angels__/graphics/icons/smelting/bearing-balls/bob-ceramic-bearing-ball.png",
        order = d
    },
    -- BEARING
    {
        name = ceramic_bearing,
        subgroup = is_bearing,
        icon = "__reskins-angels__/graphics/icons/smelting/bearings/bob-ceramic-bearing.png",
        order = d
    },
    -- CASTING
    {
        name = tungsten_plate_bob,
        subgroup = is_tungsten_casting,
        icon = "__reskins-angels__/graphics/icons/smelting/plates/angels-plate-tungsten.png",
        order = a
    },
    {
        name = tungsten_carbide_plate_bob,
        subgroup = is_tungsten_casting,
        icon = "__reskins-bobs__/graphics/icons/plates/plates/bob-tungsten-carbide.png",
        order = b
    },
    {
        name = lithium_bob,
        subgroup = is_alloys,
        icon = "__reskins-bobs__/graphics/icons/plates/plates/bob-lithium-plate.png",
        order = f
    }
})

TIMSABA.functions.create_recipes
({
    -- BEARING BALL
    {
        name = ceramic_bearing_ball,
        category = crafting,
        subgroup = is_bearing_ball,
        order = d,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = silicon_nitride_bob, amount = 1}},
        results = {{type = item, name = ceramic_bearing_ball, amount = 8}},
        main_product = ceramic_bearing_ball
    },
    -- BEARING
    {
        name = ceramic_bearing,
        category = crafting_fluid,
        subgroup = is_bearing,
        order = d,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
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
    -- CASTING
    {
        name = tungsten_carbide_plate_2,
        category = angels_sintering_4,
        subgroup = is_tungsten_casting,
        order = b_a,
        allow_productivity = true,
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
        name = lithium_bob,
        category = angels_petrochem_electrolyser,
        subgroup = is_alloys,
        order = f,
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