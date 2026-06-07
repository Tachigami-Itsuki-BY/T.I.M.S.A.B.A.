local run_migration = require("compatibility.migrations-mods.utils")

return function()
    if not prototypes.item["bob-tungsten-ore"] then
        local bobs_replacements = {["bob-tungsten-ore"] = "timsaba-tungsten-ore"}

        run_migration(bobs_replacements)
    end
end