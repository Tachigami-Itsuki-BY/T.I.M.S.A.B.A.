for name, recipe_name in pairs(data.raw.recipe) do
    if name:find("recycling") then
        recipe_name.energy_required = 0.25
        local target_item = recipe_name.main_product
        or (recipe_name.ingredients and recipe_name.ingredients[1] and (recipe_name.ingredients[1].name or recipe_name.ingredients[1]))
        or name:gsub("%-recycling", "")
        local new_icons = RECYCLING_IS(recycling_png, target_item)
        if new_icons and #new_icons > 0 then
            recipe_name.icons = new_icons
            recipe_name.icon = nil
        end
    end
end

local _recycling = "-recycling"
local plastic_pipe_recycling = plastic_pipe .. _recycling
--data_recipe[plastic_pipe_recycling].results = {{type = item, name = plastic_pipe, amount = 1, probability = 0.25}}
--data_recipe[plastic_pipe_recycling].main_product = plastic_pipe
local plastic_pipe_to_ground_recycling = plastic_pipe_to_ground .. _recycling
data_recipe[plastic_pipe_to_ground_recycling].results = {{type = item, name = plastic_pipe_to_ground, amount = 1, probability = 0.25}}
data_recipe[plastic_pipe_to_ground_recycling].main_product = plastic_pipe_to_ground

local ceramic_pipe_recycling = ceramic_pipe .. _recycling
data_recipe[ceramic_pipe_recycling].results = {{type = item, name = ceramic_pipe, amount = 1, probability = 0.25}}
data_recipe[ceramic_pipe_recycling].main_product = ceramic_pipe
local ceramic_pipe_to_ground_recycling = ceramic_pipe_to_ground .. _recycling
data_recipe[ceramic_pipe_to_ground_recycling].results = {{type = item, name = ceramic_pipe_to_ground, amount = 1, probability = 0.25}}
data_recipe[ceramic_pipe_to_ground_recycling].main_product = ceramic_pipe_to_ground

local tungsten_pipe_recycling = tungsten_pipe .. _recycling
data_recipe[tungsten_pipe_recycling].results = {{type = item, name = tungsten_pipe, amount = 1, probability = 0.25}}
data_recipe[tungsten_pipe_recycling].main_product = tungsten_pipe
local tungsten_pipe_to_ground_recycling = tungsten_pipe_to_ground .. _recycling
data_recipe[tungsten_pipe_to_ground_recycling].results = {{type = item, name = tungsten_pipe_to_ground, amount = 1, probability = 0.25}}
data_recipe[tungsten_pipe_to_ground_recycling].main_product = tungsten_pipe_to_ground

local copper_tungsten_pipe_recycling = copper_tungsten_pipe .. _recycling
data_recipe[copper_tungsten_pipe_recycling].results = {{type = item, name = copper_tungsten_pipe, amount = 1, probability = 0.25}}
data_recipe[copper_tungsten_pipe_recycling].main_product = copper_tungsten_pipe
local copper_tungsten_pipe_to_ground_recycling = copper_tungsten_pipe_to_ground .. _recycling
data_recipe[copper_tungsten_pipe_to_ground_recycling].results = {{type = item, name = copper_tungsten_pipe_to_ground, amount = 1, probability = 0.25}}
data_recipe[copper_tungsten_pipe_to_ground_recycling].main_product = copper_tungsten_pipe_to_ground

local molybdenum_rhenium_pipe_recycling = molybdenum_rhenium_pipe .. _recycling
data_recipe[molybdenum_rhenium_pipe_recycling].results = {{type = item, name = molybdenum_rhenium_pipe, amount = 1, probability = 0.25}}
data_recipe[molybdenum_rhenium_pipe_recycling].main_product = molybdenum_rhenium_pipe
local molybdenum_rhenium_pipe_to_ground_recycling = molybdenum_rhenium_pipe_to_ground .. _recycling
data_recipe[molybdenum_rhenium_pipe_to_ground_recycling].results = {{type = item, name = molybdenum_rhenium_pipe_to_ground, amount = 1, probability = 0.25}}
data_recipe[molybdenum_rhenium_pipe_to_ground_recycling].main_product = molybdenum_rhenium_pipe_to_ground

