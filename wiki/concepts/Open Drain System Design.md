---
title: "Open Drain System Design"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-27
sources: 6
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

- **PPS TBC response (19-Jun-2026) — 4-option breakdown:**

| Option | L × W × H (mm) | Flow basis | Inlet condition | Note |
|--------|-----------------|------------|-----------------|------|
| Base | 1800 × 1312 × 1400 | 8 m³/h | 1000 ppmv | Matches FEED footprint |
| Option 1 | 1930 × 711 × 1732 | 5 m³/h | 10% HC deck washing | Fits within deck with some changes |
| Option 2 | 1930 × 711 × 1237 | 3 m³/h | 10% HC deck washing | Smaller height vs Option 1 |
| Option 3 | 3842 × 1348 × 1824 | — | 10% HC continuous | CPI plate pack — **NOT suitable** for continuous 10% HC feed |

  Key findings: CPI plate pack (Option 3) explicitly not recommended for continuous 10% HC. Options 1/2 only viable at reduced flow rates. Base case (1000 ppmv) confirms FEED footprint is achievable. Three other bidders (DKE, AECC, VHI) still awaiting response from their vendors as of 19-Jun.

- **Procurement approach for unresolved inlet value:** Issue PDS IFR with HOLD on oil inlet parameter; prepare base case + optional datasheets; issue TBC to bidders after receiving technical proposals — avoids disrupting bidding process mid-stage
- **Procurement rule:** Do not send ad-hoc updates to bidders during proposal stage; all changes go via TBC after proposals received (fairness to all bidders)
- **Outlet spec regulatory basis (KMDD):** Dual requirement — Marpol Annex 1 (international) AND Vietnamese Circular 02/2022/TT-BTNMT (national). Both mandate ≤15 mg/l oil-in-water for overboard discharge.
- **Cannot be tested at FAT** — offshore open drain tank outlet spec cannot be reproduced in a factory test. Must be warranted by the package vendor; verified during offshore commissioning/operations. CPY expressed deep concern about this warranty mechanism (04-Jun-2026 MOM).

## Connections

- [[KMDD Project]] — open drain tank oil-in-water sizing dispute between FEED value and go-by data
- [[KMDD Open Drain Tank Oil-in-Water Content]] — KMDD case details

### 3D model placement issue (18-Jun-2026):
- **Problem:** OD Tank placed on the same deck as CD (Closed Drain) Vessel in the 3D model → the OD Tank outlet elevation is higher than CD Vessel → gravity drain from CD Vessel to OD Tank is physically impossible
- **Constraint:** For gravity drain to work, the OD Tank must be on a lower deck than the CD Vessel
- **PMC clarification pending:** Investigating whether gravity drain from CD Vessel to OD Tank is actually required — if the CD Transfer Pump can evacuate all liquid from the CD Vessel, gravity drain may not be needed
- **Impact if gravity drain required:** 3D model layout change (OD Tank to lower deck); structural/piping rework
- **Next step:** PMC to confirm drain philosophy before 3D model adjustment

### ALARP basis for not using rupture/major leak as sizing case:
- Sizing a tank for tank rupture or major leak is non-compliant with ALARP: it imposes very high cost for a very low-probability event
- Proper basis: **normal operation oil-in-water content** (expected steady-state value from go-by projects)
- API 421 provides the framework; previous projects consistently used 1000 ppmv in normal operation
- Velocity criterion for CuNi piping (related material optimization): continuous service 3 m/s; intermittent up to 10 m/s per Norsok P-001 — drainage service is intermittent

## Source References

- [[KMDD Open Drain Tank Oil-in-Water Content]] — KMDD case: 10% FEED value too high; 1000 ppmv proposed; vendor evidence required
- [[KMDD Open Drain Tank Sizing Presentation Jun 5]] — 4-bidder comparison; FEED tank (1800 mm) undersized for 10% HC; actual sizing 3050–3600 mm; Change Order basis
- [[KMDD MEC Weekly Meeting MOM-005]] — Item 6.2: outlet warranty concern; regulatory basis confirmed; CPY deeply concerned
- [[KMDD 3D Model Open Drain Gravity Issue 18Jun26]] — OD Tank placed same deck as CD Vessel → gravity drain from CD Vessel to OD Tank impossible; PMC clarifying if gravity drain is even required (CD Transfer Pump may handle all liquid) (2026-06-19)
- [[KMDD Open Drain Tank Options Response 19Jun26]] — PPS 4-option dimensions; CPI unsuitable for continuous 10%HC; DKE/AECC/VHI still awaiting vendor; Base case 1000ppmv confirms FEED footprint (2026-06-20)
- [[KMDD Internal Process Meeting MOM 23Jun26]] — Item 2.11 OD Tank OIW REOPENED — oil-in-water content design question reopened after being previously closed (2026-06-27)
