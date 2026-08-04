if mods["Flare Stack"] then
    if settings.startup[setting_real_incineration].value then
        local allowed_incineration =
        {
            [wooden_chest] = true,
            [small_electric_pole] = true,
            [wooden_board] = true,
            [basic_circuit_board] = true,
            --[] = true,
        }

        local deleted_fuels =
        {
            [uranium_234_fuel_cell] = true,
            [uranium_235_fuel_cell] = true,
            [mixed_oxide_fuel_cell] = true,
            [thorium_fuel_cell] = true,
            [deuterium_fuel_cell] = true,
            [tritium_fuel_cell] = true,
            [rocket_booster_angels] = true,
            [rocket_fuel] = true,
            [nuclear_fuel] = true,
            [plutonium_fuel_angels] = true,
            [fusion_fuel_angels] = true,
            [fusion_power_cell] = true,
            [nutrients] = true,
            --[] = true,
        }

        if mods[panglia_mods] then
            deleted_fuels[space_train_battery_pack] = true
        end

        for recipe_name, recipe in pairs(data_recipe) do
            local is_flaring = recipe_name:find("-flaring")
            local is_incineration = recipe_name:find("-incineration")
            if is_flaring or is_incineration then
                if is_flaring then
                    data_recipe[recipe_name] = nil
                elseif is_incineration then
                    local ingredient = recipe.ingredients and (recipe.ingredients[1] or recipe.ingredients)
                    if ingredient then
                        local item_name = ingredient.name or ingredient[1]
                        local item = data_item[item_name]

                        if allowed_incineration[item_name] then
                            -- Рецепт остается, ничего не делаем
                        else
                            -- Условие удаление рецепта:
                                -- 1. Предмета нет в базе [not item]
                                -- 2. ИЛИ у него нет fuel_value (и это не дерево)
                                -- 3. ИЛИ его имя находится в нашем списке deleted_fuels
                            if not item or (not item.fuel_value and item.name ~= "wood") or deleted_fuels[item_name] then
                                data_recipe[recipe_name] = nil
                            end
                        end
                    else
                        data_recipe[recipe_name] = nil
                    end
                end
            end
        end
    end

    local flare_stack = "flare-stack"
    data_item[flare_stack] = nil
    data_recipe[flare_stack] = nil
    data_recipe[flare_stack .. _recycling] = nil
    if mods[panglia_mods] then
        data_recipe[item_ .. flare_stack .. _panglia_crushing] = nil
    end
    data_furnace[flare_stack] = nil

    data_technology[flare_stack .. "-fluid-venting-tech"] = nil

    if settings.startup["flare-stack-disable-incinerators"].value == false then
        local is_flare_stack = "is-flare-stack"
        data:extend
        ({
            {
                type = item_subgroup,
                name = is_flare_stack,
                group = "production",
                order = z
            }
        })

        local incinerator = "incinerator"
        data_item[incinerator].subgroup = is_flare_stack
        data_item[incinerator].order = a
        data_item[incinerator].stack_size = 32
        data_item[incinerator].weight = 31250
        data_recipe[incinerator].subgroup = is_flare_stack
        data_recipe[incinerator].order = a
        data_recipe[incinerator].ingredients =
        {
            {type = item, name = iron_gear_wheel, amount = 4},
            {type = item, name = iron_pipe, amount = 4},
            {type = item, name = basic_circuit_board, amount = 2},
            {type = item, name = stone_furnace, amount = 1}
        }
        data_furnace[incinerator].subgroup = is_flare_stack
        data_furnace[incinerator].order = a
        data_furnace[incinerator].energy_usage = 450 .. kW
        data_furnace[incinerator].energy_source.fuel_categories = {base_fuel}

        local electric_incinerator = "electric-incinerator"
        data_item[electric_incinerator].subgroup = is_flare_stack
        data_item[electric_incinerator].order = b
        data_item[electric_incinerator].stack_size = 32
        data_item[electric_incinerator].weight = 31250
        data_recipe[electric_incinerator].subgroup = is_flare_stack
        data_recipe[electric_incinerator].order = b
        data_recipe[electric_incinerator].ingredients =
        {
            {type = item, name = steel_gear_wheel, amount = 4},
            {type = item, name = steel_pipe, amount = 4},
            {type = item, name = electronic_circuit, amount = 2},
            {type = item, name = steel_furnace, amount = 1},
            {type = item, name = incinerator, amount = 1}
        }
        data_furnace[electric_incinerator].subgroup = is_flare_stack
        data_furnace[electric_incinerator].order = b
        data_furnace[electric_incinerator].energy_usage = (240 - 15) .. kW
        data_furnace[electric_incinerator].energy_source.drain = 15 .. kW

        bobmods.lib.recipe.update_recycling_recipe({incinerator, electric_incinerator})
    end
end