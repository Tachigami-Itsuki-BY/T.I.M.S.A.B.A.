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

    local function create_recipe_water_harvesting(planet_name, subgroup, amount, surface_conditions)
        TIMSABA.functions.create_recipes
        ({
            {
                localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name." .. planet_name}},
                name = planet_name .. _water_harvesting,
                category = arig_water_production,
                subgroup = subgroup,
                icons = BUILDING_R_I(water, planet_name),
                order = data_planet[planet_name].order,
                enabled = true,
                allow_productivity = true,
                energy_required = 16,
                ingredients = {},
                results = {{type = fluid, name = water, amount = amount}},
                main_product = water,
                surface_conditions = surface_conditions
            }
        })
    end
    -- PLANETS
    if mods[moshine_mods] then
        create_recipe_water_harvesting(planet_moshine, is_arig_water_planets, 15, {{property = pressure, min = 701, max = 701}})
    end
    if mods[paracelsin_mods] then
        create_recipe_water_harvesting(planet_paracelsin, is_arig_water_planets, 120, {{property = pressure, max = 5300, min = 5300}})
    end
    if mods[corrundum_mods] then
        create_recipe_water_harvesting(planet_corrundum, is_arig_water_planets, 120, {{property = pressure, max = 6000, min = 6000}})
    end
    if mods[castra_mods] then
        create_recipe_water_harvesting(planet_castra, is_arig_water_planets, 120, {{property = pressure, max = 2254, min = 2254}})
    end
    if mods[shchierbin_mods] then
        create_recipe_water_harvesting(planet_shchierbin, is_arig_water_planets, 240, {{property = pressure, max = 1500, min = 1500}})
    end
    if mods[maraxsis_mods] then
        create_recipe_water_harvesting(planet_maraxsis, is_arig_water_planets, 960, {{property = pressure, max = 200000, min = 200000}})
    end
    if mods[vesta_mods] then
        create_recipe_water_harvesting(planet_vesta, is_arig_water_planets, 15, {{property = pressure, max = 500, min = 500}})
    end
    -- MOONS
    if mods[panglia_mods] then
        create_recipe_water_harvesting(planet_panglia, is_arig_water_moons, 480, {{property = pressure, max = 1401, min = 1401}})
    end
    if mods[secretas_frozeta_mods] then
        create_recipe_water_harvesting(planet_frozeta, is_arig_water_moons, 120, {{property = pressure, max = 200, min = 280}})
    end
    if mods[terrapalus_mods] then
        create_recipe_water_harvesting(planet_terrapalus, is_arig_water_moons, 480, {{property = pressure, max = 2111, min = 2111}})
    end
end