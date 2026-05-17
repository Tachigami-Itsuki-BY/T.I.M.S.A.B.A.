-- BASE and SPACE AGE
data_fluid[water].icon = "__TIMSABA__/graphics/icons/base/water.png"
data_fluid[water].default_temperature = 15
data_fluid[water].heat_capacity = "200J"
data_fluid[water].base_color = {r = 076 / 255, g = 177 / 255, b = 205 / 255}
data_fluid[water].flow_color = {r = 100 / 255, g = 192 / 255, b = 218 / 255}
data_fluid[water].max_temperature = 100

data_fluid[steam].icon = "__TIMSABA__/graphics/icons/base/steam.png"
data_fluid[steam].default_temperature = 15
data_fluid[steam].heat_capacity = "200J"
data_fluid[steam].base_color = {r = 097 / 255, g = 097 / 255, b = 097 / 255}
data_fluid[steam].flow_color = {r = 128 / 255, g = 128 / 255, b = 128 / 255}
data_fluid[steam].max_temperature = 5000

data_fluid[crude_oil].icons = nil
data_fluid[crude_oil].icon = "__TIMSABA__/graphics/icons/base/crude-oil.png"
data_fluid[crude_oil].base_color = TIMSABA.functions.fluid_color("CcCcCc")
data_fluid[crude_oil].flow_color = TIMSABA.functions.flow_color("CcCcCc")

data_fluid[lubricant].icons = nil
data_fluid[lubricant].icon = "__TIMSABA__/graphics/icons/base/lubricant.png"
data_fluid[lubricant].base_color = {r = 038 / 255, g = 127 / 255, b = 018 / 255}
data_fluid[lubricant].flow_color = {r = 050 / 255, g = 130 / 255, b = 032 / 255}

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
data_fluid[sludge_ferrous].icons = nil
data_fluid[sludge_ferrous].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-ore8-sludge.png"
data_fluid[sludge_ferrous].base_color = {r = 92 / 255, g = 127 / 255, b = 72 / 255}
data_fluid[sludge_ferrous].flow_color = {r = 100 / 255, g = 133 / 255, b = 81 / 255}

data_fluid[slurry_ferrous].icons = nil
data_fluid[slurry_ferrous].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-ore8-solution.png"
data_fluid[slurry_ferrous].base_color = {r = 101 / 255, g = 125 / 255, b = 110 / 255}
data_fluid[slurry_ferrous].flow_color = {r = 109 / 255, g = 132 / 255, b = 117 / 255}

data_fluid[concentrate_anodized_ferrous].icons = nil
data_fluid[concentrate_anodized_ferrous].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-ore8-anode-sludge.png"
data_fluid[concentrate_anodized_ferrous].base_color = {r = 113 / 255, g = 107 / 255, b = 106 / 255}
data_fluid[concentrate_anodized_ferrous].flow_color = {r = 120 / 255, g = 114 / 255, b = 113 / 255}

data_fluid[concentrate_ferrous].icons = nil
data_fluid[concentrate_ferrous].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-ore8-slime.png"
data_fluid[concentrate_ferrous].base_color = {r = 110 / 255, g = 127 / 255, b = 141 / 255}
data_fluid[concentrate_ferrous].flow_color = {r = 117 / 255, g = 133 / 255, b = 147 / 255}

data_fluid[sludge_cupric].icons = nil
data_fluid[sludge_cupric].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-ore9-sludge.png"
data_fluid[sludge_cupric].base_color = {r = 160 / 255, g = 81 / 255, b = 34 / 255}
data_fluid[sludge_cupric].flow_color = {r = 165 / 255, g = 90 / 255, b = 45 / 255}

data_fluid[slurry_cupric].icons = nil
data_fluid[slurry_cupric].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-ore9-solution.png"
data_fluid[slurry_cupric].base_color = {r = 139 / 255, g = 82 / 255, b = 55 / 255}
data_fluid[slurry_cupric].flow_color = {r = 145 / 255, g = 91 / 255, b = 65 / 255}

data_fluid[concentrate_anodized_cupric].icons = nil
data_fluid[concentrate_anodized_cupric].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-ore9-anode-sludge.png"
data_fluid[concentrate_anodized_cupric].base_color = {r = 134 / 255, g = 78 / 255, b = 59 / 255}
data_fluid[concentrate_anodized_cupric].flow_color = {r = 140 / 255, g = 87 / 255, b = 69 / 255}

data_fluid[concentrate_cupric].icons = nil
data_fluid[concentrate_cupric].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-ore9-slime.png"
data_fluid[concentrate_cupric].base_color = {r = 128 / 255, g = 83 / 255, b = 70 / 255}
data_fluid[concentrate_cupric].flow_color = {r = 134 / 255, g = 92 / 255, b = 79 / 255}

data_fluid[water_thermal_angels].icons = nil
data_fluid[water_thermal_angels].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-thermal-water.png"
data_fluid[water_thermal_angels].base_color = {r = 196 / 255, g = 108 / 255, b = 000 / 255}
data_fluid[water_thermal_angels].flow_color = {r = 199 / 255, g = 115 / 255, b = 013 / 255}

data_fluid[slurry_slag].icons = nil
data_fluid[slurry_slag].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-slag-slurry.png"
data_fluid[slurry_slag].base_color = {r = 085 / 255, g = 036 / 255, b = 004 / 255}
data_fluid[slurry_slag].flow_color = {r = 094 / 255, g = 047 / 255, b = 017 / 255}

data_fluid[sludge_mineral].icons = nil
data_fluid[sludge_mineral].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-mineral-sludge.png"
data_fluid[sludge_mineral].base_color = {r = 158 / 255, g = 067 / 255, b = 000 / 255}
data_fluid[sludge_mineral].flow_color = {r = 163 / 255, g = 076 / 255, b = 013 / 255}

data_fluid[slurry_crystal].icons = nil
data_fluid[slurry_crystal].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-crystal-slurry.png"
data_fluid[slurry_crystal].base_color = {r = 057 / 255, g = 185 / 255, b = 000 / 255}
data_fluid[slurry_crystal].flow_color = {r = 067 / 255, g = 189 / 255, b = 013 / 255}

