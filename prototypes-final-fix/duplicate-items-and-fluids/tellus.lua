if mods [tellus_mods] then
    local replacements =
    {
        [compost_tellus] = compost_angels,
        --[] = ,
    }
    delete_duplicate_item_and_fluid(replacements)

    data_item[compost_tellus] = nil
    data_recipe[compost_tellus .. _recycling] = nil
    if mods [panglia_mods] then
        data_recipe[item_ .. compost_tellus .. _panglia_crushing] = nil
    end

    data_recipe["planetaris-tellus-condensing-agricultural-tower"] = nil
end