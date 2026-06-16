---
title: "NLQ - Exhibit H App H4 Criticality Rating"
type: source
tags: [work]
created: 2026-06-16
updated: 2026-06-16
sources: 1
raw_file: "raw/documents/NLQ/EPCIC 10 - EXHIBIT H App H4 Rev A.md"
---

## Summary

Appendix H4 Rev A (14 pages) defines the Criticality Rating methodology and provides a comprehensive pre-populated Equipment Criticality Rating list for the NLQ EPCIC 10 project. Criticality ratings (1–4) are determined by combining Project Risk Level and Unit Risk Level. The pre-populated list covers hundreds of equipment items across electrical, instrumentation, ICSS, HVAC, mechanical, and process categories.

## Key Points

### Criticality Rating Methodology
- Two risk dimensions: Project Risk Level (schedule, delivery failure modes, HSE impact) and Unit Risk Level (complexity, vendor maturity, design innovation) — Exhibit H App H4, §3.1–3.3
- Four ratings combined from the matrix: 1 = Highly Critical, 2 = Critical, 3 = Moderately Critical, 4 = Not Critical — Exhibit H App H4, §3.5
- CONTRACTOR must submit criticality assessment to COMPANY for APPROVAL; changes to the list by COMPANY do not entitle CONTRACTOR to a Change Order — Exhibit H App H4, §5

### Highly Critical Equipment — Automatic Criticality Rating 1
- All ICSS cabinets (SCADA, ESD, F&G marshalling), Wellhead Control Panel, Operator Workstation, ICSS Network Cabinets — Exhibit H App H4, §4 Table 4-1
- Gas Turbine Generator (GTG) and Gas Turbine driven Water Injection Pump Package — Exhibit H App H4, §4 Table 4-1
- Emergency Diesel Generator — Exhibit H App H4, §4 Table 4-1
- All permanently installed lifting equipment ≥10MT; temporary lifting system ≥100MT — Exhibit H App H4, §4 Table 4-1
- WAG Compressor (Gas Turbine driven) — Exhibit H App H4, §5 Table 5-1
- Subsea cables for power, large generators >50 MVA, large transformers >50 MVA — Exhibit H App H4, §4 Table 4-1

### Key Equipment Criticality Ratings — Selected Items
- HVAC: all HVAC system components (ACU, chilled water unit, air handling unit, fan coil unit, etc.) = Criticality Rating 2 — Exhibit H App H4, §5 Table 5-1
- Electrical: normal HV switchboard, emergency LV switchboard, LV switchboard, UPS unit, VSD panel = Criticality Rating 2; transformers HV/LV = Criticality 2 — Exhibit H App H4, §5 Table 5-1
- Instrumentation: choke valves, control valves, Coriolis flowmeters, motor operated valves, on-off valves = Criticality Rating 2; pressure safety valves = Criticality Rating 2 — Exhibit H App H4, §5 Table 5-1
- Telecom: PA/GA system, LAN/Telecom system, 4G/LTE system, CCTV package, VHF/UHF system = Criticality Rating 2 — Exhibit H App H4, §5 Table 5-1
- Process/Mechanical: Crude export pumps = Criticality 2; Open drain tank = Criticality 3; Nitrogen generation package = Criticality 2; Seawater lift pump = Criticality 2 — Exhibit H App H4, §5 Table 5-1
- Firewater pump/skid = Criticality 2; Deluge valves package/skid = Criticality 2; Flame detector (Multi-IR) = Criticality 3 — Exhibit H App H4, §5 Table 5-1
- Safety: most personal safety equipment (EEBD, lifejackets, life buoys, fire extinguishers) = Criticality 4; fire hydrant = Criticality 4; smoke detector (optical) = Criticality 3 — Exhibit H App H4, §5 Table 5-1

### Criticality-Driven Implications
- Criticality 1: Inspection Level I (full stage, resident inspector); QMS audit before commitment; all hold points — Exhibit H App H3, §2
- Criticality 2: Inspection Level II (occasional stage with FAT witness) — Exhibit H App H3, §2
- Criticality 3: Inspection Level III (final inspection only) — Exhibit H App H3, §2
- Criticality 4: Inspection Level IV (document review only) — Exhibit H App H3, §2

## Connections

- [[NLQ Quality Requirements]] — App H4 provides the criticality ratings that determine the intensity of all QC and surveillance activities
- [[NLQ Instrumentation and ICSS Requirements]] — all ICSS components are Criticality 1; choke valves, PSVs, MOVs are Criticality 2
- [[NLQ HVAC Requirements]] — all HVAC components are Criticality 2; drives Level II inspection at FAT
- [[NLQ Electrical Engineering Requirements]] — HV switchgear, transformers, UPS = Criticality 2; drives Level II inspection
- [[NLQ Mechanical Engineering Requirements]] — GTG and WIP Package = Criticality 1; process machinery ratings defined here

## Source References

- [[sources/NLQ - Exhibit H App H3 Inspection Levels]] — App H3 translates criticality ratings into inspection level actions
- [[sources/NLQ - Exhibit H QA QC Main]] — main Exhibit H §6.3 and §4.3.8 reference App H4 for surveillance intensity
