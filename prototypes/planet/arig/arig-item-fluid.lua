if mods [arig_mods] then
    heavy_oil_timsaba = "timsaba-heavy-oil"
    TIMSABA.functions.create_fluids
    ({
        {
            name = heavy_oil_timsaba,
            subgroup = is_arig_recipe,
            icon = "__TIMSABA__/graphics/icons/arig/heavy-oil.png",
            order = f,
            base_color = {r = 102 / 255, g = 033 / 255, b = 005 / 255},
            flow_color = {r = 115 / 255, g = 047 / 255, b = 020 / 255}
        }
    })
end