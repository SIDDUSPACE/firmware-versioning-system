<p align="center">
  <img src="https://raw.githubusercontent.com/SIDDUSPACE/firmware-versioning-system/dev/docs/banner.png" width="90%" />
</p>

<h1 align="center">🔁 Git-Based Firmware Backup & Rollback System</h1>

<p align="center">
  <b>Embedded Firmware Versioning • Safe Rollback • Git Workflow</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Language-C-blue" />
  <img src="https://img.shields.io/badge/Domain-Embedded%20Systems-green" />
  <img src="https://img.shields.io/badge/Versioning-Git-important" />
  <img src="https://img.shields.io/badge/Status-Completed-success" />
</p>

---

## 📌 Overview

Firmware updates are risky — a single faulty release can cause system instability
or complete device failure.  
This project demonstrates a **Git-based firmware versioning, backup, and rollback
strategy** inspired by **real embedded systems development workflows**.

Stable and experimental firmware versions are isolated using **branches**, while
**Git tags** are used to mark release points for **instant rollback**.

---

## ⚠️ Problem Statement

In embedded systems:

- Faulty firmware updates can brick devices
- Manual recovery is time-consuming and error-prone
- Without version control, rollback is unreliable
- No traceability between firmware versions

---

## ✅ Solution Approach

A structured Git workflow is implemented:

- **`master` branch** → Stable, flashable firmware  
- **`dev` branch** → Experimental / risky development  
- **Git tags** → Firmware release versions  
  - `v1.0-stable` → Known-good firmware  
  - `v1.1-beta` → Experimental / faulty firmware  
- **Rollback script** → Fast recovery using tagged releases  

This mirrors **industry-standard embedded firmware release practices**.

---

## 🔄 Firmware Release & Rollback Flow

```mermaid
flowchart LR
    Dev[dev branch] -->|Experimental Commit| Beta[v1.1-beta]
    Beta -->|Failure Detected| Rollback[Rollback Script]
    Rollback --> Stable[v1.0-stable]
    Stable --> Master[master branch]
