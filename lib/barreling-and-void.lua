-- BARRELING
TIMSABA.barreling = TIMSABA.barreling or {}

-- Универсальная внутренняя функция для безопасного добавления без дубликатов
local function add_to_list(list, item_name)
    if type(item_name) ~= "string" then return end
    for _, existing in ipairs(list) do
        if existing == item_name then return end -- уже есть в списке
    end
    table.insert(list, item_name)
end

TIMSABA.barreling.simple_fluids = {}

TIMSABA.barreling.add_simple_fluid = function(name)
    add_to_list(TIMSABA.barreling.simple_fluids, name)
end

TIMSABA.barreling.dangerous_fluids = {}

TIMSABA.barreling.add_dangerous_fluid = function(name)
    add_to_list(TIMSABA.barreling.dangerous_fluids, name)
end

TIMSABA.barreling.gases = {}

TIMSABA.barreling.add_gas = function(name)
    add_to_list(TIMSABA.barreling.gases, name)
end

-- VOID
TIMSABA.void = TIMSABA.void or {}

TIMSABA.void.fluids = {}

TIMSABA.void.void_fluids = function(name)
    add_to_list(TIMSABA.void.fluids, name)
end

TIMSABA.void.gases = TIMSABA.barreling.gases or {}

TIMSABA.void.void_gases = function(name)
    add_to_list(TIMSABA.void.gases, name)
end

-- COMPOST
TIMSABA.void.organics = {}

TIMSABA.void.void_organics = function(name)
    add_to_list(TIMSABA.void.organics, name)
end