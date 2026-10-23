-- beamng_ets2_core/main.lua
-- Local compatibility entrypoint for a BeamNG loading flow.

local loader = require("beamng_ets2_core.loader")

if type(beamng) == "table" then
  print("[Main] BeamNG runtime detected")
end

loader.initialize()

return loader
