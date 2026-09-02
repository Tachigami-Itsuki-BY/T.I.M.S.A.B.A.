if mods[lignumis_mods] then
    local molten_gold_mods = "molten-gold"
    local replace_prototypes =
    {
        [basic_circuit_board_mods] = basic_circuit_board,
        [molten_gold_mods] = gold_molten_angels,
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    data_fluid[molten_gold_mods] = nil
    data_recipe[molten_gold_mods] = nil

    local delete_proto =
	{
        basic_circuit_board_mods
    }
	TIMSABA.functions.delete_duplicated_items(delete_proto)

    local delete_prototypes =
	{
        "basic-construction-robot-copper",
        "basic-portable-generator-equipment-copper",
        "basic-personal-roboport-equipment-copper",
        "basic-construction-robotics-copper",
		"burner-long-handed-inserter",
        "steam-inserter",
        "steam-inserter-iron",
        "steam-long-handed-inserter",
        "steam-long-handed-inserter-iron",
        basic_circuit_board_mods .. "-copper",
        low_density_structure .. "-gold",
        processing_unit .. "-gold",
        "desiccation-" .. furnace .. "-iron",
        "burner-" .. agricultural_tower .. "-copper",
        "steam-" .. assembling_machine .. "-iron",
        "lumber-mill-copper",
        "gold-module-3",
        "burner-lamp",
        "burner-lamp-copper",
        "basic-" .. gun_turret_1 .. "-copper"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)
end