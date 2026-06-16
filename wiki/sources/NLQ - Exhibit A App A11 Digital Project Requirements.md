---
title: "NLQ - Exhibit A App A11 Digital Project Requirements"
type: source
tags: [work]
created: 2026-06-16
updated: 2026-06-16
sources: 1
raw_file: "raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A11 Rev B.md"
---

## Summary

Appendix A11 (Rev B) defines the Digital Asset requirements for the NLQ EPCIC 10. COMPANY is building a Digital Twin of the Al Shaheen field and requires CONTRACTOR to deliver a complete 1D/2D/3D digital asset using AVEVA applications exclusively. The specification covers information management, tagging, 3D modelling, vendor data management, as-built requirements, and final handover.

## Key Points

### Context and Objectives (§1)
- COMPANY committed to Digital Asset Lifecycle Management since the Digital Asset Development Project launched in 2017; Digital Twin Development Project launched 2019 — Exhibit A App A11, §1.1
- Business objectives: make trusted information (documents and data) unique using CFIHOS standard (ADL); support collaborative work with trusted information; accelerate project execution; significantly reduce need for site surveys — Exhibit A App A11, §1.2
- Move from document-centric to object/data-centric management based on digital representations of the asset — Exhibit A App A11, §1.1

### General Responsibilities (§3.2)
- CONTRACTOR must deliver full scope of Digital Asset (1D data, 2D documents, 3D model) using only relevant AVEVA applications — Exhibit A App A11, §3.2
- Development or modification of deliverables outside AVEVA application is NOT ALLOWED — Exhibit A App A11, §3.2
- CONTRACTOR must follow COMPANY tag numbering standard SD-NOC-EC-106; all Tags in all documents, applications, and databases must be compliant; full Tag number representation required (abbreviations or aggregations not allowed except P&ID instruments) — Exhibit A App A11, §3.2
- CONTRACTOR must identify and rectify inconsistencies across all disciplines including VENDOR and SUBCONTRACTOR data throughout project execution — Exhibit A App A11, §3.2
- COMPANY will provide: AVEVA Everything3D project databases; AVEVA Diagrams databases; AVEVA Engineering databases with RDL; AVEVA E&I databases — Exhibit A App A11, §3.2

### Information Management Plan (§3.3)
- CONTRACTOR shall issue an Information Management Plan (IMP) for COMPANY review and APPROVAL within 3 months from Effective Date — Exhibit A App A11, §3.3
- IMP shall address: Digital Asset implementation philosophy; data handover procedure; vendor data management; system architecture; AVEVA setup schedule; IM organisation; data quality control procedures; data consistency between 1D/2D/3D; progress measurement — Exhibit A App A11, §3.3

### 1D Database Requirements (§3.5)
- CONTRACTOR shall develop 1D database using AVEVA Engineering with all tagged items, functional and physical properties per COMPANY ADL Conceptual Model — Exhibit A App A11, §3.5
- Master Tag Register (MTR): submitted weekly to COMPANY in AVEVA Engineering then exported to MS Excel — Exhibit A App A11, §3.5.1
- Tag to Tag and Tag to Document registers: developed in AVEVA Engineering; comprehensive set of links before each formal 3D model review milestone — Exhibit A App A11, §3.5.2
- Engineering lists (equipment list, line list, etc.) shall be developed using AVEVA Engineering and AVEVA E&I — Exhibit A App A11, §3.5.3
- Datasheets: all developed in AVEVA applications; each revision must be stored in AVEVA database in the same order as submitted to COMPANY document management system — Exhibit A App A11, §3.5.6

### 2D and 3D Requirements (§3.6–§3.7)
- All schematics deliverables developed using AVEVA Diagrams, AVEVA Instrumentation, or AVEVA Electrical; HVAC schematics must comply with SD-NOC-HVA-803 — Exhibit A App A11, §3.6.1
- 2D drawings extracted from AVEVA E3D; content shall not be modified outside the AVEVA system — Exhibit A App A11, §3.6.2
- 3D model in AVEVA E3D: clash-free; multi-discipline database; reviews at 30%, 60%, and 90% model completion — Exhibit A App A11, §3.7
- 3D model reviews: check safety, constructability, accessibility, maintainability, process aspects; CONTRACTOR discipline leaders available with COMPANY experts — Exhibit A App A11, §3.7
- All Tags within 3D model must fully match 1D database and Tags of 2D documents — Exhibit A App A11, §3.7

