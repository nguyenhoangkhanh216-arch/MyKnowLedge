---
title: "NLQ Instrumentation and ICSS Requirements"
type: concept
tags: [work, science]
created: 2026-06-16
updated: 2026-06-16
sources: 1
---

## Summary

This page captures all Instrumentation, ICSS, Functional Safety, and Telecommunication requirements for the NLQ EPCIC 10 project as defined in Appendix A1 §2.9. CONTRACTOR must follow IEC 61508/61511 for functional safety; manage all instrumentation in AVEVA database per SD-NOC-INS-103; merge an COMPANY-approved ICSS Integrator into the Detailed Engineering organisation; and deliver all Telecom systems including PAGA, CCTV, VHF/UHF radio, helideck monitoring, and fibre optic network.

## Key Points

### Instrumentation General
- CONTRACTOR shall perform all instrumentation analysis, design and calculations per the DESIGN DOSSIER — Exhibit A App A1, §2.9
- CONTRACTOR shall perform Alarm Studies and CHAZOP (Control HAZOP) — Exhibit A App A1, §2.9
- CONTRACTOR shall follow IEC 61508/61511 methodologies for functional safety assessment; plan deliverables and define third-party requirements accordingly — Exhibit A App A1, §2.9
- CONTRACTOR shall ensure all electronic equipment complies with COMPANY cybersecurity standards per DESIGN DOSSIER; compile a specific Cybersecurity Dossier — Exhibit A App A1, §2.9
- CONTRACTOR shall ensure all equipment complies with COMPANY obsolescence standards; compile a specific Obsolescence Dossier — Exhibit A App A1, §2.9
- CONTRACTOR shall setup, populate, and manage the Detailed Engineering Instrumentation Database using AVEVA software per SD-NOC-INS-103; provide live read access to COMPANY — Exhibit A App A1, §2.9
- AVEVA software is mandatory for F&G I/O lists and datasheets per COMPANY standard — Exhibit A App A1, §2.9
- CONTRACTOR shall allocate an experienced AVEVA administrator responsible for management of Instrumentation Database throughout Detailed Engineering and Commissioning until transfer to COMPANY — Exhibit A App A1, §2.9

### Instrumentation Deliverables
- CONTRACTOR shall develop: Instrument and Control Philosophies, Instrument and Control Philosophy for package units, Instrumentation/Control System Numbering and Tagging Specification — Exhibit A App A1, §2.9
- CONTRACTOR shall prepare: Instrument List, I/O List, Cable List (exported from instrumentation database), Instrument Cable Trays Routings and Support Location, Instrument Cable Specification — Exhibit A App A1, §2.9
- CONTRACTOR shall perform all instrument calculation notes and sizing: flowmeter sizing, control and safety valve sizing with noise calculation, actuator sizing and stroke speed calculation for on/off valves — Exhibit A App A1, §2.9
- CONTRACTOR shall re-evaluate instrument selection technology according to final process data and piping installation constraints with COMPANY APPROVAL — Exhibit A App A1, §2.9
- CONTRACTOR shall develop F&G detection specifications and datasheets; ESD/F&G cause and effect charts; ESD/F&G safety logic block diagrams — Exhibit A App A1, §2.9
- CONTRACTOR shall develop all wiring, termination, and troubleshooting loop drawings generated from AVEVA database using AutoCAD — Exhibit A App A1, §2.9

### ICSS
- CONTRACTOR shall perform all ICSS analysis, design and calculations including integration between BI Living Quarter Platform, BJ Process Platform, and existing B-location facilities — Exhibit A App A1, §2.9
- CONTRACTOR shall develop ICSS Functional Analysis including all Procedures and Specifications for integration with existing plant and all other Ruya Batch 1 platforms — Exhibit A App A1, §2.9
- CONTRACTOR shall prepare technical specification for seamless integration of Telecom and electrical with the ICSS — Exhibit A App A1, §2.9
- CONTRACTOR shall prepare technical specification/procedure to integrate BI platform with existing ICSS at BH platform for monitor and control from BG CCR (Central Control Room) — Exhibit A App A1, §2.9
- CONTRACTOR shall merge the APPROVED ICSS Integrator (listed in Exhibit J) into its Detailed Engineering organisation to ensure seamless delivery of ICSS/Telecoms Package — Exhibit A App A1, §2.9

