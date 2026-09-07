if mods[bellicos_aegis_mods] then
    local replace_prototypes =
    {
        [beryllium_plate_hyarion] = beryllium_plate
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    local delete_proto = {beryllium_plate_hyarion}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

    local delete_prototypes =
	{
        "beryllium-oxyde",
        "beryllium_gear",
        "copper_beryllium_plate",
        "beryllium-processing",
        "long-lightweight-inserter",
        "lightweight-inserter",
		"lightweight-inserters",
		"beryllium-solar-panel",
		"space-beryllium-underground-pipe",
        "high-velocity-magazine",
        "high-velocity-" .. rocket,
        "high-velocity-" .. cannon_shell,
		"lightweight-arsenal",
        "high-velocity-piercing-magazine",
        "high-velocity-piercing-" .. rocket,
        "high-velocity-piercing-" .. cannon_shell,
        "tungsten-lightweight-arsenal",
        "advanced-metallic_dense-asteroid-crushing",
        "H-bomb",
        "the-solution",
        "tritium_fusion_cell",
        "depleted_tritium_fusion_cell",
        "depleted-tritium-fusion-cell-reprocessing",
        "tritium-fusion-fuel",
        "low-grade-fusion-reactor",
        "ice-vaporisation",
        "high-temp-steam-turbine",
        "low-grade-fusion",
        "tritium-thruster-fuel",
        "steam-thruster-TT",
        "low-grade-fusion-thrust",
        "helium-thruster-fuel",
        "steam-thruster-TH",
        "high-grade-fusion-thrust",
        "advanced-thruster-fuel" .. _productivity,
        "nuclear-isotope-extraction" .. _productivity,
        "tritium-venting",
        "helium-by-lithium",
        "helium-venting",
        "metallic_dense-asteroid-reprocessing",
        "oxyde_rad-asteroid-reprocessing"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)
end