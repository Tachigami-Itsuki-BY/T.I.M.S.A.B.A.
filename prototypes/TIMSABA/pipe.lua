local TIMSABA_pipepictures = require("lib.pipes").TIMSABA_pipepictures
local TIMSABA_pipecoverspictures = require("lib.pipes").TIMSABA_pipecoverspictures
local TIMSABA_pipetogroundpictures = require("lib.pipes").TIMSABA_pipetogroundpictures
local TIMSABA_pipetoground_visualization = require("lib.pipes").TIMSABA_pipetoground_visualization
local TIMSABA_pipetoground_disabled_visualizaton = require("lib.pipes").TIMSABA_pipetoground_disabled_visualizaton

local simulations = require("prototypes.factoriopedia-simulations")
data:extend
({
    {
        type = pipe,
        name = molybdenum_rhenium_pipe,
        subgroup = is_pipe,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe.png",
        icon_size = 64,
        order = m,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = molybdenum_rhenium_pipe},
        max_health = 350,
        corpse = "small-remnants",
        icon_draw_specification = {scale = 0.5},
        resistances = {{type = "fire", percent = 90}},
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fluid_box =
        {
            volume = 100,
            pipe_connections =
            {
                {position = {0, 0}, direction = defines.direction.north},
                {position = {0, 0}, direction = defines.direction.east},
                {position = {0, 0}, direction = defines.direction.south},
                {position = {0, 0}, direction = defines.direction.west}
            },
            hide_connection_info = true
        },
        pictures = TIMSABA_pipepictures("molybdenum-rhenium"),
        impact_category = "metal",
        working_sound =
        {
            sound =
            {
                {
                    filename = "__base__/sound/pipe.ogg",
                    volume = 0.65
                }
            },
            match_volume_to_activity = true,
            max_sounds_per_prototype = 3
        },
        horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
        vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}},
    },
    {
        type = pipe_to_ground,
        name = molybdenum_rhenium_pipe_to_ground,
        subgroup = is_pipe_to_ground,
        icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/molybdenum-rhenium-pipe-to-ground.png",
        icon_size = 64,
        order = m,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = molybdenum_rhenium_pipe_to_ground},
        max_health = 400,
        corpse = "small-remnants",
        icon_draw_specification = {scale = 0.5},
        resistances = {{type = "fire", percent = 80}},
        fast_replaceable_group = "pipe",
        collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fluid_box =
        {
            volume = 100,
            pipe_covers = TIMSABA_pipecoverspictures("molybdenum-rhenium"),
            pipe_connections =
            {
                {
                    position = {0, 0},
                    direction = defines.direction.north
                },
                {
                    position = {0, 0},
                    direction = defines.direction.south,
                    connection_type = "underground",
                    max_underground_distance = 35
                }
            },
            hide_connection_info = true
        },
        pictures = TIMSABA_pipetogroundpictures("molybdenum-rhenium"),
        visualization = TIMSABA_pipetoground_visualization(),
        disabled_visualization = TIMSABA_pipetoground_disabled_visualizaton(),
        impact_category = "metal",
        factoriopedia_simulation = simulations.factoriopedia_molybdenum_rhenium_pipe_to_ground
    }
})

if feature_flags["freezing"] then
    data_pipe[molybdenum_rhenium_pipe].heating_energy = "1kW"
    data_pipe_to_ground[molybdenum_rhenium_pipe_to_ground].heating_energy = "350kW"
    if mods["space-age"] then
        local function frozenpatch()
            local result = util.table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"].frozen_patch)
            return result
        end
        data_pipe_to_ground[molybdenum_rhenium_pipe_to_ground].frozen_patch = frozenpatch()
        local function frozenpatch2()
            local result = util.table.deepcopy(data.raw.pipe.pipe.fluid_box.pipe_covers_frozen)
            return result
        end
        data_pipe[molybdenum_rhenium_pipe].fluid_box.pipe_covers_frozen = frozenpatch2()
        data_pipe_to_ground[molybdenum_rhenium_pipe_to_ground].fluid_box.pipe_covers_frozen = frozenpatch2()
    end
end

if settings.startup["bobmods-logistics-ugdistanceoverhaul"].value == true then
    bobmods.logistics.set_pipe_distance(molybdenum_rhenium_pipe_to_ground, 6)
end

if not reskins or not reskins.lib then
    return
end

local icons_pipe =
{
    {name = molybdenum_rhenium_pipe, type = item},
    {name = molybdenum_rhenium_pipe, type = recipe},
    {name = molybdenum_rhenium_pipe, type = pipe},
    {name = molybdenum_rhenium_pipe_to_ground, type = item},
    {name = molybdenum_rhenium_pipe_to_ground, type = recipe},
    {name = molybdenum_rhenium_pipe_to_ground, type = pipe_to_ground}
}
for _, info in ipairs(icons_pipe) do
    local proto = data.raw[info.type][info.name]
    if proto then
        proto.icon = nil
        proto.icons =
        {
            {
                icon = "__TIMSABA__/graphics/icons/angels/metallurgy/molybdenum-rhenium/" .. info.name .. ".png",
                icon_size = 64
            }
        }
        reskins.lib.tiers.add_tier_labels_to_prototype_by_name(6, info.name, info.type)
        if info.type == pipe or info.type == pipe_to_ground then
            reskins.lib.create_particle(info.name, info.type, reskins.lib.particle_index["medium"], 1, util.color("#6a57ab"))
        end
    end
end