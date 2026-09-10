-- BASE
data_fluid[water].icon = "__TIMSABA__/graphics/icons/base/water.png"
data_fluid[water].base_color = {r = 076 / 255, g = 177 / 255, b = 205 / 255}
data_fluid[water].flow_color = {r = 100 / 255, g = 192 / 255, b = 218 / 255}
data_fluid[water].default_temperature = 15
data_fluid[water].max_temperature = 100
data_fluid[water].heat_capacity = "200J"

data_fluid[steam].icon = "__TIMSABA__/graphics/icons/base/steam.png"
data_fluid[steam].base_color = {r = 097 / 255, g = 097 / 255, b = 097 / 255}
data_fluid[steam].flow_color = {r = 128 / 255, g = 128 / 255, b = 128 / 255}
data_fluid[steam].default_temperature = 15
data_fluid[steam].max_temperature = 5000
data_fluid[steam].heat_capacity = "200J"

data_fluid[crude_oil].icons = nil
data_fluid[crude_oil].icon = "__TIMSABA__/graphics/icons/base/crude-oil.png"
data_fluid[crude_oil].base_color = TIMSABA.functions.fluid_color("CcCcCc")
data_fluid[crude_oil].flow_color = TIMSABA.functions.flow_color("CcCcCc")

data_fluid[lubricant].icons = nil
data_fluid[lubricant].icon = "__TIMSABA__/graphics/icons/base/lubricant.png"
data_fluid[lubricant].base_color = {r = 038 / 255, g = 127 / 255, b = 018 / 255}
data_fluid[lubricant].flow_color = {r = 050 / 255, g = 130 / 255, b = 032 / 255}

-- SPACE AGE
data_fluid[thruster_fuel].icon = "__TIMSABA__/graphics/icons/space-age/thruster-fuel.png"
data_fluid[thruster_fuel].base_color = {r = 255 / 255, g = 159 / 255, b = 038 / 255}
data_fluid[thruster_fuel].flow_color = {r = 255 / 255, g = 164 / 255, b = 049 / 255}

data_fluid[thruster_oxidizer].icon = "__TIMSABA__/graphics/icons/space-age/thruster-oxidizer.png"
data_fluid[thruster_oxidizer].base_color = {r = 038 / 255, g = 211 / 255, b = 253 / 255}
data_fluid[thruster_oxidizer].flow_color = {r = 049 / 255, g = 213 / 255, b = 253 / 255}

data_fluid[fluorine].icon = "__TIMSABA__/graphics/icons/space-age/aquilo/fluorine.png"
data_fluid[fluorine].base_color = TIMSABA.functions.fluid_color("FFF")
data_fluid[fluorine].flow_color = TIMSABA.functions.flow_color("FFF")

data_fluid[ammonia_solution].icon = "__TIMSABA__/graphics/icons/space-age/aquilo/ammoniacal-solution.png"
data_fluid[ammonia_solution].base_color = TIMSABA.functions.fluid_color("NH3Wp")
data_fluid[ammonia_solution].flow_color = TIMSABA.functions.flow_color("NH3Wp")

data_fluid[fluoroketone_cold].icon = "__TIMSABA__/graphics/icons/space-age/aquilo/fluoroketone-cold.png"
data_fluid[fluoroketone_cold].base_color = TIMSABA.functions.fluid_color("C6F12O")
data_fluid[fluoroketone_cold].flow_color = TIMSABA.functions.flow_color("C6F12O")

data_fluid[fluoroketone_hot].icon = "__TIMSABA__/graphics/icons/space-age/aquilo/fluoroketone-hot.png"
data_fluid[fluoroketone_hot].base_color = TIMSABA.functions.fluid_color("C6F12O")
data_fluid[fluoroketone_hot].flow_color = TIMSABA.functions.flow_color("C6F12O")

data_fluid[electrolyte].icon = "__TIMSABA__/graphics/icons/space-age/fulgora/electrolyte.png"

data_fluid[lava].icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/lava.png"

-- ANGELS RESOURCE REFINING
local graphics_resource = "__TIMSABA__/graphics/icons/angels/resource/"

