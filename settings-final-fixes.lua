local data_bool_setting = data.raw["bool-setting"]

if mods["bobtech"] and mods["sa-science-packs"] then
    data_bool_setting["sasp-nostalgia-mode"] = nil
end

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