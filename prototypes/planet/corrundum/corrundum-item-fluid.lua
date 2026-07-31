if mods [corrundum_mods] then
    -- CORRUNDUM AIR
    corrundum_air = "corrundum-air"
    TIMSABA.functions.create_fluids
    ({
        {
            name = corrundum_air,
            subgroup = is_corrundum_air,
            icon = "__TIMSABA__/graphics/icons/corrundum/corrundum-air.png",
            order = a,
            base_color = {r = 114 / 255, g = 114 / 255, b = 088 / 255},
            flow_color = {r = 125 / 255, g = 125 / 255, b = 100 / 255}
        }
    })
end