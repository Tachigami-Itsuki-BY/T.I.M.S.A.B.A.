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
    panglia_water_harvesting = "panglia-water-harvesting"
    frozeta_water_harvesting = "frozeta-water-harvesting"
    local water_planets =
    {
        -- PLANETS
        [moshine_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.moshine"}},
            name = moshine_water_harvesting,
            subgroup = is_arig_water_planets,
            planet = planet_moshine,
            order = a_f,
            amount = 15,
            surface_conditions = {{property = pressure, min = 701, max = 701}}
        },
        [paracelsin_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.paracelsin"}},
            name = paracelsin_water_harvesting,
            subgroup = is_arig_water_planets,
            planet = planet_paracelsin,
            order = a_j,
            amount = 120,
            surface_conditions = {{property = pressure, max = 5300, min = 5300}}
        },
        [corrundum_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.corrundum"}},
            name = corrundum_water_harvesting,
            subgroup = is_arig_water_planets,
            planet = planet_corrundum,
            order = a_l,
            amount = 120,
            surface_conditions = {{property = pressure, max = 6000, min = 6000}}
        },
        [castra_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.castra"}},
            name = castra_water_harvesting,
            subgroup = is_arig_water_planets,
            planet = planet_castra,
            order = a_m,
            amount = 120,
            surface_conditions = {{property = pressure, max = 1254, min = 1254}}
        },
        -- MOONS
        [panglia_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.panglia"}},
            name = panglia_water_harvesting,
            subgroup = is_arig_water_moons,
            planet = planet_panglia,
            order = a_b,
            amount = 480,
            surface_conditions = {{property = pressure, max = 1401, min = 1401}}
        },
        [secretas_frozeta_mods] =
        {
            localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.frozeta"}},
            name = frozeta_water_harvesting,
            subgroup = is_arig_water_moons,
            planet = planet_frozeta,
            order = a_c,
            amount = 120,
            surface_conditions = {{property = pressure, max = 200, min = 280}}
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