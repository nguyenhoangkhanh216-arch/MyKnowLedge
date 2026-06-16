---
title: "LDV-A E&I Cable Tagging Deviation Request"
type: source
tags: [work]
created: 2026-06-11
updated: 2026-06-11
sources: 1
raw_file: "raw/documents/LDV/MCB-0005-11AA-G-B16-0001 E&I Cable Termination, Tagging & Colour Coding Non-Compliance – Vendor Skid.md"
---

## Summary

Deviation Request DEV MCB-0005-11AA-G-B16-0001 submitted 09-Jun-2026 by PTSC M&C (Originator: Nguyễn Hoàng Khánh) requesting Company (Murphy/MOC) acceptance of 28 E&I punch items on 8 vendor-supplied skid packages. All 28 items are non-functional — they relate solely to cable identification (colour coding and tagging). All affected packages are functionally complete and ready for commissioning. As of 09-Jun-2026, the Company Answer section is blank — awaiting MOC approval.

## Key Points

- **Document number:** MCB-0005-11AA-G-B16-0001
- **Date submitted:** 09-Jun-2026
- **Originator:** Nguyễn Hoàng Khánh (Project Engineer, PTSC M&C)
- **Approval chain:** Tran Anh Kim (Engineering Manager) → Than Van Hai (QA/QC Manager) → Pham Ngoc Thuy (Project Manager); all signed 09-Jun-2026
- **Status:** Awaiting Company (Murphy Oil / MOC) approval — Company Answer blank
- **Total punch items:** 28 of 92 total E&I punch items across 8 packages; all Category B & C (non-functional)
- **Packages affected:** Electric Heater (MEC-001), Pressure Vessel (MEC-002), GTG (MEC-005.02), Pedestal Crane (MEC-020), VRU (MEC-009), Air Compressor (MEC-015), Fiscal Gas Metering (INS-001), Nitrogen Generation (MEC-016)
- **Impact:** No HSE / QA / cost / schedule / weight impact declared
- **Rationale:** Physical re-termination at this stage carries higher risk of introducing new defects than accepting as-installed; manufacturer performance guarantees remain valid

### Deviation Types

| Type | Issue | Packages |
|------|-------|---------|
| Type 1 — Conductor Colour | Blue-Black instead of White-Black on instrument circuits; DC polarity/earth colours deviate | MEC-001, MEC-002, MEC-005.02, MEC-020, MEC-009 |
| Type 2 — Tagcore Marking | Vendor internal refs used instead of project format `13-IC0xx-TZTxxxx` | MEC-009, MEC-015, MEC-001, MEC-002, INS-001, MEC-016 |
| Type 3 — SS316 Cable Tag Format | Vendor labels non-compliant; spec requires `13-IC0xx-TZTxxxx` | MEC-015, MEC-001, MEC-002 |
| Type 4 — Cable Outer Sheath Colour | Grey instead of Orange (fire resistance spec) | MEC-001 |
| Type 5 — GTG JB Miscellaneous | Missing stopping plugs; earth cable 6 sqmm (spec 35 sqmm); missing tags; incorrect tagcore; wrong heat-shrink colours | MEC-005.02 (13-JBP-7500-1, 13-JBP-7510-1) |

### Mitigation Actions (upon approval)

1. Update all affected wiring diagrams, loop diagrams, JB schedules, and cable schedules as As-Built
2. Brief commissioning and operations teams; add note to O&M procedures
3. Submit earth cable adequacy calculation for Type 5 within 2 weeks; rectify if inadequate
4. Install missing stopping plugs and cable tags (Type 5) where accessible during onshore commissioning
5. Formally close all 28 punch items referencing this deviation number

## Connections

- [[LDV-A Project]] — this deviation covers 8 procurement packages on the LDV-A production platform
- [[Technical Bid Clarification Process]] — same package numbers (MEC-001, MEC-002, etc.) tracked in procurement; deviation is a C&C-phase document, not procurement

## Source References

- Raw document `MCB-0005-11AA-G-B16-0001` — source of all content on this page
