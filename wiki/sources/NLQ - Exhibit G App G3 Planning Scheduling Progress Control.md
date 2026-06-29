---
title: "NLQ - Exhibit G App G3 Planning Scheduling Progress Control"
type: source
tags: [work]
created: 2026-06-16
updated: 2026-06-16
sources: 1
raw_file: "raw/documents/NLQ/EPCIC 10 - EXHIBIT G App G3 Rev A.md"
---

## Summary

Appendix G3 Rev A (24 pages) defines the Planning, Scheduling, Progress Measurement and Control requirements for NLQ EPCIC 10. It covers mandatory planning software (Primavera P6), four schedule levels (L1 summary to L4 work elements), progress scales for all construction disciplines (structural, piping, insulation, electrical, telecom, instrumentation, mechanical, architectural, HVAC, safety, painting/PFP), productivity factor tracking, S-curves, and the Planning Close-Out Report.

## Key Points

### Software and Access
- Mandatory software: **PRIMAVERA P6 Version 19** — Exhibit G App G3, §2.1.1
- L3 schedule native file transferred to COMPANY monthly; L4 native files weekly — Exhibit G App G3, §2.1.1
- COMPANY must have full, uncontrolled access to all planning documentation at all times — Exhibit G App G3, §2.1.2
- PSRA uses **DELTEK Acumen Fuse** (latest version) — Exhibit G App G3, §5.1.7 (via App G5)

### Schedule Levels
- **Level 1 – Contract Summary Schedule**: COMPLETION DATES + Work Unit level milestones — Exhibit G App G3, §2.2.8
- **Level 2 – Contract Schedule**: Sub Work Unit activities, all milestones — Exhibit G App G3, §2.2.9
- **Level 3 – Time Analysis Network**: 1,000–2,000 activities in Primavera precedence network; activity ID, duration, predecessors/successors, early/late dates, total float, resource — Exhibit G App G3, §2.2.10
- **Level 4 – Work Element Schedules**: every individual deliverable; resource-loaded at discipline level; updated weekly — Exhibit G App G3, §2.2.11
- Negative float not allowed; lag use not allowed without APPROVAL; use "Retained logic" for progressed activities — Exhibit G App G3, §2.2.10.3
- Critical path: total float = 0; sub-critical: total float < 10 days (adjustable) — Exhibit G App G3, §2.2.10.3

### Schedule Deliverables
- Mobilisation and Early Activities Plan: L3 weighted, updated weekly, used until L3 APPROVED — Exhibit G App G3, §3.1.1
- 6-week Look Ahead: extract of Level 3, updated and issued weekly — Exhibit G App G3, §3.1.5
- Inspection Monitoring Schedule: monthly for supply chain and worksite — Exhibit G App G3, §3.1.6, §3.1.7
- 4-week Look Ahead Inspection Program: weekly, 2 confirmed + 2 planned weeks — Exhibit G App G3, §3.1.6.3

### Baseline and Re-baseline
- Baseline is Exhibit C WORK TIME SCHEDULE; cannot be modified without COMPANY APPROVAL — Exhibit G App G3, §3.2.1
- Re-baseline triggered by: significant scope change, major delay on critical path, unforeseen events — Exhibit G App G3, §3.2.3.2
- All levels re-baselined simultaneously; S-curves and histograms redrawn — Exhibit G App G3, §3.2.3.4

### Progress Measurement
- Progress measured by physical completion only; never by expended man-hours — Exhibit G App G3, §4.4.1
- Progress claimed only when agreed scale step is entirely complete; no intermediate credit — Exhibit G App G3, §4.4.7.2
- Weight factors: % of contract price for Work Package level; man-hours for engineering; cost for procurement; physical quantities for construction — Exhibit G App G3, §4.3

### Progress Scales (construction disciplines)
- **Engineering (Class 1 docs)**: IFR 25%, IFR returned Code ½ 40%, IFA 55%, IFA returned Code ½ 80%, AFC issued 90%, AFC Code 1 100% — Exhibit G App G3, §4.4.8, Table 4-1
- **Procurement (Tagged Items)**: RFQ 5%, PO 15%, raw material order 25%, key vendor docs approved 35%, key drawings approved 40%, mfg start 45%, 50% mfg 55%, FAT/final inspection 80%, shipped 88%, received/inspected 93%, comm spares received 98%, MRB 100% — Exhibit G App G3, §4.4.8, Table 4-2
- **Structural**: Fabrication (53% total) with Mark/Cut/Fit/Weld/NDT/Release steps; Erection (95% total) with Install/Weld/NDT/Release — Exhibit G App G3, Table 4-4
- **Piping**: Fabrication (40%) + Erection (70%) + Piping Test by test pack (90%) + Pipe Supports (95%) + Valve Installation (100%) — Exhibit G App G3, Table 4-5
- **Electrical**: Supports (10%), Cable tray (35%), Cable pulling (65%), Glanding (80%), Termination (95%), Panels (100%) — Exhibit G App G3, Table 4-7
- **Architectural**: Insulation (22%), Wall Partition (42%), Ceiling (48%), Floor Underlayment (58%), Flooring (74%), Doors (78%), Windows (82%), Furniture (88%), Sanitary Wares (90%), Equipment (100%) — Exhibit G App G3, Table 4-11
- **HVAC**: Supports (15%), Ducting (65%), Dampers/Grills (80%), Insulation (100%) — Exhibit G App G3, Table 4-12
- **PFP (Passive Fire Protection)**: Pinning 10%, Mesh 25%, Spray 65%, Trowel 80%, Final Paint 100% — Exhibit G App G3, Table 4-14
- ICAPS progress scales mandatory for pre-commissioning (WP7) and commissioning (WP8) — Exhibit G App G3, §4.4.8.2, §4.4.8.7

### Progress Monitoring and Reporting
- Productivity factor = planned man-hours / expended man-hours; factor <1 = low productivity — Exhibit G App G3, §5.1.3
- S-curves at Work Package, Work Unit, and Sub Work Unit levels; early plan, late plan, forecast, and actual — Exhibit G App G3, §5.1.4
- Weekly progress tables: planned vs actual to-date, planned/actual for period, man-hours planned/expended, productivity factor — Exhibit G App G3, §5.1.4.7
- Planning Close-Out Report: all as-built planning levels, S-curves, man-hour histograms, historical factors, lessons learned — Exhibit G App G3, §5.2

## Connections

- [[NLQ - Exhibit G Coordination Procedure]] — parent exhibit; planning requirements referenced at §6.3
- [[NLQ Project Management Requirements]] — App G3 operationalises the Work Time Schedule and planning obligations
- [[NLQ Commissioning Requirements]] — ICAPS mandatory for WP8 commissioning progress measurement

## Source References

- [[NLQ - Exhibit G Coordination Procedure]] — parent document; planning requirements at §6.3 and §4.3
