local run_migration = require("compatibility.migrations-mods.utils")

return function()
    if not prototypes.fluid["angels-liquid-sulfuric-acid"] then
        local bobs_replacements = {["angels-liquid-sulfuric-acid"] = "timsaba-liquid-sulfuric-acid"}

        run_migration(bobs_replacements)
    end
end