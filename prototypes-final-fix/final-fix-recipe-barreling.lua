local item_sounds = require("__base__.prototypes.item_sounds")
local util = require("util")
local barrel_fill_icon = "__base__/graphics/icons/fluid/barreling/barrel-fill.png"
local barrel_fill_side_mask = "__base__/graphics/icons/fluid/barreling/barrel-fill-side-mask.png"
local barrel_fill_top_mask = "__base__/graphics/icons/fluid/barreling/barrel-fill-top-mask.png"
local barrel_empty_icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png"
local barrel_empty_side_mask = "__base__/graphics/icons/fluid/barreling/barrel-empty-side-mask.png"
local barrel_empty_top_mask = "__base__/graphics/icons/fluid/barreling/barrel-empty-top-mask.png"
local side_alpha = 0.75
local top_hoop_alpha = 0.75
local is_barreling_pump = "angels-barreling-pump"
local barrel_name = "barrel"
local canister_name = "canister"
local bottle_name = "bottle"
local simple_fluids =
{
    -- REFINING
    sludge_ferrous, slurry_ferrous, concentrate_ferrous, concentrate_anodized_ferrous,
    sludge_cupric, slurry_cupric, concentrate_cupric, concentrate_anodized_cupric,
    slurry_slag, sludge_mineral, slurry_crystal, seedling_crystal,
    -- WATER TREATMENT
    water, water_purified_angels, water_mineralized_angels,
    water_viscous_mud, water_heavy_mud, water_concentrated_mud, water_light_mud, water_thin_mud, water_saline_angels, water_thermal_angels,
    water_yellow_waste, water_greenyellow_waste, water_green_waste, water_red_waste,
    -- PETROCHEM
    coal_tar_liquid,
    NGL_angels, condensates_angels,
    multi_phase_oil_angels, crude_oil, mineral_oil_angels, lubricant, fuel_oil_angels, liquid_fuel_bob, naphtha_angels,
    liquid_plastic_angels, liquid_resin_angels, epoxy_resin_liquid, liquid_rubber_angels,
    -- BIOPROCESSING
    nutrient_pulp, raw_vegetable_oil, vegetable_oil,
    water_for_fish, polluted_water_for_fish, raw_fish_oil, fish_oil,
    -- MODS
    -- MULUNA
    tar_mods,
    -- MOSHINE
    water_orange_waste,
    -- PANGLIA
    branbalite_slurry,
    -- ARIG
    heavy_oil_timsaba,
    -- HYARION
    polishing_compound_hyarion,
    -- TELLUS
    chlorophyll, water_infected,
}
local dangerous_fluids =
{
    -- REFINING
    iron_chloride_III_solution_angels, copper_chloride_II_solution_angels,
    -- IROM
    iron_sulfate_II_solution,
    -- COPPER
    copper_sulfate_II_solution, ammonium_dichlorocuprate_I_solution, copper_nitrate_II_solution,
    -- LEAD
    hexafluorosilicate_lead_II_solution,
    -- TIN
    tin_chloride_IV, hexafluorosilicate_tin_II_solution,
    -- MANGANESE
    manganese_sulfate_II_solution,
    -- MAGNESIUM
    magnesium_chloride_solution,
    -- SILICON
    trichlorosilane, hexafluorosilicic_acid,
    -- NICKEL
    nickel_sulfate_II_solution, tetracarbonyl_nickel,
    -- ALUMINIUM
    aluminium_chloride_solution, aluminium_chloride_solution_ether, lithium_aluminium_hydride_solution_ether, lithium_tetraethoxy_aluminate_solution_ether,
    -- ZINC
    zinc_chloride_solution, zinc_sulfate_solution,
    -- SILVER
    sodium_dicyanoargentate_I_solution,
    -- TITANIUM
    titanium_chloride_IV,
    -- GOLD
    chlorauric_acid, sodium_dicyanoaurate_I_solution,
    -- COBALT
    cobalt_chloride_II_solution,
    -- CHROMIUM
    chromic_acid, chromium_sulfate_II_solution, potassium_chromate_solution, potassium_dichromate_solution,
    -- TUNGSTEN
    peroxo_tungstic_acid, ammonium_tungstate_solution,
    -- PLATINUM
    hexachloroplatinic_acid, sodium_hexachloroplatinate_IV_solution, sodium_hexahydroxoplatinate_IV_solution,
    -- MOLYBDENUM
    molybdenum_chloride_III_solution, molybdenum_fluoride_IV,
    -- RHENIUM
    potassium_perrhenate_solution, rhenium_acid,
    -- LITHIUM
    lithium_chloride_solution, lithium_perchlorate_solution, lithium_hexafluorophosphate_solution_carbonate,
    -- BORON
    boric_acid_solution,
    -- POTASSIUM
    potassium_chloride_solution, potassium_hydroxide_solution, potassium_hypochlorite_solution, potassium_chlorate_solution, potassium_sulfate_solution,
    -- PHOSPORUS
    phosphorus_chloride_III_liquid, hexafluorophosphoric_acid, ionic_liquid,
    -- WATER TREATMENT
    coolant,
    -- PETROCHEM
    carbonic_acid,
    urea_solution_angels, nitric_acid_angels, melamine_solution_angels, hydrazine_angels, dimethylhydrazine_angels, ammonium_chloride_solution_angels, cyanamide_solution, dicyandiamide_solution, ammonium_sulfate_solution, acrylonitrile, acetone_cyanohydrin, ammonium_fluoride_solution, adiponitrile_liquid, imidazole_solution,
    hydrofluoric_acid_angels,
    sodium_hydroxide_solution_angels, sodium_chloride_solution, sodium_sulfate_solution, sodium_carbonate_solution, sodium_nitrate_solution, sodium_hypochlorite_solution, sodium_chlorate_solution, sodium_perchlorate_solution, sodium_bicarbonate_solution, sodium_cyanide_solution,
    sulfuric_acid_angels, peroxydisulfuric_acid,
    hydrochloric_acid_angels, allyl_chloride_angels, epichlorohydrin_angels, perchloric_acid_angels, hypochlorous_acid, chlorobutane_liquid,
    calcium_hydroxide_solution, calcium_chloride_solution,
    hydrogen_peroxide, hydrocyanic_acid,
    diethyl_ether, methyl_methacrylate, acetaldehyde, formic_acid,
    methanol_angels, benzene_angels, acetone_angels, dimethyl_carbonate, ethylene_carbonate, ethylbenzene_angels, styrene_angels, ethylene_glycol_liquid, glyoxal_liquid,
    glycerol_dichlorohydrin, glycerol_angels, nitroglycerin_bob, toluene_angels,
    -- BIOPROCESSING
    acetic_acid, acetic_anhydride, ethanol_angels, propionic_acid,
    -- VULCANUS
    -- NIOBIUM
    heptafluoroniobic_acid,
    -- FULGORA
    electrolyte,
    -- HOLMIUM
    holmium_chloride_III_solution, holmium_nitrate_III_solution,
    -- AQUILO
    chloroform_liquid, fluoroketone_hot, fluoroketone_cold,
    ammonia_solution, nitrobenzene_liquid, aniline_liquid, benzenediazonium_chloride_solution, lactic_acid, ethyl_lactate_liquid, photoresist_liquid,
    -- ANTIMONI
    antimony_chloride_V_liquid, antimony_acid, hexachloroantimonic_acid,
    -- GERMANIUM
    potassium_metagermanate_solution, germanium_chloride_IV, sodium_metagermanate_solution,
    -- GALIUM
    sodium_tetrahydroxogallate_III_solution, galium_chloride_III_solution_ether, lithium_gallium_hydride_solution_ether,
    -- MODS
    -- MOSHINE
    orthophosphoric_acid,
}
local gases =
{
    -- SILICON
    silicon_chloride_IV_gas, silane_gas, silicon_fluoride_IV_gas,
    -- TITANIUM
    titanium_iodide_IV_gas,
    -- TUNGSTEN
    tungsten_fluoride_VI_gas,
    -- BORON
    diborane_gas,
    -- PHOSPORUS
    phosphorus_fluoride_V_gas,
    -- PETROCHEM
    compressed_air, hydrogen_angels, deuterium_angels, tritium_gas, nitrogen_angels, oxygen_angels, chlorine_angels, argon_gas,
    carbon_monoxide_angels, carbon_dioxide_angels,
    ammonia_angels, nitrogen_monoxide_angels, nitrogen_dioxide_angels, monochloramine_angels, dinitrogen_tetroxide_angels, methylamine_angels, dimethylamine_angels, nitrogen_oxide, nitrogen_liquid,
    hydrogen_fluoride_angels, oxygen_fluoride_gas,
    acid_angels, hydrogen_sulfide_angels, sulfur_dioxide_angels, sulfur_trioxide_gas,
    hydrogen_chloride_angels, chloromethane_angels, phosgene_gas, chlorine_oxide_gas, chloroethane_gas,
    natural_gas_angels, raw_gas_angels,
    residual_angels, synthesis_angels,
    acetylene_gas,
    methane_angels, formaldehyde_angels, ethane_angels, ethylene_angels, butene_gas, propene_angels, ethylene_oxide, butane_angels, butadiene_angels,
    -- BIOPROCESSING
    iodine_gas,
    -- VULCANUS
    vulcanus_air,
    -- FULGORA
    fulgora_air,
    -- AQUILO
    fluorine, difluorochloromethane_gas, tetrafluoroethylene_gas, hexafluoropropylene_gas, hexafluoropropylene_oxide_gas,
    aquilo_air, tetrafluorohydrazine_gas, nitrogen_trifluoride_gas, nitrogen_trifluoride_liquefied,
    -- MODS
    -- MOSHINE
    moshine_air,
    -- HYARION
    hyarion_air,
}
local fluid_map = {}
local function fill_fluid_map(list, item_name, subgroup_name, suffix, tech_name)
    for _, f in pairs(list) do
        if f then
            fluid_map[f] =
            {
                item = item_name,
                sub = subgroup_name,
                name = suffix,
                tech = tech_name
            }
        end
    end
