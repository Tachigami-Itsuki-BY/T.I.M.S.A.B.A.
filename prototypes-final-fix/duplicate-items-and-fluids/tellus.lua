if mods [tellus_mods] then
    local replacements =
    {
        [compost_tellus] = compost_angels
    }
    delete_duplicate_item_and_fluid(replacements)

    data_item[compost_tellus] = nil
    data_recipe[compost_tellus .. _recycling] = nil
    if mods [panglia_mods] then
        data_recipe[item_ .. compost_tellus .. _panglia_crushing] = nil
    end

    data_recipe["planetaris-tellus-condensing-agricultural-tower"] = nil

    local inserters =
    {
        "planetaris-three-long-handed-inserter",
        "planetaris-long-stack-inserter"
    }
    for _, name in pairs(inserters) do
        data_item[name] = nil
        data_recipe[name] = nil
        data_recipe[name .. _recycling] = nil
        if mods [panglia_mods] then
            data_recipe[item_ .. name .. _panglia_crushing] = nil
        end
        data_inserter[name] = nil
        if mods [panglia_mods] then
            data_inserter[name .. _panglia_fast_version] = nil
        end

        if data_technology[name] then
            data_technology[name] = nil
        end
    end

    local preservation_unit = "planetaris-preservation-unit"
    data_item[preservation_unit] = nil
    data_recipe[preservation_unit] = nil
    data_recipe[preservation_unit .. _recycling] = nil
    if mods [panglia_mods] then
        data_recipe[item_ .. preservation_unit .. _panglia_crushing] = nil
    end
    data_furnace[preservation_unit] = nil

    data_technology["planetaris-space-preservation"] = nil

    local colored_pototypes =
    {
        "planetaris-acid-refined-concrete",
        "planetaris-pink-refined-concrete",
        "planetaris-brown-refined-concrete"
    }
    for _, name in pairs(colored_pototypes) do
        data_item[name] = nil
        data_recipe[name] = nil
        data_recipe[name .. _recycling] = nil
        if mods [panglia_mods] then
            data_recipe[item_ .. name .. _panglia_crushing] = nil
        end
        data_tile[name] = nil
    end

    data_recipe["planetaris-tellus-rocket-silo"] = nil
end