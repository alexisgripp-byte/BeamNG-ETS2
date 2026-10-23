# BeamNG local installation guide

This guide shows how to place the prototype into a local BeamNG mod workflow.

## 1. Copy the project to a BeamNG mod folder

Use a structure like this:

```text
BeamNG.drive/
  lua/
    beamng_ets2_core/
      bootstrap.lua
      config.lua
      state.lua
      ui.lua
      hud.lua
      spawn.lua
      menu.lua
      runtime.lua
      loader.lua
      modInfo.lua
      main.lua
```

## 2. Use the startup entrypoint

Create a startup script that loads the mod entrypoint:

```lua
local loader = require("beamng_ets2_core.loader")
loader.initialize()
```

## 3. Attach startup to your mod initialization cycle

If your mod loader supports a custom update loop, call:

```lua
local loader = require("beamng_ets2_core.loader")
loader.onUpdate(dt)
```

## 4. Replace placeholder logic with real BeamNG API calls

The current code uses simulation-style print output. Replace these with actual BeamNG runtime logic once your local mod is set up:

- `beamng.loadLevel(...)`
- `beamng.spawnVehicle(...)`
- player position access
- HUD creation and updates
- camera and UI hooks

## 5. Add real assets

Your real mod will eventually need:
- truck models
- map data
- UI textures
- minimap overlays
- route markers

## 6. Test in-game

After wiring the script and assets, launch BeamNG and confirm:
- the menu appears
- a truck is selectable
- a map is selected
- the truck spawns
- the minimap updates as you move

## Important note

This is still a prototype foundation. It is intended to give you a cleaner structure for a future playable BeamNG implementation, not a fully packaged game mod.