local resource_fluids =
{
    [sludge_ferrous] = {base = {092, 127, 072}, flow = {100, 133, 081}},
    [slurry_ferrous] = {base = {101, 125, 110}, flow = {109, 132, 117}},
    [concentrate_anodized_ferrous] = {base = {113, 107, 106}, flow = {120, 114, 113}},
    [concentrate_ferrous] = {base = {110, 127, 141}, flow = {117, 133, 147}},
    [sludge_cupric] = {base = {160, 081, 034}, flow = {165, 090, 045}},
    [slurry_cupric] = {base = {139, 082, 055}, flow = {145, 091, 065}},
    [concentrate_anodized_cupric] = {base = {134, 078, 059}, flow = {140, 087, 069}},
    [concentrate_cupric] = {base = {128, 083, 070}, flow = {134, 092, 079}},
    [water_thermal_angels] = {base = {196, 108, 000}, flow = {199, 115, 013}},
    [slurry_slag] = {base = {085, 036, 004}, flow = {094, 047, 017}},
    [sludge_mineral] = {base = {158, 067, 000}, flow = {163, 076, 013}},
    [slurry_crystal] = {base = {057, 185, 000}, flow = {067, 189, 013}},
    [seedling_crystal] = {base = {110, 149, 015}, flow = {117, 154, 027}},
    [iron_chloride_III_solution_angels] = "FeCl3Wp",
    [copper_chloride_II_solution_angels] = "CuCl2Wp"
}
for fluid_name, info in pairs(resource_fluids) do
    data_fluid[fluid_name].icons = nil
    data_fluid[fluid_name].icon = graphics_resource .. fluid_name .. ".png"

    if type(info) == "string" then
        data_fluid[fluid_name].base_color = TIMSABA.functions.fluid_color(info)
        data_fluid[fluid_name].flow_color = TIMSABA.functions.flow_color(info)
    else
        data_fluid[fluid_name].base_color = {r = info.base[1] / 255, g = info.base[2] / 255, b = info.base[3] / 255}
        data_fluid[fluid_name].flow_color = {r = info.flow[1] / 255, g = info.flow[2] / 255, b = info.flow[3] / 255}
    end
end

-- ANGELS METALLURGY SMELTING
data_fluid[hexafluorosilicic_acid].icons = nil
data_fluid[hexafluorosilicic_acid].icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/hexafluorosilicic-acid-liquid.png"
data_fluid[hexafluorosilicic_acid].base_color = TIMSABA.functions.fluid_color("H2SiF6Wp")
data_fluid[hexafluorosilicic_acid].flow_color = TIMSABA.functions.flow_color("H2SiF6Wp")

data_fluid[trichlorosilane].icons = nil
data_fluid[trichlorosilane].icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/trichlorosilane-liquid.png"
data_fluid[trichlorosilane].base_color = TIMSABA.functions.fluid_color("HSiCl3")
data_fluid[trichlorosilane].flow_color = TIMSABA.functions.flow_color("HSiCl3")

data_fluid[silane_gas].icons = nil
data_fluid[silane_gas].icon = "__TIMSABA__/graphics/icons/angels/metallurgy/silicon/silane-gas.png"
data_fluid[silane_gas].base_color = TIMSABA.functions.fluid_color("SiH4")
data_fluid[silane_gas].flow_color = TIMSABA.functions.flow_color("SiH4")

data_fluid[chlorauric_acid].icons = nil
data_fluid[chlorauric_acid].icon = "__TIMSABA__/graphics/icons/angels/metallurgy/gold/chlorauric-acid-liquid.png"
data_fluid[chlorauric_acid].base_color = TIMSABA.functions.fluid_color("HAuCl4Wp")
data_fluid[chlorauric_acid].flow_color = TIMSABA.functions.flow_color("HAuCl4Wp")

data_fluid[titanium_chloride_IV].icons = nil
data_fluid[titanium_chloride_IV].icon = "__TIMSABA__/graphics/icons/angels/metallurgy/titanium/titanium-chloride-IV-liquid.png"
data_fluid[titanium_chloride_IV].base_color = TIMSABA.functions.fluid_color("TiCl4")
data_fluid[titanium_chloride_IV].flow_color = TIMSABA.functions.flow_color("TiCl4")

data_fluid[ammonium_tungstate_solution].icons = nil
data_fluid[ammonium_tungstate_solution].icon = "__TIMSABA__/graphics/icons/angels/metallurgy/tungsten/ammonium-tungstate-solution.png"
data_fluid[ammonium_tungstate_solution].base_color = TIMSABA.functions.fluid_color("N2H8WO4Wp")
data_fluid[ammonium_tungstate_solution].flow_color = TIMSABA.functions.flow_color("N2H8WO4Wp")

