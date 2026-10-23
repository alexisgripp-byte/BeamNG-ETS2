-- beamng_ets2_core/minimap.lua
-- Simple minimap logic for a BeamNG+ETS2 inspired world map.

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

function Minimap:worldToMap(x, y)
  local mapX = ((x / 300) * (self.config.width - 20)) + 10
  local mapY = ((y / 300) * (self.config.height - 20)) + 10
  return mapX, mapY
end

function Minimap:render()
  if not self.visible then
    return
  end

  local px, py = self:worldToMap(self.playerX, self.playerY)

  print("[Minimap] Rendering map: " .. self.config.width .. "x" .. self.config.height)
  print("[Minimap] Player position in world: " .. self.playerX .. ", " .. self.playerY)
  print("[Minimap] Player position on map: " .. px .. ", " .. py)

  for index, point in ipairs(self.routePoints) do
    local mapX, mapY = self:worldToMap(point.x, point.y)
    print("[Minimap] Route point " .. index .. ": world=" .. point.x .. "," .. point.y .. " | map=" .. mapX .. "," .. mapY)
  end
end

function Minimap:drawRoute()
  for _, point in ipairs(self.routePoints) do
    print("[Minimap] Draw route marker at world position " .. point.x .. ", " .. point.y)
  end
end

return Minimap
