if mods [panglia_mods] then
    electronic_circuit_from_panglite_fiber = "electronic-circuit-from-panglite-fiber"
    processing_unit_from_panglite_fiber = "processing-unit-from-panglite-fiber"
    advanced_processing_unit_from_panglite_fiber = "advanced-processing-unit-from-panglite-fiber"
    data:extend
    ({
        {
            type = recipe,
            name = electronic_circuit_from_panglite_fiber,
            category = electronics,
            subgroup = is_panglia_recipe,
            icons = BUILDING_R_I(electronic_circuit, panglite_fiber),
            order = g_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 32,
            ingredients =
            {
                {type = item, name = resistor, amount = 4},
                {type = item, name = solder, amount = 2},
                {type = item, name = panglite_fiber, amount = 2}
            },
            results = {{type = item, name = electronic_circuit, amount = 1}},
            main_product = electronic_circuit,
            surface_conditions = {{property = pressure, max = 1401, min = 1401}}
        },
        {
            type = recipe,
            name = processing_unit_from_panglite_fiber,
            category = electronics,
            subgroup = is_panglia_recipe,
            icons = BUILDING_R_I(processing_unit, panglite_fiber),
            order = g_c,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 32,
            ingredients =
            {
                {type = item, name = resistor, amount = 8},
                {type = item, name = transistor, amount = 8},
                {type = item, name = integrated_circuit, amount = 4},
                {type = item, name = solder, amount = 4},
                {type = item, name = panglite_fiber, amount = 2}
            },
            results = {{type = item, name = processing_unit, amount = 1}},
            main_product = processing_unit,
            surface_conditions = {{property = pressure, max = 1401, min = 1401}}
        },
        {
            type = recipe,
            name = advanced_processing_unit_from_panglite_fiber,
            category = electronics,
            subgroup = is_panglia_recipe,
            icons = BUILDING_R_I(advanced_processing_unit, panglite_fiber),
            order = g_d,
            enabled = false,
            auto_recycle = false,
            allow_productivity = true,
            allow_quality = true,
            allow_decomposition = false,
            energy_required = 32,
            ingredients =
            {
                {type = item, name = resistor, amount = 8},
                {type = item, name = transistor, amount = 8},
                {type = item, name = integrated_circuit, amount = 8},
                {type = item, name = CPU, amount = 4},
                {type = item, name = solder, amount = 8},
                {type = item, name = panglite_fiber, amount = 2}
            },
            results = {{type = item, name = advanced_processing_unit, amount = 1}},
            main_product = advanced_processing_unit,
            surface_conditions = {{property = pressure, max = 1401, min = 1401}}
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