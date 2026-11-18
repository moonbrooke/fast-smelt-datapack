# fast-smelt-datapack

Smelt items on Furnace, Blast Furnace, Smoker, and Campfire fast (1 tick per item by default).

Players can change the smelting time in-game with:

```
/trigger fastsmelt.speed set 20
```

The value is the cooking time in game ticks (`20` = 1 second). The default is `1` tick.
Values are clamped between `1` and `72000` ticks (1 hour). The setting is global (it affects all
furnaces, blast furnaces, and smokers in the world) and persists across reloads.

A speed change is picked up the next time a furnace-family block consumes fuel; fuel that is
already burning keeps the speed it started with. Campfires always cook in `1` tick, because
Minecraft 26.3 campfires do not use cooking fuel (and therefore cannot use the speed provider).

Made for **Minecraft 26.3**.

![Fast Smelt Demo](https://github.com/moonbrooke/fast-smelt-datapack/blob/main/assets/fast-smelt.gif?raw=true)

### Download


- [Releases page](https://github.com/moonbrooke/fast-smelt-datapack/releases)
- [Modrinth](https://modrinth.com/datapack/fast-smelt)
- [CurseForge](https://www.curseforge.com/minecraft/mc-mods/fast-smelt) (Mod)
- [CurseForge](https://www.curseforge.com/minecraft/data-packs/fast-smelt) (Data Pack)
