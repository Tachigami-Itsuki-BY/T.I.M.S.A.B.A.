if mods[loaders_modernized_integrations] then
    if reskins.bobs and (reskins.bobs.triggers.logistics.entities == false) then return end

    -- Set input parameters
    local inputs =
    {
        icon_name = "miniloader",
        base_entity_name = splitter,
        mod = "compatibility",
        group = "miniloader",
        particles = {[medium] = 1, [big] = 4},
        technology_icon_size = 256,
        make_remnants = false,
    }

    -- Handle belt tier labels
    inputs.tier_labels = reskins.lib.settings.get_value("reskins-bobs-do-belt-entity-tier-labeling") and true or false

    local tier_map =
    {
        [T0_loader] = {tier = 0, sprite_variant = 1, base_belt = T0_transport_belt},
        [T1_loader] = {tier = 1, sprite_variant = 1, base_belt = T1_transport_belt},
        [T2_loader] = {tier = 2, sprite_variant = 2, base_belt = T2_transport_belt},
        [T3_loader] = {tier = 3, sprite_variant = 2, base_belt = T3_transport_belt},
        [T4_loader] = {tier = 4, sprite_variant = 2, base_belt = T4_transport_belt},
        [T5_loader] = {tier = 5, sprite_variant = 2, base_belt = T5_transport_belt},
        [vulcanus_loader] = {tier = 6, sprite_variant = 2, base_belt = vulcanus_transport_belt}
    }
    if mods[arig_mods] then
        --tier_map[hyper_loader_arig] = {tier = 0, sprite_variant = 1, base_belt = hyper_transport_belt_arig}
        --tier_map[stack_loader] = {tier = 0, sprite_variant = 1, base_belt = hyper_transport_belt_arig}
    else
        --tier_map[stack_loader] = {tier = 0, sprite_variant = 1, base_belt = T0_transport_belt}
    end

    local item_map =
    {
        [T0_loader] = {tier = 0, base_item = T0_transport_belt},
        [T1_loader] = {tier = 1, base_item = T1_transport_belt},
        [T2_loader] = {tier = 2, base_item = T2_transport_belt},
        [T3_loader] = {tier = 3, base_item = T3_transport_belt},
        [T4_loader] = {tier = 4, base_item = T4_transport_belt},
        [T5_loader] = {tier = 5, base_item = T5_transport_belt},
        [vulcanus_loader] = {tier = 6, base_item = vulcanus_transport_belt}
    }
    if mods[arig_mods] then
        --item_map[hyper_loader_arig] = {tier = 0, base_item = hyper_transport_belt_arig}
        --item_map[stack_loader] = {tier = 0, base_item = hyper_transport_belt_arig}
    else
        --item_map[stack_loader] = {tier = 0, base_item = T0_transport_belt}
    end

    -- Reskin entities
    for name, map in pairs(tier_map) do
        if map.is_inserter then
            inputs.type = "inserter"
            inputs.make_explosions = true
        else
            inputs.type = "loader-1x1"
            inputs.make_explosions = false
        end

        ---@type data.InserterPrototype|data.Loader1x1Prototype
        local entity = data.raw[inputs.type][name]
        local base_belt = data_transport_belt[map.base_belt]
        if not entity then
            goto continue
        end
        inputs.tint = reskins.lib.tiers.get_belt_tint(map.tier)

        reskins.lib.setup_standard_entity(name, map.tier, inputs)

        -- Retint the mask
        if map.is_inserter then
            ---@cast entity data.InserterPrototype
            local base_path = map.is_filter and "filter-inserter" or "inserter"

            entity.corpse = "small-remnants"
            entity.platform_picture.sheets =
            {
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-" .. base_path .. "-base.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-mask.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-highlights.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    blend_mode = "additive"
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-shadow.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    draw_as_shadow = true
                }
            }
        else
            ---@cast entity data.Loader1x1Prototype
            local base_path = map.is_filter and "filter-structure" or "structure"

            entity.structure.direction_in.sheets =
            {
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-" .. base_path .. "-base.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 0
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-mask.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 0,
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-highlights.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 0,
                    blend_mode = "additive"
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-shadow.png",
                    draw_as_shadow = true,
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 0
                }
            }

            entity.structure.direction_out.sheets =
            {
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-" .. base_path .. "-base.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-mask.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    tint = inputs.tint
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-highlights.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    blend_mode = "additive"
                },
                {
                    filename = "__reskins-compatibility__/graphics/entity/miniloader/miniloader/miniloader-structure-shadow.png",
                    height = 192,
                    priority = extra_high,
                    scale = 0.5,
                    width = 192,
                    y = 192,
                    draw_as_shadow = true
                }
            }

            entity.belt_animation_set = base_belt and base_belt.belt_animation_set
        end

        ::continue::
    end

    -- Reskin icons
    for name, map in pairs(item_map) do

        local item = data_item[name]

        if not item then
            goto continue
        end

        inputs.icon_base = map.icon_base or "miniloader"
        inputs.tint = reskins.lib.tiers.get_belt_tint(map.tier)

        reskins.lib.construct_icon(name, map.tier, inputs)

        local base_item = map.base_item and data_item[map.base_item] or nil
        if not base_item then
            if name ~= "chute-miniloader" then
                base_item = data_item[string.gsub(string.gsub(name, "filter%-", ""), "miniloader", transport_belt)]
            elseif data_item[T0_transport_belt] then
                base_item = data_item[T0_transport_belt]
            end
        end

        if base_item then
            inputs.sort_order = string.gsub(string.gsub(item.order, "^[a-z]", "d"), "transport%-belt", "miniloader")
            inputs.sort_group = base_item.group
            inputs.sort_subgroup = base_item.subgroup

            if string.find(name, "filter") then
                inputs.sort_order = string.gsub(inputs.sort_order, "filter", "n-filter")
            elseif name == "chute-miniloader" then
                inputs.sort_order = string.gsub(inputs.sort_order, "miniloader", "z-miniloader")
            end

            reskins.lib.assign_order(name, inputs)
        end

        ::continue::
    end

    -- Technologies
    local technology_map =
    {
        [T0_loader] = {tier = 0},
        [T1_loader] = {tier = 1},
        [T2_loader] = {tier = 2},
        [T3_loader] = {tier = 3},
        [T4_loader] = {tier = 4},
        [T5_loader] = {tier = 5}
    }

    -- Reskin technologies
    for name, map in pairs(technology_map) do
        local technology = data_technology[name]
        if not technology then
            goto continue
        end

        inputs.icon_base = nil
        inputs.tint = reskins.lib.tiers.get_belt_tint(map.tier)

        reskins.lib.construct_technology_icon(name, inputs)

        ::continue::
    end
end