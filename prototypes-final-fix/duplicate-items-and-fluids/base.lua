data_recipe[steel_plate] = nil

local battery_mk3_SA = "battery-mk3-equipment"
data_item[battery_mk3_SA] = nil
data_recipe[battery_mk3_SA .. _recycling] = nil
if mods [panglia_mods] then
    data_recipe[item_ .. battery_mk3_SA .. _panglia_crushing] = nil
end
data_recipe[battery_mk3_SA] = nil
data_battery_equipment[battery_mk3_SA] = nil
data_technology[battery_mk3_SA] = nil