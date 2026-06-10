if mods [arig_mods] then
    heavy_oil_timsaba = "timsaba-heavy-oil"
    data:extend
    ({
        {
            type = fluid,
            name = heavy_oil_timsaba,
            subgroup = is_arig_recipe,
            icon = "__TIMSABA__/graphics/icons/arig/heavy-oil.png",
            order = g,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = {r = 102 / 255, g = 033 / 255, b = 005 / 255},
            flow_color = {r = 115 / 255, g = 047 / 255, b = 020 / 255},
            max_temperature = 0,
            auto_barrel = false
        }
    })

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = fluid,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/arig/.png",
            order = ,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = TIMSABA.functions.fluid_color(""),
            flow_color = TIMSABA.functions.flow_color(""),
            max_temperature = 0,
            auto_barrel = false
        }
    })]]
end