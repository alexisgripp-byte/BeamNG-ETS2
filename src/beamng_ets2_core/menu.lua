-- beamng_ets2_core/menu.lua
-- Simple menu state for truck and map selection.

local Menu = {}
Menu.__index = Menu

function Menu.new(config)
  local self = setmetatable({}, Menu)
  self.config = config
  self.selectedTruck = config.defaultTruck
  self.selectedMap = config.defaultMap
  self.isOpen = true
  return self
end

function Menu:open()
  self.isOpen = true
  print("BeamNG-ETS2 menu opened")
end

function Menu:close()
  self.isOpen = false
  print("BeamNG-ETS2 menu closed")
end

function Menu:getTrucks()
  return self.config.trucks
end

function Menu:getMaps()
  return self.config.maps
end

function Menu:selectTruck(truckId)
  self.selectedTruck = truckId
  print("Selected truck: " .. truckId)
end

function Menu:selectMap(mapId)
  self.selectedMap = mapId
  print("Selected map: " .. mapId)
end

function Menu:getSelection()
  return {
    truck = self.selectedTruck,
    map = self.selectedMap
  }
end

return Menu
