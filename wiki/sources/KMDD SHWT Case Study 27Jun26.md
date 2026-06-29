---
title: "KMDD SHWT Case Study 27Jun26"
type: source
tags: [work, science]
created: 2026-06-29
updated: 2026-06-29
sources: 1
raw_file: "raw/emails/KMDD/2026-06-27 - RE KMDD - SHWT Load Increase.md"
---

## Summary
PMC (Nguyen Dinh Manh) issued SHWT load case study results on 27-Jun-2026 following action item 7 from 23-Jun meeting. Two optimization cases studied. Both cases require 5 wind turbines (3kW) vs FEED 4 wind turbines (1kW). VSP (Vo Viet Hai) to arrange meeting at VSP office Monday (29-Jun or 30-Jun) with PVEP-KM.

## Key Points
- **FEED baseline:** Absorbed 5,714.81W | Daily 97,571.87 Wh/day | 96 solar (380W) | 4 wind turbines (1kW) | 4 battery boxes

- **Case 1 (updated load list, NO ICSS optimize, NO 15% margin, HVAC 24h):**
  - Absorbed: 7,822W
  - Daily: **114,612 Wh/day (+35% vs FEED)**
  - Solar: 96 × 380W (unchanged)
  - Wind turbines: **5 × 3kW** (vs FEED 4 × 1kW)
  - Battery boxes: 4 (unchanged)

- **Case 2 (updated load list, WITH ICSS optimize, NO 15% margin, HVAC 24h):**
  - Absorbed: 7,750W
  - Daily: **112,888 Wh/day (+33% vs FEED)**
  - Solar: 96 × 380W (unchanged)
  - Wind turbines: **5 × 3kW**
  - Battery boxes: 4 (unchanged)

- **PMC Optimization Proposal 1 (ICSS - Solution 1):** Spare I/O cards for Operation (30%) consume ~80W but I/O cards already cover 20% spare + all Future Well I/O. Proposal: ship-loose these cards to CPY for installation during operations as needed — do NOT install in cabinet now. Requires CPY decision.

- **PMC Optimization Proposal 2 (15% margin - Solution 2):** At detail design stage with actual vendor data, applying an additional 15% FEED margin is no longer justified. Each subsystem already has its own margin: ICSS 10%, HIPPS 30%, heat dissipation = full consumed power, HVAC runs 24h, CI Package sized for worst bidder. PMC proposes removing the blanket 15% FEED margin. Requires CPY decision.

- **VSP action:** Vo Viet Hai (VSP) to arrange meeting at VSP office for PVEP-KM, VSP, PMC to align on load basis and authorize SHWT bidder load updates.

- **PMC actions still open:**
  - Action 8: Working with bidders on >380W solar panels (Ex-certified); awaiting response
  - Action 9: Vendor to confirm metocean/NASA wind speed data for turbine sizing; awaiting response

## Connections
- [[Solar Hybrid Wind Turbine Power System]] — concept page; 27-Jun case study updates
- [[Chemical Injection System Design]] — CI Package load included in SHWT calculation
- [[KMDD Project]] — SHWT TBE still pending; load basis resolution critical

## Source References
- [[sources/KMDD SHWT Case Study 27Jun26]] — raw email 2026-06-27
- [[sources/KMDD SHWT Load Increase Action Items 24Jun26]] — 9 action items from 22-Jun meeting; Action 7 executed here