data_fluid[seedling_crystal].icons = nil
data_fluid[seedling_crystal].icon = "__TIMSABA__/graphics/icons/angels/resource/angels-crystal-seedling.png"
data_fluid[seedling_crystal].base_color = {r = 110 / 255, g = 149 / 255, b = 015 / 255}
data_fluid[seedling_crystal].flow_color = {r = 117 / 255, g = 154 / 255, b = 027 / 255}

data_fluid[iron_chloride_III_solution_angels].icons = nil
data_fluid[iron_chloride_III_solution_angels].icon = "__TIMSABA__/graphics/icons/angels/resource/iron-chloride-III-solution.png"
data_fluid[iron_chloride_III_solution_angels].base_color = TIMSABA.functions.fluid_color("FeCl3Wp")
data_fluid[iron_chloride_III_solution_angels].flow_color = TIMSABA.functions.flow_color("FeCl3Wp")

data_fluid[copper_chloride_II_solution_angels].icons = nil
data_fluid[copper_chloride_II_solution_angels].icon = "__TIMSABA__/graphics/icons/angels/resource/copper-chloride-II-solution.png"
data_fluid[copper_chloride_II_solution_angels].base_color = TIMSABA.functions.fluid_color("CuCl2Wp")
data_fluid[copper_chloride_II_solution_angels].flow_color = TIMSABA.functions.flow_color("CuCl2Wp")

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
data_fluid[nitroglycerin_bob].icon = "__TIMSABA__/graphics/icons/bobs/bob-nitroglycerin.png"
data_fluid[nitroglycerin_bob].base_color = TIMSABA.functions.fluid_color("C3H5N3O9")
data_fluid[nitroglycerin_bob].flow_color = TIMSABA.functions.flow_color("C3H5N3O9")

data_fluid[liquid_fuel_bob].icon = "__TIMSABA__/graphics/icons/bobs/bob-liquid-fuel.png"
data_fluid[liquid_fuel_bob].base_color = {r = 255 / 255, g = 220 / 255, b = 78 / 255}
data_fluid[liquid_fuel_bob].flow_color = {r = 255 / 255, g = 222 / 255, b = 87 / 255}

-- ANGELS WATER TREATMENT
data_fluid[water_semiheavy_1].icons = nil
data_fluid[water_semiheavy_1].icon = "__TIMSABA__/graphics/icons/angels/water/angels-liquid-water-semiheavy-1.png"
data_fluid[water_semiheavy_1].base_color = TIMSABA.functions.fluid_color("D2ODk3")
data_fluid[water_semiheavy_1].flow_color = TIMSABA.functions.flow_color("D2ODk3")

data_fluid[water_semiheavy_2].icons = nil
data_fluid[water_semiheavy_2].icon = "__TIMSABA__/graphics/icons/angels/water/angels-liquid-water-semiheavy-2.png"
data_fluid[water_semiheavy_2].base_color = TIMSABA.functions.fluid_color("D2ODk2")
data_fluid[water_semiheavy_2].flow_color = TIMSABA.functions.flow_color("D2ODk2")

data_fluid[water_semiheavy_3].icons = nil
data_fluid[water_semiheavy_3].icon = "__TIMSABA__/graphics/icons/angels/water/angels-liquid-water-semiheavy-3.png"
data_fluid[water_semiheavy_3].base_color = TIMSABA.functions.fluid_color("D2ODk")
data_fluid[water_semiheavy_3].flow_color = TIMSABA.functions.flow_color("D2ODk")

data_fluid[water_heavy_angels].icons = nil
data_fluid[water_heavy_angels].icon = "__TIMSABA__/graphics/icons/angels/water/angels-liquid-water-heavy.png"
data_fluid[water_heavy_angels].base_color = TIMSABA.functions.fluid_color("D2O")
data_fluid[water_heavy_angels].flow_color = TIMSABA.functions.flow_color("D2O")

data_fluid[water_purified_angels].icons = nil
data_fluid[water_purified_angels].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-purified.png"
data_fluid[water_purified_angels].base_color = TIMSABA.functions.fluid_color("WpWpWp")
data_fluid[water_purified_angels].flow_color = TIMSABA.functions.flow_color("WpWpWp")

data_fluid[water_mineralized_angels].icons = nil
data_fluid[water_mineralized_angels].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-mineralized.png"
data_fluid[water_mineralized_angels].base_color = {r = 095 / 255, g = 089 / 255, b = 085 / 255}
data_fluid[water_mineralized_angels].flow_color = {r = 103 / 255, g = 097 / 255, b = 094 / 255}

data_fluid[coolant].icon = "__TIMSABA__/graphics/icons/angels/water/angels-liquid-coolant.png"
data_fluid[coolant].icon_size = nil
data_fluid[coolant].base_color = TIMSABA.functions.fluid_color("C2H6O2")
data_fluid[coolant].flow_color = TIMSABA.functions.flow_color("C2H6O2")

data_fluid[coolant_used].icon = "__TIMSABA__/graphics/icons/angels/water/angels-liquid-coolant-used.png"
data_fluid[coolant_used].icon_size = nil
data_fluid[coolant_used].base_color = TIMSABA.functions.fluid_color("C2H6O2")
data_fluid[coolant_used].flow_color = TIMSABA.functions.flow_color("C2H6O2")

data_fluid[water_yellow_waste].icons = nil
data_fluid[water_yellow_waste].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-yellow-waste.png"
data_fluid[water_yellow_waste].base_color = TIMSABA.functions.fluid_color("WpSSWp")
data_fluid[water_yellow_waste].flow_color = TIMSABA.functions.flow_color("WpSSWp")

data_fluid[water_red_waste].icons = nil
data_fluid[water_red_waste].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-red-waste.png"
data_fluid[water_red_waste].base_color = TIMSABA.functions.fluid_color("WpNOWp")
data_fluid[water_red_waste].flow_color = TIMSABA.functions.flow_color("WpNOWp")