data_fluid[tungsten_fluoride_VI_gas].icons = nil
data_fluid[tungsten_fluoride_VI_gas].icon = "__TIMSABA__/graphics/icons/angels/metallurgy/tungsten/tungsten-fluoride-VI-gas.png"
data_fluid[tungsten_fluoride_VI_gas].base_color = TIMSABA.functions.fluid_color("WF6")
data_fluid[tungsten_fluoride_VI_gas].flow_color = TIMSABA.functions.flow_color("WF6")

data_fluid[hexachloroplatinic_acid].icons = nil
data_fluid[hexachloroplatinic_acid].icon = "__TIMSABA__/graphics/icons/angels/metallurgy/platinum/hexachloroplatinic-acid-liquid.png"
data_fluid[hexachloroplatinic_acid].base_color = TIMSABA.functions.fluid_color("H2PtCl6Wp")
data_fluid[hexachloroplatinic_acid].flow_color = TIMSABA.functions.flow_color("H2PtCl6Wp")

-- BOB
if mods[bobwarfare] then
    data_fluid[nitroglycerin_bob].icon = "__TIMSABA__/graphics/icons/bobs/bob-nitroglycerin.png"
    data_fluid[nitroglycerin_bob].base_color = TIMSABA.functions.fluid_color("C3H5N3O9")
    data_fluid[nitroglycerin_bob].flow_color = TIMSABA.functions.flow_color("C3H5N3O9")
end

data_fluid[liquid_fuel_bob].icon = "__TIMSABA__/graphics/icons/bobs/bob-liquid-fuel.png"
data_fluid[liquid_fuel_bob].base_color = {r = 255 / 255, g = 220 / 255, b = 078 / 255}
data_fluid[liquid_fuel_bob].flow_color = {r = 255 / 255, g = 222 / 255, b = 087 / 255}

-- ANGELS WATER TREATMENT
local graphics_water = "__TIMSABA__/graphics/icons/angels/water/"

local water_fluids =
{
    [water_semiheavy_1] = "D2ODk3",
    [water_semiheavy_2] = "D2ODk2",
    [water_semiheavy_3] = "D2ODk",
    [water_heavy_angels] = "D2O",
    [water_purified_angels] = "WpWpWp",
    [water_mineralized_angels] = {base = {095, 089, 085}, flow = {103, 097, 094}},
    [coolant] = "C2H6O2",
    [coolant_used] = "C2H6O2",
    [water_yellow_waste] = "WpSSWp",
    [water_red_waste] = "WpNOWp",
    [water_green_waste] = "WpClClWp",
    [water_greenyellow_waste] = "WpFFWp",
    [water_viscous_mud] = {base = {099, 075, 029}, flow = {107, 084, 040}},
    [water_heavy_mud] = {base = {098, 103, 104}, flow = {106, 111, 112}},
    [water_concentrated_mud] = {base = {108, 110, 109}, flow = {115, 117, 116}},
    [water_light_mud] = {base = {119, 119, 113}, flow = {126, 126, 120}},
    [water_thin_mud] = {base = {129, 128, 120}, flow = {135, 134, 127}},
    [water_saline_angels] = {base = {098, 143, 204}, flow = {106, 149, 207}}
}
for fluid_name, info in pairs(water_fluids) do
    if fluid_name == coolant or fluid_name == coolant_used then
        data_fluid[fluid_name].icon_size = nil
    else
        data_fluid[fluid_name].icons = nil
    end

    data_fluid[fluid_name].icon = graphics_water .. fluid_name .. ".png"

    if type(info) == "string" then
        data_fluid[fluid_name].base_color = TIMSABA.functions.fluid_color(info)
        data_fluid[fluid_name].flow_color = TIMSABA.functions.flow_color(info)
    else
        data_fluid[fluid_name].base_color = {r = info.base[1] / 255, g = info.base[2] / 255, b = info.base[3] / 255}
        data_fluid[fluid_name].flow_color = {r = info.flow[1] / 255, g = info.flow[2] / 255, b = info.flow[3] / 255}
    end
end

-- ANGELS PETROCHEM REFINING
-- BASICS
local graphics_petrochem_basics = "__TIMSABA__/graphics/icons/angels/petrochem/basics/"

