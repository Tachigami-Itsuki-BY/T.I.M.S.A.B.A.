-- BOBS LOGISTICS
-- BETLS
function bobmods.logistics.belt_speed(level)
    return level * settings.startup[setting_bobmods_logistics_beltspeedperlevel].value / 480
end

function bobmods.logistics.set_belt_speed(type, belt, level)
    if data.raw[type][belt] then
        data.raw[type][belt].speed = bobmods.logistics.belt_speed(level)
    end
end

function bobmods.logistics.belt_distance(level)
    return ((level - 1) * settings.startup[setting_bobmods_logistics_beltperlevel].value) + settings.startup[setting_bobmods_logistics_beltstarting].value
end

function bobmods.logistics.set_belt_distance(belt, level)
    if data_underground_belt[belt] then
        data_underground_belt[belt].max_distance = bobmods.logistics.belt_distance(level)
    end
end

if settings.startup[setting_bobmods_logistics_beltoverhaulspeed].value then
    if settings.startup[setting_bobmods_logistics_beltoverhaul].value then
        bobmods.logistics.set_belt_speed(splitter,         T0_splitter,         1)
        bobmods.logistics.set_belt_speed(transport_belt,   T0_transport_belt,   1)
        bobmods.logistics.set_belt_speed(underground_belt, T0_underground_belt, 1)

        bobmods.logistics.set_belt_speed(splitter,         T1_splitter,         2)
        bobmods.logistics.set_belt_speed(transport_belt,   T1_transport_belt,   2)
        bobmods.logistics.set_belt_speed(underground_belt, T1_underground_belt, 2)

        bobmods.logistics.set_belt_speed(splitter,         T2_splitter,         3)
        bobmods.logistics.set_belt_speed(transport_belt,   T2_transport_belt,   3)
        bobmods.logistics.set_belt_speed(underground_belt, T2_underground_belt, 3)

        bobmods.logistics.set_belt_speed(splitter,         T3_splitter,         4)
        bobmods.logistics.set_belt_speed(transport_belt,   T3_transport_belt,   4)
        bobmods.logistics.set_belt_speed(underground_belt, T3_underground_belt, 4)

        if mods[castra_mods] then
            bobmods.logistics.set_belt_speed(splitter,         military_splitter_mods,         4)
            bobmods.logistics.set_belt_speed(transport_belt,   military_transport_belt_mods,   4)
            bobmods.logistics.set_belt_speed(underground_belt, military_underground_belt_mods, 4)
        end

        bobmods.logistics.set_belt_speed(splitter,         T4_splitter,         5)
        bobmods.logistics.set_belt_speed(transport_belt,   T4_transport_belt,   5)
        bobmods.logistics.set_belt_speed(underground_belt, T4_underground_belt, 5)

        bobmods.logistics.set_belt_speed(splitter,         T5_splitter,         6)
        bobmods.logistics.set_belt_speed(transport_belt,   T5_transport_belt,   6)
        bobmods.logistics.set_belt_speed(underground_belt, T5_underground_belt, 6)

        bobmods.logistics.set_belt_speed(splitter,         vulcanus_splitter,         7)
        bobmods.logistics.set_belt_speed(transport_belt,   vulcanus_transport_belt,   7)
        bobmods.logistics.set_belt_speed(underground_belt, vulcanus_underground_belt, 7)

        if mods[arig_mods] then
            bobmods.logistics.set_belt_speed(splitter,         hyper_splitter_arig,         8)
            bobmods.logistics.set_belt_speed(transport_belt,   hyper_transport_belt_arig,   8)
            bobmods.logistics.set_belt_speed(underground_belt, hyper_underground_belt_arig, 8)
        end
    else
        bobmods.logistics.set_belt_speed(splitter,         T1_splitter,         1)
        bobmods.logistics.set_belt_speed(transport_belt,   T1_transport_belt,   1)
        bobmods.logistics.set_belt_speed(underground_belt, T1_underground_belt, 1)

        bobmods.logistics.set_belt_speed(splitter,         T2_splitter,         2)
        bobmods.logistics.set_belt_speed(transport_belt,   T2_transport_belt,   2)
        bobmods.logistics.set_belt_speed(underground_belt, T2_underground_belt, 2)

        bobmods.logistics.set_belt_speed(splitter,         T3_splitter,         3)
        bobmods.logistics.set_belt_speed(transport_belt,   T3_transport_belt,   3)
        bobmods.logistics.set_belt_speed(underground_belt, T3_underground_belt, 3)

        if mods[castra_mods] then
            bobmods.logistics.set_belt_speed(splitter,         military_splitter_mods,         3)
            bobmods.logistics.set_belt_speed(transport_belt,   military_transport_belt_mods,   3)
            bobmods.logistics.set_belt_speed(underground_belt, military_underground_belt_mods, 3)
        end

        bobmods.logistics.set_belt_speed(splitter,         T4_splitter,         4)
        bobmods.logistics.set_belt_speed(transport_belt,   T4_transport_belt,   4)
        bobmods.logistics.set_belt_speed(underground_belt, T4_underground_belt, 4)

        bobmods.logistics.set_belt_speed(splitter,         T5_splitter,         5)
        bobmods.logistics.set_belt_speed(transport_belt,   T5_transport_belt,   5)
        bobmods.logistics.set_belt_speed(underground_belt, T5_underground_belt, 5)

        bobmods.logistics.set_belt_speed(splitter,         vulcanus_splitter,         6)
        bobmods.logistics.set_belt_speed(transport_belt,   vulcanus_transport_belt,   6)
        bobmods.logistics.set_belt_speed(underground_belt, vulcanus_underground_belt, 6)

        if mods[arig_mods] then
            bobmods.logistics.set_belt_speed(splitter,         hyper_splitter_arig,         7)
            bobmods.logistics.set_belt_speed(transport_belt,   hyper_transport_belt_arig,   7)
            bobmods.logistics.set_belt_speed(underground_belt, hyper_underground_belt_arig, 7)
        end
    end
