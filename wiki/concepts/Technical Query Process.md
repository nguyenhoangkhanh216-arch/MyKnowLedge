---
title: "Technical Query Process"
type: concept
tags: [work]
created: 2026-06-04
updated: 2026-06-11
sources: 5
---

## Summary

A Technical Query (TQ) is a formal written query raised by a contractor or sub-contractor to the client or engineer-of-record to seek clarification, additional information, or a decision on a design basis matter. Unlike the Technical Bid Clarification (TBC) process which addresses procurement/vendor queries, TQs flow upward in the project hierarchy to resolve engineering ambiguities that cannot be resolved from existing contract documents.

## Key Points

- **Flow direction:** Sub-CTR → CTR/CPY (e.g., PTSC M&C → VSP/PVEP-KM on KMDD)
- **Purpose:** Seek CPY advice on design parameters not fully defined in FEED/contract documents; flag design basis gaps discovered during detailed engineering; propose solutions for CPY confirmation
- **Document numbering (KMDD):** `KDP-OOO-03-TQ-[discipline]-[sequence]-(P)`
  - `OOO` = multi-platform / common (vs. KMA or DDA for platform-specific)
  - Discipline codes: X = Safety; B = Mechanical; (others as applicable)
  - `(P)` = preliminary / in progress suffix
- **Urgency levels:** URGENT (response target ~10 days) or ROUTINE
- **TQ form structure:**
  1. Query Description — the design gap or ambiguity with reference documents
  2. Proposed Solution — Sub-CTR's recommended resolution
  3. Attachments — relevant drawings, P&IDs, datasheets, memos
  4. EPCI Contractor Response — VSP intermediate review (if applicable)
  5. Company Response — CPY/PVEP-KM final decision
  6. Approval Status: Approved / Approved As Noted / Rejected
- **When TQs arise:**
  - FEED gaps discovered during detailed engineering
  - SIPROD/operability conditions not fully covered in FEED
  - Design basis changes (new drilling rig selected, updated standards)
  - Sub-CTR recommendations that diverge from FEED and require client sign-off
- **Cost/Schedule impact:** TQ form captures whether cost or schedule impact exists — critical for change order tracking and contractual record
- **Distinction from TBC:** TBC = Sub-CTR to Vendor/Bidder (procurement); TQ = Sub-CTR to CTR/CPY (design authority)

### KMDD TQs (as of 02-Jun-2026)
| TQ No.                   | Discipline | Subject                                   | Status                             |
| ------------------------ | ---------- | ----------------------------------------- | ---------------------------------- |
| KDP-OOO-03-TQ-B-0001     | Process    | Finalized PP & Backpressure               | Open — awaiting VSP/NIPI           |
| KDP-OOO-03-TQ-B-0002     | Process    | Design Conditions KM FWS at DD topside    | Open — awaiting CPY                |
| KDP-OOO-03-TQ-B-0003     | Process    | Design Pressure Methanol Injection System | ✅ Closed — 232 barg approved 01-Jun-2026 |
| KDP-OOO-03-TQ-B-0004     | Mechanical | Methanol pump capacity upgrade            | ✅ Closed (triplex pump confirmed)  |
| KDP-OOO-03-TQ-X-0001-(P) | Safety     | Firewater design pressure verification    | Open — response due 15-Jun-2026    |
| (superseded)             | Process    | Chemical Dosing Rate (PPD & SI)           | ✅ Superseded — VSP accepted rates directly 08-Jun-2026 (no formal TQ issued) |
| (superseded)             | Process    | Methanol Injection Rate                   | ✅ Superseded — VSP/PVEP-KM accepted 507.8/560 L/h directly; see [[Methanol Injection Hydrate Inhibition]] |
| KDP-OOO-03-TQ-S-0001     | Structural | CVN temperature for structural WPS        | Issued 18-May-2026                 |
| KDP-OOO-03-TQ-G-0001-(P) | General    | Pump Access Deck Assessment               | Issued 26-May-2026                 |
| KDP-OOO-03-TQ-B-0005-(P) | Process    | Design Pressure Methanol Inj. Pump KM-WHP | Issued 27-May-2026                 |
| KDP-OOO-03-TQ-M-0001-(P) | Mechanical | Freshwater/Firefighting material selection | Returned with comment (per 02-Jun MOM) |
| KDP-OOO-03-TQ-P-0001-(P) | Piping     | Xmas Tree & Wellhead drawings, drilling space, wellhead movement | Returned with comment (per 02-Jun MOM) |
| KDP-OOO-03-TQ-E-0001     | Electrical | EDG vendor data inputs                    | To be issued (per 02-Jun MOM)      |
| (planned)                | Instrument | ICSS design data (GAD, power, heat dissipation) | To be issued — internal CTR  |
| (planned)                | Instrument | WHCP design data (GAD, power)             | To be issued — internal CTR        |
| (planned)                | Safety     | HIPPS design data (P&ID, GA drawings)     | To be issued                       |

## Connections

- [[Technical Bid Clarification Process]] — TBC is the analogous process for vendor/bidder queries; both are formal written clarification tracks but TQ addresses design authority not procurement
- [[KMDD Project]] — multiple TQs raised during DE phase; tracked as open engineering issues until CPY response received
- [[FEED Verification EPCI Contract]] — TQs frequently originate from FEED gaps identified during the 30/60-day verification obligation; CPY response may trigger Change Orders
- [[Offshore Firewater System Design]] — first Safety TQ on KMDD concerns firewater design pressure basis for SIPROD operations

### LDV-A TQ example (Jun-2026):
| TQ No. | Discipline | Subject | Priority | Status |
|--------|------------|---------|----------|--------|
| MCB-0005-10AA-G-A16-0010 Rev.A1 | Instrument/E&I | OT Network system installation | High | Awaiting COMPANY response (by 26-Jul-2026) |

## Source References

- [[KMDD Firewater Design Pressure TQ]] — TQ KDP-OOO-03-TQ-X-0001-(P); first Safety TQ on KMDD; SIPROD firewater design basis gap requiring PVD III Rig pressure data
- [[KMDD Methanol Pump Design Pressure TQ]] — TQ KDP-OOO-03-TQ-B-0003; 232 barg approved 01-Jun-2026; P-5345 simplex double 50 LPH at 195.4 barg MOP
- [[LDV-A OT Network TQ]] — TQ MCB-0005-10AA-G-A16-0010 Rev.A1; LDV-A project; OT cabinet installation scope; high priority; cost impact yes
- [[KMDD EPCI Engineering Weekly Meeting Week 8]] — full TQ register 02-Jun: structural/general/piping/electrical TQs added; TQ-B-0001 TQR delay flagged as blocking TBE/PO; well slot change to be implemented via TQR