end
fill_fluid_map(simple_fluids, barrel, is_barrel, "barrel", "bob-fluid-barrel-processing")
fill_fluid_map(dangerous_fluids, canister, is_canister, "canister", "bob-fluid-canister-processing")
fill_fluid_map(gases, gas_bottle, is_bottle, "bottle", "bob-gas-canisters")
local function generate_fill_recipe_icons(fluids, base_icons)
    local icons = util.table.deepcopy(base_icons)
    if fluids.icon then
        local iconsize = fluids.icon_size or 64
        table.insert(icons, {icon = fluids.icon, icon_size = iconsize, scale = 16.0 / iconsize, shift = {8,-8}})
    elseif fluids.icons then
        icons = util.combine_icons(icons, fluids.icons, {scale = 0.5, shift = {8,-8}}, fluids.icon_size or 64)
    end
    return icons
end
local function generate_empty_recipe_icons(fluids, base_icons)
    local icons = util.table.deepcopy(base_icons)
    if fluids.icon then
        local iconsize = fluids.icon_size or 64
        table.insert(icons, {icon = fluids.icon, icon_size = iconsize, scale = 16.0 / iconsize, shift = {8,8}})
    elseif fluids.icons then
        icons = util.combine_icons(icons, fluids.icons, {scale = 0.5, shift = {8,8}}, fluids.icon_size or 64)
    end
    return icons
