if mods[bobmodules] then
    -- SPEED
    local graphics_speed_module_tech = "__TIMSABA__/graphics/icons/bobs/modules/technology/speed/speed"

    data_technology[speed_module_1].icon = graphics_speed_module_tech .. "-1.png"
    data_technology[speed_module_2].icon = graphics_speed_module_tech .. "-2.png"
    data_technology[speed_module_3].icon = graphics_speed_module_tech .. "-3.png"
    data_technology[speed_module_4].icon = graphics_speed_module_tech .. "-4.png"
    data_technology[speed_module_5].icon = graphics_speed_module_tech .. "-5.png"

    -- EFFICIENCY
    local graphics_efficiency_module_tech = "__TIMSABA__/graphics/icons/bobs/modules/technology/efficiency/efficiency"

    data_technology[efficiency_module_1].icon = graphics_efficiency_module_tech .. "-1.png"
    data_technology[efficiency_module_2].icon = graphics_efficiency_module_tech .. "-2.png"
    data_technology[efficiency_module_3].icon = graphics_efficiency_module_tech .. "-3.png"
    data_technology[efficiency_module_4].icon = graphics_efficiency_module_tech .. "-4.png"
    data_technology[efficiency_module_5].icon = graphics_efficiency_module_tech .. "-5.png"

    -- PRODUCTIVITY
    local graphics_productivity_module_tech = "__TIMSABA__/graphics/icons/bobs/modules/technology/productivity/productivity"

    data_technology[productivity_module_1].icon = graphics_productivity_module_tech .. "-1.png"
    data_technology[productivity_module_2].icon = graphics_productivity_module_tech .. "-2.png"
    data_technology[productivity_module_3].icon = graphics_productivity_module_tech .. "-3.png"
    data_technology[productivity_module_4].icon = graphics_productivity_module_tech .. "-4.png"
    data_technology[productivity_module_5].icon = graphics_productivity_module_tech .. "-5.png"

    -- POLLUTION CLEANING
    local graphics_pollution_clean_module_tech = "__TIMSABA__/graphics/icons/bobs/modules/technology/pollution-clean/pollution-clean"

    data_technology[pollution_clean_module_1].icon = graphics_pollution_clean_module_tech .. "-1.png"
    data_technology[pollution_clean_module_2].icon = graphics_pollution_clean_module_tech .. "-2.png"
    data_technology[pollution_clean_module_3].icon = graphics_pollution_clean_module_tech .. "-3.png"
    data_technology[pollution_clean_module_4].icon = graphics_pollution_clean_module_tech .. "-4.png"
    data_technology[pollution_clean_module_5].icon = graphics_pollution_clean_module_tech .. "-5.png"

    -- POLLUTION PRODUCING
    local graphics_pollution_create_module_tech = "__TIMSABA__/graphics/icons/bobs/modules/technology/pollution-create/pollution-create"

    data_technology[pollution_create_module_1].icon = graphics_pollution_create_module_tech .. "-1.png"
    data_technology[pollution_create_module_2].icon = graphics_pollution_create_module_tech .. "-2.png"
    data_technology[pollution_create_module_3].icon = graphics_pollution_create_module_tech .. "-3.png"
    data_technology[pollution_create_module_4].icon = graphics_pollution_create_module_tech .. "-4.png"
    data_technology[pollution_create_module_5].icon = graphics_pollution_create_module_tech .. "-5.png"

    -- QUALITY
    local graphics_quality_module_tech = "__TIMSABA__/graphics/icons/bobs/modules/technology/quality/quality"

    data_technology[quality_module_1].icon = graphics_quality_module_tech .. "-1.png"
    data_technology[quality_module_2].icon = graphics_quality_module_tech .. "-2.png"
    data_technology[quality_module_3].icon = graphics_quality_module_tech .. "-3.png"
    data_technology[quality_module_4].icon = graphics_quality_module_tech .. "-4.png"
    data_technology[quality_module_5].icon = graphics_quality_module_tech .. "-5.png"

    -- AGRICULTURAL
    local graphics_agricultural_module_tech = "__TIMSABA__/graphics/icons/bobs/modules/technology/agricultural/agricultural"

    data_technology[agricultural_module_1].icon = graphics_agricultural_module_tech .. "-1.png"
    data_technology[agricultural_module_2].icon = graphics_agricultural_module_tech .. "-2.png"
    data_technology[agricultural_module_3].icon = graphics_agricultural_module_tech .. "-3.png"
    data_technology[agricultural_module_4].icon = graphics_agricultural_module_tech .. "-4.png"
    data_technology[agricultural_module_5].icon = graphics_agricultural_module_tech .. "-5.png"
end

-- PARACELSIN
if mods[paracelsin_mods] then
    tech_galvanized_piping = "zinc-piping"
    data_technology[tech_galvanized_piping].icons = nil
    data_technology[tech_galvanized_piping].icon = "__TIMSABA__/graphics/icons/paracelsin/technology/galvanized-piping.png"
    data_technology[tech_galvanized_piping].icon_size = 256
end