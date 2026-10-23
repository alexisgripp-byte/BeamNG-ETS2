-- beamng_ets2_core/spawn.lua
-- Handles the spawn flow for the project.

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

function SpawnSystem:loadMap(mapId)
  local map = self:findMap(mapId)
  if not map then
    print("[Spawn] Map not found: " .. tostring(mapId))
    return false
  end

  print("[Spawn] Loading map: " .. map.name)

  if type(beamng) == "table" and type(beamng.loadLevel) == "function" then
    beamng.loadLevel(map.id)
  end

  return true
end

function SpawnSystem:spawnTruck(truckId, mapId)
  local truck = self:findTruck(truckId)
  local map = self:findMap(mapId)

  if not truck then
    print("[Spawn] Truck not found: " .. tostring(truckId))
    return false
  end

  if not map then
    print("[Spawn] Map not found: " .. tostring(mapId))
    return false
  end

  self:loadMap(mapId)

  local spawnPos = truck.spawnPosition or { x = 0, y = 0, z = 2 }

  -- Hook point for BeamNG runtime integration.
  if type(beamng) == "table" and type(beamng.spawnVehicle) == "function" then
    beamng.spawnVehicle(truck.id, spawnPos)
    print("[Spawn] BeamNG spawn API used for: " .. truck.id)
  else
    print("[Spawn] Simulating spawn for truck: " .. truck.id)
    print("[Spawn] Spawn position: x=" .. spawnPos.x .. ", y=" .. spawnPos.y .. ", z=" .. spawnPos.z)
  end

  print("[Spawn] Truck '" .. truck.name .. "' spawned on map '" .. map.name .. "'")
  return true
end

function SpawnSystem:syncPlayerState(vehicleData)
  if type(vehicleData) ~= "table" then
    return
  end

  print("[Spawn] Attached player state to vehicle: " .. tostring(vehicleData.id or "unknown"))
end

return SpawnSystem
