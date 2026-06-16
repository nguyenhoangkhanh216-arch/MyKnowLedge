---
title: "HIPPS Overpressure Protection"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-04
sources: 5
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

### CPY HAZOP close-out feedback (04-Jun-2026):
- **Item 1 — PSV-1931A/B removal:** CPY "Agree in principle — PMC to provide full calculation in close-out sheet."
- **Item 2 — Replace bleed-off XV-1120 with 2×100% PSV downstream HIPPS:** CPY "Agree in principle — PMC to provide mark-up." Setpoints: 92 barg DD-WHP, 105 barg KM-WHP.
- Both items still require PMC to deliver calculation/mark-up before formal close-out

## Connections

- [[KMDD HAZOP Items 1 2 9 HIPPS PSV]] — KMDD HAZOP findings on PSV removal and bleed-off line retention
- [[KMDD HIPPS Design Pressure Decision]] — 133 barg design pressure confirmed for d/s HIPPS
- [[Low Temperature Depressuring Design]] — rapid depressuring (including HIPPS closure) can cause low temperature

### HIPPS PSV scope change (Jun-2026):
- **HIPPS valve leakage PSVs reclassified as Base Scope** (was Optional Scope) on Jun 3, 2026
- 4 nos. HIPPS PSVs added to INS-002 Tag-list 01 — bidders must re-size and resubmit DS/GAD
- Scope change driven by requirement to cover leakage through HIPPS isolation valves as base case
- CA requirement: CAT C (ABS/LR/DNV/BV for overseas manufacture; Vietnam Register locally)

## Source References

- [[KMDD HAZOP Items 1 2 9 HIPPS PSV]] — KMDD dynamic study confirming max 88.2 barg, PSV removal proposal
- [[KMDD INS-002 HIPPS PSV Base Scope Addition]] — Jun 3 scope change: HIPPS PSV leakage to base scope
- [[KMDD HAZOP Close-out CPY Feedback]] — CPY "agree in principle" on PSV removal and PSV downstream HIPPS; calculation/mark-up still required
- [[KM-WHP HAZOP Study Report]] — Rec. 1: HIPPS bleed-off via XV-1100 vs PSV downstream; formal HAZOP origin of the design question
- [[DD-WHP HAZOP Study Report]] — Rec. 1: PSV-1931A/B sizing review; HIPPS 2-second isolation time may be sufficient without PSV
