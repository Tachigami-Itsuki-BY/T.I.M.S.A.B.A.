-- FLUID and GAS
local fluids =
{
    sludge_ferrous, slurry_ferrous, concentrate_ferrous, concentrate_anodized_ferrous, ferric_chloride_solution_angels,
    sludge_cupric, slurry_cupric, concentrate_cupric, concentrate_anodized_cupric, cupric_chloride_solution_angels,
    slurry_slag, sludge_mineral, slurry_crystal, seedling_crystal,
    water, water_purified_angels, water_mineralized_angels, water_viscous_mud, water_heavy_mud, water_concentrated_mud, water_light_mud, water_thin_mud, water_saline_angels, water_thermal_angels, water_yellow_waste, water_greenyellow_waste, water_green_waste, water_red_waste,
    iron_sulfate_solution,
    copper_sulfate_solution, ammonium_dichlorocuprate_solution,
    hexafluorosilicic_acid, hexafluorosilicate_lead_solution,
    tin_tetrachloride, hexafluorosilicate_tin_solution,
    manganese_sulfate_solution,
    magnesium_chloride_solution,
    nickel_sulfate_solution, tetracarbonyl_nickel,
    aluminium_chloride_solution, aluminium_chloride_solution_ether, lithium_aluminium_hydride_solution_ether, lithium_tetraethoxy_aluminate_solution_ether,
    zinc_chloride_solution, zinc_sulfate_solution,
    silver_nitrate_solution, sodium_silver_cyanide_solution,
    titanium_tetrachloride,
    chlorauric_acid, sodium_gold_cyanide_solution,
    cobalt_chloride_solution,
    chromic_acid, chrome_sulfate_II_solution, potassium_chromate_solution, potassium_dichromate_solution,
    peroxo_tungstic_acid, ammonium_tungstate_solution,
    hexachloroplatinic_acid,
    lithium_chloride_solution, lithium_perchlorate_solution,
    boric_acid,
    potassium_chloride_solution, potassium_hydroxide_solution, potassium_hypochlorite_solution, potassium_sulfate_solution,
    carbonic_acid,
    urea_solution_angels, nitric_acid_angels, melamine_solution_angels, hydrazine_angels, dimethylhydrazine_angels, ammonium_chloride_solution_angels, cyanamide_solution, dicyandiamide_solution, ammonium_sulfate_solution, acrylonitrile, acetone_cyanohydrin,
    hydrofluoric_acid_angels,
    sodium_hydroxide_solution_angels, sodium_chloride_solution, sodium_sulfate_solution, sodium_carbonate_solution, sodium_nitrate_solution, sodium_hypochlorite_solution, sodium_chlorate_solution, sodium_perchlorate_solution, sodium_bicarbonate_solution, sodium_cyanide_solution,
    sulfuric_acid_angels, peroxydisulfuric_acid,
    hydrochloric_acid_angels, allyl_chloride_angels, epichlorohydrin_angels, perchloric_acid_angels, hypochlorous_acid,
    calcium_hydroxide_solution, calcium_chloride_solution,
    hydrogen_peroxide, hydrocyanic_acid,
    NGL_angels, condensates_angels,
    multi_phase_oil_angels, crude_oil, mineral_oil_angels, lubricant, fuel_oil_angels, liquid_fuel_bob, naphtha_angels,
    diethyl_ether, methyl_methacrylate, acetaldehyde, formic_acid,
    methanol_angels, benzene_angels, acetone_angels, dimethyl_carbonate, ethylene_carbonate, ethylbenzene_angels, styrene_angels,
    liquid_plastic_angels, liquid_resin_angels, liquid_rubber_angels,
    glycerol_dichlorohydrin, glycerol_angels, nitroglycerin_bob, toluene_angels,
    nutrient_pulp, raw_vegetable_oil, vegetable_oil,
    acetic_acid, acetic_anhydride, ethanol_angels, propionic_acid,
    water_for_fish, polluted_water_for_fish, raw_fish_oil, fish_oil,
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
    methane_angels, formaldehyde_angels, ethane_angels, ethylene_angels, butene_gas, propene_angels, ethylene_oxide, butane_angels, butadiene_angels,
    acetylene_gas,
    iodine_gas,
    vulcanus_air,
    fulgora_air,
    fluorine, difluorochloromethane_gas, tetrafluoroethylene_gas, hexafluoropropylene_gas, hexafluoropropylene_oxide_gas,
    aquilo_air, tetrafluorohydrazine_gas, nitrogen_trifluoride_gas, nitrogen_trifluoride_liquefied,
}
for _, fluid_name in pairs(fluids) do
    if data.raw.fluid[fluid_name] then
        data:extend
        ({
            {
                localised_name = {"recipe-name.void", {"fluid-name." .. fluid_name}},
                type = "recipe",
                name = fluid_name .. "-void",
                category = "angels-water-void",
                subgroup = "angels-water-void",
                icons =
                {
                    {icon = deleted_png, icon_size = 64, scale = 0.5},
                    {icon = data.raw.fluid[fluid_name].icon, icon_size = 64, scale = 0.25}
                },
                order = fluid_name .. "-void",
                enabled = true,
                hide_from_player_crafting = true,
                allow_productivity = false,
                energy_required = 4,
                ingredients = {{type = fluid, name = fluid_name, amount = 480}},
                results = {}
            }
        })
    end
end
for _, gas_name in pairs(gases) do
    if data.raw.fluid[gas_name] then
        data:extend
        ({
            {
                localised_name = {"recipe-name.void", {"fluid-name." .. gas_name}},
                type = "recipe",
                name = gas_name .. "-void",
                category = "angels-chemical-void",
                subgroup = "angels-chemical-void",
                icons =
                {
                    {icon = deleted_png, icon_size = 64, scale = 0.5},
                    {icon = data.raw.fluid[gas_name].icon, icon_size = 64, scale = 0.25}
                },
                order = gas_name .. "-void",
                enabled = true,
                auto_recycle = false,
                allow_productivity = false,
                allow_quality = false,
                allow_decomposition = false,
                hide_from_player_crafting = true,
                energy_required = 1,
                ingredients = {{type = fluid, name = gas_name, amount = 60}},
                results = {}
            }
        })
    end
end

-- COMPOST
local organics =
{
    algae_green, algae_brown, algae_red, algae_blue,
    wheaton, tianaton, okarinome, quillnoa, kendallion,
    elendilomone, zombieecalyptus, saundsrcress, nexeflax, mushredtato,
    binafran, primedeadelion, nilaubergine, zelosquash, arumbiphila,
    beans, corn, leaves, nuts, pips, fruits,
    jellynut, jelly, yumako, yumako_mash, bioflux,
}
for _, organic_name in pairs(organics) do
    if data.raw.item[organic_name] or data.raw.capsule[organic_name] then
        data:extend
        ({
            {
                localised_name = {"recipe-name.compost", {"item-name." .. organic_name}},
                type = "recipe",
                name = organic_name .. "-compost",
                category = "angels-bio-void",
                subgroup = "angels-bio-void",
                icons = TWO_I(organic_name, compost_angels),
                order = organic_name .. "-compost",
                enabled = true,
                auto_recycle = false,
                allow_productivity = false,
                allow_quality = false,
                allow_decomposition = false,
                hide_from_player_crafting = true,
                energy_required = 1,
                ingredients = {{type = item, name = organic_name, amount = 1}},
                results = {{type = item, name = compost_angels, amount = 1}}
            }
        })
    end
end