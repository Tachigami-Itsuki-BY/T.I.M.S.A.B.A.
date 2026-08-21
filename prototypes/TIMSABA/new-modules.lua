if mods[bobmodules] then
    local item_sounds = require("__base__.prototypes.item_sounds")
    local module_color_map =
    {
        ["blue"] = {primary = util.color("70b6ff"), secondary = util.color("30d2ff")},
        ["brown"] = {primary = util.color("9c7c60"), secondary = util.color("fff0d9")},
        ["pine"] = {primary = util.color("7a9e96"), secondary = util.color("bfffd2")},
        ["red-yellow"] = {primary = util.color("f27c52"), secondary = util.color("ffe27c")},
        ["green"] = {primary = util.color("95e26c"), secondary = util.color("2bff2b")},
        ["gray-red"] = {primary = util.color("b7b7b7"), secondary = util.color("ff5959")},
        ["yellow"] = {primary = util.color("e6c229"), secondary = util.color("ffe670")}
    }
    -- SPEED
    local SpeedPerLevel = bobmods.modules.SpeedPerLevel
    local SpeedBonus = bobmods.modules.SpeedBonus
    local speed = "speed"
    -- EFFICIENCY
    local ConsumptionPenaltyPerLevel = bobmods.modules.ConsumptionPenaltyPerLevel
    local ConsumptionPenalty = bobmods.modules.ConsumptionPenalty
    local efficiency = "efficiency"
    -- PRODUCTIVITY
    local ProductivityPerLevel = bobmods.modules.ProductivityPerLevel
    local ProductivityBonus = bobmods.modules.ProductivityBonus
    local productivity = "productivity"
    -- POLLUTION CLEANING and PRODUCING
    local PollutionPenaltyPerLevel = bobmods.modules.PollutionPenaltyPerLevel
    local PollutionPenalty = bobmods.modules.PollutionPenalty
    local pollution_clean = "pollution-clean"
    local pollution_create = "pollution-create"
    -- QUALITY
    local QualityPerLevel = bobmods.modules.QualityPerLevel
    local QualityBonus = bobmods.modules.QualityBonus
    local quality = "quality"
    -- AGRICULTURAL
    local agricultural = "agricultural"

    -- MODULE
    local function create_module_item(name, subgroup, type, number, order, effect, beacon_tint)
        data:extend
        ({
            {
                localised_name = {"", {"item-name." .. type .. "-module" }, " " .. number},
                localised_description = {"item-description." .. type .. "-module"},
                type = item_module,
                name = name,
                category = type,
                subgroup = subgroup,
                icon = "__TIMSABA__/graphics/icons/bobs/modules/" .. type .. "/" .. type .. "-" .. number .. ".png",
                order = order,
                stack_size = 50,
                weight = 20000,
                inventory_move_sound = item_sounds.module_inventory_move,
                pick_sound = item_sounds.module_inventory_pickup,
                drop_sound = item_sounds.module_inventory_move,
                effect = effect,
                tier = number,
                art_style = "bob-5-lights",
                beacon_tint = beacon_tint,
                requires_beacon_alt_mode = false
            }
        })
    end
    -- SPEED
    create_module_item(speed_module_6, is_speed_module, speed, 6, f, {speed = 5 * SpeedPerLevel + SpeedBonus, consumption = 5 * ConsumptionPenaltyPerLevel + ConsumptionPenalty}, module_color_map["blue"])
    create_module_item(speed_module_7, is_speed_module, speed, 7, g, {speed = 6 * SpeedPerLevel + SpeedBonus, consumption = 6 * ConsumptionPenaltyPerLevel + ConsumptionPenalty}, module_color_map["blue"])
    create_module_item(speed_module_8, is_speed_module, speed, 8, h, {speed = 7 * SpeedPerLevel + SpeedBonus, consumption = 7 * ConsumptionPenaltyPerLevel + ConsumptionPenalty}, module_color_map["blue"])
    -- EFFICIENCY
    create_module_item(efficiency_module_6, is_efficiency_module, efficiency, 6, f, {consumption = -5 * ConsumptionPenaltyPerLevel + ConsumptionPenalty}, module_color_map["green"])
    create_module_item(efficiency_module_7, is_efficiency_module, efficiency, 7, g, {consumption = -6 * ConsumptionPenaltyPerLevel + ConsumptionPenalty}, module_color_map["green"])
    create_module_item(efficiency_module_8, is_efficiency_module, efficiency, 8, h, {consumption = -7 * ConsumptionPenaltyPerLevel + ConsumptionPenalty}, module_color_map["green"])
    -- PRODUCTIVITY
    create_module_item(productivity_module_6, is_productivity_module, productivity, 6, f, {speed = -5 * SpeedPerLevel + SpeedBonus, consumption = 5 * ConsumptionPenaltyPerLevel + ConsumptionPenalty, productivity = 5 * ProductivityPerLevel + ProductivityBonus, pollution = 5 * PollutionPenaltyPerLevel + PollutionPenalty}, module_color_map["red-yellow"])
    create_module_item(productivity_module_7, is_productivity_module, productivity, 7, g, {speed = -6 * SpeedPerLevel + SpeedBonus, consumption = 6 * ConsumptionPenaltyPerLevel + ConsumptionPenalty, productivity = 6 * ProductivityPerLevel + ProductivityBonus, pollution = 6 * PollutionPenaltyPerLevel + PollutionPenalty}, module_color_map["red-yellow"])
    create_module_item(productivity_module_8, is_productivity_module, productivity, 8, h, {speed = -7 * SpeedPerLevel + SpeedBonus, consumption = 7 * ConsumptionPenaltyPerLevel + ConsumptionPenalty, productivity = 7 * ProductivityPerLevel + ProductivityBonus, pollution = 7 * PollutionPenaltyPerLevel + PollutionPenalty}, module_color_map["red-yellow"])
    -- POLLUTION CLEANING and PRODUCING
    create_module_item(pollution_clean_module_6, is_pollution_clean_module, pollution_clean, 6, f, {pollution = -5 * PollutionPenaltyPerLevel + PollutionPenalty}, module_color_map["pine"])
    create_module_item(pollution_clean_module_7, is_pollution_clean_module, pollution_clean, 7, g, {pollution = -6 * PollutionPenaltyPerLevel + PollutionPenalty}, module_color_map["pine"])
    create_module_item(pollution_clean_module_8, is_pollution_clean_module, pollution_clean, 8, h, {pollution = -7 * PollutionPenaltyPerLevel + PollutionPenalty}, module_color_map["pine"])
    create_module_item(pollution_create_module_6, is_pollution_create_module, pollution_create, 6, f, {pollution = 5 * PollutionPenaltyPerLevel + PollutionPenalty}, module_color_map["brown"])
    create_module_item(pollution_create_module_7, is_pollution_create_module, pollution_create, 7, g, {pollution = 6 * PollutionPenaltyPerLevel + PollutionPenalty}, module_color_map["brown"])
    create_module_item(pollution_create_module_8, is_pollution_create_module, pollution_create, 8, h, {pollution = 7 * PollutionPenaltyPerLevel + PollutionPenalty}, module_color_map["brown"])
    -- QUALITY
    create_module_item(quality_module_6, is_quality_module, quality, 6, f, {speed = -5 * SpeedPerLevel + SpeedBonus, quality = 5 * QualityPerLevel + QualityBonus}, module_color_map["gray-red"])
    create_module_item(quality_module_7, is_quality_module, quality, 7, g, {speed = -6 * SpeedPerLevel + SpeedBonus, quality = 6 * QualityPerLevel + QualityBonus}, module_color_map["gray-red"])
    create_module_item(quality_module_8, is_quality_module, quality, 8, h, {speed = -7 * SpeedPerLevel + SpeedBonus, quality = 7 * QualityPerLevel + QualityBonus}, module_color_map["gray-red"])
    -- AGRICULTURAL
    local function create_agricultural_module_item(name, type, number, order, effect)
        data:extend
        ({
            {
                localised_name = {"", {"item-name." .. type .. "-module" }, " " .. number},
                localised_description = {"item-description." .. agricultural_module_1},
                type = item_module,
                name = name,
                category = "angels-bio-yield",
                subgroup = is_agricultural_module,
                icon = "__TIMSABA__/graphics/icons/bobs/modules/" .. type .. "/" .. type .. "-" .. number .. ".png",
                order = order,
                stack_size = 50,
                weight = 20000,
                inventory_move_sound = item_sounds.module_inventory_move,
                pick_sound = item_sounds.module_inventory_pickup,
                drop_sound = item_sounds.module_inventory_move,
                effect = effect,
                tier = number,
                art_style = "bob-5-lights",
                beacon_tint = module_color_map["yellow"],
                requires_beacon_alt_mode = false
            }
        })
    end
    create_agricultural_module_item(agricultural_module_6, agricultural, 6, f, {productivity = 5 * ProductivityPerLevel + ProductivityBonus, pollution = 5 * PollutionPenaltyPerLevel + PollutionPenalty})
    create_agricultural_module_item(agricultural_module_7, agricultural, 7, g, {productivity = 6 * ProductivityPerLevel + ProductivityBonus, pollution = 6 * PollutionPenaltyPerLevel + PollutionPenalty})
    create_agricultural_module_item(agricultural_module_8, agricultural, 8, h, {productivity = 7 * ProductivityPerLevel + ProductivityBonus, pollution = 7 * PollutionPenaltyPerLevel + PollutionPenalty})

    -- RECIPE
    local function create_module_recipe(name, subgroup, order, planet_resource, circuit_board, module)
        TIMSABA.functions.create_recipes
        ({
            {
                name = name,
                category = crafting,
                additional_categories = {electronics},
                subgroup = subgroup,
                order = order,
                auto_recycle = true,
                allow_productivity = true,
                allow_quality = true,
                energy_required = 32,
                ingredients =
                {
                    {type = item, name = planet_resource, amount = 16},
                    {type = item, name = circuit_board, amount = 8},
                    {type = item, name = module, amount = 1}
                },
                results = {{type = item, name = name, amount = 1}},
                main_product = name
            }
        })
    end
    -- SPEED
    create_module_recipe(speed_module_6, is_speed_module, f, tungsten_carbide_plate_bob, processor_speed_circuit_board, speed_module_5)
    create_module_recipe(speed_module_7, is_speed_module, g, semiconductor,              processor_speed_circuit_board, speed_module_6)
    create_module_recipe(speed_module_8, is_speed_module, h, quantum_processor,          processor_speed_circuit_board, speed_module_7)
    -- EFFICIENCY
    create_module_recipe(efficiency_module_6, is_efficiency_module, f, bioflux,           processor_efficiency_circuit_board, efficiency_module_5)
    create_module_recipe(efficiency_module_7, is_efficiency_module, g, semiconductor,     processor_efficiency_circuit_board, efficiency_module_6)
    create_module_recipe(efficiency_module_8, is_efficiency_module, h, quantum_processor, processor_efficiency_circuit_board, efficiency_module_7)
    -- PRODUCTIVITY
    create_module_recipe(productivity_module_6, is_productivity_module, f, tungsten_carbide_plate_bob, processor_productivity_circuit_board, productivity_module_5)
    create_module_recipe(productivity_module_7, is_productivity_module, g, semiconductor,              processor_productivity_circuit_board, productivity_module_6)
    create_module_recipe(productivity_module_8, is_productivity_module, h, quantum_processor,          processor_productivity_circuit_board, productivity_module_7)
    -- POLLUTION CLEANING and PRODUCING
    create_module_recipe(pollution_clean_module_6, is_pollution_clean_module, f, superconductor,    processor_pollution_clean_circuit_board, pollution_clean_module_5)
    create_module_recipe(pollution_clean_module_7, is_pollution_clean_module, g, semiconductor,     processor_pollution_clean_circuit_board, pollution_clean_module_6)
    create_module_recipe(pollution_clean_module_8, is_pollution_clean_module, h, quantum_processor, processor_pollution_clean_circuit_board, pollution_clean_module_7)
    create_module_recipe(pollution_create_module_6, is_pollution_create_module, f, bioflux,           processor_pollution_create_circuit_board, pollution_create_module_5)
    create_module_recipe(pollution_create_module_7, is_pollution_create_module, g, semiconductor,     processor_pollution_create_circuit_board, pollution_create_module_6)
    create_module_recipe(pollution_create_module_8, is_pollution_create_module, h, quantum_processor, processor_pollution_create_circuit_board, pollution_create_module_7)
    -- QUALITY
    create_module_recipe(quality_module_6, is_quality_module, f, superconductor,    processor_quality_circuit_board, quality_module_5)
    create_module_recipe(quality_module_7, is_quality_module, g, semiconductor,     processor_quality_circuit_board, quality_module_6)
    create_module_recipe(quality_module_8, is_quality_module, h, quantum_processor, processor_quality_circuit_board, quality_module_7)
    -- AGRICULTURAL
    local function create_agricultural_module_recipe(name, number, order, amount, productivity_module, pollution_create_module, agricultural_module)
        TIMSABA.functions.create_recipes
        ({
            {
                name = name,
                category = crafting,
                additional_categories = {electronics},
                subgroup = is_agricultural_module,
                order = order,
                auto_recycle = true,
                allow_productivity = true,
                allow_quality = true,
                energy_required = 32,
                ingredients =
                {
                    {type = item, name = solder, amount = amount},
                    {type = item, name = bio_token, amount = amount},
                    {type = item, name = productivity_module, amount = 1},
                    {type = item, name = pollution_create_module, amount = 1},
                    {type = item, name = agricultural_module, amount = 1}
                },
                results = {{type = item, name = name, amount = 1}},
                main_product = name
            }
        })
    end
    create_agricultural_module_recipe(agricultural_module_6, 6, f, 8,  productivity_module_6, pollution_create_module_6, agricultural_module_5)
    create_agricultural_module_recipe(agricultural_module_7, 7, g, 16, productivity_module_7, pollution_create_module_7, agricultural_module_6)
    create_agricultural_module_recipe(agricultural_module_8, 8, h, 16, productivity_module_8, pollution_create_module_8, agricultural_module_7)

    -- TECHNOLOGY
    local function create_module_technology(name, type, number, prerequisites, count, science_pack)
        data:extend
        ({
            {
                localised_name = {"", {"item-name." .. type .. "-module" }, " " .. number},
                localised_description = {"item-description." .. type .. "-module"},
                type = technology,
                name = name,
                icon = "__TIMSABA__/graphics/icons/bobs/modules/technology/" .. type .. "/" .. type .. "-" .. number .. ".png",
                icon_size = 256,
                prerequisites = prerequisites,
                effects = {{type = unlock_recipe, recipe = name}},
                unit =
                {
                    count = count,
                    ingredients =
                    {
                        {automation_science_pack, 1},
                        {logistic_science_pack, 1},
                        {chemical_science_pack, 1},
                        {production_science_pack, 1},
                        {utility_science_pack, 1},
                        {space_science_pack, 1}
                    },
                    time = 60
                }
            }
        })
        if (science_pack and science_pack == metallurgic_science_pack) or ((number == 7 or number == 8) and (type == speed or type == productivity)) then
            table.insert(data_technology[name].unit.ingredients, {metallurgic_science_pack, 1})
        end
        if (science_pack and science_pack == agricultural_science_pack) or ((number == 7 or number == 8) and (type == efficiency or type == pollution_create)) then
            table.insert(data_technology[name].unit.ingredients, {agricultural_science_pack, 1})
        end
        if (science_pack and science_pack == electromagnetic_science_pack) or ((number == 7 or number == 8) and (type == pollution_clean or type == quality)) then
            table.insert(data_technology[name].unit.ingredients, {electromagnetic_science_pack, 1})
        end
        if (science_pack and science_pack == cryogenic_science_pack) or number == 8 then
            table.insert(data_technology[name].unit.ingredients, {cryogenic_science_pack, 1})
        end
    end
    -- SPEED
    create_module_technology(speed_module_6, speed, 6, {metallurgic_science_pack, speed_module_5}, 350, metallurgic_science_pack)
    create_module_technology(speed_module_7, speed, 7, {cryogenic_science_pack, speed_module_6}, 450, cryogenic_science_pack)
    if mods[vesta_mods] then
        create_module_technology(speed_module_8, speed, 8, {speed_module_7}, 500)
    else
        create_module_technology(speed_module_8, speed, 8, {promethium_science_pack, speed_module_7}, 500)
    end
    -- EFFICIENCY
    create_module_technology(efficiency_module_6, efficiency, 6, {agricultural_science_pack, efficiency_module_5}, 350, agricultural_science_pack)
    create_module_technology(efficiency_module_7, efficiency, 7, {cryogenic_science_pack, efficiency_module_6}, 450, cryogenic_science_pack)
    if mods[vesta_mods] then
        create_module_technology(efficiency_module_8, efficiency, 8, {efficiency_module_7}, 500)
    else
        create_module_technology(efficiency_module_8, efficiency, 8, {promethium_science_pack, efficiency_module_7}, 500)
    end
    -- PRODUCTIVITY
    create_module_technology(productivity_module_6, productivity, 6, {metallurgic_science_pack, productivity_module_5}, 350, metallurgic_science_pack)
    create_module_technology(productivity_module_7, productivity, 7, {cryogenic_science_pack, productivity_module_6}, 450, cryogenic_science_pack)
    if mods[vesta_mods] then
        create_module_technology(productivity_module_8, productivity, 8, {productivity_module_7}, 500)
    else
        create_module_technology(productivity_module_8, productivity, 8, {promethium_science_pack, productivity_module_7}, 500)
    end
    -- POLLUTION CLEANING and PRODUCING
    create_module_technology(pollution_clean_module_6, pollution_clean, 6, {electromagnetic_science_pack, pollution_clean_module_5}, 350, electromagnetic_science_pack)
    create_module_technology(pollution_clean_module_7, pollution_clean, 7, {cryogenic_science_pack, pollution_clean_module_6}, 450, cryogenic_science_pack)
    if mods[vesta_mods] then
        create_module_technology(pollution_clean_module_8, pollution_clean, 8, {pollution_clean_module_7}, 500)
    else
        create_module_technology(pollution_clean_module_8, pollution_clean, 8, {promethium_science_pack, pollution_clean_module_7}, 500)
    end
    create_module_technology(pollution_create_module_6, pollution_create, 6, {agricultural_science_pack, pollution_create_module_5}, 350, agricultural_science_pack)
    create_module_technology(pollution_create_module_7, pollution_create, 7, {cryogenic_science_pack, pollution_create_module_6}, 450, cryogenic_science_pack)
    if mods[vesta_mods] then
        create_module_technology(pollution_create_module_8, pollution_create, 8, {pollution_create_module_7}, 500)
    else
        create_module_technology(pollution_create_module_8, pollution_create, 8, {promethium_science_pack, pollution_create_module_7}, 500)
    end
    -- QUALITY
    create_module_technology(quality_module_6, quality, 6, {electromagnetic_science_pack, quality_module_5}, 350, electromagnetic_science_pack)
    create_module_technology(quality_module_7, quality, 7, {cryogenic_science_pack, quality_module_6}, 450, cryogenic_science_pack)
    if mods[vesta_mods] then
        create_module_technology(quality_module_8, quality, 8, {quality_module_7}, 500)
    else
        create_module_technology(quality_module_8, quality, 8, {promethium_science_pack, quality_module_7}, 500)
    end
    -- AGRICULTURAL
    local function create_agricultural_module_technology(name, type, number, prerequisites, count)
        data:extend
        ({
            {
                type = technology,
                name = name,
                icon = "__TIMSABA__/graphics/icons/bobs/modules/technology/" .. type .. "/" .. type .. "-" .. number .. ".png",
                icon_size = 256,
                prerequisites = prerequisites,
                effects = {{type = unlock_recipe, recipe = name}},
                unit =
                {
                    count = count,
                    ingredients =
                    {
                        {bio_token, 1},
                        {automation_science_pack, 1},
                        {logistic_science_pack, 1},
                        {chemical_science_pack, 1},
                        {production_science_pack, 1},
                        {utility_science_pack, 1},
                        {space_science_pack, 1},
                        {metallurgic_science_pack, 1},
                        {agricultural_science_pack, 1}
                    },
                    time = 60
                }
            }
        })
        if name ~= agricultural_module_6 then
            table.insert(data_technology[name].unit.ingredients, {cryogenic_science_pack, 1})
        end
    end
    create_agricultural_module_technology(agricultural_module_6, agricultural, 6, {agricultural_module_5, productivity_module_6, pollution_create_module_6}, 350)
    create_agricultural_module_technology(agricultural_module_7, agricultural, 7, {agricultural_module_6, productivity_module_7, pollution_create_module_7}, 450)
    create_agricultural_module_technology(agricultural_module_8, agricultural, 8, {agricultural_module_7, productivity_module_8, pollution_create_module_8}, 500)
end