local bool_setting = "bool-setting"
local startup = "startup"
data:extend
({
    {
        type = bool_setting,
        name = "setting-early-sintering-oven",
        setting_type = startup,
        default_value = false,
        order = a
    }
})
