if mods[hyarion_mods] then
    hyarion_air = "hyarion-air"
    TIMSABA.functions.create_fluids
    ({
        {
            name = hyarion_air,
            subgroup = is_hyarion_air,
            icon = "__TIMSABA__/graphics/icons/hyarion/hyarion-air.png",
            order = a,
            base_color = {r = 168 / 255, g = 168 / 255, b = 168 / 255},
            flow_color = {r = 217 / 255, g = 217 / 255, b = 217 / 255}
        }
    })
    TIMSABA.barreling.add_gas(hyarion_air)

    -- SPACE
    bismuth_oxyselenide = "bismuth-oxyselenide"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "Bi[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]2[/font]Se"} or nil,
            name = bismuth_oxyselenide,
            subgroup = is_space_environment_8,
            icon = "__TIMSABA__/graphics/icons/hyarion/bismuth-oxyselenide.png",
            order = h
        }
    })
end