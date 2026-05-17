local util = require("util")

if settings.startup[setting_multi_building].value then
    local function shift_layer_extreme(layer, offset)
        if type(layer) ~= "table" then return layer end

        if layer.filename or layer.stripes or layer.pictures or layer.picture then
            local l = util.table.deepcopy(layer)
            local orig_x = 0
            local orig_y = 0

            local raw_shift = l.shift
            if raw_shift then
                if type(raw_shift) == "table" then
                    orig_x = tonumber(raw_shift.x or raw_shift[1]) or 0
                    orig_y = tonumber(raw_shift.y or raw_shift[2]) or 0
                elseif type(raw_shift) == "number" then
                    orig_x = raw_shift
                    orig_y = raw_shift
                end
            end

            l.shift = {orig_x + offset.x, orig_y + offset.y}
            return l
        end

        local copy = {}
        for k, v in pairs(layer) do
            if type(v) == "table" then
                copy[k] = shift_layer_extreme(v, offset)
            else
                copy[k] = v
            end
        end
        return copy
    end

    local function flatten_layers_extreme(block, target_list)
        if not block or type(block) ~= "table" then return target_list or {} end
        target_list = target_list or {}

        if block.layers then
            flatten_layers_extreme(block.layers, target_list)
        elseif block.filename or block.stripes then
            table.insert(target_list, block)
        else
            for _, sub in ipairs(block) do
                if type(sub) == "table" then
                    flatten_layers_extreme(sub, target_list)
                end
            end
        end
        return target_list
    end

    local function merge_timsaba_layers(main_block, overlay_block, offsets)
        local main_flat = flatten_layers_extreme(main_block, {}) or {}
        local overlay_flat = flatten_layers_extreme(overlay_block, {}) or {}

        local all_source_layers = {}
        for _, l in ipairs(main_flat) do table.insert(all_source_layers, l) end
        for _, l in ipairs(overlay_flat) do
            if type(l) == "table" then
                local ol = util.table.deepcopy(l)
                ol.draw_as_shadow = true
                table.insert(all_source_layers, ol)
            end
        end

        local shadow_layers = {}
        local sprite_layers = {}

        local base_shadow_order = -20
        local base_sprite_order = 10

        for index, offset in ipairs(offsets) do
            for _, raw_layer in ipairs(all_source_layers) do
                if type(raw_layer) == "table" then
                    local l = shift_layer_extreme(raw_layer, offset)

                    if l.draw_as_shadow or (l.filename and string.find(l.filename, "shadow", 1, true)) then
                        l.draw_as_shadow = true

                        l.secondary_draw_order = base_shadow_order - index

                        l.blend_mode = nil
                        l.premul_alpha = nil

                        l.tint = raw_layer.tint or nil
                        l.intensity = raw_layer.intensity or nil

                        table.insert(shadow_layers, l)
                    else

                        l.secondary_draw_order = base_sprite_order + (index * 5)
                        table.insert(sprite_layers, l)
                    end
                end
            end
        end

        local final_output = {}
        for _, shadow in ipairs(shadow_layers) do table.insert(final_output, shadow) end
        for _, sprite in ipairs(sprite_layers) do table.insert(final_output, sprite) end

        return {layers = final_output}
    end

    function generatemulti(basename, newname, multiplier)
        local entity_type = nil
        if data.raw["generator"][basename] then entity_type = "generator"
        elseif data.raw["solar-panel"][basename] then entity_type = "solar-panel"
        elseif data.raw["accumulator"][basename] then entity_type = "accumulator"
        end

        if not entity_type then return end 
        local base_entity = data.raw[entity_type][basename]
        local new_ent = table.deepcopy(base_entity)
        new_ent.name = newname

        new_ent.minable = {mining_time = 0.5 * multiplier, result = basename, count = multiplier}
        new_ent.max_health = new_ent.max_health * multiplier

        if entity_type == "generator" then
            new_ent.fluid_usage_per_tick = new_ent.fluid_usage_per_tick * multiplier
            new_ent.fluid_box.base_area = multiplier
        elseif entity_type == "solar-panel" then
            local power, unit = new_ent.production:match("([%d%.]+)(%a+)")
            if power and unit then new_ent.production = (tonumber(power) * multiplier) .. unit end
        elseif entity_type == "accumulator" then
            if new_ent.energy_source and new_ent.energy_source.buffer_capacity then
                local cap, unit = new_ent.energy_source.buffer_capacity:match("([%d%.]+)(%a+)")
                if cap and unit then new_ent.energy_source.buffer_capacity = (tonumber(cap) * multiplier) .. unit end
            end
            if new_ent.energy_source and new_ent.energy_source.input_flow_limit then
                local flow, unit = new_ent.energy_source.input_flow_limit:match("([%d%.]+)(%a+)")
                if flow and unit then
                    new_ent.energy_source.input_flow_limit = (tonumber(flow) * multiplier) .. unit
                    new_ent.energy_source.output_flow_limit = (tonumber(flow) * multiplier) .. unit
                end
            end
        end

        if entity_type == "generator" then
            if multiplier == 2 then
                new_ent.collision_box = {{-1.35, -4.9}, {1.35, 4.9}}
                new_ent.selection_box = {{-1.5, -5.0}, {1.5, 5.0}}
                if new_ent.fluid_box then
                    new_ent.fluid_box.pipe_connections =
                    {
                        {connection_type = "normal", direction = 0, position = {0, -4.5}},
                        {connection_type = "normal", direction = 8, position = {0, 4.5}}
                    }
                end
                local function shift_gen(block, offsets)
                    local out = {}
                    for _, offset in ipairs(offsets) do
                        for _, l in ipairs(block.layers or {block}) do
                            local layer = table.deepcopy(l)
                            local ox = layer.shift and (layer.shift.x or (type(layer.shift) == "table" and layer.shift[1] or 0)) or 0
                            local oy = layer.shift and (layer.shift.y or (type(layer.shift) == "table" and layer.shift[2] or 0)) or 0
                            layer.shift = {x = ox + offset.x, y = oy + offset.y}
                            table.insert(out, layer)
                        end
                    end
                    return {layers = out}
                end
                new_ent.horizontal_animation = shift_gen(new_ent.horizontal_animation, {{x = -2.5, y = 0}, {x = 2.5, y = 0}})
                new_ent.vertical_animation = shift_gen(new_ent.vertical_animation, {{x = 0, y = -2.5}, {x = 0, y = 2.5}})
            elseif multiplier == 4 then
                new_ent.collision_box = {{-1.35, -9.9}, {1.35, 9.9}}
                new_ent.selection_box = {{-1.5, -10.0}, {1.5, 10.0}}
                if new_ent.fluid_box then
                    new_ent.fluid_box.pipe_connections =
                    {
                        {connection_type = "normal", direction = 0, position = {0, -9.5}},
                        {connection_type = "normal", direction = 8, position = {0, 9.5}}
                    }
                end
                local function shift_gen(block, offsets)
                    local out = {}
                    for _, offset in ipairs(offsets) do
                        for _, l in ipairs(block.layers or {block}) do
                            local layer = table.deepcopy(l)
                            local ox = layer.shift and (layer.shift.x or (type(layer.shift) == "table" and layer.shift[1] or 0)) or 0
                            local oy = layer.shift and (layer.shift.y or (type(layer.shift) == "table" and layer.shift[2] or 0)) or 0
                            layer.shift = {x = ox + offset.x, y = oy + offset.y}
                            table.insert(out, layer)
                        end
                    end
                    return {layers = out}
                end
                new_ent.horizontal_animation = shift_gen(new_ent.horizontal_animation, {{x = -7.5, y = 0}, {x = -2.5, y = 0}, {x = 2.5, y = 0}, {x = 7.5, y = 0}})
                new_ent.vertical_animation = shift_gen(new_ent.vertical_animation, {{x = 0, y = -7.5}, {x = 0, y = -2.5}, {x = 0, y = 2.5}, {x = 0, y = 7.5}})
            end
        else
            local orig_box = base_entity.collision_box
            local raw_x = orig_box and (type(orig_box) == "table" and orig_box[2][1] or orig_box.right_bottom and orig_box.right_bottom.x) or 1.5
            local size = math.ceil(raw_x * 2)
            local half_size = size / 2
            local step = size / 2

            if multiplier == 2 then
                new_ent.collision_box = {{-half_size + 0.15, -size + 0.1}, {half_size - 0.15, size - 0.1}}
                new_ent.selection_box = {{-half_size, -size}, {half_size, size}}

                local offsets_v = {{x = 0, y = -step}, {x = 0, y = step}}

                if entity_type == "solar-panel" then
                    local base_pic_layers = base_entity.picture and (base_entity.picture.layers or {base_entity.picture}) or {}
                    local final_pic_layers = {}
                    for _, offset in ipairs(offsets_v) do
                        for _, l in ipairs(base_pic_layers) do
                            table.insert(final_pic_layers, shift_layer_extreme(l, offset))
                        end
                    end
                    new_ent.picture = { layers = final_pic_layers }

                    if base_entity.overlay then
                        local base_overlay_layers = base_entity.overlay.layers or {base_entity.overlay}
                        local final_overlay_layers = {}
                        for _, offset in ipairs(offsets_v) do
                            for _, l in ipairs(base_overlay_layers) do
                                table.insert(final_overlay_layers, shift_layer_extreme(l, offset))
                            end
                        end
                        new_ent.overlay = {layers = final_overlay_layers}
                    end
                    new_ent.pictures = nil
                elseif entity_type == "accumulator" and new_ent.chargable_graphics then
                    new_ent.chargable_graphics.picture = merge_timsaba_layers(base_entity.chargable_graphics.picture, base_entity.overlay, offsets_v)
                    new_ent.chargable_graphics.charge_animation = merge_timsaba_layers(base_entity.chargable_graphics.charge_animation, nil, offsets_v)
                    new_ent.chargable_graphics.discharge_animation = merge_timsaba_layers(base_entity.chargable_graphics.discharge_animation, nil, offsets_v)
                end
            elseif multiplier == 4 then
                new_ent.collision_box = {{-size + 0.1, -size + 0.1}, {size - 0.1, size - 0.1}}
                new_ent.selection_box = {{-size, -size}, {size, size}}

                local square_offsets =
                {
                    {x = -step, y = -step}, {x = step, y = -step},
                    {x = -step, y = step},  {x = step, y = step}
                }

                if entity_type == "solar-panel" then
                    local base_pic_layers = base_entity.picture and (base_entity.picture.layers or {base_entity.picture}) or {}
                    local final_pic_layers = {}
                    for _, offset in ipairs(square_offsets) do
                        for _, l in ipairs(base_pic_layers) do
                            table.insert(final_pic_layers, shift_layer_extreme(l, offset))
                        end
                    end
                    new_ent.picture = {layers = final_pic_layers}

                    if base_entity.overlay then
                        local base_overlay_layers = base_entity.overlay.layers or {base_entity.overlay}
                        local final_overlay_layers = {}
                        for _, offset in ipairs(square_offsets) do
                            for _, l in ipairs(base_overlay_layers) do
                                table.insert(final_overlay_layers, shift_layer_extreme(l, offset))
                            end
                        end
                        new_ent.overlay = {layers = final_overlay_layers}
                    end
                    new_ent.pictures = nil
                elseif entity_type == "accumulator" and new_ent.chargable_graphics then
                    new_ent.chargable_graphics.picture = merge_timsaba_layers(base_entity.chargable_graphics.picture, base_entity.overlay, square_offsets)
                    new_ent.chargable_graphics.charge_animation = merge_timsaba_layers(base_entity.chargable_graphics.charge_animation, nil, square_offsets)
                    new_ent.chargable_graphics.discharge_animation = merge_timsaba_layers(base_entity.chargable_graphics.discharge_animation, nil, square_offsets)
                end
            end
        end

        new_ent.hidden = true
        new_ent.hidden_in_factoriopedia = true
        new_ent.factoriopedia_alternative = basename
        new_ent.next_upgrade = nil
        new_ent.localised_name = {"entity-name." .. (multiplier == 2 and "double" or "quad") .. "-building", {"entity-name." .. basename}}

        if base_entity.corpse then
            local base_corpse_name = type(base_entity.corpse) == "string" and base_entity.corpse or (type(base_entity.corpse) == "table" and base_entity.corpse[1])
            local base_corpse_proto = data.raw["corpse"][base_corpse_name]
            if base_corpse_proto then
                local new_corpse = table.deepcopy(base_corpse_proto)
                new_corpse.name = newname .. "-remnants"

                new_corpse.selection_box = table.deepcopy(new_ent.selection_box)
                if new_corpse.tile_width and new_corpse.tile_height then
                    new_corpse.tile_width = new_ent.tile_width or (multiplier == 2 and base_corpse_proto.tile_width * 2 or base_corpse_proto.tile_width * 2)
                    new_corpse.tile_height = new_ent.tile_height or (multiplier == 2 and base_corpse_proto.tile_height * 2 or base_corpse_proto.tile_height * 2)
                end

                if entity_type == "generator" then
                    local offsets_v = multiplier == 2 and {{x = 0, y = -2.5}, {x = 0, y = 2.5}} or {{x = 0, y = -7.5}, {x = 0, y = -2.5}, {x = 0, y = 2.5}, {x = 0, y = 7.5}}
                    local offsets_h = multiplier == 2 and {{x = -2.5, y = 0}, {x = 2.5, y = 0}} or {{x = -7.5, y = 0}, {x = -2.5, y = 0}, {x = 2.5, y = 0}, {x = 7.5, y = 0}}

                    local base_layers = {}
                    local parent_width, parent_height, parent_scale, parent_directions
                    local anim_root = base_corpse_proto.animation

                    if anim_root then
                        local first_variation = anim_root[1] or anim_root

                        parent_width = first_variation.width
                        parent_height = first_variation.height
                        parent_scale = first_variation.scale
                        parent_directions = first_variation.direction_count or 4

                        if first_variation.layers then
                            base_layers = first_variation.layers
                        else
                            base_layers = {first_variation}
                        end
                    end

                    local function build_projection_layers(offsets, frame_number)
                        local final_layers = {}
                        for _, offset in ipairs(offsets) do
                            for _, l in ipairs(base_layers) do
                                if type(l) == "table" then
                                    local layer_copy = {}
                                    for key, val in pairs(l) do
                                        if type(key) == "string" then
                                            layer_copy[key] = table.deepcopy(val)
                                        end
                                    end

                                    layer_copy.width = layer_copy.width or parent_width
                                    layer_copy.height = layer_copy.height or parent_height
                                    layer_copy.scale = layer_copy.scale or parent_scale

                                    layer_copy.frame_count = layer_copy.frame_count or layer_copy.direction_count or parent_directions

                                    local orig_line_length = layer_copy.line_length

                                    layer_copy.direction_count = 1

                                    layer_copy.frame_sequence = {frame_number}

                                    layer_copy.line_length = orig_line_length or 1

                                    table.insert(final_layers, shift_layer_extreme(layer_copy, offset))
                                end
                            end
                        end
                        return final_layers
                    end

                    local final_layers_v = build_projection_layers(offsets_v, 1)
                    local final_layers_h = build_projection_layers(offsets_h, 2)

                    new_corpse.direction_count = 4
                    new_corpse.animation =
                    {
                        { layers = final_layers_v },
                        { layers = final_layers_h },
                        { layers = final_layers_v },
                        { layers = final_layers_h }
                    }

                    if new_corpse.horiz_animation then new_corpse.horiz_animation = nil end

                    new_corpse.tile_width = 3
                    new_corpse.tile_height = multiplier == 2 and 5 or 9

                    new_corpse.by_side = true
                else
                    local orig_box = base_entity.collision_box
                    local raw_x = 1.5

                    if orig_box and type(orig_box) == "table" then
                        if orig_box[2] and orig_box[2][1] then
                            raw_x = tonumber(orig_box[2][1]) or 1.5
                        elseif orig_box.right_bottom then
                            raw_x = tonumber(orig_box.right_bottom.x or orig_box.right_bottom) or 1.5
                        end
                    end

                    local step = math.ceil(raw_x * 2) / 2
                    if string.find(basename, "large", 1, true) then
                        step = 1.5
                    elseif raw_x < 1.1 then
                        step = 1.0
                    end

                    local current_offsets = {}
                    if multiplier == 2 then
                        current_offsets = {{x = 0, y = -step}, {x = 0, y = step}}
                    elseif multiplier == 4 then
                        current_offsets = {
                            {x = -step, y = -step}, {x = step, y = -step},
                            {x = -step, y = step},  {x = step, y = step}
                        }
                    end

                    if type(new_corpse.animation) == "table" and new_corpse.animation and new_corpse.animation[1] then
                        local final_animation_array = {}
                        for _, direction_anim in ipairs(new_corpse.animation) do
                            local res = merge_timsaba_layers(direction_anim, nil, current_offsets)
                            table.insert(final_animation_array, res)
                        end
                        new_corpse.animation = final_animation_array
                    else
                        local res = merge_timsaba_layers(new_corpse.animation, nil, current_offsets)
                        new_corpse.animation = res.layers or res
                    end
                end

                data:extend({new_corpse})
                new_ent.corpse = new_corpse.name
            end
        end

        if new_ent.flags then
            for i = #new_ent.flags, 1, -1 do if new_ent.flags[i] == "player-creation" then table.remove(new_ent.flags, i) end end
            table.insert(new_ent.flags, "not-blueprintable") table.insert(new_ent.flags, "not-upgradable")
        else new_ent.flags = {"not-blueprintable", "not-upgradable"} end

        data:extend({new_ent})
    end
end