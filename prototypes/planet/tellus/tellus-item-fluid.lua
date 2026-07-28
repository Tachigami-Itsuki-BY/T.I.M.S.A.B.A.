if mods [tellus_mods] then
    if settings.startup[setting_dye_secondary_color].value then
        orange_dye = "orange-dye"
        black_dye = "black-dye"
        TIMSABA.functions.create_items
        ({
            {
                name = orange_dye,
                subgroup = is_dyes,
                icon = "__TIMSABA__/graphics/icons/tellus/orange-dye.png",
                order = a,
                fuel_category = base_fuel,
                fuel_value = 1800 .. kJ
            },
            {
                name = black_dye,
                subgroup = is_dyes,
                icon = "__TIMSABA__/graphics/icons/tellus/black-dye.png",
                order = z,
                fuel_category = base_fuel,
                fuel_value = 1800 .. kJ
            }
        })

        local pipe_drop_move = {filename = "__base__/sound/item/metal-small-inventory-move.ogg", volume = 0.8}
        local pipe_pick = {filename = "__base__/sound/item/metal-small-inventory-pickup.ogg", volume = 0.8}

        orange_pipe = "orange-pipe"
        black_pipe = "black-pipe"
        orange_pipe_to_ground = "orange-pipe-to-ground"
        black_pipe_to_ground = "black-pipe-to-ground"
        if settings.startup[setting_dye_pipes].value then
            local function colored_pipes(parameters)
                data:extend
                ({
                    {
                        type = item,
                        name = parameters.name,
                        subgroup = parameters.subgroup,
                        icon = parameters.icon,
                        order = parameters.order,
                        stack_size = 200,
                        weight = 5000,
                        place_result = parameters.name,
                        drop_sound = pipe_drop_move,
                        inventory_move_sound = pipe_drop_move,
                        pick_sound = pipe_pick
                    }
                })
            end
            colored_pipes({name = orange_pipe, subgroup = is_tellus_pipe, icon = "__TIMSABA__/graphics/icons/tellus/orange-pipe.png", order = a})
            colored_pipes({name = black_pipe,  subgroup = is_tellus_pipe, icon = "__TIMSABA__/graphics/icons/tellus/black-pipe.png",  order = z})

            colored_pipes({name = orange_pipe_to_ground, subgroup = is_tellus_pipe_to_ground, icon = "__TIMSABA__/graphics/icons/tellus/orange-pipe-to-ground.png", order = a})
            colored_pipes({name = black_pipe_to_ground,  subgroup = is_tellus_pipe_to_ground, icon = "__TIMSABA__/graphics/icons/tellus/black-pipe-to-ground.png",  order = z})
        end

        local item_sounds = require("__base__.prototypes.item_sounds")

        orange_stone_brick = "orange-stone-brick"
        black_stone_brick = "black-stone-brick"
        if settings.startup[setting_dye_stone_path].value then
            data:extend
            ({
                {
                    type = item,
                    name = orange_stone_brick,
                    subgroup = is_tellus_stone_brick,
                    icon = "__TIMSABA__/graphics/icons/tellus/orange-stone-brick.png",
                    order = a,
                    stack_size = 200,
                    weight = 5000,
                    inventory_move_sound = item_sounds.brick_inventory_move,
                    pick_sound = item_sounds.brick_inventory_pickup,
                    drop_sound = item_sounds.brick_inventory_move,
                    place_as_tile =
                    {
                        result = "orange-stone-path",
                        condition_size = 1,
                        condition = {layers = {water_tile = true}}
                    }
                },
                {
                    type = item,
                    name = black_stone_brick,
                    subgroup = is_tellus_stone_brick,
                    icon = "__TIMSABA__/graphics/icons/tellus/black-stone-brick.png",
                    order = z,
                    stack_size = 200,
                    weight = 5000,
                    inventory_move_sound = item_sounds.brick_inventory_move,
                    pick_sound = item_sounds.brick_inventory_pickup,
                    drop_sound = item_sounds.brick_inventory_move,
                    place_as_tile =
                    {
                        result = "black-stone-path",
                        condition_size = 1,
                        condition = {layers = {water_tile = true}}
                    }
                }
            })
        end

        orange_concrete = "orange-concrete"
        black_concrete = "black-concrete"
        if settings.startup[setting_dye_concrete].value then
            data:extend
            ({
                {
                    type = item,
                    name = orange_concrete,
                    subgroup = is_tellus_concrete,
                    icon = "__TIMSABA__/graphics/icons/tellus/orange-concrete.png",
                    order = a,
                    stack_size = 200,
                    weight = 5000,
                    inventory_move_sound = item_sounds.concrete_inventory_move,
                    pick_sound = item_sounds.concrete_inventory_pickup,
                    drop_sound = item_sounds.concrete_inventory_move,
                    place_as_tile =
                    {
                        result = orange_concrete,
                        condition_size = 1,
                        condition = {layers = {water_tile = true}}
                    }
                },
                {
                    type = item,
                    name = black_concrete,
                    subgroup = is_tellus_concrete,
                    icon = "__TIMSABA__/graphics/icons/tellus/black-concrete.png",
                    order = z,
                    stack_size = 200,
                    weight = 5000,
                    inventory_move_sound = item_sounds.concrete_inventory_move,
                    pick_sound = item_sounds.concrete_inventory_pickup,
                    drop_sound = item_sounds.concrete_inventory_move,
                    place_as_tile =
                    {
                        result = black_concrete,
                        condition_size = 1,
                        condition = {layers = {water_tile = true}}
                    }
                }
            })
        end

        orange_hazard_concrete = "orange-hazard-concrete"
        if settings.startup[setting_dye_hazard_concrete].value then
            data:extend
            ({
                {
                    type = item,
                    name = orange_hazard_concrete,
                    subgroup = is_tellus_hazard_concrete,
                    icon = "__TIMSABA__/graphics/icons/tellus/orange-hazard-concrete.png",
                    order = a,
                    stack_size = 200,
                    weight = 5000,
                    inventory_move_sound = item_sounds.concrete_inventory_move,
                    pick_sound = item_sounds.concrete_inventory_pickup,
                    drop_sound = item_sounds.concrete_inventory_move,
                    place_as_tile =
                    {
                        result = orange_hazard_concrete .. "-left",
                        condition_size = 1,
                        condition = {layers = {water_tile = true}}
                    }
                }
            })
        end

        if settings.startup[setting_dye_reinforced_concrete].value then
            orange_reinforced_hazard_concrete = "orange-refined-hazard-concrete"
            data:extend
            ({
                {
                    type = item,
                    name = orange_reinforced_hazard_concrete,
                    subgroup = is_tellus_reinforced_hazard_concrete,
                    icon = "__TIMSABA__/graphics/icons/tellus/orange-reinforced-hazard-concrete.png",
                    order = a,
                    stack_size = 200,
                    weight = 5000,
                    inventory_move_sound = item_sounds.concrete_inventory_move,
                    pick_sound = item_sounds.concrete_inventory_pickup,
                    drop_sound = item_sounds.concrete_inventory_move,
                    place_as_tile =
                    {
                        result = orange_reinforced_hazard_concrete .. "-left",
                        condition_size = 1,
                        condition = {layers = {water_tile = true}}
                    }
                }
            })
        end

        orange_stone_wall = "orange-stone-wall"
        black_stone_wall = "black-stone-wall"
        if settings.startup[setting_dye_stone_wall].value then
            data:extend
            ({
                {
                    type = item,
                    name = orange_stone_wall,
                    subgroup = is_tellus_stone_wall,
                    icon = "__TIMSABA__/graphics/icons/tellus/orange-stone-wall.png",
                    order = a,
                    stack_size = 200,
                    weight = 5000,
                    inventory_move_sound = item_sounds.concrete_inventory_move,
                    pick_sound = item_sounds.concrete_inventory_pickup,
                    drop_sound = item_sounds.concrete_inventory_move,
                    place_result = orange_stone_wall
                },
                {
                    type = item,
                    name = black_stone_wall,
                    subgroup = is_tellus_stone_wall,
                    icon = "__TIMSABA__/graphics/icons/tellus/black-stone-wall.png",
                    order = z,
                    stack_size = 200,
                    weight = 5000,
                    inventory_move_sound = item_sounds.concrete_inventory_move,
                    pick_sound = item_sounds.concrete_inventory_pickup,
                    drop_sound = item_sounds.concrete_inventory_move,
                    place_result = black_stone_wall
                }
            })
        end
    end

    orange_concrete_brick = "orange-concrete-brick"
    blue_concrete_brick = "planetaris-blue-concrete-brick"
    yellow_concrete_brick = "planetaris-yellow-concrete-brick"
    magenta_concrete_brick = "planetaris-magenta-concrete-brick"
    green_concrete_brick = "planetaris-green-concrete-brick"
    red_concrete_brick = "planetaris-red-concrete-brick"
    cyan_concrete_brick = "planetaris-cyan-concrete-brick"
    black_concrete_brick = "black-concrete-brick"
    local function colored_concrete_brick(name, order)
        local data_item =
        {
            type = item,
            name = name,
            subgroup = is_tellus_concrete_brick,
            icon = "__TIMSABA__/graphics/icons/tellus/" .. name .. ".png",
            icon_size = 32,
            order = order,
            stack_size = 200,
            weight = 5000,
            place_as_tile =
            {
                result = name .. "-tile",
                condition_size = 1,
                condition = {layers = {water_tile = true}}
            }
        }

        data:extend({data_item})
    end
    if settings.startup[setting_dye_concrete_brick].value then
        colored_concrete_brick(blue_concrete_brick, b)
        colored_concrete_brick(green_concrete_brick, e)
        colored_concrete_brick(red_concrete_brick, f)
    end
    if settings.startup[setting_dye_secondary_color].value then
        if settings.startup[setting_dye_concrete_brick].value then
            colored_concrete_brick(orange_concrete_brick, a)
            colored_concrete_brick(yellow_concrete_brick, c)
            colored_concrete_brick(magenta_concrete_brick, d)
            colored_concrete_brick(cyan_concrete_brick, g)
            colored_concrete_brick(black_concrete_brick, h)
        end
    end
end