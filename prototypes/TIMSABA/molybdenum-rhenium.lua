-- GROUPS
local is_molybdenum = "is-molybdenum"
local casting = "angels-casting"
local is_molybdenum_rhenium = "is-molybdenum-rhenium"
data:extend
({
    {
        type = item_subgroup,
        name = is_molybdenum_rhenium,
        group = casting,
        order = r
    }
})

-- ITEM
molybdenum_plate = "molybdenum-plate"
rhenium_plate = "rhenium-plate"
molybdenum_rhenium_powder_mixture = "molybdenum-rhenium-powder-mixture"
molybdenum_rhenium_plate = "molybdenum-rhenium-plate"
molybdenum_gear_wheel = "molybdenum-gear-wheel"
rhenium_bearing_ball = "rhenium-bearing-ball"
rhenium_bearing = "rhenium-bearing"
molybdenum_rhenium_pipe = "molybdenum-rhenium-pipe"
molybdenum_rhenium_pipe_to_ground = "molybdenum-rhenium-pipe-to-ground"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "MoRe"} or nil,
        type = item,
        name = molybdenum_rhenium_powder_mixture,
        subgroup = is_molybdenum,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-powder-mixture.png",
        order = f,
        stack_size = 200,
        weight = 5000
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Mo"} or nil,
        type = item,
        name = molybdenum_plate,
        subgroup = is_molybdenum_rhenium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-plate.png",
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Re"} or nil,
        type = item,
        name = rhenium_plate,
        subgroup = is_molybdenum_rhenium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-plate.png",
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "MoRe"} or nil,
        type = item,
        name = molybdenum_rhenium_plate,
        subgroup = is_molybdenum_rhenium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-plate.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    -- INTERMEDIATE
    {
        localised_description = show_formula and {chemical_formula, "Mo"} or nil,
        type = item,
        name = molybdenum_gear_wheel,
        subgroup = is_gears,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-gear-wheel.png",
        order = i,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Re"} or nil,
        type = item,
        name = rhenium_bearing_ball,
        subgroup = is_bearing_ball,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-bearing-ball.png",
        order = i,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Re"} or nil,
        type = item,
        name = rhenium_bearing,
        subgroup = is_bearing,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-bearing.png",
        order = i,
        stack_size = 200,
        weight = 5000
    },
    -- LOGISTICS
    {
        type = item,
        name = molybdenum_rhenium_pipe,
        subgroup = is_pipe,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe.png",
        order = m,
        stack_size = 200,
        weight = 5000
    },
    {
        type = item,
        name = molybdenum_rhenium_pipe_to_ground,
        subgroup = is_pipe_to_ground,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe-to-ground.png",
        order = m,
        stack_size = 32,
        weight = 31250
    }
})

--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons/angels///.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = angelsmods.functions.fluid_color(""),
        flow_color = angelsmods.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- RECIPE
data:extend
({
    {
        type = recipe,
        name = molybdenum_rhenium_powder_mixture,
        category = angels_powder_mixing_4,
        subgroup = is_molybdenum,
        icons = THREE_I(molybdenum_powder, rhenium_powder, molybdenum_rhenium_powder_mixture),
        order = f,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Mo(powder) + Re(powder) --> Molybdenum rhenium powder mixture
        ingredients =
        {
            {type = item, name = molybdenum_powder, amount = 8},
            {type = item, name = rhenium_powder, amount = 8}
        },
        results = {{type = item, name = molybdenum_rhenium_powder_mixture, amount = 8}},
        main_product = molybdenum_rhenium_powder_mixture
    },
    -- CASTING
    {
        type = recipe,
        name = molybdenum_plate,
        category = angels_sintering_5,
        subgroup = is_molybdenum_rhenium,
        icons = TWO_I(molybdenum_powder, molybdenum_plate),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 8, -- Molybdenum powder --> Molybdenum plate
        ingredients = {{type = item, name = molybdenum_powder, amount = 16}},
        results = {{type = item, name = molybdenum_plate, amount = 16}},
        main_product = molybdenum_plate
    },
    {
        type = recipe,
        name = rhenium_plate,
        category = angels_sintering_5,
        subgroup = is_molybdenum_rhenium,
        icons = TWO_I(rhenium_powder, rhenium_plate),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 8, -- Rhenium powder --> Rhenium plate
        ingredients = {{type = item, name = rhenium_powder, amount = 16}},
        results = {{type = item, name = rhenium_plate, amount = 16}},
        main_product = rhenium_plate
    },
    {
        type = recipe,
        name = molybdenum_rhenium_plate,
        category = angels_sintering_5,
        subgroup = is_molybdenum_rhenium,
        icons = TWO_I(molybdenum_rhenium_powder_mixture, molybdenum_rhenium_plate),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 8, -- Molybdenum-rhenium powder mixture --> Molybdenum rhenium plate
        ingredients = {{type = item, name = molybdenum_rhenium_powder_mixture, amount = 16}},
        results = {{type = item, name = molybdenum_rhenium_plate, amount = 16}},
        main_product = molybdenum_rhenium_plate
    },
    -- INTERMEDIATE
    {
        type = recipe,
        name = molybdenum_gear_wheel,
        category = angels_sintering_5,
        subgroup = is_gears,
        icons = TWO_I(molybdenum_powder, molybdenum_gear_wheel),
        order = i,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = item, name = molybdenum_powder, amount = 1}},
        results = {{type = item, name = molybdenum_gear_wheel, amount = 1}},
        main_product = molybdenum_gear_wheel
    },
    {
        type = recipe,
        name = rhenium_bearing_ball,
        category = angels_sintering_5,
        subgroup = is_bearing_ball,
        icons = TWO_I(rhenium_powder, rhenium_bearing_ball),
        order = i,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = item, name = rhenium_powder, amount = 1}},
        results = {{type = item, name = rhenium_bearing_ball, amount = 8}},
        main_product = rhenium_bearing_ball
    },
    {
        type = recipe,
        name = rhenium_bearing,
        category = angels_sintering_5,
        subgroup = is_bearing,
        icons = THREE_I(rhenium_bearing_ball, rhenium_powder, rhenium_bearing),
        order = i,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = rhenium_bearing_ball, amount = 16},
            {type = item, name = rhenium_powder, amount = 2}
        },
        results = {{type = item, name = rhenium_bearing, amount = 2}},
        main_product = rhenium_bearing
    },
    -- LOGISTICS
    {
        type = recipe,
        name = molybdenum_rhenium_pipe,
        category = angels_sintering_5,
        subgroup = is_pipe,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe.png",
        order = m,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 0.5,
        ingredients = {{type = item, name = molybdenum_rhenium_powder_mixture, amount = 1}},
        results = {{type = item, name = molybdenum_rhenium_pipe, amount = 1}},
        main_product = molybdenum_rhenium_pipe
    },
    {
        type = recipe,
        name = molybdenum_rhenium_pipe_to_ground,
        category = angels_sintering_5,
        subgroup = is_pipe_to_ground,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe-to-ground.png",
        order = m,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = molybdenum_rhenium_pipe, amount = 48},
            {type = item, name = molybdenum_rhenium_powder_mixture, amount = 4}
        },
        results = {{type = item, name = molybdenum_rhenium_pipe_to_ground, amount = 2}},
        main_product = molybdenum_rhenium_pipe_to_ground
    }
})

--[[data:extend
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
})]]