local bool_setting = "bool-setting"
local startup = "startup"
data:extend
({
    {
        type = bool_setting,
        name = "setting-early-sintering-oven",
        setting_type = startup,
        default_value = false
    },
    {
        type = bool_setting,
        name = "setting-no-spoilage",
        setting_type = startup,
        default_value = false
    },
    {
        type = bool_setting,
        name = "setting-early-cliff-explosives",
        setting_type = startup,
        default_value = false
    },
    {
        type = bool_setting,
        name = "setting-multi-building",
        setting_type = startup,
        default_value = false
    },
    --[[{
        type = bool_setting,
        name = "setting-dynamic-underground-belts",
        setting_type = startup,
        default_value = false
    },
    {
        type = bool_setting,
        name = "setting-dynamic-pipe-to-ground",
        setting_type = startup,
        default_value = false
    }]]
})

if mods ["bobtech"] and mods ["sa-science-packs"] then
    data:extend
    ({
        {
            type = bool_setting,
            name = "setting-science-pack-nostalgia",
            setting_type = startup,
            default_value = false
        }
    })
end

--[[data:extend
({
    {
        type = bool_setting,
        name = ,
        setting_type = startup,
        default_value = false
    }
})]]