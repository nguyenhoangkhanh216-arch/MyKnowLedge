---
title: "KMDD Methanol Pump Capacity Upgrade"
type: source
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 1
raw_file: "E:\\MyVault\\Emails\\KMDD\\2026-05-13 - RE [Ext] RE KMDD - Methanol Injection Pump maximum flowrate available.md"
---

## Summary

Detailed engineering study confirmed feasible methanol pump upgrades for KM-WHP and DD-WHP, constrained by EDG power limit (max 18 kW motor). PVEP-KM requested capacity upgrades to enable 30% (KM) and 50% (DD) start-up flow rates. Triplex pump type selected as it achieves required capacity within the 7.5 kW motor power limit. Vendor landscape: only PVD Tech offers compliant triplex pump; DKE and POS offer simplex pumps with 15–18.5 kW motors (exceeds EDG limit).

## Key Points

### Final Selected Configuration:

| Platform | Start-up Rate | Pump Capacity | Diff. Pressure | Motor Power | Pump Type | Status |
|---|---|---|---|---|---|---|
| KM-WHP | 30% | 507.8 L/h | 193 bar | 7.5 kW (DOL) | Triplex | Acceptable |
| DD-WHP | 50% | 560.8 L/h | 190 bar | 7.5 kW (DOL) | Triplex | Acceptable |

### Why triplex over simplex:
- Simplex at 30% KM-WHP: 15 kW → needs soft starter, within EDG limit but less preferred
- Simplex at 50% DD-WHP: 15 kW → acceptable but soft starter required
- **Triplex at all cases: 7.5 kW → DOL acceptable, no soft starter needed** — preferred option
- Triplex pumps run three plungers at lower individual stroke → smoother flow, lower peak power

### N2 pressurization alternative:
- Pressurizing flowlines with N2 before well start-up can reduce methanol requirement
- Cost: ~8 nitrogen bottle racks (16 bottles/rack, each 49.6L @ 200 barg) per black start-up
- Operationally inconvenient; treated as secondary option

### Vendor situation (as of 02-Jun-2026):
- **PVD Tech:** Only bidder offering triplex pump with 7.5 kW motors ✓
- **DKE:** Simplex pump with 15 kW motor — may exceed EDG capacity
- **POS:** Simplex pump with 18.5 kW motor — exceeds EDG capacity

### Context:
- Original FEED: KM 50 L/h, DD 31.3 L/h — allowed only 3% start-up flow rate
- PVEP-KM target was ~600 L/h (verbally estimated early in project)
- Final agreed: KM 507.8 L/h (30%), DD 560.8 L/h (50%) — TQ issued to COMPANY for confirmation

## Connections

- [[Methanol Injection Hydrate Inhibition]] — this source provides the final pump capacities resolving the open issue
- [[KMDD Chemical Dosing Rate Decisions]] — methanol rates and triplex pump confirmed in same 13-May meeting
- [[KMDD MEC-006 Chemical Injection Package Status]] — pump type selection directly impacts MEC-006 procurement

## Source References

- Raw email: `E:\MyVault\Emails\KMDD\2026-05-13 - RE [Ext] RE KMDD - Methanol Injection Pump maximum flowrate available.md`
