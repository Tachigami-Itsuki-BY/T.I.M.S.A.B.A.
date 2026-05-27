if script.active_mods["planet-muluna"] then
    local function clear_and_fill_timsaba_loot(surface)
        local remove_pods = settings.startup["muluna-hardcore-remove-starting-cargo-pods"]
        if remove_pods and remove_pods.value == true then
            local pods = surface.find_entities_filtered{name = "fulgoran-cargo-pod-container"}
            for _, pod in pairs(pods) do if pod.valid then pod.destroy() end end
            return
        end

        local pods = surface.find_entities_filtered{name = "fulgoran-cargo-pod-container"}
        if #pods == 0 then return end

        local item_multiplier = tonumber(settings.startup["muluna-balance-fulgoran-cargo-drop-item-multiplier"] and settings.startup["muluna-balance-fulgoran-cargo-drop-item-multiplier"].value) or 1

        local guaranteed_loot =
        {
            {name = "steel-plate", min = 128, max = 256},
            {name = "bob-basic-circuit-board", min = 32, max = 64},
            {name = "bob-glass", min = 128, max = 256},
            {name = "tree-seed", min = 32, max = 64},
            {name = "wood", min = 128, max = 256}
        }

        local random_loot_table =
        {
            {name = "engine-unit", min = 4, max = 8},
            {name = "small-lamp", min = 4, max = 8},
            {name = "plastic-bar", min = 16, max = 32},
            {name = "bob-electric-chemical-mixing-furnace-2", min = 4, max = 8},
            {name = "bob-mining-drill-4", min = 4, max = 8},
            {name = "molybdenum-rhenium-pipe", min = 64, max = 128},
            {name = "molybdenum-rhenium-pipe-to-ground", min = 8, max = 16},
            {name = "angels-chemical-plant-4", min = 4, max = 8},
            {name = "ore-crusher-4", min = 4, max = 8},
            {name = "solar-panel-large-4", min = 4, max = 8}
        }

        if prototypes.item["bob-medium-electric-pole-4"] then
            table.insert(random_loot_table, {name = "bob-medium-electric-pole-4", min = 8, max = 16})
        else
            table.insert(random_loot_table, {name = "medium-electric-pole", min = 32, max = 64})
        end

        for i = #guaranteed_loot, 2, -1 do
            local j = math.random(i)
            guaranteed_loot[i], guaranteed_loot[j] = guaranteed_loot[j], guaranteed_loot[i]
        end

        for index, pod in pairs(pods) do
            if pod.valid then
                local inventory = pod.get_output_inventory()
                if inventory then
                    inventory.clear()

                    local lucky_loot = nil

                    if index <= #guaranteed_loot then
                        lucky_loot = guaranteed_loot[index]
                    else
                        lucky_loot = random_loot_table[math.random(1, #random_loot_table)]
                    end

                    if lucky_loot and prototypes.item[lucky_loot.name] then
                        local count = math.random(lucky_loot.min, lucky_loot.max) * item_multiplier
                        local amount = math.floor(count)
                        if amount <= 0 then amount = 1 end

                        inventory.insert({name = lucky_loot.name, count = amount})
                    else
                        log("[TIMSABA ERROR] Failed to issue item due to missing prototype: " .. tostring(lucky_loot and lucky_loot.name))
                    end
                end
            end
        end
        log("[TIMSABA] Muluna containers redistributed. Guaranteed loot (Steel, Glass, Circuit Boards) successfully awarded.")
    end

    local function on_surface_created(event)
        local surface = game.get_surface(event.surface_index)
        if surface and surface.name == "muluna" then
            clear_and_fill_timsaba_loot(surface)
        end
    end

    return {on_surface_created = on_surface_created}
end