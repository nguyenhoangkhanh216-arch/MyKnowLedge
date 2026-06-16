---
title: "KMDD Methanol Pump Design Pressure TQ"
type: source
tags: [work, science]
created: 2026-06-05
updated: 2026-06-05
sources: 1
raw_file: "raw/documents/KMDD/KDP-OOO-03-TQ-B-0003-(P)-D0 TQ for Design Pressure of Methanol Injection Pump_KM Comment.md"
---

## Summary

TQ KDP-OOO-03-TQ-B-0003-(P) raised 22-May-2026 to resolve whether 232 barg (available from piping class 153410X) is acceptable for the KM-WHP methanol injection system discharge, rather than the calculated 234.5 barg (API 20% margin on MOP of 195.4 barg). COMPANY approved the 232 barg basis on 01-Jun-2026. Achieved margin is 18.73%, justified by intermittent service and existing PSV/PZAHH safeguards.

## Key Points

### Issue
- CITHP for KM-1P well increased during DE: 184.7 barg → **186.6 barg**
- Methanol pump discharge pressure (MOP): 193.34 → **195.4 barg** (186.6 + 7.0 barg quill loss + 1.8 barg static head)
- API 20% design margin on reciprocating pumps: 195.4 × 1.2 = **234.5 barg** required
- Piping class 153410X (SS316) max design pressure @ 65°C: **232 barg**
- Gap: 234.5 − 232 = **2.5 barg** shortfall; margin achieved = **18.73%** (vs. 20% required)

### Proposed Solution & COMPANY Approval
- Accept 232 barg design pressure (piping class 153410X unchanged)
- Justified by: intermittent service during start-up only, PSV at 232 barg, PIAH + PZAHH pressure switches, SDV closure on PZAHH
- COMPANY API standard Table 9-7: MOP + 10% for general equipment — already exceeded by current design
- 20% margin rule designed for blocked discharge protection — covered by PSV
- **COMPANY RESPONSE: Approved 01-Jun-2026** — consistent with DD-WHP design

### Pump and System Specifications (KM-WHP)

**Methanol Injection Pump P-5345:**
| Parameter | Value |
|-----------|-------|
| Type | Reciprocating simplex double |
| Capacity | 50 LPH |
| Suction pressure | 0.28 barg |
| Discharge pressure (MOP) | 195.4 barg |
| Design pressure (approved) | 232 barg |
| Power estimate | 0.90 kW |
| Pump efficiency | 30% (assumed) |
| Service | Intermittent (start-up only) |

**Methanol Tote Tank T-5341:**
| Parameter | Value |
|-----------|-------|
| Gross volume | 2.0 m³ (1.0 m × 1.0 m × 2.0 m H) |
| Working volume | 1.71 m³ (85%) |
| Operating pressure | 0.1 barg (N2 blanket) |
| Supply duration | ~30 min per well at 50 LPH |

**Methanol properties (98 wt% solution):**
- Density: 798.6 kg/m³; Viscosity: 0.57 cP; Vapor pressure: 0.130 bara
- NPSHa: 14.8 m liq.; Design margin: 1.0 m liq.

### Hydraulic Summary
- Suction: 35 m of 1" tubing → 5.07 kPa pressure drop
- Discharge: 25 m × 1" to injection quill (50 m total) → 703.3 kPa (includes 7 barg quill loss)
- Coriolis flow element: 150 kPa drop

## Connections

- [[Methanol Injection Hydrate Inhibition]] — design basis for methanol injection; pump specs and design pressure basis
- [[KMDD Project]] — CITHP increase 184.7→186.6 barg; TQ-B-0003 resolved; 232 barg approved
- [[Technical Query Process]] — TQ B-0003 is one of the KMDD TQ series; COMPANY approved 01-Jun-2026
- [[KM-WHP HAZOP Study Report]] — methanol tote N2 blanket safeguard (HAZOP Rec. 5) relates to same T-5341 tank

## Source References

- raw/documents/KMDD/KDP-OOO-03-TQ-B-0003-(P)-D0 — TQ form with hydraulic calculations; approved 01-Jun-2026
