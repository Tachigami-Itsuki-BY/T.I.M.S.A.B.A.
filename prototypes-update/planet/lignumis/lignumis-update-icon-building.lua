if mods[lignumis_mods] then
    local angels_mod = "angels"
    if not (reskins.angels and reskins.angels.triggers.refining.entities) then
        return
    end

    -- ORE SORTING FACILITY
    do
        local inputs =
        {
            type = assembling_machine,
            icon_name = "ore-sorting-facility",
            base_entity_name = assembling_machine_1,
            mod = angels_mod,
            particles = {[big] = 1, [medium] = 2},
            group = refining,
            make_remnants = false
        }
        local tier_map = {[burner_ore_sorting_facility] = {tier = 0, tint = util.color("#262626"), is_burner = true}}
        for name, map in pairs(tier_map) do
            ---@type data.AssemblingMachinePrototype
            local entity = data.raw[inputs.type][name]
            if not entity then
                goto continue
            end
            local tier = reskins.lib.tiers.get_tier(map)
            inputs.tint = map.tint or reskins.lib.tiers.get_tint(tier)
            reskins.lib.setup_standard_entity(name, tier, inputs)
            entity.graphics_set.animation =
            {
                layers =
                {
                    {
                        filename = "__angelsrefininggraphics__/graphics/entity/ore-sorting-facility/ore-sorting-facility-base.png",
                        priority = extra_high,
                        width = 449,
                        height = 458,
                        frame_count = 40,
                        line_length = 10,
                        shift = util.by_pixel(0, -2.5),
                        animation_speed = 0.5,
                        scale = 0.5
                    },
                    {
                        filename = "__reskins-angels__/graphics/entity/refining/ore-sorting-facility/ore-sorting-facility-mask.png",
                        priority = extra_high,
                        width = 449,
                        height = 458,
                        frame_count = 40,
                        line_length = 10,
                        shift = util.by_pixel(0, -2.5),
                        animation_speed = 0.5,
                        tint = inputs.tint,
                        scale = 0.5
                    },
                    {
                        filename = "__reskins-angels__/graphics/entity/refining/ore-sorting-facility/ore-sorting-facility-highlights.png",
                        priority = extra_high,
                        width = 449,
                        height = 458,
                        frame_count = 40,
                        line_length = 10,
                        shift = util.by_pixel(0, -2.5),
                        animation_speed = 0.5,
                        blend_mode = reskins.lib.settings.blend_mode,
                        scale = 0.5
                    },
                    {
                        filename = "__angelsrefininggraphics__/graphics/entity/ore-sorting-facility/ore-sorting-facility-shadow.png",
                        priority = extra_high,
                        width = 528,
                        height = 356,
                        repeat_count = 40,
                        shift = util.by_pixel(21.5, 24.5),
                        animation_speed = 0.5,
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            }
            ::continue::
        end
    end
end