end
local function generate_gas_bottle_item_icons(fluids)
    return
    {
        {icon = "__boblibrary__/graphics/icons/cylinder/gas-canister.png", icon_size = 32},
        {icon = "__boblibrary__/graphics/icons/cylinder/cylinder-top.png", icon_size = 32, tint = fluids.flow_color},
        {icon = "__boblibrary__/graphics/icons/cylinder/cylinder-mid.png", icon_size = 32, tint = fluids.base_color},
    }
end
local function generate_fluid_canister_item_icons(fluids)
    return
    {
        {icon = "__boblibrary__/graphics/icons/cylinder/empty-canister.png",  icon_size = 32},
        {icon = "__boblibrary__/graphics/icons/cylinder/canister-top.png",    icon_size = 32, tint = fluids.flow_color},
        {icon = "__boblibrary__/graphics/icons/cylinder/canister-bottom.png", icon_size = 32, tint = fluids.base_color},
    }
end
local function generate_fluid_barrel_item_icons(fluids, base_icon, side_mask, top_mask)
    return
    {
        {icon = base_icon.icon or base_icon, icon_size = base_icon.icon_size or defines.default_icon_size},
        {icon = side_mask, icon_size = defines.default_icon_size, tint = util.get_color_with_alpha(fluids.base_color, side_alpha, true)},
        {icon = top_mask, icon_size = defines.default_icon_size, tint = util.get_color_with_alpha(fluids.flow_color, top_hoop_alpha, true)}
    }
end
local function get_icons(fluids, container_name)
    if container_name == "bottle" then
        return generate_gas_bottle_item_icons(fluids)
    elseif container_name == "canister" then
        return generate_fluid_canister_item_icons(fluids)
    else
        return generate_fluid_barrel_item_icons
        (
            fluids,
            {icon = "__base__/graphics/icons/fluid/barreling/barrel-fill.png", icon_size = 64},
            "__base__/graphics/icons/fluid/barreling/barrel-side-mask.png",
            "__base__/graphics/icons/fluid/barreling/barrel-hoop-top-mask.png"
        )
    end