### Functional Safety (SIS/SIL)
- CONTRACTOR shall have dedicated personnel for Functional Safety Management and develop a Safety Life Cycle Plan as part of SIS design activities — Exhibit A App A1, §2.9
- New ICSS system shall be designed based on NLQ functional system specifications and be fully compatible for integration with existing installed ICSS — Exhibit A App A1, §2.9
- SIS design shall comply with IEC 61508/IEC 61511; objective to reduce risk on the installation — Exhibit A App A1, §2.9
- CONTRACTOR shall prepare: Safety Life Cycle Plan, HAZOP Review and Report, SIL Assignment Workshop and Report, SIF Definition and SIF Register, Shutdown System Specification, SIL Verification (3rd party), Safety Requirement Specification, Functional Safety Assessment (stages 1, 2, 3 by 3rd party), Alarm Rationalization Workshop and Report — Exhibit A App A1, §2.9
- CONTRACTOR shall develop SIS operations and maintenance requirements with all necessary checklists per IEC 61511 Clause 16 — Exhibit A App A1, §2.9
- CONTRACTOR shall ensure competent person carries out SIS life cycle activities per IEC 61511-01 Clause 5.2.2 — Exhibit A App A1, §2.9
- Any SIF not achieving SIL target during SIL verification shall have its design re-evaluated for improvement; revised SIF design shall be re-verified — Exhibit A App A1, §2.9

### Telecommunication
- CONTRACTOR shall prepare technical specifications for seamless integration of: IP PAGA System, LAN and VOIP Telephone Network, CCTV System, Radio System (VHF/FM, UHF, VHF/DSC), Helicopter Operations (NDB, VHF/AM, Weather and Helideck Monitoring System) — Exhibit A App A1, §2.9
- CONTRACTOR shall provide Telecom Studies: PAGA Sound Coverage, UHF/VHF Radio Coverage, CCTV Coverage, CCTV Storage Capacity, Wireless Access Point Coverage, Telecom Mast Tower Antenna Coverage, Fibre Optic Link Budget — Exhibit A App A1, §2.9
- CONTRACTOR shall develop Telecom equipment test procedures for FAT, IFAT, YAT, SAT, Pre-commissioning, Commissioning, and Operational Test Procedure — Exhibit A App A1, §2.9
- CONTRACTOR shall consider subcontracting Telecom Engineering Scope to a Telecom System Integrator — Exhibit A App A1, §2.9
- CONTRACTOR shall develop Fibre Optic Allocation Drawings, Telecom Cabinet General Arrangement Drawings, Ex Register (RFID) Schedule, Telecom Cable Tray Fill Calculation Report — Exhibit A App A1, §2.9

## Connections

- [[NLQ Safety Engineering Requirements]] — SIL assignment, HAZOP, and SIS life cycle management jointly managed with safety engineering (§2.2)
- [[NLQ Electrical Engineering Requirements]] — ECS architecture, ICSS signal interfaces, load shedding, and interlocking logic shared with electrical (§2.8)
- [[NLQ Process Engineering Requirements]] — ESD logic diagrams, C&E charts, and overpressure protection philosophy interface with process (§2.3)
- [[NLQ Commissioning Requirements]] — ICSS/SIS FAT, SAT, and commissioning procedures are commissioning deliverables (WP8)
- [[NLQ Software and Tools Requirements]] — AVEVA Instrumentation, Instrucalc, CadnaA, ICAPS are mandated instrumentation/commissioning tools (§3)

## Source References

- [[sources/NLQ - Exhibit A App A1 Detailed Engineering]] — §2.9 Instrumentation, ICSS, Functional Safety and Telecommunication section is the governing source for all items on this page
