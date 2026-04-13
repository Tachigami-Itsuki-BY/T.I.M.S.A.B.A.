-- [font=default-tiny-bold][/font]

if mods[moshine_mods] then
    local space_locomotive = "space-locomotive"
    data_item_entity[space_locomotive].subgroup = is_moshine_logistics
    data_item_entity[space_locomotive].order = a
    data_recipe[space_locomotive].subgroup = is_moshine_logistics
    data_recipe[space_locomotive].order = a
    data_locomotive[space_locomotive].subgroup = is_moshine_logistics
    data_locomotive[space_locomotive].order = a

    local space_fluid_wagon = "space-fluid-wagon"
    data_item_entity[space_fluid_wagon].subgroup = is_moshine_logistics
    data_item_entity[space_fluid_wagon].order = b
    data_recipe[space_fluid_wagon].subgroup = is_moshine_logistics
    data_recipe[space_fluid_wagon].order = b
    data_wagon_fluid[space_fluid_wagon].subgroup = is_moshine_logistics
    data_wagon_fluid[space_fluid_wagon].order = b

    local space_cargo_wagon = "space-cargo-wagon"
    data_item_entity[space_cargo_wagon].subgroup = is_moshine_logistics
    data_item_entity[space_cargo_wagon].order = c
    data_recipe[space_cargo_wagon].subgroup = is_moshine_logistics
    data_recipe[space_cargo_wagon].order = c
    data_wagon_cargo[space_cargo_wagon].subgroup = is_moshine_logistics
    data_wagon_cargo[space_cargo_wagon].order = c

    local space_train_battery_battery_station = "space-train-battery-charging-station"
    data_item[space_train_battery_battery_station].subgroup = is_moshine_logistics
    data_item[space_train_battery_battery_station].order = d
    data_item[space_train_battery_battery_station].stack_size = 32
    data_item[space_train_battery_battery_station].weight = 31250
    data_recipe[space_train_battery_battery_station].subgroup = is_moshine_logistics
    data_recipe[space_train_battery_battery_station].order = d
    data_assembling[space_train_battery_battery_station].subgroup = is_moshine_logistics
    data_assembling[space_train_battery_battery_station].order = d

    local space_train_destroyed_battery_pack = "space-train-destroyed-battery-pack"
    data_item[space_train_destroyed_battery_pack].subgroup = is_moshine_logistics
    data_item[space_train_destroyed_battery_pack].order = e
    data_item[space_train_destroyed_battery_pack].stack_size = 200
    data_item[space_train_destroyed_battery_pack].weight = 5000

    local space_train_discharged_battery_pack = "space-train-discharged-battery-pack"
    data_item[space_train_discharged_battery_pack].subgroup = is_moshine_logistics
    data_item[space_train_discharged_battery_pack].order = f
    data_item[space_train_discharged_battery_pack].stack_size = 200
    data_item[space_train_discharged_battery_pack].weight = 5000

    local space_train_battery_pack = "space-train-battery-pack"
    data_recipe[space_train_battery_pack].subgroup = is_moshine_logistics
    data_recipe[space_train_battery_pack].icons = THREE_D_I(holmium_plate, superconductor, supercapacitor, space_train_discharged_battery_pack)
    data_recipe[space_train_battery_pack].order = f_b

    local space_train_battery_pack_refurbish = "space-train-battery-pack-refurbish"
    data_recipe[space_train_battery_pack_refurbish].category = electromagnetics
    data_recipe[space_train_battery_pack_refurbish].subgroup = is_moshine_logistics
    data_recipe[space_train_battery_pack_refurbish].icons = THREE_D_IS(battery_lead_acid, space_train_destroyed_battery_pack, sulfuric_acid_angels, space_train_discharged_battery_pack)
    data_recipe[space_train_battery_pack_refurbish].order = f_c

    data_item[space_train_battery_pack].subgroup = is_moshine_logistics
    data_item[space_train_battery_pack].order = g
    data_item[space_train_battery_pack].stack_size = 200
    data_item[space_train_destroyed_battery_pack].weight = 5000

    local space_train_battery_pack_recharge = "space-train-battery-pack-recharge"
    data_recipe[space_train_battery_pack_recharge].subgroup = is_moshine_logistics
    data_recipe[space_train_battery_pack_recharge].icons = THREE_R_I(space_train_discharged_battery_pack, space_train_destroyed_battery_pack, space_train_battery_pack)
    data_recipe[space_train_battery_pack_recharge].order = g_a

    local straight_rail_minimal = "straight-rail-minimal"
    data_rail_straight[straight_rail_minimal].subgroup = is_moshine_logistics
    data_rail_straight[straight_rail_minimal].order = h

    local hidden_rail_pole = "hidden-rail-pole"
    data_electric_pole[hidden_rail_pole].subgroup = is_moshine_logistics
    data_electric_pole[hidden_rail_pole].order = h

    local rail_minimal = "rail-minimal"
    data_rail_planner[rail_minimal].subgroup = is_moshine_logistics
    data_rail_planner[rail_minimal].order = h
    data_rail_planner[rail_minimal].stack_size = 200
    data_rail_planner[rail_minimal].weight = 5000
    data_recipe[rail_minimal].subgroup = is_moshine_logistics
    data_recipe[rail_minimal].order = h

    local rail_ramp_minimal = "rail-ramp-minimal"
    data_rail_planner[rail_ramp_minimal].subgroup = is_moshine_logistics
    data_rail_planner[rail_ramp_minimal].order = i
    data_rail_planner[rail_ramp_minimal].stack_size = 32
    data_rail_planner[rail_ramp_minimal].weight = 31250
    data_recipe[rail_ramp_minimal].subgroup = is_moshine_logistics
    data_recipe[rail_ramp_minimal].order = i
    data_rail_ramp[rail_ramp_minimal].subgroup = is_moshine_logistics
    data_rail_ramp[rail_ramp_minimal].order = i

    local big_solar_panel = "big-solar-panel"
    data_item[big_solar_panel].subgroup = is_moshine_building_energy
    data_item[big_solar_panel].order = a
    data_item[big_solar_panel].stack_size = 32
    data_item[big_solar_panel].weight = 31250
    data_recipe[big_solar_panel].category = electromagnetics
    data_recipe[big_solar_panel].subgroup = is_moshine_building_energy
    data_recipe[big_solar_panel].order = a
    data_recipe[big_solar_panel].energy_required = 10
    data_solar_panel[big_solar_panel].subgroup = is_moshine_building_energy
    data_solar_panel[big_solar_panel].order = a

    local big_accumulator = "big-accumulator"
    data_item[big_accumulator].subgroup = is_moshine_building_energy
    data_item[big_accumulator].order = b
    data_item[big_accumulator].stack_size = 32
    data_item[big_accumulator].weight = 31250
    data_recipe[big_accumulator].category = electromagnetics
    data_recipe[big_accumulator].subgroup = is_moshine_building_energy
    data_recipe[big_accumulator].order = b
    data_recipe[big_accumulator].energy_required = 10
    data_accumulator[big_accumulator].subgroup = is_moshine_building_energy
    data_accumulator[big_accumulator].order = b

    local better_substation = "snouz_better_substation"
    data_item[better_substation].subgroup = is_moshine_building_energy
    data_item[better_substation].order = c
    data_item[better_substation].stack_size = 32
    data_item[better_substation].weight = 31250
    data_recipe[better_substation].category = electromagnetics
    data_recipe[better_substation].subgroup = is_moshine_building_energy
    data_recipe[better_substation].order = c
    data_recipe[better_substation].energy_required = 10
    data_electric_pole[better_substation].subgroup = is_moshine_building_energy
    data_electric_pole[better_substation].order = c

    local building = "moshine-building"
    local data_processor = "data-processor"
    data_item[data_processor].subgroup = is_moshine_building
    data_item[data_processor].order = a
    data_item[data_processor].stack_size = 32
    data_item[data_processor].weight = 31250
    data_recipe[data_processor].subgroup = is_moshine_building
    data_recipe[data_processor].order = a
    data_assembling[data_processor].subgroup = is_moshine_building
    data_assembling[data_processor].order = a

    local neural_computer = "neural_computer"
    data_item[neural_computer].subgroup = is_moshine_building
    data_item[neural_computer].order = b
    data_item[neural_computer].stack_size = 32
    data_item[neural_computer].weight = 31250
    data_recipe[neural_computer].subgroup = is_moshine_building
    data_recipe[neural_computer].order = b
    data_recipe[neural_computer].energy_required = 10
    data_lab[neural_computer].subgroup = is_moshine_building
    data_lab[neural_computer].order = b

    local data_extractor = "data-extractor"
    data_item[data_extractor].subgroup = is_moshine_building
    data_item[data_extractor].order = c
    data_item[data_extractor].stack_size = 32
    data_item[data_extractor].weight = 31250
    data_recipe[data_extractor].subgroup = is_moshine_building
    data_recipe[data_extractor].order = c
    data_mining_drill[data_extractor].subgroup = is_moshine_building
    data_mining_drill[data_extractor].order = c

    local optical_cable = "optical-cable"
    data_item[optical_cable].subgroup = is_moshine_building
    data_item[optical_cable].order = d
    data_item[optical_cable].stack_size = 200
    data_item[optical_cable].weight = 5000
    data_recipe[optical_cable].subgroup = is_moshine_building
    data_recipe[optical_cable].order = d
    data_recipe[optical_cable].energy_required = 2
    data_pipe[optical_cable].subgroup = is_moshine_building
    data_pipe[optical_cable].order = d

    local ai_trainer = "ai-trainer"
    data_item[ai_trainer].subgroup = is_moshine_building
    data_item[ai_trainer].order = e
    data_item[ai_trainer].stack_size = 32
    data_item[ai_trainer].weight = 31250
    data_recipe[ai_trainer].subgroup = is_moshine_building
    data_recipe[ai_trainer].order = e
    data_recipe[ai_trainer].energy_required = 10
    data_furnace[ai_trainer].subgroup = is_moshine_building
    data_furnace[ai_trainer].order = e

    local processing_grid = "processing-grid"
    data_item[processing_grid].subgroup = is_moshine_building
    data_item[processing_grid].order = f
    data_item[processing_grid].stack_size = 32
    data_item[processing_grid].weight = 31250
    data_recipe[processing_grid].subgroup = is_moshine_building
    data_recipe[processing_grid].order = f
    data_recipe[processing_grid].energy_required = 10
    data_agricultural_tower[processing_grid].subgroup = is_moshine_building
    data_agricultural_tower[processing_grid].order = f

    local webbed_processor_tile = "webbed_processor_tile"
    data_item[webbed_processor_tile].subgroup = is_moshine_building
    data_item[webbed_processor_tile].order = g
    data_item[webbed_processor_tile].stack_size = 200
    data_item[webbed_processor_tile].weight = 5000
    data_recipe[webbed_processor_tile].subgroup = is_moshine_building
    data_recipe[webbed_processor_tile].order = g
    data_tile[webbed_processor_tile].subgroup = is_moshine_building
    data_tile[webbed_processor_tile].order = g

    local multi_ore = "multi-ore"
    data_resource[multi_ore].subgroup = is_moshine_recipe
    data_resource[multi_ore].order = a

    -- data_item[silicon_boule_mods] --> "mods-update/mods/mods-override"
    data_recipe[silicon_boule_mods].category = angels_chemical_smelting_4
    data_recipe[silicon_boule_mods].subgroup = is_moshine_recipe
    data_recipe[silicon_boule_mods].icons = THREE_D_I(sand_angels, coal, steam, silicon_boule_mods)
    data_recipe[silicon_boule_mods].order = b

    -- data_item[silicon_cell_mods] --> "mods-update/mods/mods-override"
    -- data_recipe[silicon_cell_mods] --> "mods-update/mods/mods-override"

    -- data_recipe[silicon_carbide_mods] --> "mods-update/mods/mods-override"

    local neodymium = "neodymium"
    data_item[neodymium].subgroup = is_moshine_recipe
    data_item[neodymium].order = e
    data_item[neodymium].stack_size = 200
    data_item[neodymium].weight = 5000

    local magnet = "magnet"
    data_item[magnet].subgroup = is_moshine_recipe
    data_item[magnet].order = f
    data_item[magnet].stack_size = 200
    data_recipe[magnet].subgroup = is_moshine_recipe
    data_recipe[magnet].icons = THREE_I(neodymium, iron_molten_angels, magnet)
    data_recipe[magnet].order = f

    local glass = "glass"
    data_recipe[glass].subgroup = is_moshine_recipe
    data_recipe[glass].icons = TWO_I(sand_angels, glass)
    data_recipe[glass].order = g

    local concrete_from_molten_iron_and_sand = "concrete-from-molten-iron-and-sand"
    data_recipe[concrete_from_molten_iron_and_sand].subgroup = is_moshine_recipe
    data_recipe[concrete_from_molten_iron_and_sand].icon = nil
    data_recipe[concrete_from_molten_iron_and_sand].icons = THREE_D_I(sand_angels, iron_molten_angels, water, concrete)
    data_recipe[concrete_from_molten_iron_and_sand].order = h

    local petroleum_from_sand_sulfur_steam_carbon = "petroleum-from-sand-sulfur-steam-carbon"
    data_recipe[petroleum_from_sand_sulfur_steam_carbon].subgroup = is_moshine_recipe
    data_recipe[petroleum_from_sand_sulfur_steam_carbon].icons = THREE_P_THREE_R_I(sand_angels, coal, sulfur, steam, carbon_angels, NGL_angels)
    data_recipe[petroleum_from_sand_sulfur_steam_carbon].order = i
    data_recipe[petroleum_from_sand_sulfur_steam_carbon].results =
    {
        {type = item, name = carbon_angels, amount = 2},
        {type = fluid, name = NGL_angels, amount = 100}
    }
    data_recipe[petroleum_from_sand_sulfur_steam_carbon].main_product = NGL_angels

    data_tool[datacell_empty].subgroup = is_moshine_datacell
    data_tool[datacell_empty].order = a
    data_tool[datacell_empty].stack_size = 200
    data_recipe[datacell_empty].subgroup = is_moshine_datacell
    data_recipe[datacell_empty].icons = THREE_D_I(advanced_circuit, silicon_cell_mods, magnet, datacell_empty)
    data_recipe[datacell_empty].order = a

    local raw_data = "raw-data"
    data_fluid[raw_data].subgroup = is_moshine_datacell
    data_fluid[raw_data].order = b

    local datacell_raw_data = "datacell-raw-data"
    data_tool[datacell_raw_data].subgroup = is_moshine_datacell
    data_tool[datacell_raw_data].order = c
    data_tool[datacell_raw_data].stack_size = 200
    data_recipe[datacell_raw_data].subgroup = is_moshine_datacell
    data_recipe[datacell_raw_data].icons = THREE_I(datacell_empty, raw_data, datacell_raw_data)
    data_recipe[datacell_raw_data].order = c

    local datacell_remove_raw_data = "datacell-remove-raw-data"
    data_recipe[datacell_remove_raw_data].subgroup = is_moshine_datacell
    data_recipe[datacell_remove_raw_data].icons = THREE_R_I(datacell_raw_data, datacell_empty, raw_data)
    data_recipe[datacell_remove_raw_data].order = d

    local _3d_data_storage = "3d-data-storage"
    local model_stable = "model-stable"

    local datacell_ai_model_data = "datacell-ai-model-data"
    data_tool[datacell_ai_model_data].subgroup = is_moshine_datacell
    data_tool[datacell_ai_model_data].order = e
    data_tool[datacell_ai_model_data].stack_size = 200
    data_recipe[datacell_ai_model_data].subgroup = is_moshine_datacell
    data_recipe[datacell_ai_model_data].icons = TWO_D_I(datacell_empty, model_stable, datacell_ai_model_data, _3d_data_storage)
    data_recipe[datacell_ai_model_data].order = e

    local datacell_equation = "datacell-equation"
    data_tool[datacell_equation].subgroup = is_moshine_datacell
    data_tool[datacell_equation].order = f
    data_tool[datacell_equation].stack_size = 200
    data_recipe[datacell_equation].subgroup = is_moshine_datacell
    data_recipe[datacell_equation].icons = TWO_I(datacell_empty, datacell_equation)
    data_recipe[datacell_equation].order = f

    local datacell_solved_equation = "datacell-solved-equation"
    data_tool[datacell_solved_equation].subgroup = is_moshine_datacell
    data_tool[datacell_solved_equation].order = g
    data_tool[datacell_solved_equation].stack_size = 200

    if mods [panglia_mods] then
        data_tool[datacell_dna_raw].subgroup = is_moshine_datacell
        data_tool[datacell_dna_raw].order = h
        data_tool[datacell_dna_raw].stack_size = 200
        data_recipe[datacell_dna_raw].subgroup = is_moshine_datacell
        data_recipe[datacell_dna_raw].icons = THREE_R_I(datacell_empty, datacell_dna_raw, datacell_empty)
        data_recipe[datacell_dna_raw].order = h

        data_tool[datacell_dna_sequenced].subgroup = is_moshine_datacell
        data_tool[datacell_dna_sequenced].order = i
        data_tool[datacell_dna_sequenced].stack_size = 200
    end


    data_item[_3d_data_storage].subgroup = is_moshine_core
    data_item[_3d_data_storage].order = a
    data_item[_3d_data_storage].stack_size = 200
    data_item[_3d_data_storage].weight = 5000
    data_recipe[_3d_data_storage].category = electromagnetics
    data_recipe[_3d_data_storage].subgroup = is_moshine_core
    data_recipe[_3d_data_storage].icons = FOUR_D_I(datacell_empty, glass, silicon_cell_mods, magnet, _3d_data_storage)
    data_recipe[_3d_data_storage].order = a

    local model_unstable = "model-unstable"
    data_item[model_unstable].subgroup = is_moshine_core
    data_item[model_unstable].order = b
    data_item[model_unstable].weight = 1000000
    data_recipe[model_unstable].subgroup = is_moshine_core
    data_recipe[model_unstable].icons = THREE_I(_3d_data_storage, raw_data, model_unstable)
    data_recipe[model_unstable].order = b

    data_item[model_stable].subgroup = is_moshine_core
    data_item[model_stable].order = c
    data_item[model_stable].stack_size = 200
    data_item[model_stable].weight = 5000
    data_recipe[model_stable].subgroup = is_moshine_core
    data_recipe[model_stable].icons = THREE_I(model_unstable, raw_data, model_stable)
    data_recipe[model_stable].order = c

    local datacell_remove_ai_model_data = "datacell-remove-ai-model-data"
    data_recipe[datacell_remove_ai_model_data].subgroup = is_moshine_core
    data_recipe[datacell_remove_ai_model_data].icons = TWO_D_I(datacell_ai_model_data, _3d_data_storage, datacell_empty, model_stable)
    data_recipe[datacell_remove_ai_model_data].order = d

    local ai_tier_1 = "ai-tier-1"
    data_module[ai_tier_1].subgroup = is_moshine_ai_core
    data_module[ai_tier_1].stack_size = 32
    data_module[ai_tier_1].weight = 31250
    data_recipe[ai_tier_1].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_1].icons = THREE_R_I(model_stable, model_stable, ai_tier_1)

    local ai_tier_2 = "ai-tier-2"
    data_module[ai_tier_2].subgroup = is_moshine_ai_core
    data_module[ai_tier_2].stack_size = 32
    data_module[ai_tier_2].weight = 31250
    data_recipe[ai_tier_2].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_2].icons = THREE_D_I(ai_tier_1, nil, nil, ai_tier_2, ai_tier_1, model_unstable)

    local ai_tier_3 = "ai-tier-3"
    data_module[ai_tier_3].subgroup = is_moshine_ai_core
    data_module[ai_tier_3].stack_size = 32
    data_module[ai_tier_3].weight = 31250
    data_recipe[ai_tier_3].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_3].icons = FOUR_D_I(ai_tier_2, nil, nil, nil, ai_tier_3, ai_tier_2, ai_tier_1, model_unstable)

    local ai_tier_4 = "ai-tier-4"
    data_module[ai_tier_4].subgroup = is_moshine_ai_core
    data_module[ai_tier_4].stack_size = 32
    data_module[ai_tier_4].weight = 31250
    data_recipe[ai_tier_4].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_4].icons = FOUR_D_I(ai_tier_3, nil, nil, nil, ai_tier_4, ai_tier_3, ai_tier_2, model_unstable)

    local ai_tier_5 = "ai-tier-5"
    data_module[ai_tier_5].subgroup = is_moshine_ai_core
    data_module[ai_tier_5].stack_size = 32
    data_module[ai_tier_5].weight = 31250
    data_recipe[ai_tier_5].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_5].icons = FOUR_D_I(ai_tier_4, nil, nil, nil, ai_tier_5, ai_tier_4, ai_tier_3, model_unstable)

    local ai_tier_6 = "ai-tier-6"
    data_module[ai_tier_6].subgroup = is_moshine_ai_core
    data_module[ai_tier_6].stack_size = 32
    data_module[ai_tier_6].weight = 31250
    data_recipe[ai_tier_6].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_6].icons = FOUR_D_I(ai_tier_5, nil, nil, nil, ai_tier_6, ai_tier_5, ai_tier_4, model_unstable)

    local ai_tier_7 = "ai-tier-7"
    data_module[ai_tier_7].subgroup = is_moshine_ai_core
    data_module[ai_tier_7].stack_size = 32
    data_module[ai_tier_7].weight = 31250
    data_recipe[ai_tier_7].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_7].icons = FOUR_D_I(ai_tier_6, nil, nil, nil, ai_tier_7, ai_tier_6, ai_tier_5, model_unstable)

    local ai_tier_8 = "ai-tier-8"
    data_module[ai_tier_8].subgroup = is_moshine_ai_core
    data_module[ai_tier_8].stack_size = 32
    data_module[ai_tier_8].weight = 31250
    data_recipe[ai_tier_8].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_8].icons = FOUR_D_I(ai_tier_7, nil, nil, nil, ai_tier_8, ai_tier_7, ai_tier_6, model_unstable)

    local ai_tier_9 = "ai-tier-9"
    data_module[ai_tier_9].subgroup = is_moshine_ai_core
    data_module[ai_tier_9].stack_size = 32
    data_module[ai_tier_9].weight = 31250
    data_recipe[ai_tier_9].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_9].icons = FOUR_D_I(ai_tier_8, nil, nil, nil, ai_tier_9, ai_tier_8, ai_tier_7, model_unstable)

    local ai_tier_10 = "ai-tier-10"
    data_module[ai_tier_10].subgroup = is_moshine_ai_core
    data_module[ai_tier_10].stack_size = 32
    data_module[ai_tier_10].weight = 31250
    data_recipe[ai_tier_10].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_10].icons = FOUR_D_I(ai_tier_9, nil, nil, nil, ai_tier_10, ai_tier_9, ai_tier_8, model_unstable)

    data_technology["planet-discovery-moshine"].prerequisites = {metallurgic_science_pack, "electromagnetic-plant"}

    local steam_geyser = "steam-geyser"
    data_resource[steam_geyser].icon = "__TIMSABA__/graphics/icons/moshine/steam-geyser.png"
    data_resource[steam_geyser].stages.layers[1].filename = "__TIMSABA__/graphics/icons/moshine/steam-geyser-entity.png"
end