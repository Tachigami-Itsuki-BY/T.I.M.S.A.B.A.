for _, tech in pairs(data.raw.technology) do
    local unit = tech.unit
    if unit then
        if unit.time and unit.time > 0 then
            local exp_time = math.floor(math.log(unit.time) / math.log(2) + 0.5)
            unit.time = math.pow(2, exp_time)
        end
        if unit.count and type(unit.count) == "number" and unit.count > 0 then
            local exp_count = math.floor(math.log(unit.count) / math.log(2) + 0.5)
            unit.count = math.pow(2, exp_count)
        end
        if unit.count_formula then
            unit.count_formula = "2^L*128"
        end
        if tech.max_level == "infinite" or (type(tech.max_level) == "number" and tech.max_level > 30) then
            tech.max_level = 30
        end
    end
end

data_technology[logistic_science_pack].unit.time = 16

for _, tech in pairs(data.raw.technology) do
    if tech.research_trigger and tech.research_trigger.count then
        tech.research_trigger.count = 256
    end
end

data_technology[tech_holmium_smelting_1].research_trigger.count = 4096

data_technology["steam-power"].research_trigger.count = 64
data_technology["electronics"].research_trigger.count = 8
data_technology["logistics-0"].research_trigger.count = 32

data_technology["steel-plate-productivity"].effects =
{
    {type = "change-recipe-productivity", recipe = casting_steel, change = 0.1},
    {type = "change-recipe-productivity", recipe = steel_plate_1, change = 0.1},
    {type = "change-recipe-productivity", recipe = steel_plate_2, change = 0.1}
}

data_technology["bob-infinite-character-logistic-trash-slots-1"].effects = {{type = "character-logistic-trash-slots", modifier = 5}}