local basic_fluids =
{
    [compressed_air] = {base = {150, 150, 197}, flow = {155, 155, 200}},
    [oxygen_angels] = "OOO",
    [carbon_monoxide_angels] = "CO",
    [carbon_dioxide_angels] = "CO2",
    [hydrogen_angels] = "HHH",
    [deuterium_angels] = "DDD",
    [hydrogen_fluoride_angels] = "HF",
    [hydrofluoric_acid_angels] = "HFWp"
}
for fluid_name, info in pairs(basic_fluids) do
    data_fluid[fluid_name].icons = nil
    data_fluid[fluid_name].icon = graphics_petrochem_basics .. fluid_name .. ".png"

    if type(info) == "string" then
        data_fluid[fluid_name].base_color = TIMSABA.functions.fluid_color(info)
        data_fluid[fluid_name].flow_color = TIMSABA.functions.flow_color(info)
    else
        data_fluid[fluid_name].base_color = {r = info.base[1] / 255, g = info.base[2] / 255, b = info.base[3] / 255}
        data_fluid[fluid_name].flow_color = {r = info.flow[1] / 255, g = info.flow[2] / 255, b = info.flow[3] / 255}
    end
end

data_fluid[oxygen_angels].default_temperature = 15
data_fluid[oxygen_angels].max_temperature = 100
data_fluid[oxygen_angels].heat_capacity = "200J"

data_fluid[carbon_dioxide_angels].default_temperature = 15
data_fluid[carbon_dioxide_angels].max_temperature = 5000
data_fluid[carbon_dioxide_angels].heat_capacity = "200J"

-- CHLORINE
local graphics_petrochem_chlorine = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/"

local chlorine_fluids =
{
    [chlorine_angels] = "ClClCl",
    [hydrogen_chloride_angels] = "HCl",
    [hydrochloric_acid_angels] = "HClWp",
    [allyl_chloride_angels] = "C3H5Cl",
    [epichlorohydrin_angels] = "C3H5ClO",
    [chloromethane_angels] = "CH3Cl",
    [perchloric_acid_angels] = "HClO4"
}
for fluid_name, info in pairs(chlorine_fluids) do
    data_fluid[fluid_name].icons = nil
    data_fluid[fluid_name].icon = graphics_petrochem_chlorine .. fluid_name .. ".png"

    if type(info) == "string" then
        data_fluid[fluid_name].base_color = TIMSABA.functions.fluid_color(info)
        data_fluid[fluid_name].flow_color = TIMSABA.functions.flow_color(info)
    else
        data_fluid[fluid_name].base_color = {r = info.base / 255, g = info.base / 255, b = info.base / 255}
        data_fluid[fluid_name].flow_color = {r = info.flow / 255, g = info.flow / 255, b = info.flow / 255}
    end
end

-- NITROGEN
local graphics_petrochem_nitrogen = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/"

local nitrogen_fluids =
{
    [nitrogen_angels] = "NNN",
    [ammonia_angels] = "NH3",
    [nitrogen_monoxide_angels] = "NO",
    [nitrogen_dioxide_angels] = "NO2",
    [dinitrogen_tetroxide_angels] = "N2O4",
    [ammonium_chloride_solution_angels] = "NH4ClWp",
    [urea_solution_angels] = "N2H4COWp",
    [melamine_solution_angels] = "C3H6N6Wp",
    [nitric_acid_angels] = "HNO3",
    [monochloramine_angels] = "NH2Cl",
    [hydrazine_angels] = "N2H4",
    [methylamine_angels] = "CH5N",
    [dimethylamine_angels] = "C2H7N",
    [dimethylhydrazine_angels] = "C2H8N2"
}
for fluid_name, info in pairs(nitrogen_fluids) do
    data_fluid[fluid_name].icons = nil
    data_fluid[fluid_name].icon = graphics_petrochem_nitrogen .. fluid_name .. ".png"

    if type(info) == "string" then
        data_fluid[fluid_name].base_color = TIMSABA.functions.fluid_color(info)
        data_fluid[fluid_name].flow_color = TIMSABA.functions.flow_color(info)
    else
        data_fluid[fluid_name].base_color = {r = info.base[1] / 255, g = info.base[2] / 255, b = info.base[3] / 255}
        data_fluid[fluid_name].flow_color = {r = info.flow[1] / 255, g = info.flow[2] / 255, b = info.flow[3] / 255}
    end
end

-- SULFUR
local graphics_petrochem_sulfur = "__TIMSABA__/graphics/icons/angels/petrochem/sulfur/"

