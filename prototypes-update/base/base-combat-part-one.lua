data_gun[pistol].stack_size = 1
data_gun[pistol].weight = 1000000

local submachine_gun = "submachine-gun"
data_gun[submachine_gun].stack_size = 1
data_gun[submachine_gun].weight = 1000000
data_recipe[submachine_gun].ingredients =
{
    {type = item, name = iron_gear_wheel, amount = 8},
    {type = item, name = pistol, amount = 1},
    {type = item, name = copper_plate, amount = 4},
    {type = item, name = iron_plate, amount = 8}
}

local rifle = "bob-rifle"
local sniper_rifel = "bob-sniper-rifle"
if mods[bobwarfare] then
    data_gun[rifle].stack_size = 1
    data_gun[rifle].weight = 1000000
    data_recipe[rifle].energy_required = 1
    data_recipe[rifle].ingredients =
    {
        {type = item, name = steel_gear_wheel, amount = 8},
        {type = item, name = submachine_gun, amount = 1},
        {type = item, name = aluminium_plate_bob, amount = 4},
        {type = item, name = steel_plate, amount = 8}
    }

    data_gun[sniper_rifel].stack_size = 1
    data_gun[sniper_rifel].weight = 1000000
    data_recipe[sniper_rifel].energy_required = 1
    data_recipe[sniper_rifel].ingredients =
    {
        {type = item, name = steel_gear_wheel, amount = 4},
        {type = item, name = rifle, amount = 1},
        {type = item, name = wood, amount = 2},
        {type = item, name = steel_plate, amount = 4}
    }
end

local firearm_magazines =
{
    {name = firearm_magazine,         order = b},
    {name = piercing_rounds_magazine, order = c},
    {name = uranium_rounds_magazine,  order = d}
}
for _, AMMO in pairs(firearm_magazines) do
    if data_ammo[AMMO.name] then
        data_ammo[AMMO.name].subgroup = is_gun
        data_ammo[AMMO.name].order = AMMO.order
        data_ammo[AMMO.name].magazine_size = 30
        data_ammo[AMMO.name].stack_size = 200
        data_recipe[AMMO.name].subgroup = is_gun
        data_recipe[AMMO.name].order = AMMO.order
    end
end
data_recipe[firearm_magazine].icons = R_P_I(firearm_magazine, nil, nil, number_1)

data_recipe[piercing_rounds_magazine].icons = R_P_I(piercing_rounds_magazine, nil, nil, number_1)
data_recipe[piercing_rounds_magazine].energy_required = 1
data_recipe[piercing_rounds_magazine].ingredients =
{
    {type = item, name = firearm_magazine, amount = 1},
    {type = item, name = steel_plate, amount = 2},
    {type = item, name = lead_plate_bob, amount = 2}
}

data_recipe[uranium_rounds_magazine].energy_required = 1
data_recipe[uranium_rounds_magazine].ingredients =
{
    {type = item, name = piercing_rounds_magazine, amount = 1},
    {type = item, name = uranium_238, amount = 2},
    {type = item, name = brass_plate_bob, amount = 2}
}
data_recipe[uranium_rounds_magazine].results[1].amount = 2

local shotgun = "shotgun"
data_gun[shotgun].subgroup = is_shotgun
data_gun[shotgun].order = a
data_gun[shotgun].stack_size = 1
data_gun[shotgun].weight = 1000000
data_recipe[shotgun].subgroup = is_shotgun
data_recipe[shotgun].order = a
data_recipe[shotgun].energy_required = 1
data_recipe[shotgun].ingredients =
{
    {type = item, name = iron_gear_wheel, amount = 4},
    {type = item, name = copper_plate, amount = 8},
    {type = item, name = iron_plate, amount = 16},
    {type = item, name = wood, amount = 4}
}

local combat_shotgun = "combat-shotgun"
data_gun[combat_shotgun].subgroup = is_shotgun
data_gun[combat_shotgun].order = b
data_gun[combat_shotgun].stack_size = 1
data_gun[combat_shotgun].weight = 1000000
data_recipe[combat_shotgun].subgroup = is_shotgun
data_recipe[combat_shotgun].order = b
data_recipe[combat_shotgun].energy_required = 1
data_recipe[combat_shotgun].ingredients =
{
    {type = item, name = steel_gear_wheel, amount = 4},
    {type = item, name = shotgun, amount = 1},
    {type = item, name = steel_plate, amount = 16},
    {type = item, name = copper_plate, amount = 8}
}

local shotgun_shells =
{
    {name = shotgun_shell,          order = c},
    {name = piercing_shotgun_shell, order = d},
    {name = uranium_shotgun_shell,  order = e}
}
for _, AMMO in pairs(shotgun_shells) do
    if data_ammo[AMMO.name] then
        data_ammo[AMMO.name].subgroup = is_shotgun
        data_ammo[AMMO.name].order = AMMO.order
        data_ammo[AMMO.name].magazine_size = 30
        data_ammo[AMMO.name].stack_size = 200
        data_recipe[AMMO.name].subgroup = is_shotgun
        data_recipe[AMMO.name].order = AMMO.order
    end
end
data_recipe[shotgun_shell].energy_required = 1

data_recipe[piercing_shotgun_shell].energy_required = 2
data_recipe[piercing_shotgun_shell].ingredients =
{
    {type = item, name = shotgun_shell, amount = 2},
    {type = item, name = copper_plate, amount = 4},
    {type = item, name = steel_plate, amount = 2}
}
data_recipe[piercing_shotgun_shell].results[1].amount = 2

if mods[bobwarfare] then
    data_recipe[uranium_shotgun_shell].energy_required = 2
    data_recipe[uranium_shotgun_shell].ingredients =
    {
        {type = item, name = piercing_shotgun_shell, amount = 2},
        {type = item, name = uranium_238, amount = 4},
        {type = item, name = brass_plate_bob, amount = 2}
    }
    data_recipe[uranium_shotgun_shell].results[1].amount = 2
end

local laser = "bob-laser-rifle"
if mods[bobwarfare] then
    data_gun[laser].subgroup = is_laser
    data_gun[laser].order = a
    data_gun[laser].stack_size = 1
    data_gun[laser].weight = 1000000
    data_recipe[laser].subgroup = is_laser
    data_recipe[laser].order = a
    data_recipe[laser].energy_required = 1
    data_recipe[laser].ingredients =
    {
        {type = item, name = steel_gear_wheel, amount = 4},
        {type = item, name = advanced_circuit, amount = 4},
        {type = item, name = steel_plate, amount = 8},
        {type = item, name = plastic, amount = 4}
    }
end


local laser_batterys =
{
    {name = laser_battery_1, order = b},
    {name = laser_battery_2, order = c},
    {name = laser_battery_3, order = d},
    {name = laser_battery_4, order = e},
    {name = laser_battery_5, order = f},
    {name = laser_battery_6, order = g},
    {name = laser_battery_7, order = h}
}
for _, AMMO in pairs(laser_batterys) do
    if data_ammo[AMMO.name] then
        data_ammo[AMMO.name].subgroup = is_laser
        data_ammo[AMMO.name].order = AMMO.order
        data_ammo[AMMO.name].magazine_size = 30
        data_ammo[AMMO.name].stack_size = 200
        data_recipe[AMMO.name].subgroup = is_laser
        data_recipe[AMMO.name].order = AMMO.order
        data_recipe[AMMO.name].energy_required = 1
    end
end

data_gun[rocket_launcher].subgroup = is_rocket
data_gun[rocket_launcher].order = a
data_gun[rocket_launcher].stack_size = 1
data_gun[rocket_launcher].weight = 1000000
data_recipe[rocket_launcher].subgroup = is_rocket
data_recipe[rocket_launcher].order = a
data_recipe[rocket_launcher].energy_required = 1
data_recipe[rocket_launcher].ingredients =
{
    {type = item, name = steel_gear_wheel, amount = 8},
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = steel_plate, amount = 8}
}

local rockets =
{
    {name = rocket,           order = b},
    {name = explosive_rocket, order = c},
    {name = atomic_rocket,    order = d}
}
for _, AMMO in pairs(rockets) do
    if data_ammo[AMMO.name] then
        data_ammo[AMMO.name].subgroup = is_rocket
        data_ammo[AMMO.name].order = AMMO.order
        data_ammo[AMMO.name].stack_size = 200
        data_recipe[AMMO.name].subgroup = is_rocket
        data_recipe[AMMO.name].order = AMMO.order
    end
end
data_ammo[atomic_rocket].stack_size = 32
data_ammo[atomic_rocket].weight = 31250
data_recipe[atomic_rocket].energy_required = 64
data_recipe[atomic_rocket].icons = R_P_I(atomic_rocket, uranium_235, nil, number_1)
data_recipe[atomic_rocket].ingredients =
{
    {type = item, name = advanced_processing_unit, amount = 8},
    {type = item, name = uranium_235, amount = 16},
    {type = item, name = rocket_booster_angels, amount = 1},
    {type = item, name = explosives, amount = 8}
}

atomic_rocket_2 = "angels-atomic-bomb"
data_recipe[atomic_rocket_2].order = d_a
data_recipe[atomic_rocket_2].energy_required = 32
if mods[shattered_mods] then
    data_recipe[atomic_rocket_2].icons = R_P_I(atomic_rocket, plutonium_239_shattered, nil, number_2)
    data_recipe[atomic_rocket_2].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = plutonium_239_shattered, amount = 32},
        {type = item, name = rocket_booster_angels, amount = 1},
        {type = item, name = explosives, amount = 8}
    }
else
    data_recipe[atomic_rocket_2].icons = R_P_I(atomic_rocket, plutonium_239_bob, nil, number_2)
    data_recipe[atomic_rocket_2].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 8},
        {type = item, name = plutonium_239_bob, amount = 32},
        {type = item, name = rocket_booster_angels, amount = 1},
        {type = item, name = explosives, amount = 8}
    }
end

atomic_rocket_3 = "angels-atomic-bomb-2"
data_recipe[atomic_rocket_3].order = d_b
data_recipe[atomic_rocket_3].energy_required = 32
data_recipe[atomic_rocket_3].icons = R_P_I(atomic_rocket, muon_fusion_catalyst, nil, number_3)
data_recipe[atomic_rocket_3].ingredients =
{
    {type = item, name = advanced_processing_unit, amount = 16},
    {type = item, name = muon_fusion_catalyst, amount = 1},
    {type = item, name = rocket_booster_angels, amount = 2},
    {type = item, name = explosives, amount = 16},
    {type = fluid, name = deuterium_angels, amount = 960}
}

