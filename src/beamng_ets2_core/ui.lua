-- beamng_ets2_core/ui.lua
-- A menu UI layer designed to mirror a clean ETS2-style selection screen.

local UI = {}
UI.__index = UI

function UI.new(config)
  local self = setmetatable({}, UI)
  self.config = config
  return self
end

function UI:renderMainMenu()
  print("[UI] " .. self.config.ui.menuTitle)
  print("[UI] " .. self.config.ui.menuSubtitle)
  print("[UI] ------------------------------")

  for _, truck in ipairs(self.config.trucks) do
    print("[UI] Truck: " .. truck.name .. " | id=" .. truck.id)
  end

  print("[UI] ------------------------------")
  for _, map in ipairs(self.config.maps) do
    print("[UI] Map: " .. map.name .. " | id=" .. map.id)
  end
end

function UI:renderMapSelection()
  print("[UI] " .. self.config.ui.mapTitle)
  for _, map in ipairs(self.config.maps) do
    print("[UI] -> " .. map.name .. " (" .. map.id .. ")")
  end
end

function UI:renderMinimapHeader()
  print("[UI] " .. self.config.ui.minimapTitle)
end

return UI