### Required Software (§4 Table 1)
- AVEVA Engineering ≥15.7.3; AVEVA E3D ≥3.1; AVEVA Diagrams ≥14.2 SP2; AVEVA Administration ≥2.1; AVEVA Instrumentation ≥12.2 SP63; AVEVA Electrical ≥12.2 SP63; Autodesk Navisworks 2022 — Exhibit A App A11, §4
- Software service packs and fixes must be installed within 15 working days upon identification — Exhibit A App A11, §4

### Vendor Data Management (§3.10)
- CONTRACTOR considers all VENDOR/SUBCONTRACTOR data, documents, and 3D models as its own deliverables; bears full responsibility for on-time delivery, quality, and consistency — Exhibit A App A11, §3.10
- CONTRACTOR shall allocate all Vendor Tags in AVEVA Engineering database per SD-NOC-EC-106 and share VMTR (Vendor Master Tag Register) with each Vendor — Exhibit A App A11, §3.10
- VENDOR data requirements must be included in all ITB packages, Material Requisitions, Purchase Orders, and discussed at Vendor kick-off meetings — Exhibit A App A11, §3.10
- VENDOR data must be delivered to COMPANY before start of equipment commissioning at SITE — Exhibit A App A11, §3.10

### Database Synchronisation (§3.8–§3.9)
- AVEVA Global interface must be set up to synchronize DABACON databases between CONTRACTOR Satellite and COMPANY Hub daily — Exhibit A App A11, §3.8
- For AVEVA Electrical and Instrumentation: SQL database backup and full project backup on bi-weekly basis via COMPANY shared folder — Exhibit A App A11, §3.8

### Resources (§5)
- COMPANY will allocate a COMPANY MP Digital Officer as single point of contact — Exhibit A App A11, §5.1
- CONTRACTOR shall nominate a CONTRACTOR Data Manager (reporting to Engineering Manager) at the very beginning of the project; responsible for all Information Management deliverables — Exhibit A App A11, §5.2

### Digital Twin Deliverables (§6 Table 2)
- Information Management Plan (Class 1): ED + 3 months — Exhibit A App A11, §6
- 1D/2D/3D Project Particular Specification and procedure (Class 1): ED + 3 months — Exhibit A App A11, §6
- 3D CAD Model Execution Plan (Class 1): ED + 3 months — Exhibit A App A11, §6
- Master Tag Register (Class 2): Weekly — Exhibit A App A11, §6
- AVEVA Engineering/Diagrams/E3D Databases (Class 2): Daily (AVEVA Global incremental update) — Exhibit A App A11, §6
- AVEVA Electrical/Instrumentation Databases (Class 2): Bi-weekly full backup — Exhibit A App A11, §6
- Data Quality & Consistency Report (Class 2): 2 weeks before formal 3D model review — Exhibit A App A11, §6

### As-Built and Final Handover (§7–§8)
- CONTRACTOR responsible for updating all digital deliverables and databases to as-built status — Exhibit A App A11, §7
- As-built 3D model: update AVEVA E3D database per field/yard changes; submit as per Work Schedule — Exhibit A App A11, §7.1
- Final Information Handover Procedure submitted to COMPANY by ED+6 months — Exhibit A App A11, §8
- Final 3D model handover: complete AVEVA E3D project with all databases, catalogues, elements, attributes, tags, configuration files, drawing files, settings — Exhibit A App A11, §8.2
- Final 3D model also in read-only format: *.att, *.nwd, *.rvm, *.dgn — Exhibit A App A11, §8.2
- CONTRACTOR shall not make any modifications or omissions to 3D models or catalogues before handover — Exhibit A App A11, §8.2
- CONTRACTOR supports COMPANY during deployment of Final 3D model; must process COMPANY requests within 15 days — Exhibit A App A11, §8.2
- WORK not deemed fulfilled until all FINAL DOCUMENTATION has been received and accepted by COMPANY — Exhibit A App A11, §8

## Connections

- [[NLQ Software and Tools Requirements]] — App A1 §3 lists approved software; A11 defines the detailed AVEVA integration and version requirements
- [[NLQ Project Management Requirements]] — CONTRACTOR Data Manager is a key organisational role; IMP, MTR, and 3D model reviews are project management milestones
- [[NLQ Document Requirements]] — all documents extracted from AVEVA applications are part of the MDR; A2 deliverables must be flagged as "to be issued from AVEVA"
- [[NLQ Instrumentation and ICSS Requirements]] — AVEVA Instrumentation/Electrical databases are key 1D deliverables; AVEVA E&I used for all instrumentation and electrical lists

## Source References

- Raw file: `raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A11 Rev B.md`