end

if settings.startup[setting_rebalance_belts_and_pipes].value == false then
    if settings.startup[setting_bobmods_logistics_ugdistanceoverhaul].value then
        if settings.startup[setting_bobmods_logistics_beltoverhaul].value then
            bobmods.logistics.set_belt_distance(T0_underground_belt, 1)
            bobmods.logistics.set_belt_distance(T1_underground_belt, 2)
            bobmods.logistics.set_belt_distance(T2_underground_belt, 3)
            bobmods.logistics.set_belt_distance(T3_underground_belt, 4)
            if mods[castra_mods] then
                bobmods.logistics.set_belt_distance(military_underground_belt_mods, 4)
            end
            bobmods.logistics.set_belt_distance(T4_underground_belt, 5)
            bobmods.logistics.set_belt_distance(T5_underground_belt, 6)
            if mods[arig_mods] then
                bobmods.logistics.set_belt_distance(hyper_underground_belt_arig, 7)
            end
        else
            bobmods.logistics.set_belt_distance(T1_underground_belt, 1)
            bobmods.logistics.set_belt_distance(T2_underground_belt, 2)
            bobmods.logistics.set_belt_distance(T3_underground_belt, 3)
            if mods[castra_mods] then
                bobmods.logistics.set_belt_distance(military_underground_belt_mods, 3)
            end
            bobmods.logistics.set_belt_distance(T4_underground_belt, 4)
            bobmods.logistics.set_belt_distance(T5_underground_belt, 5)
            if mods[arig_mods] then
                bobmods.logistics.set_belt_distance(hyper_underground_belt_arig, 6)
            end
        end
    else
        if settings.startup[setting_rebalance_belts_and_pipes].value == false then
            data_underground_belt[T1_underground_belt].max_distance = 5
            data_underground_belt[T2_underground_belt].max_distance = 10
            data_underground_belt[T3_underground_belt].max_distance = 15
            if mods[castra_mods] then
                data_underground_belt[military_underground_belt_mods].max_distance = 15
            end
            data_underground_belt[T4_underground_belt].max_distance = 20
            data_underground_belt[T5_underground_belt].max_distance = 25
            data_underground_belt[vulcanus_underground_belt].max_distance = 30
            if mods[arig_mods] then
                data_underground_belt[hyper_underground_belt_arig].max_distance = 35
            end
        end
    end
end

-- PIPES
function bobmods.logistics.pipe_distance(level)
    local range = ((level - 1) * settings.startup[setting_bobmods_logistics_pipeperlevel].value) + settings.startup[setting_bobmods_logistics_pipestarting].value
    return range
end

bobmods.logistics.maxPipeTier = 4

function bobmods.logistics.set_pipe_distance(pipe, level)
    if data_pipe_to_ground[pipe] then
        for index, connection in pairs(data_pipe_to_ground[pipe].fluid_box.pipe_connections) do
            if connection.max_underground_distance then
                data_pipe_to_ground[pipe].fluid_box.pipe_connections[index].max_underground_distance = bobmods.logistics.pipe_distance(level)
            end
        end
    end
end

if settings.startup[setting_rebalance_belts_and_pipes].value == false then
    if settings.startup[setting_bobmods_logistics_ugdistanceoverhaul].value then
        bobmods.logistics.set_pipe_distance(iron_pipe_to_ground,               1)
        bobmods.logistics.set_pipe_distance(copper_pipe_to_ground,             1)
        bobmods.logistics.set_pipe_distance(stone_pipe_to_ground,              1)
        if mods[tellus_mods] then
            bobmods.logistics.set_pipe_distance(orange_pipe_to_ground,  1)
            bobmods.logistics.set_pipe_distance(blue_pipe_to_ground,    1)
            bobmods.logistics.set_pipe_distance(yellow_pipe_to_ground,  1)
            bobmods.logistics.set_pipe_distance(magenta_pipe_to_ground, 1)
            bobmods.logistics.set_pipe_distance(green_pipe_to_ground,   1)
            bobmods.logistics.set_pipe_distance(red_pipe_to_ground,     1)
            bobmods.logistics.set_pipe_distance(cyan_pipe_to_ground,    1)
            bobmods.logistics.set_pipe_distance(black_pipe_to_ground,   1)
        end
        bobmods.logistics.set_pipe_distance(bronze_pipe_to_ground,             2)
        bobmods.logistics.set_pipe_distance(steel_pipe_to_ground,              2)
        bobmods.logistics.set_pipe_distance(plastic_pipe_to_ground,            3)
        bobmods.logistics.set_pipe_distance(brass_pipe_to_ground,              3)
        if mods[muluna_mods] then
            bobmods.logistics.set_pipe_distance(aluminium_pipe_to_ground, 3)
        end
        bobmods.logistics.set_pipe_distance(titanium_pipe_to_ground,           4)
        bobmods.logistics.set_pipe_distance(ceramic_pipe_to_ground,            4)
        bobmods.logistics.set_pipe_distance(tungsten_pipe_to_ground,           4)
        bobmods.logistics.set_pipe_distance(nitinol_pipe_to_ground,            5)
        bobmods.logistics.set_pipe_distance(copper_tungsten_pipe_to_ground,    5)
        bobmods.logistics.set_pipe_distance(molybdenum_rhenium_pipe_to_ground, 6)
        if mods[paracelsin_mods] then
            bobmods.logistics.set_pipe_distance(galvanized_pipe_to_ground, 6)
        end
    end
end