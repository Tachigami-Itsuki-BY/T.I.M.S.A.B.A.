if mods[arig_mods] then
    TIMSABA.functions.create_recipes
    ({
        {
            name = sand_arig,
            category = angels_petrochem_air_filtering,
            subgroup = is_arig_recipe,
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = sand_arig, amount = 240}},
            main_product = sand_arig,
            surface_conditions = {{property = pressure, min = 600, max = 600}}
        },
        {
            name = pure_sand_arig,
            category = angels_petrochem_air_filtering,
            subgroup = is_arig_recipe,
            icons = TWO_I(sand_arig, pure_sand_arig),
            order = b,
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

    -- WATER HARVESTING CONFIG
    moshine_water_harvesting = "moshine-water-harvesting"
    paracelsin_water_harvesting = "paracelsin-water-harvesting"
    corrundum_water_harvesting = "corrundum-water-harvesting"
    castra_water_harvesting = "castra-water-harvesting"
    shchierbin_water_harvesting = "shchierbin-water-harvesting"
    maraxsis_water_harvesting = "maraxsis-water-harvesting"
    panglia_water_harvesting = "panglia-water-harvesting"
    frozeta_water_harvesting = "frozeta-water-harvesting"
    terrapalus_water_harvesting = "terrapalus-water-harvesting"
    local water_planets =
    {
        -- PLANETS
        [moshine_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.moshine"}},
            name = moshine_water_harvesting,
            subgroup = is_arig_water_planets,
            planet = planet_moshine,
            order = data_planet[planet_moshine].order,
            amount = 15,
            surface_conditions = {{property = pressure, min = 701, max = 701}}
        },
        [paracelsin_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.paracelsin"}},
            name = paracelsin_water_harvesting,
            subgroup = is_arig_water_planets,
            planet = planet_paracelsin,
            order = data_planet[planet_paracelsin].order,
            amount = 120,
            surface_conditions = {{property = pressure, max = 5300, min = 5300}}
        },
        [corrundum_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.corrundum"}},
            name = corrundum_water_harvesting,
            subgroup = is_arig_water_planets,
            planet = planet_corrundum,
            order = data_planet[planet_corrundum].order,
            amount = 120,
            surface_conditions = {{property = pressure, max = 6000, min = 6000}}
        },
        [castra_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.castra"}},
            name = castra_water_harvesting,
            subgroup = is_arig_water_planets,
            planet = planet_castra,
            order = data_planet[planet_castra].order,
            amount = 120,
            surface_conditions = {{property = pressure, max = 2254, min = 2254}}
        },
        [shchierbin_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.shchierbin"}},
            name = shchierbin_water_harvesting,
            subgroup = is_arig_water_planets,
            planet = planet_shchierbin,
            order = data_planet[planet_shchierbin].order,
            amount = 240,
            surface_conditions = {{property = pressure, max = 1500, min = 1500}}
        },
        [maraxsis_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.maraxsis"}},
            name = maraxsis_water_harvesting,
            subgroup = is_arig_water_planets,
            planet = planet_maraxsis,
            order = data_planet[planet_maraxsis].order,
            amount = 960,
            surface_conditions = {{property = pressure, max = 200000, min = 200000}}
        },
        -- MOONS
        [panglia_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.panglia"}},
            name = panglia_water_harvesting,
            subgroup = is_arig_water_moons,
            planet = planet_panglia,
            order = data_planet[planet_panglia].order,
            amount = 480,
            surface_conditions = {{property = pressure, max = 1401, min = 1401}}
        },
        [secretas_frozeta_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.frozeta"}},
            name = frozeta_water_harvesting,
            subgroup = is_arig_water_moons,
            planet = planet_frozeta,
            order = data_planet[planet_frozeta].order,
            amount = 120,
            surface_conditions = {{property = pressure, max = 200, min = 280}}
        },
        [terrapalus_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.terrapalus"}},
            name = terrapalus_water_harvesting,
            subgroup = is_arig_water_moons,
            planet = planet_terrapalus,
            order = data_planet[planet_terrapalus].order,
            amount = 480,
            surface_conditions =
            {
                {property = pressure, max = 2000, min = 2800},
                {property = gravity, max = 25, min = 25},
                {property = temperature, max = 288, min = 288},
                {property = magnetic_field, max = 40, min = 40}
            }
        },
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
                    subgroup = config.subgroup,
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