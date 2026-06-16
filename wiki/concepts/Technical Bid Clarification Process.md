---
title: "Technical Bid Clarification Process"
type: concept
tags: [work]
created: 2026-06-04
updated: 2026-06-09
sources: 11
---

## Summary

The Technical Bid Clarification (TBC) process is the structured dialogue between PTSC M&C (as procurer) and bidders after technical proposals are submitted. Its purpose is to resolve technical non-compliances, missing documents, and ambiguities before the Technical Bid Evaluation (TBE) can be completed. A package may go through multiple TBC rounds over weeks or months. The process runs in parallel across all qualified bidders for a package, and each bidder's thread is tracked independently.

## Key Points

### Sequence of a procurement package:

1. **RFQ issued** — Request for Quotation sent to qualified bidders; includes Technical Requisition (TR), datasheets, specs, Key Technical Requirements (KTR), ITP template, VDRL template
2. **BCA (Bid Circular Advice)** — amendments or deadline extensions issued before bid closing
3. **Bid submission** — bidders submit sealed technical proposals by due date
4. **TBO (Technical Bid Opening)** — PTSC opens proposals, identifies missing documents, flags deviations; missing doc request sent to each bidder
5. **TBC rounds** — iterative clarification process:
   - PTSC compiles questions from all engineering disciplines (mechanical, instrument, piping, electrical) as internal input
   - Commercial team issues the TBC document to bidder
   - Bidder responds; PTSC engineering reviews and closes or raises follow-up questions
   - Repeat until all points closed or package awarded
6. **BCM (Bid Clarification Meeting)** — scheduled when technical complexity warrants face-to-face (or virtual) discussion; typically held mid-TBC process
7. **TBE (Technical Bid Evaluation)** — formal scoring document updated after all TBC rounds close; used for award recommendation
8. **Award** → Purchase Order (PO)

### TBC document versioning:
- Format: `TBC#[round] Rev.[letter]` — e.g., TBC#1 Rev.A → TBC#1 Rev.B → TBC#2 Rev.A
- Revision letter increments when the same round has minor updates; round number increments when major new scope is added
- Each revision is sent to all applicable bidders; bidder responses may be on different revisions at the same time

### Standard bidder documents required during TBC:
| Form | Content |
|------|---------|
| **Form T3** | Sub-vendor / subcontractor list (manufacturer, foundry, major sub-components) |
| **Form T5** | Technical Deviation List — all deviations from spec must be listed here |
| **Form T8** | (Package-specific; varies) |
| **Form T9** | Spare Parts and Interchangeability Record (SPIR) |
| **KTR markup** | Key Technical Requirements — bidder to confirm/deviate each item |
| **ITP markup** | Inspection and Test Plan — bidder to comment/accept |
| **VDRL markup** | Vendor Document Requirements List — bidder to confirm deliverables |
| **Datasheet markup** | Process/instrument datasheets filled in with proposed values |
| **Tag List** | Instrument/equipment tag-by-tag compliance table |
| **Sizing calculations** | Where required: PSV sizing, pump hydraulics, PCV calc, NPSHr, etc. |
| **Reference list** | Comparable projects for same equipment type |
| **Financial reports** | Audited annual reports (typically 2–3 years) for new vendors |

### Certification Authority (CA) requirement:
- **CAT C** (most packages): Bidder appoints an independent inspection agency — ABS, LR, DNV, or BV for overseas manufacture; **Vietnam Register** for locally manufactured equipment
- Scope: reviewing material certs and test reports, issuing Statement of Compliance, reviewing FDB
- CAT C is now generally Base Scope (was Optional Scope historically); if a bidder cannot meet CA, it is a knockout factor

### Tracking statuses per bidder per TBC thread:
| Status | Meaning |
|--------|---------|
| 🟢 Responded | Vendor replied to the latest TBC; ball in PTSC's court |
| 🟠 Awaiting Reply | PTSC sent last communication; waiting for vendor |
| 🔴 No Reply | Vendor silent >3 days after deadline |
| ✅ Closed | All TBC points confirmed compliant; TBE update requested |
| ⚽ Vendor / 🏠 PTSC | Ball-in-court indicator |