local flamethrower = "flamethrower"
data_gun[flamethrower].subgroup = is_flame
data_gun[flamethrower].order = a
data_gun[flamethrower].stack_size = 1
data_gun[flamethrower].weight = 1000000
data_recipe[flamethrower].subgroup = is_flame
data_recipe[flamethrower].order = a
data_recipe[flamethrower].energy_required = 8
data_recipe[flamethrower].ingredients =
{
    {type = item, name = iron_gear_wheel, amount = 8},
    {type = item, name = steel_plate, amount = 4}
}

data_ammo[flamethrower_ammo].subgroup = is_flame
data_ammo[flamethrower_ammo].order = b
data_ammo[flamethrower_ammo].magazine_size = 120
data_ammo[flamethrower_ammo].stack_size = 200
data_recipe[flamethrower_ammo].subgroup = is_flame
data_recipe[flamethrower_ammo].order = b
data_recipe[flamethrower_ammo].category = chemistry
data_recipe[flamethrower_ammo].energy_required = 4
data_recipe[flamethrower_ammo].ingredients =
{
    {type = item, name = steel_plate, amount = 4},
    {type = fluid, name = fuel_oil_angels, amount = 60},
    {type = fluid, name = naphtha_angels, amount = 60}
}

local cannon_shells =
{
    cannon_shell,
    explosive_cannon_shell,
    uranium_cannon_shell,
    uranium_explosive_cannon_shell
}
for _, name in pairs(cannon_shells) do
    data_ammo[name].stack_size = 128
    data_ammo[name].weight = 7812.5
    data_recipe[name].energy_required = 8
end

data_recipe[uranium_cannon_shell].ingredients[2].amount = 8

data_recipe[uranium_explosive_cannon_shell].ingredients[2].amount = 8

data_ammo[artillery_shell].stack_size = 32
data_ammo[artillery_shell].weight = 31250
data_recipe[artillery_shell].icons = R_P_I(artillery_shell, nil, tungsten_plate_bob)
data_recipe[artillery_shell].energy_required = 16
data_recipe[artillery_shell].ingredients =
{
    {type = item, name = explosive_cannon_shell, amount = 4},
    {type = item, name = tungsten_plate_bob, amount = 4},
    {type = item, name = explosives, amount = 8},
    {type = item, name = calcite, amount = 1}
}

if mods[bobwarfare] then
    data_ammo[atomic_artillery_shell].stack_size = 32
    data_ammo[atomic_artillery_shell].weight = 31250
    if mods[shattered_mods] then
        data_recipe[atomic_artillery_shell].icons = R_P_I(atomic_artillery_shell, nil, plutonium_239_shattered)
    else
        data_recipe[atomic_artillery_shell].icons = R_P_I(atomic_artillery_shell, nil, plutonium_239_bob)
    end
    data_recipe[atomic_artillery_shell].energy_required = 64
    data_recipe[atomic_artillery_shell].ingredients =
    {
        {type = item, name = artillery_shell, amount = 1},
        {type = item, name = plutonium_239_bob, amount = 32},
        {type = item, name = tungsten_carbide_plate_bob, amount = 4},
        {type = item, name = calcite, amount = 1}
    }
end

local is_ammo_parts = "bob-ammo-parts"
if mods[bobwarfare] then
    data_item_subgroup[is_ammo_parts].group = "combat"
    data_item_subgroup[is_ammo_parts].order = b_a
end

local petroleum_jelly = "bob-petroleum-jelly"
local gun_cotton = "bob-gun-cotton"
local cordite = "bob-cordite"
local bullet_casing = "bob-bullet-casing"
local magazine = "bob-magazine"
local shotgun_shell_casing = "bob-shotgun-shell-casing"
local shotgun_pellets = "bob-shot"
local laser_case = "bob-laser-rifle-battery-case"
local rocket_engine = "bob-rocket-engine"
local rocket_body = "bob-rocket-body"
local ammo_parts =
{
    {name = petroleum_jelly,      order = a},
    {name = gun_cotton,           order = b},
    {name = cordite,              order = c},
    {name = bullet_casing,        order = d},
    {name = magazine,             order = e},
    {name = shotgun_shell_casing, order = f},
    {name = shotgun_pellets,      order = g},
    {name = laser_case,           order = h},
    {name = rocket_engine,        order = i},
    {name = rocket_body,          order = j}
}
for _, ITEM in pairs(ammo_parts) do
    if data_item[ITEM.name] then
        data_item[ITEM.name].order = ITEM.order
        data_item[ITEM.name].stack_size = 200
        data_recipe[ITEM.name].order = ITEM.order
    end
end
if mods[bobwarfare] then
    data_item[petroleum_jelly].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]32[/font]H[font=default-tiny-bold]66[/font]"} or nil
    data_recipe[petroleum_jelly].icons = TWO_D_I(hydrogen_angels, carbon_monoxide_angels, petroleum_jelly, steam)
    data_recipe[petroleum_jelly].energy_required = 8 -- (2n+1)H₂ + nCO --> CₙH₍₂ₙ₊₂₎ + nH₂O (n = 32) petroleum_jelly (18-35)
    data_recipe[petroleum_jelly].ingredients =
    {
        {type = fluid, name = hydrogen_angels, amount = 975},
        {type = fluid, name = carbon_monoxide_angels, amount = 480},
        {type = item, name = catalyst_red, amount = 1}
    }
    data_recipe[petroleum_jelly].results =
    {
        {type = item, name = petroleum_jelly, amount = 1},
        {type = fluid, name = steam, amount = 480, ignored_by_productivity = 0},
        {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 0}
    }
    data_recipe[petroleum_jelly].main_product = petroleum_jelly

    data_item[gun_cotton].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]6[/font]H[font=default-tiny-bold]7[/font]N[font=default-tiny-bold]3[/font]O[font=default-tiny-bold]11[/font]"} or nil
    data_recipe[gun_cotton].category = chemistry
    data_recipe[gun_cotton].icons = TWO_D_I(cellulose_fiber_angels, nitric_acid_angels, gun_cotton, water_purified_angels)
    data_recipe[gun_cotton].energy_required = 2 -- (C₆H₁₀O₅)n + HNO₃ -H₂SO₄-> C₆H₇N₃O₁₁ + H₂O / n = 1
    -- data_recipe[gun_cotton].ingredients --> "mods-final-fix/final-fix-mods"
    data_recipe[gun_cotton].results =
    {
        {type = item, name = gun_cotton, amount = 4},
        {type = fluid, name = sulfuric_acid_angels, amount = 30, ignored_by_productivity = 0},
        {type = fluid, name = water_purified_angels, amount = 60, ignored_by_productivity = 0}
    }
    data_recipe[gun_cotton].main_product = gun_cotton

    --data_fluid[nitroglycerin_bob].icons = nil
    --data_fluid[nitroglycerin_bob].icon = "__TIMSABA__/graphics/icons/bobs/bob-nitroglycerin.png"

    data_recipe[cordite].category = chemistry
    data_recipe[cordite].icons = THREE_D_I(gun_cotton, petroleum_jelly, nitroglycerin_bob, cordite)
    data_recipe[cordite].energy_required = 8 -- 18C₆H₇N₃O₁₁ + C₃₀H₆₂ + 11C₃H₅N₃O₉ -aceton-> cordite ???
    data_recipe[cordite].ingredients =
    {
        {type = item, name = gun_cotton, amount = 16},
        {type = item, name = petroleum_jelly, amount = 1},
        {type = fluid, name = nitroglycerin_bob, amount = 240},
        {type = fluid, name = acetone_angels, amount = 60}
    }
    data_recipe[cordite].results =
    {
        {type = item, name = cordite, amount = 32},
        {type = fluid, name = acetone_angels, amount = 30, ignored_by_productivity = 0}
    }
    data_recipe[cordite].main_product = cordite

    table.insert(data_recipe[rocket_engine].ingredients, {type = item, name = engine_unit, amount = 1})

    data_recipe[rocket_body].ingredients[3].amount = 15
end

local bullet_projectile = "bob-bullet-projectile"
local bullet_flame_projectile = "bob-flame-bullet-projectile"
local bullet_he_projectile = "bob-he-bullet-projectile"
local bullet_electric_projectile = "bob-electric-bullet-projectile"
local bullet_ap_projectile = "bob-ap-bullet-projectile"
local bullet_acid_projectile = "bob-acid-bullet-projectile"
local bullet_poison_projectile = "bob-poison-bullet-projectile"
local bullet_plasma_projectile = "bob-plasma-bullet-projectile"
local bullet_projectiles =
{
    {name = bullet_projectile,          order = a},
    {name = bullet_flame_projectile,    order = b},
    {name = bullet_he_projectile,       order = c},
    {name = bullet_electric_projectile, order = d},
    {name = bullet_ap_projectile,       order = e},
    {name = bullet_acid_projectile,     order = f},
    {name = bullet_poison_projectile,   order = g},
    {name = bullet_plasma_projectile,   order = h},
}
for _, ITEM in pairs(bullet_projectiles) do
    if data_item[ITEM.name] then
        data_item[ITEM.name].subgroup = is_bullet_projectile
        data_item[ITEM.name].order = ITEM.order
        data_item[ITEM.name].stack_size = 200
        data_recipe[ITEM.name].subgroup = is_bullet_projectile
        data_recipe[ITEM.name].order = ITEM.order
        data_recipe[ITEM.name].energy_required = 1
        if data_recipe[ITEM.name].ingredients[2].type == fluid then
            data_recipe[ITEM.name].ingredients[2].amount = 15
        end
        data_recipe[ITEM.name].results[1].amount = 2
    end
end
if mods[bobwarfare] then
    data_recipe[bullet_plasma_projectile].ingredients =
    {
        {type = item, name = copper_plate, amount = 1},
        {type = fluid, name = deuterium_angels, amount = 15}
    }
end

