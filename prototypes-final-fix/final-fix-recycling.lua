local util = require("util")

local function get_prototype(base_type, name)
    for type_name in pairs(defines.prototypes[base_type]) do
        local prototypes = data.raw[type_name]
        if prototypes and prototypes[name] then
            return prototypes[name]
        end
    end
end

local function get_item_localised_name(name)
    local item = get_prototype("item", name)
    if not item then return end
    if item.localised_name then
        return item.localised_name
    end
    local prototype
    local type_name = "item"
    if item.place_result then
        prototype = get_prototype("entity", item.place_result)
        type_name = "entity"
    elseif item.place_as_equipment_result then
        prototype = get_prototype("equipment", item.place_as_equipment_result)
        type_name = "equipment"
    elseif item.place_as_tile then
        -- Tiles with variations don't have a localised name
        local tile_prototype = data_tile[item.place_as_tile.result]
        if tile_prototype and tile_prototype.localised_name then
            prototype = tile_prototype
            type_name = "tile"
        end
    end
    return prototype and prototype.localised_name or {type_name .. "-name." .. name}
end

local function generate_self_recycling_recipe(info)
    local default_machine_tints = {primary = {0.125,0.125,0.125,0.125}, secondary = {0.125,0.125,0.125,0.125}, tertiary = {0.125,0.125,0.125,0.125}, quaternary = {0.125,0.125,0.125,0.125}}
    local crafting_machine_tint = data_recipe[info.name] and data_recipe[info.name].crafting_machine_tint or default_machine_tints
    data:extend
    ({
        {
            localised_name = {"recipe-name.recycling", get_item_localised_name(info.name)},
            type = recipe,
            name = info.name .. _recycling,
            category = recycling,
            subgroup = data_item[info.name].subgroup,
            icon = data_item[info.name].icon,
            order = data_item[info.name].order,
            enabled = true,
            energy_required = 0.25,
            ingredients = {{type = item, name = info.name, amount = 1}},
            results = {{type = item, name = info.name, amount_min = 0, amount_max = 1}},

            hidden = true,
            unlock_results = false,
            crafting_machine_tint = crafting_machine_tint
        }
    })
end
if mods[muluna_mods] then
    generate_self_recycling_recipe({name = aluminium_pipe})
    generate_self_recycling_recipe({name = aluminium_pipe_to_ground})
end

for name, recipe_name in pairs(data_recipe) do
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
    tungsten_gear_wheel, tungsten_bearing_ball, tungsten_bearing,
    copper_tungsten_gear_wheel, copper_tungsten_bearing_ball, copper_tungsten_bearing,
    molybdenum_gear_wheel, rhenium_bearing_ball, rhenium_bearing,

    uranium_ore, uranium_235_fuel_cell,
    stone, stone_crushed_angels,
    tungsten_ore_bob, wolframite_ore,
    concrete_brick, reinforced_concrete_brick
}

if mods[muluna_mods] or mods[moshine_mods] then
    table.insert(recycling_items, silicon_cell_mods)
end

if mods[moshine_mods] then
    table.insert(recycling_items, neodymium_magnet)
end

if mods[panglia_mods] then
    table.insert(recycling_items, universe_precursor)
end

if mods[arig_mods] then
    table.insert(recycling_items, silica_arig)
end

if mods[hyarion_mods] then
    table.insert(recycling_items, polished_bismuth)
end

if mods[tellus_mods] then
    table.insert(recycling_items, blue_dye)
    table.insert(recycling_items, yellow_dye)
    table.insert(recycling_items, magenta_dye)
    table.insert(recycling_items, green_dye)
    table.insert(recycling_items, red_dye)
    table.insert(recycling_items, cyan_dye)
end

for _, name in ipairs(recycling_items) do
    data_recipe[name .. _recycling].results = {{type = item, name = name, amount = 1, probability = 0.25}}
    data_recipe[name .. _recycling].main_product = ""
end

if mods[muluna_mods] then
    data_recipe[aluminium_pipe .. _recycling].results = {{type = item, name = aluminium_plate_bob, amount_min = 0, amount_max = 1}}
    data_recipe[aluminium_pipe_to_ground .. _recycling].results =
    {
        {type = item, name = aluminium_pipe, amount = 3},
        {type = item, name = aluminium_plate_bob, amount_min = 0, amount_max = 1}
    }
end