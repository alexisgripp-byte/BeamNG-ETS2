-- beamng_ets2_core/state.lua
-- Shared session state for the BeamNG-ETS2 mod prototype.

local State = {}
State.__index = State

function State.new(config)
  local self = setmetatable({}, State)
  self.config = config
  self.menuOpen = true
  self.sessionActive = false
  self.selectedTruck = config.defaultTruck
  self.selectedMap = config.defaultMap
  self.playerPosition = { x = 0, y = 0, z = 0 }
  self.route = {}
  return self
end

function State:selectTruck(truckId)
  self.selectedTruck = truckId
  print("[State] Selected truck: " .. truckId)
end

function State:selectMap(mapId)
  self.selectedMap = mapId
  print("[State] Selected map: " .. mapId)
end

function State:openMenu()
  self.menuOpen = true
end

function State:closeMenu()
  self.menuOpen = false
end

function State:startSession()
  self.sessionActive = true
  print("[State] Session started")
end

function State:stopSession()
  self.sessionActive = false
  print("[State] Session stopped")
end

function State:setPlayerPosition(x, y, z)
  self.playerPosition = {
    x = x or self.playerPosition.x,
    y = y or self.playerPosition.y,
    z = z or self.playerPosition.z
  }
end

function State:setRoute(points)
  self.route = points or {}
end

function State:toSelection()
  return {
    truck = self.selectedTruck,
    map = self.selectedMap
  }
end

return State
