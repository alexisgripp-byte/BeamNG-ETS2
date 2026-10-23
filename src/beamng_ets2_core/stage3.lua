-- beamng_ets2_core/stage3.lua
-- Stage 3 integration bridge for a local BeamNG mod workflow.
-- This file connects the prototype modules to the real BeamNG runtime.

local Stage3 = {}
Stage3.__index = Stage3

function Stage3.new(app)
  local self = setmetatable({}, Stage3)
  self.app = app
  self.runtimeReady = false
  return self
end

function Stage3:prepareRuntime()
  self.runtimeReady = type(beamng) == "table"

  if self.runtimeReady then
    print("[Stage3] BeamNG runtime detected")
  else
    print("[Stage3] BeamNG runtime not detected. Prototype mode only.")
  end
end

function Stage3:loadMap(mapId)
  if not self.runtimeReady then
    print("[Stage3] Skipping map load because BeamNG runtime is unavailable")
    return false
  end

  if type(beamng.loadLevel) == "function" then
    beamng.loadLevel(mapId)
    print("[Stage3] Requested map load: " .. tostring(mapId))
    return true
  end

  print("[Stage3] Placeholder map load for: " .. tostring(mapId))
  return false
end

function Stage3:spawnTruck(truckId, spawnPosition)
  if not self.runtimeReady then
    print("[Stage3] Skipping vehicle spawn because BeamNG runtime is unavailable")
    return false
  end

  if type(beamng.spawnVehicle) == "function" then
    beamng.spawnVehicle(truckId, spawnPosition or { x = 0, y = 0, z = 2 })
    print("[Stage3] Requested truck spawn: " .. tostring(truckId))
    return true
  end

  print("[Stage3] Placeholder truck spawn for: " .. tostring(truckId))
  return false
end

function Stage3:updatePlayerHud(vehicleState)
  if not vehicleState then
    return
  end

  local speed = vehicleState.speed or 0
  local x = vehicleState.x or 0
  local y = vehicleState.y or 0

  print("[Stage3] HUD update: speed=" .. tostring(speed) .. " | x=" .. tostring(x) .. " | y=" .. tostring(y))
end

function Stage3:bindRuntimeHooks()
  if not self.runtimeReady then
    return
  end

  if type(beamng) == "table" then
    beamng.onVehicleSpawn = beamng.onVehicleSpawn or function()
      print("[Stage3] Vehicle spawn callback fired")
    end
  end
end

return Stage3
