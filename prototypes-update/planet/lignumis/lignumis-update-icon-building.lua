if mods[lignumis_mods] then
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

    -- CHEMICAL PLANT
    do
        local chemical_plants = {[burner_chemical_plant] = {tier = 0, tint = util.color("#262626"), is_burner = true}}

        local use_vanilla_chemical_plant_sprites = reskins.lib.settings.get_value("reskins-angels-use-vanilla-chemical-plant-sprites")

        for name, map in pairs(chemical_plants) do
            local tier = reskins.lib.tiers.get_tier(map)
            if use_vanilla_chemical_plant_sprites then
                reskins.lib.apply_skin.chemical_plant(name, tier)
            else
                reskins.lib.apply_skin.angels_chemical_plant(name, tier)
            end
        end
    end

    -- SEED EXTRACTOR
    do
        local inputs =
        {
            type = assembling_machine,
            icon_name = "seed-extractor",
            base_entity_name = assembling_machine_1,
            mod = compatibility,
            particles = {[big] = 1, [medium] = 2},
            group = extendedangels,
            make_remnants = false
        }
        local tier_map = {[burner_seed_extractor] = {tier = 0, tint = util.color("#262626"), is_burner = true}}
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
                        filename = "__angelsbioprocessinggraphics__/graphics/entity/seed-extractor/seed-extractor.png",
                        priority = extra_high,
                        width = 160,
                        height = 160,
                        frame_count = 25,
                        line_length = 5,
                        shift = {0, 0},
                        animation_speed = 0.5
                    },
                    {
                        filename = "__reskins-compatibility__/graphics/entity/extendedangels/seed-extractor/seed-extractor-mask.png",
                        priority = extra_high,
                        width = 160,
                        height = 160,
                        frame_count = 25,
                        line_length = 5,
                        shift = {0, 0},
                        animation_speed = 0.5,
                        tint = inputs.tint
                    },
                    {
                        filename = "__reskins-compatibility__/graphics/entity/extendedangels/seed-extractor/seed-extractor-highlights.png",
                        priority = extra_high,
                        width = 160,
                        height = 160,
                        frame_count = 25,
                        line_length = 5,
                        shift = {0, 0},
                        animation_speed = 0.5,
                        blend_mode = reskins.lib.settings.blend_mode
                    }
                }
            }
            ::continue::
        end
    end
end