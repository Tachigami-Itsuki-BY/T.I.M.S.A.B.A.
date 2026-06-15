local recipes =
{
    {planet = planet_nauvis, fluid = water},
    {planet = planet_vulcanus, fluid = lava},
    {planet = planet_gleba, fluid = water},
    {planet = planet_fulgora, fluid = multi_phase_oil_angels},
    {planet = planet_aquilo, fluid = ammonia_solution},
    {planet = planet_moshine, fluid = lava},
    {planet = planet_panglia, fluid = water},
    {planet = planet_arig, fluid = sand_arig},
    {planet = planet_hyarion, fluid = lava},
    {planet = planet_tellus, fluid = water_infected},
    -- {planet = planet_, fluid = },
}
for _, RECIPE in ipairs(recipes) do
    if data_fluid[RECIPE.fluid] and data_planet[RECIPE.planet] then
        data:extend
        ({
            {
                localised_name = {"recipe-name.extract-ground", {"fluid-name." .. RECIPE.fluid}},
                type = recipe,
                name = extract_ground .. "-" .. RECIPE.fluid,
                category = extract_ground,
                enabled = true,
                hidden = true,
                energy_required = 1,
                ingredients = {},
                results = {{type = fluid, name = RECIPE.fluid, amount = 60}}
            }
        })
    end
end