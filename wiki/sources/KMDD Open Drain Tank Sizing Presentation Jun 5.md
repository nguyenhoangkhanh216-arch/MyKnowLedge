---
title: "KMDD Open Drain Tank Sizing Presentation Jun 5"
type: source
tags: [work, science]
created: 2026-06-04
updated: 2026-06-04
sources: 1
raw_file: "raw/emails/KMDD/2026-06-03 - KMDD - Open drain tank options.md"
---

## Summary

4-slide presentation prepared by PTSC for CPY meeting on 05-Jun-2026 comparing Open Drain Tank vendor quotations at two inlet OIW conditions: 10% HC (FEED basis) vs 1000 ppmv. The core finding is that the FEED-specified tank (1800×1300×1200 mm) is undersized for a 10% HC inlet — all 4 bidders require a tank 1.7–2× longer to meet the 15 mg/l outlet spec. The 1000 ppmv option matches the FEED footprint for 2 of 4 bidders. CPY had already agreed to keep 10% HC as the design basis (02-Jun-2026); this presentation quantifies the resulting tank enlargement and its cost/weight/structural impact.

## Key Points

### Project Requirement (Slide 1 — FEED Baseline)
| Parameter | Value |
|-----------|-------|
| Dimension (mm) | **1800×1300×1200** |
| Inlet | 10% HC |
| Outlet OIW | 15 mg/l |
| Weight Empty/Operating/Hydrostatic (kg) | 1950 / 3185 / 4140 |
| Internals | Plate Pack Coalescer, Weir Plate |
| Level settings | LAH=900 mm, LAL=250 mm, LALL=150 mm |

### Vendor Comparison: Actual Sizing for 10% HC vs 1000 ppmv

| Bidder | Condition | Dimension (mm) | Internals | Weight E/O/H (kg) |
|--------|-----------|----------------|-----------|-------------------|
| **DKE/AECC** | 10% HC | **3600×1300×1200** | Calming Baffle, Plate Pack Coalescer, Weir Plate | 2197 / 6410 / 7813 |
| DKE/AECC | 1000 ppmv | **1800×1300×1200** | Calming Baffle, Plate Pack Coalescer, Weir Plate | 1150 / 3260 / 3958 |
| **VHI** | 10% HC | **3050×1300×1200** | Plate Pack Coalescer, Weir Plate | 3500 / 6700 / 7400 |
| VHI | 1000 ppmv | **2700×1300×1200** | Plate Pack Coalescer, Weir Plate | N/A |
| **PPS** | 10% HC | **3100×1300×2000** | Plate Pack Coalescer, Weir Plate | N/A |
| PPS | 1000 ppmv | **1800×1300×1200** | Plate Pack Coalescer, Weir Plate | N/A |

### Key Observations
- **FEED tank (1800 mm length) is undersized for 10% HC** — all bidders require 3050–3600 mm length at 10% HC to achieve 15 mg/l outlet. FEED specified the same tank for 10% HC inlet — this is a FEED error.
- **At 1000 ppmv, DKE/AECC and PPS match the FEED footprint** (1800 mm length). VHI still needs 2700 mm.
- **Length impact (10% HC vs FEED):** DKE/AECC 2× longer; VHI 1.7×; PPS 1.7× longer AND 1.7× taller (2000 mm height).
- **Weight impact at 10% HC:** Operating weight ~2× heavier (DKE: 6410 vs 3185 kg FEED). Structural deck load review required.
- **DKE/AECC adds Calming Baffle** at 10% HC — additional internal to handle higher HC loading.
- **No bidder provided weight data for 10% HC variants (VHI, PPS)** — structural assessment incomplete.
- **Implication:** CPY's decision to keep 10% HC basis (02-Jun) drives a tank enlargement vs FEED. This is a FEED gap that should be flagged as a Change Order item.

## Connections

- [[Open Drain System Design]] — core concept; tank sizing driven by OIW inlet content
- [[KMDD Open Drain Tank Oil-in-Water Content]] — resolution: CPY agreed 10% HC kept as basis (02-Jun-2026)
- [[FEED Verification EPCI Contract]] — FEED-specified tank undersized for its own inlet condition — potential Change Order basis
- [[KMDD Project]] — MEC-005 Storage Tank; structural deck load review required

## Source References

- [[KMDD Open Drain Tank Oil-in-Water Content]] — design basis history and CPY agreement on 10% HC
- [[KMDD Process Engineering Weekly Jun 2]] — Item 2.11 closure; Item 2.18 tank sizing update
