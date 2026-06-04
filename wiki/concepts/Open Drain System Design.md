---
title: "Open Drain System Design"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-04
sources: 2
---

## Summary

The open drain system collects oily water from equipment drainage (deck drains, valve drains, etc.) and treats it before overboard discharge. The key sizing parameter is the oil-in-water content at the inlet, which determines the tank/vessel size needed to meet the outlet specification (typically ≤15 mg/L oil in treated water). FEED designs often use conservative inlet oil values that are difficult to achieve in practice and that vendors struggle to guarantee.

## Key Points

- **System function:** Collect oily deck drainage → separate oil → discharge treated water overboard (meeting oil-in-water spec)
- **Typical outlet spec:** ≤15 mg/L oil-in-water content in treated water
- **Inlet oil content drives vessel sizing:** Higher inlet oil → larger vessel or more treatment stages needed
- **FEED conservatism problem:** FEED values for inlet oil content are often higher than go-by project experience; results in oversized or unachievable designs
- **KMDD case:**
  - FEED inlet oil: 10% (very high; vendors likely cannot guarantee 15 mg/L outlet at this inlet)
  - Go-by projects: much lower values
  - PTSC proposal: 1000 ppmv as design basis
  - COMPANY requirement: vendor evidence on how inlet content affects tank sizing before agreeing to change
  - Open drain control: operating procedures must ensure oily drain stays below the design inlet threshold in practice
- **Procurement approach for unresolved inlet value:** Issue PDS IFR with HOLD on oil inlet parameter; prepare base case + optional datasheets; issue TBC to bidders after receiving technical proposals — avoids disrupting bidding process mid-stage
- **Procurement rule:** Do not send ad-hoc updates to bidders during proposal stage; all changes go via TBC after proposals received (fairness to all bidders)

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
- [[KMDD Open Drain Tank Sizing Presentation Jun 5]] — ALARP argument development; 2-slide CPY presentation due 05-Jun
