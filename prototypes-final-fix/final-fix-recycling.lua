for name, recipe_name in pairs(data.raw.recipe) do
    if name:find("recycling") then
        recipe_name.energy_required = 0.25
        local target_item = recipe_name.main_product
        or (recipe_name.ingredients and recipe_name.ingredients[1] and (recipe_name.ingredients[1].name or recipe_name.ingredients[1]))
        or name:gsub("%-recycling", "")
        local new_icons = RECYCLING_IS(recycling_png, target_item)
        if new_icons and #new_icons > 0 then
            recipe_name.icons = new_icons
            recipe_name.icon = nil
        end
    end
end

local concrete_recipes =
{
    concrete,
    hazard_concrete,
    reinforced_concrete,
    reinforced_hazard_concrete
}
for _, concrete_name in ipairs(concrete_recipes) do
    data_recipe[concrete_name .. _recycling] = nil
end

local recycling_items =
{
    stone_pipe, stone_pipe_to_ground,
    plastic_pipe, plastic_pipe_to_ground,
    ceramic_pipe, ceramic_pipe_to_ground,
    tungsten_pipe, tungsten_pipe_to_ground,
    copper_tungsten_pipe, copper_tungsten_pipe_to_ground,
    molybdenum_rhenium_pipe, molybdenum_rhenium_pipe_to_ground,

    ceramic_gear_wheel, ceramic_bearing_ball, ceramic_bearing,
    copper_tungsten_gear_wheel, copper_tungsten_bearing_ball, copper_tungsten_bearing,
    molybdenum_gear_wheel, rhenium_bearing_ball, rhenium_bearing,

    uranium_ore, uranium_235_fuel_cell,
    stone, stone_crushed_angels,
    tungsten_ore_bob, wolframite_ore
}

if mods [muluna_mods] or mods [moshine_mods] then
    table.insert(recycling_items, silicon_cell_mods)
end

if mods [moshine_mods] then
    table.insert(recycling_items, neodymium_magnet)
end

if mods [panglia_mods] then
    table.insert(recycling_items, universe_precursor)
end

if mods [arig_mods] then
    table.insert(recycling_items, silica_arig)
end

for _, name in ipairs(recycling_items) do
    data_recipe[name .. _recycling].results = {{type = item, name = name, amount = 1, probability = 0.25}}
    data_recipe[name .. _recycling].main_product = ""
end