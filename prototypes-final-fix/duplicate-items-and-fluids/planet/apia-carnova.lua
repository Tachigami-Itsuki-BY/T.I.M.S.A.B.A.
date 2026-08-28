if mods[apia_carnova_mods] then
    local phosphorus = "phosphorus"
    local replace_prototypes =
    {
        [phosphorus] = white_phosphorus,
        [phosphoric_acid] = orthophosphoric_acid,
		[glycerine] = glycerol_angels,
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    data_item[phosphorus] = nil
    data_fluid[phosphoric_acid] = nil
    data_fluid[glycerine] = nil

    local delete_prototypes =
	{
        "bone-meal-smelting",
        "processing-unit-from-phosphoric-acid",
        "flamethrower-ammo-from-phosphorus",
        "battery-from-phosphoric-acid",
        "artillery-shell-with-phosphorus",
        "phosphorus-shell",
        "bio-solar-panel",
        "bioreactor",
        "flamethrower-capsule",
        "flamethrower-robot"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)

    data_combat_robot["flamethrower"] = nil
end