-- FLUID
for _, fluid_name in pairs(TIMSABA.void.fluids) do
    if data_fluid[fluid_name] then
        data:extend
        ({
            {
                localised_name = {"recipe-name.void", {"fluid-name." .. fluid_name}},
                type = recipe,
                name = fluid_name .. "-void",
                category = "angels-water-void",
                subgroup = "angels-water-void",
                icons =
                {
                    {icon = deleted_png, icon_size = 64, scale = 0.5},
                    {icon = data_fluid[fluid_name].icon, icon_size = 64, scale = 0.25}
                },
                order = fluid_name .. "-void",
                enabled = true,
                auto_recycle = false,
                allow_productivity = false,
                allow_quality = false,
                allow_decomposition = false,
                hide_from_player_crafting = true,
                energy_required = 4,
                ingredients = {{type = fluid, name = fluid_name, amount = 480}},
                results = {}
            }
        })
    end
end

-- GAS
for _, gas_name in pairs(TIMSABA.void.gases) do
    if data_fluid[gas_name] then
        data:extend
        ({
            {
                localised_name = {"recipe-name.void", {"fluid-name." .. gas_name}},
                type = recipe,
                name = gas_name .. "-void",
                category = "angels-chemical-void",
                subgroup = "angels-chemical-void",
                icons =
                {
                    {icon = deleted_png, icon_size = 64, scale = 0.5},
                    {icon = data_fluid[gas_name].icon, icon_size = 64, scale = 0.25}
                },
                order = gas_name .. "-void",
                enabled = true,
                auto_recycle = false,
                allow_productivity = false,
                allow_quality = false,
                allow_decomposition = false,
                hide_from_player_crafting = true,
                energy_required = 1,
                ingredients = {{type = fluid, name = gas_name, amount = 60}},
                results = {}
            }
        })
    end
end

-- COMPOST
for _, organic_name in pairs(TIMSABA.void.organics) do
    if data_item[organic_name] or data_capsule[organic_name] then
        data:extend
        ({
            {
                localised_name = {"recipe-name.compost", {"item-name." .. organic_name}},
                type = recipe,
                name = organic_name .. "-compost",
                category = "angels-bio-void",
                subgroup = "angels-bio-void",
                icons = TWO_I(organic_name, compost_angels),
                order = organic_name .. "-compost",
                enabled = true,
                auto_recycle = false,
                allow_productivity = false,
                allow_quality = false,
                allow_decomposition = false,
                hide_from_player_crafting = true,
                energy_required = 1,
                ingredients = {{type = item, name = organic_name, amount = 1}},
                results = {{type = item, name = compost_angels, amount = 1}},
                main_product = compost_angels
            }
        })
    end
end