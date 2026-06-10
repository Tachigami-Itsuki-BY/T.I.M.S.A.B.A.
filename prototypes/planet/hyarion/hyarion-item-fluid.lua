if mods [hyarion_mods] then
    hyarion_air = "hyarion-air"
    data:extend
    ({
        {
            type = fluid,
            name = hyarion_air,
            subgroup = is_hyarion_air,
            icon = "__TIMSABA__/graphics/icons/hyarion/hyarion-air.png",
            order = a,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = {r = 168 / 255, g = 168 / 255, b = 168 / 255},
            flow_color = {r = 217 / 255, g = 217 / 255, b = 217 / 255},
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
            icon = "__TIMSABA__/graphics/icons/hyarion/.png",
            order = ,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = TIMSABA.functions.fluid_color(""),
            flow_color = TIMSABA.functions.flow_color(""),
            max_temperature = 0,
            auto_barrel = false
        }
    })]]

    -- SPACE
    bismuth_oxyselenide = "bismuth-oxyselenide"
    data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, "Bi[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]Se"} or nil,
            type = item,
            name = bismuth_oxyselenide,
            subgroup = is_space_environment_8,
            icon = "__TIMSABA__/graphics/icons/hyarion/bismuth-oxyselenide.png",
            order = h,
            stack_size = 200,
            weight = 5000
        }
    })

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = item,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/hyarion/.png",
            order = ,
            stack_size = 200,
            weight = 5000
        }
    })]]
end