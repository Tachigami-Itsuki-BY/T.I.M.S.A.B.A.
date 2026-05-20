if mods [muluna_mods] then
    space_science_pack_muluna = "space-science-pack-muluna"
    silicon_solar_panel_small_1 = "muluna-silicon-solar-panel-small-1"
    silicon_solar_panel_small_2 = "muluna-silicon-solar-panel-small-2"
    silicon_solar_panel_small_3 = "muluna-silicon-solar-panel-small-3"
    silicon_solar_panel_small_4 = "muluna-silicon-solar-panel-small-4"
    silicon_solar_panel_2 = "muluna-silicon-solar-panel-2"
    silicon_solar_panel_3 = "muluna-silicon-solar-panel-3"
    silicon_solar_panel_4 = "muluna-silicon-solar-panel-4"
    silicon_solar_panel_large_1 = "muluna-silicon-solar-panel-large-1"
    silicon_solar_panel_large_2 = "muluna-silicon-solar-panel-large-2"
    silicon_solar_panel_large_3 = "muluna-silicon-solar-panel-large-3"
    silicon_solar_panel_large_4 = "muluna-silicon-solar-panel-large-4"
    data:extend
    ({
        -- LUNAR REGOLITH
        {
            type = recipe,
            name = lunar_regolith,
            category = "ground-digging",
            subgroup = is_muluna_crushing,
            icon = data_item[lunar_regolith].icon,
            order = a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            always_show_products = true,
            energy_required = 1,
            ingredients = {},
            results = {{type = item, name = lunar_regolith, amount = 1}},
            main_product = lunar_regolith
        },
        -- RECIPE ANORTHITE
        {
            type = recipe,
            name = alumina_crushed,
            category = crushing,
            subgroup = is_muluna_recipe_anorthite,
            icons = TWO_I(aluminium_oxide, alumina_crushed),
            order = a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4,
            ingredients = {{type = item, name = aluminium_oxide, amount = 1}},
            results = {{type = item, name = alumina_crushed, amount = 1}},
            main_product = alumina_crushed
        },
        {
            type = recipe,
            name = aluminium_plate_crushed,
            category = crushing,
            subgroup = is_muluna_recipe_anorthite,
            icons = TWO_I(aluminium_plate_bob, aluminium_plate_crushed),
            order = c,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4,
            ingredients = {{type = item, name = aluminium_plate_bob, amount = 1}},
            results = {{type = item, name = aluminium_plate_crushed, amount = 1}},
            main_product = aluminium_plate_crushed
        },
        -- SOLAR PANELS
        -- SMALL
        {
            localised_name = {"recipe-name.muluna-silicon-solar-panel-small-1"},
            type = recipe,
            name = silicon_solar_panel_small_1,
            category = crafting,
            subgroup = is_muluna_SPS_silicon,
            icons = BUILDING_R_IS(solar_panel_small_1, silicon_cell_mods),
            order = a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = electronic_circuit, amount = 4},
                {type = item, name = steel_plate, amount = 4},
                {type = item, name = aluminium_cable, amount = 4},
                {type = item, name = glass_bob, amount = 4},
                {type = item, name = silicon_cell_mods, amount = 4},
                {type = item, name = copper_plate, amount = 4}
            },
            results = {{type = item, name = solar_panel_small_1, amount = 1}},
            surface_conditions =
            {
                {property = gravity, max = 0.1, min = 0.1},
                {property = pressure, max = 0}
            }
        },
        {
            localised_name = {"recipe-name.muluna-silicon-solar-panel-small-2"},
            type = recipe,
            name = silicon_solar_panel_small_2,
            category = crafting,
            subgroup = is_muluna_SPS_silicon,
            icons = BUILDING_R_IS(solar_panel_small_2, silicon_cell_mods),
            order = b,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = advanced_circuit, amount = 4},
                {type = item, name = aluminium_plate_bob, amount = 4},
                {type = item, name = silver_cable, amount = 4},
                {type = item, name = solar_panel_small_1, amount = 1},
                {type = item, name = silicon_cell_mods, amount = 4},
                {type = item, name = silver_plate_bob, amount = 4}
            },
            results = {{type = item, name = solar_panel_small_2, amount = 1}},
            surface_conditions =
            {
                {property = gravity, max = 0.1, min = 0.1},
                {property = pressure, max = 0}
            } 
        },
        {
            localised_name = {"recipe-name.muluna-silicon-solar-panel-small-3"},
            type = recipe,
            name = silicon_solar_panel_small_3,
            category = crafting,
            subgroup = is_muluna_SPS_silicon,
            icons = BUILDING_R_IS(solar_panel_small_3, silicon_cell_mods),
            order = c,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = processing_unit, amount = 4},
                {type = item, name = titanium_plate_bob, amount = 4},
                {type = item, name = gold_cable, amount = 4},
                {type = item, name = solar_panel_small_2, amount = 1},
                {type = item, name = silicon_cell_mods, amount = 4},
                {type = item, name = gold_plate_bob, amount = 4}
            },
            results = {{type = item, name = solar_panel_small_3, amount = 1}},
            surface_conditions =
            {
                {property = gravity, max = 0.1, min = 0.1},
                {property = pressure, max = 0}
            }
        },
        {
            localised_name = {"recipe-name.muluna-silicon-solar-panel-small-4"},
            type = recipe,
            name = silicon_solar_panel_small_4,
            category = crafting,
            subgroup = is_muluna_SPS_silicon,
            icons = BUILDING_R_IS(solar_panel_small_4, silicon_cell_mods),
            order = d,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 1,
            ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 4},
                {type = item, name = nitinol_plate_bob, amount = 4},
                {type = item, name = platinum_cable, amount = 4},
                {type = item, name = solar_panel_small_3, amount = 1},
                {type = item, name = silicon_cell_mods, amount = 4},
                {type = item, name = platinum_plate, amount = 4}
            },
            results = {{type = item, name = solar_panel_small_4, amount = 1}},
            surface_conditions =
            {
                {property = gravity, max = 0.1, min = 0.1},
                {property = pressure, max = 0}
            }
        },
        -- MEDIUM
        {
            localised_name = {"recipe-name.muluna-silicon-solar-panel-2"},
            type = recipe,
            name = silicon_solar_panel_2,
            category = crafting,
            subgroup = is_muluna_SPM_silicon,
            icons = BUILDING_R_IS(solar_panel_2, silicon_cell_mods),
            order = b,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 2,
            ingredients =
            {
                {type = item, name = advanced_circuit, amount = 8},
                {type = item, name = aluminium_plate_bob, amount = 8},
                {type = item, name = silver_cable, amount = 8},
                {type = item, name = solar_panel_1, amount = 1},
                {type = item, name = silicon_cell_mods, amount = 8},
                {type = item, name = silver_plate_bob, amount = 8}
            },
            results = {{type = item, name = solar_panel_2, amount = 1}},
            surface_conditions =
            {
                {property = gravity, max = 0.1, min = 0.1},
                {property = pressure, max = 0}
            } 
        },
        {
            localised_name = {"recipe-name.muluna-silicon-solar-panel-3"},
            type = recipe,
            name = silicon_solar_panel_3,
            category = crafting,
            subgroup = is_muluna_SPM_silicon,
            icons = BUILDING_R_IS(solar_panel_3, silicon_cell_mods),
            order = c,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 2,
            ingredients =
            {
                {type = item, name = processing_unit, amount = 8},
                {type = item, name = titanium_plate_bob, amount = 8},
                {type = item, name = gold_cable, amount = 8},
                {type = item, name = solar_panel_2, amount = 1},
                {type = item, name = silicon_cell_mods, amount = 8},
                {type = item, name = gold_plate_bob, amount = 8}
            },
            results = {{type = item, name = solar_panel_3, amount = 1}},
            surface_conditions =
            {
                {property = gravity, max = 0.1, min = 0.1},
                {property = pressure, max = 0}
            }
        },
        {
            localised_name = {"recipe-name.muluna-silicon-solar-panel-4"},
            type = recipe,
            name = silicon_solar_panel_4,
            category = crafting,
            subgroup = is_muluna_SPM_silicon,
            icons = BUILDING_R_IS(solar_panel_4, silicon_cell_mods),
            order = d,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 2,
            ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 8},
                {type = item, name = nitinol_plate_bob, amount = 8},
                {type = item, name = platinum_cable, amount = 8},
                {type = item, name = solar_panel_3, amount = 1},
                {type = item, name = silicon_wafer, amount = 8},
                {type = item, name = platinum_plate, amount = 8}
            },
            results = {{type = item, name = solar_panel_4, amount = 1}},
            surface_conditions =
            {
                {property = gravity, max = 0.1, min = 0.1},
                {property = pressure, max = 0}
            }
        },
        -- LARGE
        {
            localised_name = {"recipe-name.muluna-silicon-solar-panel-large-1"},
            type = recipe,
            name = silicon_solar_panel_large_1,
            category = crafting,
            subgroup = is_muluna_SPL_silicon,
            icons = BUILDING_R_IS(solar_panel_large_1, silicon_cell_mods),
            order = a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = electronic_circuit, amount = 16},
                {type = item, name = steel_plate, amount = 16},
                {type = item, name = aluminium_cable, amount = 16},
                {type = item, name = glass_bob, amount = 16},
                {type = item, name = silicon_cell_mods, amount = 16},
                {type = item, name = copper_plate, amount = 16}
            },
            results = {{type = item, name = solar_panel_large_1, amount = 1}},
            surface_conditions =
            {
                {property = gravity, max = 0.1, min = 0.1},
                {property = pressure, max = 0}
            }
        },
        {
            localised_name = {"recipe-name.muluna-silicon-solar-panel-large-2"},
            type = recipe,
            name = silicon_solar_panel_large_2,
            category = crafting,
            subgroup = is_muluna_SPL_silicon,
            icons = BUILDING_R_IS(solar_panel_large_2, silicon_cell_mods),
            order = b,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = advanced_circuit, amount = 16},
                {type = item, name = aluminium_plate_bob, amount = 16},
                {type = item, name = silver_cable, amount = 16},
                {type = item, name = solar_panel_large_1, amount = 1},
                {type = item, name = silicon_cell_mods, amount = 16},
                {type = item, name = silver_plate_bob, amount = 16}
            },
            results = {{type = item, name = solar_panel_large_2, amount = 1}},
            surface_conditions =
            {
                {property = gravity, max = 0.1, min = 0.1},
                {property = pressure, max = 0}
            }
        },
        {
            localised_name = {"recipe-name.muluna-silicon-solar-panel-large-3"},
            type = recipe,
            name = silicon_solar_panel_large_3,
            category = crafting,
            subgroup = is_muluna_SPL_silicon,
            icons = BUILDING_R_IS(solar_panel_large_3, silicon_cell_mods),
            order = c,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = processing_unit, amount = 16},
                {type = item, name = titanium_plate_bob, amount = 16},
                {type = item, name = gold_cable, amount = 16},
                {type = item, name = solar_panel_large_2, amount = 1},
                {type = item, name = silicon_cell_mods, amount = 16},
                {type = item, name = gold_plate_bob, amount = 16}
            },
            results = {{type = item, name = solar_panel_large_3, amount = 1}},
            surface_conditions =
            {
                {property = gravity, max = 0.1, min = 0.1},
                {property = pressure, max = 0}
            }
        },
        {
            localised_name = {"recipe-name.muluna-silicon-solar-panel-large-4"},
            type = recipe,
            name = silicon_solar_panel_large_4,
            category = crafting,
            subgroup = is_muluna_SPL_silicon,
            icons = BUILDING_R_IS(solar_panel_large_4, silicon_cell_mods),
            order = d,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 16},
                {type = item, name = nitinol_plate_bob, amount = 16},
                {type = item, name = platinum_cable, amount = 16},
                {type = item, name = solar_panel_large_3, amount = 1},
                {type = item, name = silicon_cell_mods, amount = 16},
                {type = item, name = platinum_plate, amount = 16}
            },
            results = {{type = item, name = solar_panel_large_4, amount = 1}},
            surface_conditions =
            {
                {property = gravity, max = 0.1, min = 0.1},
                {property = pressure, max = 0}
            }
        },
        -- HEAT
        {
            type = recipe,
            name = heat,
            category = vacuum_heating_tower,
            subgroup = is_muluna_heating,
            icons = THREE_R_I(oxygen_angels, heat, carbon_dioxide_angels),
            order = a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4,
            ingredients = {{type = fluid, name = oxygen_angels, amount = 60}},
            results =
            {
                {type = fluid, name = heat, amount = 30, temperature = 915},
                {type = fluid, name = carbon_dioxide_angels, amount = 60}
            },
            main_product = heat
        }
    })

    --[[data:extend
    ({
        {
            type = recipe,
            name = ,
            category = ,
            subgroup = ,
            icons = ,
            order = ,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = ,
            ingredients = {{type = , name = , amount = }},
            results = {{type = , name = , amount = }},
            main_product = 
        }
    })]]

    -- SPACE
    anorthite_crushing_2 = "anorthite-crushing-2"
    anorthite_crushing_3 = "anorthite-crushing-3"
    data:extend
    ({
        {
            type = recipe,
            name = anorthite_crushing_2,
            category = crushing,
            subgroup = is_space_environment_7,
            icons = TWO_I(anorthite_chunk, lime_angels),
            order = e_b,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 4,
            ingredients = {{type = item, name = anorthite_chunk, amount = 1}},
            results = {{type = item, name = lime_angels, amount = 8}},
            main_product = lime_angels
        },
        {
            type = recipe,
            name = anorthite_crushing_3,
            category = crushing,
            subgroup = is_space_environment_7,
            icons = TWO_I(anorthite_chunk, silicon_ore_bob),
            order = e_c,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 4,
            ingredients = {{type = item, name = anorthite_chunk, amount = 1}},
            results = {{type = item, name = silicon_ore_bob, amount = 8}},
            main_product = silicon_ore_bob
        }
    })

    --[[data:extend
    ({
        {
            type = recipe,
            name = ,
            category = ,
            subgroup = ,
            icons = ,
            order = ,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = ,
            ingredients = {{type = , name = , amount = }},
            results = {{type = , name = , amount = }},
            main_product = 
        }
    })]]
end