local bullet = "bob-bullet"
local bullet_flame = "bob-flame-bullet"
local bullet_he = "bob-he-bullet"
local bullet_electric = "bob-electric-bullet"
local bullet_ap = "bob-ap-bullet"
local bullet_acid = "bob-acid-bullet"
local bullet_poison = "bob-poison-bullet"
local bullet_plasma = "bob-plasma-bullet"
local bullets =
{
    {name = bullet,          order = a},
    {name = bullet_flame,    order = b},
    {name = bullet_he,       order = c},
    {name = bullet_electric, order = d},
    {name = bullet_ap,       order = e},
    {name = bullet_acid,     order = f},
    {name = bullet_poison,   order = g},
    {name = bullet_plasma,   order = h}
}
for _, ITEM in pairs(bullets) do
    if data_item[ITEM.name] then
        data_item[ITEM.name].subgroup = is_bullet
        data_item[ITEM.name].order = ITEM.order
        data_item[ITEM.name].stack_size = 200
        data_recipe[ITEM.name].subgroup = is_bullet
        data_recipe[ITEM.name].order = ITEM.order
        data_recipe[ITEM.name].energy_required = 1
    end
end

local ammo_magazines =
{
    {name = magazine_ammo,     order = a},
    {name = magazine_flame,    order = b},
    {name = magazine_he,       order = c},
    {name = magazine_electric, order = d},
    {name = magazine_ap,       order = e},
    {name = magazine_acid,     order = f},
    {name = magazine_poison,   order = g},
    {name = magazine_plasma,   order = h}
}
for _, AMMO in pairs(ammo_magazines) do
    if data_ammo[AMMO.name] then
        data_ammo[AMMO.name].subgroup = is_ammo_magazine
        data_ammo[AMMO.name].order = AMMO.order
        data_ammo[AMMO.name].magazine_size = 60
        data_ammo[AMMO.name].stack_size = 200
        data_recipe[AMMO.name].subgroup = is_ammo_magazine
        data_recipe[AMMO.name].order = AMMO.order
        data_recipe[AMMO.name].energy_required = 8
        data_recipe[AMMO.name].ingredients[1].amount = 32
    end
end

local ammo_shotguns =
{
    {name = shotgun_shell_better,    order = a},
    {name = shotgun_shell_flame,     order = b},
    {name = shotgun_shell_explosive, order = c},
    {name = shotgun_shell_electric,  order = d},
    {name = shotgun_shell_ap,        order = e},
    {name = shotgun_shell_acid,      order = f},
    {name = shotgun_shell_poison,    order = g},
    {name = shotgun_shell_plasma,    order = h}
}
for _, AMMO in pairs(ammo_shotguns) do
    if data_ammo[AMMO.name] then
        data_ammo[AMMO.name].subgroup = is_ammo_shotgun
        data_ammo[AMMO.name].order = AMMO.order
        data_ammo[AMMO.name].magazine_size = 60
        data_ammo[AMMO.name].stack_size = 200
        data_recipe[AMMO.name].subgroup = is_ammo_shotgun
        data_recipe[AMMO.name].order = AMMO.order
        data_recipe[AMMO.name].energy_required = 8
        data_recipe[AMMO.name].ingredients[1].amount = 32
        data_recipe[AMMO.name].ingredients[2].amount = 32
        if data_recipe[AMMO.name].ingredients[3].type == item then
            data_recipe[AMMO.name].ingredients[3].amount = 16
        end
        if data_recipe[AMMO.name].ingredients[3].type == fluid then
            data_recipe[AMMO.name].ingredients[3].amount = 240
        end
        data_recipe[AMMO.name].results[1].amount = 1
    end
end
if mods[bobwarfare] then
    data_recipe[shotgun_shell_plasma].ingredients =
    {
        {type = item, name = cordite, amount = 32},
        {type = item, name = shotgun_shell_casing, amount = 32},
        {type = fluid, name = deuterium_angels, amount = 240}
    }
end

local rocket_warhead = "bob-rocket-warhead"
local rocket_flame_warhead = "bob-flame-rocket-warhead"
local rocket_explosive_warhead = "bob-explosive-rocket-warhead"
local rocket_electric_warhead = "bob-electric-rocket-warhead"
local rocket_piercing_warhead = "bob-piercing-rocket-warhead"
local rocket_acid_warhead = "bob-acid-rocket-warhead"
local rocket_poison_warhead = "bob-poison-rocket-warhead"
local rocket_plasma_warhead = "bob-plasma-rocket-warhead"
local rocket_warheads =
{
    {name = rocket_warhead,           order = a},
    {name = rocket_flame_warhead,     order = b},
    {name = rocket_explosive_warhead, order = c},
    {name = rocket_electric_warhead,  order = d},
    {name = rocket_piercing_warhead,  order = e},
    {name = rocket_acid_warhead,      order = f},
    {name = rocket_poison_warhead,    order = g},
    {name = rocket_plasma_warhead,    order = h},
}
for _, ITEM in pairs(rocket_warheads) do
    if data_item[ITEM.name] then
        data_item[ITEM.name].subgroup = is_rocket_warhead
        data_item[ITEM.name].order = ITEM.order
        data_item[ITEM.name].stack_size = 200
        data_recipe[ITEM.name].subgroup = is_rocket_warhead
        data_recipe[ITEM.name].order = ITEM.order
        data_recipe[ITEM.name].energy_required = 4
        if data_recipe[ITEM.name].ingredients[2].type == item then
            data_recipe[ITEM.name].ingredients[2].amount = 4
        end
        if data_recipe[ITEM.name].ingredients[2].type == fluid then
            data_recipe[ITEM.name].ingredients[2].amount = 60
        end
        data_recipe[ITEM.name].results[1].amount = 1
    end
end
if mods[bobwarfare] then
    data_recipe[rocket_plasma_warhead].ingredients =
    {
        {type = item, name = steel_plate, amount = 1},
        {type = fluid, name = deuterium_angels, amount = 60}
    }
end

local ammo_rockets =
{
    {name = rocket_bob,       order = a},
    {name = rocket_flame,     order = b},
    {name = rocket_explosive, order = c},
    {name = rocket_electric,  order = d},
    {name = rocket_piercing,  order = e},
    {name = rocket_acid,      order = f},
    {name = rocket_poison,    order = g},
    {name = rocket_plasma,    order = h},
}
for _, AMMO in pairs(ammo_rockets) do
    if data_ammo[AMMO.name] then
        data_ammo[AMMO.name].subgroup = is_ammo_rocket
        data_ammo[AMMO.name].order = AMMO.order
        data_ammo[AMMO.name].stack_size = 200
        data_recipe[AMMO.name].subgroup = is_ammo_rocket
        data_recipe[AMMO.name].order = AMMO.order
        data_recipe[AMMO.name].energy_required = 1
    end
end

local grenade_capsules =
{
    grenade,
    cluster_grenade,
    fire_capsule,
    poison_capsule,
    slowdown_capsule,
}
for _, name in pairs(grenade_capsules) do
    if data_capsule[name] then
        data_capsule[name].stack_size = 200
    end
end

data_capsule[grenade].capsule_action.attack_parameters.range = 16
data_recipe[grenade].icons = BUILDING_R_I(grenade, coal)
data_recipe[grenade].ingredients =
{
    {type = item, name = iron_plate, amount = 4},
    {type = item, name = coal, amount = 8}
}

data_projectile[cluster_grenade].action[2].cluster_count = 8
data_recipe[cluster_grenade].ingredients =
{
    {type = item, name = grenade, amount = 8},
    {type = item, name = steel_plate, amount = 4},
    {type = item, name = explosives, amount = 4}
}

if mods[bobwarfare] then
    data_capsule[fire_capsule].capsule_action.attack_parameters.range = 24
    data_projectile[fire_capsule].action[1].cluster_count = 8
    data_recipe[fire_capsule].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 4},
        {type = item, name = steel_plate, amount = 4},
        {type = fluid, name = liquid_fuel_bob, amount = 120}
    }
end

data_capsule[poison_capsule].capsule_action.attack_parameters.range = 24
data_recipe[poison_capsule].icons = R_P_I(poison_capsule, nil, nil, number_1)
data_recipe[poison_capsule].ingredients =
{
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = steel_plate, amount = 4},
    {type = item, name = coal, amount = 8}
}

data_capsule[slowdown_capsule].capsule_action.attack_parameters.range = 24
data_recipe[slowdown_capsule].icons = R_P_I(slowdown_capsule, nil, nil, number_1)
data_recipe[slowdown_capsule].ingredients =
{
    {type = item, name = electronic_circuit, amount = 2},
    {type = item, name = steel_plate, amount = 2},
    {type = item, name = coal, amount = 4}
}

local defender_entity = "defender"
local distractor_entity = "distractor"
local destroyer_entity = "destroyer"
local laser_entity = "bob-laser-robot-entity"
data_combat_robot[defender_entity].subgroup = is_combat_robots_entites
data_combat_robot[defender_entity].order = a
data_combat_robot[distractor_entity].subgroup = is_combat_robots_entites
data_combat_robot[distractor_entity].order = b
data_combat_robot[destroyer_entity].subgroup = is_combat_robots_entites
data_combat_robot[destroyer_entity].order = c
if mods[bobwarfare] then
    data_combat_robot[laser_entity].subgroup = is_combat_robots_entites
    data_combat_robot[laser_entity].order = d
end

local combat_robots_2 =
{
    {name = defender_robot,   item_1 = flying_robot_frame_1, item_2 = combat_robot_brain_1, item_3 = combat_robot_tool_1},
    {name = distractor_robot, item_1 = flying_robot_frame_2, item_2 = combat_robot_brain_2, item_3 = combat_robot_tool_2},
    {name = destroyer_robot,  item_1 = flying_robot_frame_3, item_2 = combat_robot_brain_3, item_3 = combat_robot_tool_3},
    {name = laser_robot,      item_1 = flying_robot_frame_4, item_2 = combat_robot_brain_4, item_3 = combat_robot_tool_4}
}
for _, ITEM in pairs(combat_robots_2) do
    if data_item[ITEM.name] then
        data_item[ITEM.name].stack_size = 200
        data_recipe[ITEM.name].energy_required = 1
        if settings.startup[setting_bobmods_logistics_robotparts].value then
            data_recipe[ITEM.name].ingredients =
            {
                {type = item, name = ITEM.item_1, amount = 1},
                {type = item, name = ITEM.item_2, amount = 1},
                {type = item, name = ITEM.item_3, amount = 1}
            }
            bobmods.lib.recipe.update_recycling_recipe({ITEM.name})
        end
    end
end

