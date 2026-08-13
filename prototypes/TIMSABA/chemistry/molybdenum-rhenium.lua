-- GROUPS
local is_molybdenum_rhenium = "is-molybdenum-rhenium"
TIMSABA.functions.create_subgroups(ig_casting, {{name = is_molybdenum_rhenium, order = r}})

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
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "MoRe"} or nil,
        name = molybdenum_rhenium_powder_mixture,
        subgroup = is_molybdenum,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-powder-mixture.png",
        order = f
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Mo"} or nil,
        name = molybdenum_plate,
        subgroup = is_molybdenum_rhenium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-plate.png",
        order = a,
        drop_sound = data_item[iron_plate].drop_sound,
        inventory_move_sound = data_item[iron_plate].inventory_move_sound,
        pick_sound = data_item[iron_plate].pick_sound
    },
    {
        localised_description = show_formula and {chemical_formula, "Re"} or nil,
        name = rhenium_plate,
        subgroup = is_molybdenum_rhenium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-plate.png",
        order = b,
        drop_sound = data_item[iron_plate].drop_sound,
        inventory_move_sound = data_item[iron_plate].inventory_move_sound,
        pick_sound = data_item[iron_plate].pick_sound
    },
    {
        localised_description = show_formula and {chemical_formula, "MoRe"} or nil,
        name = molybdenum_rhenium_plate,
        subgroup = is_molybdenum_rhenium,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-plate.png",
        order = c,
        drop_sound = data_item[iron_plate].drop_sound,
        inventory_move_sound = data_item[iron_plate].inventory_move_sound,
        pick_sound = data_item[iron_plate].pick_sound
    },
    -- INTERMEDIATE
    {
        localised_description = show_formula and {chemical_formula, "Mo"} or nil,
        name = molybdenum_gear_wheel,
        subgroup = is_gears,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum/molybdenum-gear-wheel.png",
        order = i,
        drop_sound = data_item[iron_gear_wheel].drop_sound,
        inventory_move_sound = data_item[iron_gear_wheel].inventory_move_sound,
        pick_sound = data_item[iron_gear_wheel].pick_sound
    },
    {
        localised_description = show_formula and {chemical_formula, "Re"} or nil,
        name = rhenium_bearing_ball,
        subgroup = is_bearing_ball,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-bearing-ball.png",
        order = i,
        drop_sound = data_item[steel_bearing_ball].drop_sound,
        inventory_move_sound = data_item[steel_bearing_ball].inventory_move_sound,
        pick_sound = data_item[steel_bearing_ball].pick_sound
    },
    {
        localised_description = show_formula and {chemical_formula, "Re"} or nil,
        name = rhenium_bearing,
        subgroup = is_bearing,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/rhenium/rhenium-bearing.png",
        order = i,
        drop_sound = data_item[steel_bearing].drop_sound,
        inventory_move_sound = data_item[steel_bearing].inventory_move_sound,
        pick_sound = data_item[steel_bearing].pick_sound
    },
    -- LOGISTICS
    {
        name = molybdenum_rhenium_pipe,
        subgroup = is_pipe,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe.png",
        order = m,
        place_result = molybdenum_rhenium_pipe,
        drop_sound = data_item[iron_pipe].drop_sound,
        inventory_move_sound = data_item[iron_pipe].inventory_move_sound,
        pick_sound = data_item[iron_pipe].pick_sound
    },
    {
        name = molybdenum_rhenium_pipe_to_ground,
        subgroup = is_pipe_to_ground,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe-to-ground.png",
        order = m,
        stack_size = 32,
        weight = 31250,
        place_result = molybdenum_rhenium_pipe_to_ground,
        drop_sound = data_item[iron_pipe_to_ground].drop_sound,
        inventory_move_sound = data_item[iron_pipe_to_ground].inventory_move_sound,
        pick_sound = data_item[iron_pipe_to_ground].pick_sound
    }
})

-- FLUID


