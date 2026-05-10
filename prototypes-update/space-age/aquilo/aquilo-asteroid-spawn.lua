local asteroid_functions = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

local function get_asteroid_set(name, dist_start, dist_end)
    local sizes =
    {
        {s = "huge-",   p = 0.00125, a = asteroid_functions.huge_angle},
        {s = "big-",    p = asteroid_functions.aquilo_big, a = asteroid_functions.big_angle},
        {s = "medium-", p = 0.0025,  a = asteroid_functions.medium_angle},
        {s = "small-",  p = 0.005,   a = asteroid_functions.small_angle},
        {s = "",        p = asteroid_functions.nauvis_chunks, a = asteroid_functions.chunk_angle, chunk = true}
    }

    local results = {}
    for _, t in pairs(sizes) do
        local is_chunk = t.chunk
        local ast_name = is_chunk and (name .. "-asteroid-chunk") or (t.s .. name .. "-asteroid")
        local def =
        {
            asteroid = ast_name,
            type = is_chunk and "asteroid-chunk" or nil,
        }

        if dist_start and dist_end then
            def.spawn_points =
            {
                {
                    distance = dist_start,
                    probability = (dist_start < dist_end and 0 or t.p),
                    speed = asteroid_functions.standard_speed,
                    angle_when_stopped = t.a
                },
                {
                    distance = dist_end,
                    probability = (dist_start < dist_end and t.p or 0),
                    speed = asteroid_functions.standard_speed,
                    angle_when_stopped = t.a
                }
            }
        else
            def.probability = t.p
            def.speed = asteroid_functions.standard_speed
            def.angle_when_stopped = t.a
        end
        table.insert(results, def)
    end
    return results
end

local resources = {"antimonite", "germanite"}

-- 1. AQUILO PLANET
local aquilo = data.raw["planet"]["aquilo"]
if aquilo then
    local new_spawn_defs = {}
    for _, res in pairs(resources) do
        local set = get_asteroid_set(res)
        for _, def in pairs(set) do table.insert(new_spawn_defs, def) end
    end
    aquilo.asteroid_spawn_definitions = new_spawn_defs
end

-- 2. ROUTES TO AQUILO
local arrival_conns = mods["AsteroidBelt"] and {"asteroid-belt-outer-edge-aquilo"} or {"gleba-aquilo", "fulgora-aquilo"}
for _, c_name in pairs(arrival_conns) do
    local conn = data.raw["space-connection"][c_name]
    if conn then
        conn.asteroid_spawn_definitions = {}
        for _, res in pairs(resources) do
            local set = get_asteroid_set(res, 0.7, 1.0)
            for _, def in pairs(set) do table.insert(conn.asteroid_spawn_definitions, def) end
        end
    end
end

-- 3. ROUTE TO EDGE
local edge_conn = data.raw["space-connection"]["aquilo-solar-system-edge"]
if edge_conn then
    edge_conn.asteroid_spawn_definitions = {}
    for _, res in pairs(resources) do
        local set = get_asteroid_set(res, 0, 0.5)
        for _, def in pairs(set) do table.insert(edge_conn.asteroid_spawn_definitions, def) end
    end
end

-- 4. CLEANUP FOR INTERMEDIATE ROUTES (Asteroid Belt integration)
if mods["AsteroidBelt"] then
    local routes_to_clean =
    {
        "fulgora-asteroid-belt-inner-edge",
        "gleba-asteroid-belt-inner-edge"
    }

    for _, conn_name in pairs(routes_to_clean) do
        local connection = data.raw["space-connection"][conn_name]
        if connection and connection.asteroid_spawn_definitions then
            for i = #connection.asteroid_spawn_definitions, 1, -1 do
                local def = connection.asteroid_spawn_definitions[i]
                if def.asteroid:find("antimonite") or def.asteroid:find("germanite") then
                    table.remove(connection.asteroid_spawn_definitions, i)
                end
            end
        end
    end

    local belt_main_route = data.raw["space-connection"]["asteroid-belt-inner-edge-asteroid-belt-outer-edge"]
    if belt_main_route and belt_main_route.asteroid_spawn_definitions then
        for i = #belt_main_route.asteroid_spawn_definitions, 1, -1 do
            local def = belt_main_route.asteroid_spawn_definitions[i]
            if def.asteroid == "promethium-asteroid-chunk" then
                table.remove(belt_main_route.asteroid_spawn_definitions, i)
            end
        end
    end
end