local combat_robots =
{
    {name = defender_capsule,   order = a},
    {name = distractor_capsule, order = b},
    {name = destroyer_capsule,  order = c},
    {name = laser_capsule,      order = d}
}
for _, CAPSULE in pairs(combat_robots) do
    if data_capsule[CAPSULE.name] then
        data_capsule[CAPSULE.name].subgroup = is_combat_robots
        data_capsule[CAPSULE.name].order = CAPSULE.order
        data_capsule[CAPSULE.name].stack_size = 200
        data_recipe[CAPSULE.name].subgroup = is_combat_robots
        data_recipe[CAPSULE.name].order = CAPSULE.order
    end
end

--[defender_capsule].capsule_action.attack_parameters.ammo_type.action[2].action_delivery.target_effects[1].repeat_count = 4
data_recipe[defender_capsule].ingredients[1].amount = 4

data_capsule[distractor_capsule].capsule_action.attack_parameters.range = 24
--[distractor_capsule].capsule_action.attack_parameters.ammo_type.action[2].action_delivery.target_effects[1].repeat_count = 4
data_recipe[distractor_capsule].ingredients[1].amount = 4

data_capsule[destroyer_capsule].capsule_action.attack_parameters.range = 24
--[destroyer_capsule].capsule_action.attack_parameters.ammo_type.action[2].action_delivery.target_effects[1].repeat_count = 4
data_recipe[destroyer_capsule].ingredients[1].amount = 4

if mods[bobwarfare] then
    data_capsule[laser_capsule].capsule_action.attack_parameters.range = 24
    --[laser_robot_capsule].capsule_action.attack_parameters.ammo_type.action[2].action_delivery.target_effects[1].repeat_count = 4
    data_recipe[laser_capsule].ingredients[1].amount = 4
end

if settings.startup[setting_bobmods_logistics_robotparts].value then
    local combat_robot_brains =
    {
        {name = combat_robot_brain_1},
        {name = combat_robot_brain_2},
        {name = combat_robot_brain_3},
        {name = combat_robot_brain_4}
    }
    for _, ITEM in pairs(combat_robot_brains) do
        if data_item[ITEM.name] then
            data_item[ITEM.name].subgroup = is_combat_robot_brain
            data_item[ITEM.name].stack_size = 200
            data_recipe[ITEM.name].subgroup = is_combat_robot_brain
            data_recipe[ITEM.name].energy_required = 4
        end
    end
    local function combat_robot_brain_recipe(name, circuit_1, circuit_2)
        if not data_recipe[name] then return end

        data_recipe[name].ingredients =
        {
            {type = item, name = circuit_1, amount = 1},
            {type = item, name = circuit_2, amount = 1},
            {type = item, name = solder, amount = 4}
        }
    end
    combat_robot_brain_recipe(combat_robot_brain_1, basic_circuit_board, electronic_circuit)
    combat_robot_brain_recipe(combat_robot_brain_2, electronic_circuit,  advanced_circuit)
    combat_robot_brain_recipe(combat_robot_brain_3, advanced_circuit,    processing_unit)
    combat_robot_brain_recipe(combat_robot_brain_4, processing_unit,     advanced_processing_unit)
    bobmods.lib.recipe.update_recycling_recipe({combat_robot_brain_1, combat_robot_brain_2, combat_robot_brain_3, combat_robot_brain_4})

    local combat_robot_tools =
    {
        {name = combat_robot_tool_1},
        {name = combat_robot_tool_2},
        {name = combat_robot_tool_3},
        {name = combat_robot_tool_4}
    }
    for _, ITEM in pairs(combat_robot_tools) do
        if data_item[ITEM.name] then
            data_item[ITEM.name].subgroup = is_combat_robot_tool
            data_item[ITEM.name].stack_size = 200
            data_recipe[ITEM.name].subgroup = is_combat_robot_tool
            data_recipe[ITEM.name].energy_required = 4
        end
    end
    local function combat_robot_tool_recipe(name, gear_wheel, battery, prizma, plate)
        if not data_recipe[name] then return end

        data_recipe[name].ingredients =
        {
            {type = item, name = gear_wheel, amount = 2},
            {type = item, name = battery,    amount = 1},
            {type = item, name = prizma,     amount = 1},
            {type = item, name = plate,      amount = 1}
        }
    end
    combat_robot_tool_recipe(combat_robot_tool_1, steel_gear_wheel,    battery_lead_acid,     glass_bob,            steel_plate)
    combat_robot_tool_recipe(combat_robot_tool_2, brass_gear_wheel,    battery_lithium_ion,   glass_bob,            brass_plate_bob)
    combat_robot_tool_recipe(combat_robot_tool_3, titanium_gear_wheel, battery_silver_zinc,   polished_emerald_bob, titanium_plate_bob)
    combat_robot_tool_recipe(combat_robot_tool_4, nitinol_gear_wheel,  battery_graphene,      polished_diamond_bob, nitinol_plate_bob)
    bobmods.lib.recipe.update_recycling_recipe({combat_robot_tool_1, combat_robot_tool_2, combat_robot_tool_3, combat_robot_tool_4})
end

data_recipe[light_armor].energy_required = 4
data_recipe[light_armor].ingredients[1].amount = 32

data_recipe[heavy_armor].ingredients =
{
    {type = item, name = copper_plate, amount = 128},
    {type = item, name = iron_plate, amount = 64},
    {type = item, name = light_armor, amount = 1}
}

data_recipe[modular_armor].energy_required = 16
data_recipe[modular_armor].ingredients =
{
    {type = item, name = electronic_circuit, amount = 32},
    {type = item, name = steel_plate, amount = 64},
    {type = item, name = heavy_armor, amount = 1}
}

data_recipe[power_armor_1].energy_required = 16
data_recipe[power_armor_1].ingredients =
{
    {type = item, name = electric_engine_unit, amount = 16},
    {type = item, name = advanced_circuit, amount = 32},
    {type = item, name = modular_armor, amount = 1},
    {type = item, name = steel_plate, amount = 32}
}

data_recipe[power_armor_2].energy_required = 32
data_recipe[power_armor_2].ingredients =
{
    {type = item, name = electric_engine_unit, amount = 32},
    {type = item, name = advanced_circuit, amount = 64},
    {type = item, name = power_armor_1, amount = 1},
    {type = item, name = cobalt_steel_plate_bob, amount = 64},
    {type = item, name = speed_module_1, amount = 128},
    {type = item, name = efficiency_module_1, amount = 128}
}

if mods[bobwarfare] then
    data_recipe[power_armor_3].energy_required = 32
    if data_item[alien_artifact] then
        data_recipe[power_armor_3].ingredients =
        {
            {type = item, name = processing_unit, amount = 64},
            {type = item, name = power_armor_2, amount = 1},
            {type = item, name = aluminium_plate_bob, amount = 32},
            {type = item, name = invar_plate_bob, amount = 32},
            {type = item, name = alien_artifact_orange, amount = 32},
            {type = item, name = alien_artifact_blue, amount = 32},
            {type = item, name = speed_module_3, amount = 4},
            {type = item, name = efficiency_module_3, amount = 4}
        }
    else
        data_recipe[power_armor_3].ingredients =
        {
            {type = item, name = processing_unit, amount = 64},
            {type = item, name = power_armor_2, amount = 1},
            {type = item, name = aluminium_plate_bob, amount = 32},
            {type = item, name = invar_plate_bob, amount = 32},
            {type = item, name = speed_module_3, amount = 4},
            {type = item, name = efficiency_module_3, amount = 4}
        }
    end

    data_recipe[power_armor_4].energy_required = 32
    if data_item[alien_artifact] then
        if mods[bobmodules] then
            data_recipe[power_armor_4].ingredients =
            {
                {type = item, name = low_density_structure, amount = 4},
                {type = item, name = advanced_processing_unit, amount = 32},
                {type = item, name = power_armor_3, amount = 1},
                {type = item, name = silicon_nitride_bob, amount = 64},
                {type = item, name = alien_artifact_yellow, amount = 32},
                {type = item, name = alien_artifact_magenta, amount = 32},
                {type = item, name = speed_module_4, amount = 4},
                {type = item, name = efficiency_module_4, amount = 4}
            }
        else
            data_recipe[power_armor_4].ingredients =
            {
                {type = item, name = low_density_structure, amount = 4},
                {type = item, name = advanced_processing_unit, amount = 32},
                {type = item, name = power_armor_3, amount = 1},
                {type = item, name = silicon_nitride_bob, amount = 64},
                {type = item, name = alien_artifact_yellow, amount = 32},
                {type = item, name = alien_artifact_magenta, amount = 32},
                {type = item, name = speed_module_3, amount = 4},
                {type = item, name = efficiency_module_3, amount = 4}
            }
        end
    else
        if mods[bobmodules] then
            data_recipe[power_armor_4].ingredients =
            {
                {type = item, name = low_density_structure, amount = 4},
                {type = item, name = advanced_processing_unit, amount = 32},
                {type = item, name = power_armor_3, amount = 1},
                {type = item, name = silicon_nitride_bob, amount = 64},
                {type = item, name = speed_module_4, amount = 4},
                {type = item, name = efficiency_module_4, amount = 4}
            }
        else
            data_recipe[power_armor_4].ingredients =
            {
                {type = item, name = low_density_structure, amount = 4},
                {type = item, name = advanced_processing_unit, amount = 32},
                {type = item, name = power_armor_3, amount = 1},
                {type = item, name = silicon_nitride_bob, amount = 64},
                {type = item, name = speed_module_3, amount = 4},
                {type = item, name = efficiency_module_3, amount = 4}
            }
        end
    end

    data_recipe[power_armor_5].energy_required = 32
    if data_item[alien_artifact] then
        if mods[bobmodules] then
            data_recipe[power_armor_5].ingredients =
            {
                {type = item, name = mech_armor_plate, amount = 4},
                {type = item, name = advanced_processing_unit, amount = 64},
                {type = item, name = power_armor_4, amount = 1},
                {type = item, name = nitinol_plate_bob, amount = 64},
                {type = item, name = alien_artifact_red, amount = 32},
                {type = item, name = alien_artifact_green, amount = 32},
                {type = item, name = speed_module_5, amount = 4},
                {type = item, name = efficiency_module_5, amount = 4}
            }
        else
            data_recipe[power_armor_5].ingredients =
            {
                {type = item, name = mech_armor_plate, amount = 4},
                {type = item, name = advanced_processing_unit, amount = 64},
                {type = item, name = power_armor_4, amount = 1},
                {type = item, name = nitinol_plate_bob, amount = 64},
                {type = item, name = alien_artifact_red, amount = 32},
                {type = item, name = alien_artifact_green, amount = 32},
                {type = item, name = speed_module_3, amount = 4},
                {type = item, name = efficiency_module_3, amount = 4}
            }
        end
    else
        if mods[bobmodules] then
            data_recipe[power_armor_5].ingredients =
            {
                {type = item, name = mech_armor_plate, amount = 4},
                {type = item, name = advanced_processing_unit, amount = 64},
                {type = item, name = power_armor_4, amount = 1},
                {type = item, name = nitinol_plate_bob, amount = 64},
                {type = item, name = speed_module_5, amount = 4},
                {type = item, name = efficiency_module_5, amount = 4}
            }
        else
            data_recipe[power_armor_5].ingredients =
            {
                {type = item, name = mech_armor_plate, amount = 4},
                {type = item, name = advanced_processing_unit, amount = 64},
                {type = item, name = power_armor_4, amount = 1},
                {type = item, name = nitinol_plate_bob, amount = 64},
                {type = item, name = speed_module_3, amount = 4},
                {type = item, name = efficiency_module_3, amount = 4}
            }
        end
    end
