if settings.startup[setting_flow_control_new].value then
    -- ITEMS
    local item_sounds = require("__base__.prototypes.item_sounds")

    local function create_flow_control_item(pipe_base_name, config_type, settings)
        local item = util.table.deepcopy(data_item[iron_pipe])
        local full_name = pipe_base_name .. config_type

        item.name = full_name
        item.subgroup = settings.subgroup
        item.icon = "__TIMSABA__/graphics/icons/flow-control/" .. full_name .. ".png"
        item.icon_size = 64
        item.order = settings.order
        item.place_result = full_name
        item.inventory_move_sound = settings.inventory_move or item_sounds.metal_small_inventory_move
        item.pick_sound = settings.inventory_pickup or item_sounds.metal_small_inventory_pickup
        item.drop_sound = settings.inventory_move or item_sounds.metal_small_inventory_move

        return item
    end

    -- RECIPE
    local function create_flow_control_recipe(pipe_base_name, config_type, settings)
        local recipe = util.table.deepcopy(data_recipe[iron_pipe])
        local full_name = pipe_base_name .. config_type

        recipe.name = full_name
        recipe.subgroup = settings.subgroup
        recipe.icon = "__TIMSABA__/graphics/icons/flow-control/" .. full_name .. ".png"
        recipe.icon_size = 64
        recipe.order = settings.order
        recipe.allow_productivity = false
        recipe.ingredients = {{type = item, name = pipe_base_name, amount = 1}}
        recipe.results[1].name = full_name
        recipe.main_product = full_name

        return recipe
    end

    -- ENTITY
    local empty_sprite = {filename = "__core__/graphics/empty.png", size = 1, frame_count = 1}

    local function create_flow_control_entity(pipe_base_name, config_type, settings)
        local entity = util.table.deepcopy(data_storage_tank[storage_tank_1])
        local full_name = pipe_base_name .. config_type

        local reskins_pipecoverspictures = reskins.lib.sprites.pipes.get_pipe_covers(settings.type_item)
        local reskins_pipepictures = reskins.lib.sprites.pipes.get_pipe(settings.type_item)

        entity.name = full_name
        entity.subgroup = settings.subgroup
        entity.icon = "__TIMSABA__/graphics/icons/flow-control/" .. full_name .. ".png"
        entity.icon_size = 64
        entity.order = settings.order
        entity.minable = {mining_time = 0.5, result = pipe_base_name}
        entity.corpse = "pipe-remnants"

        local base_pipe = data_pipe[pipe_base_name]
        entity.max_health = base_pipe.max_health
        entity.resistances = base_pipe.resistances
        entity.fast_replaceable_group = base_pipe.fast_replaceable_group or data_pipe[iron_pipe].fast_replaceable_group
        entity.next_upgrade = nil
        entity.placeable_by = {item = full_name, count = 1}
        entity.collision_box = base_pipe.collision_box
        entity.dying_explosion = base_pipe.dying_explosion or data_pipe[iron_pipe].dying_explosion
        entity.friendly_map_color = {69, 130, 165}
        entity.water_reflection = nil
        entity.icon_draw_specification = base_pipe.icon_draw_specification or data_pipe[iron_pipe].icon_draw_specification
        entity.circuit_wire_max_distance = 0
        entity.working_sound = nil
        entity.heating_energy = base_pipe.heating_energy
        entity.two_direction_only = false

        if config_type == "-straight" then
            entity.selection_box = {{-0.35, -0.5}, {0.35, 0.5}}
            entity.fluid_box =
            {
                volume = 120,
                pipe_covers = reskins_pipecoverspictures,
                hide_connection_info = true,
                pipe_connections =
                {
                    {direction = defines.direction.north, position = {0, 0}},
                    {direction = defines.direction.south, position = {0, 0}}
                }
            }
            entity.pictures =
            {
                picture =
                {
                    north = reskins_pipepictures.straight_vertical,
                    east = reskins_pipepictures.straight_horizontal,
                    south = reskins_pipepictures.straight_vertical,
                    west = reskins_pipepictures.straight_horizontal
                },
                gas_flow = empty_sprite,
                fluid_background = empty_sprite,
                window_background = empty_sprite,
                flow_sprite = empty_sprite
            }
        elseif config_type == "-elbow" then
            entity.selection_box = {{-0.35, -0.35}, {0.5, 0.5}}
            entity.fluid_box =
            {
                volume = 120,
                pipe_covers = reskins_pipecoverspictures,
                hide_connection_info = true,
                pipe_connections =
                {
                    {direction = defines.direction.south, position = {0, 0}},
                    {direction = defines.direction.east, position = {0, 0}}
                }
            }
            entity.pictures =
            {
                picture =
                {
                    north = reskins_pipepictures.corner_down_right,
                    east = reskins_pipepictures.corner_down_left,
                    south = reskins_pipepictures.corner_up_left,
                    west = reskins_pipepictures.corner_up_right
                },
                gas_flow = empty_sprite,
                fluid_background = empty_sprite,
                window_background = empty_sprite,
                flow_sprite = empty_sprite
            }

        elseif config_type == "-junction" then
            entity.selection_box = {{-0.5, -0.35}, {0.5, 0.5}}
            entity.fluid_box =
            {
                volume = 120,
                pipe_covers = reskins_pipecoverspictures,
                hide_connection_info = true,
                pipe_connections =
                {
                    {direction = defines.direction.east, position = {0, 0}},
                    {direction = defines.direction.west, position = {0, 0}},
                    {direction = defines.direction.south, position = {0, 0}}
                }
            }
            entity.pictures =
            {
                picture =
                {
                    north = reskins_pipepictures.t_down,
                    east = reskins_pipepictures.t_left,
                    south = reskins_pipepictures.t_up,
                    west = reskins_pipepictures.t_right
                },
                gas_flow = empty_sprite,
                fluid_background = empty_sprite,
                window_background = empty_sprite,
                flow_sprite = empty_sprite
            }
        end

        return entity
    end

    local all_my_materials =
    {
        {name = copper_pipe,             folder_name = "copper",          order = b},
        {name = bronze_pipe,             folder_name = "bronze",          order = d},
        {name = steel_pipe,              folder_name = "steel",           order = e},
        {name = plastic_pipe,            folder_name = "plastic",         order = f, inventory_move = item_sounds.plastic_inventory_move, inventory_pickup = item_sounds.plastic_inventory_pickup},
        {name = brass_pipe,              folder_name = "brass",           order = g},
        {name = titanium_pipe,           folder_name = "titanium",        order = h},
        {name = tungsten_pipe,           folder_name = "tungsten",        order = j},
        {name = copper_tungsten_pipe,    folder_name = "copper-tungsten", order = l}
    }

    local configs =
    {
        {suffix = _straight, subgroup = is_pipe_straight},
        {suffix = _elbow,    subgroup = is_pipe_elbow},
        {suffix = _junction, subgroup = is_pipe_junction}
    }

    local data_to_extend = {}

    for _, material in ipairs(all_my_materials) do
        for _, config in ipairs(configs) do

            local settings =
            {
                subgroup = config.subgroup,
                order = material.order,
                type_item = material.folder_name,
                inventory_move = material.inventory_move,
                inventory_pickup = material.inventory_pickup
            }

            local item = create_flow_control_item(material.name, config.suffix, settings)
            local recipe = create_flow_control_recipe(material.name, config.suffix, settings)
            local entity = create_flow_control_entity(material.name, config.suffix, settings)

            table.insert(data_to_extend, item)
            table.insert(data_to_extend, recipe)
            table.insert(data_to_extend, entity)
        end
    end

    data:extend(data_to_extend)

    -- NEW ICONS
    local icons_pipe =
    {
        {base_name = copper_pipe,             tier = 1},
        {base_name = bronze_pipe,             tier = 2},
        {base_name = steel_pipe,              tier = 2},
        {base_name = plastic_pipe,            tier = 3},
        {base_name = brass_pipe,              tier = 3},
        {base_name = titanium_pipe,           tier = 4},
        {base_name = tungsten_pipe,           tier = 4},
        {base_name = copper_tungsten_pipe,    tier = 5}
    }

    local pipe_suffixes = {_straight, _elbow, _junction}

    for _, pipe in ipairs(icons_pipe) do
        for _, suffix in ipairs(pipe_suffixes) do
            local full_name = pipe.base_name .. suffix

            data_item[full_name].icon = nil
            data_item[full_name].icons = {{icon = "__TIMSABA__/graphics/icons/flow-control/" .. full_name .. ".png", icon_size = 64}}
            reskins.lib.tiers.add_tier_labels_to_prototype_by_name(pipe.tier, full_name, item)

            data_recipe[full_name].icon = nil
            data_recipe[full_name].icons = {{icon = "__TIMSABA__/graphics/icons/flow-control/" .. full_name .. ".png", icon_size = 64}}
            reskins.lib.tiers.add_tier_labels_to_prototype_by_name(pipe.tier, full_name, recipe)

            data_storage_tank[full_name].icon = nil
            data_storage_tank[full_name].icons = {{icon = "__TIMSABA__/graphics/icons/flow-control/" .. full_name .. ".png", icon_size = 64}}
            reskins.lib.tiers.add_tier_labels_to_prototype_by_name(pipe.tier, full_name, storage_tank)
        end
    end
end