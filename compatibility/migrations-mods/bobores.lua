local run_migration = require("migrations-mods.utils")

-- Проверяем условия версии
if script.active_mods["bobores"] >= "2.1.0" then
    -- Задаем только список замен для этого мода
    local bobs_replacements = {["bob-tungsten-ore"] = "tungsten-ore-timsaba"}

    -- Запускаем весь большой процесс замены одной строчкой!
    run_migration(bobs_replacements)
end