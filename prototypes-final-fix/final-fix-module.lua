if mods [bobmodules] then
    -- SPEED
    data_module[speed_module_1].effect =
    {
        speed = bobmods.modules.SpeedBonus, -- 25%
        consumption = bobmods.modules.ConsumptionPenaltyPerLevel, -- 25%
        --quality = -1 * bobmods.modules.QualityBonus, -- -1%
    }
    data_module[speed_module_2].effect =
    {
        speed = bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus, -- 50%
        consumption = bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 50%
        --quality = -1 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus, -- -2%
    }
    data_module[speed_module_3].effect =
    {
        speed = 2 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus, -- 75%
        consumption = 2 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 75%
        --quality = -2 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus, -- -3%
    }
    data_module[speed_module_4].effect =
    {
        speed = 3 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus, -- 100%
        consumption = 3 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 100%
        --quality = -3 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus, -- -4%
    }
    data_module[speed_module_5].effect =
    {
        speed = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus, -- 125%
        consumption = 4 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 125%
        --quality = -4 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus, -- -5%
    }

    -- EFFICIENCY
    --data_module[efficiency_module_1].effect = {consumption = -1 * bobmods.modules.ConsumptionBonus} -- 25%
    --data_module[efficiency_module_2].effect = {consumption = -1 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus} -- 50%
    --data_module[efficiency_module_3].effect = {consumption = -2 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus} -- 75%
    --data_module[efficiency_module_4].effect = {consumption = -3 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus} -- 100%
    --data_module[efficiency_module_5].effect = {consumption = -4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus} -- 125%

    -- PRODUCTIVITY
    data_module[productivity_module_1].effect =
    {
        productivity = bobmods.modules.ProductivityBonus, -- 5%
        consumption = bobmods.modules.ConsumptionPenalty, -- 25%
        pollution = bobmods.modules.PollutionPenalty, -- 25%
        speed = -1 * bobmods.modules.SpeedPenalty, -- -25%
    }
    data_module[productivity_module_2].effect =
    {
        productivity = bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 10%
        consumption = bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 50%
        pollution = bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 50%
        speed = -1 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- -50%
    }
    data_module[productivity_module_3].effect =
    {
        productivity = 2 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 15%
        consumption = 2 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 75%
        pollution = 2 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 75%
        speed = -2 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- -75%
    }
    data_module[productivity_module_4].effect =
    {
        productivity = 3 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 20%
        consumption = 3 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 100%
        pollution = 3 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 100%
        speed = -3 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- -100%
    }
    data_module[productivity_module_5].effect =
    {
        productivity = 4 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus, -- 25%
        consumption = 4 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty, -- 125%
        pollution = 4 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty, -- 125%
        speed = -4 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- -125%
    }

    -- POLLUTION CLEANING
    --data_module[pollution_clean_module_1].effect = {pollution = -1 * bobmods.modules.PollutionBonus} -- 25%
    --data_module[pollution_clean_module_2].effect = {pollution = -1 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus} -- 50%
    --data_module[pollution_clean_module_3].effect = {pollution = -2 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus} -- 75%
    --data_module[pollution_clean_module_4].effect = {pollution = -3 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus} -- 100%
    --data_module[pollution_clean_module_5].effect = {pollution = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus} -- 125%

    -- POLLUTION PRODUCING
    --data_module[pollution_create_module_1].effect = {pollution = bobmods.modules.PollutionCreateBonus} -- 25%
    --data_module[pollution_create_module_2].effect = {pollution = bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus} -- 50%
    --data_module[pollution_create_module_3].effect = {pollution = 2 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus} -- 75%
    --data_module[pollution_create_module_4].effect = {pollution = 3 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus} -- 100%
    --data_module[pollution_create_module_5].effect = {pollution = 4 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus} -- 125%

    -- QUALITY
    data_module[quality_module_1].effect =
    {
        quality = bobmods.modules.QualityBonus, -- 2%
        speed = -1 * bobmods.modules.SpeedPenalty, -- -25%
    }
    data_module[quality_module_2].effect =
    {
        quality = bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus, -- 4%
        speed = -1 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- 50%
    }
    data_module[quality_module_3].effect =
    {
        quality = 2 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus, -- 6%
        speed = -2 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- 75%
    }
    data_module[quality_module_4].effect =
    {
        quality = 3 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus, -- 8%
        speed = -3 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- 100%
    }
    data_module[quality_module_5].effect =
    {
        quality = 4 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus, -- 10%
        speed = -4 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty, -- 125%
    }
end

-- AGRICULTURAL
--data_module[agricultural_module_1].effect = {}
--data_module[agricultural_module_2].effect = {}
--data_module[agricultural_module_3].effect = {}
--data_module[agricultural_module_4].effect = {}
--data_module[agricultural_module_5].effect = {}

-- MOSHINE
if mods [moshine_mods] then
    data_module["ai-tier-1"].effect = {speed = 0.25}
    data_module["ai-tier-2"].effect = {speed = 0.50}
    data_module["ai-tier-3"].effect = {speed = 0.75}
    data_module["ai-tier-4"].effect = {speed = 1.00}
    data_module["ai-tier-5"].effect = {speed = 1.25}
    data_module["ai-tier-6"].effect = {speed = 1.50}
    data_module["ai-tier-7"].effect = {speed = 1.75}
    data_module["ai-tier-8"].effect = {speed = 2.00}
    data_module["ai-tier-9"].effect = {speed = 2.25}
    data_module["ai-tier-10"].effect = {speed = 2.50}
end