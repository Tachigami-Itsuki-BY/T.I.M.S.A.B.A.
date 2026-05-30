local item_sounds = require("__base__.prototypes.item_sounds")
local util = require("util")
local barrel_fill_icon = "__base__/graphics/icons/fluid/barreling/barrel-fill.png"
local barrel_fill_side_mask = "__base__/graphics/icons/fluid/barreling/barrel-fill-side-mask.png"
local barrel_fill_top_mask = "__base__/graphics/icons/fluid/barreling/barrel-fill-top-mask.png"
local barrel_empty_icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png"
local barrel_empty_side_mask = "__base__/graphics/icons/fluid/barreling/barrel-empty-side-mask.png"
local barrel_empty_top_mask = "__base__/graphics/icons/fluid/barreling/barrel-empty-top-mask.png"
local side_alpha = 0.75
local top_hoop_alpha = 0.75
local is_barreling_pump = "angels-barreling-pump"
local barrel_name = "barrel"
local canister_name = "canister"
local bottle_name = "bottle"
local simple_fluids =
{
    -- MULUNA
    tar_mods,
    -- MOSHINE
    water_orange_waste,
}
local dangerous_fluids =
{
    -- MOSHINE
    orthophosphoric_acid,
}
local gases =
{
    -- MOSHINE
    moshine_air,
    -- MARAXSIS
    atmosphere_maraxsis,
}
local fluid_map = {}
local function fill_fluid_map(list, item_name, subgroup_name, suffix, tech_name)
    for _, f in pairs(list) do
        if f then
            fluid_map[f] =
            {
                item = item_name,
                sub = subgroup_name,
                name = suffix,
                tech = tech_name
            }
        end
    end
end
fill_fluid_map(simple_fluids, barrel, is_barrel, "barrel", "bob-fluid-barrel-processing")
fill_fluid_map(dangerous_fluids, canister, is_canister, "canister", "bob-fluid-canister-processing")
fill_fluid_map(gases, gas_bottle, is_bottle, "bottle", "bob-gas-canisters")
local function generate_fill_recipe_icons(fluids, base_icons)
    local icons = util.table.deepcopy(base_icons)
    if fluids.icon then
        local iconsize = fluids.icon_size or 64
        table.insert(icons, {icon = fluids.icon, icon_size = iconsize, scale = 16.0 / iconsize, shift = {8,-8}})
    elseif fluids.icons then
        icons = util.combine_icons(icons, fluids.icons, {scale = 0.5, shift = {8,-8}}, fluids.icon_size or 64)
    end
    return icons
end
local function generate_empty_recipe_icons(fluids, base_icons)
    local icons = util.table.deepcopy(base_icons)
    if fluids.icon then
        local iconsize = fluids.icon_size or 64
        table.insert(icons, {icon = fluids.icon, icon_size = iconsize, scale = 16.0 / iconsize, shift = {8,8}})
    elseif fluids.icons then
        icons = util.combine_icons(icons, fluids.icons, {scale = 0.5, shift = {8,8}}, fluids.icon_size or 64)
    end
    return icons
end
local function generate_gas_bottle_item_icons(fluids)
    return
    {
        {icon = "__boblibrary__/graphics/icons/cylinder/gas-canister.png", icon_size = 32},
        {icon = "__boblibrary__/graphics/icons/cylinder/cylinder-top.png", icon_size = 32, tint = fluids.flow_color},
        {icon = "__boblibrary__/graphics/icons/cylinder/cylinder-mid.png", icon_size = 32, tint = fluids.base_color},
    }
end
local function generate_fluid_canister_item_icons(fluids)
    return
    {
        {icon = "__boblibrary__/graphics/icons/cylinder/empty-canister.png",  icon_size = 32},
        {icon = "__boblibrary__/graphics/icons/cylinder/canister-top.png",    icon_size = 32, tint = fluids.flow_color},
        {icon = "__boblibrary__/graphics/icons/cylinder/canister-bottom.png", icon_size = 32, tint = fluids.base_color},
    }
end
local function generate_fluid_barrel_item_icons(fluids, base_icon, side_mask, top_mask)
    return
    {
        {icon = base_icon.icon or base_icon, icon_size = base_icon.icon_size or defines.default_icon_size},
        {icon = side_mask, icon_size = defines.default_icon_size, tint = util.get_color_with_alpha(fluids.base_color, side_alpha, true)},
        {icon = top_mask, icon_size = defines.default_icon_size, tint = util.get_color_with_alpha(fluids.flow_color, top_hoop_alpha, true)}
    }
end
local function get_icons(fluids, container_name)
    if container_name == "bottle" then
        return generate_gas_bottle_item_icons(fluids)
    elseif container_name == "canister" then
        return generate_fluid_canister_item_icons(fluids)
    else
        return generate_fluid_barrel_item_icons
        (
            fluids,
            {icon = "__base__/graphics/icons/fluid/barreling/barrel-fill.png", icon_size = 64},
            "__base__/graphics/icons/fluid/barreling/barrel-side-mask.png",
            "__base__/graphics/icons/fluid/barreling/barrel-hoop-top-mask.png"
        )
    end
