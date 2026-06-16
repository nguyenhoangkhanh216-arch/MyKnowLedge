---
title: "NLQ Electrical Engineering Requirements"
type: concept
tags: [work, science]
created: 2026-06-16
updated: 2026-06-16
sources: 2
---

## Summary

This page captures all Electrical Engineering requirements for the NLQ EPCIC 10 project as defined in Appendix A1 §2.8. CONTRACTOR must perform all electrical analysis, design, and calculations for the entire electrical system including integration between the BI NLQ platform, BJ Process Platform, and existing B-location facilities. Power system studies shall use latest ETAP software. Black start philosophy development is mandatory.

## Key Points

### Power System Studies
- CONTRACTOR shall perform electrical power system studies using latest ETAP software and existing network model (complete BI and its integration with existing BJ) covering: load flow analysis, short-circuit analysis, protective relay selection and setting studies, motor starting studies, transient stability studies, arc-flash studies, harmonic analysis — Exhibit A App A1, §2.8
- CONTRACTOR shall develop black start philosophy for NLQ (BI platform) considering all scenarios — Exhibit A App A1, §2.8
- CONTRACTOR shall ensure all electrical equipment and packages comply with obsolescence management and cybersecurity guideline standards; submit all relevant supporting documents — Exhibit A App A1, §2.8
- CONTRACTOR shall prepare Electrical Control System (ECS) for BI Platform and extension to existing B-location covering all loads, equipment sizing, and protection devices — Exhibit A App A1, §2.8

### Electrical Design Deliverables
- CONTRACTOR shall prepare: Electrical Design Basis, Consumers Load List and Load Balance Calculation Notes, Equipment Sizing Calculation Notes, Electrical Equipment Layout in Electrical and Battery Rooms, Cable Sizing Calculation Notes, Lighting Calculations — Exhibit A App A1, §2.8
- CONTRACTOR shall develop: Electrical Key Single Line Diagrams; Single Line Diagrams for main power system, switchboard, emergency switchboard, AC/DC UPS, lighting DBs, small power DB, MOV DBs, socket DB, navigation aid system — Exhibit A App A1, §2.8
- CONTRACTOR shall prepare detailed technical specifications and datasheets for: switchboards, transformers, bus duct, UPS, distribution boards, HV/LV VSD, interposing relay panels, motors, lighting, cables, thyristor-controlled gas lift heaters, power junction boxes, RFID tags, HV/LV soft starters — Exhibit A App A1, §2.8
- CONTRACTOR shall develop navigation aids specifications per regulations, block diagram, battery sizing, and layout — Exhibit A App A1, §2.8
- CONTRACTOR shall prepare cable schedule, distribution board schedule, interconnection diagram, control loop diagrams, and cable general routings — Exhibit A App A1, §2.8
- CONTRACTOR shall develop electrical interlocking and inter-tripping diagrams, logic diagrams, mechanical and key interlockings — Exhibit A App A1, §2.8
- CONTRACTOR shall develop cable ladders and tray routings including MCT details for each area/facility — Exhibit A App A1, §2.8
- CONTRACTOR shall prepare detailed installation standard drawings: power layouts, MCT layouts, earthing and lighting layouts for each facility/area/level — Exhibit A App A1, §2.8

### Brownfield Integration and System Architecture
- CONTRACTOR shall develop electrical systems operation concept — Exhibit A App A1, §2.8
- CONTRACTOR shall develop ECS architecture, IO lists, specification for ECS, load shedding and load sharing with existing platforms, synchronisation of network breakers, automatisms, signal interfaces with ICSS, interface with other platforms — Exhibit A App A1, §2.8
- CONTRACTOR shall review and amend brownfield integration scope, battery limit, and specification to share to COMPANY — Exhibit A App A1, §2.8
- CONTRACTOR shall prepare brownfield integration list with other platforms — Exhibit A App A1, §2.8
- CONTRACTOR shall develop electrical equipment obsolescence dossier — Exhibit A App A1, §2.8

### Earthing and Other Requirements
- CONTRACTOR shall prepare earthing sizing calculations — Exhibit A App A1, §2.8
- CONTRACTOR shall prepare electrical heat loss calculation note — Exhibit A App A1, §2.8
- CONTRACTOR shall prepare Electrical Material Take-Off (MTO) for various electrical items — Exhibit A App A1, §2.8
- CONTRACTOR shall prepare register of electrical components certified for use in hazardous areas and electrical RFID list — Exhibit A App A1, §2.8
- CONTRACTOR shall develop commissioning documents: ITP, test reports, tie-in procedures, installation and commissioning manuals and procedures — Exhibit A App A1, §2.8

## Connections

- [[NLQ Instrumentation and ICSS Requirements]] — ECS interfaces, ICSS signal interfaces, load shedding coordination, and interlocking logic share design with ICSS (§2.9)
- [[NLQ Safety Engineering Requirements]] — hazardous area classification schedule (§2.2) directly governs electrical equipment selection and Ex register
- [[NLQ HVAC Requirements]] — HVAC electrical load coordinated with electrical load list; black start philosophy covers HVAC systems (§2.5)
- [[NLQ Structural Engineering Requirements]] — electrical equipment support design and MCT layout coordinated with structural (§2.7)
- [[NLQ Software and Tools Requirements]] — ETAP, AVEVA Electrical, PALADIN/EMTP-RV are mandated electrical software (§3)

### Performance Guarantees (from Exhibit D)
- Lighting: lux measurement per specification in normal offshore conditions; 1-month performance test — Exhibit D, §4.2.2
- UPS and Battery: 100% load test onshore with load bank (active and reactive power); operation test offshore; 24 h onshore / 1 month offshore — Exhibit D, §4.2.2
- Emergency Diesel Generator (EDG): 12-hour site run test per CONTRACTOR DOCUMENTS — Exhibit D, §4.2.2

## Source References

- [[sources/NLQ - Exhibit A App A1 Detailed Engineering]] — §2.8 Electrical section is the governing source for all items on this page
- [[sources/NLQ - Exhibit D Performance Guarantees]] — Table 4-1: Lighting, UPS/Battery, EDG performance test acceptance criteria and durations
