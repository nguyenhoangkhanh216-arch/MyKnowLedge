---
title: "KM-WHP HAZOP Study Report"
type: source
tags: [work, science]
created: 2026-06-05
updated: 2026-06-05
sources: 1
raw_file: "raw/documents/KMDD/KDP-KMA-03-RP-X-0003-D0 KM-WHP Hazard and Operability (HAZOP) Study Report.md"
---

## Summary

Comprehensive HAZOP study for KM-WHP covering all process, utility, and safety systems per IEC 61882. Workshop held 05–07 May 2026, facilitated by TÜV Rheinland. Raises 8 recommendations (7 EPCI + 1 FEED). Document KDP-KMA-03-RP-X-0003-D0, issued for Review (IFR) 03-Jun-2026.

## Key Points

### Study Scope
20+ nodes covering: production wells, manifolds, closed drain (vessel V-5010, pumps P-5010A/B, heater E-5010), vent/open drain headers, chemical injection systems (CI, PPD, scale, methanol), FWS launcher, firewater system, diesel system, nitrogen system, service water, safety shutdown / bleed-off. Vendor packages: WHCPU, HPU, Chemical Injection skids.

### Recommendations (8 total)

| No. | Recommendation | Responsibility |
|-----|---------------|----------------|
| 1 | Review HIPPS bleed-off line via XV-1100 to vent vs. PSV downstream — evaluate which option preferred | PMC EPCI |
| 2 | Review positive isolation requirement upstream of MOV-1901 (FWS launcher N-1910) | PMC EPCI |
| 3 | Review recycle line requirement during CD transfer pump (P-5010A/B) start-up | PMC EPCI |
| 4 | Study alternative options to detect ignited vent if thermal sensor TS-5630 unavailable/in maintenance | PMC EPCI |
| 5 | Review N2 supply safeguards to methanol tote tank T-5341 for PCV fail-closed scenario and N2 blanket pressure detection | PMC EPCI |
| 6 | Indicate FW ring main required flowrate and tie-in pressure in KM-WHP P&ID | PMC EPCI |
| 7 | Review design specification and provide insulation for pipework and service water tote tank | PMC EPCI |
| 8 | Purchase hand crank pump for manual Pedestal Crane Day Tank filling | COMPANY (FEED) |

### Critical Safety Findings
- **Overpressure at allocation flowmeter isolation failure:** Exceedance factor 1.4–2× design pressure → HIPPS + dual NRV (dissimilar types) required
- **CD transfer pump deadheading:** PZAHH activation + SDV closure critical to prevent casing damage from dry running
- **Vent ignition detection loss:** If TS-5630 fails or is pulled for maintenance, blind spot on ignited vent → alternative design required
- **N2 blanket loss on methanol tote (T-5341):** PCV fail-closed → pressure loss on methanol tote → risk of air ingress; pressure monitoring required
- **Manual valve errors (VB closures):** Can induce overpressure in closed sections → procedural controls required

### Key Safety Design Features Confirmed
- HIPPS: 2oo3 logic, 2-second shutdown time
- Double NRVs at discharge points (dissimilar valve types for diversity)
- PSVs sized for governing case (check valve leakage or blocked discharge)
- Level alarms + high/low temperature switches on vessels and heater
- Flow alarm FIAL-3510 required at purge gas line to detect isolation failure

### Document Info
- **Workshop:** 05–07 May 2026 (3 days) | **Facilitator:** TÜV Rheinland
- **Date:** 03-Jun-2026 | **Rev:** D0 (IFR) | **Pages:** 86

## Connections

- [[DD-WHP HAZOP Study Report]] — parallel document; 9 recommendations vs 8 here; adds PSV-1931A/B sizing item
- [[HIPPS Overpressure Protection]] — Rec. 1 (bleed-off vs PSV); HIPPS 2oo3 logic; 2-second isolation time
- [[KMDD HAZOP Items 1 2 9 HIPPS PSV]] — HAZOP items 1, 2, 9 first surfaced in this study
- [[Offshore Firewater System Design]] — Rec. 6: FW ring main flowrate/tie-in pressure to be added to P&ID
- [[Chemical Injection System Design]] — methanol tote N2 blanket safeguard issue (Rec. 5)
- [[Methanol Injection Hydrate Inhibition]] — methanol system safety: N2 blanket, PCV safeguards
- [[KMDD Scope of Work HAZID HAZOP SIL]] — SOW governing this study; IEC 61882 methodology
- [[KMDD Project]] — 8 HAZOP recommendations for PTSC M&C to resolve in engineering

## Source References

- raw/documents/KMDD/KDP-KMA-03-RP-X-0003-D0 — HAZOP report, IFR, 03-Jun-2026