local sulfur_fluids =
{
    [hydrogen_sulfide_angels] = "H2S",
    [enriched_hydrogen_sulfide_angels] = "SWpWp",
    [sulfur_dioxide_angels] = "SO2"
}
for fluid_name, info in pairs(sulfur_fluids) do
    data_fluid[fluid_name].icons = nil
    data_fluid[fluid_name].icon = graphics_petrochem_sulfur .. fluid_name .. ".png"

    if type(info) == "string" then
        data_fluid[fluid_name].base_color = TIMSABA.functions.fluid_color(info)
        data_fluid[fluid_name].flow_color = TIMSABA.functions.flow_color(info)
    else
        data_fluid[fluid_name].base_color = {r = info.base[1] / 255, g = info.base[2] / 255, b = info.base[3] / 255}
        data_fluid[fluid_name].flow_color = {r = info.flow[1] / 255, g = info.flow[2] / 255, b = info.flow[3] / 255}
    end
end

-- RAWS
local graphics_petrochem_raws = "__TIMSABA__/graphics/icons/angels/petrochem/raws/"

local raw_fluids =
{
    [acid_angels] = "SSF",
    [natural_gas_angels] = {base = {096, 123, 082}, flow = {104, 130, 091}},
    [raw_gas_angels] = {base = {137, 148, 067}, flow = {143, 153, 076}},
    [NGL_angels] = {base = {089, 107, 079}, flow = {097, 114, 088}},
    [multi_phase_oil_angels] = {base = {133, 141, 088}, flow = {139, 147, 096}},
    [condensates_angels] = {base = {090, 090, 090}, flow = {098, 098, 098}},
    [residual_angels] = {base = {128, 000, 128}, flow = {134, 013, 134}}
}
for fluid_name, info in pairs(raw_fluids) do
    data_fluid[fluid_name].icons = nil
    data_fluid[fluid_name].icon = graphics_petrochem_raws .. fluid_name .. ".png"

    if type(info) == "string" then
        data_fluid[fluid_name].base_color = TIMSABA.functions.fluid_color(info)
        data_fluid[fluid_name].flow_color = TIMSABA.functions.flow_color(info)
    else
        data_fluid[fluid_name].base_color = {r = info.base[1] / 255, g = info.base[2] / 255, b = info.base[3] / 255}
        data_fluid[fluid_name].flow_color = {r = info.flow[1] / 255, g = info.flow[2] / 255, b = info.flow[3] / 255}
    end
end

-- CARBONS
local graphics_petrochem_carbons = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/"

local carbon_fluids =
{
    [methane_angels] = "CH4",
    [ethane_angels] = "C2H6",
    [butane_angels] = "C4H10",
    [propene_angels] = "C3H6",
    [methanol_angels] = "CH4O",
    [ethylene_angels] = "C2H4",
    [benzene_angels] = "C6H6",
    [fuel_oil_angels] = {base = {238, 210, 089}, flow = {239, 212, 097}},
    [naphtha_angels] = {base = {172, 072, 081}, flow = {176, 081, 090}},
    [mineral_oil_angels] = {base = {061, 173, 061}, flow = {071, 177, 071}},
    [synthesis_angels] = {base = {175, 100, 175}, flow = {179, 108, 179}},
    [toluene_angels] = "C7H8",
    [butadiene_angels] = "C4H6",
    [ethylbenzene_angels] = "C8H10",
    [styrene_angels] = "C8H8",
    [formaldehyde_angels] = "CH2O",
    [glycerol_angels] = "C3H8O3",
    [acetone_angels] = "C3H6O"
}
for fluid_name, info in pairs(carbon_fluids) do
    data_fluid[fluid_name].icons = nil
    data_fluid[fluid_name].icon = graphics_petrochem_carbons .. fluid_name .. ".png"

    if type(info) == "string" then
        data_fluid[fluid_name].base_color = TIMSABA.functions.fluid_color(info)
        data_fluid[fluid_name].flow_color = TIMSABA.functions.flow_color(info)
    else
        data_fluid[fluid_name].base_color = {r = info.base[1] / 255, g = info.base[2] / 255, b = info.base[3] / 255}
        data_fluid[fluid_name].flow_color = {r = info.flow[1] / 255, g = info.flow[2] / 255, b = info.flow[3] / 255}
    end
end

-- SOLIDS
local graphics_petrochem_solids = "__TIMSABA__/graphics/icons/angels/petrochem/solids/"

