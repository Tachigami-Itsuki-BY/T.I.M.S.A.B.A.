if mods[corrundum_mods] then
	local iron_sulfate_solution = "iron-sulfate-solution"
	local copper_sulfate_solution = "copper-sulfate-solution"
    local replace_prototypes =
    {
		[sulfur_ore_mods] = sulfur,
		[petroleum_gas] = methane_angels,
        [hydrogen_sulfide_mods] = hydrogen_sulfide_angels,
        [sulfur_dioxide_mods] = sulfur_dioxide_angels,
        [carbon_dioxide_mods] = carbon_dioxide_angels,
        [calcium_sulfate_mods] = calcium_sulfate_angels,
		[platinum_ore_mods] = platinum_ore_angels,
		[platinum_plate_mods] = platinum_plate,
		[iron_sulfate_solution] = iron_sulfate_II_solution,
		[copper_sulfate_solution] = copper_sulfate_II_solution
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto =
	{
		sulfur_ore_mods,
		calcium_sulfate_mods,
		platinum_ore_mods,
		platinum_plate_mods
	}
	TIMSABA.functions.delete_duplicated_prototypes(delete_proto)

	local delete_prototypes =
	{
		platinum_plate_mods .. "-production-alt",
		"iron-sulfate-solution",
		"copper-sulfate-solution",
		"mixed-sulfate-solution",
		"chalcopyrite-refining",
		"reactive-displacement",
		"kinetic-reactive-displacement",
		"force-reduction-iron",
		"iron-recrystalization",
		"iron-recrystalization-alt",
		"iron-stick-recrystalization",
		"force-reduction-copper",
		"copper-recrystalization",
		"copper-recrystalization-alt",
		"super-saturated-displacement",
		"destructive-dilute-acid-neutralization",
		"pressurized-acid-neutralization",
		"pressurized-acid-neutralization-alt",
		"hot-water-to-steam",
		sulfuric_acid .. "-dilute",
		sulfuric_acid .. "-dilution",
		sulfuric_acid .. "-concentration",
		sulfuric_acid .. "-concentration-alt",
		"dilute-acid-neutralization",
		"calcium-sulfate-production-alt",
		"calcium-sulfate-recovery",
		"controlled-petrol-combustion",
		"stone-production",
		"thruster-fuel-oxidizer-to-steam",
		"carbon-dioxide-to-carbon",
		"chalcopyrite-processing",
		pipe .. _productivity .. _infinite,
		steam_turbine_1 .. _productivity .. _infinite,
		sulfuric_acid .. _productivity .. _infinite,
		"recrystalization",
		"space-steam-production",
		"petrol-dehydrogenation-and-combustion-maraxsis"
	}
	if mods[maraxsis_mods] then
		table.insert(delete_prototypes, "petrol-dehydrogenation-and-combustion")
	end
	TIMSABA.functions.delete_prototypes(delete_prototypes)
end