if mods [tellus_mods] then
    -- CHLOROPLAST
    local chloroplast_fruit = "planetaris-chloroplast-fruit"
    data_capsule[chloroplast_fruit].subgroup = is_chloroplast
    data_capsule[chloroplast_fruit].order = a
    data_capsule[chloroplast_fruit].stack_size = 200
    data_capsule[chloroplast_fruit].fuel_category = base_fuel
    data_capsule[chloroplast_fruit].fuel_value = 1800 .. kJ

    local chloroplast_seed = "planetaris-chloroplast-seed"
    data_item[chloroplast_seed].subgroup = is_chloroplast
    data_item[chloroplast_seed].order = b
    data_item[chloroplast_seed].stack_size = 200
    data_item[chloroplast_seed].fuel_category = base_fuel
    data_item[chloroplast_seed].fuel_value = 3600 .. kJ

    local chloroplast_mash = "planetaris-chloroplast-mash"
    data_capsule[chloroplast_mash].subgroup = is_chloroplast
    data_capsule[chloroplast_mash].order = c
    data_capsule[chloroplast_mash].stack_size = 200
    data_capsule[chloroplast_mash].fuel_category = base_fuel
    data_capsule[chloroplast_mash].fuel_value = 900 .. kJ

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

    local rocket_fuel_from_chloroplast_mash = "planetaris-rocket-fuel-from-mash"
    data_recipe[rocket_fuel_from_chloroplast_mash].subgroup = is_chloroplast
    data_recipe[rocket_fuel_from_chloroplast_mash].icons = BUILDING_R_I(rocket_fuel, planet_tellus)
    data_recipe[rocket_fuel_from_chloroplast_mash].order = c_d
    data_recipe[rocket_fuel_from_chloroplast_mash].surface_conditions = data_recipe[chloroplast_processing].surface_conditions

    data_fluid[chlorophyll].subgroup = is_chloroplast
    data_fluid[chlorophyll].order = d

    local chlorophyll_mashing = "planetaris-chlorophyll-mashing"
    data_recipe[chlorophyll_mashing].subgroup = is_chloroplast
    data_recipe[chlorophyll_mashing].icons = TWO_D_I(chloroplast_fruit, nil, chlorophyll, chloroplast_seed)
    data_recipe[chlorophyll_mashing].order = d_a
    data_recipe[chlorophyll_mashing].results =
    {
        {type = fluid, name = chlorophyll, amount = 30},
        {type = item, name = chloroplast_seed, amount = 1, probability = 0.03125}
    }

    -- MAGNESIUM
    data_item[magnesium_bacteria].subgroup = is_tellus_magnesium
    data_item[magnesium_bacteria].order = a

    local magnesium_bacteria_cultivation = "planetaris-magnesium-bacteria-cultivation"
    data_recipe[magnesium_bacteria_cultivation].subgroup = is_tellus_magnesium
    data_recipe[magnesium_bacteria_cultivation].icons = STONKS_I(stonks_png, magnesium_bacteria)
    data_recipe[magnesium_bacteria_cultivation].order = a_a

    local magnesium_saphirite_bacteria = "planetaris-magnesium-iron-bacteria"
    data_recipe[magnesium_saphirite_bacteria].subgroup = is_tellus_magnesium
    data_recipe[magnesium_saphirite_bacteria].icons = TWO_D_I(chloroplast_mash, nutrients, magnesium_bacteria, saphirite_bacteria)
    data_recipe[magnesium_saphirite_bacteria].order = a_b
    data_recipe[magnesium_saphirite_bacteria].ingredients =
    {
        {type = item, name = chloroplast_mash, amount = 4},
        {type = item, name = nutrients, amount = 1}
    }

    data_item[magnesium_dust].localised_description = show_formula and {chemical_formula, "Mg"} or nil
    data_item[magnesium_dust].subgroup = is_tellus_magnesium
    data_item[magnesium_dust].order = b

    data_item[magnesium_sheet].localised_description = show_formula and {chemical_formula, "Mg"} or nil
    data_item[magnesium_sheet].subgroup = is_tellus_magnesium
    data_item[magnesium_sheet].order = c
    data_recipe[magnesium_sheet].subgroup = is_tellus_magnesium
    data_recipe[magnesium_sheet].icons = TWO_I(magnesium_dust, magnesium_sheet)
    data_recipe[magnesium_sheet].order = c

    -- MYCELIA
    local mushroom_cap = "planetaris-mushroom-cap"
    data_item[mushroom_cap].subgroup = is_mycelia
    data_item[mushroom_cap].order = a
    data_item[mushroom_cap].stack_size = 200
    data_item[mushroom_cap].fuel_category = base_fuel
    data_item[mushroom_cap].fuel_value = 1800 .. kJ

    local mycelia_seed = "planetaris-myceliae-seed"
    data_item[mycelia_seed].subgroup = is_mycelia
    data_item[mycelia_seed].order = b
    data_item[mycelia_seed].stack_size = 200
    data_item[mycelia_seed].fuel_category = base_fuel
    data_item[mycelia_seed].fuel_value = 3600 .. kJ

    local mycelia = "planetaris-mycelia"
    data_item[mycelia].subgroup = is_mycelia
    data_item[mycelia].order = c
    data_item[mycelia].stack_size = 200
    data_item[mycelia].fuel_category = base_fuel
    data_item[mycelia].fuel_value = 1800 .. kJ

    local mycelia_processing = "planetaris-mycelia-processing"
    data_recipe[mycelia_processing].subgroup = is_mycelia
    data_recipe[mycelia_processing].icons = TWO_D_I(mushroom_cap, nutrients, mycelia, mycelia_seed)
    data_recipe[mycelia_processing].order = c_a
    data_recipe[mycelia_processing].results =
    {
        {type = item, name = mycelia, amount = 2},
        {type = item, name = mycelia_seed, amount = 1, probability = 0.03125}
    }

    local mycelia_composite = "planetaris-mycelia-composite"
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

    local mycelia_plastic = "planetaris-mycelia-plastic"
    data_recipe[mycelia_plastic].subgroup = is_mycelia
    data_recipe[mycelia_plastic].icons = FOUR_D_I(mycelia, magnesium_dust, water, nutrients, plastic)
    data_recipe[mycelia_plastic].order = d_b
    data_recipe[mycelia_plastic].ingredients =
    {
        {type = item, name = mycelia, amount = 4},
        {type = item, name = magnesium_dust, amount = 1},
        {type = item, name = nutrients, amount = 1},
        {type = fluid, name = water, amount = 15}
    }

    local stiratite_bacteria_from_mycelia = "planetaris-copper-bacteria"
    data_recipe[stiratite_bacteria_from_mycelia].subgroup = is_mycelia
    data_recipe[stiratite_bacteria_from_mycelia].icons = FOUR_I(mushroom_cap, mycelia, nutrients, stiratite_bacteria)
    data_recipe[stiratite_bacteria_from_mycelia].order = d_c

    -- RECIPE
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

    local mushell_seed = "planetaris-mushell-seed"
    data_item[mushell_seed].subgroup = is_tellus_recipe
    data_item[mushell_seed].order = c
    data_item[mushell_seed].stack_size = 200
    data_item[mushell_seed].fuel_category = base_fuel
    data_item[mushell_seed].fuel_value = 3600 .. kJ

    -- BUILDING
    local bioassembler_dead = "planetaris-bioassembler-dead"
    data_assembling[bioassembler_dead].minable.result = compost_angels
    data_assembling[bioassembler_dead].minable.count = 8

    local incubator_dead = "planetaris-incubator-dead"
    data_assembling[incubator_dead].minable.result = compost_angels
    data_assembling[incubator_dead].minable.count = 8

    -- TECHNOLOGY
    local tech_agriculture = "planetaris-agriculture"
    data_technology[tech_agriculture].effects =
    {
        {type = unlock_recipe, recipe = magnesium_dust},
        {type = unlock_recipe, recipe = magnesium_sheet},
        {type = unlock_recipe, recipe = compost_tellus},
        {type = unlock_recipe, recipe = mycelia_compost},
        {type = unlock_recipe, recipe = bioflux_from_compost}
    }
end