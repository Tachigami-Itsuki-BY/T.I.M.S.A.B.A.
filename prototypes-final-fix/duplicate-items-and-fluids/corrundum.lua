if mods[corrundum_mods] then
	local iron_sulfate_solution = "iron-sulfate-solution"
	local copper_sulfate_solution = "copper-sulfate-solution"
    local replacements =
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
	TIMSABA.functions.delete_duplicate_item_and_fluid(replacements)

	local mod_items =
	{
		sulfur_ore_mods,
		calcium_sulfate_mods,
		platinum_ore_mods,
		platinum_plate_mods
	}
	for _, name in ipairs(mod_items) do
		data_item[name] = nil
		data_recipe[name .. _recycling] = nil
		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
	end
	data_recipe[platinum_plate_mods.. "-production-alt"] = nil

	data_fluid["iron-sulfate-solution"] = nil
	data_fluid["copper-sulfate-solution"] = nil
	data_fluid["mixed-sulfate-solution"] = nil
	data_recipe["chalcopyrite-refining"] = nil
	data_recipe["reactive-displacement"] = nil
	data_recipe["kinetic-reactive-displacement"] = nil
	data_recipe["force-reduction-iron"] = nil
	data_recipe["iron-recrystalization"] = nil
	data_recipe["iron-recrystalization-alt"] = nil
	data_recipe["iron-stick-recrystalization"] = nil
	data_recipe["force-reduction-copper"] = nil
	data_recipe["copper-recrystalization"] = nil
	data_recipe["copper-recrystalization-alt"] = nil
	data_recipe["super-saturated-displacement"] = nil
	data_recipe["destructive-dilute-acid-neutralization"] = nil

	data_recipe["pressurized-acid-neutralization"] = nil
	data_recipe["pressurized-acid-neutralization-alt"] = nil
	data_recipe["hot-water-to-steam"] = nil

	data_fluid[sulfuric_acid .. "-dilute"] = nil
	data_recipe[sulfuric_acid .. "-dilution"] = nil
	data_recipe[sulfuric_acid .. "-concentration"] = nil
	data_recipe[sulfuric_acid .. "-concentration-alt"] = nil

	data_recipe["dilute-acid-neutralization"] = nil
	data_recipe["calcium-sulfate-production-alt"] = nil
	local calcium_sulfate_recovery = "calcium-sulfate-recovery"
	data_recipe[calcium_sulfate_recovery] = nil
	data_technology[calcium_sulfate_recovery] = nil

	data_recipe["controlled-petrol-combustion"] = nil
	local stone_production = "stone-production"
	data_recipe[stone_production] = nil
	data_technology[stone_production] = nil
	data_recipe["thruster-fuel-oxidizer-to-steam"] = nil
	data_recipe["carbon-dioxide-to-carbon"] = nil

	data_recipe["petrol-dehydrogenation-and-combustion"] = nil
	data_recipe["petrol-dehydrogenation-and-combustion-maraxsis"] = nil

	data_technology["chalcopyrite-processing"] = nil
	data_technology[pipe .. _productivity .. "-infinite"] = nil
	data_technology[steam_turbine_1 .. _productivity .. "-infinite"] = nil
	data_technology[sulfuric_acid .. _productivity .. "-infinite"] = nil
	data_technology["recrystalization"] = nil
	data_technology["space-steam-production"] = nil
end