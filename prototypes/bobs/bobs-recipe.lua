local B_F_L = require("lib.generator-icons").bearing_fluid_icon
local recipe = "recipe"
local is_gears = "bob-gears"
local is_bearing_ball = "bob-bearings"
data:extend
({
    {
        type = recipe,
        name = ceramic_gear_wheel,
        category = crafting,
        subgroup = is_gears,
        icons = TWO_I(silicon_nitride_bob, ceramic_gear_wheel),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = item, name = silicon_nitride_bob, amount = 1}},
        results = {{type = item, name = ceramic_gear_wheel, amount = 1}},
        main_product = ceramic_gear_wheel
    },
    {
        type = recipe,
        name = copper_tungsten_gear_wheel,
        category = crafting,
        subgroup = is_gears,
        icons = TWO_I(copper_tungsten_plate_bob, copper_tungsten_gear_wheel),
        order = h,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = item, name = copper_tungsten_plate_bob, amount = 1}},
        results = {{type = item, name = copper_tungsten_gear_wheel, amount = 1}},
        main_product = copper_tungsten_gear_wheel
    },
    {
        type = recipe,
        name = brass_bearing_ball,
        category = crafting,
        subgroup = is_bearing_ball,
        icons = TWO_I(brass_plate_bob, brass_bearing_ball),
        order = c,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = item, name = brass_plate_bob, amount = 1}},
        results = {{type = item, name = brass_bearing_ball, amount = 8}},
        main_product = brass_bearing_ball
    },
    {
        type = recipe,
        name = copper_tungsten_bearing_ball,
        category = crafting,
        subgroup = is_bearing_ball,
        icons = TWO_I(copper_tungsten_plate_bob, copper_tungsten_bearing_ball),
        order = h,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = item, name = copper_tungsten_plate_bob, amount = 1}},
        results = {{type = item, name = copper_tungsten_bearing_ball, amount = 8}},
        main_product = copper_tungsten_bearing_ball
    },
    {
        type = recipe,
        name = brass_bearing,
        category = crafting,
        subgroup = is_bearing,
        icons = B_F_L(nil, brass_bearing_ball, brass_plate_bob, brass_bearing),
        order = c,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = brass_bearing_ball, amount = 16},
            {type = item, name = brass_plate_bob, amount = 2}
        },
        results = {{type = item, name = brass_bearing, amount = 2}},
        main_product = brass_bearing
    },
    {
        type = recipe,
        name = copper_tungsten_bearing,
        category = crafting_fluid,
        subgroup = is_bearing,
        icons = B_F_L(lubricant, copper_tungsten_bearing_ball, copper_tungsten_plate_bob, copper_tungsten_bearing),
        order = h,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = copper_tungsten_bearing_ball, amount = 16},
            {type = item, name = copper_tungsten_plate_bob, amount = 2},
            {type = fluid, name = lubricant, amount = 15}
        },
        results = {{type = item, name = copper_tungsten_bearing, amount = 2}},
        main_product = copper_tungsten_bearing
    }
})

--[[
data:extend
({
    {
        type = recipe,
        name = ,
        category = ,
        subgroup = ,
        icons = ,
        order = ,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = ,
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})
]]