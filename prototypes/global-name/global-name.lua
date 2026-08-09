--GLOBAL NAME data.raw[""]
data_tool = data.raw["tool"]
data_item = data.raw["item"]
data_fluid = data.raw["fluid"]
data_recipe = data.raw["recipe"]
data_technology = data.raw["technology"]
data_tile = data.raw["tile"]
data_entity = data.raw["simple-entity"]
data_item_entity = data.raw["item-with-entity-data"]
data_assembling = data.raw["assembling-machine"]
data_furnace = data.raw["furnace"]
data_mining_drill = data.raw["mining-drill"]
data_boiler = data.raw["boiler"]
data_generator = data.raw["generator"]
data_generator_fusion = data.raw["fusion-generator"]
data_reactor = data.raw["reactor"]
data_reactor_fusion = data.raw["fusion-reactor"]
data_agricultural_tower = data.raw["agricultural-tower"]
data_container = data.raw["container"]
data_logistic_container = data.raw["logistic-container"]
data_temporary_container = data.raw["temporary-container"]
data_item_subgroup = data.raw["item-subgroup"]
data_inserter = data.raw["inserter"]
data_transport_belt = data.raw["transport-belt"]
data_underground_belt = data.raw["underground-belt"]
data_splitter = data.raw["splitter"]
data_pipe = data.raw["pipe"]
data_pipe_to_ground = data.raw["pipe-to-ground"]
data_valve = data.raw["valve"]
data_armor = data.raw["armor"]
data_gun = data.raw["gun"]
data_ammo = data.raw["ammo"]
data_ammo_turret = data.raw["ammo-turret"]
data_electric_turret = data.raw["electric-turret"]
data_artillery_turret = data.raw["artillery-turret"]
data_capsule = data.raw["capsule"]
data_lab = data.raw["lab"]
data_resource = data.raw["resource"]
data_fish = data.raw["fish"]
data_plant = data.raw["plant"]
data_tree = data.raw["tree"]
data_car = data.raw["car"]
data_asteroid = data.raw["asteroid"]
data_locomotive = data.raw["locomotive"]
data_wagon_fluid = data.raw["fluid-wagon"]
data_wagon_cargo = data.raw["cargo-wagon"]
data_wagon_artillery = data.raw["artillery-wagon"]
data_rail_straight = data.raw["straight-rail"]
data_rail_ramp = data.raw["rail-ramp"]
data_rail_planner = data.raw["rail-planner"]
data_electric_pole = data.raw["electric-pole"]
data_solar_panel = data.raw["solar-panel"]
data_accumulator = data.raw["accumulator"]
data_module = data.raw["module"]
data_beacon = data.raw["beacon"]
data_constant_combinator = data.raw["constant-combinator"]
data_roboport = data.raw["roboport"]
data_asteroid_collector = data.raw["asteroid-collector"]
data_wall = data.raw["wall"]
data_gate = data.raw["gate"]
data_land_mine = data.raw["land-mine"]
data_storage_tank = data.raw["storage-tank"]
data_lightning_attractor = data.raw["lightning-attractor"]
data_burner_generator = data.raw["burner-generator"]
data_radar = data.raw["radar"]
data_planet = data.raw["planet"]
data_fluid_turret = data.raw["fluid-turret"]
data_heat_pipe = data.raw["heat-pipe"]
data_surface = data.raw["surface"]
data_pump = data.raw["pump"]
data_pump_offshore = data.raw["offshore-pump"]
data_spider_vechicle = data.raw["spider-vehicle"]
data_item_group = data.raw["item-group"]
data_repair_tool = data.raw["repair-tool"]
data_space_location = data.raw["space-location"]
data_lamp = data.raw["lamp"]
data_electric_energy_interface = data.raw["electric-energy-interface"]
data_construction_robot = data.raw["construction-robot"]
data_logistic_robot = data.raw["logistic-robot"]
data_thruster = data.raw["thruster"]
data_character_corpse = data.raw["character-corpse"]
data_unit = data.raw["unit"]
data_unit_spawner = data.raw["unit-spawner"]
data_combat_robot = data.raw["combat-robot"]
data_projectile = data.raw["projectile"]
data_equipment_grid = data.raw["equipment-grid"]
data_solar_panel_eq = data.raw["solar-panel-equipment"]
data_generator_eq = data.raw["generator-equipment"]
data_roboport_eq = data.raw["roboport-equipment"]
data_battery_eq = data.raw["battery-equipment"]
data_movement_bonus_eq = data.raw["movement-bonus-equipment"]
data_night_vision_eq = data.raw["night-vision-equipment"]
data_belt_immunity_eq = data.raw["belt-immunity-equipment"]
data_energy_shield_eq = data.raw["energy-shield-equipment"]
data_active_defense_eq = data.raw["active-defense-equipment"]
data_rocket_silo = data.raw["rocket-silo"]
data_SP_starter_pack = data.raw["space-platform-starter-pack"]
data_spidertron_remote = data.raw["spidertron-remote"]