local solid_fluids =
{
    [liquid_plastic_angels] = {base = {228, 228, 228}, flow = {229, 229, 229}},
    [liquid_resin_angels] = {base = {228, 203, 138}, flow = {229, 206, 144}},
    [liquid_rubber_angels] = {base = {163, 173, 228}, flow = {168, 177, 229}},
    [sodium_hydroxide_solution_angels] = "NaOHWp"
}
for fluid_name, info in pairs(solid_fluids) do
    data_fluid[fluid_name].icons = nil
    data_fluid[fluid_name].icon = graphics_petrochem_solids .. fluid_name .. ".png"

    if type(info) == "string" then
        data_fluid[fluid_name].base_color = TIMSABA.functions.fluid_color(info)
        data_fluid[fluid_name].flow_color = TIMSABA.functions.flow_color(info)
    else
        data_fluid[fluid_name].base_color = {r = info.base[1] / 255, g = info.base[2] / 255, b = info.base[3] / 255}
        data_fluid[fluid_name].flow_color = {r = info.flow[1] / 255, g = info.flow[2] / 255, b = info.flow[3] / 255}
    end
end

-- ANGELS BIOPROCESSING
local graphics_bioprocessing = "__TIMSABA__/graphics/icons/angels/bioprocessing/"

local bioprocessing_fluids =
{
    [nutrient_pulp] = {base = {226, 151, 28}, flow = {227, 156, 39}},
    [raw_vegetable_oil] = {base = {255, 203, 62}, flow = {255, 206, 72}},
    [vegetable_oil] = {base = {231, 231, 29}, flow = {232, 232, 40}},
    [acetic_acid] = "C2H4O2",
    [acetic_anhydride] = "C4H6O3",
    [ethanol_angels] = "C2H6O",
    [propionic_acid] = "C3H6O2",
    [water_for_fish] = {base = {178, 224, 30}, flow = {182, 226, 41}},
    [polluted_water_for_fish] = {base = {191, 103, 165}, flow = {194, 111, 170}},
    [raw_fish_oil] = {base = {220, 136, 52}, flow = {222, 142, 62}},
    [fish_oil] = {base = {216, 172, 27}, flow = {218, 176, 38}},
    [puffer_atmosphere] = {base = {178, 224, 30}, flow = {182, 226, 41}},
    [alien_goo] = {base = {207, 44, 214}, flow = {209, 55, 216}}
}
for fluid_name, info in pairs(bioprocessing_fluids) do
    data_fluid[fluid_name].icons = nil
    data_fluid[fluid_name].icon = graphics_bioprocessing .. fluid_name .. ".png"

    if type(info) == "string" then
      data_fluid[fluid_name].base_color = TIMSABA.functions.fluid_color(info)
      data_fluid[fluid_name].flow_color = TIMSABA.functions.flow_color(info)
    else
      data_fluid[fluid_name].base_color = {r = info.base[1] / 255, g = info.base[2] / 255, b = info.base[3] / 255}
      data_fluid[fluid_name].flow_color = {r = info.flow[1] / 255, g = info.flow[2] / 255, b = info.flow[3] / 255}
    end
end

-- MULUNA
if mods[muluna_mods] then
    local graphics_muluna = "__TIMSABA__/graphics/icons/muluna/"

    data_fluid[tar_mods].icon = graphics_muluna .. tar_mods .. ".png"

    data_fluid[cooled_steam_mods].icons = nil
    data_fluid[cooled_steam_mods].icon = graphics_muluna .. cooled_steam_mods .. ".png"
end

-- PANGLIA
if mods[panglia_mods] then
    data_fluid[branbalite_slurry].icon = "__TIMSABA__/graphics/icons/panglia/panglia_branbalite_slurry.png"
end

-- ARIG
if mods[arig_mods] then
    local graphics_arig = "__TIMSABA__/graphics/icons/arig/"

    data_fluid[sand_arig].icon = graphics_arig .. sand_arig .. ".png"

    data_fluid[pure_sand_arig].icon = graphics_arig .. pure_sand_arig .. ".png"
end

-- HYARION
if mods[hyarion_mods] then
    data_fluid[polishing_compound_hyarion].icon = "__TIMSABA__/graphics/icons/hyarion/polishing-compound.png"
end

-- TELLUS
if mods[tellus_mods] then
    local graphics_tellus = "__TIMSABA__/graphics/icons/tellus/"

    data_fluid[bacteriochlorophyll].icon = graphics_tellus .. bacteriochlorophyll .. ".png"

    data_fluid[chlorophyll].icon = graphics_tellus .. chlorophyll .. ".png"

    data_fluid[water_infected].icon = graphics_tellus .. water_infected .. ".png"

    data_fluid[seed_compound].icon = graphics_tellus .. seed_compound .. ".png"
