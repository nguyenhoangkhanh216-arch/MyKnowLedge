---
title: "KMDD Chemical Dosing Rate Finalization"
type: source
tags: [work, science]
created: 2026-06-09
updated: 2026-06-09
sources: 1
raw_file: "raw/emails/KMDD/2026-06-08 - RE [Ext] RE KMDD - Chemical Dosing Rate (PPD, SI, CI) & V-Jet Pigging Concept.md"
---

## Summary

A multi-party thread spanning April 15 – June 8, 2026 finalized the chemical dosing rates for KMDD (KM-WHP and DD-WHP). VSP Engineering Manager Vo Viet Hai formally accepted the updated rates on 08-Jun-2026. All rates deviate significantly from FEED basis — most critically, methanol injection increased from 50 L/h to 507.8 L/h (KM) and 560 L/h (DD), a 10×+ increase requiring a full equipment redesign.

## Key Points

**Final confirmed dosing rates (accepted by VSP 08-Jun-2026):**

| Chemical | FEED Basis | Updated Basis | Change | Equipment Impact |
|----------|-----------|---------------|--------|-----------------|
| **PPD / Wax Inhibitor** | 300 ppmv (oil) | **500 ppmv (oil)** | +67% | ↑24VDC power demand; ↑tank size and weight |
| **Scale Inhibitor (SI)** | 40 ppmv (total liquid) | **40 ppmv** (unchanged) + injection point moved upstream of choke | No rate change | Injection point redesign |
| **Corrosion Inhibitor (CI)** | 80 L/d (KM), 50 L/d (DD) | **80 L/d (KM)**, **130 L/d (DD)** | DD: +160% | ↑24VDC; ↑tank size at DD |
| **Methanol** | 50 L/h (KM), 31.3 L/h (DD) | **507.8 L/h (KM)**, **560 L/h (DD)** | KM: ×10.2; DD: ×17.9 | Triplex pump; separate pump skid; 7.5 kW motor; DOL acceptable |
| **V-Jet Pigging** | N/A | Both Double and Single Pig concept | New scope | ↑pig launcher length; minor layout |

**Chemical products:**
- PPD/Wax Inhibitor: Baker Hughes product PAO82004 (source: Baker Hughes study submitted ~Apr 2026)
- Corrosion Inhibitor: **CRO28022AP** (Baker Hughes)
- Scale Inhibitor: Product unchanged; injection point relocated upstream of choke

**Methanol pump specification (finalized):**
- Type: **Triplex** (not Simplex as in FEED)
- Flow capacity: 507.8 L/h (KM-WHP), 560 L/h (DD-WHP)
- Motor: **7.5 kW**, DOL starting acceptable
- The Simplex pump in FEED was grossly undersized for the updated hydrate inhibition requirement

**V-Jet pigging:**
- V-Jet concept accommodates both Double Pig and Single Pig pig trap designs
- Results in slightly longer pig launcher compared to conventional design
- Affects piping layout at pig trap area

**Responsibility dispute (PVEP-KM vs PTSC/PMC):**
- PVEP-KM (Nguyen Tuan Son, 09-May): "Chemical verification was delayed; PMC should have engaged suppliers earlier"
- PTSC response: Chemical supplier engagement is COMPANY's (PVEP-KM's) responsibility; PTSC supported on best-effort basis
- VSP (Vo Viet Hai) mediated and accepted the final rates on 08-Jun, effectively closing the dispute

**Parties involved:**
| Party | Role | Key person |
|-------|------|-----------|
| VSP (OCD/NIPI) | CTR; accepted the rates on 08-Jun | Vo Viet Hai (Engineering Manager) |
| PVEP-KM | CPY / COMPANY | Nguyen Tuan Son; Nguyen Khac Hung |
| PTSC M&C | Sub-CTR; compiled and presented data | Nguyen Van Tay; Nguyen Hoang Khanh |
| Baker Hughes | Chemical supplier; provided PAO82004 for PPD, CRO28022AP for CI | — |
| PMC | Owner's Engineer | Le Nguyen Trung Hung (Engineering Manager) |

**Timeline:**
- Apr 15: Baker Hughes submitted chemical dosing study
- May 9: PVEP-KM complained about delay; PTSC pushed back
- May–Jun: PTSC compiled rates into formal design basis update
- Jun 5: PTSC issued summary to PVEP-KM with final confirmed rates
- **Jun 8, 09:27**: VSP (Vo Viet Hai) accepted all rates with minor notes — design basis closed
- **Jun 8, 09:42**: VSP NIPI (Trương Minh Đức) confirmed support
- **Jun 8, 10:36**: PVEP-KM (Nguyen Khac Hung) formally accepted; directed VSP to conduct detailed CIS assessment per official letter Ref. 158-2026/DEV/PVEP-KM dated 05-Jun-2026
- **Jun 8, 11:05**: VSP (Vo Viet Hai) reiterated no technical objection to chemical selection/dosing rates; flagged operational/maintenance procedure clarification needed for Single/Double Pig selection
- **Jun 8, 16:16**: Nguyen Dinh Manh (PTSC) called **final alignment meeting: 09-Jun-2026, 8:00AM, Room 901 VSP OCD Office** (MS Teams also available)

## Connections

- [[Chemical Injection System Design]] — this thread is the definitive update to CIS design basis; all dosing rates supersede FEED
- [[KMDD Project]] — chemical dosing rates finalized; closes a long-running design basis uncertainty
- [[KMDD MEC-006 BCM2 Results 08Jun26]] — the updated methanol demand (507.8/560 L/h) is what drove CPY's request to combine CIS and MeOH skids; also explains the Triplex pump requirement
- [[KMDD Topside Weight Shedding Study]] — larger pumps and tanks directly contribute to the weight overrun that is driving the shedding study

## Source References

- [[KMDD Project]] — chemical dosing rates accepted by VSP 08-Jun-2026; methanol 10× increase; Triplex pump
- [[Chemical Injection System Design]] — PPD 500ppmv, CI 130 L/d (DD), MeOH 507.8/560 L/h confirmed