end
local function create_container_item(fluids, info)
    local icons = get_icons(fluids, info.name)
    table.insert(icons,
    {
        icon = fluids.icon or (fluids.icons and fluids.icons[1].icon) or "__base__/graphics/icons/fluid/barreling/barrel-fill.png",
        icon_size = fluids.icon_size or (fluids.icons and fluids.icons[1].icon_size) or 64,
        scale = 0.375,
        shift = {0,0}
    })
    data:extend
    ({
        {
            localised_name = {"item-name.fill-" .. info.name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = item,
            name = fluids.name .. "-" .. info.name,
            subgroup = info.sub,
            icons = icons,
            order = fluids.name .. "-" .. info.name,
            stack_size = 200,
            hide_from_player_crafting = true,
            inventory_move_sound = item_sounds.metal_barrel_inventory_move,
            pick_sound = item_sounds.metal_barrel_inventory_pickup,
            drop_sound = item_sounds.metal_barrel_inventory_move
        }
    })
end
local function generate_gas_bottle_recipe_icons(fluids)
    local icon = generate_gas_bottle_item_icons(fluids)
    return generate_fill_recipe_icons(fluids, icon)
end
local function generate_fluid_canister_recipe_icons(fluids)
    local icon = generate_fluid_canister_item_icons(fluids)
    return generate_fill_recipe_icons(fluids, icon)
end
local function generate_fluid_barrel_recipe_icons(fluids, base_icon, side_mask, top_mask, fluid_icon_shift)
    local icons = generate_fluid_barrel_item_icons(fluids, base_icon, side_mask, top_mask)
    if fluids.icon then
        table.insert(icons,
        {
            icon = fluids.icon,
            icon_size = (fluids.icon_size or defines.default_icon_size),
            scale = 16.0 / (fluids.icon_size or defines.default_icon_size),
            shift = fluid_icon_shift
        }
    )
    elseif fluids.icons then
        icons = util.combine_icons(icons, fluids.icons, {scale = 0.5, shift = fluid_icon_shift}, fluids.icon_size)
    end
    return icons
end
local function get_recipe_fill_icons(fluids, container_name)
    if container_name == "bottle" then
        return generate_gas_bottle_recipe_icons(fluids)
    elseif container_name == "canister" then
        return generate_fluid_canister_recipe_icons(fluids)
    else
        return generate_fluid_barrel_recipe_icons(fluids, barrel_fill_icon, barrel_fill_side_mask, barrel_fill_top_mask, {8,-8})
    end
end
local function generate_gas_bottle_empty_recipe_icons(fluids)
    local icon = generate_gas_bottle_item_icons(fluids)
    return generate_empty_recipe_icons(fluids, icon)
end
local function generate_fluid_canister_empty_recipe_icons(fluids)
    local icon = generate_fluid_canister_item_icons(fluids)
    return generate_empty_recipe_icons(fluids, icon)
end
local function get_recipe_empty_icons(fluids, container_name)
    if container_name == "bottle" then
        return generate_gas_bottle_empty_recipe_icons(fluids)
    elseif container_name == "canister" then
        return generate_fluid_canister_empty_recipe_icons(fluids)
    else
        return generate_fluid_barrel_recipe_icons(fluids, barrel_empty_icon, barrel_empty_side_mask, barrel_empty_top_mask, {8,8})
    end
end
local function create_container_recipes(fluids, info)
    local fill_icons = get_recipe_fill_icons(fluids, info.name)
    local empty_icons = get_recipe_empty_icons(fluids, info.name)
    data:extend
    ({
        -- FILL
        {
            localised_name = {"recipe-name.fill-" .. info.name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = recipe,
            name = fluids.name .. "-" .. info.name,
            category = is_barreling_pump,
            subgroup = info.sub,
            icons = fill_icons,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            hide_from_player_crafting = true,
            ingredients =
            {
                {type = item, name = info.item, amount = 1},
                {type = fluid, name = fluids.name, amount = 60}
            },
            results = {{type = item, name = fluids.name .. "-" .. info.name, amount = 1}}
        },
        -- EMPTY
        {
            localised_name = {"recipe-name.empty-" .. info.name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = recipe,
            name = "empty-" .. fluids.name .. "-" .. info.name,
            category = is_barreling_pump,
            subgroup = info.sub .. "-empty",
            icons = empty_icons,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            hide_from_player_crafting = true,
            ingredients = {{type = item, name = fluids.name .. "-" .. info.name, amount = 1}},
            results =
            {
                {type = item, name = info.item, amount = 1},
                {type = fluid, name = fluids.name, amount = 60}
            }
        }
    })
end
for _, fluids in pairs(data.raw.fluid) do
    local info = fluid_map[fluids.name]
    if info then
        create_container_item(fluids, info)
        create_container_recipes(fluids, info)
        local tech = data.raw.technology[info.tech]
        if tech then
            tech.effects = tech.effects or {}
            table.insert(tech.effects, {type = unlock_recipe, recipe = fluids.name .. "-" .. info.name})
            table.insert(tech.effects, {type = unlock_recipe, recipe = "empty-" .. fluids.name .. "-" .. info.name})
        end
    end
end