end

local solar_panel_eq_1 = "solar-panel-equipment"
local solar_panel_eq_2 = "bob-solar-panel-equipment-2"
local solar_panel_eq_3 = "bob-solar-panel-equipment-3"
local solar_panel_eq_4 = "bob-solar-panel-equipment-4"
local solar_panels_eq =
{
    {name = solar_panel_eq_1, power = 30},
    {name = solar_panel_eq_2, power = 60},
    {name = solar_panel_eq_3, power = 90},
    {name = solar_panel_eq_4, power = 120}
}
for _, EQUIPMENT in pairs(solar_panels_eq) do
    if data_item[EQUIPMENT.name] then
        data_item[EQUIPMENT.name].stack_size = 32
        data_item[EQUIPMENT.name].weight = 31250
        data_recipe[EQUIPMENT.name].energy_required = 4
        data_solar_panel_eq[EQUIPMENT.name].power = EQUIPMENT.power .. kW
    end
end
local function solar_panel_eq_recipe(name, circuit, plate_1, plate_2, cable, solar_panel, glass)
    local ingredients =
    {
        {type = item, name = circuit, amount = 4},
        {type = item, name = plate_1, amount = 4},
        {type = item, name = plate_2, amount = 4},
        {type = item, name = cable, amount = 4},
        {type = item, name = silicon_wafer, amount = 8}
    }
    if solar_panel then
        table.insert(ingredients, {type = item, name = solar_panel, amount = 1})
    end
    if glass then
        table.insert(ingredients, {type = item, name = glass, amount = 4})
    end
    data_recipe[name].ingredients = ingredients
end
solar_panel_eq_recipe(solar_panel_eq_1, electronic_circuit, copper_plate, steel_plate, copper_cable, nil, glass_bob)
if mods[bobequipment] then
    solar_panel_eq_recipe(solar_panel_eq_2, advanced_circuit, aluminium_plate_bob, silver_plate_bob, tin_cable, solar_panel_eq_1)
    solar_panel_eq_recipe(solar_panel_eq_3, processing_unit, gold_plate_bob, titanium_plate_bob, gold_cable, solar_panel_eq_2)
    if data_item[alien_artifact] then
        solar_panel_eq_recipe(solar_panel_eq_4, advanced_processing_unit, tungsten_plate_bob, nitinol_plate_bob, alien_artifact, solar_panel_eq_3)
    else
        solar_panel_eq_recipe(solar_panel_eq_4, advanced_processing_unit, tungsten_plate_bob, nitinol_plate_bob, platinum_cable, solar_panel_eq_3)
    end
end

local fission_reactors =
{
    {name = fission_reactor_1, power = 600},
    {name = fission_reactor_2, power = 1200},
    {name = fission_reactor_3, power = 1800},
    {name = fission_reactor_4, power = 2400}
}
for _, EQUIPMENT in pairs(fission_reactors) do
    if data_item[EQUIPMENT.name] then
        data_item[EQUIPMENT.name].subgroup = is_equipment_2
        data_item[EQUIPMENT.name].stack_size = 8
        data_item[EQUIPMENT.name].weight = 125000
        data_recipe[EQUIPMENT.name].subgroup = is_equipment_2
        data_recipe[EQUIPMENT.name].energy_required = 8
        data_generator_eq[EQUIPMENT.name].power = EQUIPMENT.power .. kW
    end
end
data_recipe[fission_reactor_1].category = crafting_fluid
data_recipe[fission_reactor_1].ingredients =
{
    {type = item, name = advanced_circuit, amount = 128},
    {type = item, name = uranium_235_fuel_cell, amount = 16},
    {type = item, name = lead_plate_bob, amount = 128},
    {type = item, name = steel_plate, amount = 256},
    {type = fluid, name = water_semiheavy_3, amount = 60, maximum_temperature = 30}
}
if mods[bobequipment] then
    if data_item[alien_artifact] then
        data_recipe[fission_reactor_2].ingredients =
        {
            {type = item, name = processing_unit, amount = 128},
            {type = item, name = mixed_oxide_fuel_cell, amount = 16},
            {type = item, name = fission_reactor_1, amount = 1},
            {type = item, name = alien_artifact, amount = 64},
            {type = item, name = tungsten_plate_bob, amount = 256},
            {type = item, name = speed_module_3, amount = 1},
            {type = item, name = efficiency_module_3, amount = 1}
        }
        if mods[bobmodules] then
            data_recipe[fission_reactor_3].ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 128},
                {type = item, name = thorium_fuel_cell, amount = 16},
                {type = item, name = fission_reactor_2, amount = 1},
                {type = item, name = lithium_bob, amount = 32},
                {type = item, name = tungsten_carbide_plate_bob, amount = 64},
                {type = item, name = alien_artifact_yellow, amount = 64},
                {type = item, name = alien_artifact_green, amount = 64},
                {type = item, name = speed_module_4, amount = 1},
                {type = item, name = efficiency_module_4, amount = 1}
            }
            data_recipe[fission_reactor_4].ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 128},
                {type = item, name = deuterium_fuel_cell, amount = 16},
                {type = item, name = fission_reactor_3, amount = 1},
                {type = item, name = blue_alloy, amount = 64},
                {type = item, name = speed_module_5, amount = 1},
                {type = item, name = efficiency_module_5, amount = 1},
                {type = fluid, name = red_fluid, amount = 960}
            }
        else
            data_recipe[fission_reactor_3].ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 128},
                {type = item, name = thorium_fuel_cell, amount = 16},
                {type = item, name = fission_reactor_2, amount = 1},
                {type = item, name = lithium_bob, amount = 32},
                {type = item, name = tungsten_carbide_plate_bob, amount = 64},
                {type = item, name = alien_artifact_yellow, amount = 64},
                {type = item, name = alien_artifact_green, amount = 64},
                {type = item, name = speed_module_3, amount = 1},
                {type = item, name = efficiency_module_3, amount = 1}
            }
            data_recipe[fission_reactor_4].ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 128},
                {type = item, name = deuterium_fuel_cell, amount = 16},
                {type = item, name = fission_reactor_3, amount = 1},
                {type = item, name = blue_alloy, amount = 64},
                {type = item, name = speed_module_3, amount = 1},
                {type = item, name = efficiency_module_3, amount = 1},
                {type = fluid, name = red_fluid, amount = 960}
            }
        end
    else
        data_recipe[fission_reactor_2].ingredients =
        {
            {type = item, name = processing_unit, amount = 128},
            {type = item, name = mixed_oxide_fuel_cell, amount = 16},
            {type = item, name = fission_reactor_1, amount = 1},
            {type = item, name = tungsten_plate_bob, amount = 256},
            {type = item, name = speed_module_3, amount = 1},
            {type = item, name = efficiency_module_3, amount = 1}
        }
        if mods[bobmodules] then
            data_recipe[fission_reactor_3].ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 128},
                {type = item, name = thorium_fuel_cell, amount = 16},
                {type = item, name = fission_reactor_2, amount = 1},
                {type = item, name = lithium_bob, amount = 32},
                {type = item, name = tungsten_carbide_plate_bob, amount = 64},
                {type = item, name = speed_module_4, amount = 1},
                {type = item, name = efficiency_module_4, amount = 1}
            }
            data_recipe[fission_reactor_4].ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 128},
                {type = item, name = deuterium_fuel_cell, amount = 16},
                {type = item, name = fission_reactor_3, amount = 1},
                {type = item, name = speed_module_5, amount = 1},
                {type = item, name = efficiency_module_5, amount = 1}
            }
        else
            data_recipe[fission_reactor_3].ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 128},
                {type = item, name = thorium_fuel_cell, amount = 16},
                {type = item, name = fission_reactor_2, amount = 1},
                {type = item, name = lithium_bob, amount = 32},
                {type = item, name = tungsten_carbide_plate_bob, amount = 64},
                {type = item, name = speed_module_3, amount = 1},
                {type = item, name = efficiency_module_3, amount = 1}
            }
            data_recipe[fission_reactor_4].ingredients =
            {
                {type = item, name = advanced_processing_unit, amount = 128},
                {type = item, name = deuterium_fuel_cell, amount = 16},
                {type = item, name = fission_reactor_3, amount = 1},
                {type = item, name = speed_module_3, amount = 1},
                {type = item, name = efficiency_module_3, amount = 1}
            }
        end
    end
end

local batterys_eq =
{
    {name = battery_eq_1, buffer_capacity = 30000},
    {name = battery_eq_2, buffer_capacity = 60000},
    {name = battery_eq_3, buffer_capacity = 120000},
    {name = battery_eq_4, buffer_capacity = 240000},
    {name = battery_eq_5, buffer_capacity = 480000},
    {name = battery_eq_6, buffer_capacity = 960000}
}
for _, EQUIPMENT in pairs(batterys_eq) do
    if data_item[EQUIPMENT.name] then
        data_item[EQUIPMENT.name].subgroup = is_equipment_3
        data_item[EQUIPMENT.name].stack_size = 32
        data_item[EQUIPMENT.name].weight = 31250
        data_recipe[EQUIPMENT.name].subgroup = is_equipment_3
        data_recipe[EQUIPMENT.name].energy_required = 8
        data_battery_eq[EQUIPMENT.name].energy_source.buffer_capacity = EQUIPMENT.buffer_capacity .. kJ
    end
