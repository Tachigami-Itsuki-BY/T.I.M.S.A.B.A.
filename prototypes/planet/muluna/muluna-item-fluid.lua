if mods [muluna_mods] then
    data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, "Al"} or nil,
            type = item,
            name = aluminium_cable,
            subgroup = is_muluna_recipe_anorthite,
            icon = "__TIMSABA__/graphics/icons/muluna/aluminium-cable.png",
            order = d,
            stack_size = 200,
            weight = 5000
        }
    })
end

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = item,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/muluna/.png",
            order = ,
            stack_size = 200,
            weight = 5000
        }
    })]]

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = fluid,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/muluna/.png",
            order = ,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = TIMSABA.functions.fluid_color(""),
            flow_color = TIMSABA.functions.flow_color(""),
            max_temperature = 0,
            auto_barrel = false
        }
    })]]