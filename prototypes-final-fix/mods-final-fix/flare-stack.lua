if mods["Flare Stack"] then
    for recipe_name, recipe in pairs(data.raw.recipe) do
        local is_flaring = recipe_name:find("-flaring")
        local is_incineration = recipe_name:find("-incineration")
        if is_flaring or is_incineration then
            if is_flaring then
                data.raw.recipe[recipe_name] = nil
            elseif is_incineration then
                local ingredient = recipe.ingredients and (recipe.ingredients[1] or recipe.ingredients)
                if ingredient then
                    local item_name = ingredient.name or ingredient[1]
                    local item = data.raw.item[item_name]
                    if not item or (not item.fuel_value and item.name ~= "wood") then
                        data.raw.recipe[recipe_name] = nil
                    end
                else
                    data.raw.recipe[recipe_name] = nil
                end
            end
        end
    end

    local flare_stack = "flare-stack"
    data_item[flare_stack] = nil
    data_recipe[flare_stack] = nil
    data_furnace[flare_stack] = nil

    data_recipe["flare-stack-recycling"] = nil

    data_technology["flare-stack-fluid-venting-tech"] = nil

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

    if mods [panglia_mods] then data_recipe["item-flare-stack-panglia_crushing"] = nil end
end