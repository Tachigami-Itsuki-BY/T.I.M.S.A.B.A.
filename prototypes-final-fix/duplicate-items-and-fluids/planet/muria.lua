if mods[muria_mods] then
    local chlorane = "chlorane"
    local lead = "lead"
    local lead_plate = "lead-plate"
    local lead_molten = "molten-lead"
    local lead_pellets = "lead-pellets"
    local replacements =
    {
        [chlorane] = hydrogen_chloride_angels,
        [lead] = lead_ore_bob,
        [lead_plate] = lead_plate_bob,
        [lead_molten] = lead_molten_angels,
        [lead_pellets] = shotgun_pellets,
        --[] = ,
        --[] = ,
    }
	TIMSABA.functions.replace_duplicate_prototypes(replacements)

    data_fluid[chlorane] = nil
    data_recipe[chlorane] = nil

    local mod_items =
	{
		lead,
        lead_plate,
        lead_pellets,
        "corroded-flask"
	}
	for _, name in ipairs(mod_items) do
		data_item[name] = nil
		data_recipe[name .. _recycling] = nil

		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
	end

    data_fluid[lead_molten] = nil
    data_recipe[lead_molten] = nil

    data_recipe["casting-lead"] = nil
    data_recipe["casting-lead-pellets"] = nil

    data_recipe[lead_pellets] = nil

    data_recipe["chlorane-oxidation"] = nil

    data_recipe["water-electrolysis"] = nil

    data_recipe["corroded-flask-recovery"] = nil

    local muriatic_science_pack_activation = "muriatic-science-pack-activation"
    local replacements_2 =
	{
		[muriatic_science_pack_activation] = muriatic_science_pack
	}
	for _, technology in pairs(data_technology or {}) do
		if technology.effects then
			for _, effect in pairs(technology.effects) do
				if effect.type == unlock_recipe then
					local replace = replacements_2[effect.recipe]
					if replace then
						effect.recipe = replace
					end
				end
			end
		end
	end

    data_recipe[muriatic_science_pack_activation] = nil

    data_technology["hydronium-destruction" .. _productivity] = nil

    local holmium_chloride = "holmium-chloride"
    data_item[holmium_chloride] = nil
    data_recipe[holmium_chloride] = nil
    data_technology[holmium_chloride] = nil
    data_plant[holmium_chloride] = nil

    data_plant["holmium-lichen-colony"] = nil

    local scrubber = "scrubber"
    data_item[scrubber] = nil
    data_recipe[scrubber] = nil
    data_assembling[scrubber] = nil

    local air_scrubbing = "air-scrubbing"
    data_recipe["murian-" .. air_scrubbing] = nil
    data_recipe["nauvitian-" .. air_scrubbing] = nil
    data_recipe["gleban-" .. air_scrubbing] = nil
    data_recipe["vulcanusian-" .. air_scrubbing] = nil
    data_recipe["fulgoran-" .. air_scrubbing] = nil
    data_recipe["aquiloan-" .. air_scrubbing] = nil
    data_recipe["paracelsian-" .. air_scrubbing] = nil

    data_technology[air_scrubbing] = nil

    local chlorane_lead_battery = "chlorane-lead-battery"
    data_recipe[chlorane_lead_battery] = nil
    data_technology[chlorane_lead_battery] = nil

    data_recipe["oxygenated-iron-bacteria-cultivation"] = nil
    data_recipe["oxygenated-copper-bacteria-cultivation"] = nil
    data_technology["oxygenated-bacteria-cultivation"] = nil

    local acidthrower_turret = "acidthrower-turret"
    data_item[acidthrower_turret] = nil
    data_recipe[acidthrower_turret] = nil
    data_fluid_turret[acidthrower_turret] = nil

    -- Проверяем, существует ли в игре сам тип сущностей "agricultural-tower"
    if data_agricultural_tower then
        -- Перебираем абсолютно все башни, зарегистрированные в игре
        for name, tower in pairs(data_agricultural_tower) do
            -- Проверяем, есть ли у конкретной башни список разрешенных семян
            if tower.accepted_seeds then
                -- Идем по массиву семян с конца к началу, чтобы не сломать индексы при удалении
                for i = #tower.accepted_seeds, 1, -1 do
                    if tower.accepted_seeds[i] == holmium_chloride then
                        table.remove(tower.accepted_seeds, i)
                    end
                end
            end
        end
    end
end