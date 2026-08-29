if mods[apia_carnova_mods] then
    hydrogen_apia_carnova = "hydrogen-apia-carnova"
    nitrogen_apia_carnova = "nitrogen-apia-carnova"
    oxygen_apia_carnova = "oxygen-apia-carnova"
    TIMSABA.functions.create_recipes
    ({
        {
            localised_name = {"fluid-name." .. hydrogen_angels},
            name = hydrogen_apia_carnova,
            category = angels_petrochem_air_filtering,
            subgroup = is_apia_carnova_air,
            icons = PLANET_D_IS(hydrogen_angels, planet_apia, planet_carnova),
            order = a,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = hydrogen_angels, amount = 240}},
            main_product = hydrogen_angels,
            surface_conditions = {{property = pressure, min = 2525, max = 2525}}
        },
        {
            localised_name = {"fluid-name." .. nitrogen_angels},
            name = nitrogen_apia_carnova,
            category = angels_petrochem_air_filtering,
            subgroup = is_apia_carnova_air,
            icons = PLANET_D_IS(nitrogen_angels, planet_apia, planet_carnova),
            order = b,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = nitrogen_angels, amount = 240}},
            main_product = nitrogen_angels,
            surface_conditions = {{property = pressure, min = 2525, max = 2525}}
        },
        {
            localised_name = {"fluid-name." .. oxygen_angels},
            name = oxygen_apia_carnova,
            category = angels_petrochem_air_filtering,
            subgroup = is_apia_carnova_air,
            icons = PLANET_D_IS(oxygen_angels, planet_apia, planet_carnova),
            order = c,
            energy_required = 8,
            ingredients = {},
            results = {{type = fluid, name = oxygen_angels, amount = 240}},
            main_product = oxygen_angels,
            surface_conditions = {{property = pressure, min = 2525, max = 2525}}
        }
    })
end