end
local function battery_eq_recipe(name, battery, circuit, alien_artifact_1, alien_artifact_2)
    if not data_recipe[name] then return end

    local ingredients =
    {
        {type = item, name = battery, amount = 2},
        {type = item, name = circuit, amount = 4}
    }
    if alien_artifact_1 then
        table.insert(ingredients, {type = item, name = alien_artifact_1, amount = 4})
        table.insert(ingredients, {type = item, name = alien_artifact_2, amount = 4})
    end
    data_recipe[name].ingredients = ingredients
end
battery_eq_recipe(battery_eq_1, battery_lead_acid, electronic_circuit)
battery_eq_recipe(battery_eq_2, battery_eq_1, advanced_circuit)
battery_eq_recipe(battery_eq_3, battery_eq_2, battery_lithium_ion)
if mods[bobequipment] then
    if data_item[alien_artifact] then
        battery_eq_recipe(battery_eq_4, battery_eq_3, processing_unit, alien_artifact_orange, alien_artifact_blue)
        battery_eq_recipe(battery_eq_5, battery_eq_4, battery_silver_zinc, alien_artifact_yellow, alien_artifact_magenta)
        battery_eq_recipe(battery_eq_6, battery_eq_5, advanced_processing_unit, alien_artifact_red, alien_artifact_green)
    else
        battery_eq_recipe(battery_eq_4, battery_eq_3, processing_unit)
        battery_eq_recipe(battery_eq_5, battery_eq_4, battery_silver_zinc)
        battery_eq_recipe(battery_eq_6, battery_eq_5, advanced_processing_unit)
    end
end

local exoskeletons_eq =
{
    {name = exoskeleton_eq_1, order = a, energy_consumption = 240, movement_bonus = 0.25},
    {name = exoskeleton_eq_2, order = b, energy_consumption = 480, movement_bonus = 0.50},
    {name = exoskeleton_eq_3, order = c, energy_consumption = 720, movement_bonus = 0.75},
    {name = belt_immunity_eq, order = z, energy_consumption = 120}
}
for _, EQUIPMENT in pairs(exoskeletons_eq) do
    if data_item[EQUIPMENT.name] then
        data_item[EQUIPMENT.name].subgroup = is_equipment_4
        data_item[EQUIPMENT.name].order = EQUIPMENT.order
        data_item[EQUIPMENT.name].stack_size = 8
        data_item[EQUIPMENT.name].weight = 125000
        data_recipe[EQUIPMENT.name].subgroup = is_equipment_4
        data_recipe[EQUIPMENT.name].energy_required = 8
        data_recipe[EQUIPMENT.name].order = EQUIPMENT.order
        if data_movement_bonus_eq[EQUIPMENT.name] then
            data_movement_bonus_eq[EQUIPMENT.name].movement_bonus = EQUIPMENT.movement_bonus
            data_movement_bonus_eq[EQUIPMENT.name].energy_consumption = EQUIPMENT.energy_consumption .. kW
        end
        if data_belt_immunity_eq[EQUIPMENT.name] then
            data_belt_immunity_eq[EQUIPMENT.name].energy_consumption = EQUIPMENT.energy_consumption .. kW
        end
    end
end

