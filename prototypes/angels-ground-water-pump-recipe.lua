local recipes =
{
    {planet = "nauvis", fluid = water, amount = 60},
    {planet = "vulcanus", fluid = lava, amount = 60},
    {planet = "gleba", fluid = water, amount = 60},
    {planet = "fulgora", fluid = multi_phase_oil_angels, amount = 60},
    {planet = "aquilo", fluid = ammonia_solution, amount = 60},
    -- new planet
}
for _, RECIPE in ipairs(recipes) do
    if data.raw.fluid[RECIPE.fluid] then
        data:extend
        ({
            {
                localised_name = {"recipe-name.extract-ground", {"fluid-name." .. RECIPE.fluid}},
                type = "recipe",
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