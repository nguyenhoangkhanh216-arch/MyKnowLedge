---
title: "KMDD MEC-006 IRCD Fail-Safe Dispute 15Jun26"
type: source
tags: [work, science]
created: 2026-06-16
updated: 2026-06-16
sources: 1
raw_file: "raw/emails/KMDD/2026-06-15 - RE KMDD-MEC-006 - Chemical Injection Package - TBC#2 Rev.C Response - DKE.md"
---

## Summary

A fail-safe philosophy conflict on the MEC-006 IRCD (Injection Rate Control Device) was identified on 15-Jun-2026. DKE's TBC#2 Rev.D response specifies fail-closed (valve closes on loss of power), while PVDT's TBC#2 Rev.C response specifies fail-last-position (valve holds its last position on loss of power). These are incompatible philosophies. Hoàng (PTSC Process/Instrument lead) asked Khoa (Corrosion/Chemical team) to clarify the correct approach and formulate a question for both bidders.

## Key Points

### The Conflict

| Bidder | IRCD fail-safe position | On power loss |
|--------|------------------------|---------------|
| **DKE** (TBC#2 Rev.D Update#1) | Fail-closed | Valve closes → injection stops |
| **PVDT** (TBC#2 Rev.C) | Fail-last-position | Valve holds → injection continues at last flow rate |

### Why This Matters for Continuous Injection
- CI (Corrosion Inhibitor), PPD (Pour Point Depressant), and SI (Scale Inhibitor) are **continuously injected**
- Fail-closed on power loss → injection stops → pipeline corrosion/scale/wax risk during power interruption
- Fail-last-position → injection continues at last set rate → safer for continuous injection philosophy
- PVDT's fail-last-position is generally more appropriate for continuous injection services
- However, fail-last creates risk if valve was fully open during an emergency (over-injection)

### IRCD Background (KMDD context)
- IRCD was originally specified as 24VDC electrically-actuated (remote)
- Changed to **manual type** on 04-Jun-2026 (MOM-005 decision) to resolve 24VDC platform power constraint
- The 15-Jun email references TBC#2 Rev.C (PVDT) and TBC#2 Rev.D (DKE) — these are later revisions discussing IRCD details beyond the manual/remote decision
- The fail-safe position applies to the actuated portion of the IRCD even in manual-mode setups

### Action (15-Jun)
- **Hoàng → Khoa:** Clarify correct fail-safe philosophy; determine if fail-closed or fail-last is compliant with KMDD project spec/philosophy
- **Next step:** Formulate a TBC question to both DKE and PVDT requiring them to align on the confirmed fail-safe position
- **TBC files attached in email:** TBC#2 Rev.C PVD Tech update + TBC#2 Rev.D DKE Update#1

## Connections

- [[KMDD-MEC-006 Chemical Injection Package]] — entity page for this package; IRCD dispute added
- [[Chemical Injection System Design]] — IRCD fail-safe philosophy affects injection mode design
- [[KMDD MEC-006 IRCD Power Supply Issue]] — prior IRCD issue (24VDC constraint, resolved Jun 4 with manual type)
- [[KMDD Project]] — procurement issues tracker

## Source References

- Raw email: `raw/emails/KMDD/2026-06-15 - RE KMDD-MEC-006 - Chemical Injection Package - TBC#2 Rev.C Response - DKE.md`
- Related: [[KMDD MEC-006 IRCD Power Supply Issue]] — earlier IRCD change from remote to manual type
