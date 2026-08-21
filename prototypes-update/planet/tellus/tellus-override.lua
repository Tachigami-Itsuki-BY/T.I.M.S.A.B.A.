if mods[tellus_mods] then
    -- CHLOROPLAST
    data_capsule[chloroplast_fruit].subgroup = is_chloroplast
    data_capsule[chloroplast_fruit].order = a
    data_capsule[chloroplast_fruit].stack_size = 200
    data_capsule[chloroplast_fruit].fuel_category = base_fuel
    data_capsule[chloroplast_fruit].fuel_value = 1800 .. kJ
    TIMSABA.void.void_organics(chloroplast_fruit)
    TIMSABA.void.freezing_organics(chloroplast_fruit)

    local chloroplast_seed = "planetaris-chloroplast-seed"
    data_item[chloroplast_seed].subgroup = is_chloroplast
    data_item[chloroplast_seed].order = b
    data_item[chloroplast_seed].stack_size = 200
    data_item[chloroplast_seed].fuel_category = base_fuel
    data_item[chloroplast_seed].fuel_value = 3600 .. kJ

    data_capsule[chloroplast_mash].subgroup = is_chloroplast
    data_capsule[chloroplast_mash].order = c
    data_capsule[chloroplast_mash].stack_size = 200
    data_capsule[chloroplast_mash].fuel_category = base_fuel
    data_capsule[chloroplast_mash].fuel_value = 900 .. kJ
    TIMSABA.void.void_organics(chloroplast_mash)
    TIMSABA.void.freezing_organics(chloroplast_mash)

    local chloroplast_processing = "planetaris-chloroplast-processing"
    data_recipe[chloroplast_processing].subgroup = is_chloroplast
    data_recipe[chloroplast_processing].icons = TWO_D_I(chloroplast_fruit, nutrients, chloroplast_mash, chloroplast_seed)
    data_recipe[chloroplast_processing].order = c_a
    data_recipe[chloroplast_processing].results =
    {
        {type = item, name = chloroplast_mash, amount = 2},
        {type = item, name = chloroplast_seed, amount = 1, probability = 0.03125}
    }

    local chloroplast_lubricant = "planetaris-chloroplast-lubricant"
    data_recipe[chloroplast_lubricant].subgroup = is_chloroplast
    data_recipe[chloroplast_lubricant].icons = THREE_I(chloroplast_mash, nutrients, lubricant)
    data_recipe[chloroplast_lubricant].order = c_b
    data_recipe[chloroplast_lubricant].ingredients =
    {
        {type = item, name = chloroplast_mash, amount = 64},
        {type = item, name = nutrients, amount = 1}
    }
    data_recipe[chloroplast_lubricant].results[1].amount = 30

    local nutrients_from_chloroplast_mash = "planetaris-nutrients-from-chloroplast-mash"
    data_recipe[nutrients_from_chloroplast_mash].subgroup = is_chloroplast
    data_recipe[nutrients_from_chloroplast_mash].icons = TWO_I(chloroplast_mash, nutrients)
    data_recipe[nutrients_from_chloroplast_mash].order = c_c

    local artificial_chlorophyll_soil = "planetaris-artificial-chlorophyll-soil"
    data_item[artificial_chlorophyll_soil].subgroup = is_chloroplast
    data_item[artificial_chlorophyll_soil].order = d
    data_item[artificial_chlorophyll_soil].stack_size = 200
    data_recipe[artificial_chlorophyll_soil].subgroup = is_chloroplast
    data_recipe[artificial_chlorophyll_soil].order = d
    data_recipe[artificial_chlorophyll_soil].ingredients =
    {
        {type = item, name = landfill, amount = 4},
        {type = item, name = nutrients, amount = 1},
        {type = item, name = chloroplast_seed, amount = 2},
        {type = fluid, name = seed_compound, amount = 30}
    }

    local overgrowth_chlorophyll_soil = "planetaris-overgrowth-chlorophyll-soil"
    data_item[overgrowth_chlorophyll_soil].subgroup = is_chloroplast
    data_item[overgrowth_chlorophyll_soil].order = e
    data_item[overgrowth_chlorophyll_soil].stack_size = 200
    data_recipe[overgrowth_chlorophyll_soil].subgroup = is_chloroplast
    data_recipe[overgrowth_chlorophyll_soil].order = e
    data_recipe[overgrowth_chlorophyll_soil].ingredients =
    {
        {type = item, name = artificial_chlorophyll_soil, amount = 2},
        {type = item, name = nutrients, amount = 1},
        {type = item, name = chloroplast_seed, amount = 4},
        {type = item, name = magnesium_dust, amount = 64},
        {type = item, name = wasp_egg, amount = 8},
        {type = fluid, name = chlorophyll, amount = 120}
    }

    local rocket_fuel_from_chloroplast_mash = "planetaris-rocket-fuel-from-mash"
    data_recipe[rocket_fuel_from_chloroplast_mash].subgroup = is_chloroplast
    data_recipe[rocket_fuel_from_chloroplast_mash].icons = BUILDING_R_I(rocket_fuel, planet_tellus)
    data_recipe[rocket_fuel_from_chloroplast_mash].order = f_a
    data_recipe[rocket_fuel_from_chloroplast_mash].ingredients =
    {
        {type = item, name = nutrients, amount = 1},
        {type = item, name = bioflux, amount = 2},
        {type = item, name = chloroplast_mash, amount = 32},
        {type = fluid, name = water, amount = 30}
    }
    data_recipe[rocket_fuel_from_chloroplast_mash].surface_conditions = data_recipe[chloroplast_processing].surface_conditions

    data_fluid[seed_compound].subgroup = is_chloroplast
    data_fluid[seed_compound].order = g
    TIMSABA.barreling.add_simple_fluid(seed_compound)
    data_recipe[seed_compound].subgroup = is_chloroplast
    data_recipe[seed_compound].icons = FOUR_D_I(chloroplast_mash, compost_angels, water, nutrients, seed_compound)
    data_recipe[seed_compound].order = g
    data_recipe[seed_compound].ingredients =
    {
        {type = item, name = chloroplast_mash, amount = 4},
        {type = item, name = compost_angels, amount = 2},
        {type = item, name = nutrients, amount = 2},
        {type = fluid, name = water, amount = 15}
    }
    data_recipe[seed_compound].results[1].amount = 30

    data_fluid[chlorophyll].subgroup = is_chloroplast
    data_fluid[chlorophyll].order = h
    TIMSABA.barreling.add_simple_fluid(chlorophyll)

    local chlorophyll_mashing = "planetaris-chlorophyll-mashing"
    data_recipe[chlorophyll_mashing].subgroup = is_chloroplast
    data_recipe[chlorophyll_mashing].icons = TWO_D_I(chloroplast_fruit, nil, chlorophyll, chloroplast_seed)
    data_recipe[chlorophyll_mashing].order = h_a
    data_recipe[chlorophyll_mashing].results =
    {
        {type = fluid, name = chlorophyll, amount = 30},
        {type = item, name = chloroplast_seed, amount = 1, probability = 0.03125}
    }

    -- MAGNESIUM
    data_item[wasp_egg].subgroup = is_tellus_magnesium
    data_item[wasp_egg].order = a
    data_item[wasp_egg].stack_size = 200
    TIMSABA.void.freezing_organics(wasp_egg)
    data_recipe[wasp_egg].subgroup = is_tellus_magnesium
    data_recipe[wasp_egg].icons = STONKS_I(stonks_png, wasp_egg)
    data_recipe[wasp_egg].order = a
    data_recipe[wasp_egg].energy_required = 16
    data_recipe[wasp_egg].ingredients =
    {
        {type = item, name = wasp_egg, amount = 1},
        {type = item, name = nutrients, amount = 32},
        {type = fluid, name = water, amount = 60}
    }

    data_item[magnesium_bacteria].subgroup = is_tellus_magnesium
    data_item[magnesium_bacteria].order = b
    data_item[magnesium_bacteria].spoil_result = magnesium_ore
    TIMSABA.void.freezing_organics(magnesium_bacteria)

    local magnesium_bacteria_cultivation = "planetaris-magnesium-bacteria-cultivation"
    data_recipe[magnesium_bacteria_cultivation].subgroup = is_tellus_magnesium
    data_recipe[magnesium_bacteria_cultivation].icons = STONKS_I(stonks_png, magnesium_bacteria)
    data_recipe[magnesium_bacteria_cultivation].order = b_a
    data_recipe[magnesium_bacteria_cultivation].ingredients =
    {
        {type = item, name = nutrients, amount = 2},
        {type = item, name = magnesium_bacteria, amount = 2}
    }

    local magnesium_saphirite_bacteria = "planetaris-magnesium-iron-bacteria"
    data_recipe[magnesium_saphirite_bacteria].subgroup = is_tellus_magnesium
    data_recipe[magnesium_saphirite_bacteria].icons = TWO_D_I(chloroplast_mash, nutrients, magnesium_bacteria, saphirite_bacteria)
    data_recipe[magnesium_saphirite_bacteria].order = b_b
    data_recipe[magnesium_saphirite_bacteria].ingredients =
    {
        {type = item, name = chloroplast_mash, amount = 4},
        {type = item, name = nutrients, amount = 1}
    }

    data_item[magnesium_dust].localised_description = show_formula and {chemical_formula, "Mg"} or nil
    data_item[magnesium_dust].subgroup = is_tellus_magnesium
    data_item[magnesium_dust].order = c

    data_item[magnesium_sheet].localised_description = show_formula and {chemical_formula, "Mg"} or nil
    data_item[magnesium_sheet].subgroup = is_tellus_magnesium
    data_item[magnesium_sheet].order = d
    data_recipe[magnesium_sheet].subgroup = is_tellus_magnesium
    data_recipe[magnesium_sheet].icons = TWO_I(magnesium_dust, magnesium_sheet)
    data_recipe[magnesium_sheet].order = d

    data_fluid[bacteriochlorophyll].subgroup = is_tellus_magnesium
    data_fluid[bacteriochlorophyll].order = e
    TIMSABA.barreling.add_simple_fluid(bacteriochlorophyll)
    data_recipe[bacteriochlorophyll].subgroup = is_tellus_magnesium
    data_recipe[bacteriochlorophyll].icons = FOUR_D_I(wasp_egg, magnesium_bacteria, water, nutrients, bacteriochlorophyll)
    data_recipe[bacteriochlorophyll].order = e
    data_recipe[bacteriochlorophyll].ingredients =
    {
        {type = item, name = wasp_egg, amount = 1},
        {type = item, name = magnesium_bacteria, amount = 1},
        {type = item, name = nutrients, amount = 1},
        {type = fluid, name = water, amount = 15}
    }
    data_recipe[bacteriochlorophyll].results[1].amount = 30

    -- MYCELIA
    data_item[mushroom_cap].subgroup = is_mycelia
    data_item[mushroom_cap].order = a
    data_item[mushroom_cap].stack_size = 200
    data_item[mushroom_cap].fuel_category = base_fuel
    data_item[mushroom_cap].fuel_value = 1800 .. kJ
    TIMSABA.void.void_organics(mushroom_cap)
    TIMSABA.void.freezing_organics(mushroom_cap)

    local mycelia_seed = "planetaris-myceliae-seed"
    data_item[mycelia_seed].subgroup = is_mycelia
    data_item[mycelia_seed].order = b
    data_item[mycelia_seed].stack_size = 200
    data_item[mycelia_seed].fuel_category = base_fuel
    data_item[mycelia_seed].fuel_value = 3600 .. kJ

    data_item[mycelia].subgroup = is_mycelia
    data_item[mycelia].order = c
    data_item[mycelia].stack_size = 200
    data_item[mycelia].fuel_category = base_fuel
    data_item[mycelia].fuel_value = 1800 .. kJ
    TIMSABA.void.void_organics(mycelia)
    TIMSABA.void.freezing_organics(mycelia)

    local mycelia_processing = "planetaris-mycelia-processing"
    data_recipe[mycelia_processing].subgroup = is_mycelia
    data_recipe[mycelia_processing].icons = TWO_D_I(mushroom_cap, nutrients, mycelia, mycelia_seed)
    data_recipe[mycelia_processing].order = c_a
    data_recipe[mycelia_processing].results =
    {
        {type = item, name = mycelia, amount = 2},
        {type = item, name = mycelia_seed, amount = 1, probability = 0.03125}
    }

    data_item[mycelia_composite].subgroup = is_mycelia
    data_item[mycelia_composite].order = d
    data_recipe[mycelia_composite].subgroup = is_mycelia
    data_recipe[mycelia_composite].icons = FOUR_D_I(mycelia, wood, water, nutrients, mycelia_composite)
    data_recipe[mycelia_composite].order = d
    data_recipe[mycelia_composite].ingredients =
    {
        {type = item, name = mycelia, amount = 4},
        {type = item, name = wood, amount = 2},
        {type = item, name = nutrients, amount = 2},
        {type = fluid, name = water, amount = 15}
    }

    local nutrients_from_mycelia = "planetaris-nutrients-from-mycelia"
    data_recipe[nutrients_from_mycelia].subgroup = is_mycelia
    data_recipe[nutrients_from_mycelia].icons = TWO_I(mycelia, nutrients)
    data_recipe[nutrients_from_mycelia].order = d_a

    local artificial_mycelia_soil = "planetaris-artificial-mycelia-soil"
    data_item[artificial_mycelia_soil].subgroup = is_mycelia
    data_item[artificial_mycelia_soil].order = e
    data_item[artificial_mycelia_soil].stack_size = 200
    data_recipe[artificial_mycelia_soil].subgroup = is_mycelia
    data_recipe[artificial_mycelia_soil].order = e
    data_recipe[artificial_mycelia_soil].ingredients =
    {
        {type = item, name = landfill, amount = 4},
        {type = item, name = nutrients, amount = 1},
        {type = item, name = mycelia_seed, amount = 2},
        {type = fluid, name = seed_compound, amount = 30}
    }

    local overgrowth_mycelia_soil = "planetaris-overgrowth-mycelia-soil"
    data_item[overgrowth_mycelia_soil].subgroup = is_mycelia
    data_item[overgrowth_mycelia_soil].order = f
    data_item[overgrowth_mycelia_soil].stack_size = 200
    data_recipe[overgrowth_mycelia_soil].subgroup = is_mycelia
    data_recipe[overgrowth_mycelia_soil].order = f
    data_recipe[overgrowth_mycelia_soil].ingredients =
    {
        {type = item, name = artificial_mycelia_soil, amount = 2},
        {type = item, name = nutrients, amount = 1},
        {type = item, name = mycelia_seed, amount = 4},
        {type = item, name = magnesium_dust, amount = 64},
        {type = item, name = wasp_egg, amount = 8},
        {type = fluid, name = water, amount = 120}
    }

    local mycelia_plastic = "planetaris-mycelia-plastic"
    data_recipe[mycelia_plastic].subgroup = is_mycelia
    data_recipe[mycelia_plastic].icons = FOUR_D_I(mycelia, magnesium_dust, water, nutrients, plastic)
    data_recipe[mycelia_plastic].order = g_a
    data_recipe[mycelia_plastic].ingredients =
    {
        {type = item, name = mycelia, amount = 4},
        {type = item, name = magnesium_dust, amount = 1},
        {type = item, name = nutrients, amount = 1},
        {type = fluid, name = water, amount = 15}
    }

    local stiratite_bacteria_from_mycelia = "planetaris-copper-bacteria"
    data_recipe[stiratite_bacteria_from_mycelia].subgroup = is_mycelia
    data_recipe[stiratite_bacteria_from_mycelia].icons = THREE_D_I(mycelia, mushroom_cap, nutrients, stiratite_bacteria)
    data_recipe[stiratite_bacteria_from_mycelia].order = g_b

    -- CARBOLYTE
    data_item[carbolyte_crust].subgroup = is_carbolyte
    data_item[carbolyte_crust].order = a
    data_item[carbolyte_crust].stack_size = 200
    TIMSABA.void.freezing_organics(carbolyte_crust)

    local carbolyte_pod = "planetaris-carbolyte-pod"
    data_item[carbolyte_pod].subgroup = is_carbolyte
    data_item[carbolyte_pod].order = b
    data_item[carbolyte_pod].stack_size = 200
    data_item[carbolyte_pod].fuel_category = base_fuel
    data_item[carbolyte_pod].fuel_value = 900 .. kJ

    local carbolyte_bacteria = "planetaris-carbolyte-bacteria"
    data_item[carbolyte_bacteria].subgroup = is_carbolyte
    data_item[carbolyte_bacteria].order = c
    data_item[carbolyte_bacteria].stack_size = 200
    TIMSABA.void.freezing_organics(carbolyte_bacteria)

    local carbolyte_melting = "planetaris-carbolyte-melting"
    data_recipe[carbolyte_melting].subgroup = is_carbolyte
    data_recipe[carbolyte_melting].icons = THREE_D_I(carbolyte_crust, nil, nil, carbolyte_bacteria, stone, carbolyte_pod, number_1)
    data_recipe[carbolyte_melting].order = c_a
    data_recipe[carbolyte_melting].results =
    {
        {type = item, name = carbolyte_bacteria, amount = 1},
        {type = item, name = stone, amount = 2},
        {type = item, name = carbolyte_pod, amount = 1, probability = 0.03125}
    }

    local carbolyte_separation = "planetaris-carbolyte-separation"
    data_recipe[carbolyte_separation].subgroup = is_carbolyte
    data_recipe[carbolyte_separation].icons = THREE_D_I(carbolyte_crust, nil, nutrients, carbolyte_bacteria, stone, carbolyte_pod, number_2)
    data_recipe[carbolyte_separation].order = c_b
    data_recipe[carbolyte_separation].results =
    {
        {type = item, name = carbolyte_bacteria, amount = 1},
        {type = item, name = stone, amount = 2},
        {type = item, name = carbolyte_pod, amount = 1, probability = 0.03125}
    }

    local volcanic_soil = "planetaris-volcanic-soil"
    data_item[volcanic_soil].subgroup = is_carbolyte
    data_item[volcanic_soil].order = d
    data_item[volcanic_soil].stack_size = 200
    data_recipe[volcanic_soil].subgroup = is_carbolyte
    data_recipe[volcanic_soil].order = d
    data_recipe[volcanic_soil].ingredients =
    {
        {type = item, name = landfill, amount = 4},
        {type = item, name = nutrients, amount = 1},
        {type = item, name = carbolyte_pod, amount = 2},
        {type = fluid, name = seed_compound, amount = 30}
    }

    -- HOLMIUM
    data_item[holmiumnite_bulb].subgroup = is_holmiumnite
    data_item[holmiumnite_bulb].order = a
    data_item[holmiumnite_bulb].stack_size = 200
    TIMSABA.void.freezing_organics(holmiumnite_bulb)

    local holmiumnite_pod = "planetaris-holmiumnite-pod"
    data_item[holmiumnite_pod].subgroup = is_holmiumnite
    data_item[holmiumnite_pod].order = b
    data_item[holmiumnite_pod].stack_size = 200
    data_item[holmiumnite_pod].fuel_category = base_fuel
    data_item[holmiumnite_pod].fuel_value = 3600 .. kJ
    data_recipe[holmiumnite_pod].subgroup = is_holmiumnite
    data_recipe[holmiumnite_pod].order = b
    data_recipe[holmiumnite_pod].ingredients =
    {
        {type = item, name = stone, amount = 64},
        {type = item, name = holmium_ore, amount = 16},
        {type = fluid, name = electrolyte, amount = 60}
    }

    local holmium_bacteria = "planetaris-fulgoran-bacteria"
    data_item[holmium_bacteria].subgroup = is_holmiumnite
    data_item[holmium_bacteria].order = c
    data_item[holmium_bacteria].stack_size = 200
    TIMSABA.void.freezing_organics(holmium_bacteria)

    local holmiumnite_electrolysis = "planetaris-holmiumnite-electrolysis"
    data_recipe[holmiumnite_electrolysis].subgroup = is_holmiumnite
    data_recipe[holmiumnite_electrolysis].icons = TWO_D_I(holmiumnite_bulb, water, holmium_bacteria, holmiumnite_pod)
    data_recipe[holmiumnite_electrolysis].order = c_a
    data_recipe[holmiumnite_electrolysis].ingredients =
    {
        {type = item, name = holmiumnite_bulb, amount = 1},
        {type = fluid, name = water, amount = 15}
    }
    data_recipe[holmiumnite_electrolysis].results =
    {
        {type = item, name = holmium_bacteria, amount = 1},
        {type = item, name = holmiumnite_pod, amount = 1, probability = 0.03125}
    }

    local holmium_bacteria_recipe = "planetaris-holmium-bacteria"
    data_recipe[holmium_bacteria_recipe].subgroup = is_holmiumnite
    data_recipe[holmium_bacteria_recipe].icons = TWO_I(holmium_bacteria, holmium_ore)
    data_recipe[holmium_bacteria_recipe].order = c_b
    data_recipe[holmium_bacteria_recipe].ingredients[1].amount = 8

    local dust_soil = "planetaris-dust-soil"
    data_item[dust_soil].subgroup = is_holmiumnite
    data_item[dust_soil].order = d
    data_item[dust_soil].stack_size = 200
    data_recipe[dust_soil].subgroup = is_holmiumnite
    data_recipe[dust_soil].order = d
    data_recipe[dust_soil].ingredients =
    {
        {type = item, name = landfill, amount = 4},
        {type = item, name = nutrients, amount = 1},
        {type = item, name = holmiumnite_pod, amount = 2},
        {type = fluid, name = seed_compound, amount = 30}
    }

    -- PARASITE
    local nauvis_parasite = "planetaris-nauvian-parasite"
    data_item[nauvis_parasite].subgroup = is_parasite
    data_item[nauvis_parasite].order = a
    data_item[nauvis_parasite].stack_size = 200
    TIMSABA.void.freezing_organics(nauvis_parasite)
    data_recipe[nauvis_parasite].subgroup = is_parasite
    data_recipe[nauvis_parasite].order = a
    data_recipe[nauvis_parasite].ingredients =
    {
        {type = item, name = factorian_fish, amount = 8},
        {type = item, name = spoilage, amount = 64},
        {type = item, name = biter_egg, amount = 2}
    }

    local nauvis_parasite_reproduction = "planetaris-nauvian-parasite-reproduction"
    data_recipe[nauvis_parasite_reproduction].subgroup = is_parasite
    data_recipe[nauvis_parasite_reproduction].icons = STONKS_I(stonks_png, nauvis_parasite)
    data_recipe[nauvis_parasite_reproduction].order = a_a
    data_recipe[nauvis_parasite_reproduction].ingredients =
    {
        {type = item, name = nauvis_parasite, amount = 1},
        {type = item, name = saphirite_bacteria, amount = 2},
        {type = item, name = spoilage, amount = 8},
        {type = item, name = nutrients, amount = 2}
    }

    local nauvis_parasite_quarantined = "planetaris-quarantined-nauvian-parasite"
    data_item[nauvis_parasite_quarantined].subgroup = is_parasite
    data_item[nauvis_parasite_quarantined].order = b
    data_item[nauvis_parasite_quarantined].stack_size = 200
    TIMSABA.void.freezing_organics(nauvis_parasite_quarantined)
    data_recipe[nauvis_parasite_quarantined].subgroup = is_parasite
    data_recipe[nauvis_parasite_quarantined].icons = THREE_I(nauvis_parasite, barrel, nauvis_parasite_quarantined)
    data_recipe[nauvis_parasite_quarantined].order = b

    local nauvis_parasite_dequarantined = "planetaris-dequarantined-nauvian-parasite"
    data_recipe[nauvis_parasite_dequarantined].subgroup = is_parasite
    data_recipe[nauvis_parasite_dequarantined].icons = THREE_R_I(nauvis_parasite_quarantined, nauvis_parasite, barrel)
    data_recipe[nauvis_parasite_dequarantined].order = b_a

    local gleba_parasite = "planetaris-glebian-parasite"
    data_item[gleba_parasite].subgroup = is_parasite
    data_item[gleba_parasite].order = c
    data_item[gleba_parasite].stack_size = 200
    TIMSABA.void.freezing_organics(gleba_parasite)
    data_recipe[gleba_parasite].subgroup = is_parasite
    data_recipe[gleba_parasite].order = c
    data_recipe[gleba_parasite].ingredients =
    {
        {type = item, name = jellynut, amount = 4},
        {type = item, name = nutrients, amount = 64},
        {type = item, name = pentapod_egg, amount = 4}
    }

    local gleba_parasite_reproduction = "planetaris-glebian-parasite-reproduction"
    data_recipe[gleba_parasite_reproduction].subgroup = is_parasite
    data_recipe[gleba_parasite_reproduction].icons = STONKS_I(stonks_png, gleba_parasite)
    data_recipe[gleba_parasite_reproduction].order = c_a
    data_recipe[gleba_parasite_reproduction].ingredients =
    {
        {type = item, name = gleba_parasite, amount = 1},
        {type = item, name = stiratite_bacteria, amount = 2},
        {type = item, name = mycelia, amount = 8},
        {type = item, name = nutrients, amount = 2}
    }

    local gleba_parasite_quarantined = "planetaris-quarantined-glebian-parasite"
    data_item[gleba_parasite_quarantined].subgroup = is_parasite
    data_item[gleba_parasite_quarantined].order = d
    data_item[gleba_parasite_quarantined].stack_size = 200
    TIMSABA.void.freezing_organics(gleba_parasite_quarantined)
    data_recipe[gleba_parasite_quarantined].subgroup = is_parasite
    data_recipe[gleba_parasite_quarantined].icons = THREE_I(gleba_parasite, barrel, gleba_parasite_quarantined)
    data_recipe[gleba_parasite_quarantined].order = d

    local gleba_parasite_dequarantined = "planetaris-dequarantined-glebian-parasite"
    data_recipe[gleba_parasite_dequarantined].subgroup = is_parasite
    data_recipe[gleba_parasite_dequarantined].icons = THREE_R_I(gleba_parasite_quarantined, gleba_parasite, barrel)
    data_recipe[gleba_parasite_dequarantined].order = d_a

    local tellus_parasite = "planetaris-tellurian-parasite"
    data_item[tellus_parasite].subgroup = is_parasite
    data_item[tellus_parasite].order = e
    TIMSABA.void.freezing_organics(tellus_parasite)
    data_recipe[tellus_parasite].subgroup = is_parasite
    data_recipe[tellus_parasite].order = e

    local parasite_nest = "planetaris-parasite-nest"
    data_item[parasite_nest].subgroup = is_parasite
    data_item[parasite_nest].order = f
    data_item[parasite_nest].stack_size = 200
    TIMSABA.void.freezing_organics(parasite_nest)
    data_recipe[parasite_nest].subgroup = is_parasite
    data_recipe[parasite_nest].order = f
    data_recipe[parasite_nest].ingredients =
    {
        {type = item, name = tellus_parasite, amount = 1},
        {type = item, name = nauvis_parasite, amount = 1},
        {type = item, name = gleba_parasite, amount = 1},
        {type = item, name = polimer_skin, amount = 1},
        {type = item, name = nutrients, amount = 4},
        {type = fluid, name = water, amount = 60}
    }

    -- RECIPE
    data_item[compost_tellus].subgroup = is_tellus_recipe
    data_item[compost_tellus].order = a
    data_recipe[compost_tellus].subgroup = is_tellus_recipe
    data_recipe[compost_tellus].icons = THREE_I(spoilage, nutrients, compost_angels)
    data_recipe[compost_tellus].order = a

    local mycelia_compost = "planetaris-mycelia-compost"
    data_recipe[mycelia_compost].subgroup = is_tellus_recipe
    data_recipe[mycelia_compost].icons = THREE_I(mycelia, nutrients, compost_angels)
    data_recipe[mycelia_compost].order = a_a
    data_recipe[mycelia_compost].results[1].amount = 4

    local bioflux_from_compost = "planetaris-compost-bioflux"
    data_recipe[bioflux_from_compost].subgroup = is_tellus_recipe
    data_recipe[bioflux_from_compost].icons = THREE_D_I(compost_angels, chloroplast_mash, nutrients, bioflux)
    data_recipe[bioflux_from_compost].order = a_b
    data_recipe[bioflux_from_compost].energy_required = 8
    data_recipe[bioflux_from_compost].ingredients =
    {
        {type = item, name = compost_angels, amount = 16},
        {type = item, name = chloroplast_mash, amount = 16},
        {type = item, name = nutrients, amount = 2}
    }
    data_recipe[bioflux_from_compost].results[1].amount = 2

    data_fluid[water_infected].subgroup = is_tellus_recipe
    data_fluid[water_infected].order = b
    TIMSABA.barreling.add_simple_fluid(water_infected)

    local air_cleaning = "planetaris-air-cleaning"
    data_recipe[air_cleaning].subgroup = is_tellus_recipe
    data_recipe[air_cleaning].icons = TWO_I(water, water_infected)
    data_recipe[air_cleaning].order = b_a
    data_recipe[air_cleaning].energy_required = 4
    data_recipe[air_cleaning].results[1].amount = 60

    local desinfecting_water = "planetaris-desinfecting-water"
    data_recipe[desinfecting_water].subgroup = is_tellus_recipe
    data_recipe[desinfecting_water].icons = FOUR_I(magnesium_bacteria, water_infected, nutrients, water)
    data_recipe[desinfecting_water].order = b_b
    data_recipe[desinfecting_water].ingredients =
    {
        {type = item, name = magnesium_bacteria, amount = 4},
        {type = item, name = nutrients, amount = 4},
        {type = fluid, name = water_infected, amount = 60}
    }
    data_recipe[desinfecting_water].results[1].amount = 60

    data_item[mushell_seed].subgroup = is_tellus_recipe
    data_item[mushell_seed].order = c
    data_item[mushell_seed].stack_size = 200
    data_item[mushell_seed].fuel_category = base_fuel
    data_item[mushell_seed].fuel_value = 3600 .. kJ

    data_item[pesticide].subgroup = is_tellus_recipe
    data_item[pesticide].order = e
    data_recipe[pesticide].subgroup = is_tellus_recipe
    data_recipe[pesticide].order = e
    data_recipe[pesticide].ingredients =
    {
        {type = item, name = wasp_egg, amount = 1},
        {type = item, name = plastic, amount = 2},
        {type = item, name = nutrients, amount = 1},
        {type = item, name = magnesium_dust, amount = 4}
    }

    data_item[polimer_skin].subgroup = is_tellus_recipe
    data_item[polimer_skin].order = f
    data_recipe[polimer_skin].subgroup = is_tellus_recipe
    data_recipe[polimer_skin].order = f
    data_recipe[polimer_skin].ingredients =
    {
        {type = item, name = plastic, amount = 1},
        {type = item, name = nutrients, amount = 4},
        {type = item, name = mycelia_composite, amount = 2}
    }

    local artificial_heart = "planetaris-artificial-heart"
    data_item[artificial_heart].subgroup = is_tellus_recipe
    data_item[artificial_heart].order = g
    data_recipe[artificial_heart].subgroup = is_tellus_recipe
    data_recipe[artificial_heart].order = g
    data_recipe[artificial_heart].energy_required = 8
    data_recipe[artificial_heart].ingredients =
    {
        {type = item, name = tellus_parasite, amount = 1},
        {type = item, name = polimer_skin, amount = 4},
        {type = item, name = nutrients, amount = 4},
        {type = item, name = magnesium_bacteria, amount = 4},
    }

    data_tool[bioengineering_science_pack].subgroup = is_tellus_recipe
    data_tool[bioengineering_science_pack].order = h
    TIMSABA.void.freezing_organics(bioengineering_science_pack)
    data_recipe[bioengineering_science_pack].subgroup = is_tellus_recipe
    data_recipe[bioengineering_science_pack].order = h
    data_recipe[bioengineering_science_pack].ingredients =
    {
        {type = item, name = nutrients, amount = 4},
        {type = item, name = magnesium_sheet, amount = 2},
        {type = item, name = mycelia_composite, amount = 4},
        {type = fluid, name = nutrients, amount = 15}
    }

    data_tool[pathological_science_pack].subgroup = is_tellus_recipe
    data_tool[pathological_science_pack].order = i
    TIMSABA.void.freezing_organics(pathological_science_pack)
    data_recipe[pathological_science_pack].subgroup = is_tellus_recipe
    data_recipe[pathological_science_pack].order = i
    data_recipe[pathological_science_pack].ingredients =
    {
        {type = item, name = nutrients, amount = 4},
        {type = item, name = arigian_bacteria, amount = 2},
        {type = item, name = unstable_bacteria, amount = 2},
        {type = item, name = carbolyte_bacteria, amount = 2},
        {type = item, name = holmium_bacteria, amount = 2},
        {type = item, name = parasite_nest, amount = 1}
    }

    -- LOGISTICS
    local root = "planetaris-root"
    data_item[root].subgroup = is_tellus_logistics
    data_item[root].order = a
    data_item[root].stack_size = 200
    data_item[root].fuel_category = base_fuel
    data_item[root].fuel_value = 1800 .. kJ
    data_recipe[root].subgroup = is_tellus_logistics
    data_recipe[root].order = a
    data_pipe[root].subgroup = is_tellus_logistics
    data_pipe[root].order = a

    local root_to_ground = "planetaris-root-to-ground"
    data_item[root_to_ground].subgroup = is_tellus_logistics
    data_item[root_to_ground].order = b
    data_item[root_to_ground].stack_size = 32
    data_item[root_to_ground].weight = 31250
    data_recipe[root_to_ground].subgroup = is_tellus_logistics
    data_recipe[root_to_ground].order = b
    data_recipe[root_to_ground].ingredients[1].amount = 8
    data_pipe_to_ground[root_to_ground].subgroup = is_tellus_logistics
    data_pipe_to_ground[root_to_ground].order = b
    data_pipe_to_ground[root_to_ground].fluid_box.pipe_connections[2].max_underground_distance = 8

    local root_pump = "planetaris-root-pump"
    data_item[root_pump].subgroup = is_tellus_logistics
    data_item[root_pump].order = c
    data_item[root_pump].stack_size = 32
    data_item[root_pump].weight = 31250
    data_recipe[root_pump].subgroup = is_tellus_logistics
    data_recipe[root_pump].order = c
    data_pump[root_pump].subgroup = is_tellus_logistics
    data_pump[root_pump].order = c
    data_pump[root_pump].pumping_speed = 8
    data_pump[root_pump].energy_usage = 30 .. kW
    data_pump[root_pump].energy_source.drain = nil

    local root_storage_tank = "planetaris-root-storage-tank"
    data_item[root_storage_tank].subgroup = is_tellus_logistics
    data_item[root_storage_tank].order = d
    data_item[root_storage_tank].stack_size = 32
    data_item[root_storage_tank].weight = 31250
    data_recipe[root_storage_tank].subgroup = is_tellus_logistics
    data_recipe[root_storage_tank].order = d
    data_recipe[root_storage_tank].ingredients =
    {
        {type = item, name = root, amount = 4},
        {type = item, name = nutrients, amount = 16},
        {type = item, name = magnesium_dust, amount = 16}
    }
    data_storage_tank[root_storage_tank].subgroup = is_tellus_logistics
    data_storage_tank[root_storage_tank].order = d
    data_storage_tank[root_storage_tank].fluid_box.volume = 28800

    local root_filler = "planetaris-root-filler"
    data_item[root_filler].subgroup = is_tellus_logistics
    data_item[root_filler].order = e
    data_item[root_filler].stack_size = 32
    data_item[root_filler].weight = 31250
    data_recipe[root_filler].subgroup = is_tellus_logistics
    data_recipe[root_filler].order = e
    data_recipe[root_filler].ingredients =
    {
        {type = item, name = engine_unit, amount = 1},
        {type = item, name = root, amount = 2},
        {type = item, name = magnesium_sheet, amount = 4}
    }
    data_storage_tank[root_filler].subgroup = is_tellus_logistics
    data_storage_tank[root_filler].order = e
    data_storage_tank[root_filler].fluid_box.volume = 3600

    local logistic_robowasp = "planetaris-logistic-robowasp"
    data_item[logistic_robowasp].subgroup = is_tellus_logistics
    data_item[logistic_robowasp].order = f
    data_item[logistic_robowasp].stack_size = 50
    data_recipe[logistic_robowasp].subgroup = is_tellus_logistics
    data_recipe[logistic_robowasp].order = f
    data_recipe[logistic_robowasp].ingredients =
    {
        {type = item, name = logistic_robot_4, amount = 1},
        {type = item, name = magnesium_sheet, amount = 4},
        {type = item, name = artificial_heart, amount = 1}
    }
    data_logistic_robot[logistic_robowasp].subgroup = is_tellus_logistics
    data_logistic_robot[logistic_robowasp].order = f
    data_logistic_robot[logistic_robowasp].speed = 10 / 60
    data_logistic_robot[logistic_robowasp].max_energy = 4500 .. kJ
    data_logistic_robot[logistic_robowasp].energy_per_tick = 0 .. J

    local wasp_roboport = "planetaris-robowasp-port"
    data_item[wasp_roboport].subgroup = is_tellus_logistics
    data_item[wasp_roboport].order = g
    data_item[wasp_roboport].stack_size = 8
    data_item[wasp_roboport].weight = 125000
    data_recipe[wasp_roboport].subgroup = is_tellus_logistics
    data_recipe[wasp_roboport].order = g
    data_recipe[wasp_roboport].energy_required = 4
    data_recipe[wasp_roboport].ingredients =
    {
        {type = item, name = roboport_4, amount = 1},
        {type = item, name = tellus_parasite, amount = 1},
        {type = item, name = polimer_skin, amount = 16},
        {type = item, name = artificial_heart, amount = 1}
    }
    data_roboport[wasp_roboport].subgroup = is_tellus_logistics
    data_roboport[wasp_roboport].order = g
    data_roboport[wasp_roboport].energy_source.buffer_capacity = (18000 * 100) .. kJ
    data_roboport[wasp_roboport].energy_source.input_flow_limit = 18000 .. kW
    data_roboport[wasp_roboport].energy_usage = (5 * 60) .. kW
    data_roboport[wasp_roboport].charging_energy = 4500 .. kW
    data_roboport[wasp_roboport].charging_station_count = 4
    data_roboport[wasp_roboport].logistics_radius = 16 * 4
    data_roboport[wasp_roboport].construction_radius = 32 * 4
    data_roboport[wasp_roboport].radar_range = 5 * 2
    data_roboport[wasp_roboport].recharge_minimum = 36000 .. kJ

    -- BUILDING
    local bioassembler_seed = "planetaris-bioassembler-seed"
    data_item[bioassembler_seed].subgroup = is_tellus_building
    data_item[bioassembler_seed].order = a
    data_item[bioassembler_seed].stack_size = 32
    data_item[bioassembler_seed].weight = 31250
    data_recipe[bioassembler_seed].subgroup = is_tellus_building
    data_recipe[bioassembler_seed].order = a
    data_recipe[bioassembler_seed].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = nutrients, amount = 4},
        {type = item, name = chloroplast_seed, amount = 1},
        {type = item, name = magnesium_sheet, amount = 8},
        {type = item, name = mycelia_seed, amount = 1}
    }

    local bioassembler = "planetaris-bioassembler"
    data_assembling[bioassembler].subgroup = is_tellus_building
    data_assembling[bioassembler].order = b
    data_assembling[bioassembler].energy_usage = 1875 .. kW

    local bioassembler_dead = "planetaris-bioassembler-dead"
    data_assembling[bioassembler_dead].minable.result = compost_angels
    data_assembling[bioassembler_dead].minable.count = 8

    local bioassembler_revive = "planetaris-revive-bioassembler"
    data_recipe[bioassembler_revive].ingredients[1].amount = 16

    local air_purifier = "planetaris-air-purifier"
    data_item[air_purifier].subgroup = is_tellus_building
    data_item[air_purifier].order = c
    data_item[air_purifier].stack_size = 32
    data_item[air_purifier].weight = 31250
    data_recipe[air_purifier].subgroup = is_tellus_building
    data_recipe[air_purifier].order = c
    data_recipe[air_purifier].ingredients =
    {
        {type = item, name = engine_unit, amount = 4},
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
        {type = item, name = plastic, amount = 4},
        {type = item, name = magnesium_sheet, amount = 8}
    }
    data_assembling[air_purifier].subgroup = is_tellus_building
    data_assembling[air_purifier].order = c
    data_assembling[air_purifier].energy_usage = (2400 - 1200) .. kW
    data_assembling[air_purifier].energy_source.drain = 1200 .. kW

    local incubator = "planetaris-incubator"
    data_item[incubator].subgroup = is_tellus_building
    data_item[incubator].order = d
    data_item[incubator].stack_size = 32
    data_item[incubator].weight = 31250
    data_recipe[incubator].subgroup = is_tellus_building
    data_recipe[incubator].order = d
    data_recipe[incubator].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = root, amount = 8},
        {type = item, name = biochamber, amount = 1},
        {type = item, name = magnesium_sheet, amount = 8}
    }
    data_assembling[incubator].subgroup = is_tellus_building
    data_assembling[incubator].order = d
    data_assembling[incubator].energy_usage = 7500 .. kW

    local incubator_dead = "planetaris-incubator-dead"
    data_assembling[incubator_dead].minable.result = compost_angels
    data_assembling[incubator_dead].minable.count = 8

    local incubator_revive = "planetaris-revive-incubator"
    data_recipe[incubator_revive].energy_required = 4
    data_recipe[incubator_revive].ingredients[1].amount = 16

    bobmods.lib.recipe.update_recycling_recipe
    ({
        artificial_chlorophyll_soil,
        overgrowth_chlorophyll_soil,
        artificial_mycelia_soil,
        overgrowth_mycelia_soil,
        volcanic_soil,
        dust_soil,
        polimer_skin,
        root_to_ground,
        root_storage_tank,
        root_filler,
        logistic_robowasp,
        wasp_roboport,
        air_purifier,
        incubator
    })

    -- COLORED PROTOTYPES
    local dyes =
    {
        --{name = orange_dye,  order = a, artifact = alien_artifact_orange,  ore = crushed_cupric},
        {name = blue_dye,    order = b, artifact = alien_artifact_blue,    ore = crushed_saphirite},
        {name = yellow_dye,  order = c, artifact = alien_artifact_yellow,  ore = crushed_jivolite},
        {name = magenta_dye, order = d, artifact = alien_artifact_magenta, ore_1 = crushed_saphirite, ore_2 = crushed_rubyte},
        {name = green_dye,   order = e, artifact = alien_artifact_green,   ore = crushed_ferrous},
        {name = red_dye,     order = f, artifact = alien_artifact_red,     ore = crushed_rubyte},
        {name = cyan_dye,    order = g,                                    ore_1 = crushed_saphirite, ore_2 = crushed_ferrous},
        --{name = black_dye,   order = h,                                    ore = coal_crushed_angels}
    }
    for _, prototypes in pairs(dyes) do
        if data_item[prototypes.name] then
            data_item[prototypes.name].subgroup = is_dyes
            data_item[prototypes.name].order = prototypes.order
            data_item[prototypes.name].stack_size = 200
            data_item[prototypes.name].fuel_category = base_fuel
            data_item[prototypes.name].fuel_value = 1800 .. kJ
            data_recipe[prototypes.name].category = centrifuging_4
            data_recipe[prototypes.name].subgroup = is_dyes
            data_recipe[prototypes.name].order = prototypes.order
            if data_item[prototypes.artifact] then
                if prototypes.artifact then
                    data_recipe[prototypes.name].icons = THREE_D_I(prototypes.artifact, nutrients, water, prototypes.name)
                    data_recipe[prototypes.name].ingredients =
                    {
                        {type = item, name = prototypes.artifact, amount = 1},
                        {type = item, name = nutrients, amount = 8},
                        {type = fluid, name = water, amount = 30}
                    }
                    data_recipe[prototypes.name].results[1].amount = 8
                else
                    data_recipe[prototypes.name].icons = THREE_I(prototypes.ore_1, prototypes.ore_2, prototypes.name)
                    data_recipe[prototypes.name].ingredients =
                    {
                        {type = item, name = prototypes.ore_1, amount = 4},
                        {type = item, name = prototypes.ore_2, amount = 4},
                        {type = fluid, name = water, amount = 30}
                    }
                    data_recipe[prototypes.name].results[1].amount = 8
                end
            else
                if prototypes.ore then
                    data_recipe[prototypes.name].icons = THREE_D_I(prototypes.ore, nutrients, water, prototypes.name)
                    data_recipe[prototypes.name].ingredients =
                    {
                        {type = item, name = prototypes.ore, amount = 1},
                        {type = item, name = nutrients, amount = 8},
                        {type = fluid, name = water, amount = 30}
                    }
                    data_recipe[prototypes.name].results[1].amount = 8
                else
                    data_recipe[prototypes.name].icons = THREE_I(prototypes.ore_1, prototypes.ore_2, prototypes.name)
                    data_recipe[prototypes.name].ingredients =
                    {
                        {type = item, name = prototypes.ore_1, amount = 4},
                        {type = item, name = prototypes.ore_2, amount = 4},
                        {type = fluid, name = water, amount = 30}
                    }
                    data_recipe[prototypes.name].results[1].amount = 8
                end
            end
        end
    end

    local colored_pipes =
    {
        --{name = orange_pipe,  order = a, dye = orange_dye},
        {name = blue_pipe,    order = b, dye = blue_dye},
        {name = yellow_pipe,  order = c, dye = yellow_dye},
        {name = magenta_pipe, order = d, dye = magenta_dye},
        {name = green_pipe,   order = e, dye = green_dye},
        {name = red_pipe,     order = f, dye = red_dye},
        {name = cyan_pipe,    order = g, dye = cyan_dye},
        --{name = black_pipe,   order = h, dye = black_dye}
    }
    for _, prototypes in pairs(colored_pipes) do
        if data_item[prototypes.name] then
            data_item[prototypes.name].subgroup = is_tellus_pipe
            data_item[prototypes.name].order = prototypes.order
            data_item[prototypes.name].stack_size = 200
            data_recipe[prototypes.name].category = crafting
            data_recipe[prototypes.name].subgroup = is_tellus_pipe
            data_recipe[prototypes.name].order = prototypes.order
            data_recipe[prototypes.name].ingredients =
            {
                {type = item, name = prototypes.dye, amount = 1},
                {type = item, name = stone_pipe, amount = 32}
            }
            data_recipe[prototypes.name].results[1].amount = 32
            data_pipe[prototypes.name].subgroup = is_tellus_pipe
            data_pipe[prototypes.name].order = prototypes.order

            bobmods.lib.recipe.update_recycling_recipe({prototypes.name})
        end
    end

    local simulations = require("prototypes.factoriopedia-simulations")
    local colored_pipes_to_ground =
    {
        --{name = orange_pipe_to_ground,  order = a, dye = orange_dye, simulation = simulations.factoriopedia_orange_pipe_to_ground},
        {name = blue_pipe_to_ground,    order = b, dye = blue_dye, simulation = simulations.factoriopedia_blue_pipe_to_ground},
        {name = yellow_pipe_to_ground,  order = c, dye = yellow_dye, simulation = simulations.factoriopedia_yellow_pipe_to_ground},
        {name = magenta_pipe_to_ground, order = d, dye = magenta_dye, simulation = simulations.factoriopedia_magenta_pipe_to_ground},
        {name = green_pipe_to_ground,   order = e, dye = green_dye, simulation = simulations.factoriopedia_green_pipe_to_ground},
        {name = red_pipe_to_ground,     order = f, dye = red_dye, simulation = simulations.factoriopedia_red_pipe_to_ground},
        {name = cyan_pipe_to_ground,    order = g, dye = cyan_dye, simulation = simulations.factoriopedia_cyan_pipe_to_ground},
        --{name = black_pipe_to_ground,   order = z, dye = black_dye, simulation = simulations.factoriopedia_black_pipe_to_ground}
    }
    for _, prototypes in pairs(colored_pipes_to_ground) do
        if data_item[prototypes.name] then
            data_item[prototypes.name].subgroup = is_tellus_pipe_to_ground
            data_item[prototypes.name].order = prototypes.order
            data_item[prototypes.name].stack_size = 32
            data_item[prototypes.name].weight = 31250
            data_recipe[prototypes.name].category = crafting
            data_recipe[prototypes.name].subgroup = is_tellus_pipe_to_ground
            data_recipe[prototypes.name].order = prototypes.order
            data_recipe[prototypes.name].ingredients =
            {
                {type = item, name = prototypes.dye, amount = 1},
                {type = item, name = stone_pipe_to_ground, amount = 8}
            }
            data_recipe[prototypes.name].results[1].amount = 8
            data_pipe_to_ground[prototypes.name].subgroup = is_tellus_pipe_to_ground
            data_pipe_to_ground[prototypes.name].order = prototypes.order
            if settings.startup[setting_rebalance_belts_and_pipes].value then
                data_pipe_to_ground[prototypes.name].fluid_box.pipe_connections[2].max_underground_distance = 8
            else
                data_pipe_to_ground[prototypes.name].fluid_box.pipe_connections[2].max_underground_distance = 11
            end
            data_pipe_to_ground[prototypes.name].factoriopedia_simulation = prototypes.simulation

            bobmods.lib.recipe.update_recycling_recipe({prototypes.name})
        end
    end

    local blue_stone_brick = "planetaris-blue-stone-brick"
    local yellow_stone_brick = "planetaris-yellow-stone-brick"
    local magenta_stone_brick = "planetaris-magenta-stone-brick"
    local green_stone_brick = "planetaris-green-stone-brick"
    local red_stone_brick = "planetaris-red-stone-brick"
    local cyan_stone_brick = "planetaris-cyan-stone-brick"
    local colored_stone_bricks =
    {
        --{name = orange_stone_brick,  order = a, dye = orange_dye},
        {name = blue_stone_brick,    order = b, dye = blue_dye},
        {name = yellow_stone_brick,  order = c, dye = yellow_dye},
        {name = magenta_stone_brick, order = d, dye = magenta_dye},
        {name = green_stone_brick,   order = e, dye = green_dye},
        {name = red_stone_brick,     order = f, dye = red_dye},
        {name = cyan_stone_brick,    order = g, dye = cyan_dye},
        --{name = black_stone_brick,   order = z, dye = black_dye}
    }
    for _, prototypes in pairs(colored_stone_bricks) do
        if data_item[prototypes.name] then
            data_item[prototypes.name].subgroup = is_tellus_stone_brick
            data_item[prototypes.name].order = prototypes.order
            data_item[prototypes.name].stack_size = 200
            data_recipe[prototypes.name].category = crafting
            data_recipe[prototypes.name].subgroup = is_tellus_stone_brick
            data_recipe[prototypes.name].order = prototypes.order
            data_recipe[prototypes.name].ingredients =
            {
                {type = item, name = prototypes.dye, amount = 1},
                {type = item, name = stone_brick, amount = 4}
            }
            data_recipe[prototypes.name].results[1].amount = 4

            bobmods.lib.recipe.update_recycling_recipe({prototypes.name})
        end
    end

    local stone_path =
    {
        --{name = "orange-stone-path", order = a},
        {name = "planetaris-blue-stone-path", order = b},
        {name = "planetaris-yellow-stone-path", order = c},
        {name = "planetaris-magenta-stone-path", order = d},
        {name = "planetaris-green-stone-path", order = e},
        {name = "planetaris-red-stone-path", order = f},
        {name = "planetaris-cyan-stone-path", order = g},
        --{name = "black-stone-path", order = z},
    }
    for _, prototypes in pairs(stone_path) do
        if data_tile[prototypes.name] then
            data_tile[prototypes.name].subgroup = is_tellus_stone_brick
            data_tile[prototypes.name].order = prototypes.order
            data_tile[prototypes.name].collision_mask = {layers = {ground_tile = true}}
        end
    end

    local colored_concrete =
    {
        --{name = orange_concrete,  order = a, dye = orange_dye},
        {name = blue_concrete,    order = b, dye = blue_dye},
        {name = yellow_concrete,  order = c, dye = yellow_dye},
        {name = magenta_concrete, order = d, dye = magenta_dye},
        {name = green_concrete,   order = e, dye = green_dye},
        {name = red_concrete,     order = f, dye = red_dye},
        {name = cyan_concrete,    order = g, dye = cyan_dye},
        --{name = black_concrete,   order = z, dye = black_dye}
    }
    for _, prototypes in pairs(colored_concrete) do
        if data_item[prototypes.name] then
            data_item[prototypes.name].subgroup = is_tellus_concrete
            data_item[prototypes.name].order = prototypes.order
            data_item[prototypes.name].stack_size = 200
            data_recipe[prototypes.name].category = crafting
            data_recipe[prototypes.name].subgroup = is_tellus_concrete
            data_recipe[prototypes.name].order = prototypes.order
            data_recipe[prototypes.name].ingredients =
            {
                {type = item, name = prototypes.dye, amount = 1},
                {type = item, name = concrete, amount = 8}
            }
            data_recipe[prototypes.name].results[1].amount = 8
            data_tile[prototypes.name].subgroup = is_tellus_concrete
            data_tile[prototypes.name].order = prototypes.order
            data_tile[prototypes.name].collision_mask = {layers = {ground_tile = true}}

            bobmods.lib.recipe.update_recycling_recipe({prototypes.name})
        end
    end

    local blue_hazard_concrete = "planetaris-blue-hazard-concrete"
    local yellow_hazard_concrete = "planetaris-yellow-hazard-concrete"
    local magenta_hazard_concrete = "planetaris-magenta-hazard-concrete"
    local green_hazard_concrete = "planetaris-green-hazard-concrete"
    local red_hazard_concrete = "planetaris-red-hazard-concrete"
    local cyan_hazard_concrete = "planetaris-cyan-hazard-concrete"
    local colored_hazard_concrete =
    {
        --{name = orange_hazard_concrete,  order = a, dye = orange_dye},
        {name = blue_hazard_concrete,    order = b, dye = blue_dye},
        {name = yellow_hazard_concrete,  order = c, dye = yellow_dye},
        {name = magenta_hazard_concrete, order = d, dye = magenta_dye},
        {name = green_hazard_concrete,   order = e, dye = green_dye},
        {name = red_hazard_concrete,     order = f, dye = red_dye},
        {name = cyan_hazard_concrete,    order = g, dye = cyan_dye}
    }
    for _, prototypes in pairs(colored_hazard_concrete) do
        if data_item[prototypes.name] then
            data_item[prototypes.name].subgroup = is_tellus_hazard_concrete
            data_item[prototypes.name].order = prototypes.order
            data_item[prototypes.name].stack_size = 200
            data_recipe[prototypes.name].category = crafting
            data_recipe[prototypes.name].subgroup = is_tellus_hazard_concrete
            data_recipe[prototypes.name].order = prototypes.order
            data_recipe[prototypes.name].ingredients =
            {
                {type = item, name = prototypes.dye, amount = 1},
                {type = item, name = hazard_concrete, amount = 8}
            }
            data_recipe[prototypes.name].results[1].amount = 8
            if prototypes.name .. "-left" then
                data_tile[prototypes.name .. "-left"].subgroup = is_tellus_hazard_concrete
                data_tile[prototypes.name .. "-left"].order = prototypes.order
                data_tile[prototypes.name .. "-left"].collision_mask = {layers = {ground_tile = true}}
            elseif prototypes.name .. "-right" then
                data_tile[prototypes.name .. "-right"].subgroup = is_tellus_hazard_concrete
                data_tile[prototypes.name .. "-right"].order = prototypes.order
                data_tile[prototypes.name .. "-right"].collision_mask = {layers = {ground_tile = true}}
            end

            bobmods.lib.recipe.update_recycling_recipe({prototypes.name})
        end
    end

    local orange_reinforced_concrete = "planetaris-orange-refined-concrete"
    local blue_reinforced_concrete = "planetaris-blue-refined-concrete"
    local yellow_reinforced_concrete = "planetaris-yellow-refined-concrete"
    local magenta_reinforced_concrete = "planetaris-magenta-refined-concrete"
    local green_reinforced_concrete = "planetaris-green-refined-concrete"
    local red_reinforced_concrete = "planetaris-red-refined-concrete"
    local cyan_reinforced_concrete = "planetaris-cyan-refined-concrete"
    local black_reinforced_concrete = "planetaris-black-refined-concrete"
    local colored_reinforced_concrete =
    {
        {name = orange_reinforced_concrete,  order = a, dye = orange_dye},
        {name = blue_reinforced_concrete,    order = b, dye = blue_dye},
        {name = yellow_reinforced_concrete,  order = c, dye = yellow_dye},
        {name = magenta_reinforced_concrete, order = d, dye = magenta_dye},
        {name = green_reinforced_concrete,   order = e, dye = green_dye},
        {name = red_reinforced_concrete,     order = f, dye = red_dye},
        {name = cyan_reinforced_concrete,    order = g, dye = cyan_dye},
        {name = black_reinforced_concrete,   order = z, dye = black_dye}
    }
    for _, prototypes in pairs(colored_reinforced_concrete) do
        if data_item[prototypes.name] then
            data_item[prototypes.name].subgroup = is_tellus_reinforced_concrete
            data_item[prototypes.name].order = prototypes.order
            data_item[prototypes.name].stack_size = 200
            data_recipe[prototypes.name].category = crafting
            data_recipe[prototypes.name].subgroup = is_tellus_reinforced_concrete
            data_recipe[prototypes.name].order = prototypes.order
            data_recipe[prototypes.name].ingredients =
            {
                {type = item, name = prototypes.dye, amount = 1},
                {type = item, name = reinforced_concrete, amount = 8}
            }
            data_recipe[prototypes.name].results[1].amount = 8

            bobmods.lib.recipe.update_recycling_recipe({prototypes.name})
        end
    end

    local reinforced_concrete_tile =
    {
        {name = "orange-refined-concrete", order = a},
        {name = "blue-refined-concrete", order = b},
        {name = "yellow-refined-concrete", order = c},
        {name = "magenta-refined-concrete", order = d},
        {name = "green-refined-concrete", order = e},
        {name = "red-refined-concrete", order = f},
        {name = "cyan-refined-concrete", order = g},
        {name = "black-refined-concrete", order = z},
    }
    for _, prototypes in pairs(reinforced_concrete_tile) do
        if data_tile[prototypes.name] then
            data_tile[prototypes.name].subgroup = is_tellus_reinforced_concrete
            data_tile[prototypes.name].order = prototypes.order
            data_tile[prototypes.name].minable = {mining_time = 0.1, result = "planetaris-" .. prototypes.name}
            data_tile[prototypes.name].collision_mask = {layers = {ground_tile = true}}
        end
    end

    local blue_reinforced_hazard_concrete = "planetaris-blue-refined-hazard-concrete"
    local yellow_reinforced_hazard_concrete = "planetaris-yellow-refined-hazard-concrete"
    local magenta_reinforced_hazard_concrete = "planetaris-magenta-refined-hazard-concrete"
    local green_reinforced_hazard_concrete = "planetaris-green-refined-hazard-concrete"
    local red_reinforced_hazard_concrete = "planetaris-red-refined-hazard-concrete"
    local cyan_reinforced_hazard_concrete = "planetaris-cyan-refined-hazard-concrete"
    local colored_reinforced_hazard_concrete =
    {
        --{name = orange_reinforced_hazard_concrete,  order = a, dye = orange_dye},
        {name = blue_reinforced_hazard_concrete,    order = b, dye = blue_dye},
        {name = yellow_reinforced_hazard_concrete,  order = c, dye = yellow_dye},
        {name = magenta_reinforced_hazard_concrete, order = d, dye = magenta_dye},
        {name = green_reinforced_hazard_concrete,   order = e, dye = green_dye},
        {name = red_reinforced_hazard_concrete,     order = f, dye = red_dye},
        {name = cyan_reinforced_hazard_concrete,    order = g, dye = cyan_dye}
    }
    for _, prototypes in pairs(colored_reinforced_hazard_concrete) do
        if data_item[prototypes.name] then
            data_item[prototypes.name].subgroup = is_tellus_reinforced_hazard_concrete
            data_item[prototypes.name].order = prototypes.order
            data_item[prototypes.name].stack_size = 200
            data_recipe[prototypes.name].subgroup = is_tellus_reinforced_hazard_concrete
            data_recipe[prototypes.name].order = prototypes.order
            data_recipe[prototypes.name].ingredients =
            {
                {type = item, name = prototypes.dye, amount = 1},
                {type = item, name = reinforced_hazard_concrete, amount = 8}
            }
            data_recipe[prototypes.name].results[1].amount = 8
            if prototypes.name .. "-left" then
                data_tile[prototypes.name .. "-left"].subgroup = is_tellus_reinforced_hazard_concrete
                data_tile[prototypes.name .. "-left"].order = prototypes.order
                data_tile[prototypes.name .. "-left"].collision_mask = {layers = {ground_tile = true}}
            elseif prototypes.name .. "-right" then
                data_tile[prototypes.name .. "-right"].subgroup = is_tellus_reinforced_hazard_concrete
                data_tile[prototypes.name .. "-right"].order = prototypes.order
                data_tile[prototypes.name .. "-right"].collision_mask = {layers = {ground_tile = true}}
            end

            bobmods.lib.recipe.update_recycling_recipe({prototypes.name})
        end
    end

    local blue_stone_wall = "planetaris-blue-stone-wall"
    local yellow_stone_wall = "planetaris-yellow-stone-wall"
    local magenta_stone_wall = "planetaris-magenta-stone-wall"
    local green_stone_wall = "planetaris-green-stone-wall"
    local red_stone_wall = "planetaris-red-stone-wall"
    local cyan_stone_wall = "planetaris-cyan-stone-wall"
    local colored_stone_walls =
    {
        --{name = orange_stone_wall,  order = a, dye = orange_dye},
        {name = blue_stone_wall,    order = b, dye = blue_dye},
        {name = yellow_stone_wall,  order = c, dye = yellow_dye},
        {name = magenta_stone_wall, order = d, dye = magenta_dye},
        {name = green_stone_wall,   order = e, dye = green_dye},
        {name = red_stone_wall,     order = f, dye = red_dye},
        {name = cyan_stone_wall,    order = g, dye = cyan_dye},
        --{name = black_stone_wall,   order = z, dye = black_dye}
    }
    for _, prototypes in pairs(colored_stone_walls) do
        if data_item[prototypes.name] then
            data_item[prototypes.name].subgroup = is_tellus_stone_wall
            data_item[prototypes.name].order = prototypes.order
            data_item[prototypes.name].stack_size = 200
            data_recipe[prototypes.name].category = crafting
            data_recipe[prototypes.name].subgroup = is_tellus_stone_wall
            data_recipe[prototypes.name].order = prototypes.order
            data_recipe[prototypes.name].ingredients =
            {
                {type = item, name = prototypes.dye, amount = 1},
                {type = item, name = stone_wall, amount = 4}
            }
            data_recipe[prototypes.name].results[1].amount = 4
            data_wall[prototypes.name].subgroup = is_tellus_stone_wall
            data_wall[prototypes.name].order = prototypes.order

            bobmods.lib.recipe.update_recycling_recipe({prototypes.name})
        end
    end

    -- TECHNOLOGY
    local tech_discovery_tellus = "planet-discovery-tellus"
    table.insert(data_technology[tech_discovery_tellus].prerequisites, tech_advanced_asteroid_processing)
    data_technology[tech_discovery_tellus].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    local tech_agriculture = "planetaris-agriculture"
    data_technology[tech_agriculture].effects =
    {
        {type = unlock_recipe, recipe = magnesium_dust},
        {type = unlock_recipe, recipe = magnesium_sheet},
        {type = unlock_recipe, recipe = compost_tellus},
        {type = unlock_recipe, recipe = mycelia_compost},
        {type = unlock_recipe, recipe = bioflux_from_compost}
    }

    local concrete_brick = "concrete-brick"
    -- 1. Последовательность цветов (сохраняет ваш порядок)
    local colors = {"planetaris-blue", "planetaris-green", "planetaris-red"}
    -- 2. Карта соответствия: суффикс рецепта -> имя настройки
    -- Порядок элементов в этом списке строго определяет порядок добавления в технологию!
    local recipe_configs =
    {
        {suffix = pipe,                       setting = setting_dye_pipes},
        {suffix = pipe_to_ground,             setting = setting_dye_pipes},
        {suffix = stone_brick,                setting = setting_dye_stone_path},
        {suffix = concrete,                   setting = setting_dye_concrete},
        {suffix = hazard_concrete,            setting = setting_dye_hazard_concrete},
        {suffix = reinforced_concrete,        setting = setting_dye_reinforced_concrete},
        {suffix = reinforced_hazard_concrete, setting = setting_dye_reinforced_hazard_concrete},
        {suffix = stone_wall,                 setting = setting_dye_stone_wall},
        {suffix = concrete_brick,             setting = setting_dye_concrete_brick}
    }
    -- 3. Результирующий массив эффектов технологии
    local tech_effects = {}
    -- 4. Генерация списка в строгом соответствии с исходным порядком
    for _, color in ipairs(colors) do
        -- Краситель (dye) всегда идет первым и не зависит от настроек предметов
        table.insert(tech_effects, {type = unlock_recipe, recipe = color .. "-dye"})
        -- Проходим по списку рецептов для текущего цвета
        for _, config in ipairs(recipe_configs) do
            local setting_name = config.setting
            -- Проверяем, включена ли настройка
            if settings.startup[setting_name].value then
                table.insert(tech_effects, {type = unlock_recipe, recipe = color .. "-" .. config.suffix})
            end
        end
    end
    -- 5. Записываем итоговый массив в технологию
    local tech_primary_dyes = "planetaris-primary-dyes"
    data_technology[tech_primary_dyes].effects = tech_effects
    data_technology[tech_primary_dyes].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1},
        {electromagnetic_science_pack, 1}
    }

    if settings.startup[setting_dye_secondary_color].value then
        -- 1. Последовательность цветов (сохраняет ваш порядок)
        local colors = {"orange", "planetaris-yellow", "planetaris-magenta", "planetaris-cyan", "black"}
        -- 2. Карта соответствия: суффикс рецепта -> имя настройки
        -- Порядок элементов в этом списке строго определяет порядок добавления в технологию!
        local recipe_configs =
        {
            {suffix = pipe,                       setting = setting_dye_pipes},
            {suffix = pipe_to_ground,             setting = setting_dye_pipes},
            {suffix = stone_brick,                setting = setting_dye_stone_path},
            {suffix = concrete,                   setting = setting_dye_concrete},
            {suffix = hazard_concrete,            setting = setting_dye_hazard_concrete},
            {suffix = reinforced_concrete,        setting = setting_dye_reinforced_concrete},
            {suffix = reinforced_hazard_concrete, setting = setting_dye_reinforced_hazard_concrete},
            {suffix = stone_wall,                 setting = setting_dye_stone_wall},
            {suffix = concrete_brick,             setting = setting_dye_concrete_brick}
        }
        -- 3. Результирующий массив эффектов технологии
        local tech_effects = {}
        -- 4. Генерация списка в строгом соответствии с исходным порядком
        for _, color in ipairs(colors) do
            -- Краситель (dye) всегда идет первым и не зависит от настроек предметов
            table.insert(tech_effects, {type = unlock_recipe, recipe = color .. "-dye"})
            -- Проходим по списку рецептов для текущего цвета
            for _, config in ipairs(recipe_configs) do
                local setting_name = config.setting
                -- Проверяем, включена ли настройка
                if settings.startup[setting_name].value then
                    -- ИСКЛЮЧЕНИЕ ДЛЯ ЧЕРНОГО ЦВЕТА: пропускаем обычную и улучшенную разметку
                    if color == "black" and (config.suffix == hazard_concrete or config.suffix == reinforced_hazard_concrete) then
                        -- Ничего не делаем, рецепт просто не добавится в технологию
                    else
                        if config.suffix == reinforced_concrete and (color == "orange" or color == "black") then
                            table.insert(tech_effects, {type = unlock_recipe, recipe = "planetaris-" .. color .. "-" .. config.suffix})
                        else
                            table.insert(tech_effects, {type = unlock_recipe, recipe = color .. "-" .. config.suffix})
                        end
                    end
                end
            end
        end
        -- 5. Записываем итоговый массив в технологию
        local tech_secondary_dyes = "planetaris-secondary-dyes"
        data_technology[tech_secondary_dyes].effects = tech_effects
        data_technology[tech_secondary_dyes].unit.ingredients =
        {
            {automation_science_pack, 1},
            {logistic_science_pack, 1},
            {chemical_science_pack, 1},
            {production_science_pack, 1},
            {utility_science_pack, 1},
            {space_science_pack, 1},
            {metallurgic_science_pack, 1},
            {agricultural_science_pack, 1},
            {electromagnetic_science_pack, 1}
        }
    end

    data_technology["planetaris-tellus-rocket-silo"].effects = {{type = unlock_recipe, recipe = rocket_part_tellus}}

    table.insert(data_technology[plastic .. _productivity].effects, {type = change_recipe_productivity, recipe = mycelia_plastic, change = 0.1})
end