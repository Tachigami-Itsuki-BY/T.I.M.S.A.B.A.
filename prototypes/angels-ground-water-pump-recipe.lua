local recipes =
{
    {planet = planet_nauvis, fluid = water, amount = 60},
    {planet = planet_vulcanus, fluid = lava, amount = 60},
    {planet = planet_gleba, fluid = water, amount = 60},
    {planet = planet_fulgora, fluid = multi_phase_oil_angels, amount = 60},
    {planet = planet_aquilo, fluid = ammonia_solution, amount = 60},
    {planet = planet_moshine, fluid = lava, amount = 60},
    {planet = planet_panglia, fluid = water, amount = 60},
    {planet = planet_arig, fluid = sand_arig, amount = 60},
    -- {planet = planet_, fluid = , amount = 60}, new planet
}
for _, RECIPE in ipairs(recipes) do
    if data_fluid[RECIPE.fluid] and data_planet[RECIPE.planet] then
        data:extend
        ({
            {
                localised_name = {"recipe-name.extract-ground", {"fluid-name." .. RECIPE.fluid}},
                type = recipe,
                name = "extract-ground-" .. RECIPE.fluid,
                category = extract_ground,
                enabled = true,
                hidden = true,
                energy_required = 1,
                ingredients = {},
                results = {{type = fluid, name = RECIPE.fluid, amount = RECIPE.amount}}
            }
        })
    end
end