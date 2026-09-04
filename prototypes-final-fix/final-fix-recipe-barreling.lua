for name in pairs(data_item) do
    if string.find(name, "^yeet%-") and string.find(name, "%-barrel$") then
        --
    elseif (string.find(name, "%-barrel$") or string.find(name, "^barrel%-")) and name ~= "barrel" and name ~= "titanium-barrel" then
        data_item[name] = nil
    end
end

for name in pairs(data_recipe) do
    if string.find(name, "^yeet%-") and string.find(name, "%-barrel$") then
        --
    elseif (string.find(name, "%-barrel$")
    or string.find(name, "^barrel%-")
    or string.find(name, "%-barrel%-recycling$")
    or string.find(name, "%-barrel%-panglia_crushing$")
    or string.find(name, "%-barrel%-incineration$"))
    and name ~= "barrel" and name ~= "titanium-barrel"
    then
        data_recipe[name] = nil
    end
end

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
local angels_barreling_pump = "angels-barreling-pump"
local barrel_name = "barrel"
local canister_name = "canister"
local bottle_name = "bottle"

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
fill_fluid_map(TIMSABA.barreling.simple_fluids, barrel, is_barrel, "barrel", "bob-fluid-barrel-processing")
fill_fluid_map(TIMSABA.barreling.dangerous_fluids, canister, is_canister, "canister", "bob-fluid-canister-processing")
fill_fluid_map(TIMSABA.barreling.gases, gas_bottle, is_bottle, "bottle", "bob-gas-canisters")

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
            category = angels_barreling_pump,
            subgroup = info.sub,
            icons = fill_icons,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            hide_from_player_crafting = true,
            ingredients =
            {
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
            category = angels_barreling_pump,
            subgroup = info.sub .. "-empty",
            icons = empty_icons,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            hide_from_player_crafting = true,
            ingredients = {{type = item, name = fluids.name .. "-" .. info.name, amount = 1}},
            results =
            {
                {type = item, name = info.item, amount = 1},
                {type = fluid, name = fluids.name, amount = 60}
            }
        }
    })
end

for _, fluids in pairs(data_fluid) do
    local info = fluid_map[fluids.name]
    if info then
        create_container_item(fluids, info)
        create_container_recipes(fluids, info)
        local tech = data_technology[info.tech]
        if tech then
            tech.effects = tech.effects or {}
            table.insert(tech.effects, {type = unlock_recipe, recipe = fluids.name .. "-" .. info.name})
            table.insert(tech.effects, {type = unlock_recipe, recipe = "empty-" .. fluids.name .. "-" .. info.name})
        end
    end
end