end

-- FROZETA

-- TERRAPALUS
if mods[terrapalus_mods] then
    data_fluid[ultravium].icon = "__TIMSABA__/graphics/icons/terrapalus/ultravium.png"
end

-- PARACELSIN

-- CORRUNDUM
if mods[corrundum_mods] then
    data_fluid[multi_phase_oil_angels].default_temperature = 15
    data_fluid[multi_phase_oil_angels].max_temperature = 100
    data_fluid[multi_phase_oil_angels].heat_capacity = "200J"
end

-- SHCHIERBIN
if mods[shchierbin_mods] then
    data_fluid[vinylchloride_mods].icon = "__TIMSABA__/graphics/icons/shchierbin/vinylchloride.png"
    data_fluid[vinylchloride_mods].base_color = TIMSABA.functions.fluid_color("C2H3Cl")
    data_fluid[vinylchloride_mods].flow_color = TIMSABA.functions.flow_color("C2H3Cl")
end

-- MARAXSIS
if mods[maraxsis_mods] then
    local graphics_maraxsis = "__TIMSABA__/graphics/icons/maraxsis/"

    data_fluid[maraxsis_air].icon = graphics_maraxsis .. maraxsis_air .. ".png"

    data_fluid[supercritical_steam_maraxsis].icon = graphics_maraxsis .. supercritical_steam_maraxsis .. ".png"

    data_fluid[water_brackish_maraxsis].icon = graphics_maraxsis .. water_brackish_maraxsis .. ".png"

    data_fluid[molten_salt_mods].icon = graphics_maraxsis .. molten_salt_mods .. ".png"
end

-- VESTA
local graphics_vesta = "__TIMSABA__/graphics/icons/vesta/"
if mods[vesta_mods] then
    local vesta_fluids =
    {
        [helium_vesta] = "HeHeHe",
        [algea_water_vesta] = {base = {056, 075, 014}, flow = {065, 085, 025}},
        [supermagnetic_vesta] = {base = {024, 077, 046}, flow = {035, 085, 055}},
        [fusion_thruster_fuel] = {base = {022, 076, 069}, flow = {030, 085, 075}},
        [fusion_thruster_oxidizer] = {base = {093, 148, 179}, flow = {100, 155, 185}}
    }
    for fluid_name, info in pairs(vesta_fluids) do
        if data_fluid[fluid_name] then
            data_fluid[fluid_name].icons = nil
            data_fluid[fluid_name].icon = graphics_vesta .. fluid_name .. ".png"

            if type(info) == "string" then
                data_fluid[fluid_name].base_color = TIMSABA.functions.fluid_color(info)
                data_fluid[fluid_name].flow_color = TIMSABA.functions.flow_color(info)
            else
                data_fluid[fluid_name].base_color = {r = info.base[1] / 255, g = info.base[2] / 255, b = info.base[3] / 255}
                data_fluid[fluid_name].flow_color = {r = info.flow[1] / 255, g = info.flow[2] / 255, b = info.flow[3] / 255}
            end
        end
    end
end

