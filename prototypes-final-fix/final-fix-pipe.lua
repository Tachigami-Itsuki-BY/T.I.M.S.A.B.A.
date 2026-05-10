local pipe_types = {"pipe", "pipe-to-ground"}
for _, type_name in ipairs(pipe_types) do
    for _, entity in pairs(data.raw[type_name]) do
        if entity.minable then
            entity.minable.mining_time = 0.5
        end
    end
end