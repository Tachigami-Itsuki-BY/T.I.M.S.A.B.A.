local recipe = "recipe"
local item_sounds = require("__base__.prototypes.item_sounds")
local barrel_fill_icon = "__base__/graphics/icons/fluid/barreling/barrel-fill.png"
local barrel_fill_side_mask = "__base__/graphics/icons/fluid/barreling/barrel-fill-side-mask.png"
local barrel_fill_top_mask = "__base__/graphics/icons/fluid/barreling/barrel-fill-top-mask.png"
local barrel_empty_icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png"
local barrel_empty_side_mask = "__base__/graphics/icons/fluid/barreling/barrel-empty-side-mask.png"
local barrel_empty_top_mask = "__base__/graphics/icons/fluid/barreling/barrel-empty-top-mask.png"
local side_alpha = 0.75
local top_hoop_alpha = 0.75
local angels_barreling_pump = "angels-barreling-pump"
local barrel_name = "barrel"
local canister_name = "canister"
local bottle_name = "bottle"
local simple_fluids =
{
    sludge_ferrous, slurry_ferrous, concentrate_ferrous, concentrate_anodized_ferrous,
    sludge_cupric, slurry_cupric, concentrate_cupric, concentrate_anodized_cupric,
    slurry_slag, sludge_mineral, slurry_crystal, seedling_crystal,
    water, water_purified_angels, water_mineralized_angels,
    water_viscous_mud, water_heavy_mud, water_concentrated_mud, water_light_mud, water_thin_mud, water_saline_angels, water_thermal_angels,
    water_yellow_waste, water_greenyellow_waste, water_green_waste, water_red_waste,
    NGL_angels, condensates_angels,
    multi_phase_oil_angels, crude_oil, mineral_oil_angels, lubricant, fuel_oil_angels, liquid_fuel_bob, naphtha_angels,
    liquid_plastic_angels, liquid_resin_angels, liquid_rubber_angels,
    nutrient_pulp, raw_vegetable_oil, vegetable_oil,
    water_for_fish, polluted_water_for_fish, raw_fish_oil, fish_oil,
}
local dangerous_fluids =
{
    ferric_chloride_solution_angels,
    cupric_chloride_solution_angels,
    iron_sulfate_solution,
    copper_sulfate_solution, ammonium_dichlorocuprate_solution, copper_nitrate_solution,
    hexafluorosilicate_lead_solution,
    tin_tetrachloride, hexafluorosilicate_tin_solution,
    manganese_sulfate_solution,
    magnesium_chloride_solution,
    trichlorosilane, hexafluorosilicic_acid, 
    nickel_sulfate_solution, tetracarbonyl_nickel,
    aluminium_chloride_solution, aluminium_chloride_solution_ether, lithium_aluminium_hydride_solution_ether, lithium_tetraethoxy_aluminate_solution_ether,
    zinc_chloride_solution, zinc_sulfate_solution,
    silver_nitrate_solution, sodium_silver_cyanide_solution,
    titanium_tetrachloride,
    chlorauric_acid, sodium_gold_cyanide_solution,
    cobalt_chloride_solution,
    chromic_acid, chrome_sulfate_II_solution, potassium_chromate_solution, potassium_dichromate_solution,
    peroxo_tungstic_acid, ammonium_tungstate_solution,
    hexachloroplatinic_acid, sodium_hexachloroplatinate_solution, sodium_hexahydroxoplatinate_solution,
    lithium_chloride_solution, lithium_perchlorate_solution,
    boric_acid,
    potassium_chloride_solution, potassium_hydroxide_solution, potassium_hypochlorite_solution, potassium_sulfate_solution,
    coolant,
    carbonic_acid,
    urea_solution_angels, nitric_acid_angels, melamine_solution_angels, hydrazine_angels, dimethylhydrazine_angels, ammonium_chloride_solution_angels, cyanamide_solution, dicyandiamide_solution, ammonium_sulfate_solution, acrylonitrile, acetone_cyanohydrin,
    hydrofluoric_acid_angels,
    sodium_hydroxide_solution_angels, sodium_chloride_solution, sodium_sulfate_solution, sodium_carbonate_solution, sodium_nitrate_solution, sodium_hypochlorite_solution, sodium_chlorate_solution, sodium_perchlorate_solution, sodium_bicarbonate_solution, sodium_cyanide_solution,
    sulfuric_acid_angels, peroxydisulfuric_acid,
    hydrochloric_acid_angels, allyl_chloride_angels, epichlorohydrin_angels, perchloric_acid_angels, hypochlorous_acid,
    calcium_hydroxide_solution, calcium_chloride_solution,
    hydrogen_peroxide, hydrocyanic_acid,
    diethyl_ether, methyl_methacrylate, acetaldehyde, formic_acid,
    methanol_angels, benzene_angels, acetone_angels, dimethyl_carbonate, ethylene_carbonate, ethylbenzene_angels, styrene_angels,
    glycerol_dichlorohydrin, glycerol_angels, nitroglycerin_bob, toluene_angels,
    acetic_acid, acetic_anhydride, ethanol_angels, propionic_acid,
    holmium_chloride_solution, holmium_nitrate_solution, electrolyte,
    chloroform_luiqd, fluoroketone_hot, fluoroketone_cold,
}
local gases =
{
    silicon_tetrachloride_gas, silicon_tetrafluoride_gas,
    silane_gas,
    titanium_tetraiodide_gas,
    tungsten_hexafluoride_gas,
    diborane_gas,
    compressed_air, hydrogen_angels, deuterium_angels, nitrogen_angels, oxygen_angels, chlorine_angels, carbon_monoxide_angels, carbon_dioxide_angels,
    ammonia_angels, nitrogen_monoxide_angels, nitrogen_dioxide_angels, monochloramine_angels, dinitrogen_tetroxide_angels, methylamine_angels, dimethylamine_angels, nitrogen_oxide,
    hydrogen_fluoride_angels, oxygen_fluoride_gas,
    acid_angels, hydrogen_sulfide_angels, sulfur_dioxide_angels, sulfur_trioxide_gas,
    hydrogen_chloride_angels, chloromethane_angels, phosgene_gas, chlorine_oxide_gas, chloroethane_gas,
    natural_gas_angels, raw_gas_angels,
    residual_angels, synthesis_angels,
    acetylene_gas,
    methane_angels, formaldehyde_angels, ethane_angels, ethylene_angels, butene_gas, propene_angels, ethylene_oxide, butane_angels, butadiene_angels,
    iodine_gas,
    vulcanus_air,
    fulgora_air,
    fluorine, difluorochloromethane_gas, tetrafluoroethylene_gas, hexafluoropropylene_gas, hexafluoropropylene_oxide_gas,
    aquilo_air, tetrafluorohydrazine_gas, nitrogen_trifluoride_gas, nitrogen_trifluoride_liquefied,
}
function table.contains(tbl, val)
    for _, v in pairs(tbl) do
        if v == val then
            return true
        end
    end
    return false
