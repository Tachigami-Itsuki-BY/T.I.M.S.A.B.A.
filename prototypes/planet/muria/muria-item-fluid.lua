if mods[muria_mods] then
    -- MRUIA AIR
    muria_air = "muria-air"
    TIMSABA.functions.create_fluids
    ({
        {
            name = muria_air,
            subgroup = is_muria_air,
            icon = "__TIMSABA__/graphics/icons/muria/muria-air.png",
            order = a,
            base_color = {r = 081 / 255, g = 179 / 255, b = 055 / 255},
            flow_color = {r = 090 / 255, g = 190 / 255, b = 065 / 255}
        }
    })
    TIMSABA.barreling.add_gas(muria_air)
end