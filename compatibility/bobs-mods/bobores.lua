if mods [bobores] >= "2.1.0" then
    local icon_tungsten_ore = "__TIMSABA__/graphics/icons/angels/metallurgy/tungsten/bob-tungsten-ore"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "W"} or nil,
            name = tungsten_ore_bob,
            subgroup = "angels-tungsten",
            icon = icon_tungsten_ore .. ".png",
            pictures =
            {
                {filename = icon_tungsten_ore .. "-1.png", width = 64, height = 64, scale = 0.5},
                {filename = icon_tungsten_ore .. "-2.png", width = 64, height = 64, scale = 0.5},
                {filename = icon_tungsten_ore .. "-3.png", width = 64, height = 64, scale = 0.5},
                {filename = icon_tungsten_ore .. "-4.png", width = 64, height = 64, scale = 0.5},
                {filename = icon_tungsten_ore .. "-5.png", width = 64, height = 64, scale = 0.5},
                {filename = icon_tungsten_ore .. "-6.png", width = 64, height = 64, scale = 0.5},
                {filename = icon_tungsten_ore .. "-7.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        }
    })
end