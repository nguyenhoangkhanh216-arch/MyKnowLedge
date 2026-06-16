---
title: "Open Drain System Design"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-04
sources: 3
---

## Summary

The open drain system collects oily water from equipment drainage (deck drains, valve drains, etc.) and treats it before overboard discharge. The key sizing parameter is the oil-in-water content at the inlet, which determines the tank/vessel size needed to meet the outlet specification (typically ≤15 mg/L oil in treated water). FEED designs often use conservative inlet oil values that are difficult to achieve in practice and that vendors struggle to guarantee.

## Key Points

- **System function:** Collect oily deck drainage → separate oil → discharge treated water overboard (meeting oil-in-water spec)
- **Typical outlet spec:** ≤15 mg/L oil-in-water content in treated water
- **Inlet oil content drives vessel sizing:** Higher inlet oil → larger vessel or more treatment stages needed
- **FEED conservatism problem:** FEED values for inlet oil content are often higher than go-by project experience; results in oversized or unachievable designs
- **KMDD case (✅ resolved 02-Jun-2026):**
  - FEED inlet oil: 10% HC — CPY agreed to keep this as design basis
  - **FEED tank was undersized for its own inlet condition** — FEED specified 1800×1300×1200 mm but all 4 bidders require 3050–3600 mm length to achieve 15 mg/L outlet at 10% HC inlet
  - At 1000 ppmv: DKE/AECC and PPS fit the FEED footprint (1800 mm); VHI needs 2700 mm
  - Operating weight at 10% HC roughly doubles vs FEED (~6400 kg vs 3185 kg) — structural deck review required
  - The undersized FEED tank is a Change Order basis: PTSC must flag the tank enlargement formally
- **Vendor sizing data (KMDD MEC-005, Jun 2026):**

| Bidder     | 10% HC length (mm) | 1000 ppmv length (mm) | Height (mm)      |
| ---------- | ------------------ | --------------------- | ---------------- |
| DKE/AECC   | 3600               | 1800                  | 1200             |
| VHI        | 3050               | 2700                  | 1200             |
| PPS        | 3100               | 1800                  | 2000 (at 10% HC) |
| FEED basis | 1800               | —                     | 1200             |

- **Procurement approach for unresolved inlet value:** Issue PDS IFR with HOLD on oil inlet parameter; prepare base case + optional datasheets; issue TBC to bidders after receiving technical proposals — avoids disrupting bidding process mid-stage
- **Procurement rule:** Do not send ad-hoc updates to bidders during proposal stage; all changes go via TBC after proposals received (fairness to all bidders)
- **Outlet spec regulatory basis (KMDD):** Dual requirement — Marpol Annex 1 (international) AND Vietnamese Circular 02/2022/TT-BTNMT (national). Both mandate ≤15 mg/l oil-in-water for overboard discharge.
- **Cannot be tested at FAT** — offshore open drain tank outlet spec cannot be reproduced in a factory test. Must be warranted by the package vendor; verified during offshore commissioning/operations. CPY expressed deep concern about this warranty mechanism (04-Jun-2026 MOM).

## Connections

- [[KMDD Project]] — open drain tank oil-in-water sizing dispute between FEED value and go-by data
- [[KMDD Open Drain Tank Oil-in-Water Content]] — KMDD case details

### ALARP basis for not using rupture/major leak as sizing case:
- Sizing a tank for tank rupture or major leak is non-compliant with ALARP: it imposes very high cost for a very low-probability event
- Proper basis: **normal operation oil-in-water content** (expected steady-state value from go-by projects)
- API 421 provides the framework; previous projects consistently used 1000 ppmv in normal operation
- Velocity criterion for CuNi piping (related material optimization): continuous service 3 m/s; intermittent up to 10 m/s per Norsok P-001 — drainage service is intermittent

## Source References

- [[KMDD Open Drain Tank Oil-in-Water Content]] — KMDD case: 10% FEED value too high; 1000 ppmv proposed; vendor evidence required
- [[KMDD Open Drain Tank Sizing Presentation Jun 5]] — 4-bidder comparison; FEED tank (1800 mm) undersized for 10% HC; actual sizing 3050–3600 mm; Change Order basis
- [[KMDD MEC Weekly Meeting MOM-005]] — Item 6.2: outlet warranty concern; regulatory basis confirmed; CPY deeply concerned
