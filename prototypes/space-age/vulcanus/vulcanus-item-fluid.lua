vulcanus_air = "vulcanus-air"
TIMSABA.functions.create_fluids
({
    {
        name = vulcanus_air,
        subgroup = is_vulcanus_air,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/vulcanus-air.png",
        order = a,
        base_color = {r = 140 / 255, g = 60 / 255, b = 30 / 255},
        flow_color = {r = 150 / 255, g = 65 / 255, b = 40 / 255}
    }
})
TIMSABA.barreling.add_gas(vulcanus_air)