-- GLOBAL NAME
item = "item"
fluid = "fluid"
recipe = "recipe"
technology = "technology"
ammo = "ammo"
transport_belt = "transport-belt"
underground_belt = "underground-belt"
splitter = "splitter"
pipe = "pipe"
pipe_to_ground = "pipe-to-ground"
boiler = "boiler"
generator = "generator"
burner_generator = "burner-generator"
solar_panel = "solar-panel"
accumulator = "accumulator"
mining_drill = "mining-drill"
reactor = "reactor"
furnace = "furnace"
assembling_machine = "assembling-machine"
lab = "lab"
tile = "tile"
wall = "wall"
minable = "minable"
unlock_recipe = "unlock-recipe"
unlock_space_location = "unlock-space-location"
change_recipe_productivity = "change-recipe-productivity"
input = "input"
output = "output"
input_output = "input-output"
secondary_input = "secondary-input"
item_group = "item-group"
item_subgroup = "item-subgroup"
extra_high = "extra-high"
high = "high"
power = "power"
medium = "medium"
big = "big"
big_tint = "big-tint"
small = "small"
electric = "electric"
mining = "mining"
assembly = "assembly"
refining = "refining"
petrochem = "petrochem"
kW = "kW"
kJ = "kJ"
J = "J"
drain = 15
gravity = "gravity"
pressure = "pressure"
oxygen = "oxygen"
tertiary = "tertiary"

craft_item = "craft-item"
craft_fluid = "craft-fluid"
mine_entity = "mine-entity"

show_formula = settings.startup["angels-show-chemical-formula"].value
chemical_formula = "tooltip-description.chemical-formula"