data_fluid[water_green_waste].icons = nil
data_fluid[water_green_waste].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-green-waste.png"
data_fluid[water_green_waste].base_color = TIMSABA.functions.fluid_color("WpClClWp")
data_fluid[water_green_waste].flow_color = TIMSABA.functions.flow_color("WpClClWp")

data_fluid[water_greenyellow_waste].icons = nil
data_fluid[water_greenyellow_waste].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-greenyellow-waste.png"
data_fluid[water_greenyellow_waste].base_color = TIMSABA.functions.fluid_color("WpFFWp")
data_fluid[water_greenyellow_waste].flow_color = TIMSABA.functions.flow_color("WpFFWp")

data_fluid[water_viscous_mud].icons = nil
data_fluid[water_viscous_mud].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-viscous-mud.png"
data_fluid[water_viscous_mud].base_color = {r = 099 / 255, g = 075 / 255, b = 029 / 255}
data_fluid[water_viscous_mud].flow_color = {r = 107 / 255, g = 084 / 255, b = 040 / 255}

data_fluid[water_heavy_mud].icons = nil
data_fluid[water_heavy_mud].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-heavy-mud.png"
data_fluid[water_heavy_mud].base_color = {r = 098 / 255, g = 103 / 255, b = 104 / 255}
data_fluid[water_heavy_mud].flow_color = {r = 106 / 255, g = 111 / 255, b = 112 / 255}

data_fluid[water_concentrated_mud].icons = nil
data_fluid[water_concentrated_mud].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-concentrated-mud.png"
data_fluid[water_concentrated_mud].base_color = {r = 108 / 255, g = 110 / 255, b = 109 / 255}
data_fluid[water_concentrated_mud].flow_color = {r = 115 / 255, g = 117 / 255, b = 116 / 255}

data_fluid[water_light_mud].icons = nil
data_fluid[water_light_mud].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-light-mud.png"
data_fluid[water_light_mud].base_color = {r = 119 / 255, g = 119 / 255, b = 113 / 255}
data_fluid[water_light_mud].flow_color = {r = 126 / 255, g = 126 / 255, b = 120 / 255}

data_fluid[water_thin_mud].icons = nil
data_fluid[water_thin_mud].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-thin-mud.png"
data_fluid[water_thin_mud].base_color = {r = 129 / 255, g = 128 / 255, b = 120 / 255}
data_fluid[water_thin_mud].flow_color = {r = 135 / 255, g = 134 / 255, b = 127 / 255}

data_fluid[water_saline_angels].icons = nil
data_fluid[water_saline_angels].icon = "__TIMSABA__/graphics/icons/angels/water/angels-water-saline.png"
data_fluid[water_saline_angels].base_color = {r = 098 / 255, g = 143 / 255, b = 204 / 255}
data_fluid[water_saline_angels].flow_color = {r = 106 / 255, g = 149 / 255, b = 207 / 255}

-- ANGELS PETROCHEM REFINING
data_fluid[compressed_air].icons = nil
data_fluid[compressed_air].icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/angels-gas-compressed-air.png"
data_fluid[compressed_air].base_color = {r = 150 / 255, g = 150 / 255, b = 197 / 255}
data_fluid[compressed_air].flow_color = {r = 155 / 255, g = 155 / 255, b = 200 / 255}

