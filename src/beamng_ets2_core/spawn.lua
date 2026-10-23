-- beamng_ets2_core/spawn.lua
-- Handles vehicle spawning and map deployment logic.

local SpawnSystem = {}
SpawnSystem.__index = SpawnSystem

function SpawnSystem.new(config)
  local self = setmetatable({}, SpawnSystem)
  self.config = config
  return self
end

function SpawnSystem:findTruck(truckId)
  for _, truck in ipairs(self.config.trucks) do
    if truck.id == truckId then
      return truck
    end
  end
  return nil
end

function SpawnSystem:findMap(mapId)
  for _, map in ipairs(self.config.maps) do
    if map.id == mapId then
      return map
    end
  end
  return nil
end

function SpawnSystem:spawnTruck(truckId, mapId)
  local truck = self:findTruck(truckId)
  local map = self:findMap(mapId)

  if not truck then
    print("Truck not found: " .. tostring(truckId))
    return false
  end

  if not map then
    print("Map not found: " .. tostring(mapId))
    return false
  end

  -- This is the BeamNG integration point.
  -- In a real mod, this would call BeamNG API functions for vehicle spawning and map loading.
  if type(beamng) == "table" and type(beamng.loadVehicle) == "function" then
    beamng.loadVehicle(truck.id)
    print("Spawner hooked to BeamNG runtime for vehicle: " .. truck.id)
  else
    print("BeamNG runtime not detected. Simulating spawn for truck: " .. truck.id)
  end

  print("Spawning truck '" .. truck.name .. "' onto map '" .. map.name .. "'")
  return true
end

return SpawnSystem
