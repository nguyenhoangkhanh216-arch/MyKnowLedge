---
title: "KMDD MEC-006 IRCD Power Supply Issue"
type: source
tags: [work]
created: 2026-06-04
updated: 2026-06-04
sources: 1
raw_file: "raw/emails/KMDD/2026-06-03 - KMDD-MEC-006 - Chemical Injection Package - TBC#2 Rev.C - PVDT.md"
---

## Summary
PTSC raised a new technical question to bidder PVDT regarding the IRCD (Injection Rate Control Device) power supply requirement. The IRCD units require 24VDC at 80W each, with 6 units per platform — a total 24VDC load that may exceed platform system capacity. PTSC is asking whether VAC supply is feasible as an alternative.

## Key Points
- **Issue**: IRCD requires 24VDC, 80W/unit × 6 units per platform = 480W total 24VDC load per platform.
- **Platform 24VDC limitation**: Platform 24VDC power system may not accommodate this load.
- **PTSC question to PVDT (TBC#2 Rev.C)**:
  1. Can IRCD be supplied from VAC power instead of direct 24VDC?
  2. If VAC is feasible, is the IRCD suitable for direct VAC input, or is an internal AC/DC PSU needed inside the skid?
  3. Bidder to update Utility Requirement List (supply voltage, frequency, power consumption) and identify any cost/schedule impact.
- **Context**: This is a late-stage technical query during TBC#2, meaning if VAC is not feasible, the platform power distribution design may need to be revisited.
- **TBC#3 Rev.B**: Separate summarization email sent Jun 3 to internal team for review; team response required by 16:30 Jun 4.

## Connections
- [[Chemical Injection System Design]] — IRCD is a key component of the chemical injection skid
- [[KMDD MEC-006 Chemical Injection Package Status]] — parent source tracking overall MEC-006 status
- [[KMDD Project]] — MEC-006 is the most active package (176 emails)

## Source References
- [[KMDD MEC-006 Chemical Injection Package Status]] — overall MEC-006 TBC status this source updates
- [[Chemical Injection System Design]] — IRCD power constraint informs CI system design knowledge