data_fluid[oxygen_angels].icons = nil
data_fluid[oxygen_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/angels-gas-oxygen.png"
data_fluid[oxygen_angels].default_temperature = 15
data_fluid[oxygen_angels].heat_capacity = "200J"
data_fluid[oxygen_angels].base_color = TIMSABA.functions.fluid_color("OOO")
data_fluid[oxygen_angels].flow_color = TIMSABA.functions.flow_color("OOO")
data_fluid[oxygen_angels].max_temperature = 100

data_fluid[carbon_monoxide_angels].icons = nil
data_fluid[carbon_monoxide_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/angels-gas-carbon-monoxide.png"
data_fluid[carbon_monoxide_angels].base_color = TIMSABA.functions.fluid_color("CO")
data_fluid[carbon_monoxide_angels].flow_color = TIMSABA.functions.flow_color("CO")

data_fluid[carbon_dioxide_angels].icons = nil
data_fluid[carbon_dioxide_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/angels-gas-carbon-dioxide.png"
data_fluid[carbon_dioxide_angels].default_temperature = 15
data_fluid[carbon_dioxide_angels].heat_capacity = "200J"
data_fluid[carbon_dioxide_angels].base_color = TIMSABA.functions.fluid_color("CO2")
data_fluid[carbon_dioxide_angels].flow_color = TIMSABA.functions.flow_color("CO2")
data_fluid[carbon_dioxide_angels].max_temperature = 5000

data_fluid[hydrogen_angels].icons = nil
data_fluid[hydrogen_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/angels-gas-hydrogen.png"
data_fluid[hydrogen_angels].base_color = TIMSABA.functions.fluid_color("HHH")
data_fluid[hydrogen_angels].flow_color = TIMSABA.functions.flow_color("HHH")

data_fluid[deuterium_angels].icons = nil
data_fluid[deuterium_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/angels-gas-deuterium.png"
data_fluid[deuterium_angels].base_color = TIMSABA.functions.fluid_color("DDD")
data_fluid[deuterium_angels].flow_color = TIMSABA.functions.flow_color("DDD")

data_fluid[hydrogen_fluoride_angels].icons = nil
data_fluid[hydrogen_fluoride_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/angels-gas-hydrogen-fluoride.png"
data_fluid[hydrogen_fluoride_angels].base_color = TIMSABA.functions.fluid_color("HF")
data_fluid[hydrogen_fluoride_angels].flow_color = TIMSABA.functions.flow_color("HF")

data_fluid[hydrofluoric_acid_angels].icons = nil
data_fluid[hydrofluoric_acid_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/basics/angels-liquid-hydrofluoric-acid.png"
data_fluid[hydrofluoric_acid_angels].base_color = TIMSABA.functions.fluid_color("HFWp")
data_fluid[hydrofluoric_acid_angels].flow_color = TIMSABA.functions.flow_color("HFWp")

data_fluid[chlorine_angels].icons = nil
data_fluid[chlorine_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/angels-gas-chlorine.png"
data_fluid[chlorine_angels].base_color = TIMSABA.functions.fluid_color("ClClCl")
data_fluid[chlorine_angels].flow_color = TIMSABA.functions.flow_color("ClClCl")

data_fluid[hydrogen_chloride_angels].icons = nil
data_fluid[hydrogen_chloride_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/angels-gas-hydrogen-chloride.png"
data_fluid[hydrogen_chloride_angels].base_color = TIMSABA.functions.fluid_color("HCl")
data_fluid[hydrogen_chloride_angels].flow_color = TIMSABA.functions.flow_color("HCl")

data_fluid[hydrochloric_acid_angels].icons = nil
data_fluid[hydrochloric_acid_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/angels-liquid-hydrochloric-acid.png"
data_fluid[hydrochloric_acid_angels].base_color = TIMSABA.functions.fluid_color("HClWp")
data_fluid[hydrochloric_acid_angels].flow_color = TIMSABA.functions.flow_color("HClWp")

data_fluid[allyl_chloride_angels].icons = nil
data_fluid[allyl_chloride_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/angels-liquid-allyl-chlorid.png"
data_fluid[allyl_chloride_angels].base_color = TIMSABA.functions.fluid_color("C3H5Cl")
data_fluid[allyl_chloride_angels].flow_color = TIMSABA.functions.flow_color("C3H5Cl")

data_fluid[epichlorohydrin_angels].icons = nil
data_fluid[epichlorohydrin_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/angels-liquid-epichlorohydrin.png"
data_fluid[epichlorohydrin_angels].base_color = TIMSABA.functions.fluid_color("C3H5ClO")
data_fluid[epichlorohydrin_angels].flow_color = TIMSABA.functions.flow_color("C3H5ClO")

data_fluid[chloromethane_angels].icons = nil
data_fluid[chloromethane_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/angels-gas-chloromethane.png"
data_fluid[chloromethane_angels].base_color = TIMSABA.functions.fluid_color("CH3Cl")
data_fluid[chloromethane_angels].flow_color = TIMSABA.functions.flow_color("CH3Cl")

data_fluid[perchloric_acid_angels].icons = nil
data_fluid[perchloric_acid_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/chlorine/angels-liquid-perchloric-acid.png"
data_fluid[perchloric_acid_angels].base_color = TIMSABA.functions.fluid_color("HClO4")
data_fluid[perchloric_acid_angels].flow_color = TIMSABA.functions.flow_color("HClO4")

data_fluid[nitrogen_angels].icons = nil
data_fluid[nitrogen_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-gas-nitrogen.png"
data_fluid[nitrogen_angels].base_color = TIMSABA.functions.fluid_color("NNN")
data_fluid[nitrogen_angels].flow_color = TIMSABA.functions.flow_color("NNN")

data_fluid[ammonia_angels].icons = nil
data_fluid[ammonia_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-gas-ammonia.png"
data_fluid[ammonia_angels].base_color = TIMSABA.functions.fluid_color("NH3")
data_fluid[ammonia_angels].flow_color = TIMSABA.functions.flow_color("NH3")

data_fluid[nitrogen_monoxide_angels].icons = nil
data_fluid[nitrogen_monoxide_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-gas-nitrogen-monoxide.png"
data_fluid[nitrogen_monoxide_angels].base_color = TIMSABA.functions.fluid_color("NO")
data_fluid[nitrogen_monoxide_angels].flow_color = TIMSABA.functions.flow_color("NO")

data_fluid[nitrogen_dioxide_angels].icons = nil
data_fluid[nitrogen_dioxide_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-gas-nitrogen-dioxide.png"
data_fluid[nitrogen_dioxide_angels].base_color = TIMSABA.functions.fluid_color("NO2")
data_fluid[nitrogen_dioxide_angels].flow_color = TIMSABA.functions.flow_color("NO2")

data_fluid[dinitrogen_tetroxide_angels].icons = nil
data_fluid[dinitrogen_tetroxide_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-gas-dinitrogen-tetroxide.png"
data_fluid[dinitrogen_tetroxide_angels].base_color = TIMSABA.functions.fluid_color("N2O4")
data_fluid[dinitrogen_tetroxide_angels].flow_color = TIMSABA.functions.flow_color("N2O4")

data_fluid[ammonium_chloride_solution_angels].icons = nil
data_fluid[ammonium_chloride_solution_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-solution-ammonium-chloride.png"
data_fluid[ammonium_chloride_solution_angels].base_color = TIMSABA.functions.fluid_color("NH4ClWp")
data_fluid[ammonium_chloride_solution_angels].flow_color = TIMSABA.functions.flow_color("NH4ClWp")

data_fluid[urea_solution_angels].icons = nil
data_fluid[urea_solution_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-solution-urea.png"
data_fluid[urea_solution_angels].base_color = TIMSABA.functions.fluid_color("N2H4COWp")
data_fluid[urea_solution_angels].flow_color = TIMSABA.functions.flow_color("N2H4COWp")

data_fluid[melamine_solution_angels].icons = nil
data_fluid[melamine_solution_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-solution-melamine.png"
data_fluid[melamine_solution_angels].base_color = TIMSABA.functions.fluid_color("C3H6N6Wp")
data_fluid[melamine_solution_angels].flow_color = TIMSABA.functions.flow_color("C3H6N6Wp")

data_fluid[nitric_acid_angels].icons = nil
data_fluid[nitric_acid_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-liquid-nitric-acid.png"
data_fluid[nitric_acid_angels].base_color = TIMSABA.functions.fluid_color("HNO3")
data_fluid[nitric_acid_angels].flow_color = TIMSABA.functions.flow_color("HNO3")

data_fluid[monochloramine_angels].icons = nil
data_fluid[monochloramine_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-gas-monochloramine.png"
data_fluid[monochloramine_angels].base_color = TIMSABA.functions.fluid_color("NH2Cl")
data_fluid[monochloramine_angels].flow_color = TIMSABA.functions.flow_color("NH2Cl")

data_fluid[hydrazine_angels].icons = nil
data_fluid[hydrazine_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-liquid-hydrazine.png"
data_fluid[hydrazine_angels].base_color = TIMSABA.functions.fluid_color("N2H4")
data_fluid[hydrazine_angels].flow_color = TIMSABA.functions.flow_color("N2H4")

data_fluid[methylamine_angels].icons = nil
data_fluid[methylamine_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-gas-methylamine.png"
data_fluid[methylamine_angels].base_color = TIMSABA.functions.fluid_color("CH5N")
data_fluid[methylamine_angels].flow_color = TIMSABA.functions.flow_color("CH5N")

data_fluid[dimethylamine_angels].icons = nil
data_fluid[dimethylamine_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-gas-dimethylamine.png"
data_fluid[dimethylamine_angels].base_color = TIMSABA.functions.fluid_color("C2H7N")
data_fluid[dimethylamine_angels].flow_color = TIMSABA.functions.flow_color("C2H7N")

data_fluid[dimethylhydrazine_angels].icons = nil
data_fluid[dimethylhydrazine_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/nitrogen/angels-liquid-dimethylhydrazine.png"
data_fluid[dimethylhydrazine_angels].base_color = TIMSABA.functions.fluid_color("C2H8N2")
data_fluid[dimethylhydrazine_angels].flow_color = TIMSABA.functions.flow_color("C2H8N2")

data_fluid[hydrogen_sulfide_angels].icons = nil
data_fluid[hydrogen_sulfide_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/sulfur/angels-gas-hydrogen-sulfide.png"
data_fluid[hydrogen_sulfide_angels].base_color = TIMSABA.functions.fluid_color("H2S")
data_fluid[hydrogen_sulfide_angels].flow_color = TIMSABA.functions.flow_color("H2S")

data_fluid[enriched_hydrogen_sulfide_angels].icons = nil
data_fluid[enriched_hydrogen_sulfide_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/sulfur/angels-gas-enriched-hydrogen-sulfide.png"
data_fluid[enriched_hydrogen_sulfide_angels].base_color = TIMSABA.functions.fluid_color("Wp2S")
data_fluid[enriched_hydrogen_sulfide_angels].flow_color = TIMSABA.functions.flow_color("Wp2S")

data_fluid[sulfur_dioxide_angels].icons = nil
data_fluid[sulfur_dioxide_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/sulfur/angels-gas-sulfuric-dioxide.png"
data_fluid[sulfur_dioxide_angels].base_color = TIMSABA.functions.fluid_color("SO2")
data_fluid[sulfur_dioxide_angels].flow_color = TIMSABA.functions.flow_color("SO2")

data_fluid[sulfuric_acid_angels].icons = nil
data_fluid[sulfuric_acid_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/sulfur/angels-liquid-sulfuric-acid.png"
data_fluid[sulfuric_acid_angels].base_color = TIMSABA.functions.fluid_color("H2SO4")
data_fluid[sulfuric_acid_angels].flow_color = TIMSABA.functions.flow_color("H2SO4")

data_fluid[acid_angels].icons = nil
data_fluid[acid_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/raws/angels-gas-acid.png"
data_fluid[acid_angels].base_color = TIMSABA.functions.fluid_color("SSF")
data_fluid[acid_angels].flow_color = TIMSABA.functions.flow_color("SSF")

data_fluid[natural_gas_angels].icons = nil
data_fluid[natural_gas_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/raws/angels-gas-natural-1.png"
data_fluid[natural_gas_angels].base_color = {r = 96 / 255, g = 123 / 255, b = 82 / 255}
data_fluid[natural_gas_angels].flow_color = {r = 104 / 255, g = 130 / 255, b = 91 / 255}

data_fluid[raw_gas_angels].icons = nil
data_fluid[raw_gas_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/raws/angels-gas-raw-1.png"
data_fluid[raw_gas_angels].base_color = {r = 137 / 255, g = 148 / 255, b = 67 / 255}
data_fluid[raw_gas_angels].flow_color = {r = 143 / 255, g = 153 / 255, b = 76 / 255}

data_fluid[NGL_angels].icons = nil
data_fluid[NGL_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/raws/angels-liquid-ngl.png"
data_fluid[NGL_angels].base_color = {r = 89 / 255, g = 107 / 255, b = 79 / 255}
data_fluid[NGL_angels].flow_color = {r = 97 / 255, g = 114 / 255, b = 88 / 255}

data_fluid[multi_phase_oil_angels].icons = nil
data_fluid[multi_phase_oil_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/raws/angels-liquid-multi-phase-oil.png"
data_fluid[multi_phase_oil_angels].base_color = {r = 133 / 255, g = 141 / 255, b = 88 / 255}
data_fluid[multi_phase_oil_angels].flow_color = {r = 139 / 255, g = 147 / 255, b = 96 / 255}

data_fluid[condensates_angels].icons = nil
data_fluid[condensates_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/raws/angels-gas-condensates.png"
data_fluid[condensates_angels].base_color = {r = 90 / 255, g = 90 / 255, b = 90 / 255}
data_fluid[condensates_angels].flow_color = {r = 98 / 255, g = 98 / 255, b = 98 / 255}

data_fluid[residual_angels].icons = nil
data_fluid[residual_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/raws/angels-gas-residual.png"
data_fluid[residual_angels].base_color = {r = 128 / 255, g = 0 / 255, b = 128 / 255}
data_fluid[residual_angels].flow_color = {r = 134 / 255, g = 13 / 255, b = 134 / 255}

data_fluid[methane_angels].icons = nil
data_fluid[methane_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-gas-methane.png"
data_fluid[methane_angels].base_color = TIMSABA.functions.fluid_color("CH4")
data_fluid[methane_angels].flow_color = TIMSABA.functions.flow_color("CH4")

data_fluid[ethane_angels].icons = nil
data_fluid[ethane_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-gas-ethane.png"
data_fluid[ethane_angels].base_color = TIMSABA.functions.fluid_color("C2H6")
data_fluid[ethane_angels].flow_color = TIMSABA.functions.flow_color("C2H6")

data_fluid[butane_angels].icons = nil
data_fluid[butane_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-gas-butane.png"
data_fluid[butane_angels].base_color = TIMSABA.functions.fluid_color("C4H10")
data_fluid[butane_angels].flow_color = TIMSABA.functions.flow_color("C4H10")

data_fluid[propene_angels].icons = nil
data_fluid[propene_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-gas-propene.png"
data_fluid[propene_angels].base_color = TIMSABA.functions.fluid_color("C3H6")
data_fluid[propene_angels].flow_color = TIMSABA.functions.flow_color("C3H6")

data_fluid[methanol_angels].icons = nil
data_fluid[methanol_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-liquid-methanol.png"
data_fluid[methanol_angels].base_color = TIMSABA.functions.fluid_color("CH4O")
data_fluid[methanol_angels].flow_color = TIMSABA.functions.flow_color("CH4O")

data_fluid[ethylene_angels].icons = nil
data_fluid[ethylene_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-gas-ethylene.png"
data_fluid[ethylene_angels].base_color = TIMSABA.functions.fluid_color("C2H4")
data_fluid[ethylene_angels].flow_color = TIMSABA.functions.flow_color("C2H4")

data_fluid[benzene_angels].icons = nil
data_fluid[benzene_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-liquid-benzene.png"
data_fluid[benzene_angels].base_color = TIMSABA.functions.fluid_color("C6H6")
data_fluid[benzene_angels].flow_color = TIMSABA.functions.flow_color("C6H6")

data_fluid[fuel_oil_angels].icons = nil
data_fluid[fuel_oil_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-liquid-fuel-oil.png"
data_fluid[fuel_oil_angels].base_color = {r = 238 / 255, g = 210 / 255, b = 89 / 255}
data_fluid[fuel_oil_angels].flow_color = {r = 239 / 255, g = 212 / 255, b = 97 / 255}

data_fluid[naphtha_angels].icons = nil
data_fluid[naphtha_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-liquid-naphtha.png"
data_fluid[naphtha_angels].base_color = {r = 172 / 255, g = 72 / 255, b = 81 / 255}
data_fluid[naphtha_angels].flow_color = {r = 176 / 255, g = 81 / 255, b = 90 / 255}

data_fluid[mineral_oil_angels].icons = nil
data_fluid[mineral_oil_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-liquid-mineral-oil.png"
data_fluid[mineral_oil_angels].base_color = {r = 61 / 255, g = 173 / 255, b = 61 / 255}
data_fluid[mineral_oil_angels].flow_color = {r = 71 / 255, g = 177 / 255, b = 71 / 255}

data_fluid[synthesis_angels].icons = nil
data_fluid[synthesis_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-gas-synthesis.png"
data_fluid[synthesis_angels].base_color = {r = 175 / 255, g = 100 / 255, b = 175 / 255}
data_fluid[synthesis_angels].flow_color = {r = 179 / 255, g = 108 / 255, b = 179 / 255}

data_fluid[toluene_angels].icons = nil
data_fluid[toluene_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-liquid-toluene.png"
data_fluid[toluene_angels].base_color = TIMSABA.functions.fluid_color("C7H8")
data_fluid[toluene_angels].flow_color = TIMSABA.functions.flow_color("C7H8")

data_fluid[butadiene_angels].icons = nil
data_fluid[butadiene_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-gas-butadiene.png"
data_fluid[butadiene_angels].base_color = TIMSABA.functions.fluid_color("C4H6")
data_fluid[butadiene_angels].flow_color = TIMSABA.functions.flow_color("C4H6")

data_fluid[ethylbenzene_angels].icons = nil
data_fluid[ethylbenzene_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-liquid-ethylbenzene.png"
data_fluid[ethylbenzene_angels].base_color = TIMSABA.functions.fluid_color("C8H10")
data_fluid[ethylbenzene_angels].flow_color = TIMSABA.functions.flow_color("C8H10")

data_fluid[styrene_angels].icons = nil
data_fluid[styrene_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-liquid-styrene.png"
data_fluid[styrene_angels].base_color = TIMSABA.functions.fluid_color("C8H8")
data_fluid[styrene_angels].flow_color = TIMSABA.functions.flow_color("C8H8")

data_fluid[formaldehyde_angels].icons = nil
data_fluid[formaldehyde_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-gas-formaldehyde.png"
data_fluid[formaldehyde_angels].base_color = TIMSABA.functions.fluid_color("CH2O")
data_fluid[formaldehyde_angels].flow_color = TIMSABA.functions.flow_color("CH2O")

data_fluid[glycerol_angels].icons = nil
data_fluid[glycerol_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-liquid-glycerol.png"
data_fluid[glycerol_angels].base_color = TIMSABA.functions.fluid_color("C3H8O3")
data_fluid[glycerol_angels].flow_color = TIMSABA.functions.flow_color("C3H8O3")

data_fluid[acetone_angels].icons = nil
data_fluid[acetone_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/carbons/angels-liquid-acetone.png"
data_fluid[acetone_angels].base_color = TIMSABA.functions.fluid_color("C3H6O")
data_fluid[acetone_angels].flow_color = TIMSABA.functions.flow_color("C3H6O")

data_fluid[liquid_plastic_angels].icons = nil
data_fluid[liquid_plastic_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/solids/angels-liquid-plastic.png"
data_fluid[liquid_plastic_angels].base_color = {r = 228 / 255, g = 228 / 255, b = 228 / 255}
data_fluid[liquid_plastic_angels].flow_color = {r = 229 / 255, g = 229 / 255, b = 229 / 255}

data_fluid[liquid_resin_angels].icons = nil
data_fluid[liquid_resin_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/solids/angels-liquid-resin.png"
data_fluid[liquid_resin_angels].base_color = {r = 228 / 255, g = 203 / 255, b = 138 / 255}
data_fluid[liquid_resin_angels].flow_color = {r = 229 / 255, g = 206 / 255, b = 144 / 255}

data_fluid[liquid_rubber_angels].icons = nil
data_fluid[liquid_rubber_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/solids/angels-liquid-rubber.png"
data_fluid[liquid_rubber_angels].base_color = {r = 163 / 255, g = 173 / 255, b = 228 / 255}
data_fluid[liquid_rubber_angels].flow_color = {r = 168 / 255, g = 177 / 255, b = 229 / 255}

data_fluid[sodium_hydroxide_solution_angels].icons = nil
data_fluid[sodium_hydroxide_solution_angels].icon = "__TIMSABA__/graphics/icons/angels/petrochem/solids/angels-liquid-aqueous-sodium-hydroxide.png"
data_fluid[sodium_hydroxide_solution_angels].base_color = TIMSABA.functions.fluid_color("NaOHWp")
data_fluid[sodium_hydroxide_solution_angels].flow_color = TIMSABA.functions.flow_color("NaOHWp")

-- ANGELS BIOPROCESSING
data_fluid[nutrient_pulp].icons = nil
data_fluid[nutrient_pulp].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-liquid-nutrient-pulp.png"
data_fluid[nutrient_pulp].base_color = {r = 226 / 255, g = 151 / 255, b = 28 / 255}
data_fluid[nutrient_pulp].flow_color = {r = 227 / 255, g = 156 / 255, b = 39 / 255}

data_fluid[raw_vegetable_oil].icons = nil
data_fluid[raw_vegetable_oil].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-liquid-raw-vegetable-oil.png"
data_fluid[raw_vegetable_oil].base_color = {r = 255 / 255, g = 203 / 255, b = 62 / 255}
data_fluid[raw_vegetable_oil].flow_color = {r = 255 / 255, g = 206 / 255, b = 72 / 255}

data_fluid[vegetable_oil].icons = nil
data_fluid[vegetable_oil].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-liquid-vegetable-oil.png"
data_fluid[vegetable_oil].base_color = {r = 231 / 255, g = 231 / 255, b = 29 / 255}
data_fluid[vegetable_oil].flow_color = {r = 232 / 255, g = 232 / 255, b = 40 / 255}

data_fluid[acetic_acid].icons = nil
data_fluid[acetic_acid].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-liquid-acetic-acid.png"
data_fluid[acetic_acid].base_color = TIMSABA.functions.fluid_color("C2H4O2")
data_fluid[acetic_acid].flow_color = TIMSABA.functions.flow_color("C2H4O2")

data_fluid[acetic_anhydride].icons = nil
data_fluid[acetic_anhydride].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-liquid-acetic-anhydride.png"
data_fluid[acetic_anhydride].base_color = TIMSABA.functions.fluid_color("C4H6O3")
data_fluid[acetic_anhydride].flow_color = TIMSABA.functions.flow_color("C4H6O3")

data_fluid[ethanol_angels].icons = nil
data_fluid[ethanol_angels].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-liquid-ethanol.png"
data_fluid[ethanol_angels].base_color = TIMSABA.functions.fluid_color("C2H6O")
data_fluid[ethanol_angels].flow_color = TIMSABA.functions.flow_color("C2H6O")

data_fluid[propionic_acid].icons = nil
data_fluid[propionic_acid].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-liquid-propionic-acid.png"
data_fluid[propionic_acid].base_color = TIMSABA.functions.fluid_color("C3H6O2")
data_fluid[propionic_acid].flow_color = TIMSABA.functions.flow_color("C3H6O2")

data_fluid[water_for_fish].icons = nil
data_fluid[water_for_fish].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-liquid-fish-atmosphere.png"
data_fluid[water_for_fish].base_color = {r = 178 / 255, g = 224 / 255, b = 30 / 255}
data_fluid[water_for_fish].flow_color = {r = 182 / 255, g = 226 / 255, b = 41 / 255}

data_fluid[polluted_water_for_fish].icons = nil
data_fluid[polluted_water_for_fish].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-liquid-polluted-fish-atmosphere.png"
data_fluid[polluted_water_for_fish].base_color = {r = 191 / 255, g = 103 / 255, b = 165 / 255}
data_fluid[polluted_water_for_fish].flow_color = {r = 194 / 255, g = 111 / 255, b = 170 / 255}

data_fluid[raw_fish_oil].icons = nil
data_fluid[raw_fish_oil].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-liquid-raw-fish-oil.png"
data_fluid[raw_fish_oil].base_color = {r = 220 / 255, g = 136 / 255, b = 52 / 255}
data_fluid[raw_fish_oil].flow_color = {r = 222 / 255, g = 142 / 255, b = 62 / 255}

data_fluid[fish_oil].icons = nil
data_fluid[fish_oil].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-liquid-fish-oil.png"
data_fluid[fish_oil].base_color = {r = 216 / 255, g = 172 / 255, b = 27 / 255}
data_fluid[fish_oil].flow_color = {r = 218 / 255, g = 176 / 255, b = 38 / 255}

data_fluid[puffer_atmosphere].icons = nil
data_fluid[puffer_atmosphere].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-gas-puffer-atmosphere.png"
data_fluid[puffer_atmosphere].base_color = {r = 178 / 255, g = 224 / 255, b = 30 / 255}
data_fluid[puffer_atmosphere].flow_color = {r = 182 / 255, g = 226 / 255, b = 41 / 255}

data_fluid[alien_goo].icons = nil
data_fluid[alien_goo].icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/angels-alien-goo.png"
data_fluid[alien_goo].base_color = {r = 207 / 255, g = 44 / 255, b = 214 / 255}
data_fluid[alien_goo].flow_color = {r = 209 / 255, g = 55 / 255, b = 216 / 255}

-- MODS
if mods [muluna_mods] then
    data_fluid[tar_mods].icon = "__TIMSABA__/graphics/icons/muluna/tar.png"
    data_fluid[cooled_steam_mods].icons = nil
    data_fluid[cooled_steam_mods].icon = "__TIMSABA__/graphics/icons/muluna/cooled-steam.png"
end

if mods [maraxsis_mods] or mods [muluna_mods] or mods [shchierbin_mods] then
    data_fluid[atmosphere_maraxsis].icon = "__TIMSABA__/graphics/icons/maraxsis/maraxsis-atmosphere.png"
end

if mods [maraxsis_mods] then
    data_fluid[supercritical_steam_maraxsis].icon = "__TIMSABA__/graphics/icons/maraxsis/supercritical-steam.png"
    data_fluid[water_brackish_maraxsis].icon = "__TIMSABA__/graphics/icons/maraxsis/brackish-water.png"
    data_fluid[liquid_atmosphere_maraxsis].icon = "__TIMSABA__/graphics/icons/maraxsis/liquid-atmosphere.png"
    data_fluid[molten_salt_mods].icon = "__TIMSABA__/graphics/icons/maraxsis/molten-salt.png"
end

if mods [panglia_mods] then
    data_fluid[branbalite_slurry_panglia].icon = "__TIMSABA__/graphics/icons/panglia/panglia_branbalite_slurry.png"
end

if mods [arig_mods] then
    data_fluid[sand_arig].icon = "__TIMSABA__/graphics/icons/arig/sand.png"
    data_fluid[pure_sand_arig].icon = "__TIMSABA__/graphics/icons/arig/pure-sand.png"
end

if mods [hyarion_mods] then
    data_fluid[polishing_compound_hyarion].icon = "__TIMSABA__/graphics/icons/hyarion/polishing-compound.png"
end

if mods [corrundum_mods] then
    data_fluid[sulfuric_acid_dilute_mods].icon = "__TIMSABA__/graphics/icons/corrundum/sulfuric-acid-dilute.png"
    data_fluid[mixed_sulfate_solution_mods].icon = "__TIMSABA__/graphics/icons/corrundum/mixed-sulfate-solution.png"
    data_fluid[iron_sulfate_solution_mods].icon = "__TIMSABA__/graphics/icons/corrundum/iron-sulfate-solution.png"
    data_fluid[copper_sulfate_solution_mods].icon = "__TIMSABA__/graphics/icons/corrundum/copper-sulfate-solution.png"
end

if mods [paracelsin_mods] then
    data_fluid[zinc_concentrate_mods].icon = "__TIMSABA__/graphics/icons/paracelsin/zinc-concentrate.png"
    data_fluid[dirty_zinc_solution_mods].icon = "__TIMSABA__/graphics/icons/paracelsin/dirty-zinc-solution.png"
    data_fluid[zinc_solution_mods].icon = "__TIMSABA__/graphics/icons/paracelsin/zinc-solution.png"
end

if mods [shchierbin_mods] then
    data_fluid[vinylchloride_mods].icon = "__TIMSABA__/graphics/icons/shchierbin/vinylchloride.png"
end

if mods [terrapalus_mods] then
    data_fluid[ultravium].icon = "__TIMSABA__/graphics/icons/terrapalus/ultravium.png"
end

if mods [vesta_mods] then
    data_fluid[algea_water_vesta].icon = "__TIMSABA__/graphics/icons/vesta/fluid_algea_water.png"
    data_fluid[dt_fuel].icon = "__TIMSABA__/graphics/icons/vesta/dt_fuel.png"
    data_fluid[helium_vesta].icon = "__TIMSABA__/graphics/icons/vesta/gas_helium.png"
    data_fluid[tritium_mods].icon = "__TIMSABA__/graphics/icons/vesta/gas_tritium.png"
    data_fluid[supermagnetic_vesta].icon = "__TIMSABA__/graphics/icons/vesta/fluid_super_magnetic.png"
    data_fluid[fluoro_fuel].icon = "__TIMSABA__/graphics/icons/vesta/fluoroketonefuel.png"
    data_fluid[plasma_fuel].icon = "__TIMSABA__/graphics/icons/vesta/plasmafuel.png"
end

if mods [shattered_mods] then
    data_fluid[slurry_promethium_shattered].icon = "__TIMSABA__/graphics/icons/shattered/slurry_promethium.png"
    data_fluid[slurry_carbonic_shattered].icon = "__TIMSABA__/graphics/icons/shattered/slurry_carbonic.png"
    data_fluid[slurry_metallic_shattered].icon = "__TIMSABA__/graphics/icons/shattered/slurry_metallic.png"
    data_fluid[slurry_oxide_shattered].icon = "__TIMSABA__/graphics/icons/shattered/slurry_oxide.png"
    data_fluid[neon_mods].icon = "__TIMSABA__/graphics/icons/shattered/gas_neon.png"
    data_fluid[argon_mods].icon = "__TIMSABA__/graphics/icons/shattered/gas_argon.png"
    data_fluid[krypton_mods].icon = "__TIMSABA__/graphics/icons/shattered/gas_krypton.png"
    data_fluid[xenon_mods].icon = "__TIMSABA__/graphics/icons/shattered/gas_xenon.png"
    data_fluid[liquid_nitrogen_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_liquid_nitrogen.png"
    data_fluid[brine_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_brine.png"
    data_fluid[plutonium_238_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_plutonium_238.png"
    data_fluid[plutonium_239_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_plutonium_239.png"
    data_fluid[plutonium_241_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_plutonium_241.png"
    data_fluid[plutonium_242_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_plutonium_242.png"
    data_fluid[neptunium_236_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_neptunium_236.png"
    data_fluid[neptunium_237_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_neptunium_237.png"
    data_fluid[uranium_233_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_uranium_233.png"
    data_fluid[uranium_235_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_uranium_235.png"
    data_fluid[uranium_238_shattered].icon = "__TIMSABA__/graphics/icons/shattered/fluid_uranium_238.png"
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
--[[
data_fluid[].base_color = TIMSABA.functions.fluid_color("")
data_fluid[].flow_color = TIMSABA.functions.flow_color("")
or
data_fluid[].base_color = {r =  / 255, g =  / 255, b =  / 255}
data_fluid[].flow_color = {r =  / 255, g =  / 255, b =  / 255}
]]