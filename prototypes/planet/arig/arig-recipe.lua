if mods [arig_mods] then
    data:extend
    ({
        {
            type = recipe,
            name = sand_arig,
            category = angels_petrochem_air_filtering,
            subgroup = is_arig_recipe,
            order = c,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = sand_arig, amount = 240}},
            main_product = sand_arig,
            surface_conditions = {{property = pressure, min = 600, max = 600}}
        },
        {
            type = recipe,
            name = pure_sand_arig,
            category = angels_petrochem_air_filtering,
            subgroup = is_arig_recipe,
            icons = TWO_I(sand_arig, pure_sand_arig),
            order = d,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4,
            ingredients =
            {
                {type = fluid, name = sand_arig, amount = 30},
                {type = item, name = filter_coal, amount = 1}
            },
            results =
            {
                {type = fluid, name = pure_sand_arig, amount = 30},
                {type = item, name = filter_frame, amount = 1}
            },
            main_product = pure_sand_arig,
            surface_conditions = {{property = pressure, min = 600, max = 600}}
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

    -- WATER HARVESTING CONFIG
    moshine_water_harvesting = "moshine-water-harvesting"
    panglia_water_harvesting = "panglia-water-harvesting"
    local water_planets =
    {
        [moshine_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.moshine"}},
            name = moshine_water_harvesting,
            planet = planet_moshine,
            order = a_e,
            amount = 15,
            surface_conditions = {{property = pressure, min = 701, max = 701}}
        },
        [panglia_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.panglia"}},
            name = panglia_water_harvesting,
            planet = planet_panglia,
            order = b_a,
            amount = 480,
            surface_conditions = {{property = pressure, max = 1401, min = 1401}}
        }
    }

    -- RECIPE GENERATION
    for mod_name, config in pairs(water_planets) do
        if mods[mod_name] then
            data:extend
            ({
                {
                    localised_name = config.localised_name,
                    type = recipe,
                    name = config.name,
                    category = water_production,
                    subgroup = is_arig_water,
                    icons = BUILDING_R_I(water, config.planet),
                    order = config.order,
                    enabled = false,
                    auto_recycle = false,
                    allow_productivity = true,
                    allow_quality = false,
                    allow_decomposition = false,
                    energy_required = 16,
                    ingredients = {},
                    results = {{type = fluid, name = water, amount = config.amount}},
                    main_product = water,
                    surface_conditions = config.surface_conditions
                }
            })
        end
    end
end