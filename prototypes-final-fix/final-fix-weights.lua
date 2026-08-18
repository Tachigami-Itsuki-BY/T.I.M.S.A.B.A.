for _, prototype in pairs(data_item) do
    if prototype.stack_size == 50 then
        prototype.stack_size = 64
        prototype.weight = 15625
    end
end

for _, prototype in pairs(data_module) do
    if prototype.stack_size == 50 then
        prototype.stack_size = 64
        prototype.weight = 15625
    end
end

for item_name, item_data in pairs(data_item) do
    if item_name:find("asteroid") then
        item_data.stack_size = 64
        item_data.weight = 15625
    end
end

local name_types_stack_size_and_weight = {"item", "tool", "repair-tool", "capsule", "item-with-entity-data", "rail-planner", "ammo"}
for _, type_name in pairs(name_types_stack_size_and_weight) do
    if data.raw[type_name] then
        for _, prototype in pairs(data.raw[type_name]) do
            if prototype.stack_size == 100 or prototype.stack_size == 200 or prototype.stack_size == 500 then
                prototype.stack_size = 256
                prototype.weight = 3906.25
            end
        end
    end
end

local name_type_weight = {"item", "tool", "repair-tool", "capsule", "item-with-entity-data", "rail-planner", "ammo", "module"}
for _, type_name in pairs(name_type_weight) do
    if data.raw[type_name] then
        for _, prototype in pairs(data.raw[type_name]) do
            if prototype.weight then
                prototype.weight = prototype.weight / 20
            end
        end
    end
end