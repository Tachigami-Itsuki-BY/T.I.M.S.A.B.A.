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
            -- ЗАЩИТА 2.0: Проверяем через глобальный реестр прототипов, существуют ли имена
            if prototypes.item[old_name] and prototypes.item[new_name] then
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
        end

        local entities = surface.find_entities()
        for _, entity in ipairs(entities) do
            if entity.valid then
                local entity_name_replacement = replacements[entity.name]

                -- 1. Сначала проверяем: нужно ли заменить само здание/ленту на карте
                if entity_name_replacement and prototypes.entity[entity_name_replacement] then
                    local t = entity.type

                    if t == "transport-belt"
                    or t == "underground-belt"
                    or t == "splitter"
                    or t == "pipe"
                    or t == "pipe-to-ground"
                    then
                        -- Умная замена старой постройки на новую
                        surface.fast_replace
                        ({
                            entity = entity,
                            name = entity_name_replacement,
                            force = entity.force,
                            fast_replace = true,
                            spill = false
                        })

                        -- КРИТИЧЕСКИ ВАЖНО: Старый объект уничтожен.
                        goto continue
                    end
                end

                -- 2. Замена внутри ВСЕХ инвентарей сущности
                for _, inv_type in pairs(defines.inventory) do
                    local inventory = entity.get_inventory(inv_type)
                    if inventory and inventory.valid then
                        for old_name, new_name in pairs(replacements) do
                            -- ИСПРАВЛЕНО ДЛЯ 2.0: Жесткая проверка по базе прототипов предметов
                            -- Если предмета 'bob-tungsten-ore' нет в игре, get_item_count не вызовется и игра не упадет
                            if prototypes.item[old_name] and prototypes.item[new_name] then
                                local count = inventory.get_item_count(old_name)
                                if count > 0 then
                                    inventory.remove({name = old_name, count = count})
                                    inventory.insert({name = new_name, count = count})
                                end
                            end
                        end
                    end
                end

                -- 3. Специфическая замена для жидкостей
                if entity.fluidbox and #entity.fluidbox > 0 then
                    for fb_id = 1, #entity.fluidbox do
                        local fluid = entity.fluidbox[fb_id]
                        if fluid then
                            local new_fluid_name = replacements[fluid.name]
                            if new_fluid_name and prototypes.fluid[new_fluid_name] then
                                fluid.name = new_fluid_name
                                entity.fluidbox[fb_id] = fluid
                            end
                        end
                    end
                end

                -- 4. Специфическая замена для конвейеров
                if entity.type == "transport-belt" or entity.type == "underground-belt" or entity.type == "splitter" then
                    for line_id = 1, entity.get_max_transport_line_index() do
                        ---@type defines.transport_line
                        local current_line_id = line_id
                        local line = entity.get_transport_line(current_line_id)

                        if line and #line > 0 then
                            for i = 1, #line do
                                local stack = line[i]
                                if stack and stack.valid_for_read then
                                    local item_name_replacement = replacements[stack.name]
                                    if item_name_replacement and prototypes.item[item_name_replacement] then
                                        stack.set_name(item_name_replacement)
                                    end
                                end
                            end
                        end
                    end
                end

                ::continue::
            end
        end
    end

    -- 3. Замена в инвентарях самих игроков (ИСПРАВЛЕНО ДЛЯ 2.0+)
    for _, player in pairs(game.players) do
        if player.valid then
            -- Собираем список всех возможных инвентарей, которые могут быть у игрока
            local inventories_to_check = {}

            -- Основной инвентарь игрока (работает даже в режиме бога / remote controller)
            local main_inv = player.get_main_inventory()
            if main_inv then table.insert(inventories_to_check, main_inv) end

            -- Инвентари физического персонажа (если игрок им управляет)
            if player.character and player.character.valid then
                local character_inventories =
                {
                    defines.inventory.character_armor,   -- Броня
                    defines.inventory.character_guns,    -- Оружие
                    defines.inventory.character_ammo,    -- Патроны
                    defines.inventory.character_trash    -- Корзина логистики
                }
                for _, inv_id in ipairs(character_inventories) do
                    local inv = player.get_inventory(inv_id)
                    if inv then table.insert(inventories_to_check, inv) end
                end
            end

            -- Перебираем собранные инвентари и безопасно меняем предметы
            for _, inventory in ipairs(inventories_to_check) do
                if inventory.valid then
                    for old_name, new_name in pairs(replacements) do
                        if prototypes.item[old_name] and prototypes.item[new_name] then
                            local count = inventory.get_item_count(old_name)
                            if count > 0 then
                                -- Используем remove/insert для конкретного инвентаря
                                local removed = inventory.remove({name = old_name, count = count})
                                if removed > 0 then
                                    inventory.insert({name = new_name, count = removed})
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

return migrate_items