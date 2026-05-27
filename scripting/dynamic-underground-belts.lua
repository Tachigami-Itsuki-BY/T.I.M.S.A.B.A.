local on_entity_built_common = require("scripting.dynamic-common").on_entity_built_common
local on_entity_mined_common = require("scripting.dynamic-common").on_entity_mined_common

local settings_dynamic_enabled = settings.startup["setting-dynamic-underground-belts"] and settings.startup["setting-dynamic-underground-belts"].value

local name_underground_belt =
{
    ["bob-basic-underground-belt"] = "bob-basic-transport-belt",
    ["underground-belt"] = "transport-belt",
    ["fast-underground-belt"] = "fast-transport-belt",
    ["express-underground-belt"] = "express-transport-belt",
    ["bob-turbo-underground-belt"] = "bob-turbo-transport-belt",
    ["bob-ultimate-underground-belt"] = "bob-ultimate-transport-belt",
    ["turbo-underground-belt"] = "turbo-transport-belt" -- Vulcanus
}

local function on_entity_built(event)
    if not settings_dynamic_enabled then return end

    local entity = event.entity or event.created_entity
    if not entity or not entity.valid then return end

    if entity.type == "underground-belt" then
        local belt_name_and_icon = name_underground_belt[entity.name]
        on_entity_built_common(event, entity, belt_name_and_icon, false, belt_name_and_icon, "mod-messages.belts-consumed", "mod-messages.not-enough-belts")
    end
end

local function on_entity_mined(event)
    if not settings_dynamic_enabled then return end

    local entity = event.entity
    if not entity or not entity.valid then return end

    if entity.type == "underground-belt" then
        on_entity_mined_common(event, entity, name_underground_belt[entity.name], false, "mod-messages.belts-refunded")
    end
end

return {on_entity_built = on_entity_built, on_entity_mined = on_entity_mined}