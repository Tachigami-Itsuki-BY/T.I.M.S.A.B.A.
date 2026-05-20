local types_1 = {"transport-belt", "underground-belt", "splitter", "inserter", "electric-pole", "pipe", "pipe-to-ground"}
for _, type_name in ipairs(types_1) do
    for _, entity in pairs(data.raw[type_name]) do
        if entity.minable then
            entity.minable.mining_time = 0.5
        end
    end
end

local types_2 = {boiler, generator, burner_generator, solar_panel, accumulator, mining_drill, reactor, furnace, assembling_machine, lab}
for _, type_name in ipairs(types_2) do
    for _, entity in pairs(data.raw[type_name]) do
        if entity.minable then
            entity.minable.mining_time = 1
        end
    end
end