if mods[secretas_frozeta_mods] then
    local speed_module_4_S = "speed-module-4-S"
    local efficiency_module_4_S = "efficiency-module-4-S"
    local productivity_module_4_S = "productivity-module-4-S"
    local quality_module_4_S = "quality-module-4-S"
    local replace_prototypes =
    {
        [gold_ore_mods] = gold_ore_bob,
        [gold_plate_mods] = gold_plate_bob,
        [speed_module_4_S] = speed_module_8,
        [efficiency_module_4_S] = efficiency_module_8,
        [productivity_module_4_S] = productivity_module_8,
        [quality_module_4_S] = quality_module_8
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    local delete_prototypes =
	{
		speed_module_4_S,
		efficiency_module_4_S,
		productivity_module_4_S,
		quality_module_4_S,
        "module-finale",
        "gold-path",
        gold_plate_mods .. _productivity,
        "hyper-inserter",
        "gold-heat-pipe",
        "pentapod-egg-unrestricted",
        "gold-railgun-turret",
        "gold-plate-alt",
        "golden-egg"
	}
    TIMSABA.functions.delete_prototypes(delete_prototypes)
end