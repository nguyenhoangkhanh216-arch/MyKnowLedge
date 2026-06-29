---
title: "SIL Classification"
type: concept
tags: [work, science]
created: 2026-06-04
updated: 2026-06-17
sources: 4
---

## Summary

Safety Integrity Level (SIL) Classification is a formal process to determine the required integrity level (SIL 1, 2, 3, or 4) for Safety Instrumented Functions (SIFs) in a process plant. It is performed by a third-party safety consultant as part of the HAZID-HAZOP-SIL studies package and results in a SIL Classification Report that defines the required reliability for each safety loop. Higher SIL levels require more redundancy and stricter testing intervals.

## Key Points

- **Standard:** IEC 61511 (process industry) / IEC 61508 (general functional safety)
- **SIL levels:** SIL 1 (lowest) to SIL 4 (highest); offshore oil & gas rarely goes above SIL 3
- **Process:**
  1. Identify Safety Instrumented Functions (SIFs) — e.g., HIPPS actuation, ESD valves, fire/gas detection
  2. Determine hazard scenarios and target risk reduction via LOPA (Layer of Protection Analysis) or risk matrix
  3. Assign required SIL level to each SIF
  4. Assess whether the proposed instrument loop meets the SIL target (PFD/PFH calculations)
- **Output:** SIL Classification Report — register of all SIFs with required and achieved SIL levels
- **Review milestones:** IFR (Issued for Review) → IDC comments → Official Issue
- **Third-party consultant required:** Cannot be done by the engineering contractor alone on offshore EPCI projects — must be an independent certifier (e.g., Risktec, TUV, DNV, ABS, etc.)
- **Integration with HIPPS:** High-demand HIPPS loops typically require SIL 2 or SIL 3 — drives redundancy design of initiators and final elements
- **KMDD:** Risktec performing SIL Classification; IFR submitted 04-Jun-2026 incorporating IDC comments from Cao Thành Nhật and Nguyễn Ngọc Công; official issue planned 05-Jun-2026
- **KMDD Milestone #2 submitted 09-Jun-2026:** Risktec (Andrea Tria) submitted signed completion certificate + IVC-RISKTEC-LS-001 for Milestone #2; requesting client approval for next 20% payment tranche under contract 013-2025/PTSCMC/KM-DD/S-A
- **KMDD MLS.02 payment cert forwarded 16-Jun-2026:** Thảo submitted 2nd Milestone Completion Certificate to cost controller Ninh for payment processing; supporting files saved at `\\192.168.49.4\kmdd-bda\...\SAF\1. KMDD_HAZID+HAZOP+SIL reference\Completion Cert\2nd`
- **Payment terms:** 45-day independent basis — payment is NOT conditioned on COMPANY paying PTSC (pay-when-paid clause was disputed and resolved during contract negotiation; subcontract signed April 2026)

## Connections
- [[HIPPS Overpressure Protection]] — HIPPS loops are among the most safety-critical SIFs, often requiring SIL 2–3
- [[KMDD Project]] — SIL Classification is a required deliverable under KMDD HAZID-HAZOP-SIL safety studies scope
- [[KMDD SIL Classification IFR Jun 4]] — Risktec IFR submitted with IDC comments incorporated; official issue 05-Jun
- [[KMDD Safety Studies Contract Pending]] — contract context: CBE done, BOD signature pending; Risktec is performing the study
- [[KMDD HAZID HAZOP SIL MLS2 Payment 16Jun26]] — MLS.02 cert forwarded to cost controller 16-Jun; payment procedure and terms detail

## Source References
- [[KMDD SIL Classification IFR Jun 4]] — Risktec submitted IFR 04-Jun-2026
- [[KMDD Hazid Hazop SIL Milestone 2]] — Milestone #2 completion certificate submitted 09-Jun-2026; 20% payment invoice triggered
- [[KMDD Scope of Work HAZID HAZOP SIL]] — LOPA methodology per IEC 61508/61511; scope covers all SIFs on KM-WHP and DD-WHP; 3 working days allocated
- [[KMDD HAZID HAZOP SIL MLS2 Payment 16Jun26]] — MLS.02 payment cert forwarded 16-Jun; 45-day independent payment terms; contract lifecycle summary (2026-06-17)
