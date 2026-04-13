if mods [muluna_mods] then
    local recipe = "recipe"
    data:extend
    ({
        {
            type = recipe,
            name = "silicon-solar-panel-mk2",
            category = crafting,
            subgroup = is_muluna_recipe_silicon,
            icons = BUILDING_R_IS(solar_panel_2, silicon_cell_mods),
            order = d_a,
            enabled = false,
            auto_recycle = false,
            allow_show = true,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 10,
            ingredients =
            {
                {type = item, name = advanced_circuit, amount = 10},
                {type = item, name = solar_panel_1, amount = 1},
                {type = item, name = aluminium_plate_bob, amount = 5},
                {type = item, name = silicon_cell_mods, amount = 5},
                {type = item, name = silver_plate_bob, amount = 5},
                {type = item, name = tin_cable, amount = 10}
            },
            results = {{type = item, name = solar_panel_2, amount = 1}}
        },
        {
            type = recipe,
            name = "silicon-solar-panel-mk3",
            category = crafting,
            subgroup = is_muluna_recipe_silicon,
            icons = BUILDING_R_IS(solar_panel_3, silicon_cell_mods),
            order = d_b,
            enabled = false,
            auto_recycle = false,
            allow_show = true,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 10,
            ingredients =
            {
                {type = item, name = processing_unit, amount = 10},
                {type = item, name = solar_panel_2, amount = 1},
                {type = item, name = gold_plate_bob, amount = 5},
                {type = item, name = gold_cable, amount = 10},
                {type = item, name = silicon_cell_mods, amount = 5},
                {type = item, name = titanium_plate_bob, amount = 5}
            },
            results = {{type = item, name = solar_panel_3, amount = 1}}
        },
    })
end