-- RECIPE CATEGORY
crafting = "crafting"
advanced_crafting = "advanced-crafting"
crafting_fluid = "crafting-with-fluid"
pressing = "pressing"
electronics_fluid = "electronics-with-fluid"
electronics_assembling = "electronics-or-assembling"
smelting = "smelting"
smelting_filtering = "bob-mixing-furnace"
smelting_chemical = "bob-chemical-furnace"
chemistry = "chemistry"
centrifuging = "centrifuging"
angels_centrifuging_2 = "angels-centrifuging-2"
angels_centrifuging_3 = "angels-centrifuging-3"
crushing = "crushing"
metallurgy = "metallurgy"
metallurgy_assembling = "metallurgy-or-assembling"
organic = "organic"
organic_hand_crafting = "organic-or-hand-crafting"
organic_assembling = "organic-or-assembling"
recycling_hand_crafting = "recycling-or-hand-crafting"
electromagnetics = "electromagnetics"
electronics = "electronics"
cryogenics = "cryogenics"
chemistry_or_cryogenics = "chemistry-or-cryogenics"
angels_ore_refining_T1 = "angels-ore-refining-t1"
angels_ore_refining_T2 = "angels-ore-refining-t2"
angels_ore_refining_T3 = "angels-ore-refining-t3"
angels_ore_refining_T4 = "angels-ore-refining-t4"
angels_ore_sorting_1 = "angels-ore-sorting"
angels_ore_sorting_2 = "angels-ore-sorting-2"
angels_ore_sorting_3 = "angels-ore-sorting-3"
angels_ore_sorting_4 = "angels-ore-sorting-4"
angels_ore_sorting_5 = "angels-ore-sorting-5"
angels_powderizing_1 = "angels-powderizing-1"
angels_powderizing_2 = "angels-powderizing-2"
angels_powderizing_3 = "angels-powderizing-3"
angels_processed_pressing_1 = "angels-ore-processing"
angels_processed_pressing_2 = "angels-ore-processing-2"
angels_processed_pressing_3 = "angels-ore-processing-3"
angels_processed_pressing_4 = "angels-ore-processing-4"
angels_pellet_pressing_1 = "angels-pellet-pressing"
angels_pellet_pressing_2 = "angels-pellet-pressing-2"
angels_pellet_pressing_3 = "angels-pellet-pressing-3"
angels_pellet_pressing_4 = "angels-pellet-pressing-4"
angels_powder_mixing_1 = "angels-powder-mixing"
angels_powder_mixing_2 = "angels-powder-mixing-2"
angels_powder_mixing_3 = "angels-powder-mixing-3"
angels_powder_mixing_4 = "angels-powder-mixing-4"
angels_blast_smelting_1 = "angels-blast-smelting"
angels_blast_smelting_2 = "angels-blast-smelting-2"
angels_blast_smelting_3 = "angels-blast-smelting-3"
angels_blast_smelting_4 = "angels-blast-smelting-4"
angels_chemical_smelting_1 = "angels-chemical-smelting"
angels_chemical_smelting_2 = "angels-chemical-smelting-2"
angels_chemical_smelting_3 = "angels-chemical-smelting-3"
angels_chemical_smelting_4 = "angels-chemical-smelting-4"
angels_induction_smelting_1 = "angels-induction-smelting"
angels_induction_smelting_2 = "angels-induction-smelting-2"
angels_induction_smelting_3 = "angels-induction-smelting-3"
angels_induction_smelting_4 = "angels-induction-smelting-4"
angels_casting_1 = "angels-casting"
angels_casting_2 = "angels-casting-2"
angels_casting_3 = "angels-casting-3"
angels_casting_4 = "angels-casting-4"
angels_strand_casting_1 = "angels-strand-casting"
angels_strand_casting_2 = "angels-strand-casting-2"
angels_strand_casting_3 = "angels-strand-casting-3"
angels_strand_casting_4 = "angels-strand-casting-4"
angels_sintering_1 = "angels-sintering"
angels_sintering_2 = "angels-sintering-2"
angels_sintering_3 = "angels-sintering-3"
angels_sintering_4 = "angels-sintering-4"
angels_sintering_5 = "angels-sintering-5"
angels_water_treatment = "angels-water-treatment"
angels_salination_plant = "angels-salination-plant"
angels_cooling = "angels-cooling"
angels_petrochem_electrolyser = "angels-petrochem-electrolyser"
angels_petrochem_air_filtering = "angels-petrochem-air-filtering"
angels_liquifying = "angels-liquifying"
angels_advanced_chemistry = "angels-advanced-chemistry"
angels_gas_refining = "angels-gas-refining"
angels_advanced_gas_refining = "angels-advanced-gas-refining"
angels_steam_cracking = "angels-steam-cracking"
angels_bio_processing_1 = "angels-bio-processing"
angels_bio_processing_2 = "angels-bio-processing-2"
water_production = "water-production"

