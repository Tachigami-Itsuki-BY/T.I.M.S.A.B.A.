local graphics_bobs = "__TIMSABA__/graphics/icons/bobs/"
ceramic_gear_wheel = "ceramic-gear-wheel"
copper_tungsten_gear_wheel = "copper-tungsten-gear-wheel"
iron_bearing_ball = "iron-bearing-ball"
brass_bearing_ball = "brass-bearing-ball"
tungsten_bearing_ball = "tungsten-bearing-ball"
copper_tungsten_bearing_ball = "copper-tungsten-bearing-ball"
iron_bearing = "iron-bearing"
brass_bearing = "brass-bearing"
tungsten_bearing = "tungsten-bearing"
copper_tungsten_bearing = "copper-tungsten-bearing"
battery_graphene = "graphene-battery"
tritium_fuel_cell = "tritium-fuel-cell"
depleted_tritium_fuel_cell = "depleted-tritium-fuel-cell"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Si[font=default-tiny-bold]3[/font]N[font=default-tiny-bold]4[/font]"} or nil,
        name = ceramic_gear_wheel,
        subgroup = is_gears,
        icon = graphics_bobs .. ceramic_gear_wheel .. ".png",
        order = d,
        drop_sound = data_item[stone_brick].drop_sound,
        inventory_move_sound = data_item[stone_brick].inventory_move_sound,
        pick_sound = data_item[stone_brick].pick_sound
    },
    {
        localised_description = show_formula and {chemical_formula, "WCu"} or nil,
        name = copper_tungsten_gear_wheel,
        subgroup = is_gears,
        icon = graphics_bobs .. copper_tungsten_gear_wheel .. ".png",
        order = i,
        drop_sound = data_item[iron_gear_wheel].drop_sound,
        inventory_move_sound = data_item[iron_gear_wheel].inventory_move_sound,
        pick_sound = data_item[iron_gear_wheel].pick_sound
    },
    -- BEARING BALL
    {
        localised_description = show_formula and {chemical_formula, "Fe"} or nil,
        name = iron_bearing_ball,
        subgroup = is_bearing_ball,
        icon = graphics_bobs .. iron_bearing_ball .. ".png",
        order = a,
        drop_sound = data_item[steel_bearing_ball].drop_sound,
        inventory_move_sound = data_item[steel_bearing_ball].inventory_move_sound,
        pick_sound = data_item[steel_bearing_ball].pick_sound
    },
    {
        localised_description = show_formula and {chemical_formula, "CuZn"} or nil,
        name = brass_bearing_ball,
        subgroup = is_bearing_ball,
        icon = graphics_bobs .. brass_bearing_ball .. ".png",
        order = c,
        drop_sound = data_item[steel_bearing_ball].drop_sound,
        inventory_move_sound = data_item[steel_bearing_ball].inventory_move_sound,
        pick_sound = data_item[steel_bearing_ball].pick_sound
    },
    {
        localised_description = show_formula and {chemical_formula, "W"} or nil,
        name = tungsten_bearing_ball,
        subgroup = is_bearing_ball,
        icon = graphics_bobs .. tungsten_bearing_ball .. ".png",
        order = g,
        drop_sound = data_item[steel_bearing_ball].drop_sound,
        inventory_move_sound = data_item[steel_bearing_ball].inventory_move_sound,
        pick_sound = data_item[steel_bearing_ball].pick_sound
    },
    {
        localised_description = show_formula and {chemical_formula, "WCu"} or nil,
        name = copper_tungsten_bearing_ball,
        subgroup = is_bearing_ball,
        icon = graphics_bobs .. copper_tungsten_bearing_ball .. ".png",
        order = i,
        drop_sound = data_item[steel_bearing_ball].drop_sound,
        inventory_move_sound = data_item[steel_bearing_ball].inventory_move_sound,
        pick_sound = data_item[steel_bearing_ball].pick_sound
    },
    -- BEARING
    {
        localised_description = show_formula and {chemical_formula, "Fe"} or nil,
        name = iron_bearing,
        subgroup = is_bearing,
        icon = graphics_bobs .. iron_bearing .. ".png",
        order = a,
        drop_sound = data_item[steel_bearing].drop_sound,
        inventory_move_sound = data_item[steel_bearing].inventory_move_sound,
        pick_sound = data_item[steel_bearing].pick_sound
    },
    {
        localised_description = show_formula and {chemical_formula, "CuZn"} or nil,
        name = brass_bearing,
        subgroup = is_bearing,
        icon = graphics_bobs .. brass_bearing .. ".png",
        order = c,
        drop_sound = data_item[steel_bearing].drop_sound,
        inventory_move_sound = data_item[steel_bearing].inventory_move_sound,
        pick_sound = data_item[steel_bearing].pick_sound
    },
    {
        localised_description = show_formula and {chemical_formula, "W"} or nil,
        name = tungsten_bearing,
        subgroup = is_bearing,
        icon = graphics_bobs .. tungsten_bearing .. ".png",
        order = g,
        drop_sound = data_item[steel_bearing].drop_sound,
        inventory_move_sound = data_item[steel_bearing].inventory_move_sound,
        pick_sound = data_item[steel_bearing].pick_sound
    },
    {
        localised_description = show_formula and {chemical_formula, "WCu"} or nil,
        name = copper_tungsten_bearing,
        subgroup = is_bearing,
        icon = graphics_bobs .. copper_tungsten_bearing .. ".png",
        order = i,
        drop_sound = data_item[steel_bearing].drop_sound,
        inventory_move_sound = data_item[steel_bearing].inventory_move_sound,
        pick_sound = data_item[steel_bearing].pick_sound
    },
    -- BATTERY
    {
        name = battery_graphene,
        subgroup = "intermediate-product",
        icon = graphics_bobs .. battery_graphene .. ".png",
        order = d,
        drop_sound = data_item[battery_lead_acid].drop_sound,
        inventory_move_sound = data_item[battery_lead_acid].inventory_move_sound,
        pick_sound = data_item[battery_lead_acid].pick_sound
    },
    -- FUEL CELL
    {
        name = tritium_fuel_cell,
        subgroup = is_tritium_cell,
        icon = graphics_bobs .. tritium_fuel_cell .. ".png",
        order = a,
        stack_size = 64,
        weight = 15625,
        drop_sound = data_item[uranium_235_fuel_cell].drop_sound,
        inventory_move_sound = data_item[uranium_235_fuel_cell].inventory_move_sound,
        pick_sound = data_item[uranium_235_fuel_cell].pick_sound,
        fuel_category = nuclear_fuel_T4,
        fuel_value = (1382400 * 4 * 2) .. kJ,
        consumption_glow_alternative_tint = {r = 0.72, g = 0.05, b = 1.0, a = 1.0},
        fuel_glow_color = {r = 0.72, g = 0.05, b = 1.0, a = 1.0}
    },
    {
        name = depleted_tritium_fuel_cell,
        subgroup = is_tritium_cell,
        icon = graphics_bobs .. depleted_tritium_fuel_cell .. ".png",
        order = b,
        stack_size = 64,
        weight = 15625,
        drop_sound = data_item[uranium_235_fuel_cell].drop_sound,
        inventory_move_sound = data_item[uranium_235_fuel_cell].inventory_move_sound,
        pick_sound = data_item[uranium_235_fuel_cell].pick_sound
    }
})

data_item[tritium_fuel_cell].burnt_result = depleted_tritium_fuel_cell