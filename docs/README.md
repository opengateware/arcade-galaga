[![Galaga Logo](galaga-logo.png)](#)

---

[![release](https://img.shields.io/github/release/opengateware/arcade-galaga.svg)](https://github.com/opengateware/arcade-galaga/releases)
[![license](https://img.shields.io/github/license/opengateware/arcade-galaga.svg?label=License&color=yellow)](#legal-notices)
[![issues](https://img.shields.io/github/issues/opengateware/arcade-galaga.svg?label=Issues&color=red)](https://github.com/opengateware/arcade-galaga/issues)
[![stars](https://img.shields.io/github/stars/opengateware/arcade-galaga.svg?label=Project%20Stars)](https://github.com/opengateware/arcade-galaga/stargazers)
[![discord](https://img.shields.io/discord/676418475635507210.svg?logo=discord&logoColor=white&label=Discord&color=5865F2)](https://chat.raetro.org)
[![Twitter Follow](https://img.shields.io/twitter/follow/marcusjordan?style=social)](https://twitter.com/marcusjordan)

## Namco [Galaga] Compatible Gateware IP Core

This Implementation of a compatible Galaga arcade hardware in HDL is the work of [Dar](https://sourceforge.net/projects/darfpga/).

## Overview

Galaga is a single-screen shoot-em-up in which the player controls a 'Fighter' spaceship and must defend the home planet against the on-coming hordes of alien invaders called "Galagans". The Fighter can only move left and right along the bottom of the screen.

Galagans fly onto the screen in a variety of formations before forming troop lines at the top of the screen. Once all troop lines are formed the Galagans separate and start attacking the player's Fighter in ones, twos and threes. The top-line Boss Galaga need to be shot twice before they are destroyed.

The Boss Galaga has a tractor beam that can capture the player's Fighter. A captured Fighter changes color from white to red and stays with that particular Boss until it is destroyed. The Fighter can be retrieved by destroying the Boss that captured it, but players must be careful not to destroy the captured Fighter itself, or that Fighter is lost. A rescued Fighter changes color back to white and links up with the player's current Fighter, doubling its fire power.

## Technical specifications

- **Main CPU:**     Zilog Z80 @ 3.72 MHz
- **Graphics CPU:** Zilog Z80 @ 3.72 MHz
- **Sound CPU:**    Zilog Z80 @ 3.72 MHz
- **Sound Chip:**   Fujitsu MB8843 and MB8844 @ 1.536 MHz
- **Resolution:**   288×224, 16 colors
- **Display Box:**  384×264 @ 6.144 MHz
- **Aspect Ratio:** 9:7
- **Orientation:**  Vertical (90º)

## Compatible Platforms

- Analogue Pocket

## Compatible Games

> **ROMs NOT INCLUDED:** By using this gateware you agree to provide your own roms.

### MAME

| Game                                       | Region | Status |
| ------------------------------------------ | :----: | :----: |
| Galaga (Namco)                             |  JPN   |   ✅    |
| Galaga (Namco rev. B)                      |  JPN   |   ✅    |
| Galaga (Midway set 1)                      |  USA   |   ✅    |
| Galaga (Midway set 1 with Fast Shoot Hack) |  USA   |   ✅    |
| Gatsbee (Uchida)                           |  UNK   |   ✅    |
| Nebulous Bee (Unknown)                     |  UNK   |   ❌    |

### HBMAME (HomeBrew MAME)

| Game                              | Status |
| --------------------------------- | :----: |
| Galaga (Enduring Freedom)         |   ✅    |
| Galaga (Fast shoot)               |   ✅    |
| Galaga Ghost (Set 1)              |   ✅    |
| Galaga Ghost (Set 2 - 2002-11-28) |   ✅    |
| Galagalaxian                      |   ✅    |
| Galapede (Fast Shoot)             |   ✅    |
| Vector Galaga Fast Shoot          |   ✅    |
| Vector Galaga Midway              |   ✅    |
| Vector Galaga                     |   ✅    |

### ROM Instructions

1. Download [ORCA](https://github.com/opengateware/tools-orca/releases/latest) (Open ROM Conversion Assistant)
2. Download the [ROM Recipes](https://github.com/opengateware/arcade-galaga/releases/download/0.1.0/rom-recipes_0.1.0.zip) and extract to your computer.
3. Copy the required MAME `.zip` files into the `roms` folder.
4. Inside the `tools` execute the script related to your system.
   1. **Windows:** right click `make_roms.ps1` and select `Run with Powershell`
   2. **Linux and MacOS:** run script `make_roms.sh`.
5. After the convertion is completed, copy the `Assets` folder to the Root of your SD Card.
6. **Optional:** A `.sha1` file is included to verify if the hash of the ROMs are valid. (eg: `sha1sum -c checklist.sha1`)

> **Note:** Make sure your `.rom` files are in the `Assets/galaga/common` directory.

## Status of Features

> **WARNING**: This repository is in active development. There are no guarantees about stability. Breaking changes might occur until a stable release is made and announced.

- [ ] Dip Switches
- [ ] Pause
- [ ] Hi-Score Save

## Known Issues

- A bug in the sound CPU program. During initialization, it enables NMI before clearing RAM, but the NMI handler doesn't save the
  registers, so it cannot
  interrupt program execution. If the NMI happens before the LDIR that clears RAM has
  finished, the program will crash.[1]
- Nebulous Bee is stuck at the service screen

## Credits and acknowledgment

- [Adam Gastineau](https://github.com/agg23)
- [Alan Steremberg](https://github.com/alanswx)
- [Alexey Melnikov](https://github.com/sorgelig)
- [Daniel Wallner](https://opencores.org/projects/t80)
- [Dar](https://github.com/darfpga)
- [Jim Gregory](https://github.com/JimmyStones)
- [Kuba Winnicki](https://github.com/blackwine)
- [MiSTer-X](https://github.com/MrX-8B)
- [Peter Wendrich](https://github.com/pwsoft)

## Powered by Open-Source Software

This project borrowed and use code from several other projects. A great thanks to their efforts!

| Modules         | Copyright/Developer      |
| :-------------- | :----------------------- |
| [Data Loader]   | 2022 (c) Adam Gastineau  |
| [Galaga HDL]    | 2016 (c) Dar             |
| [Pause Handler] | 2021 (c) Jim Gregory     |
| [T80]           | 2001 (c) Daniel Wallner  |

## Legal Notices

Galaga © 1981 NAMCO LTD. All rights reserved. GALAGA is a trademark of BANDAI NAMCO ENTERTAINMENT INC. All other trademarks, logos, and copyrights are property of their respective owners.

The authors and contributors or any of its maintainers are in no way associated with or endorsed by Bandai Namco Entertainment Inc.

[Data Loader]: https://github.com/agg23/analogue-pocket-utils
[Galaga HDL]: https://sourceforge.net/projects/darfpga/files/Software%20VHDL/galaga/
[T80]: https://opencores.org/projects/t80
[Pause Handler]: https://github.com/JimmyStones/Pause_MiSTer
[Galaga]: https://en.wikipedia.org/wiki/Galaga

[1]: https://github.com/mamedev/mame/blob/a32810d97465ae077ece35984a98a92abbf3462f/src/mame/drivers/galaga.cpp#L584-L587
