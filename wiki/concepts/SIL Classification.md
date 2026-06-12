---
title: "SIL Classification"
type: concept
tags: [work, science]
created: 2026-06-04
updated: 2026-06-04
sources: 1
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

## Connections
- [[HIPPS Overpressure Protection]] — HIPPS loops are among the most safety-critical SIFs, often requiring SIL 2–3
- [[KMDD Project]] — SIL Classification is a required deliverable under KMDD HAZID-HAZOP-SIL safety studies scope
- [[KMDD SIL Classification IFR Jun 4]] — Risktec IFR submitted with IDC comments incorporated; official issue 05-Jun
- [[KMDD Safety Studies Contract Pending]] — contract context: CBE done, BOD signature pending; Risktec is performing the study

## Source References
- [[KMDD SIL Classification IFR Jun 4]] — KMDD implementation: Risktec submitted IFR 04-Jun-2026
