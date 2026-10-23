# BeamNG-ETS2

A starter mod project for an ETS2-inspired BeamNG experience.

This repository is a prototype scaffold for a project where:
- the user starts in BeamNG
- a truck selection menu appears
- a map is selected
- a truck is spawned into the world
- a minimap and HUD overlay behave in an ETS2-inspired way

## What this repository contains

This is not a full commercial game conversion. It is a clean starter foundation built for experimentation and iteration.

Included here:
- configurable truck and map lists
- menu logic for selection
- spawn logic for a vehicle and map
- minimap prototype
- basic project structure for a mod workflow

## IMPORTANT

BeamNG modding depends on the actual BeamNG game files and its Lua runtime. This repo gives you a code structure and logic scaffold, but the final integration must be placed into your BeamNG mod folder and configured to match your BeamNG installation.

Also, do not reuse ETS2 assets or copyrighted game data without permission. Use original or legally acquired assets, or make an ETS2-inspired visual style instead of copying exact game content.

## Repository structure

```text
README.md
.gitignore
docs/
  ROADMAP.md
  BEAMNG_SETUP.md
src/
  beamng_ets2_core/
    config.lua
    menu.lua
    spawn.lua
    minimap.lua
    main.lua
```

## Current status

This project is currently a working prototype foundation, not a finished ingame mod.

It is ready for you to:
- inspect the architecture
- modify the lists of trucks and maps
- extend the spawn logic
- hook the minimap into a real BeamNG UI layer

## How to use it in BeamNG

1. Copy the `src/beamng_ets2_core` folder into your BeamNG mod or script directory.
2. Ensure your BeamNG mod loader can access it.
3. Edit the truck and map lists in `config.lua`.
4. Add real vehicle files and a map if needed.
5. Connect the logic to the BeamNG UI system for final in-game display.

## License

This starter project is meant for personal development and experimentation. Add a proper license if you plan to share or publish it.