local ceramic_gear_wheel_recycling = ceramic_gear_wheel .. _recycling
data_recipe[ceramic_gear_wheel_recycling].results = {{type = item, name = ceramic_gear_wheel, amount = 1, probability = 0.25}}
data_recipe[ceramic_gear_wheel_recycling].main_product = ceramic_gear_wheel
local ceramic_bearing_ball_recycling = ceramic_bearing_ball .. _recycling
data_recipe[ceramic_bearing_ball_recycling].results = {{type = item, name = ceramic_bearing_ball, amount = 1, probability = 0.25}}
data_recipe[ceramic_bearing_ball_recycling].main_product = ceramic_bearing_ball
local ceramic_bearing_recycling = ceramic_bearing .. _recycling
data_recipe[ceramic_bearing_recycling].results = {{type = item, name = ceramic_bearing, amount = 1, probability = 0.25}}
data_recipe[ceramic_bearing_recycling].main_product = ceramic_bearing

local copper_tungsten_gear_wheel_recycling = copper_tungsten_gear_wheel .. _recycling
data_recipe[copper_tungsten_gear_wheel_recycling].results = {{type = item, name = copper_tungsten_gear_wheel, amount = 1, probability = 0.25}}
data_recipe[copper_tungsten_gear_wheel_recycling].main_product = copper_tungsten_gear_wheel
local copper_tungsten_bearing_ball_recycling = copper_tungsten_bearing_ball .. _recycling
data_recipe[copper_tungsten_bearing_ball_recycling].results = {{type = item, name = copper_tungsten_bearing_ball, amount = 1, probability = 0.25}}
data_recipe[copper_tungsten_bearing_ball_recycling].main_product = copper_tungsten_bearing_ball
local copper_tungsten_bearing_recycling = copper_tungsten_bearing .. _recycling
data_recipe[copper_tungsten_bearing_recycling].results = {{type = item, name = copper_tungsten_bearing, amount = 1, probability = 0.25}}
data_recipe[copper_tungsten_bearing_recycling].main_product = copper_tungsten_bearing

local molybdenum_gear_wheel_recycling = molybdenum_gear_wheel .. _recycling
data_recipe[molybdenum_gear_wheel_recycling].results = {{type = item, name = molybdenum_gear_wheel, amount = 1, probability = 0.25}}
data_recipe[molybdenum_gear_wheel_recycling].main_product = molybdenum_gear_wheel
local rhenium_bearing_ball_recycling = rhenium_bearing_ball .. _recycling
data_recipe[rhenium_bearing_ball_recycling].results = {{type = item, name = rhenium_bearing_ball, amount = 1, probability = 0.25}}
data_recipe[rhenium_bearing_ball_recycling].main_product = rhenium_bearing_ball
local rhenium_bearing_recycling = rhenium_bearing .. _recycling
data_recipe[rhenium_bearing_recycling].results = {{type = item, name = rhenium_bearing, amount = 1, probability = 0.25}}
data_recipe[rhenium_bearing_recycling].main_product = rhenium_bearing

local uranium_ore_recycling = uranium_ore .. _recycling
data_recipe[uranium_ore_recycling].results = {{type = item, name = uranium_ore, amount = 1, probability = 0.25}}
data_recipe[uranium_ore_recycling].main_product = uranium_ore
local uranium_235_fuel_cell_recycling = uranium_235_fuel_cell .. _recycling
data_recipe[uranium_235_fuel_cell_recycling].results = {{type = item, name = uranium_235_fuel_cell, amount = 1, probability = 0.25}}
data_recipe[uranium_235_fuel_cell_recycling].main_product = uranium_235_fuel_cell

local concrete_recycling = concrete .. _recycling
data_recipe[concrete_recycling] = nil
local hazard_concrete_recycling = hazard_concrete .. _recycling
data_recipe[hazard_concrete_recycling] = nil

local refined_concrete_recycling = refined_concrete .. _recycling
data_recipe[refined_concrete_recycling] = nil
local refined_hazard_concrete_recycling = refined_hazard_concrete .. _recycling
data_recipe[refined_hazard_concrete_recycling] = nil