### Bidder stance categories:
- **Cooperative (🤝)**: Active, responsive, meets deadlines or communicates delays
- **Clarifying (❓)**: Needs additional info from PTSC before responding
- **Delayed (⏰)**: Has explicitly requested deadline extensions
- **Not Acceptable**: Bid evaluation assessment when critical docs missing or non-compliance unresolved

### Common failure patterns:
- **Stale packages**: Last email >6 days ago, typically because TBC not yet drafted internally (engineering input missing)
- **1/5 bidder risk**: When only 1 of 5 bidders is technically acceptable, commercial team must push to rehabilitate others or risk single-source award
- **Deviation dispute**: Vendor claims verbal acceptance of deviations but TBC requires written compliance confirmation — must be formally resolved
- **Power/utility late discovery**: Late-stage TBC reveals utility requirement (e.g., 24VDC demand) not cross-checked against platform design — triggers re-query and potential scope change
- **HIPPS PSV scope creep**: Scope items initially classified as Optional re-classified as Base Scope mid-TBC, forcing all bidders to re-size
- **Cryogenic fluid freezing in TBC**: Bidder raises concern that CO2 pressure drop through PCV will freeze piping/valve (Joule-Thomson effect) — requires piping isometrics to evaluate RO plate vs nozzle discharge options before TBC can close (MEC-007 / FFE, Jun 4)
- **MTO incompleteness**: Bidder submits response with incomplete MTO (missing instrument scope portion) — PTSC must explicitly request the missing tables before discipline review can proceed (ELE-008 / SECONS)

### Internal discipline input required before sending TBC:
PTSC engineering disciplines (mechanical, instrument, piping, E&I, process) must review bidder proposals and provide input questions. Commercial team consolidates and sends. Delays in internal input = stale TBC thread.

## Connections

- [[KMDD Project]] — all KMDD procurement packages follow this process; 21 packages actively in TBC as of Jun-2026
- [[FEED Verification EPCI Contract]] — TBC responses can surface FEED deviations that require TQ to Company
- [[HIPPS Overpressure Protection]] — HIPPS PSV scope classification (base vs optional) was a mid-TBC decision for INS-002
- [[Chemical Injection System Design]] — TBC for MEC-006 revealed IRCD power supply constraint not in original design basis

## Source References

- [[KMDD MEC-006 Chemical Injection Package Status]] — MEC-006 TBC process across 3+ rounds with 5+ bidders
- [[KMDD MEC-007 CO2 Nitrogen Bidder Evaluation Crisis]] — 1/5 bidder result; typical multi-bidder TBC failure mode
- [[KMDD INS-004 Yoshitake Deviation Dispute]] — deviation dispute pattern: verbal vs written acceptance conflict
- [[KMDD INS-002 HIPPS PSV Base Scope Addition]] — mid-TBC scope reclassification forcing re-sizing
- [[KMDD MEC-006 IRCD Power Supply Issue]] — late-stage utility discovery in TBC#2
- [[KMDD MEC-003 Bao Nghi TBC Closure]] — clean closure example: all points confirmed, TBE update triggered
- [[KMDD Methanol Pump Capacity Upgrade]] — TBC for MEC-006 identified only PVD Tech compliant on pump type
- [[KMDD TBC Status Jun 4]] — 04-Jun morning snapshot; 7 stale, 14 active; INS-002 TBC#2 due 15:45 same day; MEC-002 at 17 rounds
- [[KMDD MEC-001 TBC Rev A2 AECC and Jun 4 MEC Actions]] — AECC responded TBC Rev.A2; feedback due Jun 5
- [[KMDD ELE-008 E&I Miscellaneous Earthing TBC Status]] — 5 bidders, TBC#2 Rev.B; SECONS missing instrument MTO; TAKA cooperative; 30+ emails
