-- [font=default-tiny-bold][/font]

if mods[secretas_frozeta_mods] then
    local steam_recycler = "steam-recycler"
    data_item[steam_recycler].subgroup = is_frozeta_building
    data_item[steam_recycler].order = a
    data_item[steam_recycler].stack_size = 32
    data_item[steam_recycler].weight = 31250
    data_recipe[steam_recycler].subgroup = is_frozeta_building
    data_recipe[steam_recycler].order = a
    data_furnace[steam_recycler].subgroup = is_frozeta_building
    data_furnace[steam_recycler].order = a
    data_furnace[steam_recycler].crafting_speed = 1

    local gold_railgun_turret = "gold-railgun-turret"
    data_item[gold_railgun_turret].subgroup = is_frozeta_building
    data_item[gold_railgun_turret].order = b
    data_item[gold_railgun_turret].stack_size = 16
    data_item[gold_railgun_turret].weight = 62500
    data_recipe[gold_railgun_turret].subgroup = is_frozeta_building
    data_recipe[gold_railgun_turret].order = b
    data_ammo_turret[gold_railgun_turret].subgroup = is_frozeta_building
    data_ammo_turret[gold_railgun_turret].order = b

    local spaceship_scrap = "spaceship-scrap"
    data_item[spaceship_scrap].subgroup = is_frozeta_recipe
    data_item[spaceship_scrap].order = a
    data_item[spaceship_scrap].stack_size = 200
    data_item[spaceship_scrap].weight = 5000
    data_resource[spaceship_scrap].subgroup = is_frozeta_recipe
    data_resource[spaceship_scrap].order = a

    local spaceship_scrap_recycling = "spaceship-scrap-recycling"
    data_recipe[spaceship_scrap_recycling].subgroup = is_frozeta_recipe
    data_recipe[spaceship_scrap_recycling].order = a_a

    data_recipe[gold_plate_mods].subgroup = is_frozeta_recipe
    data_recipe[gold_plate_mods].icons = TWO_I(gold_ore_bob, gold_plate_bob)
    data_recipe[gold_plate_mods].order = b_a

    local gold_plate_alt = "gold-plate-alt"
    data_recipe[gold_plate_alt].subgroup = is_frozeta_recipe
    data_recipe[gold_plate_alt].icons = TWO_I(gold_ore_bob, gold_plate_bob)
    data_recipe[gold_plate_alt].order = b_b

    local solid_fuel_liquefaction = "solid-fuel-liquefaction"
    data_recipe[solid_fuel_liquefaction].subgroup = is_frozeta_recipe
    data_recipe[solid_fuel_liquefaction].icons = THREE_D_I(solid_fuel, naphtha_angels, steam, naphtha_angels)
    data_recipe[solid_fuel_liquefaction].order = b_c

    local golden_biter_egg = "golden-biter-egg"
    data_item[golden_biter_egg].subgroup = is_frozeta_recipe
    data_item[golden_biter_egg].order = c
    data_item[golden_biter_egg].stack_size = 200
    data_item[golden_biter_egg].weight = 5000

    local golden_egg = "golden-egg"
    data_recipe[golden_egg].subgroup = is_frozeta_recipe
    data_recipe[golden_egg].icons = THREE_D_I(biter_egg, gold_plate_bob, jelly, golden_biter_egg)
    data_recipe[golden_egg].order = c_a

    table.insert(data_recipe[speed_module_5].ingredients, {type = item, name = golden_biter_egg, amount = 5})
    table.insert(data_recipe[efficiency_module_5].ingredients, {type = item, name = golden_biter_egg, amount = 5})
    table.insert(data_recipe[productivity_module_5].ingredients, {type = item, name = golden_biter_egg, amount = 5})
    table.insert(data_recipe[quality_module_5].ingredients, {type = item, name = golden_biter_egg, amount = 5})

    local golden_science_pack = "golden-science-pack"
    data_tool[golden_science_pack].subgroup = is_frozeta_recipe
    data_tool[golden_science_pack].order = d
    data_recipe[golden_science_pack].subgroup = is_frozeta_recipe
    data_recipe[golden_science_pack].order = d
end