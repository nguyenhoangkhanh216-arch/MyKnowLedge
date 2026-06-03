---
title: "Low Temperature Depressuring Design"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 1
---

## Summary

During rapid depressurization (blowdown or manual depressuring), the Joule-Thomson cooling effect causes fluid temperature to drop sharply. If the minimum temperature reaches below the design temperature of carbon steel piping or equipment, brittle fracture becomes a risk. The severity depends on initial pressure, initial temperature, system inventory, and heat input from surroundings — and is typically not captured adequately when FEED only considers automatic blowdown from normal operating pressure.

## Key Points

- **Mechanism:** Joule-Thomson cooling during rapid pressure reduction; adiabatic expansion → temperature drop
- **Two depressuring scenarios with different severity:**
  - *Automatic blowdown:* starts from max normal operating pressure — typically modeled in FEED
  - *Manual depressuring from PZAHH:* starts from high-high pressure trip setpoint — more severe; NOT always modeled in FEED
- **Common FEED gap:** Manual depressuring from PZAHH is often not included in FEED minimum temperature calculations. This becomes a DE finding that can require material upgrades.
- **Heat-up mitigation:** If initial fluid temperature is above ambient, system warms up over time. For most systems, 2–3 hours of heat-up is sufficient. Vessels with large inventory (e.g., pig launchers/receivers) can take much longer.
- **Material options (by minimum design temperature):**
  - Carbon Steel (CS): typically rated to -29°C
  - Low Temperature Carbon Steel (LTCS): typically rated to -46°C
  - Austenitic Stainless Steel / Duplex: rated below -46°C
- **KMDD case:** DD-WHP Export Launcher requires >48 hours to heat up after PZAHH depressuring → material upgrade from CS (-29°C) to LTCS (-46°C) required. Manual depressuring is a credible scenario due to pig blockage.
- **Relaxation approach used in KMDD:** Change initial temperature assumption from "min operating" to "min operating + heat-up time" — eliminates concern for most systems except those with very large inventory or low ambient heat input.

## Connections

- [[KMDD Project]] — Export Launcher material upgrade is one of the open engineering issues
- [[KMDD Low Temp Manual Depressuring DD-WHP]] — primary source for this concept from KMDD emails
- [[Methanol Injection Hydrate Inhibition]] — hydrate formation is a related low-temperature concern during well start-up (different scenario)

## Source References

- [[KMDD Low Temp Manual Depressuring DD-WHP]] — KMDD case: DD-WHP Export Launcher LTCS upgrade required
