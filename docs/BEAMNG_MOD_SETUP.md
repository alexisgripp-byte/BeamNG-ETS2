# BeamNG mod setup guide

This guide explains how to move from the repository prototype into a BeamNG mod structure.

## 1. Copy the runtime folder

Place the folder below into your local BeamNG mod testing workspace:

```text
src/beamng_ets2_core/
```

## 2. Use a real mod folder layout

A typical BeamNG mod setup looks like this:

```text
BeamNG.drive/
  mods/
    my_mod/
      lua/
        beamng_ets2_core/
      vehicles/
      levels/
      ui/
```

## 3. Load the bootstrap file

The entrypoint should be the startup script that initializes the project and starts the runtime loop.

Use the pattern below as guidance:

```lua
local app = require("beamng_ets2_core.bootstrap")
app:run()
```

## 4. Replace placeholder logic with actual BeamNG calls

The placeholder code currently prints to console. Replace it with actual BeamNG calls such as:
- `beamng.loadLevel(...)`
- `beamng.spawnVehicle(...)`
- camera setup calls
- player state retrieval
- HUD rendering APIs

## 5. Add real assets

You will eventually need:
- actual truck model files
- map data for the world
- custom UI assets for menu and hud
- route and marker graphics

## 6. Test in-game

After setup, launch BeamNG and test:
- truck selection
- map selection
- vehicle spawn
- minimap movement
- route markers and HUD display

## Important note

This is still a prototype and does not yet replace the actual BeamNG mod pipeline. It gives you a clearer project architecture for when you are ready to integrate into the real game runtime.
