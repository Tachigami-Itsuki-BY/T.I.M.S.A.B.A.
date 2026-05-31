setting_early_sintering_oven = "setting-early-sintering-oven"
setting_no_spoilage = "setting-no-spoilage"
setting_early_cliff_explosives = "setting-early-cliff-explosives"
setting_science_pack_nostalgia = "setting-science-pack-nostalgia"
setting_multi_building = "setting-multi-building"
setting_dynamic_underground_belts = "setting-dynamic-underground-belts"
setting_dynamic_pipe_to_ground = "setting-dynamic-pipe-to-ground"

setting_horogon_extra_science_packs = "setting-za-horogon-extra-science-packs"
setting_horogon_high_tier_recipes = "setting-zb-horogon-high-tier-recipes"
setting_horogon_module_planet_lock = "setting-zc-horogon-module-planet-lock"
setting_horogon_tier_technology_costs = "setting-zd-horogon-tier-technology-costs"

setting_horogon_logistics_multiplier = "setting-ze-horogon-logistics-multiplier-mk"
setting_horogon_military_multiplier = "setting-zf-horogon-military-multiplier-mk"
setting_horogon_power_multiplier = "setting-zg-horogon-power-multiplier-mk"
setting_horogon_production_multiplier = "setting-zh-horogon-production-multiplier-mk"

if angelsmods and angelsmods.trigger then
    local player_choice = settings.startup[setting_early_sintering_oven].value
    angelsmods.trigger.early_sintering_oven = player_choice
end
