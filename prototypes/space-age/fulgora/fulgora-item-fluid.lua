-- AIR
fulgora_air = "fulgora-air"
TIMSABA.functions.create_fluids
({
    {
        name = fulgora_air,
        subgroup = is_fulgora_air,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/fulgora-air.png",
        order = a,
        base_color = {r = 86 / 255, g = 32 / 255, b = 56 / 255},
        flow_color = {r = 96 / 255, g = 42 / 255, b = 66 / 255}
    }
})
TIMSABA.barreling.add_gas(fulgora_air)

-- SCRAP
construction_scrap = "construction-scrap"
machinery_scrap = "machinery-scrap"
TIMSABA.functions.create_items
({
    {
        name = construction_scrap,
        subgroup = is_scrap,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/construction-scrap.png",
        order = b
    },
    {
        name = machinery_scrap,
        subgroup = is_scrap,
        icon = "__TIMSABA__/graphics/icons/space-age/fulgora/machinery-scrap.png",
        order = c
    }
})