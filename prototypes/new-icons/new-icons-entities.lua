local TIMSABA_pipepictures = require("lib.pipes").TIMSABA_pipepictures
local TIMSABA_pipecoverspictures = require("lib.pipes").TIMSABA_pipecoverspictures
local TIMSABA_pipetogroundpictures = require("lib.pipes").TIMSABA_pipetogroundpictures
local TIMSABA_pipetoground_visualization = require("lib.pipes").TIMSABA_pipetoground_visualization
local TIMSABA_pipetoground_disabled_visualizaton = require("lib.pipes").TIMSABA_pipetoground_disabled_visualizaton

-- MULUNA
if mods[muluna_mods] then
    data_pipe[aluminium_pipe].icons = {{icon = "__TIMSABA__/graphics/icons/muluna/".. aluminium_pipe .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(3, aluminium_pipe, pipe)

    data_pipe[aluminium_pipe].pictures = TIMSABA_pipepictures("aluminium")
    data_corpse[aluminium_pipe .. _remnants].animation = make_rotated_animation_variations_from_sheet(2,
    {
        filename = "__TIMSABA__/graphics/entity/pipes/aluminium/" .. pipe .. "/remnants/pipe-remnants.png",
        width = 122,
        height = 120,
        line_length = 1,
        direction_count = 2,
        shift = util.by_pixel(1.5, 2.5),
        scale = 0.5
    })

    data_pipe_to_ground[aluminium_pipe_to_ground].icons = {{icon = "__TIMSABA__/graphics/icons/muluna/".. aluminium_pipe_to_ground .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(3, aluminium_pipe_to_ground, pipe_to_ground)

    data_pipe_to_ground[aluminium_pipe_to_ground].fluid_box.pipe_covers = TIMSABA_pipecoverspictures("aluminium")
    data_pipe_to_ground[aluminium_pipe_to_ground].pictures = TIMSABA_pipetogroundpictures("aluminium")
    data_pipe_to_ground[aluminium_pipe_to_ground].visualization = TIMSABA_pipetoground_visualization()
    data_pipe_to_ground[aluminium_pipe_to_ground].disabled_visualization = TIMSABA_pipetoground_disabled_visualizaton()
    data_corpse[aluminium_pipe_to_ground .. _remnants].animation =
    {
        filename = "__TIMSABA__/graphics/entity/pipes/aluminium/" .. pipe_to_ground .. "/remnants/pipe-to-ground-remnants.png",
        width = 90,
        height = 80,
        line_length = 1,
        direction_count = 1,
        shift = util.by_pixel(0.5, -3),
        scale = 0.5
    }
end

-- PARACELSIN
if mods[paracelsin_mods] then
    data_pipe[galvanized_pipe].icons = {{icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_pipe .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(6, galvanized_pipe, pipe)

    data_pipe[galvanized_pipe].pictures = TIMSABA_pipepictures("galvanized")
    data_pipe[galvanized_pipe].corpse = galvanized_pipe .. _remnants

    data_pipe_to_ground[galvanized_pipe_to_ground].icons = {{icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_pipe_to_ground .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(6, galvanized_pipe_to_ground, pipe_to_ground)

    data_pipe_to_ground[galvanized_pipe_to_ground].fluid_box.pipe_covers = TIMSABA_pipecoverspictures("galvanized")
    data_pipe_to_ground[galvanized_pipe_to_ground].pictures = TIMSABA_pipetogroundpictures("galvanized")
    data_pipe_to_ground[galvanized_pipe_to_ground].visualization = TIMSABA_pipetoground_visualization()
    data_pipe_to_ground[galvanized_pipe_to_ground].disabled_visualization = TIMSABA_pipetoground_disabled_visualizaton()
    data_pipe_to_ground[galvanized_pipe_to_ground].corpse = galvanized_pipe_to_ground .. _remnants

    data_storage_tank[galvanized_storage_tank].icons = {{icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_storage_tank .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(6, galvanized_storage_tank, storage_tank)

    data_storage_tank[galvanized_storage_tank].pictures.picture.sheets[1].filename = "__TIMSABA__/graphics/entity/storage-tank/galvanized/storage-tank.png"
    data_storage_tank[galvanized_storage_tank].corpse = galvanized_storage_tank .. _remnants

    data_pump[galvanized_pump].icons = {{icon = "__TIMSABA__/graphics/icons/paracelsin/" .. galvanized_pump .. ".png", icon_size = 64}}
    reskins.lib.tiers.add_tier_labels_to_prototype_by_name(6, galvanized_pump, pump)

    data_pump[galvanized_pump].animations.north.filename = "__TIMSABA__/graphics/entity/" .. pump .. "/galvanized/pump-north.png"
    data_pump[galvanized_pump].animations.east.filename = "__TIMSABA__/graphics/entity/" .. pump .. "/galvanized/pump-east.png"
    data_pump[galvanized_pump].animations.south.filename = "__TIMSABA__/graphics/entity/" .. pump .. "/galvanized/pump-south.png"
    data_pump[galvanized_pump].animations.west.filename = "__TIMSABA__/graphics/entity/" .. pump .. "/galvanized/pump-west.png"
    data_pump[galvanized_pump].corpse = galvanized_pump .. _remnants

    -- 1. Импортируем оригинальную графику коннектора
    local TIMSABA_connector_graphics = table.deepcopy(require("__base__.prototypes.entity.pump-connector"))

    -- Функция для рекурсивного поиска и замены путей
    local function replace_paths(table)
        for key, value in pairs(table) do
            if type(value) == "table" then
                -- Проверяем, является ли эта таблица описанием спрайта (не тенью)
                -- и содержит ли она оригинальное имя файла коннектора
                if value.filename and string.find(value.filename, "__base__/graphics/entity/pump/connector/") then
                    -- Проверяем, что это НЕ тень (имя ключа или файла не содержит shadow)
                    if not string.find(key, "shadow") and not string.find(value.filename, "shadow") then
                        -- Заменяем путь на ваш мод
                        value.filename = string.gsub(value.filename, "__base__/graphics/entity/pump/connector/", "__TIMSABA__/graphics/entity/pump/galvanized/connector/")
                    end
                else
                    -- Если это вложенная таблица (например, west, [1] и т.д.), идем глубже
                    replace_paths(value)
                end
            end
        end
    end

    -- 2. Запускаем замену путей
    replace_paths(TIMSABA_connector_graphics)

    -- 3. Применяем измененную графику к вашему типу "pump"
    data_pump[galvanized_pump].fluid_wagon_connector_graphics = TIMSABA_connector_graphics
end