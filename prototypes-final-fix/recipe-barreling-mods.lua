local recipe = "recipe"
local item_sounds = require("__base__.prototypes.item_sounds")
local barrel_fill_icon = "__base__/graphics/icons/fluid/barreling/barrel-fill.png"
local barrel_fill_side_mask = "__base__/graphics/icons/fluid/barreling/barrel-fill-side-mask.png"
local barrel_fill_top_mask = "__base__/graphics/icons/fluid/barreling/barrel-fill-top-mask.png"
local barrel_empty_icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png"
local barrel_empty_side_mask = "__base__/graphics/icons/fluid/barreling/barrel-empty-side-mask.png"
local barrel_empty_top_mask = "__base__/graphics/icons/fluid/barreling/barrel-empty-top-mask.png"
local side_alpha = 0.75
local top_hoop_alpha = 0.75
local angels_barreling_pump = "angels-barreling-pump"
local barrel_name = "barrel"
local canister_name = "canister"
local bottle_name = "bottle"
local simple_fluids =
{
    tar_mods,
}
local dangerous_fluids = {}
local gases =
{
    atmosphere_maraxsis,
}
local function table_contains(tbl, val)
    for _, v in pairs(tbl) do
        if v == val then
            return true
        end
    end
    return false
end
local function get_container(fluid_name)
    if table_contains(simple_fluids, fluid_name) then
        return is_barrel, barrel_name
    elseif table_contains(dangerous_fluids, fluid_name) then
        return is_canister, canister_name
    elseif table_contains(gases, fluid_name) then
        return is_bottle, bottle_name
    end
    return nil, nil
end
local function get_container_recipe(fluid_name)
    if table_contains(simple_fluids, fluid_name) then
        return barrel, is_barrel, barrel_name
    elseif table_contains(dangerous_fluids, fluid_name) then
        return canister, is_canister, canister_name
    elseif table_contains(gases, fluid_name) then
        return gas_bottle, is_bottle, bottle_name
    end
    return nil, nil, nil
end
local function get_container_tech(fluid_name)
    if table_contains(simple_fluids, fluid_name) then
        return barrel_name
    elseif table_contains(dangerous_fluids, fluid_name) then
        return canister_name
    elseif table_contains(gases, fluid_name) then
        return bottle_name
    end
    return nil, nil, nil
end
-- ITEM
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
        {icon = "__boblibrary__/graphics/icons/cylinder/empty-canister.png",  icon_size = 32 },
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
local function create_container_item(fluids)
    local subgroup, container_name = get_container(fluids.name)
    if not subgroup then return end
    local icons = get_icons(fluids, container_name) or {}
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
            localised_name = {"item-name.fill-" .. container_name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = item,
            name = fluids.name .. "-" .. container_name,
            subgroup = subgroup,
            icons = icons,
            order = fluids.name .. "-" .. container_name,
            hidden = true,
            stack_size = 200,
            weight = 5000,
            inventory_move_sound = item_sounds.metal_barrel_inventory_move,
            pick_sound = item_sounds.metal_barrel_inventory_pickup,
            drop_sound = item_sounds.metal_barrel_inventory_move
        }
    })
end
for _, fluids in pairs(data.raw.fluid) do
    create_container_item(fluids)
end
-- FILL
local function generate_fill_recipe_icons(fluids, icon)
    if fluids.icon then
        local iconsize = fluids.icon_size or 64
        table.insert(icon, { icon = fluids.icon, icon_size = iconsize, scale = 16.0 / iconsize, shift = {8,-8}})
    elseif fluids.icons and util.combine_icons then
        ---@diagnostic disable-next-line: missing-parameter
        icon = util.combine_icons(icon, fluids.icons, {scale = 0.5, shift = {8,-8}})
    end
    return icon
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
local function create_container_fill_recipes(fluids)
    local container, subgroup, container_name = get_container_recipe(fluids.name)
    if not container then return end
    local icons = get_recipe_fill_icons(fluids, container_name)
    data:extend
    ({
        {
            localised_name = {"recipe-name.fill-" .. container_name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = recipe,
            name = fluids.name .. "-" .. container_name,
            category = angels_barreling_pump,
            subgroup = subgroup,
            icons = icons,
            order = fluids.name .. "-" .. container_name,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            hide_from_player_crafting = true,
            energy_required = 0.25,
            ingredients =
            {
                {type = item, name = container, amount = 1},
                {type = fluid, name = fluids.name, amount = 60}
            },
            results = {{type = item, name = fluids.name .. "-" .. container_name, amount = 1}},
            main_product = fluids.name .. "-" .. container_name
        }
    })
end
for _, fluids in pairs(data.raw.fluid) do
    create_container_fill_recipes(fluids)
end
-- EMPTY
local function generate_empty_recipe_icons(fluids, icon)
    if fluids.icon then
        local iconsize = fluids.icon_size or 64
        table.insert(icon, { icon = fluids.icon, icon_size = iconsize, scale = 16.0 / iconsize, shift = {8,8}})
    elseif fluids.icons and util.combine_icons then
        ---@diagnostic disable-next-line: missing-parameter
        icon = util.combine_icons(icon, fluids.icons, {scale = 0.5, shift = {8,8}})
    end
    return icon
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
local function create_container_empty_recipes(fluids)
    local container, subgroup, container_name = get_container_recipe(fluids.name)
    if not container then return end
    local icons = get_recipe_empty_icons(fluids, container_name)
    data:extend
    ({
        {
            localised_name = {"recipe-name.empty-" .. container_name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = recipe,
            name = "empty-" .. fluids.name .. "-" .. container_name,
            category = angels_barreling_pump,
            subgroup = subgroup .. "-empty",
            icons = icons,
            order = "empty-" .. fluids.name .. "-" .. container_name,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            hide_from_player_crafting = true,
            energy_required = 0.25,
            ingredients = {{type = item, name = fluids.name .. "-" .. container_name, amount = 1}},
            results =
            {
                {type = item, name = container, amount = 1},
                {type = fluid, name = fluids.name, amount = 60}
            }
        }
    })
end
for _, fluids in pairs(data.raw.fluid) do
    create_container_empty_recipes(fluids)
end
local function add_recipe_to_tech(recipe_name, tech_name)
    if data.raw.technology[tech_name] then
        table.insert(data.raw.technology[tech_name].effects,
        {
            type = "unlock-recipe",
            recipe = recipe_name
        })
    end
end
for _, fluids in pairs(data.raw.fluid) do
    create_container_item(fluids)
    create_container_fill_recipes(fluids)
    create_container_empty_recipes(fluids)
    local container_name = get_container_tech(fluids.name)
    if container_name then
        local tech =
            container_name == "barrel" and "bob-fluid-barrel-processing"
            or container_name == "canister" and "bob-fluid-canister-processing"
            or container_name == "bottle" and "bob-gas-canisters"
        add_recipe_to_tech(fluids.name .. "-" .. container_name, tech)
        add_recipe_to_tech("empty-" .. fluids.name .. "-" .. container_name, tech)
    end
end