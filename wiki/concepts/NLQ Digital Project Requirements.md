---
title: "NLQ Digital Project Requirements"
type: concept
tags: [work]
created: 2026-06-16
updated: 2026-06-16
sources: 1
---

## Summary

This page captures the NLQ EPCIC 10 digital asset requirements (Appendix A11). COMPANY is building a Digital Twin of the Al Shaheen field using CFIHOS standard. CONTRACTOR must deliver a complete 1D/2D/3D digital asset using AVEVA applications exclusively — no deliverables outside AVEVA are permitted. The specification covers information management, tagging, 3D modelling, vendor data, as-built, and final handover.

## Key Points

### Strategic Context
- COMPANY committed to Digital Asset Lifecycle Management since 2017; Digital Twin Development Project launched 2019 — Exhibit A App A11, §1.1
- Business objectives: trusted information using CFIHOS standard (ADL); collaborative work; accelerated execution; reduced site surveys — Exhibit A App A11, §1.2
- Shift from document-centric to object/data-centric management based on digital representations of the asset — Exhibit A App A11, §1.1

### Platform and Tagging Mandate
- CONTRACTOR must deliver full 1D data, 2D documents, and 3D model using only AVEVA applications — Exhibit A App A11, §3.2
- Development or modification of deliverables outside AVEVA applications is NOT ALLOWED — Exhibit A App A11, §3.2
- CONTRACTOR must follow COMPANY tag numbering standard SD-NOC-EC-106; full tag number representation required (abbreviations or aggregations not allowed, except P&ID instruments) — Exhibit A App A11, §3.2
- COMPANY will provide: AVEVA E3D project databases; AVEVA Diagrams databases; AVEVA Engineering databases with RDL; AVEVA E&I databases — Exhibit A App A11, §3.2

### Required Software Versions (Table 1)
- AVEVA Engineering ≥15.7.3 — Exhibit A App A11, §4
- AVEVA E3D ≥3.1 — Exhibit A App A11, §4
- AVEVA Diagrams ≥14.2 SP2 — Exhibit A App A11, §4
- AVEVA Administration ≥2.1 — Exhibit A App A11, §4
- AVEVA Instrumentation ≥12.2 SP63 — Exhibit A App A11, §4
- AVEVA Electrical ≥12.2 SP63 — Exhibit A App A11, §4
- Autodesk Navisworks 2022 — Exhibit A App A11, §4
- Software service packs and fixes must be installed within 15 working days upon identification — Exhibit A App A11, §4

### Information Management Plan
- CONTRACTOR shall issue an Information Management Plan (IMP) for COMPANY APPROVAL within 3 months from Effective Date — Exhibit A App A11, §3.3
- IMP shall address: Digital Asset philosophy; data handover procedure; vendor data management; AVEVA setup schedule; IM organisation; data quality control; 1D/2D/3D consistency; progress measurement — Exhibit A App A11, §3.3

### 1D Database (AVEVA Engineering)
- All tagged items with functional and physical properties per COMPANY ADL Conceptual Model developed in AVEVA Engineering — Exhibit A App A11, §3.5
- Master Tag Register (MTR): submitted weekly to COMPANY via AVEVA Engineering export to MS Excel — Exhibit A App A11, §3.5.1
- Tag-to-Tag and Tag-to-Document registers: developed in AVEVA Engineering; comprehensive links before each formal 3D model review — Exhibit A App A11, §3.5.2
- All engineering lists (equipment list, line list, etc.) developed using AVEVA Engineering and AVEVA E&I — Exhibit A App A11, §3.5.3
- All datasheets developed in AVEVA applications; each revision stored in AVEVA database in same order as submitted to COMPANY — Exhibit A App A11, §3.5.6

### 2D and 3D Requirements
- All schematic deliverables developed using AVEVA Diagrams, AVEVA Instrumentation, or AVEVA Electrical; HVAC schematics per SD-NOC-HVA-803 — Exhibit A App A11, §3.6.1
- 2D drawings extracted from AVEVA E3D; content shall not be modified outside AVEVA — Exhibit A App A11, §3.6.2
- 3D model in AVEVA E3D: clash-free; multi-discipline database; reviews at 30%, 60%, and 90% model completion — Exhibit A App A11, §3.7
- 3D model reviews check safety, constructability, accessibility, maintainability, and process aspects; CONTRACTOR discipline leaders must be available with COMPANY experts — Exhibit A App A11, §3.7
- All Tags within 3D model must fully match 1D database and Tags of 2D documents — Exhibit A App A11, §3.7

