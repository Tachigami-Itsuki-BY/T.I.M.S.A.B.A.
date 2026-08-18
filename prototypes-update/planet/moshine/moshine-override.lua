if mods[moshine_mods] then
    -- RECIPE
    local multi_ore = "multi-ore"
    data_resource[multi_ore].subgroup = is_moshine_recipe
    data_resource[multi_ore].order = a
    data_resource[multi_ore].minable =
    {
        mining_particle = "iron-ore-particle",
        mining_time = 2,
        results =
        {
            {type = item, name = monazite_ore,     amount = 1, probability = 0.5}, -- Nd + Ho + U + Th + Сe + Pm (PO₄)
            {type = item, name = calcite,          amount = 1, probability = 0.06125}, -- CaCO₃
            {type = item, name = limestone_angels, amount = 1, probability = 0.06125}, -- CaCO₃
            {type = item, name = barite,           amount = 1, probability = 0.125}, -- (Ba,Ca,Pb)SO₄
            {type = item, name = fluorite_angels,  amount = 1, probability = 0.06125}, -- CaF₂
            {type = item, name = sand_angels,      amount = 1, probability = 0.06125}, -- SiO₂
            {type = item, name = biotite_mica,     amount = 1, probability = 0.125} -- K(Mg₃,Fe₃,Al₂)[Si₄O₁₀](OH,F)₂
        }
    }

    -- data_item[silicon_boule_mods] --> "mods-update/mods/mods-override"
    data_recipe[silicon_boule_mods].category = angels_chemical_smelting_4
    data_recipe[silicon_boule_mods].subgroup = is_moshine_recipe
    data_recipe[silicon_boule_mods].icons = THREE_D_I(sand_angels, nil, steam, silicon_boule_mods, hydrogen_angels, oxygen_angels)
    data_recipe[silicon_boule_mods].order = g
    data_recipe[silicon_boule_mods].energy_required = 8 -- SiO₂(s) + 2H₂O(g) --> Si(s) + 2H₂(g) + 2O₂(g)
    data_recipe[silicon_boule_mods].ingredients =
    {
        {type = item, name = sand_angels, amount = 16},
        {type = fluid, name = steam, amount = 480}
    }
    data_recipe[silicon_boule_mods].results =
    {
        {type = item, name = silicon_boule_mods, amount = 16},
        {type = fluid, name = hydrogen_angels, amount = 240}, -- 480
        {type = fluid, name = oxygen_angels, amount = 240} -- 480
    }
    data_recipe[silicon_boule_mods].main_product = silicon_boule_mods
    data_recipe[silicon_boule_mods].surface_conditions = {{property = pressure, min = 701, max = 701}}

    -- data_item[silicon_cell_mods] --> "mods-update/mods/mods-override"
    -- data_recipe[silicon_cell_mods] --> "mods-update/mods/mods-override"

    -- data_recipe[silicon_carbide_mods] --> "mods-update/mods/mods-override"

    data_recipe[glass_mods].localised_name = {"item-name.angels-plate-glass"}
    data_recipe[glass_mods].category = smelting_filtering
    data_recipe[glass_mods].subgroup = is_moshine_recipe
    data_recipe[glass_mods].icons = TWO_I(sand_angels, glass_bob)
    data_recipe[glass_mods].order = j

    -- NEODYM CASTING
    data_item[neodymium_magnet].localised_name = {"item-name.neodymium-magnet"}
    data_item[neodymium_magnet].localised_description = show_formula and {chemical_formula, "NdFeB"} or nil
    data_item[neodymium_magnet].subgroup = is_neodymium_casting
    data_item[neodymium_magnet].order = b
    data_item[neodymium_magnet].stack_size = 200
    data_recipe[neodymium_magnet].category = metallurgy
    data_recipe[neodymium_magnet].subgroup = is_neodymium_casting
    data_recipe[neodymium_magnet].icons = TWO_I(neodymium_iron_boron_molten, neodymium_magnet)
    data_recipe[neodymium_magnet].order = b
    data_recipe[neodymium_magnet].energy_required = 4 -- Nd₂Fe₁₄B(molten) --> Nd₂Fe₁₄B(s)
    data_recipe[neodymium_magnet].ingredients = {{type = fluid, name = neodymium_iron_boron_molten, amount = 60}}
    data_recipe[neodymium_magnet].results[1].amount = 4

    -- DATA CELL
    data_tool[datacell_empty].subgroup = is_moshine_datacell
    data_tool[datacell_empty].order = a
    data_tool[datacell_empty].stack_size = 200
    data_recipe[datacell_empty].subgroup = is_moshine_datacell
    data_recipe[datacell_empty].order = a
    data_recipe[datacell_empty].energy_required = 8
    data_recipe[datacell_empty].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 1},
        {type = item, name = silicon_cell_mods, amount = 1},
        {type = item, name = neodymium_magnet, amount = 1}
    }

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
    data_recipe[datacell_raw_data].ingredients =
    {
        {type = item, name = datacell_empty, amount = 1},
        {type = fluid, name = raw_data, amount = 960}
    }

    local datacell_remove_raw_data = "datacell-remove-raw-data"
    data_recipe[datacell_remove_raw_data].subgroup = is_moshine_datacell
    data_recipe[datacell_remove_raw_data].icons = THREE_R_I(datacell_raw_data, datacell_empty, raw_data)
    data_recipe[datacell_remove_raw_data].order = d
    data_recipe[datacell_remove_raw_data].results =
    {
        {type = item, name = datacell_empty, amount = 1},
        {type = fluid, name = raw_data, amount = 960}
    }

    local _3d_data_storage = "3d-data-storage"
    local model_stable = "model-stable"

    local datacell_ai_model_data = "datacell-ai-model-data"
    data_tool[datacell_ai_model_data].subgroup = is_moshine_datacell
    data_tool[datacell_ai_model_data].order = e
    data_tool[datacell_ai_model_data].stack_size = 200
    data_recipe[datacell_ai_model_data].subgroup = is_moshine_datacell
    data_recipe[datacell_ai_model_data].icons = TWO_D_I(datacell_empty, model_stable, datacell_ai_model_data, _3d_data_storage)
    data_recipe[datacell_ai_model_data].order = e
    data_recipe[datacell_ai_model_data].energy_required = 8

    local datacell_equation = "datacell-equation"
    data_tool[datacell_equation].subgroup = is_moshine_datacell
    data_tool[datacell_equation].order = f
    data_tool[datacell_equation].stack_size = 200
    data_recipe[datacell_equation].subgroup = is_moshine_datacell
    data_recipe[datacell_equation].icons = TWO_I(datacell_empty, datacell_equation)
    data_recipe[datacell_equation].order = f
    data_recipe[datacell_equation].energy_required = 1024

    local datacell_solved_equation = "datacell-solved-equation"
    data_tool[datacell_solved_equation].subgroup = is_moshine_datacell
    data_tool[datacell_solved_equation].order = g
    data_tool[datacell_solved_equation].stack_size = 200

    if mods[panglia_mods] then
        data_tool[datacell_dna_raw].subgroup = is_moshine_datacell
        data_tool[datacell_dna_raw].order = h
        data_tool[datacell_dna_raw].stack_size = 200
        data_recipe[datacell_dna_raw].subgroup = is_moshine_datacell
        data_recipe[datacell_dna_raw].icons = THREE_R_I(datacell_empty, datacell_dna_raw, datacell_empty)
        data_recipe[datacell_dna_raw].order = h
        data_recipe[datacell_dna_raw].energy_required = 64

        data_tool[datacell_dna_sequenced].subgroup = is_moshine_datacell
        data_tool[datacell_dna_sequenced].order = i
        data_tool[datacell_dna_sequenced].stack_size = 200
    end

    -- CORE
    data_item[_3d_data_storage].subgroup = is_moshine_core
    data_item[_3d_data_storage].order = a
    data_item[_3d_data_storage].stack_size = 200
    data_recipe[_3d_data_storage].category = electromagnetics
    data_recipe[_3d_data_storage].subgroup = is_moshine_core
    data_recipe[_3d_data_storage].order = a
    data_recipe[_3d_data_storage].energy_required = 8
    data_recipe[_3d_data_storage].ingredients =
    {
        {type = item, name = datacell_empty, amount = 4},
        {type = item, name = glass_bob, amount = 4},
        {type = item, name = silicon_cell_mods, amount = 4},
        {type = item, name = neodymium_magnet, amount = 4}
    }

    local model_unstable = "model-unstable"
    data_item[model_unstable].subgroup = is_moshine_core
    data_item[model_unstable].order = b
    data_item[model_unstable].weight = 1000000
    data_recipe[model_unstable].subgroup = is_moshine_core
    data_recipe[model_unstable].icons = THREE_I(_3d_data_storage, raw_data, model_unstable)
    data_recipe[model_unstable].order = b
    data_recipe[model_unstable].energy_required = 8
    data_recipe[model_unstable].ingredients =
    {
        {type = item, name = _3d_data_storage, amount = 1},
        {type = fluid, name = raw_data, amount = 480}
    }

    data_item[model_stable].subgroup = is_moshine_core
    data_item[model_stable].order = c
    data_item[model_stable].stack_size = 200
    data_recipe[model_stable].subgroup = is_moshine_core
    data_recipe[model_stable].icons = THREE_I(model_unstable, raw_data, model_stable)
    data_recipe[model_stable].order = c
    data_recipe[model_stable].energy_required = 32
    data_recipe[model_stable].ingredients =
    {
        {type = item, name = model_unstable, amount = 1},
        {type = fluid, name = raw_data, amount = 960}
    }

    local datacell_remove_ai_model_data = "datacell-remove-ai-model-data"
    data_recipe[datacell_remove_ai_model_data].subgroup = is_moshine_core
    data_recipe[datacell_remove_ai_model_data].icons = TWO_D_I(datacell_ai_model_data, _3d_data_storage, datacell_empty, model_stable)
    data_recipe[datacell_remove_ai_model_data].order = d
    data_recipe[datacell_remove_ai_model_data].energy_required = 16

    -- AI CORE
    local ai_tier_1 = "ai-tier-1"
    data_module[ai_tier_1].subgroup = is_moshine_ai_core
    data_module[ai_tier_1].stack_size = 32
    data_module[ai_tier_1].weight = 31250
    data_recipe[ai_tier_1].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_1].icons = THREE_R_I(model_stable, model_stable, ai_tier_1)
    data_recipe[ai_tier_1].energy_required = 128

    local ai_tier_2 = "ai-tier-2"
    data_module[ai_tier_2].subgroup = is_moshine_ai_core
    data_module[ai_tier_2].stack_size = 32
    data_module[ai_tier_2].weight = 31250
    data_recipe[ai_tier_2].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_2].icons = THREE_D_I(ai_tier_1, nil, nil, ai_tier_2, ai_tier_1, model_unstable)
    data_recipe[ai_tier_2].energy_required = 128
    data_recipe[ai_tier_2].results =
    {
        {type = item, name = ai_tier_1, amount = 1, probability = 0.5},
        {type = item, name = ai_tier_2, amount = 1, probability = 0.5},
        {type = item, name = model_unstable, amount = 1, probability = 0.015625}
    }

    local ai_tier_3 = "ai-tier-3"
    data_module[ai_tier_3].subgroup = is_moshine_ai_core
    data_module[ai_tier_3].stack_size = 32
    data_module[ai_tier_3].weight = 31250
    data_recipe[ai_tier_3].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_3].icons = FOUR_D_I(ai_tier_2, nil, nil, nil, ai_tier_3, ai_tier_2, ai_tier_1, model_unstable)
    data_recipe[ai_tier_3].energy_required = 128
    data_recipe[ai_tier_3].results =
    {
        {type = item, name = ai_tier_1, amount = 1, probability = 0.25},
        {type = item, name = ai_tier_2, amount = 1, probability = 0.5},
        {type = item, name = ai_tier_3, amount = 1, probability = 0.25},
        {type = item, name = model_unstable, amount = 1, probability = 0.015625}
    }

    local ai_tier_4 = "ai-tier-4"
    data_module[ai_tier_4].subgroup = is_moshine_ai_core
    data_module[ai_tier_4].stack_size = 32
    data_module[ai_tier_4].weight = 31250
    data_recipe[ai_tier_4].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_4].icons = FOUR_D_I(ai_tier_3, nil, nil, nil, ai_tier_4, ai_tier_3, ai_tier_2, model_unstable)
    data_recipe[ai_tier_4].energy_required = 128
    data_recipe[ai_tier_4].results =
    {
        {type = item, name = ai_tier_2, amount = 1, probability = 0.25},
        {type = item, name = ai_tier_3, amount = 1, probability = 0.5},
        {type = item, name = ai_tier_4, amount = 1, probability = 0.25},
        {type = item, name = model_unstable, amount = 1, probability = 0.015625}
    }

    local ai_tier_5 = "ai-tier-5"
    data_module[ai_tier_5].subgroup = is_moshine_ai_core
    data_module[ai_tier_5].stack_size = 32
    data_module[ai_tier_5].weight = 31250
    data_recipe[ai_tier_5].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_5].icons = FOUR_D_I(ai_tier_4, nil, nil, nil, ai_tier_5, ai_tier_4, ai_tier_3, model_unstable)
    data_recipe[ai_tier_5].energy_required = 128
    data_recipe[ai_tier_5].results =
    {
        {type = item, name = ai_tier_3, amount = 1, probability = 0.25},
        {type = item, name = ai_tier_4, amount = 1, probability = 0.5},
        {type = item, name = ai_tier_5, amount = 1, probability = 0.25},
        {type = item, name = model_unstable, amount = 1, probability = 0.015625}
    }

    local ai_tier_6 = "ai-tier-6"
    data_module[ai_tier_6].subgroup = is_moshine_ai_core
    data_module[ai_tier_6].stack_size = 32
    data_module[ai_tier_6].weight = 31250
    data_recipe[ai_tier_6].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_6].icons = FOUR_D_I(ai_tier_5, nil, nil, nil, ai_tier_6, ai_tier_5, ai_tier_4, model_unstable)
    data_recipe[ai_tier_6].energy_required = 128
    data_recipe[ai_tier_6].results =
    {
        {type = item, name = ai_tier_4, amount = 1, probability = 0.25},
        {type = item, name = ai_tier_5, amount = 1, probability = 0.5},
        {type = item, name = ai_tier_6, amount = 1, probability = 0.25},
        {type = item, name = model_unstable, amount = 1, probability = 0.015625}
    }

    local ai_tier_7 = "ai-tier-7"
    data_module[ai_tier_7].subgroup = is_moshine_ai_core
    data_module[ai_tier_7].stack_size = 32
    data_module[ai_tier_7].weight = 31250
    data_recipe[ai_tier_7].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_7].icons = FOUR_D_I(ai_tier_6, nil, nil, nil, ai_tier_7, ai_tier_6, ai_tier_5, model_unstable)
    data_recipe[ai_tier_7].energy_required = 128
    data_recipe[ai_tier_7].results =
    {
        {type = item, name = ai_tier_5, amount = 1, probability = 0.25},
        {type = item, name = ai_tier_6, amount = 1, probability = 0.5},
        {type = item, name = ai_tier_7, amount = 1, probability = 0.25},
        {type = item, name = model_unstable, amount = 1, probability = 0.015625}
    }

    local ai_tier_8 = "ai-tier-8"
    data_module[ai_tier_8].subgroup = is_moshine_ai_core
    data_module[ai_tier_8].stack_size = 32
    data_module[ai_tier_8].weight = 31250
    data_recipe[ai_tier_8].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_8].icons = FOUR_D_I(ai_tier_7, nil, nil, nil, ai_tier_8, ai_tier_7, ai_tier_6, model_unstable)
    data_recipe[ai_tier_8].energy_required = 128
    data_recipe[ai_tier_8].results =
    {
        {type = item, name = ai_tier_6, amount = 1, probability = 0.25},
        {type = item, name = ai_tier_7, amount = 1, probability = 0.5},
        {type = item, name = ai_tier_8, amount = 1, probability = 0.25},
        {type = item, name = model_unstable, amount = 1, probability = 0.015625}
    }

    local ai_tier_9 = "ai-tier-9"
    data_module[ai_tier_9].subgroup = is_moshine_ai_core
    data_module[ai_tier_9].stack_size = 32
    data_module[ai_tier_9].weight = 31250
    data_recipe[ai_tier_9].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_9].icons = FOUR_D_I(ai_tier_8, nil, nil, nil, ai_tier_9, ai_tier_8, ai_tier_7, model_unstable)
    data_recipe[ai_tier_9].energy_required = 128
    data_recipe[ai_tier_9].results =
    {
        {type = item, name = ai_tier_7, amount = 1, probability = 0.25},
        {type = item, name = ai_tier_8, amount = 1, probability = 0.5},
        {type = item, name = ai_tier_9, amount = 1, probability = 0.25},
        {type = item, name = model_unstable, amount = 1, probability = 0.015625}
    }

    ai_tier_10 = "ai-tier-10"
    data_module[ai_tier_10].subgroup = is_moshine_ai_core
    data_module[ai_tier_10].stack_size = 32
    data_module[ai_tier_10].weight = 31250
    data_recipe[ai_tier_10].subgroup = is_moshine_ai_core
    data_recipe[ai_tier_10].icons = FOUR_D_I(ai_tier_9, nil, nil, nil, ai_tier_10, ai_tier_9, ai_tier_8, model_unstable)
    data_recipe[ai_tier_10].energy_required = 128
    data_recipe[ai_tier_10].results =
    {
        {type = item, name = ai_tier_8, amount = 1, probability = 0.25},
        {type = item, name = ai_tier_9, amount = 1, probability = 0.5},
        {type = item, name = ai_tier_10, amount = 1, probability = 0.25},
        {type = item, name = model_unstable, amount = 1, probability = 0.015625}
    }

    -- LOGISTICS
    space_locomotive = "space-locomotive"
    data_item_entity[space_locomotive].subgroup = is_moshine_logistics
    data_item_entity[space_locomotive].order = a
    data_item_entity[space_locomotive].stack_size = 4
    data_item_entity[space_locomotive].weight = 250000
    data_recipe[space_locomotive].subgroup = is_moshine_logistics
    data_recipe[space_locomotive].order = a
    data_recipe[space_locomotive].energy_required = 64
    data_recipe[space_locomotive].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 16},
        {type = item, name = locomotive_3, amount = 1},
        {type = item, name = niobium_titanium_plate, amount = 16},
        {type = item, name = superconductor, amount = 8},
        {type = item, name = supercapacitor, amount = 4},
        {type = item, name = neodymium_magnet, amount = 4}
    }
    data_locomotive[space_locomotive].subgroup = is_moshine_logistics
    data_locomotive[space_locomotive].order = a
    data_locomotive[space_locomotive].max_speed = 2
    data_locomotive[space_locomotive].max_power = 6250 .. kW
    data_locomotive[space_locomotive].energy_source.effectivity = 1
    data_locomotive[space_locomotive].equipment_grid = power_armor_equipment_grid_3

    local space_cargo_wagon = "space-cargo-wagon"
    data_item_entity[space_cargo_wagon].subgroup = is_moshine_logistics
    data_item_entity[space_cargo_wagon].order = b
    data_item_entity[space_cargo_wagon].stack_size = 4
    data_item_entity[space_cargo_wagon].weight = 250000
    data_recipe[space_cargo_wagon].subgroup = is_moshine_logistics
    data_recipe[space_cargo_wagon].order = b
    data_recipe[space_cargo_wagon].energy_required = 64
    data_recipe[space_cargo_wagon].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = cargo_wagon_3, amount = 1},
        {type = item, name = niobium_titanium_plate, amount = 16},
        {type = item, name = superconductor, amount = 8},
        {type = item, name = neodymium_magnet, amount = 4}
    }
    data_wagon_cargo[space_cargo_wagon].subgroup = is_moshine_logistics
    data_wagon_cargo[space_cargo_wagon].order = b
    data_wagon_cargo[space_cargo_wagon].inventory_size = 160
    data_wagon_cargo[space_cargo_wagon].equipment_grid = power_armor_equipment_grid_3

    local space_fluid_wagon = "space-fluid-wagon"
    data_item_entity[space_fluid_wagon].subgroup = is_moshine_logistics
    data_item_entity[space_fluid_wagon].order = c
    data_item_entity[space_fluid_wagon].stack_size = 4
    data_item_entity[space_fluid_wagon].weight = 250000
    data_recipe[space_fluid_wagon].subgroup = is_moshine_logistics
    data_recipe[space_fluid_wagon].order = c
    data_recipe[space_fluid_wagon].energy_required = 64
    data_recipe[space_fluid_wagon].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = fluid_wagon_3, amount = 1},
        {type = item, name = niobium_titanium_plate, amount = 16},
        {type = item, name = superconductor, amount = 8},
        {type = item, name = neodymium_magnet, amount = 4}
    }
    data_wagon_fluid[space_fluid_wagon].subgroup = is_moshine_logistics
    data_wagon_fluid[space_fluid_wagon].order = c
    data_wagon_fluid[space_fluid_wagon].capacity = 96000
    data_wagon_fluid[space_fluid_wagon].equipment_grid = power_armor_equipment_grid_3

    local space_train_battery_battery_station = "space-train-battery-charging-station"
    data_item[space_train_battery_battery_station].subgroup = is_moshine_logistics
    data_item[space_train_battery_battery_station].order = d
    data_item[space_train_battery_battery_station].stack_size = 32
    data_item[space_train_battery_battery_station].weight = 31250
    data_recipe[space_train_battery_battery_station].subgroup = is_moshine_logistics
    data_recipe[space_train_battery_battery_station].order = d
    data_recipe[space_train_battery_battery_station].energy_required = 8
    data_recipe[space_train_battery_battery_station].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = accumulator_4, amount = 1},
        {type = item, name = niobium_titanium_plate, amount = 8},
        {type = item, name = superconductor, amount = 4},
        {type = item, name = holmium_plate, amount = 2}
    }
    data_assembling[space_train_battery_battery_station].subgroup = is_moshine_logistics
    data_assembling[space_train_battery_battery_station].order = d
    data_assembling[space_train_battery_battery_station].energy_usage = (2400 - 240) .. kW
    data_assembling[space_train_battery_battery_station].energy_source.drain = 240 .. kW

    local straight_rail_minimal = "straight-rail-minimal"
    data_rail_straight[straight_rail_minimal].subgroup = is_moshine_logistics
    data_rail_straight[straight_rail_minimal].order = e

    local hidden_rail_pole = "hidden-rail-pole"
    data_electric_pole[hidden_rail_pole].subgroup = is_moshine_logistics
    data_electric_pole[hidden_rail_pole].order = e

    local rail_minimal = "rail-minimal"
    data_rail_planner[rail_minimal].subgroup = is_moshine_logistics
    data_rail_planner[rail_minimal].order = e
    data_rail_planner[rail_minimal].stack_size = 200
    data_recipe[rail_minimal].subgroup = is_moshine_logistics
    data_recipe[rail_minimal].order = e

    local rail_ramp_minimal = "rail-ramp-minimal"
    data_rail_planner[rail_ramp_minimal].subgroup = is_moshine_logistics
    data_rail_planner[rail_ramp_minimal].order = f
    data_rail_planner[rail_ramp_minimal].stack_size = 32
    data_rail_planner[rail_ramp_minimal].weight = 31250
    data_recipe[rail_ramp_minimal].subgroup = is_moshine_logistics
    data_recipe[rail_ramp_minimal].order = f
    data_recipe[rail_ramp_minimal].energy_required = 8
    data_recipe[rail_ramp_minimal].ingredients =
    {
        {type = item, name = rail_minimal, amount = 8},
        {type = item, name = steel_plate, amount = 16},
        {type = item, name = reinforced_concrete, amount = 128}
    }
    data_rail_ramp[rail_ramp_minimal].subgroup = is_moshine_logistics
    data_rail_ramp[rail_ramp_minimal].order = f

    -- LOGISTICS BATTERY
    local space_train_destroyed_battery_pack = "space-train-destroyed-battery-pack"
    data_item[space_train_destroyed_battery_pack].subgroup = is_moshine_logistics_battery
    data_item[space_train_destroyed_battery_pack].order = a
    data_item[space_train_destroyed_battery_pack].stack_size = 200

    local space_train_discharged_battery_pack = "space-train-discharged-battery-pack"
    data_item[space_train_discharged_battery_pack].subgroup = is_moshine_logistics_battery
    data_item[space_train_discharged_battery_pack].order = b
    data_item[space_train_discharged_battery_pack].stack_size = 200

    data_recipe[space_train_battery_pack].subgroup = is_moshine_logistics_battery
    data_recipe[space_train_battery_pack].icon = data_item[space_train_discharged_battery_pack].icon
    data_recipe[space_train_battery_pack].order = b_a
    data_recipe[space_train_battery_pack].energy_required = 8

    local space_train_battery_pack_refurbish = "space-train-battery-pack-refurbish"
    data_recipe[space_train_battery_pack_refurbish].category = electromagnetics
    data_recipe[space_train_battery_pack_refurbish].subgroup = is_moshine_logistics_battery
    data_recipe[space_train_battery_pack_refurbish].icon = data_item[space_train_discharged_battery_pack].icon
    data_recipe[space_train_battery_pack_refurbish].order = b_b
    data_recipe[space_train_battery_pack_refurbish].energy_required = 8
    data_recipe[space_train_battery_pack_refurbish].ingredients =
    {
        {type = item, name = battery_graphene, amount = 8},
        {type = item, name = space_train_destroyed_battery_pack, amount = 1},
        {type = fluid, name = sulfuric_acid_angels, amount = 30}
    }

    data_item[space_train_battery_pack].subgroup = is_moshine_logistics_battery
    data_item[space_train_battery_pack].order = c
    data_item[space_train_battery_pack].stack_size = 200

    local space_train_battery_pack_recharge = "space-train-battery-pack-recharge"
    data_recipe[space_train_battery_pack_recharge].subgroup = is_moshine_logistics_battery
    data_recipe[space_train_battery_pack_recharge].icons = THREE_R_I(space_train_discharged_battery_pack, space_train_destroyed_battery_pack, space_train_battery_pack)
    data_recipe[space_train_battery_pack_recharge].order = c_a

    -- ENERGY BUILDING
    local big_solar_panel = "big-solar-panel"
    data_item[big_solar_panel].subgroup = is_moshine_building_energy
    data_item[big_solar_panel].order = a
    data_item[big_solar_panel].stack_size = 32
    data_item[big_solar_panel].weight = 31250
    data_recipe[big_solar_panel].category = electromagnetics
    data_recipe[big_solar_panel].subgroup = is_moshine_building_energy
    data_recipe[big_solar_panel].order = a
    data_recipe[big_solar_panel].energy_required = 8
    data_recipe[big_solar_panel].ingredients =
    {
        {type = item, name = solar_panel_large_4, amount = 4},
        {type = item, name = reinforced_concrete, amount = 64},
        {type = item, name = supercapacitor, amount = 8},
        {type = item, name = silicon_cell_mods, amount = 8}
    }
    data_solar_panel[big_solar_panel].subgroup = is_moshine_building_energy
    data_solar_panel[big_solar_panel].order = a
    data_solar_panel[big_solar_panel].production = (240 * 16) .. kW

    local big_accumulator = "big-accumulator"
    data_item[big_accumulator].subgroup = is_moshine_building_energy
    data_item[big_accumulator].order = b
    data_item[big_accumulator].stack_size = 32
    data_item[big_accumulator].weight = 31250
    data_recipe[big_accumulator].category = electromagnetics
    data_recipe[big_accumulator].subgroup = is_moshine_building_energy
    data_recipe[big_accumulator].order = b
    data_recipe[big_accumulator].energy_required = 8
    data_recipe[big_accumulator].ingredients =
    {
        {type = item, name = substation_4, amount = 1},
        {type = item, name = accumulator_4, amount = 4},
        {type = item, name = niobium_titanium_cable, amount = 32},
        {type = item, name = reinforced_concrete, amount = 32},
        {type = item, name = supercapacitor, amount = 8},
        {type = item, name = neodymium_magnet, amount = 8}
    }
    data_accumulator[big_accumulator].subgroup = is_moshine_building_energy
    data_accumulator[big_accumulator].order = b
    data_accumulator[big_accumulator].energy_source =
    {
        type = electric,
        buffer_capacity = (38400 * 16) .. kJ,
        usage_priority = tertiary,
        input_flow_limit = (2400 * 16) .. kW,
        output_flow_limit = (2400 * 16) .. kW
    }

    -- BUILDING
    local data_processor = "data-processor"
    data_item[data_processor].subgroup = is_moshine_building
    data_item[data_processor].order = a
    data_item[data_processor].stack_size = 32
    data_item[data_processor].weight = 31250
    data_recipe[data_processor].subgroup = is_moshine_building
    data_recipe[data_processor].order = a
    data_recipe[data_processor].energy_required = 8
    if mods[bobmodules] then
        data_recipe[data_processor].ingredients =
        {
            {type = item, name = assembling_machine_6, amount = 1},
            {type = item, name = silicon_carbide_bob, amount = 4},
            {type = item, name = productivity_module_5, amount = 4}
        }
    else
        data_recipe[data_processor].ingredients =
        {
            {type = item, name = assembling_machine_6, amount = 1},
            {type = item, name = silicon_carbide_bob, amount = 4},
            {type = item, name = productivity_module_3, amount = 4}
        }
    end
    data_assembling[data_processor].subgroup = is_moshine_building
    data_assembling[data_processor].order = a
    data_assembling[data_processor].energy_usage = (240 - drain) .. kW
    data_assembling[data_processor].energy_source.drain = drain .. kW

    data_item[neural_computer].subgroup = is_moshine_building
    data_item[neural_computer].order = b
    data_item[neural_computer].stack_size = 32
    data_item[neural_computer].weight = 31250
    data_recipe[neural_computer].subgroup = is_moshine_building
    data_recipe[neural_computer].order = b
    data_recipe[neural_computer].energy_required = 8
    data_recipe[neural_computer].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = lab, amount = 1},
        {type = item, name = silicon_carbide_bob, amount = 32},
        {type = item, name = neodymium_magnet, amount = 16},
        {type = item, name = datacell_empty, amount = 128}
    }
    data_lab[neural_computer].subgroup = is_moshine_building
    data_lab[neural_computer].order = b
    data_lab[neural_computer].energy_usage = 4000 .. kW

    local data_extractor = "data-extractor"
    data_item[data_extractor].subgroup = is_moshine_building
    data_item[data_extractor].order = c
    data_item[data_extractor].stack_size = 32
    data_item[data_extractor].weight = 31250
    data_recipe[data_extractor].subgroup = is_moshine_building
    data_recipe[data_extractor].order = c
    data_recipe[data_extractor].energy_required = 8
    data_recipe[data_extractor].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = combinator_constant, amount = 4},
        {type = item, name = display_panel, amount = 8},
        {type = item, name = neodymium_magnet, amount = 4}
    }
    data_mining_drill[data_extractor].subgroup = is_moshine_building
    data_mining_drill[data_extractor].order = c
    data_mining_drill[data_extractor].energy_usage = 4000 .. kW

    local optical_cable = "optical-cable"
    data_item[optical_cable].subgroup = is_moshine_building
    data_item[optical_cable].order = d
    data_item[optical_cable].stack_size = 200
    data_recipe[optical_cable].subgroup = is_moshine_building
    data_recipe[optical_cable].order = d
    data_recipe[optical_cable].energy_required = 2
    data_recipe[optical_cable].ingredients =
    {
        {type = item, name = silicon_carbide_bob, amount = 1},
        {type = item, name = glass_coil_fiber, amount = 1},
        {type = item, name = silicon_boule_mods, amount = 1}
    }
    data_pipe[optical_cable].subgroup = is_moshine_building
    data_pipe[optical_cable].order = d

    local ai_trainer = "ai-trainer"
    data_item[ai_trainer].subgroup = is_moshine_building
    data_item[ai_trainer].order = e
    data_item[ai_trainer].stack_size = 32
    data_item[ai_trainer].weight = 31250
    data_recipe[ai_trainer].subgroup = is_moshine_building
    data_recipe[ai_trainer].order = e
    data_recipe[ai_trainer].energy_required = 8
    data_recipe[ai_trainer].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = glass_bob, amount = 128},
        {type = item, name = reinforced_concrete, amount = 128},
        {type = item, name = model_unstable, amount = 1},
        {type = item, name = model_stable, amount = 8},
        {type = item, name = data_processor, amount = 1}
    }
    data_furnace[ai_trainer].subgroup = is_moshine_building
    data_furnace[ai_trainer].order = e
    data_furnace[ai_trainer].energy_usage = (480 - drain) .. kW
    data_furnace[ai_trainer].energy_source.drain = drain .. kW

    local processing_grid = "processing-grid"
    data_item[processing_grid].subgroup = is_moshine_building
    data_item[processing_grid].order = f
    data_item[processing_grid].stack_size = 32
    data_item[processing_grid].weight = 31250
    data_recipe[processing_grid].subgroup = is_moshine_building
    data_recipe[processing_grid].order = f
    data_recipe[processing_grid].energy_required = 8
    data_recipe[processing_grid].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = silicon_carbide_bob, amount = 8},
        {type = item, name = model_stable, amount = 64},
        {type = item, name = data_processor, amount = 1}
    }
    data_agricultural_tower[processing_grid].subgroup = is_moshine_building
    data_agricultural_tower[processing_grid].order = f

    local webbed_processor_tile = "webbed_processor_tile"
    data_item[webbed_processor_tile].subgroup = is_moshine_building
    data_item[webbed_processor_tile].order = g
    data_item[webbed_processor_tile].stack_size = 200
    data_recipe[webbed_processor_tile].subgroup = is_moshine_building
    data_recipe[webbed_processor_tile].order = g
    data_recipe[webbed_processor_tile].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 1},
        {type = item, name = space_platform_foundation, amount = 1},
        {type = item, name = model_stable, amount = 1},
        {type = item, name = optical_cable, amount = 1}
    }
    data_tile[webbed_processor_tile].subgroup = is_moshine_building
    data_tile[webbed_processor_tile].order = g

    bobmods.lib.recipe.update_recycling_recipe
    ({
        datacell_empty,
        _3d_data_storage,
        space_locomotive,
        space_cargo_wagon,
        space_fluid_wagon,
        space_train_battery_battery_station,
        rail_minimal,
        rail_ramp_minimal,
        big_solar_panel,
        big_accumulator,
        data_processor,
        neural_computer,
        data_extractor,
        optical_cable,
        ai_trainer,
        processing_grid,
        webbed_processor_tile
    })

    -- TECHNOLOGY
    data_technology[planet_discovery_moshine].prerequisites = {metallurgic_science_pack, electromagnetic_science_pack}
    table.insert(data_technology[planet_discovery_moshine].effects, {type = unlock_recipe, recipe = moshine_air_separation})
    table.insert(data_technology[planet_discovery_moshine].effects, {type = unlock_recipe, recipe = moshine_air_separation_2})
    table.insert(data_technology[planet_discovery_moshine].effects, {type = unlock_recipe, recipe = saphirite_from_lava_moshine})
    table.insert(data_technology[planet_discovery_moshine].effects, {type = unlock_recipe, recipe = jivolite_from_lava_moshine})
    table.insert(data_technology[planet_discovery_moshine].effects, {type = unlock_recipe, recipe = stiratite_from_lava_moshine})
    table.insert(data_technology[planet_discovery_moshine].effects, {type = unlock_recipe, recipe = crotinnium_from_lava_moshine})
    table.insert(data_technology[planet_discovery_moshine].effects, {type = unlock_recipe, recipe = rubyte_from_lava_moshine})
    table.insert(data_technology[planet_discovery_moshine].effects, {type = unlock_recipe, recipe = bobmonium_from_lava_moshine})
    table.insert(data_technology[planet_discovery_moshine].effects, {type = unlock_recipe, recipe = barite_sorting})
    table.insert(data_technology[planet_discovery_moshine].effects, {type = unlock_recipe, recipe = lead_ingot_4})
    table.insert(data_technology[planet_discovery_moshine].effects, {type = unlock_recipe, recipe = biotite_mica_sorting})
    data_technology[planet_discovery_moshine].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    data_technology["moshine-tech-glass"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    table.insert(data_technology[tech_magnet_moshine].prerequisites, tech_neodymium_smelting_1)
    table.insert(data_technology[tech_magnet_moshine].prerequisites, tech_boron_processing_2)
    data_technology[tech_magnet_moshine].effects =
    {
        {type = unlock_recipe, recipe = neodymium_iron_boron_molten},
        {type = unlock_recipe, recipe = neodymium_magnet}
    }
    data_technology[tech_magnet_moshine].research_trigger =
    {
        type = craft_item,
        item = neodymium_ingot,
        count = 256
    }

    data_technology["moshine-tech-silicon"].research_trigger =
    {
        type = craft_item,
        item = sand_angels,
        count = 256
    }

    local tech_space_train = "tech-space-trains"
    table.insert(data_technology[tech_space_train].prerequisites, fluid_wagon_3)
    data_technology[tech_space_train].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    data_technology["moshine-tech-silicon-carbide"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    data_technology["minimalist-rails"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    data_technology["minimalist-elevated-rails"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    local tech_data_processor_building = "moshine-tech-data-processor-building"
    if mods[bobmodules] then
        table.insert(data_technology[tech_data_processor_building].prerequisites, productivity_module_5)
    end
    data_technology[tech_data_processor_building].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    data_technology["big-solar-energy"].prerequisites = {"moshine-tech-ai-tier-2", tech_solar_energy_4}

    data_technology["electric-energy-big-accumulators"].prerequisites = {"moshine-tech-ai-tier-6", tech_electric_substation_4, tech_electric_energy_accumulators_4}

    data_recipe[promethium_science_pack].ingredients[1].name = promethium_ore
    data_recipe[promethium_science_pack].ingredients[1].amount = 128

    -- SPACE
    table.insert(data_technology[promethium_science_pack].effects, {type = unlock_recipe, recipe = promethium_asteroid_crushing_1})

    data_technology[tech_advanced_full_asteroid_processing].effects =
    {
        {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_1},
        {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_2},
        {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_3},
        {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_4},
        {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_5},
        {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_6},
        {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_7},
        {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_8},
        {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_9},
        {type = unlock_recipe, recipe = advanced_full_metallic_asteroid_crushing_10}
    }
    data_technology[tech_advanced_full_asteroid_productivity].effects =
    {
        {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_1, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_2, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_3, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_4, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_5, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_6, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_7, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_8, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_9, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_full_metallic_asteroid_crushing_10, change = 0.1}
    }

    -- SYNTHESIS HOLMIUM
    data_recipe[holmium_ore_recipe].ingredients =
    {
        {type = item, name = hybride_catalyst, amount = 1},
        {type = item, name = brannerite_purified, amount = 2},
        {type = item, name = monazite_purified, amount = 2}
    }

    data_technology[tech_holmium_synthesis].prerequisites = {tech_holmium_smelting_3, tech_monazite_processing_4, tech_brannerite_processing_4}
end