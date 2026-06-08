if mods [arig_mods] then
    local simulations = require("prototypes.factoriopedia-simulations")
    -- RECIPE
    local cactus_seeds = "planetaris-cactus-seeds"
    data_item[cactus_seeds].subgroup = is_arig_recipe
    data_item[cactus_seeds].order = a
    data_item[cactus_seeds].stack_size = 200

    data_capsule[cactus_arig].subgroup = is_arig_recipe
    data_capsule[cactus_arig].order = b
    data_capsule[cactus_arig].stack_size = 200

    local cactus_wood = "planetaris-cactus-wood"
    data_recipe[cactus_wood].subgroup = is_arig_recipe
    data_recipe[cactus_wood].icons = TWO_I(cactus_arig, wood, number_1)
    data_recipe[cactus_wood].order = b_b
    data_recipe[cactus_wood].ingredients[1].amount = 4
    data_recipe[cactus_wood].results =
    {
        {type = item, name = wood, amount = 2},
        {type = item, name = cactus_seeds, amount = 1, probability = 0.25}
    }

    local compression_cactus_wood = "planetaris-compression-cactus-wood"
    data_recipe[compression_cactus_wood].subgroup = is_arig_recipe
    data_recipe[compression_cactus_wood].icons = TWO_I(cactus_arig, wood, number_2)
    data_recipe[compression_cactus_wood].order = b_c
    data_recipe[compression_cactus_wood].results =
    {
        {type = item, name = wood, amount = 1},
        {type = item, name = cactus_seeds, amount = 1, probability = 0.25}
    }

    local compression_wood_coal = "planetaris-compression-wood-coal"
    data_recipe[compression_wood_coal].subgroup = is_arig_recipe
    data_recipe[compression_wood_coal].icons = TWO_I(wood, coal)
    data_recipe[compression_wood_coal].order = b_d
    data_recipe[compression_wood_coal].ingredients[1].amount = 2
    data_recipe[compression_wood_coal].surface_conditions = {{property = pressure, min = 600, max = 600}}

    local carbon_arig = "planetaris-carbon"
    data_recipe[carbon_arig].subgroup = is_arig_recipe
    data_recipe[carbon_arig].icons = TWO_I(coal, carbon_angels)
    data_recipe[carbon_arig].order = b_e
    data_recipe[carbon_arig].ingredients = {{type = item, name = coal, amount = 2}}
    data_recipe[carbon_arig].surface_conditions = {{property = pressure, min = 600, max = 600}}

    local plastic_arig = "planetaris-plastic-bar"
    data_recipe[plastic_arig].subgroup = is_arig_recipe
    data_recipe[plastic_arig].icons = THREE_I(coal, methane_angels, plastic)
    data_recipe[plastic_arig].order = b_f
    data_recipe[plastic_arig].surface_conditions = {{property = pressure, min = 600, max = 600}}

    data_fluid[sand_arig].subgroup = is_arig_recipe
    data_fluid[sand_arig].order = c

    data_fluid[pure_sand_arig].subgroup = is_arig_recipe
    data_fluid[pure_sand_arig].order = d

    local sand_sifting = "planetaris-sand-sifting"
    data_recipe[sand_sifting].subgroup = is_arig_recipe
    data_recipe[sand_sifting].icons = TWO_I(sand_arig, pure_sand_arig, number_1)
    data_recipe[sand_sifting].order = d_a
    data_recipe[sand_sifting].ingredients[1].amount = 240
    data_recipe[sand_sifting].results =
    {
        {type = item, name = ore_saphirite, amount = 2, probability = 0.25},
        {type = item, name = ore_jivolite, amount = 1, probability = 0.25},
        {type = item, name = ore_stiratite, amount = 2, probability = 0.25},
        {type = item, name = ore_crotinnium, amount = 1, probability = 0.25},
        {type = item, name = ore_rubyte, amount = 2, probability = 0.25},
        {type = item, name = ore_bobmonium, amount = 2, probability = 0.25},
        {type = item, name = stone, amount = 1, probability = 0.03125},
        {type = item, name = sulfur, amount = 1, probability = 0.015625},
        {type = fluid, name = pure_sand_arig, amount = 30, probability = 0.25},
        {type = fluid, name = steam, amount = 30, probability = 0.25, temperature = 915}
    }

    data_recipe[advanced_sand_sifting].subgroup = is_arig_recipe
    data_recipe[advanced_sand_sifting].icons = TWO_I(sand_arig, pure_sand_arig, number_2)
    data_recipe[advanced_sand_sifting].order =  d_b
    data_recipe[advanced_sand_sifting].ingredients[1].amount = 240
    data_recipe[advanced_sand_sifting].results =
    {
        {type = item, name = sand_angels, amount = 1, probability = 0.25},
        {type = item, name = limestone_angels, amount_min = 0, amount_max = 1, probability = 0.25},
        {type = item, name = calcite, amount_min = 0, amount_max = 1, probability = 0.25},
        {type = item, name = sulfur, amount = 1, probability = 0.25},
        {type = item, name = coal, amount = 1, probability = 0.125},
        {type = fluid, name = pure_sand_arig, amount = 30, probability = 0.50},
        {type = fluid, name = steam, amount = 30, probability = 0.125, temperature = 915}
    }

    local advanced_pure_sand_sifting = "planetaris-advanced-pure-sand-sifting"
    data_recipe[advanced_pure_sand_sifting].subgroup = is_arig_recipe
    data_recipe[advanced_pure_sand_sifting].icons = TWO_I(sand_arig, pure_sand_arig, number_3)
    data_recipe[advanced_pure_sand_sifting].order = d_c
    data_recipe[advanced_pure_sand_sifting].ingredients[1].amount = 240
    data_recipe[advanced_pure_sand_sifting].results[1].amount = 30

    data_item[sandstone_brick].subgroup = is_arig_recipe
    data_item[sandstone_brick].order = e
    data_item[sandstone_brick].stack_size = 200
    data_recipe[sandstone_brick].subgroup = is_arig_recipe
    data_recipe[sandstone_brick].icons = TWO_I(pure_sand_arig, sandstone_brick)
    data_recipe[sandstone_brick].order = e
    data_recipe[sandstone_brick].ingredients[1].amount = 60

    local sandstone_path = "planetaris-sandstone-path"
    data_tile[sandstone_path].subgroup = is_arig_recipe
    data_tile[sandstone_path].order = e

    local sandstone_foundation = "planetaris-sandstone-foundation"
    data_item[sandstone_foundation].subgroup = is_arig_recipe
    data_item[sandstone_foundation].order = f
    data_item[sandstone_foundation].stack_size = 200
    data_recipe[sandstone_foundation].subgroup = is_arig_recipe
    data_recipe[sandstone_foundation].order = f
    data_recipe[sandstone_foundation].ingredients =
    {
        {type = item, name = stone_brick, amount = 4},
        {type = item, name = sandstone_brick, amount = 4}
    }
    data_tile[sandstone_foundation].subgroup = is_arig_recipe
    data_tile[sandstone_foundation].order = f

    local advanced_heavy_oil_cracking = "planetaris-advanced-heavy-oil-cracking"
    data_recipe[advanced_heavy_oil_cracking].category = angels_steam_cracking
    data_recipe[advanced_heavy_oil_cracking].subgroup = is_arig_recipe
    data_recipe[advanced_heavy_oil_cracking].icons = TWO_D_I(heavy_oil_timsaba, steam, fuel_oil_angels, methane_angels)
    data_recipe[advanced_heavy_oil_cracking].order = g_a
    data_recipe[advanced_heavy_oil_cracking].energy_required = 4
    data_recipe[advanced_heavy_oil_cracking].ingredients =
    {
        {type = fluid, name = heavy_oil_timsaba, amount = 30},
        {type = fluid, name = steam, amount = 30}
    }
    data_recipe[advanced_heavy_oil_cracking].results =
    {
        {type = fluid, name = fuel_oil_angels, amount = 30},
        {type = fluid, name = methane_angels, amount = 30}
    }
    data_recipe[advanced_heavy_oil_cracking].surface_conditions = {{property = pressure, min = 600, max = 600}}

    local compression_rocket_fuel = "planetaris-compression-rocket-fuel"
    data_recipe[compression_rocket_fuel].subgroup = is_arig_recipe
    data_recipe[compression_rocket_fuel].icons = BUILDING_R_I(rocket_fuel, planet_arig)
    data_recipe[compression_rocket_fuel].order = g_b
    data_recipe[compression_rocket_fuel].surface_conditions = {{property = pressure, min = 600, max = 600}}

    data_recipe[glass_panel_arig].category = metallurgy
    data_recipe[glass_panel_arig].subgroup = is_arig_recipe
    data_recipe[glass_panel_arig].icons = TWO_I(pure_sand_arig, glass_bob)
    data_recipe[glass_panel_arig].order = h
    data_recipe[glass_panel_arig].energy_required = 4
    data_recipe[glass_panel_arig].ingredients = {{type = fluid, name = pure_sand_arig, amount = 120}}
    data_recipe[glass_panel_arig].results = {{type = item, name = glass_bob, amount = 4}}
    data_recipe[glass_panel_arig].main_product = glass_bob

    data_item[heavy_glass_arig].subgroup = is_arig_recipe
    data_item[heavy_glass_arig].order = i
    data_item[heavy_glass_arig].stack_size = 200
    data_recipe[heavy_glass_arig].category = metallurgy
    data_recipe[heavy_glass_arig].subgroup = is_arig_recipe
    data_recipe[heavy_glass_arig].icons = THREE_I(tungsten_powder, glass_molten_angels, heavy_glass_arig)
    data_recipe[heavy_glass_arig].order = i
    data_recipe[heavy_glass_arig].energy_required = 4
    data_recipe[heavy_glass_arig].ingredients =
    {
        {type = item, name = tungsten_powder, amount = 4},
        {type = fluid, name = glass_molten_angels, amount = 15}
    }

    data_item[raw_quartz_arig].localised_description = show_formula and {chemical_formula, "SiO[font=default-tiny-bold]2[/font]"} or nil
    data_item[raw_quartz_arig].subgroup = is_arig_recipe
    data_item[raw_quartz_arig].order = j
    data_item[raw_quartz_arig].stack_size = 200
    data_recipe[raw_quartz_arig].subgroup = is_arig_recipe
    data_recipe[raw_quartz_arig].icons = THREE_D_I(sandstone_brick, steam, fuel_oil_angels, raw_quartz_arig)
    data_recipe[raw_quartz_arig].order = j
    data_recipe[raw_quartz_arig].ingredients =
    {
        {type = item, name = sandstone_brick, amount = 1},
        {type = fluid, name = steam, amount = 15},
        {type = fluid, name = fuel_oil_angels, amount = 30}
    }
    data_recipe[raw_quartz_arig].surface_conditions = {{property = pressure, min = 600, max = 600}}

    if mods [hyarion_mods] then
        local advanced_raw_quartz = "planetaris-advanced-raw-quartz"
        data_recipe[advanced_raw_quartz].subgroup = is_arig_recipe
        data_recipe[advanced_raw_quartz].icons = FOUR_D_I(sandstone_brick, coal, steam, fuel_oil_angels, raw_quartz_arig)
        data_recipe[advanced_raw_quartz].order = j_a
    end

    data_recipe[raw_diamond_arig].subgroup = is_arig_recipe
    data_recipe[raw_diamond_arig].icons = THREE_D_I(raw_quartz_arig, carbon_angels, methane_angels, raw_diamond_bob, sand_angels, hydrogen_angels)
    data_recipe[raw_diamond_arig].order = j_b
    -- SiO₂ + C + CH4 --> C + SiO₂ + 2H₂
    data_recipe[raw_diamond_arig].ingredients =
    {
        {type = item, name = raw_quartz_arig, amount = 2},
        {type = item, name = carbon_angels, amount = 2},
        {type = fluid, name = methane_angels, amount = 30}
    }
    data_recipe[raw_diamond_arig].results =
    {
        {type = item, name = raw_diamond_bob, amount = 2},
        {type = item, name = sand_angels, amount = 2},
        {type = fluid, name = hydrogen_angels, amount = 60}
    }
    data_recipe[raw_diamond_arig].main_product = raw_diamond_bob
    data_recipe[raw_diamond_arig].surface_conditions = {{property = pressure, min = 600, max = 600}}

    data_item[silica_arig].localised_description = show_formula and {chemical_formula, "SiO[font=default-tiny-bold]2[/font]"} or nil
    data_item[silica_arig].subgroup = is_arig_recipe
    data_item[silica_arig].order = k
    data_item[silica_arig].stack_size = 200
    data_recipe[silica_arig].subgroup = is_arig_recipe
    data_recipe[silica_arig].icons = FOUR_THREE_R_I(raw_quartz_arig, calcite, sulfuric_acid_angels, silica_arig, steam, calcium_sulfate_angels, carbon_dioxide_angels)
    data_recipe[silica_arig].order = k
    -- SiO₂ + CaCO₃ + H₂SO₄ --> SiO₂ + CaSO₄ + H₂O + CO₂
    data_recipe[silica_arig].ingredients =
    {
        {type = item, name = raw_quartz_arig, amount = 1},
        {type = item, name = calcite, amount = 1},
        {type = fluid, name = sulfuric_acid_angels, amount = 15}
    }
    data_recipe[silica_arig].results =
    {
        {type = item, name = silica_arig, amount = 1},
        {type = item, name = calcium_sulfate_angels, amount = 1},
        {type = fluid, name = steam, amount = 15},
        {type = fluid, name = carbon_dioxide_angels, amount = 15}
    }
    data_recipe[silica_arig].main_product = silica_arig
    data_recipe[silica_arig].surface_conditions = {{property = pressure, min = 600, max = 600}}

    data_tool[compression_science_pack].subgroup = is_arig_recipe
    data_tool[compression_science_pack].order = l
    data_recipe[compression_science_pack].subgroup = is_arig_recipe
    data_recipe[compression_science_pack].order = l
    data_recipe[compression_science_pack].energy_required = 8
    data_recipe[compression_science_pack].ingredients =
    {
        {type = item, name = raw_diamond_bob, amount = 1},
        {type = item, name = glass_bob, amount = 2},
        {type = item, name = sandstone_brick, amount = 4}
    }

    local compression_landfill = "planetaris-landfill-compression"
    data_recipe[compression_landfill].subgroup = is_arig_recipe
    data_recipe[compression_landfill].icons = TWO_I(stone, landfill)
    data_recipe[compression_landfill].order = l_a
    data_recipe[compression_landfill].ingredients[1].amount = 32

    -- LOGISTICS
    local big_chest = "planetaris-big-chest"
    local active_provider_big_chest = "planetaris-active-provider-big-chest"
    local buffer_big_chest = "planetaris-buffer-big-chest"
    local passive_big_chest = "planetaris-passive-provider-big-chest"
    local requester_big_chest = "planetaris-requester-big-chest"
    local storage_big_chest = "planetaris-storage-big-chest"
    local big_chests =
    {
        {name = big_chest, order = a},
        {name = active_provider_big_chest, order = b},
        {name = buffer_big_chest, order = c},
        {name = passive_big_chest, order = d},
        {name = requester_big_chest, order = e},
        {name = storage_big_chest, order = f}
    }
    for _, BUILD in pairs(big_chests) do
        data_item[BUILD.name].subgroup = is_arig_logistics
        data_item[BUILD.name].order = BUILD.order
        data_item[BUILD.name].stack_size = 32
        data_item[BUILD.name].weight = 31250
        data_recipe[BUILD.name].subgroup = is_arig_logistics
        data_recipe[BUILD.name].order = BUILD.order
        data_recipe[BUILD.name].energy_required = 16
        if BUILD.name == big_chest then
            data_container[BUILD.name].subgroup = is_arig_logistics
            data_container[BUILD.name].order = BUILD.order
            data_container[BUILD.name].inventory_size = 200
        end
        if BUILD.name ~= big_chest then
            data_logistic_container[BUILD.name].subgroup = is_arig_logistics
            data_logistic_container[BUILD.name].order = BUILD.order
            data_logistic_container[BUILD.name].inventory_size = 200
        end
    end

    local function big_chests_recipe(name, circuit, circuit_2)
        data_recipe[name].ingredients =
        {
            {type = item, name = circuit, amount = 4},
            {type = item, name = big_chest, amount = 1}
        }
    end
    big_chests_recipe(active_provider_big_chest, advanced_circuit)
    big_chests_recipe(buffer_big_chest, advanced_circuit)
    big_chests_recipe(passive_big_chest, electronic_circuit)
    big_chests_recipe(requester_big_chest, advanced_circuit)
    big_chests_recipe(storage_big_chest, electronic_circuit)

    local arig_roboport = "planetaris-arig-roboport"
    data_item[arig_roboport].subgroup = is_arig_logistics
    data_item[arig_roboport].order = g
    data_item[arig_roboport].stack_size = 8
    data_item[arig_roboport].weight = 125000
    data_recipe[arig_roboport].subgroup = is_arig_logistics
    data_recipe[arig_roboport].order = g
    data_recipe[arig_roboport].energy_required = 4
    data_recipe[arig_roboport].ingredients =
    {
        {type = item, name = roboport_4, amount = 1},
        {type = item, name = niobium_titanium_cable, amount = 16},
        {type = item, name = niobium_iron_bearing, amount = 16},
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 16},
        {type = item, name = sandstone_brick, amount = 16},
    }
    data_roboport[arig_roboport].subgroup = is_arig_logistics
    data_roboport[arig_roboport].order = g
    data_roboport[arig_roboport].energy_source.buffer_capacity = (18000 * 100) .. kJ
    data_roboport[arig_roboport].energy_source.input_flow_limit = 18000 .. kW
    data_roboport[arig_roboport].energy_usage = (5 * 60) .. kW
    data_roboport[arig_roboport].charging_energy = 4500 .. kW
    data_roboport[arig_roboport].charging_station_count = 4
    data_roboport[arig_roboport].ogistics_radius = 16 * 4
    data_roboport[arig_roboport].construction_radius = 32 * 4
    data_roboport[arig_roboport].radar_range = 5 * 2
    data_roboport[arig_roboport].recharge_minimum = 36000 .. kJ

    data_item[hyper_transport_belt_arig].stack_size = 200
    data_recipe[hyper_transport_belt_arig].energy_required = 0.5
    data_recipe[hyper_transport_belt_arig].ingredients =
    {
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 4},
        {type = item, name = niobium_iron_bearing, amount = 4},
        {type = item, name = vulcanus_transport_belt, amount = 2},
        {type = item, name = niobium_titanium_plate, amount = 2}
    }
    data_recipe[hyper_transport_belt_arig].results[1].amount = 2
    data_transport_belt[hyper_transport_belt_arig].speed = 16/60

    data_item[hyper_underground_belt_arig].stack_size = 32
    data_item[hyper_underground_belt_arig].weight = 31250
    data_recipe[hyper_underground_belt_arig].energy_required = 1
    data_recipe[hyper_underground_belt_arig].ingredients =
    {
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 16},
        {type = item, name = niobium_iron_bearing, amount = 16},
        {type = item, name = vulcanus_underground_belt, amount = 2},
        {type = item, name = niobium_titanium_plate, amount = 8}
    }
    data_recipe[hyper_underground_belt_arig].results[1].amount = 2
    data_underground_belt[hyper_underground_belt_arig].max_distance = 64
    data_underground_belt[hyper_underground_belt_arig].speed = 16/60
    data_underground_belt[hyper_underground_belt_arig].factoriopedia_simulation = simulations.hyper_underground_belt_arig

    data_item[hyper_splitter_arig].stack_size = 16
    data_item[hyper_splitter_arig].weight = 62500
    data_recipe[hyper_splitter_arig].energy_required = 1
    data_recipe[hyper_splitter_arig].ingredients =
    {
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 8},
        {type = item, name = niobium_iron_bearing, amount = 8},
        {type = item, name = advanced_processing_unit, amount = 1},
        {type = item, name = vulcanus_splitter, amount = 1},
        {type = item, name = niobium_titanium_plate, amount = 4}
    }
    data_splitter[hyper_splitter_arig].speed = 16/60

    if mods [hyarion_mods] then
        data_item[hyper_transport_belt_arig].subgroup = is_hyarion_logistics
        data_recipe[hyper_transport_belt_arig].subgroup = is_hyarion_logistics
        data_transport_belt[hyper_transport_belt_arig].subgroup = is_hyarion_logistics

        data_item[hyper_underground_belt_arig].subgroup = is_hyarion_logistics
        data_recipe[hyper_underground_belt_arig].subgroup = is_hyarion_logistics
        data_underground_belt[hyper_underground_belt_arig].subgroup = is_hyarion_logistics

        data_item[hyper_splitter_arig].subgroup = is_hyarion_logistics
        data_recipe[hyper_splitter_arig].subgroup = is_hyarion_logistics
        data_splitter[hyper_splitter_arig].subgroup = is_hyarion_logistics
    else
        data_item[hyper_transport_belt_arig].subgroup = is_arig_logistics
        data_item[hyper_transport_belt_arig].order = h
        data_recipe[hyper_transport_belt_arig].subgroup = is_arig_logistics
        data_recipe[hyper_transport_belt_arig].order = h
        data_transport_belt[hyper_transport_belt_arig].subgroup = is_arig_logistics
        data_transport_belt[hyper_transport_belt_arig].order = h

        data_item[hyper_underground_belt_arig].subgroup = is_arig_logistics
        data_item[hyper_underground_belt_arig].order = i
        data_recipe[hyper_underground_belt_arig].subgroup = is_arig_logistics
        data_recipe[hyper_underground_belt_arig].order = i
        data_underground_belt[hyper_underground_belt_arig].subgroup = is_arig_logistics
        data_underground_belt[hyper_underground_belt_arig].order = i

        data_item[hyper_splitter_arig].subgroup = is_arig_logistics
        data_item[hyper_splitter_arig].order = j
        data_recipe[hyper_splitter_arig].subgroup = is_arig_logistics
        data_recipe[hyper_splitter_arig].order = j
        data_splitter[hyper_splitter_arig].subgroup = is_arig_logistics
        data_splitter[hyper_splitter_arig].order = j
    end

    -- POWER
    local high_support_electric_pole = "planetaris-high-support-electric-pole"
    data_item[high_support_electric_pole].subgroup = is_arig_power
    data_item[high_support_electric_pole].stack_size = 32
    data_item[high_support_electric_pole].weight = 31250
    data_recipe[high_support_electric_pole].subgroup = is_arig_power
    data_recipe[high_support_electric_pole].energy_required = 8
    data_recipe[high_support_electric_pole].ingredients =
    {
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 4},
        {type = item, name = niobium_titanium_cable, amount = 1},
        {type = item, name = raw_quartz_arig, amount = 1}
    }
    data_electric_pole[high_support_electric_pole].subgroup = is_arig_power
    data_electric_pole[high_support_electric_pole].supply_area_distance = 2.5

    local advanced_solar_panel = "planetaris-advanced-solar-panel"
    data_item[advanced_solar_panel].subgroup = is_arig_power
    data_item[advanced_solar_panel].stack_size = 32
    data_item[advanced_solar_panel].weight = 31250
    data_recipe[advanced_solar_panel].subgroup = is_arig_power
    data_recipe[advanced_solar_panel].energy_required = 16
    data_recipe[advanced_solar_panel].ingredients =
    {
        {type = item, name = solar_panel_4, amount = 1},
        {type = item, name = niobium_titanium_cable, amount = 8},
        {type = item, name = niobium_iron_plate, amount = 16},
        {type = item, name = silica_arig, amount = 8}
    }
    data_solar_panel[advanced_solar_panel].subgroup = is_arig_power
    data_solar_panel[advanced_solar_panel].production = 480 .. kW

    local supported_solar_panel = "planetaris-supported-solar-panel"
    data_item[supported_solar_panel].subgroup = is_arig_power
    data_item[supported_solar_panel].stack_size = 32
    data_item[supported_solar_panel].weight = 31250
    data_recipe[supported_solar_panel].subgroup = is_arig_power
    data_recipe[supported_solar_panel].energy_required = 16
    data_recipe[supported_solar_panel].ingredients =
    {
        {type = item, name = advanced_solar_panel, amount = 1},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = heavy_glass_arig, amount = 4}
    }
    data_solar_panel[supported_solar_panel].subgroup = is_arig_power
    data_solar_panel[supported_solar_panel].production = 480 .. kW

    -- BUILDING
    local sifter = "planetaris-sifter"
    data_item[sifter].subgroup = is_arig_building
    data_item[sifter].stack_size = 32
    data_item[sifter].weight = 31250
    data_recipe[sifter].subgroup = is_arig_building
    data_recipe[sifter].energy_required = 4
    data_recipe[sifter].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 8},
        {type = item, name = niobium_iron_bearing, amount = 8},
        {type = item, name = niobium_titanium_plate, amount = 2}
    }
    data_assembling[sifter].subgroup = is_arig_building
    data_assembling[sifter].energy_usage = (240 - drain) .. kW
    data_assembling[sifter].energy_source.drain = drain .. kW

    local press = "planetaris-press"
    data_item[press].subgroup = is_arig_building
    data_item[press].stack_size = 32
    data_item[press].weight = 31250
    data_recipe[press].subgroup = is_arig_building
    data_recipe[press].energy_required = 4
    data_recipe[press].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 32},
        {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 16},
        {type = item, name = niobium_iron_plate, amount = 16},
        {type = item, name = niobium_titanium_plate, amount = 8}
    }
    data_assembling[press].subgroup = is_arig_building
    data_assembling[press].crafting_speed = 2
    data_assembling[press].energy_usage = (360 - drain) .. kW
    data_assembling[press].energy_source.emissions_per_minute.pollution = 2
    data_assembling[press].energy_source.drain = drain .. kW
    data_assembling[press].effect_receiver.base_effect.productivity = 1

    local water_harvester = "planetaris-water-harvester"
    data_item[water_harvester].subgroup = is_arig_building
    data_item[water_harvester].stack_size = 32
    data_item[water_harvester].weight = 31250
    data_recipe[water_harvester].subgroup = is_arig_building
    data_recipe[water_harvester].energy_required = 8
    data_recipe[water_harvester].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 1},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 16},
        {type = item, name = ground_water_pump, amount = 1},
        {type = item, name = heavy_glass_arig, amount = 4}
    }
    data_assembling[water_harvester].subgroup = is_arig_building
    data_assembling[water_harvester].energy_usage = (drain - (drain / 4)) .. kW
    data_assembling[water_harvester].energy_source.emissions_per_minute.pollution = 0
    data_assembling[water_harvester].energy_source.drain = (drain / 4) .. kW

    local condensing_agricultural_tower = "condensing-agricultural-tower"
    data_item[condensing_agricultural_tower].subgroup = is_arig_building
    data_item[condensing_agricultural_tower].stack_size = 32
    data_item[condensing_agricultural_tower].weight = 31250
    data_recipe[condensing_agricultural_tower].subgroup = is_arig_building
    data_recipe[condensing_agricultural_tower].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = agricultural_tower, amount = 1},
        {type = item, name = storage_tank_4_alt, amount = 1}
    }
    data_agricultural_tower[condensing_agricultural_tower].subgroup = is_arig_building
    data_agricultural_tower[condensing_agricultural_tower].energy_usage = 120 .. kW

    data_storage_tank["hidden-" .. condensing_agricultural_tower .. "-tank"].fluid_box.volume = 96000

    bobmods.lib.recipe.update_recycling_recipe
    ({
        big_chest,
        active_provider_big_chest,
        buffer_big_chest,
        passive_big_chest,
        requester_big_chest,
        storage_big_chest,
        arig_roboport,
        hyper_transport_belt_arig,
        hyper_underground_belt_arig,
        hyper_splitter_arig,
        high_support_electric_pole,
        advanced_solar_panel,
        supported_solar_panel,
        sifter,
        press,
        water_harvester,
        condensing_agricultural_tower
    })

    -- WATER RECIPE
    local nauvis_water_harvesting = "planetaris-nauvis-water-harvesting"
    data_recipe[nauvis_water_harvesting].localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.nauvis"}}
    data_recipe[nauvis_water_harvesting].subgroup = is_arig_water
    data_recipe[nauvis_water_harvesting].icons = BUILDING_R_I(water, planet_nauvis)
    data_recipe[nauvis_water_harvesting].order = a
    data_recipe[nauvis_water_harvesting].energy_required = 16
    data_recipe[nauvis_water_harvesting].results[1].amount = 240

    local vulcanus_water_harvesting = "planetaris-vulcanus-water-harvesting"
    data_recipe[vulcanus_water_harvesting].localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.vulcanus"}}
    data_recipe[vulcanus_water_harvesting].subgroup = is_arig_water
    data_recipe[vulcanus_water_harvesting].icons = BUILDING_R_I(water, planet_vulcanus)
    data_recipe[vulcanus_water_harvesting].order = a_a
    data_recipe[vulcanus_water_harvesting].energy_required = 16
    data_recipe[vulcanus_water_harvesting].results[1].amount = 15

    local gleba_water_harvesting = "planetaris-gleba-water-harvesting"
    data_recipe[gleba_water_harvesting].localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.gleba"}}
    data_recipe[gleba_water_harvesting].subgroup = is_arig_water
    data_recipe[gleba_water_harvesting].icons = BUILDING_R_I(water, planet_gleba)
    data_recipe[gleba_water_harvesting].order = a_b
    data_recipe[gleba_water_harvesting].energy_required = 16
    data_recipe[gleba_water_harvesting].results[1].amount = 480

    local fulgora_water_harvesting = "planetaris-fulgora-water-harvesting"
    data_recipe[fulgora_water_harvesting].localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.fulgora"}}
    data_recipe[fulgora_water_harvesting].subgroup = is_arig_water
    data_recipe[fulgora_water_harvesting].icons = BUILDING_R_I(water, planet_fulgora)
    data_recipe[fulgora_water_harvesting].order = a_c
    data_recipe[fulgora_water_harvesting].energy_required = 16
    data_recipe[fulgora_water_harvesting].results[1].amount = 120

    local aquilo_water_harvesting = "planetaris-aquilo-water-harvesting"
    data_recipe[aquilo_water_harvesting].localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.aquilo"}}
    data_recipe[aquilo_water_harvesting].subgroup = is_arig_water
    data_recipe[aquilo_water_harvesting].icons = BUILDING_R_I(water, planet_aquilo)
    data_recipe[aquilo_water_harvesting].order = a_d
    data_recipe[aquilo_water_harvesting].energy_required = 16
    data_recipe[aquilo_water_harvesting].results[1].amount = 120

    -- a_e moshine_water_harvesting

    local arig_water_harvesting = "planetaris-water-harvesting"
    data_recipe[arig_water_harvesting].localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.arig"}}
    data_recipe[arig_water_harvesting].subgroup = is_arig_water
    data_recipe[arig_water_harvesting].icons = BUILDING_R_I(water, planet_arig)
    data_recipe[arig_water_harvesting].order = a_f
    data_recipe[arig_water_harvesting].energy_required = 16
    data_recipe[arig_water_harvesting].results[1].amount = 30

    local hyarion_water_harvesting = "planetaris-hyarion-water-harvesting"
    if mods [hyarion_mods] then
        data_recipe[hyarion_water_harvesting].localised_name = {"recipe-name.planetaris-water-harvesting", {"space-location-name.hyarion"}}
        data_recipe[hyarion_water_harvesting].subgroup = is_arig_water
        data_recipe[hyarion_water_harvesting].icons = BUILDING_R_I(water, planet_hyarion)
        data_recipe[hyarion_water_harvesting].order = a_g
        data_recipe[hyarion_water_harvesting].energy_required = 16
        data_recipe[hyarion_water_harvesting].results[1].amount = 30
    end

    -- b_a panglia_water_harvesting

    -- TECHNOLOGY
    local planet_discovery_arig = "planet-discovery-arig"
    data_technology[planet_discovery_arig].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1}
    }

    data_technology[sand_sifting].effects =
    {
        {type = unlock_recipe, recipe = sifter},
        {type = unlock_recipe, recipe = sand_sifting}
    }

    data_technology["planetaris-compression"].effects =
    {
        {type = unlock_recipe, recipe = press},
        {type = unlock_recipe, recipe = compression_cactus_wood},
        {type = unlock_recipe, recipe = compression_wood_coal},
        {type = unlock_recipe, recipe = carbon_arig},
        {type = unlock_recipe, recipe = plastic_arig},
        {type = unlock_recipe, recipe = sandstone_brick},
        {type = unlock_recipe, recipe = compression_rocket_fuel},
        {type = unlock_recipe, recipe = raw_quartz_arig},
        {type = unlock_recipe, recipe = compression_landfill}
    }

    tech_compression_science = "planetaris-compression-science"

    table.insert(data_technology[arig_roboport].prerequisites, "bob-robo-modular-4")
    data_technology[arig_roboport].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }
    if mods [bobtech] then
        table.insert(data_technology[arig_roboport].unit.ingredients, {transport_science_pack, 1})
    end

    table.insert(data_technology[hyper_transport_belt_arig].prerequisites, vulcanus_transport_belt)
    data_technology[hyper_transport_belt_arig].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }
    if mods [bobtech] then
        table.insert(data_technology[hyper_transport_belt_arig].unit.ingredients, {transport_science_pack, 1})
    end

    data_technology[advanced_sand_sifting].icons = TIMSABA.functions.create_gas_tech_icon("SaSaSa")
    data_technology[advanced_sand_sifting].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }

    data_technology[sandstone_foundation].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }

    data_technology[heavy_glass_arig].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }

    data_technology[silica_arig .. _processing].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }

    data_technology[heavy_glass_arig .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }

    data_technology[arig_water_harvesting].effects =
    {
        {type = unlock_recipe, recipe = water_harvester},
        {type = unlock_recipe, recipe = nauvis_water_harvesting},
        {type = unlock_recipe, recipe = vulcanus_water_harvesting},
        {type = unlock_recipe, recipe = gleba_water_harvesting},
        {type = unlock_recipe, recipe = fulgora_water_harvesting},
        {type = unlock_recipe, recipe = aquilo_water_harvesting}
    }
    if mods [moshine_mods] then
        table.insert(data_technology[arig_water_harvesting].effects, {type = unlock_recipe, recipe = moshine_water_harvesting})
    end
    table.insert(data_technology[arig_water_harvesting].effects, {type = unlock_recipe, recipe = arig_water_harvesting})
    if mods [hyarion_mods] then
        table.insert(data_technology[arig_water_harvesting].effects, {type = unlock_recipe, recipe = hyarion_water_harvesting})
    end
    if mods [panglia_mods] then
        table.insert(data_technology[arig_water_harvesting].effects, {type = unlock_recipe, recipe = panglia_water_harvesting})
    end
    data_technology[arig_water_harvesting].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }

    data_technology[big_chest].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }

    data_technology[advanced_solar_panel].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }

    data_technology[raw_quartz_arig .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }

    data_technology[supported_solar_panel].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {compression_science_pack, 1}
    }

    table.insert(data_technology[stack_inserter].prerequisites, hyper_transport_belt_arig)
end