-- SHATTERED
if mods[shattered_mods] then
    data_fluid[slurry_metallic_shattered].icon = "__TIMSABA__/graphics/icons/shattered/slurry_metallic.png"

    data_fluid[slurry_carbonic_shattered].icon = "__TIMSABA__/graphics/icons/shattered/slurry_carbonic.png"

    data_fluid[slurry_oxide_shattered].icon = "__TIMSABA__/graphics/icons/shattered/slurry_oxide.png"

    data_fluid[slurry_promethium_shattered].icon = "__TIMSABA__/graphics/icons/shattered/slurry_promethium.png"
    data_fluid[slurry_promethium_shattered].base_color = TIMSABA.functions.fluid_color("PmPmPm")
    data_fluid[slurry_promethium_shattered].flow_color = TIMSABA.functions.flow_color("PmPmPm")

    data_fluid[neon_mods].icon = "__TIMSABA__/graphics/icons/shattered/gas_neon.png"
    data_fluid[neon_mods].base_color = TIMSABA.functions.fluid_color("NeNeNe")
    data_fluid[neon_mods].flow_color = TIMSABA.functions.flow_color("NeNeNe")

    data_fluid[krypton_mods].icon = "__TIMSABA__/graphics/icons/shattered/gas_krypton.png"
    data_fluid[krypton_mods].base_color = TIMSABA.functions.fluid_color("KrKrKr")
    data_fluid[krypton_mods].flow_color = TIMSABA.functions.flow_color("KrKrKr")

    data_fluid[xenon_mods].icon = "__TIMSABA__/graphics/icons/shattered/gas_xenon.png"
    data_fluid[xenon_mods].base_color = TIMSABA.functions.fluid_color("XeXeXe")
    data_fluid[xenon_mods].flow_color = TIMSABA.functions.flow_color("XeXeXe")

    data_fluid[brine_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_brine.png"

    data_fluid[uranium_233_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_uranium_233.png"

    data_fluid[uranium_235_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_uranium_235.png"

    data_fluid[uranium_238_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_uranium_238.png"

    data_fluid[neptunium_236_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_neptunium_236.png"

    data_fluid[neptunium_237_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_neptunium_237.png"

    data_fluid[plutonium_238_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_plutonium_238.png"

    data_fluid[plutonium_239_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_plutonium_239.png"

    data_fluid[plutonium_241_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_plutonium_241.png"

    data_fluid[plutonium_242_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_plutonium_242.png"

    data_fluid[americium_241_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_americium_241.png"

    data_fluid[americium_242_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_americium_242.png"

    data_fluid[americium_243_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_americium_243.png"

    data_fluid[curium_245_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_curium_245.png"

    data_fluid[curium_246_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_curium_246.png"

    data_fluid[curium_247_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_curium_247.png"

    data_fluid[berkelium_247_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_berkelium_247.png"

    data_fluid[berkelium_248_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_berkelium_248.png"

    data_fluid[californium_249_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_californium_249.png"

    data_fluid[californium_250_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_californium_250.png"

    data_fluid[californium_251_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_californium_251.png"

    data_fluid[californium_252_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_californium_252.png"

end

-- MURIA
if mods[muria_mods] then
    local graphics_muria = "__TIMSABA__/graphics/icons/muria/"

    data_fluid[muriatic_solution].icon = graphics_muria .. muriatic_solution .. ".png"
    data_fluid[muriatic_solution].base_color = {r = 081 / 255, g = 179 / 255, b = 055 / 255}
    data_fluid[muriatic_solution].flow_color = {r = 090 / 255, g = 190 / 255, b = 065 / 255}

    data_fluid[hydronium_solution].icon = graphics_muria .. hydronium_solution .. ".png"
    data_fluid[hydronium_solution].base_color = TIMSABA.functions.fluid_color("H3OOH")
    data_fluid[hydronium_solution].flow_color = TIMSABA.functions.flow_color("H3OOH")
end

-- PELAGOS
if mods[pelagos_mods] then
    local graphics_pelagos = "__TIMSABA__/graphics/icons/pelagos/"

    data_fluid[coconut_oil].icon = graphics_pelagos .. coconut_oil .. ".png"

    data_fluid[titanium_sludge].icon = graphics_pelagos .. titanium_sludge .. ".png"

    data_fluid[biodiesel].icon = graphics_pelagos .. biodiesel .. ".png"
end

-- APIA and CARNOVA
if mods[apia_carnova_mods] then
    local graphics_apia_and_carnova = "__TIMSABA__/graphics/icons/apia-and-carnova/"

    data_fluid[royal_jelly].icon = graphics_apia_and_carnova .. royal_jelly .. ".png"

    data_fluid[lymph].icon = graphics_apia_and_carnova .. lymph .. ".png"

    data_fluid[dirty_lymph].icon = graphics_apia_and_carnova .. dirty_lymph .. ".png"

    data_fluid[blood].icon = graphics_apia_and_carnova .. blood .. ".png"
end

-- LIGNUMIS
if mods[lignumis_mods] then
    data_fluid[wood_pulp].icon = "__TIMSABA__/graphics/icons/lignumis/wood-pulp.png"
end

-- BELLICOS AEGIS
if mods[bellicos_aegis_mods] then
    if not data_fluid[helium_vesta] then
        data_fluid[helium].icon = graphics_vesta .. helium_vesta .. ".png"
        data_fluid[helium].base_color = TIMSABA.functions.fluid_color("HeHeHe")
        data_fluid[helium].flow_color = TIMSABA.functions.flow_color("HeHeHe")
    end
end



-- CRUCIBLE
if mods[crucible_mods] then
    data_fluid[hydrogen_angels].default_temperature = 15
    data_fluid[hydrogen_angels].max_temperature = 500
end