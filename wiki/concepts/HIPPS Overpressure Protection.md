---
title: "HIPPS Overpressure Protection"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 1
---

## Summary

A High Integrity Pressure Protection System (HIPPS) is a SIL-rated safety instrumented system that shuts off flow upstream of a lower-rated system before pressure can build to the lower system's design limit. HIPPS eliminates the need for full-bore pressure relief (PSV) on the protected system by providing a fast, reliable isolation — but the design of the HIPPS boundary and what downstream protection remains is a key HAZOP/SIL topic.

## Key Points

- **Function:** HIPPS detects high-high pressure (PAHH) upstream and closes isolation valves before downstream pressure reaches the protected system's design pressure
- **Advantage over PSV:** Eliminates need for large relief valves and associated flare load for high-pressure inventory; particularly useful where downstream piping is rated lower than upstream (900# vs 1500# for example)
- **Safety time:** HIPPS must close fast enough that downstream pressure never exceeds design pressure. The required safety time (PST) is calculated by HIPPS dynamic study.
- **HIPPS vs PSV downstream of HIPPS:**
  - API 14C requires PSV at downstream HIPPS for check valve leakage scenario
  - However, if HIPPS already limits max downstream pressure below the PSV setpoint would need to be, PSVs may be redundant
  - PSV setpoint must be set above operating pressure to avoid nuisance opening — if operating pressure is close to design pressure, PSV setpoint may need to be set above downstream equipment design pressure, which is contradictory
- **HIPPS bleed-off alternative:** Some designs use a HIPPS bleed-off line (open to flare/vent via XV when pressure reaches a setpoint below downstream design pressure) instead of PSV — proven design, used on Dai Nguyet WHP (Vietnam)
- **SIL requirement:** HIPPS is typically SIL 2 or SIL 3 depending on consequence and frequency. SIL assessment must be adequate — KMDD FEED HAZOP flagged as potentially underrating SIL requirements.

### KMDD case:
- d/s HIPPS design pressure: 133 barg (900# SS316 piping)
- HIPPS dynamic study: max d/s pressure 88.2 barg under worst credible scenario (Riser SDV closure)
- PMC concluded: PSV-1931A/B not required; HIPPS bleed-off via XV at 92 barg retained
- Go-by: Dai Nguyet WHP uses same configuration

## Connections

- [[KMDD HAZOP Items 1 2 9 HIPPS PSV]] — KMDD HAZOP findings on PSV removal and bleed-off line retention
- [[KMDD HIPPS Design Pressure Decision]] — 133 barg design pressure confirmed for d/s HIPPS
- [[Low Temperature Depressuring Design]] — rapid depressuring (including HIPPS closure) can cause low temperature

## Source References

- [[KMDD HAZOP Items 1 2 9 HIPPS PSV]] — KMDD dynamic study confirming max 88.2 barg, PSV removal proposal
