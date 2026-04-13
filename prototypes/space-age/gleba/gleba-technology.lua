local technology = "technology"
data:extend
({
    {
        type = technology,
        name = tech_gleba_biology,
        icon = "__TIMSABA__/graphics/icons/space-age/gleba/gleba-biology.png",
        icon_size = 256,
        prerequisites = {agricultural_science_pack},
        effects = {},
        unit =
        {
            count = 3000,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {agricultural_science_pack, 1}
            },
            time = 60
        }
    }
})

local tech_master_list =
{
    {data = recipe_nutrients,       prefix = "nutrients-from-"},
    {data = recipe_breeding_fish,   prefix = "breeding-"},
    {data = recipe_breeding_puffer, prefix = "breeding-"}
}
for _, group in ipairs(tech_master_list) do
    if group.data then
        for _, RECIPE in ipairs(group.data) do
            local tech_name = RECIPE.unlock_recipe
            local full_recipe_name = group.prefix .. RECIPE.name
            if tech_name and data.raw.technology[tech_name] then
                table.insert(data.raw.technology[tech_name].effects, {type = unlock_recipe, recipe = full_recipe_name})
            end
        end
    end
end

table.insert(data_technology[tech_gleba_biology].effects, {type = unlock_recipe, recipe = nutrient_pulp_from_nutrients})