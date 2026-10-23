-- beamng_ets2_core/menu.lua
-- Simple but realistic menu state for truck and map selection.

local Menu = {}
Menu.__index = Menu

function Menu.new(config)
  local self = setmetatable({}, Menu)
  self.config = config
  self.selectedTruck = config.defaultTruck
  self.selectedMap = config.defaultMap
  self.isOpen = true
  self.items = {
    truck = config.trucks,
    map = config.maps
  }
  return self
end

function Menu:open()
  self.isOpen = true
  print("[Menu] BeamNG-ETS2 menu opened")
end

function Menu:close()
  self.isOpen = false
  print("[Menu] BeamNG-ETS2 menu closed")
end

function Menu:getTrucks()
  return self.items.truck
end

function Menu:getMaps()
  return self.items.map
end

function Menu:selectTruck(truckId)
  self.selectedTruck = truckId
  print("[Menu] Selected truck: " .. truckId)
end

function Menu:selectMap(mapId)
  self.selectedMap = mapId
  print("[Menu] Selected map: " .. mapId)
end

function Menu:getSelection()
  return {
    truck = self.selectedTruck,
    map = self.selectedMap
  }
end

function Menu:render()
  if not self.isOpen then
    return
  end

  print("[Menu] " .. self.config.ui.menuTitle)
  print("[Menu] " .. self.config.ui.menuSubtitle)
  print("[Menu] Available trucks: " .. #self.items.truck)
  print("[Menu] Available maps: " .. #self.items.map)
end

return Menu
