if mods[terrapalus_mods] then
    local palusium_crushing = "palusium-crushing"
    local palusium_refining = "palusium-refining"
    local palusium_processing = "palusium-processing"
    local palusium_liquefaction = "palusium-liquefaction"
	local replacements_2 =
	{
		[palusium_crushing] = palusium_powder,
        [palusium_refining] = palusium_crystal,
        [palusium_processing] = palusium_plate,
        [palusium_liquefaction] = ultravium
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
	data_recipe[palusium_crushing] = nil
    data_recipe[palusium_refining] = nil
    data_recipe[palusium_processing] = nil
    data_recipe[palusium_liquefaction] = nil
end