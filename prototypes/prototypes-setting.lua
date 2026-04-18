setting_early_sintering_oven = "setting-early-sintering-oven"
if angelsmods and angelsmods.trigger then
    local player_choice = settings.startup[setting_early_sintering_oven].value
    angelsmods.trigger.early_sintering_oven = player_choice
end
