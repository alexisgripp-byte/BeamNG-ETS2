-- beamng_ets2_core/minimap.lua
-- Lightweight minimap prototype with route markers.

local Minimap = {}
Minimap.__index = Minimap

function Minimap.new(config)
  local self = setmetatable({}, Minimap)
  self.config = config.minimap
  self.visible = true
  self.playerX = 0
  self.playerY = 0
  self.routePoints = self.config.routePoints or {}
  return self
end

function Minimap:setPlayerPosition(x, y)
  self.playerX = x
  self.playerY = y
end

function Minimap:render()
  if not self.visible then
    return
  end

  print("[Minimap] Rendering map: " .. self.config.width .. "x" .. self.config.height)
  print("[Minimap] Player position: " .. self.playerX .. ", " .. self.playerY)
  print("[Minimap] Route points: " .. #self.routePoints)

  for index, point in ipairs(self.routePoints) do
    print("[Minimap] Route point " .. index .. ": " .. point.x .. ", " .. point.y)
  end
end

function Minimap:drawRoute()
  for _, point in ipairs(self.routePoints) do
    print("[Minimap] Draw route marker at " .. point.x .. ", " .. point.y)
  end
end

return Minimap
