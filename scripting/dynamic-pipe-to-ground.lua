local on_entity_built_common = require("scripting.dynamic-common").on_entity_built_common
local on_entity_mined_common = require("scripting.dynamic-common").on_entity_mined_common

local settings_dynamic_enabled = settings.startup["setting-dynamic-pipe-to-ground"] and settings.startup["setting-dynamic-pipe-to-ground"].value

local name_pipe_to_ground =
{
    ["pipe-to-ground"] = "pipe", -- Iron
    ["bob-copper-pipe-to-ground"] = "bob-copper-pipe",
    ["bob-stone-pipe-to-ground"] = "bob-stone-pipe",
    ["bob-bronze-pipe-to-ground"] = "bob-bronze-pipe",
    ["bob-steel-pipe-to-ground"] = "bob-steel-pipe",
    ["bob-plastic-pipe-to-ground"] = "bob-plastic-pipe",
    ["bob-brass-pipe-to-ground"] = "bob-brass-pipe",
    ["bob-titanium-pipe-to-ground"] = "bob-titanium-pipe",
    ["bob-ceramic-pipe-to-ground"] = "bob-ceramic-pipe",
    ["bob-tungsten-pipe-to-ground"] = "bob-tungsten-pipe",
    ["bob-nitinol-pipe-to-ground"] = "bob-nitinol-pipe",
    ["bob-copper-tungsten-pipe-to-ground"] = "bob-copper-tungsten-pipe",
    ["molybdenum-rhenium-pipe-to-ground"] = "molybdenum-rhenium-pipe"
}

local function on_entity_built(event)
    if not settings_dynamic_enabled then return end

    local entity = event.entity or event.created_entity
    if not entity or not entity.valid then return end

    if entity.type == "pipe-to-ground" then
        local pipe_name_and_icon = name_pipe_to_ground[entity.name]
        on_entity_built_common(event, entity, pipe_name_and_icon, true, pipe_name_and_icon, "mod-messages.pipes-consumed", "mod-messages.not-enough-pipes")
    end
end

local function on_entity_mined(event)
    if not settings_dynamic_enabled then return end

    local entity = event.entity
    if not entity or not entity.valid then return end

    if entity.type == "pipe-to-ground" then
        on_entity_mined_common(event, entity, name_pipe_to_ground[entity.name], true, "mod-messages.pipes-refunded")
    end
end

return {on_entity_built = on_entity_built, on_entity_mined = on_entity_mined}