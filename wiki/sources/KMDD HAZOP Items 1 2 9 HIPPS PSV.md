---
title: "KMDD HAZOP Items 1 2 9 HIPPS PSV"
type: source
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 1
raw_file: "E:\\MyVault\\Emails\\KMDD\\2026-05-27 - KMDD - HAZOP Item #1 - Review the requirement of PSV-1931AB at KM FWS Header on DD-WHP (sizing for c.md"
---

## Summary

Two HAZOP items raised during the HAZID/HAZOP/SIL workshop (RISKTEC TUV) regarding overpressure protection downstream of HIPPS on DD-WHP. PMC conducted a HIPPS dynamic study and concluded: (1) PSV-1931A/B are not required and should be removed, and (2) the existing HIPPS bleed-off line via XV is the preferred design over a PSV option. Both items awaiting COMPANY confirmation as of 27-May-2026.

## Key Points

### HAZOP Item #1: PSV-1931A/B at KM FWS Header on DD-WHP

**Question:** Is PSV-1931A/B (sized for check valve leakage) required? HIPPS isolates in 2s — may be sufficient.

**HIPPS Dynamic Study Results (DD-WHP, d/s HIPPS to 133 barg threshold):**
| Scenario | PST (PAHH to 133 barg) | Max Press d/s HIPPS | Status |
|---|---|---|---|
| Manual ball valve closure | 11.7 s | 91.4 barg | Manual valves now LO/ILO |
| Riser SDV closure | 17.8 s | 88.2 barg | |

**Conclusion:** Max pressure never reaches 92 barg (design pressure of KM FWS Header). Overpressure from reverse flow to KM FWS Header is NOT credible. **PMC proposes: Remove PSV-1931A/B.** Status: awaiting COMPANY feedback.

### HAZOP Items #2 (DD-WHP) / #9 (KM-WHP): HIPPS bleed-off line vs PSV

**Question:** Compare HIPPS bleed-off line via XV-1120 to vent vs. PSV option downstream HIPPS.

**PSV option disadvantages:**
1. PSV setpoint must be >92 barg (to avoid leakage at operating pressure, since pilot PSV not suitable for waxy fluid) → reverse flow from DD-WHP to KM FWS Header becomes credible → requires additional PSVs at KM FWS Header
2. PSV set <133 barg on 133 barg-designed system is inconsistent (confusing, non-standard)

**PMC recommendation: Retain HIPPS bleed-off line with XV, set to open at 92 barg**
- Eliminates need for additional PSVs at KM FWS Header
- Proven design: go-by reference = **Dai Nguyet WHP** (same configuration)
- Status: awaiting COMPANY feedback

## Connections

- [[KMDD HIPPS Design Pressure Decision]] — HIPPS design pressure 133 barg is the foundation of this analysis
- [[KMDD Project]] — these are HAZOP action items awaiting COMPANY response
- [[HIPPS Overpressure Protection]] — concept page on HIPPS-based protection philosophy

## Source References

- Raw emails:
  - `E:\MyVault\Emails\KMDD\2026-05-27 - KMDD - HAZOP Item #1 - Review the requirement of PSV-1931AB...md`
  - `E:\MyVault\Emails\KMDD\2026-05-27 - KMDD - HAZOP Item #2, #9 - Review the configuration of HIPPS...md`
