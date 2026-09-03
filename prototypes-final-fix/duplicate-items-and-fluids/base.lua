local recipes =
{
    steel_plate,
    plastic,
    "basic-oil-processing",
    sulfuric_acid
}
for _, name in ipairs(recipes) do
    data_recipe[name] = nil
end