---
title: "HIPPS Overpressure Protection"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-27
sources: 12
---

## Summary

A High Integrity Pressure Protection System (HIPPS) is a SIL-rated safety instrumented system that shuts off flow upstream of a lower-rated system before pressure can build to the lower system's design limit. HIPPS eliminates the need for full-bore pressure relief (PSV) on the protected system by providing a fast, reliable isolation — but the design of the HIPPS boundary and what downstream protection remains is a key HAZOP/SIL topic.

## Key Points

- **Function:** HIPPS detects high-high pressure (PAHH) upstream and closes isolation valves before downstream pressure reaches the protected system's design pressure
- **Advantage over PSV:** Eliminates need for large relief valves and associated flare load for high-pressure inventory; particularly useful where downstream piping is rated lower than upstream (900# vs 1500# for example)
- **Safety time:** HIPPS must close fast enough that downstream pressure never exceeds design pressure. The required safety time (PST) is calculated by HIPPS dynamic study.
- **HIPPS vs PSV downstream of HIPPS:**
  - API 14C requires PSV at downstream HIPPS for check valve leakage scenario
  - However, if HIPPS already limits max downstream pressure below the PSV setpoint would need to be, PSVs may be redundant
  - PSV setpoint must be set above operating pressure to avoid nuisance opening — if operating pressure is close to design pressure, PSV setpoint may need to be set above downstream equipment design pressure, which is contradictory
- **HIPPS bleed-off alternative:** Some designs use a HIPPS bleed-off line (open to flare/vent via XV when pressure reaches a setpoint below downstream design pressure) instead of PSV — proven design, used on Dai Nguyet WHP (Vietnam)
- **SIL requirement:** HIPPS is typically SIL 2 or SIL 3 depending on consequence and frequency. SIL assessment must be adequate — KMDD FEED HAZOP flagged as potentially underrating SIL requirements.

### KMDD case:
- d/s HIPPS design pressure: 133 barg (900# SS316 piping)
- HIPPS dynamic study: max d/s pressure 88.2 barg under worst credible scenario (Riser SDV closure)
- PMC concluded: PSV-1931A/B not required; HIPPS bleed-off via XV at 92 barg retained
- Go-by: Dai Nguyet WHP uses same configuration

### CPY HAZOP close-out feedback (04-Jun-2026):
- **Item 1 — PSV-1931A/B removal:** CPY "Agree in principle — PMC to provide full calculation in close-out sheet."
- **Item 2 — Replace bleed-off XV-1120 with 2×100% PSV downstream HIPPS:** CPY "Agree in principle — PMC to provide mark-up." Setpoints: 92 barg DD-WHP, 105 barg KM-WHP.
- Both items still require PMC to deliver calculation/mark-up before formal close-out

### INS-002 PRV Procurement (TBC#2 Rev.C, Jun 2026)

- **Package:** INS-002 Pressure Relief Valves — 5 bidders: KLE, TTE, Thanh An (TAD), An Phu Technologies, ATA; CA Category B
- **TBC#2 Rev.C issued 12-Jun-2026** simultaneously to all 5 bidders; deadline COB 15-Jun
- **All bidders responded by COB 15-Jun-2026:**
  - Thanh An (GE/Baker Hughes distributor) — confirmed lifting lug cert (IN17-Rev C) and gasket EN 10204 Type 3.1 (Q14-Rev C)
  - TTE — submitted sizing sheet + tag list (KM-DD R4-260612)
  - An Phu (Italian foundry Technical Srl) — submitted data sheet R6 + NORSOK-M-630 material data; additional R5 data set submitted 16-Jun
  - KLE — responded to TBC#2 Rev.B on 08-Jun prior to Rev.C; Rev.C response expected
  - ATA (Trillium Flow-France sub-supplier) — acknowledged Rev.C 12-Jun; committed to COB 15-Jun
- **Final submissions (23-Jun-2026):** An Phu submitted TBC#2 Rev.C final update (07:48) with updated Tag List-01 including HIPPS PSV tags rev06 + Technical Srl company profile + data sheet R6. KLE and Thanh An also submitted Rev.C on 23-Jun. **All 5 bidders have now completed TBC#2 Rev.C** — TBE can proceed for INS-002.
- **DSS ferrite content dispute (An Phu / Technical Srl) — RESOLVED 23-24 Jun:**
  - PTSC original spec: 45–55% ferrite; Italian foundry (Technical Srl) argued standard is 35–55% per NORSOK M-630; 45–55% "very unusual and narrow"
  - Metallurgical argument: higher ferrite (45–55%) reduces low-temp toughness; ~40–42% ferrite (more austenitic) gives better impact at -51°C
  - **Resolution (23-Jun PTSC response):** Ferrite 35–55% is acceptable; specimen-of-heat metallography is sufficient for each heat treatment batch
  - Supply basis: Technical Srl supplies DSS per **NORSOK MDS D46** (document submitted 24-Jun)
  - Dispute open 11–23 Jun = 12 days

- **KLE — HIPPS PSV capacity shortfall (24-Jun-2026):**
  - KLE submitted TBC#2 Rev.C on 23-Jun; PTSC reviewed 24-Jun
  - PTSC flagged: 4 HIPPS PSVs in KLE's proposal do NOT meet the required maximum relieving capacity per process datasheet
  - PTSC requested KLE feedback on how to address HIPPS PSV design update (resize or modify)
  - Status: **open** as of 24-Jun

## Connections

- [[KMDD HAZOP Items 1 2 9 HIPPS PSV]] — KMDD HAZOP findings on PSV removal and bleed-off line retention
- [[KMDD HIPPS Design Pressure Decision]] — 133 barg design pressure confirmed for d/s HIPPS
- [[Low Temperature Depressuring Design]] — rapid depressuring (including HIPPS closure) can cause low temperature
- [[KMDD-INS-002 Pressure Relief Valves]] — entity page for PRV package; full bidder tracking
- [[Offshore Piping Material Selection]] — ferrite content dispute involves DSS casting specification vs. low-temp toughness requirement

### HIPPS PSV scope change (Jun-2026):
- **HIPPS valve leakage PSVs reclassified as Base Scope** (was Optional Scope) on Jun 3, 2026
- 4 nos. HIPPS PSVs added to INS-002 Tag-list 01 — bidders must re-size and resubmit DS/GAD
- Scope change driven by requirement to cover leakage through HIPPS isolation valves as base case
- CA requirement: CAT C (ABS/LR/DNV/BV for overseas manufacture; Vietnam Register locally)

## Source References

- [[KMDD HAZOP Items 1 2 9 HIPPS PSV]] — KMDD dynamic study confirming max 88.2 barg, PSV removal proposal
- [[KMDD INS-002 HIPPS PSV Base Scope Addition]] — Jun 3 scope change: HIPPS PSV leakage to base scope
- [[KMDD HAZOP Close-out CPY Feedback]] — CPY "agree in principle" on PSV removal and PSV downstream HIPPS; calculation/mark-up still required
- [[KM-WHP HAZOP Study Report]] — Rec. 1: HIPPS bleed-off via XV-1100 vs PSV downstream; formal HAZOP origin of the design question
- [[DD-WHP HAZOP Study Report]] — Rec. 1: PSV-1931A/B sizing review; HIPPS 2-second isolation time may be sufficient without PSV
- [[KMDD INS-002 PRV TBC2 Rev.C Wave 12Jun26]] — TBC#2 Rev.C issued 12-Jun to all 5 bidders; ferrite spec dispute raised by An Phu
- [[KMDD INS-002 PRV TBC2 RevC Responses 15Jun26]] — all 5 bidders responded by COB 15-Jun; Thanh An confirmed IN17+Q14; ferrite dispute still open
- [[KMDD INS-002 An Phu TBC2 RevC Update 16Jun26]] — An Phu supplemental R5 data sheet submitted 16-Jun; TBC history summary
- [[KMDD INS-002 PRV TBC2 RevC Bidder Responses 23Jun26]] — An Phu final Rev.C with HIPPS PSV tags rev06 + Technical Srl profile; KLE and Thanh An also 23-Jun; all 5 bidders complete; ferrite metallurgical argument details (2026-06-24)
- [[KMDD INS-002 An Phu Duplex Ferrite Resolved 24Jun26]] — PTSC accepted 35–55% ferrite; metallography per heat batch; NORSOK MDS D46 supply basis confirmed (2026-06-25)
- [[KMDD INS-002 KLE HIPPS PSV Capacity 24Jun26]] — KLE HIPPS PSVs do not meet max relieving capacity; KLE requested to advise on design update (2026-06-25)
- [[KMDD Internal Process Meeting MOM 23Jun26]] — Item 2.3 PSV on KM FWS CLOSED; Item 2.10 CD pump NPSHa ongoing (2026-06-27)
