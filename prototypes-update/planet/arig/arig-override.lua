-- [font=default-tiny-bold][/font]

if mods [arig_mods] then
    local big_chest = "planetaris-big-chest"
    data_item[big_chest].subgroup = is_arig_logistics
    data_item[big_chest].order = a
    data_item[big_chest].stack_size = 32
    data_item[big_chest].weight = 31250
    data_recipe[big_chest].subgroup = is_arig_logistics
    data_recipe[big_chest].order = a
    data_container[big_chest].subgroup = is_arig_logistics
    data_container[big_chest].order = a

    local active_provider_big_chest = "planetaris-active-provider-big-chest"
    data_item[active_provider_big_chest].subgroup = is_arig_logistics
    data_item[active_provider_big_chest].order = b
    data_item[active_provider_big_chest].stack_size = 32
    data_item[active_provider_big_chest].weight = 31250
    data_recipe[active_provider_big_chest].subgroup = is_arig_logistics
    data_recipe[active_provider_big_chest].order = b
    data_logistic_container[active_provider_big_chest].subgroup = is_arig_logistics
    data_logistic_container[active_provider_big_chest].order = b

    local buffer_big_chest = "planetaris-buffer-big-chest"
    data_item[buffer_big_chest].subgroup = is_arig_logistics
    data_item[buffer_big_chest].order = c
    data_item[buffer_big_chest].stack_size = 32
    data_item[buffer_big_chest].weight = 31250
    data_recipe[buffer_big_chest].subgroup = is_arig_logistics
    data_recipe[buffer_big_chest].order = c
    data_logistic_container[buffer_big_chest].subgroup = is_arig_logistics
    data_logistic_container[buffer_big_chest].order = c

    local passive_big_chest = "planetaris-passive-provider-big-chest"
    data_item[passive_big_chest].subgroup = is_arig_logistics
    data_item[passive_big_chest].order = d
    data_item[passive_big_chest].stack_size = 32
    data_item[passive_big_chest].weight = 31250
    data_recipe[passive_big_chest].subgroup = is_arig_logistics
    data_recipe[passive_big_chest].order = d
    data_logistic_container[passive_big_chest].subgroup = is_arig_logistics
    data_logistic_container[passive_big_chest].order = d

    local requester_big_chest = "planetaris-requester-big-chest"
    data_item[requester_big_chest].subgroup = is_arig_logistics
    data_item[requester_big_chest].order = e
    data_item[requester_big_chest].stack_size = 32
    data_item[requester_big_chest].weight = 31250
    data_recipe[requester_big_chest].subgroup = is_arig_logistics
    data_recipe[requester_big_chest].order = e
    data_logistic_container[requester_big_chest].subgroup = is_arig_logistics
    data_logistic_container[requester_big_chest].order = e

    local storage_big_chest = "planetaris-storage-big-chest"
    data_item[storage_big_chest].subgroup = is_arig_logistics
    data_item[storage_big_chest].order = f
    data_item[storage_big_chest].stack_size = 32
    data_item[storage_big_chest].weight = 31250
    data_recipe[storage_big_chest].subgroup = is_arig_logistics
    data_recipe[storage_big_chest].order = f
    data_logistic_container[storage_big_chest].subgroup = is_arig_logistics
    data_logistic_container[storage_big_chest].order = f

    local arig_roboport = "planetaris-arig-roboport"
    data_item[arig_roboport].subgroup = is_arig_logistics
    data_item[arig_roboport].order = g
    data_recipe[arig_roboport].subgroup = is_arig_logistics
    data_recipe[arig_roboport].order = g
    data_roboport[arig_roboport].subgroup = is_arig_logistics
    data_roboport[arig_roboport].order = g

    data_item[hyper_transport_belt_arig].stack_size = 200
    data_item[hyper_transport_belt_arig].weight = 5000
    data_recipe[hyper_transport_belt_arig].energy_required = 1

    data_item[hyper_underground_belt_arig].stack_size = 32
    data_item[hyper_underground_belt_arig].weight = 31250
    data_recipe[hyper_underground_belt_arig].energy_required = 1
    data_underground_belt[hyper_underground_belt_arig].max_distance = 40

    data_item[hyper_splitter_arig].stack_size = 16
    data_item[hyper_splitter_arig].weight = 62500
    data_recipe[hyper_splitter_arig].energy_required = 1

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

    local sifter = "planetaris-sifter"
    data_item[sifter].subgroup = is_arig_building
    data_item[sifter].stack_size = 32
    data_item[sifter].weight = 31250
    data_recipe[sifter].subgroup = is_arig_building
    data_assembling[sifter].subgroup = is_arig_building

    local press = "planetaris-press"
    data_item[press].subgroup = is_arig_building
    data_item[press].stack_size = 32
    data_item[press].weight = 31250
    data_recipe[press].subgroup = is_arig_building
    data_assembling[press].subgroup = is_arig_building
    data_assembling[press].effect_receiver = {base_effect = {productivity = 1}}

    local condensing_agricultural_tower = "condensing-agricultural-tower"
    data_item[condensing_agricultural_tower].subgroup = is_arig_building
    data_item[condensing_agricultural_tower].stack_size = 32
    data_item[condensing_agricultural_tower].weight = 31250
    data_recipe[condensing_agricultural_tower].subgroup = is_arig_building
    data_agricultural_tower[condensing_agricultural_tower].subgroup = is_arig_building

    local water_harvester = "planetaris-water-harvester"
    data_item[water_harvester].subgroup = is_arig_building
    data_item[water_harvester].stack_size = 32
    data_item[water_harvester].weight = 31250
    data_recipe[water_harvester].subgroup = is_arig_building
    data_assembling[water_harvester].subgroup = is_arig_building

    local high_support_electric_pole = "planetaris-high-support-electric-pole"
    data_item[high_support_electric_pole].subgroup = is_arig_building
    data_item[high_support_electric_pole].stack_size = 32
    data_item[high_support_electric_pole].weight = 31250
    data_recipe[high_support_electric_pole].subgroup = is_arig_building
    data_electric_pole[high_support_electric_pole].subgroup = is_arig_building

    local advanced_solar_panel = "planetaris-advanced-solar-panel"
    data_item[advanced_solar_panel].subgroup = is_arig_building
    data_item[advanced_solar_panel].stack_size = 32
    data_item[advanced_solar_panel].weight = 31250
    data_recipe[advanced_solar_panel].subgroup = is_arig_building
    data_solar_panel[advanced_solar_panel].subgroup = is_arig_building

    local supported_solar_panel = "planetaris-supported-solar-panel"
    data_item[supported_solar_panel].subgroup = is_arig_building
    data_item[supported_solar_panel].stack_size = 32
    data_item[supported_solar_panel].weight = 31250
    data_recipe[supported_solar_panel].subgroup = is_arig_building
    data_solar_panel[supported_solar_panel].subgroup = is_arig_building

    local cactus_seeds = "planetaris-cactus-seeds"
    data_item[cactus_seeds].subgroup = is_arig_recipe
    data_item[cactus_seeds].order = a
    data_item[cactus_seeds].stack_size = 200
    data_item[cactus_seeds].weight = 5000

    data_capsule[cactus_arig].subgroup = is_arig_recipe
    data_capsule[cactus_arig].order = b
    data_capsule[cactus_arig].stack_size = 200
    data_capsule[cactus_arig].weight = 5000

    local cactus_wood = "planetaris-cactus-wood"
    data_recipe[cactus_wood].subgroup = is_arig_recipe
    data_recipe[cactus_wood].icons = TWO_D_I(cactus_arig, nil, wood, cactus_seeds, number_1)
    data_recipe[cactus_wood].order = b_b

    local compression_cactus_wood = "planetaris-compression-cactus-wood"
    data_recipe[compression_cactus_wood].subgroup = is_arig_recipe
    data_recipe[compression_cactus_wood].icons = TWO_D_I(cactus_arig, nil, wood, cactus_seeds, number_2)
    data_recipe[compression_cactus_wood].order = b_c

    local compression_wood_coal = "planetaris-compression-wood-coal"
    data_recipe[compression_wood_coal].subgroup = is_arig_recipe
    data_recipe[compression_wood_coal].icons = TWO_I(wood, coal)
    data_recipe[compression_wood_coal].order = b_d

    local planetaris_carbon = "planetaris-carbon"
    data_recipe[planetaris_carbon].subgroup = is_arig_recipe
    data_recipe[planetaris_carbon].icons = THREE_I(coal, sulfuric_acid_angels, carbon_angels)
    data_recipe[planetaris_carbon].order = b_e

    local planetaris_plastic = "planetaris-plastic-bar"
    data_recipe[planetaris_plastic].subgroup = is_arig_recipe
    data_recipe[planetaris_plastic].icons = THREE_I(coal, methane_angels, plastic)
    data_recipe[planetaris_plastic].order = b_f

    data_fluid[sand_arig].subgroup = is_arig_recipe
    data_fluid[sand_arig].order = c

    data_fluid[pure_sand_arig].subgroup = is_arig_recipe
    data_fluid[pure_sand_arig].order = d

    local sand_sifting = "planetaris-sand-sifting"
    data_recipe[sand_sifting].subgroup = is_arig_recipe
    data_recipe[sand_sifting].icons = TWO_I(sand_arig, pure_sand_arig, number_1)
    data_recipe[sand_sifting].order = d_a

    local advanced_sand_sifting = "planetaris-advanced-sand-sifting"
    data_recipe[advanced_sand_sifting].subgroup = is_arig_recipe
    data_recipe[advanced_sand_sifting].icons = TWO_I(sand_arig, pure_sand_arig, number_2)
    data_recipe[advanced_sand_sifting].order =  d_b

    local advanced_pure_sand_sifting = "planetaris-advanced-pure-sand-sifting"
    data_recipe[advanced_pure_sand_sifting].subgroup = is_arig_recipe
    data_recipe[advanced_pure_sand_sifting].icons = TWO_I(sand_arig, pure_sand_arig, number_3)
    data_recipe[advanced_pure_sand_sifting].order = d_c

    data_item[sandstone_brick].subgroup = is_arig_recipe
    data_item[sandstone_brick].order = e
    data_item[sandstone_brick].stack_size = 200
    data_item[sandstone_brick].weight = 5000
    data_recipe[sandstone_brick].subgroup = is_arig_recipe
    data_recipe[sandstone_brick].icons = TWO_I(pure_sand_arig, sandstone_brick)
    data_recipe[sandstone_brick].order = e

    local sandstone_path = "planetaris-sandstone-path"
    data_tile[sandstone_path].subgroup = is_arig_recipe
    data_tile[sandstone_path].order = e

    local sandstone_foundation = "planetaris-sandstone-foundation"
    data_item[sandstone_foundation].subgroup = is_arig_recipe
    data_item[sandstone_foundation].order = f
    data_item[sandstone_foundation].stack_size = 200
    data_item[sandstone_foundation].weight = 5000
    data_recipe[sandstone_foundation].subgroup = is_arig_recipe
    data_recipe[sandstone_foundation].icons = THREE_D_I(sandstone_brick, stone_brick, steel_plate, sandstone_foundation)
    data_recipe[sandstone_foundation].order = f
    data_tile[sandstone_foundation].subgroup = is_arig_recipe
    data_tile[sandstone_foundation].order = f

    local steam_venting = "planetaris-steam-venting"
    data_recipe[steam_venting].subgroup = is_arig_recipe
    data_recipe[steam_venting].icons = nil
    data_recipe[steam_venting].icon = data_fluid[steam].icon
    data_recipe[steam_venting].order = f_a

    local advanced_heavy_oil_cracking = "planetaris-advanced-heavy-oil-cracking"
    data_recipe[advanced_heavy_oil_cracking].subgroup = is_arig_recipe
    data_recipe[advanced_heavy_oil_cracking].icons = CORNER_I(water, nil, naphtha_angels, fuel_oil_angels, methane_angels)
    data_recipe[advanced_heavy_oil_cracking].order = f_b

    local solid_fuel_from_heavy_oil = "planetaris-solid-fuel-from-heavy-oil"
    data_recipe[solid_fuel_from_heavy_oil].subgroup = is_arig_recipe
    data_recipe[solid_fuel_from_heavy_oil].icons = TWO_I(naphtha_angels, solid_fuel)
    data_recipe[solid_fuel_from_heavy_oil].order = f_c

    local solid_fuel_from_light_oil = "planetaris-solid-fuel-from-light-oil"
    data_recipe[solid_fuel_from_light_oil].subgroup = is_arig_recipe
    data_recipe[solid_fuel_from_light_oil].icons = TWO_I(fuel_oil_angels, solid_fuel)
    data_recipe[solid_fuel_from_light_oil].order = f_d

    local solid_fuel_from_petroleum_gas = "planetaris-solid-fuel-from-petroleum-gas"
    data_recipe[solid_fuel_from_petroleum_gas].subgroup = is_arig_recipe
    data_recipe[solid_fuel_from_petroleum_gas].icons = TWO_I(methane_angels, solid_fuel)
    data_recipe[solid_fuel_from_petroleum_gas].order = f_e

    local planetaris_sulfur = "planetaris-sulfur"
    data_recipe[planetaris_sulfur].subgroup = is_arig_recipe
    data_recipe[planetaris_sulfur].icons = THREE_I(water, methane_angels, sulfur)
    data_recipe[planetaris_sulfur].order = f_f

    local compression_rocket_fuel = "planetaris-compression-rocket-fuel"
    data_recipe[compression_rocket_fuel].subgroup = is_arig_recipe
    data_recipe[compression_rocket_fuel].icons = THREE_D_I(solid_fuel, coal, sulfur, rocket_fuel)
    data_recipe[compression_rocket_fuel].order = f_g

    data_recipe[glass_panel_arig].subgroup = is_arig_recipe
    data_recipe[glass_panel_arig].icons = TWO_I(pure_sand_arig, glass_bob)
    data_recipe[glass_panel_arig].order = g
    data_recipe[glass_panel_arig].ingredients = {{type = fluid, name = pure_sand_arig, amount = 100}}
    data_recipe[glass_panel_arig].results = {{type = item, name = glass_bob, amount = 5}}
    data_recipe[glass_panel_arig].main_product = glass_bob

    data_item[heavy_glass_arig].subgroup = is_arig_recipe
    data_item[heavy_glass_arig].order = h
    data_item[heavy_glass_arig].stack_size = 200
    data_item[heavy_glass_arig].weight = 5000
    data_recipe[heavy_glass_arig].subgroup = is_arig_recipe
    data_recipe[heavy_glass_arig].icons = THREE_I(glass_bob, tungsten_plate_bob, heavy_glass_arig)
    data_recipe[heavy_glass_arig].order = h

    data_item[raw_quartz_arig].subgroup = is_arig_recipe
    data_item[raw_quartz_arig].order = i
    data_item[raw_quartz_arig].stack_size = 200
    data_item[raw_quartz_arig].weight = 5000
    data_recipe[raw_quartz_arig].subgroup = is_arig_recipe
    data_recipe[raw_quartz_arig].icons = THREE_D_I(sandstone_brick, steam, fuel_oil_angels, raw_quartz_arig)
    data_recipe[raw_quartz_arig].order = i

    if mods [hyarion_mods] then
        local planetaris_advanced_raw_quartz = "planetaris-advanced-raw-quartz"
        data_recipe[planetaris_advanced_raw_quartz].subgroup = is_arig_recipe
        data_recipe[planetaris_advanced_raw_quartz].icons = FOUR_D_I(sandstone_brick, coal, steam, fuel_oil_angels, raw_quartz_arig)
        data_recipe[planetaris_advanced_raw_quartz].order = i_a
    end

    data_recipe[raw_diamond_arig].subgroup = is_arig_recipe
    data_recipe[raw_diamond_arig].icons = THREE_D_I(raw_quartz_arig, carbon_angels, methane_angels, raw_diamond_bob)
    data_recipe[raw_diamond_arig].order = i_b

    data_item[silica_arig].subgroup = is_arig_recipe
    data_item[silica_arig].order = j
    data_item[silica_arig].stack_size = 200
    data_item[silica_arig].weight = 5000
    data_recipe[silica_arig].subgroup = is_arig_recipe
    data_recipe[silica_arig].icons = THREE_D_I(raw_quartz_arig, calcite, sulfuric_acid_angels, silica_arig)
    data_recipe[silica_arig].order = j

    local compression_science_pack = "planetaris-compression-science-pack"
    data_tool[compression_science_pack].subgroup = is_arig_recipe
    data_tool[compression_science_pack].order = k
    data_recipe[compression_science_pack].subgroup = is_arig_recipe
    data_recipe[compression_science_pack].order = k

    local landfill_compression = "planetaris-landfill-compression"
    data_recipe[landfill_compression].subgroup = is_arig_recipe
    data_recipe[landfill_compression].icons = BUILDING_R_I(stone, landfill)
    data_recipe[landfill_compression].order = k_a

    local water_harvesting = "planetaris-water-harvesting"
    data_recipe[water_harvesting].subgroup = is_arig_water
    data_recipe[water_harvesting].icons = BUILDING_R_I(water, planet_arig)
    data_recipe[water_harvesting].order = a

    local nauvis_water_harvesting = "planetaris-nauvis-water-harvesting"
    data_recipe[nauvis_water_harvesting].subgroup = is_arig_water
    data_recipe[nauvis_water_harvesting].icons = BUILDING_R_I(water, planet_nauvis)
    data_recipe[nauvis_water_harvesting].order = a_a

    local vulcanus_water_harvesting = "planetaris-vulcanus-water-harvesting"
    data_recipe[vulcanus_water_harvesting].subgroup = is_arig_water
    data_recipe[vulcanus_water_harvesting].icons = BUILDING_R_I(water, planet_vulcanus)
    data_recipe[vulcanus_water_harvesting].order = a_b

    local gleba_water_harvesting = "planetaris-gleba-water-harvesting"
    data_recipe[gleba_water_harvesting].subgroup = is_arig_water
    data_recipe[gleba_water_harvesting].icons = BUILDING_R_I(water, planet_gleba)
    data_recipe[gleba_water_harvesting].order = a_c

    local fulgora_water_harvesting = "planetaris-fulgora-water-harvesting"
    data_recipe[fulgora_water_harvesting].subgroup = is_arig_water
    data_recipe[fulgora_water_harvesting].icons = BUILDING_R_I(water, planet_fulgora)
    data_recipe[fulgora_water_harvesting].order = a_d

    local aquilo_water_harvesting = "planetaris-aquilo-water-harvesting"
    data_recipe[aquilo_water_harvesting].subgroup = is_arig_water
    data_recipe[aquilo_water_harvesting].icons = BUILDING_R_I(water, planet_aquilo)
    data_recipe[aquilo_water_harvesting].order = a_e

    if mods [hyarion_mods] then
        local hyarion_water_harvesting = "planetaris-hyarion-water-harvesting"
        data_recipe[hyarion_water_harvesting].subgroup = is_arig_water
        data_recipe[hyarion_water_harvesting].icons = BUILDING_R_I(water, planet_hyarion)
        data_recipe[hyarion_water_harvesting].order = a_f
    end

    data_technology[advanced_sand_sifting].icons =
    {
        {
            icon = data_fluid[sand_arig].icon,
            icon_size = data_fluid[sand_arig].icon_size,
            shift = {-16,-16},
            scale = 1
        },
        {
            icon = data_fluid[pure_sand_arig].icon,
            icon_size = data_fluid[pure_sand_arig].icon_size,
            shift = {16,16},
            scale = 1
        }
    }
end