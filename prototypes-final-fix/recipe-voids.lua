-- FLUID and GAS
local fluids =
{
    -- REFINING
    sludge_ferrous, slurry_ferrous, concentrate_ferrous, concentrate_anodized_ferrous, iron_chloride_III_solution_angels,
    sludge_cupric, slurry_cupric, concentrate_cupric, concentrate_anodized_cupric, copper_chloride_II_solution_angels,
    slurry_slag, sludge_mineral, slurry_crystal, seedling_crystal,
    -- WATER TREATMENT
    water, water_purified_angels, water_mineralized_angels,
    water_viscous_mud, water_heavy_mud, water_concentrated_mud, water_light_mud, water_thin_mud, water_saline_angels, water_thermal_angels,
    water_yellow_waste, water_greenyellow_waste, water_green_waste, water_red_waste,
    coolant, coolant_used, water_heavy_angels,
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
    boric_acid,
    -- POTASSIUM
    potassium_chloride_solution, potassium_hydroxide_solution, potassium_hypochlorite_solution, potassium_chlorate_solution, potassium_sulfate_solution,
    -- PHOSPORUS
    phosphorus_chloride_III_liquid, hexafluorophosphoric_acid, ionic_liquid,
    -- PETROCHEM
    carbonic_acid, coal_tar_liquid,
    urea_solution_angels, nitric_acid_angels, melamine_solution_angels, hydrazine_angels, dimethylhydrazine_angels, ammonium_chloride_solution_angels, cyanamide_solution, dicyandiamide_solution, ammonium_sulfate_solution, acrylonitrile, acetone_cyanohydrin, ammonium_fluoride_solution, adiponitrile_liquid, imidazole_solution,
    hydrofluoric_acid_angels,
    sodium_hydroxide_solution_angels, sodium_chloride_solution, sodium_sulfate_solution, sodium_carbonate_solution, sodium_nitrate_solution, sodium_hypochlorite_solution, sodium_chlorate_solution, sodium_perchlorate_solution, sodium_bicarbonate_solution, sodium_cyanide_solution,
    sulfuric_acid_angels, peroxydisulfuric_acid,
    hydrochloric_acid_angels, allyl_chloride_angels, epichlorohydrin_angels, perchloric_acid_angels, hypochlorous_acid, chlorobutane_liquid,
    calcium_hydroxide_solution, calcium_chloride_solution,
    hydrogen_peroxide, hydrocyanic_acid,
    NGL_angels, condensates_angels,
    multi_phase_oil_angels, crude_oil, mineral_oil_angels, lubricant, fuel_oil_angels, liquid_fuel_bob, naphtha_angels,
    diethyl_ether, methyl_methacrylate, acetaldehyde, formic_acid,
    methanol_angels, benzene_angels, acetone_angels, dimethyl_carbonate, ethylene_carbonate, ethylbenzene_angels, styrene_angels, ethylene_glycol_liquid, glyoxal_liquid,
    liquid_plastic_angels, liquid_resin_angels, epoxy_resin_liquid, liquid_rubber_angels,
    glycerol_dichlorohydrin, glycerol_angels, nitroglycerin_bob, toluene_angels,
    -- BIOPROCESSING
    nutrient_pulp, raw_vegetable_oil, vegetable_oil,
    acetic_acid, acetic_anhydride, ethanol_angels, propionic_acid,
    water_for_fish, polluted_water_for_fish, raw_fish_oil, fish_oil,
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
                results = {{type = item, name = compost_angels, amount = 1}},
                main_product = compost_angels
            }
        })
    end
end