local bool_setting = "bool-setting"
local double_setting = "double-setting"
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
    {
        type = bool_setting,
        name = "setting-rebalance-belts-and-pipes",
        setting_type = startup,
        default_value = true
    },
    {
        type = bool_setting,
        name = "setting-flow-control-new",
        setting_type = startup,
        default_value = false
    },
    {
        type = double_setting,
        name = "setting-defrost-multiplier",
        setting_type = startup,
        default_value = 2,
        minimum_value = 1,
        maximum_value = 720 -- if 12 hour then 1 year
    }
})

if mods["bobtech"] and mods["sa-science-packs"] then
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

if mods["planetaris-tellus"] then
    data:extend
    ({
        {
            type = bool_setting,
            name = "setting-tellus-dye-concrete-brick",
            setting_type = startup,
            default_value = true
        }
    })
end

if mods["Flare Stack"] then
    data:extend
    ({
        {
            type = bool_setting,
            name = "setting-real-incineration",
            setting_type = startup,
            default_value = true
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

local function horogon_multiplier(name, default_value)
    return
    {
        type = double_setting,
        name = name,
        setting_type = startup,
        default_value = default_value,
        minimum_value = 0.1,
        maximum_value = 100
    }
end

data:extend
({
    {
        type = bool_setting,
        name = "setting-za-horogon-extra-science-packs",
        setting_type = startup,
        default_value = false
    },
    {
        type = bool_setting,
        name = "setting-zb-horogon-high-tier-recipes",
        setting_type = startup,
        default_value = false
    },
    {
        type = bool_setting,
        name = "setting-zc-horogon-module-planet-lock",
        setting_type = startup,
        default_value = false
    },
    {
        type = bool_setting,
        name = "setting-zd-horogon-tier-technology-costs",
        setting_type = startup,
        default_value = false
    },
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk1", 1),
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk2", 1),
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk3", 1),
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk4", 1),
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk5", 1),
    horogon_multiplier("setting-ze-horogon-logistics-multiplier-mk6", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk1", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk2", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk3", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk4", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk5", 1),
    horogon_multiplier("setting-zf-horogon-military-multiplier-mk6", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk1", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk2", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk3", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk4", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk5", 1),
    horogon_multiplier("setting-zg-horogon-power-multiplier-mk6", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk1", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk2", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk3", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk4", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk5", 1),
    horogon_multiplier("setting-zh-horogon-production-multiplier-mk6", 1),
    {
        type = double_setting,
        name = "setting-zi-horogon-mech-armor-technology-cost",
        setting_type = startup,
        default_value = 4096,
        minimum_value = 1,
        maximum_value = 1000000
    },
    {
        type = bool_setting,
        name = "setting-zj-horogon-power-armor-chain-from-mech",
        setting_type = startup,
        default_value = true
    }
})