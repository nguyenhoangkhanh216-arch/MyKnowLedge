---
title: "Solar Hybrid Wind Turbine Power System"
type: concept
tags: [work, science]
created: 2026-06-17
updated: 2026-06-29
sources: 4
---

## Summary

A Solar Hybrid Wind Turbine (SHWT) power system provides low-voltage DC power (typically 24VDC) to a platform's instrument and control loads using a combination of solar photovoltaic panels and small wind turbines. On unmanned or minimally-manned offshore wellhead platforms, SHWT avoids the need for a diesel generator running continuously just for instrument/telecom/ICSS loads. The SHWT system must be sized against the total 24VDC load list, which in detail engineering frequently grows beyond FEED estimates as actual vendor data replaces assumed values.

## Key Points

- **Purpose:** Provides 24VDC power to instruments, controls, ICSS, CCTV/Telecom, WHCP, chemical injection controls on offshore platforms
- **Composition:** Solar PV panels + wind turbine + battery bank (for night/low-wind periods) + charge controller + DC distribution board
- **Load basis:** 24VDC Load List — must capture every 24VDC consumer from every package (ICSS, WHCP, MEC packages, INS packages, Telecom, CCTV)
- **TBE criticality:** SHWT TBE (Technical Bid Evaluation) requires a finalized, "frozen" load list; premature TBE risks major scope changes after award
- **FEED vs. DE discrepancy risk:** FEED load list uses assumed values; DE replaces with actual vendor data, often higher than FEED — any increase can trigger resizing of solar panels, wind turbine capacity, battery bank, structural steel, and platform weight

### Common load list growth drivers in DE phase:
| Load source | Typical issue |
|---|---|
| ICSS | FEED uses simplified estimate; actual vendor DCS/SCADA much higher |
| WHCP | FEED assumes simple; actual solenoid + electronics load often higher |
| HVAC operating hours | FEED may assume 8h/day; actual 24h continuous → large multiplier |
| Telecom / CCTV | Network switches, routers, cameras often underestimated in FEED |
| Chemical Injection Package | IRCD, pumps, instruments all add 24VDC load |

### KMDD 16-Jun-2026 load increase event:
- **Overall load increase:** ~33% vs FEED basis (at 15-Jun-26 load review cut-off, excluding ICSS)
- **ICSS (DD-WHP, unofficial):** 3,045 W vs FEED 1,567 W — almost double
- **Key driver:** HVAC revised from 8h/day (FEED) to 24h/day continuous (DE) — pending PVEP-KM validation
- **Impact assessed by PMC (Nguyen Dinh Manh):** May require major changes to solar panel/wind turbine arrangement, equipment sizing, platform layout, and weight — cannot absorb without formal change control
- **Actions:** 24VDC Load List (DD-WHP, 16-Jun version) sent to VSP; ICSS draft power calc shared; HVAC sizing calc promised for 17-Jun; meeting requested 17-Jun at 09:00 with VSP/PVEP-KM

### Design consequence chain:
1. Load list grows → SHWT rating must increase
2. SHWT rating increase → more solar panels and/or larger wind turbine
3. More panels → larger support structure, bigger footprint on deck
4. Larger support structure → more weight → topside weight budget impact
5. Weight impact → potential conflict with topside crane lift capacity (already critical on KMDD)

### KMDD 27-Jun-2026 case study results:

| Parameter | FEED | Case 1 (no optimize) | Case 2 (ICSS optimized) |
|---|---|---|---|
| Absorbed load | 5,714.81 W | 7,822 W | 7,750 W |
| Daily energy | 97,572 Wh/day | 114,612 Wh/day (**+35%**) | 112,888 Wh/day (**+33%**) |
| Solar panels | 96 × 380W | 96 × 380W | 96 × 380W |
| Wind turbines | 4 × 1kW | **5 × 3kW** | **5 × 3kW** |
| Battery boxes | 4 | 4 | 4 |

- **Bottom line:** Even with optimization, SHWT requires 5 wind turbines at 3kW each — vs FEED 4 turbines at 1kW. This is a **significant equipment and weight/layout change** regardless of optimization choice.
- **PMC Proposal 1 (ICSS):** Spare I/O cards (30%) ship-loose to CPY for installation during operations; removes ~80W from installed load. Requires CPY decision.
- **PMC Proposal 2 (15% margin removal):** FEED's 15% overall margin no longer applicable at detail engineering stage; each subsystem already has individual design margins (ICSS 10%, HIPPS 30%, CI worst-case bidder, HVAC 24h). Requires CPY decision.
- **Next step:** VSP (Vo Viet Hai) to arrange alignment meeting with PVEP-KM and PMC at VSP office (week of 29-Jun/30-Jun).
- **Still pending:** Solar panels >380W with Ex-certification (Action 8); wind speed basis per metocean/NASA from vendor (Action 9).

## Connections

- [[KMDD Project]] — SHWT is ELE-001 package on KMDD; TBE targeted mid-Jun-2026
- [[Topside Weight Management]] — SHWT sizing directly feeds into weight budget; KMDD already has +92.1 MT overrun on DD-WHP; 5×3kW wind turbines will add further weight/layout impact
- [[KMDD HVAC Instrumentation Shelter Heat Load]] — HVAC operating hours assumption is a critical SHWT load driver
- [[KMDD WHCP ICSS EDMS Review Setup 15Jun26]] — ICSS load (unofficial) raised as critical 16-Jun
- [[KMDD SHWT Load Increase 16Jun26]] — source email with full load increase data

## Source References

- [[KMDD SHWT Load Increase 16Jun26]] — SHWT 33% load increase flag; 16-Jun-2026 critical issue; meeting 17-Jun
- [[KMDD SHWT Load Increase 18Jun26]] — PPD pump IRCD confirmed 24VDC remote; loads missing from load list
- [[KMDD SHWT Load Increase 20Jun26]] — CI package 11% of SHWT overrun; meeting 22-Jun
- [[KMDD SHWT Load Increase Action Items 24Jun26]] — 9-action register from 22-Jun meeting; cut-off 24-Jun; Action 7 = PMC update load and send to bidders
- [[KMDD SHWT Case Study 27Jun26]] — case study results 27-Jun: Case 1 +35% / Case 2 +33%; 5×3kW wind turbines needed
