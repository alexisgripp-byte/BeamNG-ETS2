# BeamNG setup guide

This project is a starter scaffold for an ETS2-inspired BeamNG mod idea.

## Files to use

The logic is located in:
- `src/beamng_ets2_core/config.lua`
- `src/beamng_ets2_core/menu.lua`
- `src/beamng_ets2_core/spawn.lua`
- `src/beamng_ets2_core/minimap.lua`
- `src/beamng_ets2_core/main.lua`

## How to wire it into BeamNG

1. Open your BeamNG mod or custom script folder.
2. Copy the `src/beamng_ets2_core` folder into that project.
3. Make sure the folder is included in your mod load path.
4. Adjust the configuration values in `config.lua` for your actual trucks and maps.
5. Add your real vehicle and map asset files to the right BeamNG directories.
6. Hook the `main.lua` entrypoint into the BeamNG runtime flow used by your project.

## Important reminder

This is a conceptual prototype. To make it truly work inside BeamNG, you must connect it to the BeamNG Lua API and the actual vehicle/model assets used by your mod.

## Recommended next step

Once you have real vehicle and map files in place, the next thing to build is a real menu UI and a proper minimap overlay connected to the active world state.
