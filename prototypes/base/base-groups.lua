-- LOGISTICS
is_medium_electric_pole = "is-medium-electric-pole"
is_big_electric_pole = "is-big-electric-pole"
is_substation = "is-substation"
is_pipe = "bob-pipe"
is_pipe_to_ground = "bob-pipe-to-ground"
TIMSABA.functions.create_subgroups("logistics",
{
    {name = is_medium_electric_pole, order = d_a},
    {name = is_big_electric_pole,    order = d_b},
    {name = is_substation,           order = d_c}
})

-- PRODUCTION
is_energy_steam_turbine = "is-energy-steam-turbine"
is_solar_panel_small = "solar-panel-small"
is_solar_panel_large = "solar-panel-large"
is_extraction_machine_mining = "is-extraction-machine-mining"
is_extraction_machine_muluna = "is-extraction-machine-muluna"
is_extraction_machine_maraxsis = "is-extraction-machine-maraxsis"
is_extraction_machine_pumpjack = "is-extraction-machine-pumpjack"
is_lab = "is-lab"
TIMSABA.functions.create_subgroups("production",
{
    {name = is_energy_steam_turbine,        order = b_b},
    {name = is_solar_panel_small,           order = b_d},
    {name = is_solar_panel_large,           order = b_f},
    {name = is_extraction_machine_mining,   order = c_a},
    {name = is_extraction_machine_pumpjack, order = c_d},
    {name = is_lab,                         order = e_b}
})

if mods [muluna_mods] then
    TIMSABA.functions.create_subgroups("production", {{name = is_extraction_machine_muluna, order = c_b}})
end

if mods [maraxsis_mods] then
    TIMSABA.functions.create_subgroups("production", {{name = is_extraction_machine_maraxsis, order = c_c}})
end

-- INTERMEDIATE PRODUCTS
is_alien_science_pack = "is-alien-science-pack"
is_gears = "bob-gears"
is_bearing_ball = "bob-bearings"
is_bearing = "is-bearing"
data_item_subgroup["bob-electronic-components"].order = d
is_boards = "bob-boards"
data_item_subgroup[is_boards].order = d_a
is_circuit_boards = "is-circuit-boards"
data_item_subgroup["bob-electronic-boards"].order = d_c
is_nuclear_item = "is-nuclear-item"
is_nuclear_recipe = "is-nuclear-recipe"
is_uranium_235_item = "is-uranium-235-item"
is_uranium_235_recipe = "is-uranium-235_recipe"
is_nuclear_cell = "is-nuclear-cell"
TIMSABA.functions.create_subgroups("intermediate-products",
{
    {name = is_alien_science_pack, order = a_a},
    {name = is_bearing, order = b_c},
    {name = is_circuit_boards, order = d_b},
    {name = is_nuclear_item, order = e},
    {name = is_nuclear_recipe, order = e_a},
    {name = is_uranium_235_item, order = e_b},
    {name = is_uranium_235_recipe, order = e_c},
    {name = is_nuclear_cell, order = e_d}
})

-- COMBAT
is_shotgun = "is-shotgun"
is_laser = "is-laser"
is_rocket = "is-rocket"
is_flame = "is-flame"
is_bullet_projectile = "is-bullet-projectile"
is_bullet = "is-bullet"
is_ammo_magazine = "is-ammo-magazine"
is_ammo_shotgun = "is-ammo-shothun"
is_ammo_rocket = "is-ammo-rocket"
is_rocket_warhead = "is-rocket-warhead"
is_combat_robots_entites = "is-combat-robots-entites"
is_combat_robots = "is-combat-robots"
is_combat_robot_brain = "is-combat-robot-brain"
is_combat_robot_tool = "is-combat-robot-tool"
is_equipment_2 = "is-equipment-2"
is_equipment_3 = "is-equipment-3"
is_equipment_4 = "is-equipment-4"
is_equipment_5 = "is-equipment-5"
is_utility_equipment_2 = "is-utility-equipment-2"
is_utility_equipment_3 = "is-utility-equipment-3"
is_utility_equipment_4 = "is-utility-equipment-4"
is_military_equipment_2 = "is-military-equipment-2"
is_vehicle_equipment_2 = "is-vehicle-equipment-2"
is_vehicle_equipment_3 = "is-vehicle-equipment-3"
is_vehicle_equipment_4 = "is-vehicle-equipment-4"
is_vehicle_equipment_5 = "is-vehicle-equipment-5"
is_vehicle_equipment_6 = "is-vehicle-equipment-6"
is_vehicle_equipment_7 = "is-vehicle-equipment-7"
is_vehicle_equipment_8 = "is-vehicle-equipment-8"
is_vehicle_equipment_9 = "is-vehicle-equipment-9"
is_vehicle_equipment_10 = "is-vehicle-equipment-10"
is_vehicle_equipment_11 = "is-vehicle-equipment-11"
is_vehicle_equipment_12 = "is-vehicle-equipment-12"
is_defensive_structure_2 = "is-defensive-structure-2"
is_turret_2 = "is-turret-2"
is_turret_3 = "is-turret-3"
is_turret_4 = "is-turret-4"
is_turret_5 = "is-turret-5"
TIMSABA.functions.create_subgroups("combat",
{
    {name = is_shotgun,                order = a_a},
    {name = is_laser,                  order = a_b},
    {name = is_rocket,                 order = a_c},
    {name = is_flame,                  order = a_d},
    {name = is_bullet_projectile,      order = b_b},
    {name = is_bullet,                 order = b_c},
    {name = is_ammo_magazine,          order = b_d},
    {name = is_ammo_shotgun,           order = b_e},
    {name = is_rocket_warhead,         order = b_f},
    {name = is_ammo_rocket,            order = b_g},
    {name = is_combat_robots_entites,  order = c_a},
    {name = is_combat_robots,          order = c_c},
    {name = is_combat_robot_brain,     order = c_d},
    {name = is_combat_robot_tool,      order = c_e},
    {name = is_equipment_2,            order = e_a},
    {name = is_equipment_3,            order = e_b},
    {name = is_equipment_4,            order = e_c},
    {name = is_equipment_5,            order = e_d},
    {name = is_utility_equipment_2,    order = f_a},
    {name = is_utility_equipment_3,    order = f_b},
    {name = is_utility_equipment_4,    order = f_c},
    {name = is_military_equipment_2,   order = g_a},
    {name = is_vehicle_equipment_2,    order = g_c},
    {name = is_vehicle_equipment_3,    order = g_d},
    {name = is_vehicle_equipment_4,    order = g_e},
    {name = is_vehicle_equipment_5,    order = g_f},
    {name = is_vehicle_equipment_6,    order = g_g},
    {name = is_vehicle_equipment_7,    order = g_h},
    {name = is_vehicle_equipment_8,    order = g_i},
    {name = is_vehicle_equipment_9,    order = g_j},
    {name = is_vehicle_equipment_10,   order = g_k},
    {name = is_vehicle_equipment_11,   order = g_l},
    {name = is_vehicle_equipment_12,   order = g_m},
    {name = is_defensive_structure_2,  order = h_a},
    {name = is_turret_2,               order = i_a},
    {name = is_turret_3,               order = i_b},
    {name = is_turret_4,               order = i_c},
    {name = is_turret_5,               order = i_d}
})