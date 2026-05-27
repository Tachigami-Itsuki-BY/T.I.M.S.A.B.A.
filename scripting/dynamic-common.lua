local Public = {}

local direction_vectors =
{
    [defines.direction.north] = {x = 0, y = -1},
    [defines.direction.east]  = {x = 1, y = 0},
    [defines.direction.south] = {x = 0, y = 1},
    [defines.direction.west]  = {x = -1, y = 0}
}

local opposite_directions =
{
    [defines.direction.north] = defines.direction.south,
    [defines.direction.south] = defines.direction.north,
    [defines.direction.east]  = defines.direction.west,
    [defines.direction.west]  = defines.direction.east,
}

--TODO: Оптимизировать эту функцию в 1 вызов find_entities_filtered
--[[function find_ground_neighbour_manually(entity, use_opposite)
    local coef_4 = 0.4
    local coef_5 = 0.5

    local proto = entity.prototype
    local max_dist = proto.max_underground_distance
    local vector = direction_vectors[entity.direction]

    local vX = vector.x
    local vY = vector.y

    local posX = math.floor(entity.position.x) + coef_5
    local posY = math.floor(entity.position.y) + coef_5

    for _, sign in ipairs({1, -1}) do
        for i = 1, max_dist do
            local x = posX + (vX * i * sign)
            local y = posY + (vY * i * sign)

            local search_area = {{x - coef_4, y - coef_4}, {x + coef_4, y + coef_4}}

            local founds = entity.surface.find_entities_filtered
            {
                area = search_area,
                type = entity.type,
                name = entity.name
            }

            for _, found in ipairs(founds) do
                if found.unit_number ~= entity.unit_number then
                    if use_opposite == true and opposite_directions[found.direction] == entity.direction then
                        return found
                    elseif use_opposite == false and found.direction == entity.direction then
                        return found
                    end
                end
            end
        end
    end
end]]

function find_ground_neighbour_manually(entity, use_opposite)
    local proto = entity.prototype
    local max_dist = proto.max_underground_distance
    local vector = direction_vectors[entity.direction]

    local posX = math.floor(entity.position.x) + 0.5
    local posY = math.floor(entity.position.y) + 0.5

    -- Вычисляем границы одной линией вдоль вектора направления
    local coef_4 = 0.4
    local length = max_dist + coef_4

    local x1 = posX - (vector.x * length) - (vector.y * coef_4)
    local y1 = posY - (vector.y * length) - (vector.x * coef_4)
    local x2 = posX + (vector.x * length) + (vector.y * coef_4)
    local y2 = posY + (vector.y * length) + (vector.x * coef_4)

    -- Гарантируем правильный порядок координат (левый верхний и правый нижний углы)
    local search_area =
    {
        {math.min(x1, x2), math.min(y1, y2)},
        {math.max(x1, x2), math.max(y1, y2)}
    }

    -- Один вызов вместо десятков
    local founds = entity.surface.find_entities_filtered
    {
        area = search_area,
        type = entity.type,
        name = entity.name
    }

    for _, found in ipairs(founds) do
        if found.unit_number ~= entity.unit_number then
            if use_opposite and opposite_directions[found.direction] == entity.direction then
                return found
            elseif use_opposite == false and found.direction == entity.direction then
                return found
            end
        end
    end
end

function destroy_entity_and_move_to_inventory(player, inventory, entity, required_pipes_count, icon, localised_name, available_count, flying_text)

    local entity_ghost = "entity-ghost"
    local refund_item = entity.name
    local pos = entity.position
    local dir = entity.direction
    local force = entity.force
    local surface = entity.surface

    entity.destroy()
    inventory.insert {name = refund_item, count = 1}
    surface.create_entity {name = entity_ghost, inner_name = refund_item, position = pos, direction = dir, force = force}

    if player then
        player.create_local_flying_text
        {
            text = {flying_text, required_pipes_count, icon, localised_name, available_count},
            position = pos
        }
        player.play_sound {path = "utility/cannot_build"}
    end
end

function remove_items_from_inventory(player, inventory, entity, required_pipes_count, matching_pipe, icon, localised_name, remaining_count, flying_text)
    inventory.remove {name = matching_pipe, count = required_pipes_count}

    if player then
        player.create_local_flying_text
        {
            text = {flying_text, required_pipes_count, icon, localised_name, remaining_count},
            position = entity.position
        }
        player.play_sound {path = "utility/build_small"}
    end
end

function Public.on_entity_built_common(event, entity, entity_matching_name, use_opposite, icon, consumed_message, not_enough_message)
    local neighbour = find_ground_neighbour_manually(entity, use_opposite)

    if neighbour and neighbour.valid then
        local posX = math.abs(entity.position.x - neighbour.position.x)
        local posY = math.abs(entity.position.y - neighbour.position.y)

        local distance = math.floor(math.max(posX, posY))
        local required_count = math.max(0, distance - 1)
        if required_count == 0 then return end

        local inventory = nil
        local count = 0 -- NEW
        local player = event.player_index and game.players[event.player_index]

        if player then -- 1. Если строит игрок (включая удаленный режим на платформе)
            --inventory = player.get_main_inventory()
            -- В 2.0 игрок может управлять роботом, находиться в режиме бога или на платформе.
            -- get_main_inventory() теперь может вернуть nil, если у игрока нет тела.
            -- Поэтому используем безопасный метод поиска предметов у контроллера игрока:
            count = player.get_item_count(entity_matching_name)
            -- Для удаления предметов нам всё ещё нужен объект инвентаря.
            -- Метод get_inventory автоматически выберет главный инвентарь (инженер, паукоход и т.д.)
            inventory = player.get_inventory(defines.inventory.character_main) or player.get_inventory(defines.inventory.god_main)
        elseif event.robot then -- 2. Если строит робот
            inventory = event.robot.get_inventory(defines.inventory.robot_cargo)
            if inventory then count = inventory.get_item_count(entity_matching_name) end
        elseif event.platform_index then -- 3. Если строит сама Космическая Платформа (через логистику/чертеж)
            local platform = game.space_platforms[event.platform_index]
            -- В 2.0 у платформы есть прямой доступ к её хабу и инвентарю
            if platform and platform.hub and platform.hub.valid then
                inventory = platform.hub.get_inventory(defines.inventory.hub_main)
                if inventory then count = inventory.get_item_count(entity_matching_name) end
            end
            --[[if platform and platform.hub then
                inventory = platform.hub.get_inventory(defines.inventory.hub_main)
            end]]
        end

        --local count = inventory.get_item_count(entity_matching_name)
        local item_proto = prototypes.item[entity_matching_name]
        local localised_name = item_proto and item_proto.localised_name or entity_matching_name

        if count < required_count then
            destroy_entity_and_move_to_inventory(player, inventory, entity, required_count, icon, localised_name, count, not_enough_message)
        else
            local remaining_count = count - required_count
            remove_items_from_inventory(player, inventory, entity, required_count, entity_matching_name, icon, localised_name, remaining_count, consumed_message)
        end
    end
end

function Public.on_entity_mined_common(event, entity, entity_matching_name, use_opposite, refunded_message)

    local neighbour = find_ground_neighbour_manually(entity, use_opposite)
    if not neighbour or not neighbour.valid then return end

    local distance = math.floor(math.max(math.abs(entity.position.x - neighbour.position.x), math.abs(entity.position.y - neighbour.position.y)))

    local required_count = math.max(0, distance - 1)
    if required_count == 0 then return end

    if event.buffer and event.buffer.valid then
        event.buffer.insert {name = entity_matching_name, count = required_count}
    end
end

return Public