end
local function create_container_item(fluids, info)
    local icons = get_icons(fluids, info.name)
    table.insert(icons,
    {
        icon = fluids.icon or (fluids.icons and fluids.icons[1].icon) or "__base__/graphics/icons/fluid/barreling/barrel-fill.png",
        icon_size = fluids.icon_size or (fluids.icons and fluids.icons[1].icon_size) or 64,
        scale = 0.375,
        shift = {0,0}
    })
    data:extend
    ({
        {
            localised_name = {"item-name.fill-" .. info.name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = item,
            name = fluids.name .. "-" .. info.name,
            subgroup = info.sub,
            icons = icons,
            order = fluids.name .. "-" .. info.name,
            stack_size = 200,
            hide_from_player_crafting = true,
            inventory_move_sound = item_sounds.metal_barrel_inventory_move,
            pick_sound = item_sounds.metal_barrel_inventory_pickup,
            drop_sound = item_sounds.metal_barrel_inventory_move
        }
    })
end
local function generate_gas_bottle_recipe_icons(fluids)
    local icon = generate_gas_bottle_item_icons(fluids)
    return generate_fill_recipe_icons(fluids, icon)
end
local function generate_fluid_canister_recipe_icons(fluids)
    local icon = generate_fluid_canister_item_icons(fluids)
    return generate_fill_recipe_icons(fluids, icon)
end
local function generate_fluid_barrel_recipe_icons(fluids, base_icon, side_mask, top_mask, fluid_icon_shift)
    local icons = generate_fluid_barrel_item_icons(fluids, base_icon, side_mask, top_mask)
    if fluids.icon then
        table.insert(icons,
        {
            icon = fluids.icon,
            icon_size = (fluids.icon_size or defines.default_icon_size),
            scale = 16.0 / (fluids.icon_size or defines.default_icon_size),
            shift = fluid_icon_shift
        }
    )
    elseif fluids.icons then
        icons = util.combine_icons(icons, fluids.icons, {scale = 0.5, shift = fluid_icon_shift}, fluids.icon_size)
    end
    return icons
end
local function get_recipe_fill_icons(fluids, container_name)
    if container_name == "bottle" then
        return generate_gas_bottle_recipe_icons(fluids)
    elseif container_name == "canister" then
        return generate_fluid_canister_recipe_icons(fluids)
    else
        return generate_fluid_barrel_recipe_icons(fluids, barrel_fill_icon, barrel_fill_side_mask, barrel_fill_top_mask, {8,-8})
    end
end
local function generate_gas_bottle_empty_recipe_icons(fluids)
    local icon = generate_gas_bottle_item_icons(fluids)
    return generate_empty_recipe_icons(fluids, icon)
end
local function generate_fluid_canister_empty_recipe_icons(fluids)
    local icon = generate_fluid_canister_item_icons(fluids)
    return generate_empty_recipe_icons(fluids, icon)
end
local function get_recipe_empty_icons(fluids, container_name)
    if container_name == "bottle" then
        return generate_gas_bottle_empty_recipe_icons(fluids)
    elseif container_name == "canister" then
        return generate_fluid_canister_empty_recipe_icons(fluids)
    else
        return generate_fluid_barrel_recipe_icons(fluids, barrel_empty_icon, barrel_empty_side_mask, barrel_empty_top_mask, {8,8})
    end
end
local function create_container_recipes(fluids, info)
    local fill_icons = get_recipe_fill_icons(fluids, info.name)
    local empty_icons = get_recipe_empty_icons(fluids, info.name)
    data:extend
    ({
        -- FILL
        {
            localised_name = {"recipe-name.fill-" .. info.name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = recipe,
            name = fluids.name .. "-" .. info.name,
            category = is_barreling_pump,
            subgroup = info.sub,
            icons = fill_icons,
            enabled = false,
            ingredients = {
                {type = item, name = info.item, amount = 1},
                {type = fluid, name = fluids.name, amount = 60}
            },
            results = {{type = item, name = fluids.name .. "-" .. info.name, amount = 1}}
        },
        -- EMPTY
        {
            localised_name = {"recipe-name.empty-" .. info.name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = recipe,
            name = "empty-" .. fluids.name .. "-" .. info.name,
            category = is_barreling_pump,
            subgroup = info.sub .. "-empty",
            icons = empty_icons,
            enabled = false,
            ingredients = {{type = item, name = fluids.name .. "-" .. info.name, amount = 1}},
            results =
            {
                {type = item, name = info.item, amount = 1},
                {type = fluid, name = fluids.name, amount = 60}
            }
        }
    })
end
for _, fluids in pairs(data.raw.fluid) do
    local info = fluid_map[fluids.name]
    if info then
        create_container_item(fluids, info)
        create_container_recipes(fluids, info)
        local tech = data.raw.technology[info.tech]
        if tech then
            tech.effects = tech.effects or {}
            table.insert(tech.effects, {type = unlock_recipe, recipe = fluids.name .. "-" .. info.name})
            table.insert(tech.effects, {type = unlock_recipe, recipe = "empty-" .. fluids.name .. "-" .. info.name})
        end
    end
end