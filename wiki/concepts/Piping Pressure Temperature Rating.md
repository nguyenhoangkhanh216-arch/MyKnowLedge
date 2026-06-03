---
title: "Piping Pressure Temperature Rating"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 1
---

## Summary

Piping pressure-temperature (P-T) rating defines the maximum allowable working pressure (MAWP) at a given temperature for a specific pipe material and pressure class (ASME/ANSI rating). As temperature increases, the allowable pressure decreases due to reduced material yield strength. Design conditions that appear feasible at one temperature may exceed allowable limits at another — a common source of FEED-to-DE discrepancies when operating temperature assumptions change.

## Key Points

- **ASME pressure classes:** 150, 300, 600, 900, 1500, 2500 (lb ratings)
- **P-T dependency:** MAWP decreases as temperature increases; rating tables are published in ASME B16.5 / B16.34
- **Material dependency:** Carbon steel, stainless steel (316/316L), duplex, alloy materials all have different P-T curves; SS has lower MAWP than CS at elevated temperatures due to lower yield strength
- **Common FEED-to-DE issue:** FEED specifies design conditions at max operating temperature; if that temperature changes or was conservatively estimated, the piping class may need upgrading (or can be downgraded)
- **KMDD case — SS line 250-PG-50014-63410X:**
  - FEED design: 92 barg @ 80°C
  - Class 600 SS limit at 80°C: 89.12 barg → exceeded
  - Resolution: Reduce max design temperature from 80°C to 65°C (justified by fluid cooling during subsea transit)
  - Alternative resolution (not taken): upgrade to Class 900 or change to duplex material
- **Design approach:** Check all lines where material is not carbon steel (especially SS and duplex) — their P-T curves are more limiting than CS at elevated temperatures
- **Formalization:** P-T rating resolutions in FEED-to-DE transition should be formalized via Technical Query (TQ) with COMPANY

## Connections

- [[KMDD Project]] — SS piping P-T rating issue affecting line 250-PG-50014-63410X
- [[KMDD SS Piping P-T Rating Issue]] — KMDD specific case; Class 600 SS rating exceedance resolved by reducing design temperature

## Source References

- [[KMDD SS Piping P-T Rating Issue]] — KMDD instance: 92 barg @ 80°C exceeds Class 600 SS limit; resolved by reducing design temp to 65°C
