-- beamng_ets2_core/loader.lua
-- BeamNG load entrypoint for the ETS2-inspired prototype.

local app = require("beamng_ets2_core.bootstrap")

local mod = {
  name = "BeamNG-ETS2",
  version = "0.4.0",
  author = "BeamNG-ETS2 Developer",
  entry = app
}

local function initialize()
  print("[Loader] Initializing BeamNG-ETS2 mod")
  app:run()
end

local function onUpdate(dt)
  if app.runtime and app.runtime.running then
    app.runtime:update(dt)
  end
end

if type(beamng) == "table" then
  beamng.ets2 = mod
  beamng.onVehicleSpawn = beamng.onVehicleSpawn or function()
    print("[Loader] Vehicle spawn callback reached")
  end
end

return {
  initialize = initialize,
  onUpdate = onUpdate,
  app = app
}