end
local function get_container(fluid_name)
    if table.contains(simple_fluids, fluid_name) then
        return is_barrel, barrel_name
    elseif table.contains(dangerous_fluids, fluid_name) then
        return is_canister, canister_name
    elseif table.contains(gases, fluid_name) then
        return is_bottle, bottle_name
    end
    return nil, nil
end
local function get_container_recipe(fluid_name)
    if table.contains(simple_fluids, fluid_name) then
        return barrel, is_barrel, barrel_name
    elseif table.contains(dangerous_fluids, fluid_name) then
        return canister, is_canister, canister_name
    elseif table.contains(gases, fluid_name) then
        return gas_bottle, is_bottle, bottle_name
    end
    return nil, nil, nil
end
local function get_container_tech(fluid_name)
    if table.contains(simple_fluids, fluid_name) then
        return barrel_name
    elseif table.contains(dangerous_fluids, fluid_name) then
        return canister_name
    elseif table.contains(gases, fluid_name) then
        return bottle_name
    end
    return nil, nil, nil
end
-- ITEM
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
        {icon = "__boblibrary__/graphics/icons/cylinder/empty-canister.png",  icon_size = 32 },
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
local function create_container_item(fluids)
    local subgroup, container_name = get_container(fluids.name)
    if not subgroup then return end
    local icons = get_icons(fluids, container_name) or {}
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
            localised_name = {"item-name.fill-" .. container_name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = item,
            name = fluids.name .. "-" .. container_name,
            subgroup = subgroup,
            icons = icons,
            order = fluids.name .. "-" .. container_name,
            hide_from_player_crafting = true,
            stack_size = 200,
            weight = 5000,
            inventory_move_sound = item_sounds.metal_barrel_inventory_move,
            pick_sound = item_sounds.metal_barrel_inventory_pickup,
            drop_sound = item_sounds.metal_barrel_inventory_move
        }
    })