-- Alphabet
a = "a" a_a = "a-a" a_b = "a-b" a_c = "a-c" a_d = "a-d" a_e = "a-e" a_f = "a-f" a_g = "a-g" a_h = "a-h" a_i = "a-i" a_j = "a-j" a_k = "a-k" a_l = "a-l" a_m = "a-m" a_n = "a-n" a_o = "a-o" a_p = "a-p" a_q = "a-q" a_r = "a-r" a_s = "a-s" a_t = "a-t" a_u = "a-u" a_v = "a-v" a_w = "a-w" a_x = "a-x" a_y = "a-y" a_z = "a-z"
b = "b" b_a = "b-a" b_b = "b-b" b_c = "b-c" b_d = "b-d" b_e = "b-e" b_f = "b-f" b_g = "b-g" b_h = "b-h" b_i = "b-i" b_j = "b-j" b_k = "b-k" b_l = "b-l" b_m = "b-m" b_n = "b-n" b_o = "b-o" b_p = "b-p" b_q = "b-q" b_r = "b-r" b_s = "b-s" b_t = "b-t" b_u = "b-u" b_v = "b-v" b_w = "b-w" b_x = "b-x" b_y = "b-y" b_z = "b-z"
c = "c" c_a = "c-a" c_b = "c-b" c_c = "c-c" c_d = "c-d" c_e = "c-e" c_f = "c-f" c_g = "c-g" c_h = "c-h" c_i = "c-i" c_j = "c-j" c_k = "c-k" c_l = "c-l" c_m = "c-m" c_n = "c-n" c_o = "c-o" c_p = "c-p" c_q = "c-q" c_r = "c-r" c_s = "c-s" c_t = "c-t" c_u = "c-u" c_v = "c-v" c_w = "c-w" c_x = "c-x" c_y = "c-y" c_z = "c-z"
d = "d" d_a = "d-a" d_b = "d-b" d_c = "d-c" d_d = "d-d" d_e = "d-e" d_f = "d-f" d_g = "d-g" d_h = "d-h" d_i = "d-i" d_j = "d-j" d_k = "d-k" d_l = "d-l" d_m = "d-m"
e = "e" e_a = "e-a" e_b = "e-b" e_c = "e-c" e_d = "e-d" e_e = "e-e" e_f = "e-f" e_g = "e-g" e_z = "e-z" e_i = "e-i" e_j = "e-j" e_k = "e-k" e_l = "e-l" e_m = "e-m"
f = "f" f_a = "f-a" f_b = "f-b" f_c = "f-c" f_d = "f-d" f_e = "f-e" f_f = "f-f" f_g = "f-g" f_h = "f-h" f_i = "f-i" f_j = "f-j" f_k = "f-k" f_l = "f-l" f_m = "f-m"
g = "g" g_a = "g-a" g_b = "g-b" g_c = "g-c" g_d = "g-d" g_e = "g-e" g_f = "g-f" g_g = "g-g" g_h = "g-h" g_i = "g-i" g_j = "g-j" g_k = "g-k" g_l = "g-l" g_m = "g-m" g_z = "g-z"
h = "h" h_a = "h-a" h_b = "h-b" h_c = "h-c" h_d = "h-d" h_e = "h-e" h_f = "h-f" h_g = "h-g" h_h = "h-h" h_i = "h-i" h_j = "h-j"
i = "i" i_a = "i-a" i_b = "i-b" i_c = "i-c" i_d = "i-d" i_e = "i-e" i_f = "i-f" i_g = "i-g"
j = "j" j_a = "j-a" j_b = "j-b" j_c = "j-c" j_d = "j-d" j_e = "j-e" j_f = "j-f" j_g = "j-g" j_h = "j-h" j_i = "j-i"
k = "k" k_a = "k-a" k_b = "k-b" k_c = "k-c" k_d = "k-d" k_e = "k-e" k_f = "k-f" k_g = "k-g"
l = "l" l_a = "l-a" l_b = "l-b" l_c = "l-c" l_d = "l-d" l_e = "l-e" l_f = "l-f" l_g = "l-g"
m = "m" m_a = "m-a" m_b = "m-b" m_c = "m-c" m_d = "m-d" m_e = "m-e" m_f = "m-f" m_g = "m-g"
n = "n" n_a = "n-a" n_b = "n-b" n_c = "n-c" n_d = "n-d" n_e = "n-e" n_f = "n-f" n_g = "n-g"
o = "o" o_a = "o-a" o_b = "o-b" o_c = "o-c" o_d = "o-d" o_e = "o-e" o_f = "o-f" o_g = "o-g"
p = "p" p_a = "p-a" p_b = "p-b" p_c = "p-c" p_d = "p-d" p_e = "p-e" p_f = "p-f" p_g = "p-g"
q = "q" q_a = "q-a" q_b = "q-b" q_c = "q-c" q_d = "q-d" q_e = "q-e" q_f = "q-f" q_g = "q-g"
r = "r" r_a = "r-a" r_b = "r-b" r_c = "r-c" r_d = "r-d" r_e = "r-e" r_f = "r-f" r_g = "r-g"
s = "s" s_a = "s-a" s_b = "s-b" s_c = "s-c" s_d = "s-d" s_e = "s-e" s_f = "s-f" s_g = "s-g"
t = "t" t_a = "t-a" t_b = "t-b" t_c = "t-c" t_d = "t-d" t_e = "t-e" t_f = "t-f" t_g = "t-g"
u = "u" u_a = "u-a" u_b = "u-b" u_c = "u-c" u_d = "u-d" u_e = "u-e" u_f = "u-f" u_g = "u-g"
v = "v" v_a = "v-a" v_b = "v-b" v_c = "v-c" v_d = "v-d" v_e = "v-e" v_f = "v-f" v_g = "v-g"
w = "w" w_a = "w-a" w_b = "w-b" w_c = "w-c" w_d = "w-d" w_e = "w-e" w_f = "w-f" w_g = "w-g"
x = "x" x_a = "x-a" x_b = "x-b" x_c = "x-c" x_d = "x-d" x_e = "x-e" x_f = "x-f" x_g = "x-g" x_h = "x-h" x_i = "x-i" x_j = "x-j" x_k = "x-k" x_l = "x-l" x_m = "x-m"
y = "y" y_a = "y-a" y_b = "y-b" y_c = "y-c" y_d = "y-d" y_e = "y-e" y_f = "y-f" y_g = "y-g"
z = "z" z_a = "z-a" z_b = "z-b" z_c = "z-c" z_d = "z-d" z_e = "z-e" z_f = "z-f" z_g = "z-g" z_h = "z-h" z_i = "z-i" z_j = "z-j" z_k = "z-k" z_l = "z-l" z_m = "z-m" z_y = "z-y" z_z = "z-z"

