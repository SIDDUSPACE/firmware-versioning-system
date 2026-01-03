# Git-Based Firmware Backup & Rollback System

## Overview
This project demonstrates a Git-based firmware versioning, backup, and rollback strategy
commonly used in embedded systems development. Stable and experimental firmware versions
are tracked using Git branches and tags, enabling instant recovery from faulty updates.

## Problem Statement
In embedded systems, faulty firmware updates can lead to system instability or complete
device failure. Manual recovery is time-consuming and error-prone without proper version
control.

## Solution
A structured Git workflow is used:
- `master` branch contains stable, flashable firmware
- `dev` branch is used for experimental development
- Git tags mark firmware release versions (`v1.0-stable`, `v1.1-beta`)
- A rollback script allows fast recovery to known-good firmware

## Project Structure
# Git-Based Firmware Backup & Rollback System

## Overview
This project demonstrates a Git-based firmware versioning, backup, and rollback strategy
commonly used in embedded systems development. Stable and experimental firmware versions
are tracked using Git branches and tags, enabling instant recovery from faulty updates.

## Problem Statement
In embedded systems, faulty firmware updates can lead to system instability or complete
device failure. Manual recovery is time-consuming and error-prone without proper version
control.

## Solution
A structured Git workflow is used:
- `master` branch contains stable, flashable firmware
- `dev` branch is used for experimental development
- Git tags mark firmware release versions (`v1.0-stable`, `v1.1-beta`)
- A rollback script allows fast recovery to known-good firmware

## Project Structure
firmware-versioning-system/
├── firmware/
│ ├── main.c
│ ├── gpio.c
│ ├── gpio.h
│ └── config.h
├── scripts/
│ └── rollback.sh
├── docs/
│ └── versioning_strategy.md
├── README.md
├── Makefile
└── .gitignore

## Rollback Procedure
1. Identify the last stable firmware tag
2. Roll back using:
```bash
git checkout v1.0-stable
