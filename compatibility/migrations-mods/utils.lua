local function migrate_items(replacements)
    -- 1. Быстрая замена в технологиях и рецептах
    for _, force in pairs(game.forces) do
        for old_name, new_name in pairs(replacements) do
            if force.recipes[new_name] and force.recipes[old_name] and force.recipes[old_name].enabled then
                force.recipes[new_name].enabled = true
            end
        end
    end

    -- 2. Глобальный перебор всех поверхностей
    for _, surface in pairs(game.surfaces) do
        -- А. Замена предметов на земле (лут)
        for old_name, new_name in pairs(replacements) do
            local items_on_ground = surface.find_entities_filtered({name = "item-on-ground", to_be_looted = false})
            for _, item in ipairs(items_on_ground) do
                if item.stack and item.stack.valid_for_read and item.stack.name == old_name then
                    local count = item.stack.count
                    local position = item.position
                    item.destroy()
                    surface.create_entity({name = "item-on-ground", position = position, stack = {name = new_name, count = count}})
                end
            end
        end

        -- Б. Замена внутри ВСЕХ сущностей (сундуки, заводы, конвейеры, машины)
        local entities = surface.find_entities()
        for _, entity in ipairs(entities) do
            if entity.valid then
                local inventories = entity.get_inventories()
                for _, inventory in pairs(inventories) do
                    if inventory and inventory.valid then
                        for old_name, new_name in pairs(replacements) do
                            local count = inventory.get_item_count(old_name)
                            if count > 0 then
                                inventory.remove({name = old_name, count = count})
                                inventory.insert({name = new_name, count = count})
                            end
                        end
                    end
                end

                -- В. Специфическая замена для конвейеров
                if entity.type == "transport-belt" or entity.type == "underground-belt" or entity.type == "splitter" then
                    for line_id = 1, entity.get_max_transport_line_index() do
                        ---@type any
                        local current_line_id = line_id
                        local line = entity.get_transport_line(current_line_id)

                        if line and #line > 0 then
                            for i = #line, 1, -1 do
                                local stack = line[i]
                                if stack and stack.valid_for_read then
                                    local new_name = replacements[stack.name]
                                    if new_name then
                                        local count = stack.count
                                        line.remove_item({name = stack.name, count = count})
                                        line.insert_at_back({name = new_name, count = count})
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    -- 3. Замена в инвентарях самих игроков
    for _, player in pairs(game.players) do
        if player.valid then
            local player_inventories = player.get_inventories()
            for _, inventory in pairs(player_inventories) do
                if inventory and inventory.valid then
                    for old_name, new_name in pairs(replacements) do
                        local count = inventory.get_item_count(old_name)
                        if count > 0 then
                            inventory.remove({name = old_name, count = count})
                            inventory.insert({name = new_name, count = count})
                        end
                    end
                end
            end
        end
    end
end

-- КРИТИЧЕСКИ ВАЖНО: возвращаем эту функцию, чтобы её можно было записать в переменную через require
return migrate_items