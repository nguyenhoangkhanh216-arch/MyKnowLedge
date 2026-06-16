---
title: "DD-WHP HAZOP Study Report"
type: source
tags: [work, science]
created: 2026-06-05
updated: 2026-06-05
sources: 1
raw_file: "raw/documents/KMDD/KDP-DDA-03-RP-X-0003-D0 DD-WHP Hazard and Operability (HAZOP) Study Report.md"
---

## Summary

Comprehensive HAZOP study for DD-WHP covering all process, utility, and safety systems per IEC 61882. Workshop held 05–08 May 2026 (4 days — one more than KM-WHP due to greater system complexity, including FWS import). Facilitated by TÜV Rheinland. Raises 9 recommendations (8 EPCI + 1 FEED). Document KDP-DDA-03-RP-X-0003-D0, issued for Review (IFR) 03-Jun-2026.

## Key Points

### Study Scope
Similar to KM-WHP plus: FWS receiver systems, allocation metering for imported gas from KM-WHP, DD-WHP-specific closed drain (V-5020, P-5020A/B, E-5020). FWS import via 20" × 6.7 km pipeline from KM-WHP; export via 20" × 22.0 km to BK-C (subsea pig-gable wye at 14 km tie-in).

### Recommendations (9 total — 1 more than KM-WHP)

| No. | Recommendation | Responsibility |
|-----|---------------|----------------|
| 1 | **Review PSV-1931A/B sizing** for check valve leakage; HIPPS isolation in 2s may be sufficient — evaluate vs PSV | PMC EPCI |
| 2 | Review HIPPS bleed-off via XV-1120 to vent vs. PSV downstream (same as KM-WHP Rec. 1) | PMC EPCI |
| 3 | Review positive isolation requirement upstream of MOV-1921 (FWS launcher N-1920) | PMC EPCI |
| 4 | Review recycle line requirement during CD transfer pump (P-5020A/B) start-up | PMC EPCI |
| 5 | Study alternative vent ignition detection if TS-5640 unavailable/in maintenance | PMC EPCI |
| 6 | Review N2 supply safeguards to methanol tote T-5381 for PCV fail-closed / blanket pressure | PMC EPCI |
| 7 | Indicate FW ring main required flowrate and tie-in pressure in DD-WHP P&ID | PMC EPCI |
| 8 | Review design specification and provide insulation for pipework and service water tote tank | PMC EPCI |
| 9 | Purchase hand crank pump for manual Pedestal Crane Day Tank filling | COMPANY (FEED) |

### Critical Safety Findings
- **Overpressure from KM-WHP import:** If allocation flowmeter isolation fails, pipeline topside/riser could reach 2× design pressure → double NRVs (VC-3453, VC-3454, dissimilar types) critical
- **PSV-1931A/B sizing:** Review triggered by HIPPS 2-second isolation time — if HIPPS responds fast enough, PSV may not be needed (connects to CPY "agree in principle" to remove PSVs on 04-Jun-2026)
- **HIPPS bleed-off via XV-1120:** Operational complexity; PSV alternative under review
- **Deflagration risk:** Purge gas loss to CO2 snuffing package → potential air ingress → deflagration; gas sensor critical
- **Allocation flowmeter isolation:** Higher consequence than KM-WHP due to upstream pipeline inventory

### DD-WHP Specific Context
- Receives all fluids from KM-WHP via 6.7 km FWS pipeline — high-pressure gas import is the primary additional hazard vs KM-WHP
- Allocation metering system introduces additional isolation points and higher overpressure risk
- FWS receiver adds pig receipt operations as an additional operating scenario

### Document Info
- **Workshop:** 05–08 May 2026 (4 days) | **Facilitator:** TÜV Rheinland
- **Date:** 03-Jun-2026 | **Rev:** D0 (IFR) | **Pages:** 88

## Connections

- [[KM-WHP HAZOP Study Report]] — parallel document; 8 recommendations vs 9 here; DD-WHP adds PSV sizing review
- [[HIPPS Overpressure Protection]] — Rec. 1: PSV-1931A/B removal study; HIPPS 2s response may be sufficient
- [[KMDD HAZOP Items 1 2 9 HIPPS PSV]] — HAZOP item on PSV-1931A/B sizing first raised here
- [[Offshore Firewater System Design]] — Rec. 7: FW ring main flowrate to be added to P&ID
- [[Chemical Injection System Design]] — Rec. 6: N2 blanket safeguard for methanol tote
- [[Flow Assurance Offshore Pipeline]] — FWS import pressure / NRV design for incoming gas
- [[KMDD Scope of Work HAZID HAZOP SIL]] — SOW governing this study; IEC 61882 methodology
- [[KMDD Project]] — 9 HAZOP recommendations; PSV-1931A/B removal agreed in principle by CPY 04-Jun-2026

## Source References

- raw/documents/KMDD/KDP-DDA-03-RP-X-0003-D0 — HAZOP report, IFR, 03-Jun-2026
- [[KMDD HAZOP Close-out CPY Feedback]] — CPY feedback on 8-item HAZOP close-out including PSV decision