-- ICONS
number_1 = "__TIMSABA__/graphics/icons/numbers/num-1.png"
number_2 = "__TIMSABA__/graphics/icons/numbers/num-2.png"
number_3 = "__TIMSABA__/graphics/icons/numbers/num-3.png"
number_4 = "__TIMSABA__/graphics/icons/numbers/num-4.png"
number_5 = "__TIMSABA__/graphics/icons/numbers/num-5.png"
number_6 = "__TIMSABA__/graphics/icons/numbers/num-6.png"
number_7 = "__TIMSABA__/graphics/icons/numbers/num-7.png"
number_8 = "__TIMSABA__/graphics/icons/numbers/num-8.png"
number_9 = "__TIMSABA__/graphics/icons/numbers/num-9.png"
number_10 = "__TIMSABA__/graphics/icons/numbers/num-10.png"

error_png = "__TIMSABA__/graphics/icons/error.png"
deleted_png = "__TIMSABA__/graphics/icons/deleted.png"
recycling_png = "__TIMSABA__/graphics/icons/recycling.png"
cooled_png = "__TIMSABA__/graphics/icons/cooled.png"
cooling_png = "__TIMSABA__/graphics/icons/cooling.png"
heating_png = "__TIMSABA__/graphics/icons/heating.png"
stonks_png = "__TIMSABA__/graphics/icons/stonks.png"

NHH = "__TIMSABA__/graphics/icons/fluid/NHH.png"
_C2H4_O2H2_ = "__TIMSABA__/graphics/icons/fluid/C2H4(OH)2.png"
_C6F12O_ = "__TIMSABA__/graphics/icons/fluid/C6F12O.png"

tech_error_png = "__TIMSABA__/graphics/icons/tech-error.png"

-- SPACE
planet_nauvis = "nauvis"
planet_vulcanus = "vulcanus"
planet_gleba = "gleba"
planet_fulgora = "fulgora"
planet_aquilo = "aquilo"
space_platform =  "space-platform"
rocket_part =  "rocket-part"

-- OTHERS
_recycling = "-recycling"
_ground_digger = "-ground-digger"
item_ = "item-"
ammo_ = "ammo-"
_panglia_crushing = "-panglia_crushing"
_panglia_fast_version = "_panglia_fast_version"
_technology = "-technology"
_smelting = "-smelting"
_processing = "-processing"
_productivity = "-productivity"