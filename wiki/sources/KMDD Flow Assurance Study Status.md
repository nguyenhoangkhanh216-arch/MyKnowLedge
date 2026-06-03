---
title: "KMDD Flow Assurance Study Status"
type: source
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 1
raw_file: "E:\\MyVault\\Emails\\KMDD\\NIPI\\2026-05-20 - RE [Ext] FW KMDD - Interface Channel Setup - Steady state results for ALL CASES.md"
---

## Summary

The Flow Assurance (FA) study for KMDD is conducted by NIPI (VSP subcontractor), using production profiles provided by PVEP-KM and simulation input from PTSC Process team via HYSYS. Steady state results are finalized (as of 19-May-2026). Transient analysis is pending final production profile input from PVEP-KM. Both reports are delayed due to frequent input data changes.

## Key Points

- **FA study performer:** NIPI (Vietsovpetro Research Institute for Oil & Gas, LD VSP)
- **Simulation tool:** HYSYS (PMC provides native HYSYS files as input)
- **Input basis agreed (14-May-2026):** Production Profile (Gas in MMscfd, Condensate in bpd, Water in bpd) — not rate-based
- **Error corrected mid-study:** Separator at BRA design pressure initially entered as 4.5 barg, corrected to 45 barg → required re-running several cases
- **Cases structure:** Multiple operating scenarios labeled KM1A/2A, DD1A/2A, KM3/DD3, KM4/DD4 (combinations of KM-WHP and DD-WHP production levels)
- **BRA sensitivity cases:** Coincide with cases KM1B & DD2B (confirmed by PMC check against COMPANY's 04-May-26 data)

**Schedule (as of 16-May-2026):**
- Steady state results: finalized; report IFR deadline: **16-Jun-2026**
- Transient analysis results: pending PVEP-KM's final production profile input; report IFR deadline: **23-Jun-2026**
- Original deadlines were 02-Jun and 09-Jun respectively — delayed by 2 weeks due to input data changes

**Root cause of delay:** Input data kept changing from PVEP-KM (production profiles updated as recently as 04-May-2026). NIPI absorbed changes but needs final frozen data to complete transient analysis.

**Interface protocol:** PMC (PTSC) ↔ PVEP-KM via TQs; PMC ↔ VSP/NIPI via IDRs; all through DCC system

**Corrosion study dependency:** NIPI's corrosion study result for PMC depends on FA steady state results (delivered ~2 working days after SS finalization = ~06-May-2026 per original plan)

## Connections

- [[KMDD Project]] — FA study is a critical deliverable for detail design; delays cascade to corrosion assessment and equipment sizing
- [[KMDD Pipeline Corrosion Baker Hughes]] — FA steady state results are direct input to corrosion risk assessment
- [[Low Temperature Depressuring Design]] — FA transient results also inform low-temperature design cases

## Source References

- Raw email thread: `E:\MyVault\Emails\KMDD\NIPI\2026-05-20 - RE [Ext] FW KMDD - Interface Channel Setup - Steady state results for ALL CASES.md`
