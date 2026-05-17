setting_early_sintering_oven = "setting-early-sintering-oven"
setting_no_spoilage = "setting-no-spoilage"
setting_early_cliff_explosives = "setting-early-cliff-explosives"
setting_science_pack_nostalgia = "setting-science-pack-nostalgia"
setting_multi_building = "setting-multi-building"

if angelsmods and angelsmods.trigger then
    local player_choice = settings.startup[setting_early_sintering_oven].value
    angelsmods.trigger.early_sintering_oven = player_choice
end