if mods[pelagos_mods] then
    local item_sounds = require("__base__.prototypes.item_sounds")
    local util = require("util")

    local barrel_side_mask = "__pelagos__/graphics/titanium-barreling/barrel-side-mask.png"
    local barrel_hoop_top_mask = "__pelagos__/graphics/titanium-barreling/barrel-hoop-top-mask.png"
    local barrel_empty_icon = "__pelagos__/graphics/titanium-barreling/barrel-empty.png"
    local barrel_empty_side_mask = "__pelagos__/graphics/titanium-barreling/barrel-empty-side-mask.png"
    local barrel_empty_top_mask = "__pelagos__/graphics/titanium-barreling/barrel-empty-top-mask.png"
    local barrel_fill_icon = "__pelagos__/graphics/titanium-barreling/empty-barrel.png"
    local barrel_fill_side_mask = "__pelagos__/graphics/titanium-barreling/barrel-side-mask.png"
    local barrel_fill_top_mask = "__pelagos__/graphics/titanium-barreling/barrel-fill-top-mask.png"

    local side_alpha = 0.75
    local top_hoop_alpha = 0.75

    local titanium_fluid_map = {}
    for _, fluid_name in pairs(TIMSABA.barreling.simple_fluids) do
        if fluid_name then
            titanium_fluid_map[fluid_name] = true
        end
    end

    local function get_item(name)
        for typeName, items in pairs(data.raw) do
            if typeName == item or typeName == ammo or typeName == capsule or typeName == "gun" then
                if items[name] then return items[name] end
            end
        end
        return nil
    end

    local function get_technology(name)
        return data_technology and data_technology[name]
    end

    local function get_recipes_for_barrel(name)
        local recipes = data_recipe
        if recipes then
            return recipes[name], recipes["empty-" .. name]
        end
        return nil, nil
    end

    local function generate_barrel_icons(fluids, base_icon, side_mask, top_mask)
        return
        {
            {
                icon = base_icon.icon or base_icon,
                icon_size = base_icon.icon_size or defines.default_icon_size
            },
            {
                icon = side_mask,
                icon_size = defines.default_icon_size,
                tint = util.get_color_with_alpha(fluids.base_color, side_alpha, true)
            },
            {
                icon = top_mask,
                icon_size = defines.default_icon_size,
                tint = util.get_color_with_alpha(fluids.flow_color, top_hoop_alpha, true)
            }
        }
    end

    local function generate_barrel_recipe_icons(fluids, base_icon, side_mask, top_mask, fluid_icon_shift)
        local icons = generate_barrel_icons(fluids, base_icon, side_mask, top_mask)
        if fluids.icon then
            table.insert(icons,
            {
                icon = fluids.icon,
                icon_size = (fluids.icon_size or defines.default_icon_size),
                scale = 16.0 / (fluids.icon_size or defines.default_icon_size),
                shift = fluid_icon_shift
            })
        elseif fluids.icons then
            icons = util.combine_icons(icons, fluids.icons, { scale = 0.5, shift = fluid_icon_shift }, fluids.icon_size)
        end
        return icons
    end

    local function create_barrel_item(name, fluids, empty_barrel_item)
        local result =
        {
            localised_name = {"item-name.fill-" .. titanium_barrel, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = item,
            name = name,
            subgroup = is_titanium_barrel,
            icons = generate_barrel_icons(fluids, empty_barrel_item, barrel_side_mask, barrel_hoop_top_mask),
            order = fluids.order,
            stack_size = 200,
            hide_from_player_crafting = true,
            inventory_move_sound = item_sounds.metal_barrel_inventory_move,
            pick_sound = item_sounds.metal_barrel_inventory_pickup,
            drop_sound = item_sounds.metal_barrel_inventory_move,
            hidden_in_factoriopedia = false
        }
        data:extend({result})
        return result
    end

    local function get_or_create_barrel_item(name, fluids, empty_barrel_item)
        local existing_item = get_item(name)
        if existing_item then return existing_item end
        return create_barrel_item(name, fluids, empty_barrel_item)
    end

    local function create_fill_barrel_recipe(items, fluids)
        local recipe =
        {
            localised_name = {"recipe-name.fill-" .. titanium_barrel, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = recipe,
            name = items.name,
            category = angels_barreling_pump,
            subgroup = is_titanium_barrel,
            icons = generate_barrel_recipe_icons(fluids, barrel_fill_icon, barrel_fill_side_mask, barrel_fill_top_mask, {-8, -8}),
            order = fluids.order,
            energy_required = 0.5,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            hide_from_player_crafting = true,
            ingredients =
            {
                {type = item, name = titanium_barrel, amount = 1},
                {type = fluid, name = fluids.name, amount = 240}
            },
            results = {{type = item, name = items.name, amount = 1}},
            --hidden = true,
            hidden_in_factoriopedia = false
        }
        data:extend({recipe})
        return recipe
    end

    local function create_empty_barrel_recipe(items, fluids)
        local recipe =
        {
            localised_name = {"recipe-name.empty-" .. titanium_barrel, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = recipe,
            name = "empty-" .. items.name,
            category = angels_barreling_pump,
            subgroup = is_titanium_barrel_empty,
            icons = generate_barrel_recipe_icons(fluids, barrel_empty_icon, barrel_empty_side_mask, barrel_empty_top_mask, {7, 8}),
            order = fluids.order,
            energy_required = 0.5,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            hide_from_player_crafting = true,
            ingredients = {{type = item, name = items.name, amount = 1}},
            results =
            {
                {type = item, name = titanium_barrel, amount = 1},
                {type = fluid, name = fluids.name, amount = 240},
            },
            --hidden = true,
            hidden_in_factoriopedia = false
        }
        data:extend({recipe})
        return recipe
    end

    local function get_or_create_barrel_recipes(items, fluids)
        local fill_recipe, empty_recipe = get_recipes_for_barrel(items.name)
        if not fill_recipe then fill_recipe = create_fill_barrel_recipe(items, fluids) end
        if not empty_recipe then empty_recipe = create_empty_barrel_recipe(items, fluids) end
        return fill_recipe, empty_recipe
    end

    local function add_barrel_to_technology(fill_recipe, empty_recipe, technology)
        if not technology.effects then technology.effects = {} end

        local add_fill_recipe = true
        local add_empty_recipe = true

        for _, effect in pairs(technology.effects) do
            if effect.type == unlock_recipe then
                if effect.recipe == fill_recipe.name then add_fill_recipe = false end
                if effect.recipe == empty_recipe.name then add_empty_recipe = false end
            end
        end

        if add_fill_recipe then
            table.insert(technology.effects, {type = unlock_recipe, recipe = fill_recipe.name})
        end
        if add_empty_recipe then
            table.insert(technology.effects, {type = unlock_recipe, recipe = empty_recipe.name})
        end
    end

    local function log_barrel_error(str)
        log("Auto titanium barrel generation is disabled: " .. str .. ".")
    end

    local function can_process_fluids(fluids, technology, empty_barrel_item)
        if not fluids then log_barrel_error("there are no fluids") return false end
        if not technology then log_barrel_error("the Titanium Barrels technology doesn't exist") return false end
        if not empty_barrel_item then log_barrel_error("the Titanium Barrel item doesn't exist") return false end
        if not empty_barrel_item.icon and not empty_barrel_item.icons then log_barrel_error("the Titanium Barrel item icon definition doesn't exist") return false end
        return true
    end

    local function process_fluid(fluids, technology, empty_barrel_item)
        if not (fluids.icon or fluids.icons) then
            log("Can't make Titanium Barrel recipe for " .. fluids.name .. ", it doesn't have any icon.")
            return
        end

        local barrel_name = fluids.name .. "-" .. titanium_barrel
        local barrel_item = get_or_create_barrel_item(barrel_name, fluids, empty_barrel_item)
        local barrel_fill_recipe, barrel_empty_recipe = get_or_create_barrel_recipes(barrel_item, fluids)
        add_barrel_to_technology(barrel_fill_recipe, barrel_empty_recipe, technology)
    end

    local function process_fluids(fluids, technology, empty_barrel_item)
        if not can_process_fluids(fluids, technology, empty_barrel_item) then return end

        for name, fluid in pairs(fluids) do
            if titanium_fluid_map[fluid.name] then
                process_fluid(fluid, technology, empty_barrel_item)
            end
        end
    end

    process_fluids(data_fluid, get_technology(tech_titanium_barrels), get_item(titanium_barrel))
end

for recipe_name, recipe in pairs(data_recipe) do
    if recipe_name:find("^yeet%-item%-") then
        local original_item_name = recipe_name:sub(11)

        if original_item_name:find("%-barrel$") then
            if not data_item[original_item_name] then
                data_recipe[recipe_name] = nil
            end
        end
    end
end