-- RECIPE
TIMSABA.functions.create_recipes
({
    {
        name = molybdenum_rhenium_powder_mixture,
        category = angels_powder_mixing_4,
        subgroup = is_molybdenum,
        icons = THREE_I(molybdenum_powder, rhenium_powder, molybdenum_rhenium_powder_mixture),
        order = f,
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
        name = molybdenum_plate,
        category = angels_sintering_5,
        subgroup = is_molybdenum_rhenium,
        icons = TWO_I(molybdenum_powder, molybdenum_plate),
        order = a,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 8, -- Molybdenum powder --> Molybdenum plate
        ingredients = {{type = item, name = molybdenum_powder, amount = 16}},
        results = {{type = item, name = molybdenum_plate, amount = 16}},
        main_product = molybdenum_plate
    },
    {
        name = rhenium_plate,
        category = angels_sintering_5,
        subgroup = is_molybdenum_rhenium,
        icons = TWO_I(rhenium_powder, rhenium_plate),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 8, -- Rhenium powder --> Rhenium plate
        ingredients = {{type = item, name = rhenium_powder, amount = 16}},
        results = {{type = item, name = rhenium_plate, amount = 16}},
        main_product = rhenium_plate
    },
    {
        name = molybdenum_rhenium_plate,
        category = angels_sintering_5,
        subgroup = is_molybdenum_rhenium,
        icons = TWO_I(molybdenum_rhenium_powder_mixture, molybdenum_rhenium_plate),
        order = c,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 8, -- Molybdenum-rhenium powder mixture --> Molybdenum rhenium plate
        ingredients = {{type = item, name = molybdenum_rhenium_powder_mixture, amount = 16}},
        results = {{type = item, name = molybdenum_rhenium_plate, amount = 16}},
        main_product = molybdenum_rhenium_plate
    },
    -- INTERMEDIATE
    {
        name = molybdenum_gear_wheel,
        category = angels_sintering_5,
        subgroup = is_gears,
        icons = TWO_I(molybdenum_powder, molybdenum_gear_wheel),
        order = i,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = molybdenum_powder, amount = 1}},
        results = {{type = item, name = molybdenum_gear_wheel, amount = 1}},
        main_product = molybdenum_gear_wheel
    },
    {
        name = rhenium_bearing_ball,
        category = angels_sintering_5,
        subgroup = is_bearing_ball,
        icons = TWO_I(rhenium_powder, rhenium_bearing_ball),
        order = i,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = rhenium_powder, amount = 1}},
        results = {{type = item, name = rhenium_bearing_ball, amount = 8}},
        main_product = rhenium_bearing_ball
    },
    {
        name = rhenium_bearing,
        category = angels_sintering_5,
        subgroup = is_bearing,
        icons = THREE_I(rhenium_bearing_ball, rhenium_powder, rhenium_bearing),
        order = i,
        allow_productivity = true,
        allow_quality = true,
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
        name = molybdenum_rhenium_pipe,
        category = angels_sintering_5,
        subgroup = is_pipe,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe.png",
        order = m,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 0.5,
        ingredients = {{type = item, name = molybdenum_rhenium_powder_mixture, amount = 1}},
        results = {{type = item, name = molybdenum_rhenium_pipe, amount = 1}},
        main_product = molybdenum_rhenium_pipe
    },
    {
        name = molybdenum_rhenium_pipe_to_ground,
        category = angels_sintering_5,
        subgroup = is_pipe_to_ground,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe-to-ground.png",
        order = m,
        allow_productivity = true,
        allow_quality = true,
        ingredients =
        {
            {type = item, name = molybdenum_rhenium_pipe, amount = 48},
            {type = item, name = molybdenum_rhenium_powder_mixture, amount = 4}
        },
        results = {{type = item, name = molybdenum_rhenium_pipe_to_ground, amount = 2}},
        main_product = molybdenum_rhenium_pipe_to_ground
    }
})