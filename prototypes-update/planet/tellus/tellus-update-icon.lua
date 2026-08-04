if mods[tellus_mods] then
    local icons_pipe =
    {
        {name = orange_pipe, icon = "__TIMSABA__/graphics/icons/tellus/orange-pipe.png"},
        {name = blue_pipe, icon = "__planetaris-dyes__/graphics/icons/pipe-blue.png"},
        {name = yellow_pipe, icon = "__planetaris-dyes__/graphics/icons/pipe-yellow.png"},
        {name = magenta_pipe, icon = "__planetaris-dyes__/graphics/icons/pipe-magenta.png"},
        {name = green_pipe, icon = "__planetaris-dyes__/graphics/icons/pipe-green.png"},
        {name = red_pipe, icon = "__planetaris-dyes__/graphics/icons/pipe-red.png"},
        {name = cyan_pipe, icon = "__planetaris-dyes__/graphics/icons/pipe-cyan.png"},
        {name = black_pipe, icon = "__TIMSABA__/graphics/icons/tellus/black-pipe.png"}
    }
    for _, info in ipairs(icons_pipe) do
        data_item[info.name].icon = nil
        data_item[info.name].icons = {{icon = info.icon, icon_size = 64}}
        reskins.lib.tiers.add_tier_labels_to_prototype_by_name(1, info.name, item)

        data_recipe[info.name].icon = nil
        data_recipe[info.name].icons = {{icon = info.icon, icon_size = 64}}
        reskins.lib.tiers.add_tier_labels_to_prototype_by_name(1, info.name, recipe)

        data_pipe[info.name].icon = nil
        data_pipe[info.name].icons = {{icon = info.icon, icon_size = 64}}
        reskins.lib.tiers.add_tier_labels_to_prototype_by_name(1, info.name, pipe)
    end

    local icons_pipe_to_ground =
    {
        {name = orange_pipe_to_ground, icon = "__TIMSABA__/graphics/icons/tellus/orange-pipe-to-ground.png"},
        {name = blue_pipe_to_ground, icon = "__planetaris-dyes__/graphics/icons/pipe-to-ground-blue.png"},
        {name = yellow_pipe_to_ground, icon = "__planetaris-dyes__/graphics/icons/pipe-to-ground-yellow.png"},
        {name = magenta_pipe_to_ground, icon = "__planetaris-dyes__/graphics/icons/pipe-to-ground-magenta.png"},
        {name = green_pipe_to_ground, icon = "__planetaris-dyes__/graphics/icons/pipe-to-ground-green.png"},
        {name = red_pipe_to_ground, icon = "__planetaris-dyes__/graphics/icons/pipe-to-ground-red.png"},
        {name = cyan_pipe_to_ground, icon = "__planetaris-dyes__/graphics/icons/pipe-to-ground-cyan.png"},
        {name = black_pipe_to_ground, icon = "__TIMSABA__/graphics/icons/tellus/black-pipe-to-ground.png"}
    }
    for _, info in ipairs(icons_pipe_to_ground) do
        data_item[info.name].icon = nil
        data_item[info.name].icons = {{icon = info.icon, icon_size = 64}}
        reskins.lib.tiers.add_tier_labels_to_prototype_by_name(1, info.name, item)

        data_recipe[info.name].icon = nil
        data_recipe[info.name].icons = {{icon = info.icon, icon_size = 64}}
        reskins.lib.tiers.add_tier_labels_to_prototype_by_name(1, info.name, recipe)

        data_pipe_to_ground[info.name].icon = nil
        data_pipe_to_ground[info.name].icons = {{icon = info.icon, icon_size = 64}}
        reskins.lib.tiers.add_tier_labels_to_prototype_by_name(1, info.name, pipe_to_ground)
    end
end