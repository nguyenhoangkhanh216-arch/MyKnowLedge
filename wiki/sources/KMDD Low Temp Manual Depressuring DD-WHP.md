---
title: "KMDD Low Temp Manual Depressuring DD-WHP"
type: source
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 1
raw_file: "E:\\MyVault\\Emails\\KMDD\\2026-04-29 - RE KMDD - Low Temperature Concerns during Manual Depressuring for DD-WHP Export Launcher.md"
---

## Summary

Manual depressuring of DD-WHP from PZAHH (high-high pressure trip) is more severe than the automatic blowdown case modeled in FEED. Preliminary calculations show temperature dropping below current minimum design temperature for several DD-WHP systems. After relaxing initial temperature assumptions (to "min operating + heat-up"), most systems are acceptable after 2–3 hours. The DD-WHP Export Launcher is the critical exception — it requires over 48 hours of heat-up, making a material upgrade mandatory.

## Key Points

- **Root cause:** FEED manual depressuring calculations used PZAHH as initial pressure (max operating), but ESD scenario at PZAHH (high-high) is more severe. This was NOT included in FEED design.
- **Systems cleared (after relaxing initial temp):** Well Test Flowmeter, Allocation Flowmeter, DD-WHP Export Header — OK after 2–3 hours heat-up
- **Critical exception — DD-WHP Export Launcher:**
  - Requires **>48 hours** to heat up to temperature safe for -29°C design limit
  - Manual depressuring from PZAHH is credible: pig blockage/clogging during pigging confirmed by COMPANY
  - Consequence: **material must change from CS (-29°C) to LTCS (-46°C)**
- **N2 pressurization for well start-up** also discussed as parallel topic:
  - Uses N2 bottles: 40–45 liters/bottle, max 135 barg
  - Complicates start-up procedure, causes production loss
  - Preliminary calculation required: time to balance pressure between flowlines and production header after wellhead warm-up
- **Scenarios to consider for manual depressuring:**
  - Planned shutdown: initial pressure @ max operating, temp @ operating conditions
  - ESD: initial pressure @ PZAHH

## Connections

- [[Low Temperature Depressuring Design]] — this is the primary KMDD case for this concept
- [[KMDD Project]] — this is one of the critical open engineering issues flagged in FEED punch list
- [[KMDD FEED Punch List Key Findings]] — N2 pressurization and methanol pump capacity listed as related FEED items

## Source References

- This page IS the source summary — raw email at `E:\MyVault\Emails\KMDD\2026-04-29 - RE KMDD - Low Temperature Concerns during Manual Depressuring for DD-WHP Export Launcher.md`