local function exoskeleton_eq_recipe(name, gear_wheel, bearing, circuit, exoskeleton, plate_1, alien_material, module_)
    local ingredients =
    {
        {type = item, name = gear_wheel, amount = 32},
        {type = item, name = bearing, amount = 32},
        {type = item, name = circuit, amount = 16},
        {type = item, name = exoskeleton, amount = 1},
        {type = item, name = plate_1, amount = 16}
    }
    if alien_material then
        table.insert(ingredients, {type = item, name = alien_material, amount = 16})
    end
    if module_ then
        table.insert(ingredients, {type = item, name = module_, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
exoskeleton_eq_recipe(exoskeleton_eq_1, steel_gear_wheel, steel_bearing, advanced_circuit, electric_engine_unit, steel_plate)
if mods[bobequipment] then
    if data_item[alien_artifact] then
        exoskeleton_eq_recipe(exoskeleton_eq_2, cobalt_steel_gear_wheel, cobalt_steel_bearing, processing_unit, exoskeleton_eq_1, invar_plate_bob, alien_artifact, speed_module_2)
        exoskeleton_eq_recipe(exoskeleton_eq_3, titanium_gear_wheel, titanium_bearing, advanced_processing_unit, exoskeleton_eq_2, titanium_plate_bob, blue_alloy, speed_module_3)
    else
        exoskeleton_eq_recipe(exoskeleton_eq_2, cobalt_steel_gear_wheel, cobalt_steel_bearing, processing_unit, exoskeleton_eq_1, invar_plate_bob, nil, speed_module_2)
        exoskeleton_eq_recipe(exoskeleton_eq_3, titanium_gear_wheel, titanium_bearing, advanced_processing_unit, exoskeleton_eq_2, titanium_plate_bob, nil, speed_module_3)
    end
end
data_recipe[exoskeleton_eq_1].ingredients[4].amount = 32

data_item[belt_immunity_eq].stack_size = 1
data_item[belt_immunity_eq].weight = 1000000
data_recipe[belt_immunity_eq].energy_required = 1
data_recipe[belt_immunity_eq].ingredients =
{
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = steel_plate, amount = 8}
}

local nightvision_eq_1 = "night-vision-equipment"
local nightvision_eq_2 = "bob-night-vision-equipment-2"
local nightvision_eq_3 = "bob-night-vision-equipment-3"
local nightvisions_eq =
{
    {name = nightvision_eq_1, energy_input = 15},
    {name = nightvision_eq_2, energy_input = 30},
    {name = nightvision_eq_3, energy_input = 45}
}
for _, EQUIPMENT in pairs(nightvisions_eq) do
    if data_item[EQUIPMENT.name] then
        data_item[EQUIPMENT.name].subgroup = is_equipment_5
        data_item[EQUIPMENT.name].stack_size = 1
        data_item[EQUIPMENT.name].weight = 100000000
        data_recipe[EQUIPMENT.name].subgroup = is_equipment_5
        data_recipe[EQUIPMENT.name].energy_required = 8
        data_night_vision_eq[EQUIPMENT.name].energy_input = EQUIPMENT.energy_input .. kW
    end
end
local function nightvision_eq_recipe(name, circuit, plate, glass, nightvision, alien)
    local ingredients =
    {
        {type = item, name = circuit, amount = 32},
        {type = item, name = plate, amount = 32},
        {type = item, name = glass, amount = 16}
    }
    if nightvision then
        table.insert(ingredients, {type = item, name = nightvision, amount = 1})
    end
    if alien then
        table.insert(ingredients, {type = item, name = alien, amount = 8})
    end
    data_recipe[name].ingredients = ingredients
end
nightvision_eq_recipe(nightvision_eq_1, electronic_circuit, steel_plate, glass_bob)
if mods[bobequipment] then
    nightvision_eq_recipe(nightvision_eq_2, processing_unit, silver_plate_bob, glass_bob, nightvision_eq_1)
    if data_item[alien_artifact] then
        nightvision_eq_recipe(nightvision_eq_3, advanced_processing_unit, titanium_plate_bob, polished_diamond_bob, nightvision_eq_2, alien_artifact)
    else
        nightvision_eq_recipe(nightvision_eq_3, advanced_processing_unit, titanium_plate_bob, polished_diamond_bob, nightvision_eq_2)
    end
end

if mods[bobequipment] then
    local roboport_area_eq_1 = "bob-personal-roboport-antenna-equipment"
    local roboport_area_eq_2 = "bob-personal-roboport-antenna-equipment-2"
    local roboport_area_eq_3 = "bob-personal-roboport-antenna-equipment-3"
    local roboport_area_eq_4 = "bob-personal-roboport-antenna-equipment-4"
    local roboport_areas_eq =
    {
        {name = roboport_area_eq_1, construction_radius = 8},
        {name = roboport_area_eq_2, construction_radius = 16},
        {name = roboport_area_eq_3, construction_radius = 24},
        {name = roboport_area_eq_4, construction_radius = 32}
    }
    for _, EQUIPMENT in pairs(roboport_areas_eq) do
        data_item[EQUIPMENT.name].stack_size = 16
        data_item[EQUIPMENT.name].weight = 62500
        data_roboport_eq[EQUIPMENT.name].construction_radius = EQUIPMENT.construction_radius
    end
    local function rp_area_expander_eq_recipe(name, antenna, plate, roboport_area)
        local ingredients =
        {
            {type = item, name = antenna, amount = 4},
            {type = item, name = plate, amount = 4}
        }
        if roboport_area then
            table.insert(ingredients, {type = item, name = roboport_area, amount = 1})
        end
        data_recipe[name].ingredients = ingredients
    end
    rp_area_expander_eq_recipe(roboport_area_eq_1, roboport_antenna_1, steel_plate)
    rp_area_expander_eq_recipe(roboport_area_eq_2, roboport_antenna_2, aluminium_plate_bob, roboport_area_eq_1)
    rp_area_expander_eq_recipe(roboport_area_eq_3, roboport_antenna_3, titanium_plate_bob, roboport_area_eq_2)
    rp_area_expander_eq_recipe(roboport_area_eq_4, roboport_antenna_4, nitinol_plate_bob, roboport_area_eq_3)

    local chargepad_eq_1 = "bob-personal-roboport-chargepad-equipment"
    local chargepad_eq_2 = "bob-personal-roboport-chargepad-equipment-2"
    local chargepad_eq_3 = "bob-personal-roboport-chargepad-equipment-3"
    local chargepad_eq_4 = "bob-personal-roboport-chargepad-equipment-4"
    local chargepads_eq =
    {
        {name = chargepad_eq_1, input_flow_limit = 1800,  charging_energy = 900,  charging_station_count = 8},
        {name = chargepad_eq_2, input_flow_limit = 7200,  charging_energy = 1800, charging_station_count = 8},
        {name = chargepad_eq_3, input_flow_limit = 16200, charging_energy = 2700, charging_station_count = 8},
        {name = chargepad_eq_4, input_flow_limit = 28800, charging_energy = 3600, charging_station_count = 8}
    }
    for _, EQUIPMENT in pairs(chargepads_eq) do
        data_item[EQUIPMENT.name].subgroup = is_utility_equipment_2
        data_item[EQUIPMENT.name].stack_size = 16
        data_item[EQUIPMENT.name].weight = 62500
        data_recipe[EQUIPMENT.name].subgroup = is_utility_equipment_2
        data_roboport_eq[EQUIPMENT.name].energy_source.buffer_capacity = (EQUIPMENT.input_flow_limit * 10) .. kJ
        data_roboport_eq[EQUIPMENT.name].energy_source.input_flow_limit = EQUIPMENT.input_flow_limit .. kW
        data_roboport_eq[EQUIPMENT.name].charging_energy = EQUIPMENT.charging_energy .. kW
        data_roboport_eq[EQUIPMENT.name].charging_station_count = EQUIPMENT.charging_station_count
    end
    local function rp_chargepad_eq_recipe(name, chargepad, plate, chargepad_eq)
        local ingredients =
        {
            {type = item, name = chargepad, amount = 8},
            {type = item, name = plate, amount = 2}
        }
        if chargepad_eq then
            table.insert(ingredients, {type = item, name = chargepad_eq, amount = 1})
        end
        data_recipe[name].ingredients = ingredients
    end
    rp_chargepad_eq_recipe(chargepad_eq_1, roboport_chargepad_1, steel_plate)
    rp_chargepad_eq_recipe(chargepad_eq_2, roboport_chargepad_2, aluminium_plate_bob, chargepad_eq_1)
    rp_chargepad_eq_recipe(chargepad_eq_3, roboport_chargepad_3, titanium_plate_bob, chargepad_eq_2)
    rp_chargepad_eq_recipe(chargepad_eq_4, roboport_chargepad_4, nitinol_plate_bob, chargepad_eq_3)

    local robot_control_eq_1 = "bob-personal-roboport-robot-equipment"
    local robot_control_eq_2 = "bob-personal-roboport-robot-equipment-2"
    local robot_control_eq_3 = "bob-personal-roboport-robot-equipment-3"
    local robot_control_eq_4 = "bob-personal-roboport-robot-equipment-4"
    local robot_controls_eq =
    {
        {name = robot_control_eq_1, robot_limit = 4},
        {name = robot_control_eq_2, robot_limit = 8},
        {name = robot_control_eq_3, robot_limit = 12},
        {name = robot_control_eq_4, robot_limit = 16}
    }
    for _, EQUIPMENT in pairs(robot_controls_eq) do
        data_item[EQUIPMENT.name].subgroup = is_utility_equipment_3
        data_item[EQUIPMENT.name].stack_size = 16
        data_item[EQUIPMENT.name].weight = 62500
        data_recipe[EQUIPMENT.name].subgroup = is_utility_equipment_3
        data_roboport_eq[EQUIPMENT.name].robot_limit = EQUIPMENT.robot_limit
    end
    local function robot_control_eq_recipe(name, circuit, robot_control_eq)
        local ingredients = {}
        if mods[bobmodules] then
            ingredients =
            {
                {type = item, name = circuit, amount = 8},
                {type = item, name = solder, amount = 4},
                {type = item, name = module_case, amount = 1}
            }
        else
            ingredients =
            {
                {type = item, name = circuit, amount = 8},
                {type = item, name = solder, amount = 4},
                --{type = item, name = module_case, amount = 1}
            }
        end
        if robot_control_eq then
            table.insert(ingredients, {type = item, name = robot_control_eq, amount = 1})
        end
        data_recipe[name].ingredients = ingredients
    end
    robot_control_eq_recipe(robot_control_eq_1, electronic_circuit)
    robot_control_eq_recipe(robot_control_eq_2, advanced_circuit, robot_control_eq_1)
    robot_control_eq_recipe(robot_control_eq_3, processing_unit, robot_control_eq_2)
    robot_control_eq_recipe(robot_control_eq_4, advanced_processing_unit, robot_control_eq_3)

    bobmods.lib.recipe.update_recycling_recipe
    ({
        roboport_area_eq_1,
        roboport_area_eq_2,
        roboport_area_eq_3,
        roboport_area_eq_4,
        chargepad_eq_1,
        chargepad_eq_2,
        chargepad_eq_3,
        chargepad_eq_4,
        robot_control_eq_1,
        robot_control_eq_2,
        robot_control_eq_3,
        robot_control_eq_4
    })
end

local roboports_eq =
{
    {name = roboport_eq_1, robot_limit = 8,  input_flow_limit = 1800,  charging_energy = 900,  charging_station_count = 8},
    {name = roboport_eq_2, robot_limit = 16, input_flow_limit = 7200,  charging_energy = 1800, charging_station_count = 8},
    {name = roboport_eq_3, robot_limit = 24, input_flow_limit = 16200, charging_energy = 2700, charging_station_count = 8},
    {name = roboport_eq_4, robot_limit = 32, input_flow_limit = 28800, charging_energy = 3600, charging_station_count = 8}
}
for _, EQUIPMENT in pairs(roboports_eq) do
    if data_item[EQUIPMENT.name] then
        data_item[EQUIPMENT.name].subgroup = is_utility_equipment_4
        data_item[EQUIPMENT.name].stack_size = 16
        data_item[EQUIPMENT.name].weight = 62500
        data_recipe[EQUIPMENT.name].subgroup = is_utility_equipment_4
        data_roboport_eq[EQUIPMENT.name].energy_source.buffer_capacity = (EQUIPMENT.input_flow_limit * 10) .. kJ
        data_roboport_eq[EQUIPMENT.name].energy_source.input_flow_limit = EQUIPMENT.input_flow_limit .. kW
        data_roboport_eq[EQUIPMENT.name].robot_limit = EQUIPMENT.robot_limit
        data_roboport_eq[EQUIPMENT.name].construction_radius = EQUIPMENT.robot_limit
        data_roboport_eq[EQUIPMENT.name].charging_energy = EQUIPMENT.charging_energy .. kW
        data_roboport_eq[EQUIPMENT.name].charging_station_count = EQUIPMENT.charging_station_count
    end
end
local function roboport_eq_recipe(name, antenna, door, chargepad, plate, roboport_eq)
    local ingredients =
    {
        {type = item, name = antenna, amount = 2},
        {type = item, name = door, amount = 1},
        {type = item, name = chargepad, amount = 8},
        {type = item, name = plate, amount = 4}
    }
    if roboport_eq then
        table.insert(ingredients, {type = item, name = roboport_eq, amount = 1})
    end
    data_recipe[name].ingredients = ingredients
end
if mods[bobequipment] then
    roboport_eq_recipe(roboport_eq_1, roboport_antenna_1, roboport_door_1, roboport_chargepad_1, steel_plate)
    roboport_eq_recipe(roboport_eq_2, roboport_antenna_2, roboport_door_2, roboport_chargepad_2, aluminium_plate_bob, roboport_eq_1)
    roboport_eq_recipe(roboport_eq_3, roboport_antenna_3, roboport_door_3, roboport_chargepad_3, titanium_plate_bob, roboport_eq_2)
    roboport_eq_recipe(roboport_eq_4, roboport_antenna_4, roboport_door_4, roboport_chargepad_4, nitinol_plate_bob, roboport_eq_3)
else
    data_recipe[roboport_eq_1].ingredients =
    {
        {type = item, name = advanced_circuit, amount = 64},
        {type = item, name = electric_engine_unit, amount = 4},
        {type = item, name = battery_lead_acid, amount = 64},
        {type = item, name = steel_plate, amount = 32}
    }
    data_recipe[roboport_eq_2].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 64},
        {type = item, name = roboport_eq_1, amount = 1},
        {type = item, name = superconductor, amount = 64},
        {type = item, name = invar_plate_bob, amount = 32}
    }
end

local energy_shields_eq =
{
    {name = energy_shield_eq_1, input_flow_limit = 240,  max_shield_value = 60},
    {name = energy_shield_eq_2, input_flow_limit = 480,  max_shield_value = 120},
    {name = energy_shield_eq_3, input_flow_limit = 720,  max_shield_value = 180},
    {name = energy_shield_eq_4, input_flow_limit = 960,  max_shield_value = 240},
    {name = energy_shield_eq_5, input_flow_limit = 1200, max_shield_value = 300},
    {name = energy_shield_eq_6, input_flow_limit = 1440, max_shield_value = 360}
}
for _, EQUIPMENT in pairs(energy_shields_eq) do
    if data_item[EQUIPMENT.name] then
        data_item[EQUIPMENT.name].stack_size = 16
        data_item[EQUIPMENT.name].weight = 62500
        data_recipe[EQUIPMENT.name].energy_required = 8
        data_energy_shield_eq[EQUIPMENT.name].energy_per_shield = 30 .. kJ
        data_energy_shield_eq[EQUIPMENT.name].max_shield_value = EQUIPMENT.max_shield_value
        data_energy_shield_eq[EQUIPMENT.name].energy_source.input_flow_limit = EQUIPMENT.input_flow_limit .. kW
    end
end
local function energy_shield_eq_recipe(name, circuit, plate, energy_shield_eq, module_, alien_artifact_1, alien_artifact_2)
    local ingredients = {{type = item, name = circuit, amount = 4}}
    if plate then
        table.insert(ingredients, {type = item, name = plate, amount = 8})
    end
    if energy_shield_eq then
        table.insert(ingredients, {type = item, name = energy_shield_eq, amount = 1})
    end
    if module_ then
        table.insert(ingredients, {type = item, name = module_, amount = 1})
    end
    if alien_artifact_1 then
        table.insert(ingredients, {type = item, name = alien_artifact_1, amount = 4})
        table.insert(ingredients, {type = item, name = alien_artifact_2, amount = 4})
    end
    data_recipe[name].ingredients = ingredients
