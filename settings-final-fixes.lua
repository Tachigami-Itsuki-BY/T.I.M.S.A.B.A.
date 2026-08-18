local data_bool_setting = data.raw["bool-setting"]

if mods["bobtech"] and mods["sa-science-packs"] then
    data_bool_setting["sasp-nostalgia-mode"] = nil
end

-- BOBS
data_bool_setting["bobmods-assembly-electronicmachines"].hidden = true
data_bool_setting["bobmods-assembly-burner"].hidden = true
data_bool_setting["bobmods-assembly-oilfurnaces"].hidden = true

data_bool_setting["bobmods-mining-steamminingdrills"].hidden = true
data_bool_setting["bobmods-mining-waterminers"].hidden = true

if mods["bobmodules"] then
    data_bool_setting["bobmods-modules-enablegodmodules"].hidden = true
end

data_bool_setting["bobmods-power-heatsources"].hidden = true

local data_string_setting = data.raw["string-setting"]
if mods["bobwarfare"] then
    data_bool_setting["bobmods-warfare-drainlesslaserturrets"].hidden = true
    data_bool_setting["bobmods-warfare-spidertron-overhaul"].hidden = true
    data_string_setting["bobmods-warfare-spidertron-needsfuel"].hidden = true
end

-- FROZETA
if mods["secretas"] then
    data_bool_setting["condense-level-4-modules-into-one-technology"].hidden = true
end

-- VESTA
if mods["skewer_planet_vesta"] then
    data_bool_setting["ske_vesta_gases"].default_value = true
    data_bool_setting["ske_vesta_gases"].hidden = true
end


-- MODS
local data_double_setting = data.raw["double-setting"]
if mods["Accumulator-V2"] then
    data_double_setting["accumulator-power-capacity"].hidden = true
    data_bool_setting["link-multiplier-to-cost"].hidden = true
end

local data_color_setting = data.raw["color-setting"]
if mods["SolarMatrix"] then
    data_color_setting["solar-matrix-color"].hidden = true
    data_double_setting["solar-matrix-power"].hidden = true
    data_bool_setting["link-multiplier-to-cost"].hidden = true
end

if mods["Flow Control"] then
    data_bool_setting["flow-control-new-group"].hidden = true
end