end
for _, fluids in pairs(data.raw.fluid) do
    create_container_item(fluids)
end
-- FILL
local function generate_fill_recipe_icons(fluids, icon)
    if fluids.icon then
        local iconsize = fluids.icon_size or 64
        table.insert(icon, { icon = fluids.icon, icon_size = iconsize, scale = 16.0 / iconsize, shift = {8,-8}})
    elseif fluids.icons and util.combine_icons then
        icon = util.combine_icons(icon, fluids.icons, {scale = 0.5, shift = {8,-8}})
    end
    return icon
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
local function create_container_fill_recipes(fluids)
    local container, subgroup, container_name = get_container_recipe(fluids.name)
    if not container then return end
    local icons = get_recipe_fill_icons(fluids, container_name)
    data:extend
    ({
        {
            localised_name = {"recipe-name.fill-" .. container_name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = recipe,
            name = fluids.name .. "-" .. container_name,
            category = angels_barreling_pump,
            subgroup = subgroup,
            icons = icons,
            order = fluids.name .. "-" .. container_name,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            hide_from_player_crafting = true,
            energy_required = 0.25,
            ingredients =
            {
                {type = item, name = container, amount = 1},
                {type = fluid, name = fluids.name, amount = 60}
            },
            results = {{type = item, name = fluids.name .. "-" .. container_name, amount = 1}},
            main_product = fluids.name .. "-" .. container_name
        }
    })
end
for _, fluids in pairs(data.raw.fluid) do
    create_container_fill_recipes(fluids)
end
-- EMPTY
local function generate_empty_recipe_icons(fluids, icon)
    if fluids.icon then
        local iconsize = fluids.icon_size or 64
        table.insert(icon, { icon = fluids.icon, icon_size = iconsize, scale = 16.0 / iconsize, shift = {8,8}})
    elseif fluids.icons and util.combine_icons then
        icon = util.combine_icons(icon, fluids.icons, {scale = 0.5, shift = {8,8}})
    end
    return icon
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
local function create_container_empty_recipes(fluids)
    local container, subgroup, container_name = get_container_recipe(fluids.name)
    if not container then return end
    local icons = get_recipe_empty_icons(fluids, container_name)
    data:extend
    ({
        {
            localised_name = {"recipe-name.empty-" .. container_name, fluids.localised_name or {"fluid-name." .. fluids.name}},
            type = recipe,
            name = "empty-" .. fluids.name .. "-" .. container_name,
            category = angels_barreling_pump,
            subgroup = subgroup,
            icons = icons,
            order = "empty-" .. fluids.name .. "-" .. container_name,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            hide_from_player_crafting = true,
            energy_required = 0.25,
            ingredients = {{type = item, name = fluids.name .. "-" .. container_name, amount = 1}},
            results =
            {
                {type = item, name = container, amount = 1},
                {type = fluid, name = fluids.name, amount = 60}
            }
        }
    })
end
for _, fluids in pairs(data.raw.fluid) do
    create_container_empty_recipes(fluids)
end
local function add_recipe_to_tech(recipe_name, tech_name)
    if data.raw.technology[tech_name] then
        table.insert(data.raw.technology[tech_name].effects,
        {
            type = "unlock-recipe",
            recipe = recipe_name
        })
    end
end
for _, fluids in pairs(data.raw.fluid) do
    create_container_item(fluids)
    create_container_fill_recipes(fluids)
    create_container_empty_recipes(fluids)
    local container_name = get_container_tech(fluids.name)
    if container_name then
        local tech =
            container_name == "barrel" and "bob-fluid-barrel-processing"
            or container_name == "canister" and "bob-fluid-canister-processing"
            or container_name == "bottle" and "bob-gas-canisters"
        add_recipe_to_tech(fluids.name .. "-" .. container_name, tech)
        add_recipe_to_tech("empty-" .. fluids.name .. "-" .. container_name, tech)
    end
end