end
energy_shield_eq_recipe(energy_shield_eq_1, electronic_circuit, steel_plate)
energy_shield_eq_recipe(energy_shield_eq_2, advanced_circuit, aluminium_plate_bob, energy_shield_eq_1, productivity_module_1)
if mods[bobequipment] then
    if data_item[alien_artifact] then
        energy_shield_eq_recipe(energy_shield_eq_3, processing_unit, alien_artifact, energy_shield_eq_2, productivity_module_2)
        energy_shield_eq_recipe(energy_shield_eq_4, advanced_processing_unit, nil, energy_shield_eq_3, productivity_module_3, alien_artifact_orange, alien_artifact_blue)
        if mods[bobmodules] then
            energy_shield_eq_recipe(energy_shield_eq_5, advanced_processing_unit, nil, energy_shield_eq_4, productivity_module_4, alien_artifact_yellow, alien_artifact_magenta)
            energy_shield_eq_recipe(energy_shield_eq_6, advanced_processing_unit, nil, energy_shield_eq_5, productivity_module_5, alien_artifact_red, alien_artifact_green)
        else
            energy_shield_eq_recipe(energy_shield_eq_5, advanced_processing_unit, nil, energy_shield_eq_4, productivity_module_3, alien_artifact_yellow, alien_artifact_magenta)
            energy_shield_eq_recipe(energy_shield_eq_6, advanced_processing_unit, nil, energy_shield_eq_5, productivity_module_3, alien_artifact_red, alien_artifact_green)
        end
    else
        energy_shield_eq_recipe(energy_shield_eq_3, processing_unit, nil, energy_shield_eq_2, productivity_module_2)
        energy_shield_eq_recipe(energy_shield_eq_4, advanced_processing_unit, nil, energy_shield_eq_3, productivity_module_3)
        if mods[bobmodules] then
            energy_shield_eq_recipe(energy_shield_eq_5, advanced_processing_unit, nil, energy_shield_eq_4, productivity_module_4)
            energy_shield_eq_recipe(energy_shield_eq_6, advanced_processing_unit, nil, energy_shield_eq_5, productivity_module_5)
        else
            energy_shield_eq_recipe(energy_shield_eq_5, advanced_processing_unit, nil, energy_shield_eq_4, productivity_module_3)
            energy_shield_eq_recipe(energy_shield_eq_6, advanced_processing_unit, nil, energy_shield_eq_5, productivity_module_3)
        end
    end
end

local laser_defenses_eq =
{
    {name = laser_defense_eq_1, energy_consumption = 120, damage_modifier = 1, cooldown = 60, range = 16},
    {name = laser_defense_eq_2, energy_consumption = 240, damage_modifier = 2, cooldown = 60, range = 20},
    {name = laser_defense_eq_3, energy_consumption = 360, damage_modifier = 3, cooldown = 60, range = 24},
    {name = laser_defense_eq_4, energy_consumption = 480, damage_modifier = 4, cooldown = 60, range = 28},
    {name = laser_defense_eq_5, energy_consumption = 600, damage_modifier = 5, cooldown = 60, range = 32},
    {name = laser_defense_eq_6, energy_consumption = 720, damage_modifier = 6, cooldown = 60, range = 36}
}
for _, EQUIPMENT in pairs(laser_defenses_eq) do
    if data_item[EQUIPMENT.name] then
        data_item[EQUIPMENT.name].subgroup = is_military_equipment_2
        data_item[EQUIPMENT.name].stack_size = 16
        data_item[EQUIPMENT.name].weight = 62500
        data_recipe[EQUIPMENT.name].subgroup = is_military_equipment_2
        data_recipe[EQUIPMENT.name].energy_required = 8
        data_active_defense_eq[EQUIPMENT.name].energy_source.buffer_capacity = (EQUIPMENT.energy_consumption * 2) .. kJ
        data_active_defense_eq[EQUIPMENT.name].energy_source.input_flow_limit = (EQUIPMENT.energy_consumption * 1.5) .. kW
        data_active_defense_eq[EQUIPMENT.name].attack_parameters.cooldown = EQUIPMENT.cooldown
        data_active_defense_eq[EQUIPMENT.name].attack_parameters.damage_modifier = EQUIPMENT.damage_modifier
        data_active_defense_eq[EQUIPMENT.name].attack_parameters.range = EQUIPMENT.range
        data_active_defense_eq[EQUIPMENT.name].attack_parameters.ammo_type.energy_consumption = EQUIPMENT.energy_consumption .. kJ
        local action = data_active_defense_eq[EQUIPMENT.name].attack_parameters.ammo_type.action
        local target = action[1] or action
        if target and target.action_delivery and target.action_delivery.beam then
            target.action_delivery.max_length = EQUIPMENT.range
            target.action_delivery.duration = EQUIPMENT.cooldown
        end
    end
end
local function laser_defense_eq_recipe(name, battery, circuit, plate, laser_defense_eq, polished, artifact)
    local ingredients =
    {
        {type = item, name = battery, amount = 4},
        {type = item, name = circuit, amount = 4},
        {type = item, name = plate, amount = 4}
    }
    if laser_defense_eq then
        table.insert(ingredients, {type = item, name = laser_defense_eq, amount = 1})
    end
    if polished then
        table.insert(ingredients, {type = item, name = polished, amount = 1})
    end
    if artifact then
        table.insert(ingredients, {type = item, name = artifact, amount = 4})
    end
    data_recipe[name].ingredients = ingredients
end
laser_defense_eq_recipe(laser_defense_eq_1, battery_lead_acid, electronic_circuit, steel_plate)
if mods[bobequipment] then
    laser_defense_eq_recipe(laser_defense_eq_2, battery_lead_acid, advanced_circuit, plastic, laser_defense_eq_1, polished_sapphire_bob)
    laser_defense_eq_recipe(laser_defense_eq_3, battery_lithium_ion, advanced_circuit, invar_plate_bob, laser_defense_eq_2, polished_emerald_bob)
    laser_defense_eq_recipe(laser_defense_eq_4, battery_silver_zinc, processing_unit, titanium_plate_bob, laser_defense_eq_3, polished_amethyst_bob)
    if data_item[alien_artifact] then
        laser_defense_eq_recipe(laser_defense_eq_5, battery_graphene, processing_unit, nitinol_plate_bob, laser_defense_eq_4, polished_topaz_bob, alien_artifact)
        data_recipe[laser_defense_eq_6].ingredients =
        {
            {type = item, name = battery_graphene, amount = 4},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = laser_defense_eq_5, amount = 1},
            {type = item, name = polished_diamond_bob, amount = 1},
            {type = item, name = blue_alloy, amount = 16},
            {type = item, name = orange_alloy, amount = 16},
            {type = item, name = speed_module_3, amount = 1},
            {type = item, name = efficiency_module_3, amount = 1},
            {type = fluid, name = green_fluid, amount = 240}
        }
    else
        laser_defense_eq_recipe(laser_defense_eq_5, battery_graphene, processing_unit, nitinol_plate_bob, laser_defense_eq_4, polished_topaz_bob)
        data_recipe[laser_defense_eq_6].ingredients =
        {
            {type = item, name = battery_graphene, amount = 4},
            {type = item, name = advanced_processing_unit, amount = 4},
            {type = item, name = laser_defense_eq_5, amount = 1},
            {type = item, name = polished_diamond_bob, amount = 1},
            {type = item, name = speed_module_3, amount = 1},
            {type = item, name = efficiency_module_3, amount = 1}
        }
    end
end

data_item[discharge_defense_eq].subgroup = is_military_equipment_2
data_item[discharge_defense_eq].order = z
data_item[discharge_defense_eq].stack_size = 8
data_item[discharge_defense_eq].weight = 125000
data_recipe[discharge_defense_eq].subgroup = is_military_equipment_2
data_recipe[discharge_defense_eq].order = z
data_recipe[discharge_defense_eq].ingredients =
{
    {type = item, name = processing_unit, amount = 4},
    {type = item, name = laser_turret_1, amount = 8},
    {type = item, name = steel_plate, amount = 16}
}
data_active_defense_eq[discharge_defense_eq].attack_parameters.cooldown = 120
data_active_defense_eq[discharge_defense_eq].attack_parameters.range = 8

bobmods.lib.recipe.update_recycling_recipe
({
    pistol,
    submachine_gun,
    rifle,
    sniper_rifel,
    piercing_rounds_magazine,
    uranium_rounds_magazine,
    shotgun,
    combat_shotgun,
    piercing_shotgun_shell,
    uranium_shotgun_shell,
    laser,
    rocket_launcher,
    atomic_rocket,
    flamethrower,
    uranium_cannon_shell,
    uranium_explosive_cannon_shell,
    artillery_shell,
    atomic_artillery_shell,
    bullet_projectile,
    bullet_flame_projectile,
    bullet_he_projectile,
    bullet_electric_projectile,
    bullet_ap_projectile,
    bullet_acid_projectile,
    bullet_poison_projectile,
    bullet_plasma_projectile,
    shotgun_shell_better,
    shotgun_shell_flame,
    shotgun_shell_explosive,
    shotgun_shell_electric,
    shotgun_shell_ap,
    shotgun_shell_acid,
    shotgun_shell_poison,
    shotgun_shell_plasma,
    rocket_warhead,
    rocket_flame_warhead,
    rocket_explosive_warhead,
    rocket_electric_warhead,
    rocket_piercing_warhead,
    rocket_acid_warhead,
    rocket_poison_warhead,
    rocket_plasma_warhead,
    rocket_engine,
    grenade,
    cluster_grenade,
    fire_capsule,
    poison_capsule,
    slowdown_capsule,
    defender_capsule,
    distractor_capsule,
    destroyer_capsule,
    laser_capsule,
    light_armor,
    heavy_armor,
    modular_armor,
    power_armor_1,
    power_armor_2,
    power_armor_3,
    power_armor_4,
    power_armor_5,
    solar_panel_eq_1,
    solar_panel_eq_2,
    solar_panel_eq_3,
    solar_panel_eq_4,
    fission_reactor_1,
    fission_reactor_2,
    fission_reactor_3,
    fission_reactor_4,
    battery_eq_1,
    battery_eq_2,
    battery_eq_3,
    battery_eq_4,
    battery_eq_5,
    battery_eq_6,
    exoskeleton_eq_1,
    exoskeleton_eq_2,
    exoskeleton_eq_3,
    belt_immunity_eq,
    nightvision_eq_1,
    nightvision_eq_2,
    nightvision_eq_3,
    roboport_eq_1,
    roboport_eq_2,
    roboport_eq_3,
    roboport_eq_4,
    energy_shield_eq_1,
    energy_shield_eq_2,
    energy_shield_eq_3,
    energy_shield_eq_4,
    energy_shield_eq_5,
    energy_shield_eq_6,
    laser_defense_eq_1,
    laser_defense_eq_2,
    laser_defense_eq_3,
    laser_defense_eq_4,
    laser_defense_eq_5,
    laser_defense_eq_6,
    discharge_defense_eq
})