### Database Synchronisation
- AVEVA Global interface must synchronise DABACON databases between CONTRACTOR Satellite and COMPANY Hub daily — Exhibit A App A11, §3.8
- AVEVA Electrical and Instrumentation: SQL database backup and full project backup on bi-weekly basis via COMPANY shared folder — Exhibit A App A11, §3.8

### Vendor Data Management
- All VENDOR/SUBCONTRACTOR data, documents, and 3D models are CONTRACTOR's own deliverables; full responsibility for on-time delivery, quality, and consistency — Exhibit A App A11, §3.10
- CONTRACTOR shall allocate all Vendor Tags in AVEVA Engineering database per SD-NOC-EC-106 and share VMTR (Vendor Master Tag Register) with each Vendor — Exhibit A App A11, §3.10
- VENDOR data requirements must be included in all ITB packages, Material Requisitions, Purchase Orders, and discussed at Vendor kick-off meetings — Exhibit A App A11, §3.10
- VENDOR data must be delivered to COMPANY before start of equipment commissioning at SITE — Exhibit A App A11, §3.10

### Organisational Requirements
- COMPANY will allocate a COMPANY MP Digital Officer as single point of contact — Exhibit A App A11, §5.1
- CONTRACTOR shall nominate a CONTRACTOR Data Manager (reporting to Engineering Manager) at project start; responsible for all Information Management deliverables — Exhibit A App A11, §5.2

### Key Digital Deliverables (Table 2)
- Information Management Plan (Class 1): ED + 3 months — Exhibit A App A11, §6
- 1D/2D/3D Project Particular Specification (Class 1): ED + 3 months — Exhibit A App A11, §6
- 3D CAD Model Execution Plan (Class 1): ED + 3 months — Exhibit A App A11, §6
- Master Tag Register (Class 2): weekly submission — Exhibit A App A11, §6
- AVEVA Engineering/Diagrams/E3D Databases (Class 2): daily incremental update via AVEVA Global — Exhibit A App A11, §6
- AVEVA Electrical/Instrumentation Databases (Class 2): bi-weekly full backup — Exhibit A App A11, §6
- Data Quality & Consistency Report (Class 2): 2 weeks before each formal 3D model review — Exhibit A App A11, §6

### As-Built and Final Handover
- CONTRACTOR responsible for updating all digital deliverables and databases to as-built status — Exhibit A App A11, §7
- As-built 3D model: update AVEVA E3D database per field/yard changes; submit as per Work Schedule — Exhibit A App A11, §7.1
- Final Information Handover Procedure submitted to COMPANY by ED+6 months — Exhibit A App A11, §8
- Final 3D model handover: complete AVEVA E3D project with all databases, catalogues, elements, attributes, tags, configuration files, drawing files — Exhibit A App A11, §8.2
- Final 3D model also delivered in read-only formats: *.att, *.nwd, *.rvm, *.dgn — Exhibit A App A11, §8.2
- CONTRACTOR supports COMPANY during deployment of Final 3D model; must process COMPANY requests within 15 days — Exhibit A App A11, §8.2
- WORK not deemed fulfilled until all FINAL DOCUMENTATION has been received and accepted by COMPANY — Exhibit A App A11, §8

## Connections

- [[NLQ Software and Tools Requirements]] — App A1 §3 defines the approved software list; A11 specifies minimum version numbers and AVEVA integration rules
- [[NLQ Project Management Requirements]] — CONTRACTOR Data Manager is a key organisational role; IMP, MTR, and 3D model reviews are project milestones
- [[NLQ Document Requirements]] — all AVEVA-extracted documents are part of the MDR and must be flagged as "to be issued from AVEVA"
- [[NLQ Instrumentation and ICSS Requirements]] — AVEVA Instrumentation/Electrical databases are key 1D deliverables; AVEVA E&I used for all instrument and electrical lists

## Source References

- [[sources/NLQ - Exhibit A App A11 Digital Project Requirements]] — primary source for AVEVA platform mandate, software versions, MTR, CFIHOS, 1D/2D/3D deliverables, and final handover requirements
