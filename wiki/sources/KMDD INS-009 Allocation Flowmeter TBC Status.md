---
title: "KMDD INS-009 Allocation Flowmeter TBC Status"
type: source
tags: [work, science]
created: 2026-06-09
updated: 2026-06-09
sources: 1
raw_file: "raw/emails/KMDD/2026-06-08 - RE KMDD-INS-009 - Allocation and Well Test Flowmeter - TBC - Bao Nghi.md"
---

## Summary

KMDD-INS-009 covers Allocation and Well Test Flowmeters for KM-WHP and DD-WHP. Two active bidders as of 08-Jun-2026: Bao Nghi (proposes McMenon/TÜV SÜD) and Nhan Viet ICS (proposes McCrometer V-Cone). Both submitted TBC#3 and are at the commitment letter stage for third-party wet lab calibration. A critical technical issue with Nhan Viet's proposal: the required turndown ratio for Z-3420 (611:1) far exceeds V-Cone capability (28:1).

## Key Points

**Package overview:**
- Package: KMDD-INS-009 Allocation and Well Test Flowmeter
- Tags in scope: Z-3430 (KM-WHP Allocation), Z-3420 (DD-WHP Well Test), Z-3410 (DD-WHP Allocation) — 10" size per the 3rd-party calibration reference
- PTSC Instrument Engineer: Nguyen Thanh Son (sonnt1@ptsc.com.vn)
- Commercial buyer: Ta Thi Minh Hoa (hoattm@ptsc.com.vn)

**Bidder 1: Bao Nghi Technique Service (Bao Nghi)**
- Contact: Đặng Kim Ngân (ngandtk@baonghi.com.vn)
- Proposed flowmeter manufacturer: **McMenon** (V-Cone type)
- Proposed calibration lab: **TÜV SÜD National Engineering Laboratory (UK)** — wet gas calibration
- TBC history: TBC#1 (13-May BCM) → TBC#2 (18-May deadline) → TBC#3 (03-Jun) → commitment letter pending
- 08-Jun status: PTSC reminded 08-Jun; Bao Nghi confirmed working on lab commitment letter
- Form T3 updated: TÜV SÜD NEL listed as calibration subcontractor (No. 12)

**Bidder 2: Nhan Viet ICS JSC**
- Contact: Kate Nguyen (khanh.nguyen@nvicsco.com)
- Proposed flowmeter manufacturer: **McCrometer** (V-Cone type, USA factory)
- Proposed calibration lab: Working with 3rd-party lab (identity not confirmed as of 08-Jun)
- TBC history: TBC#1 (13-May BCM, 9:30-11:00 AM) → TBC#2 (18-May deadline) → TBC#3 (03-Jun) → commitment letter pending
- 08-Jun status: Kate Nguyen confirmed "working with Lab on this"
- Additional technical proposal: Multi-variable DP transmitter option (combined DP + gauge pressure, no separate pressure tap)

**Critical technical issue — Nhan Viet Z-3420 turndown:**
| Tag | Required Turndown | V-Cone Capability | Gap |
|-----|------------------|------------------|-----|
| Z-3430 | 15:1 | 47:1 | ✅ Compliant |
| **Z-3420** | **611:1** | **28:1** | ❌ **Non-compliant** — required TD exceeds V-Cone by 22× |
| Z-3410 | 39:1 | 43:1 | ✅ Compliant |

- Z-3420 has 611:1 turndown requirement driven by very low minimum flow (85 kg/hr) vs maximum (51,964 kg/hr)
- V-Cone can only achieve 28:1 — this is a fundamental non-compliance that Nhan Viet has not addressed
- Nhan Viet may need an additional DP transmitter or a different meter technology for Z-3420

**Wet gas accuracy concern:**
- Z-3430 and Z-3410: Froude Number between 5 and 10 → special wet gas correction required → ±3.5% accuracy
- Z-3420: Standard ±2% accuracy
- PMC/VSP may require tighter accuracy specification for allocation metering

**PTSC requirement outstanding as of 08-Jun:**
1. Confirmation letter from McCrometer/McMenon re V-Cone Flowmeter turndown ratio
2. **Commitment letter from Third Party Wet Lab Calibration laboratory** confirming slot booking for 10" Allocation Flowmeter

**Timeline:**
- Apr 28: Initial TBC sent (BCM scheduled 13-May)
- May 13: BCM held with both bidders simultaneously
- May 19: Deadline for TBC#1 & TBC#2 responses
- Jun 3: Bao Nghi submitted TBC#3; Nhan Viet submitted TBC#3
- Jun 4: PTSC sent reminder + added commitment letter requirement
- **Jun 8: Both bidders confirmed working on commitment letters**

## Connections

- [[KMDD Project]] — INS-009 is an active instrument package; calibration lab commitment letter outstanding
- [[Technical Bid Clarification Process]] — TBC#3 round; BCM held; commitment letters required before TBE
- [[KMDD TBC Snapshot 08Jun26]] — INS-009 active on 08-Jun; both bidders at commitment letter stage

## Source References

- [[KMDD Project]] — INS-009 Allocation Flowmeter; two bidders at TBC#3; calibration lab commitment pending
- [[Technical Bid Clarification Process]] — wet lab calibration requirement for fiscal metering; 3rd-party lab slot booking pre-award
