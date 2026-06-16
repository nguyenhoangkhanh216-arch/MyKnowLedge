---
title: "Equipment Tagging and Numbering"
type: concept
tags: [work]
created: 2026-06-16
updated: 2026-06-16
sources: 1
---

## Summary

Equipment tagging (also called instrument tag numbering or equipment numbering) is the systematic naming scheme used to uniquely identify every piece of equipment, instrument, valve, and package on an offshore platform. Tags appear on P&IDs, data sheets, equipment lists, procurement documents, and instrument loops. A consistent tag numbering procedure, agreed between COMPANY and Contractor, must be established early in Detailed Engineering and confirmed before deliverables are issued.

## Key Points

### Standard tag format (offshore instrumentation, ISA-5.1 / project-specific)

A typical instrument tag has the structure:
```
[Function Letters]-[Loop Number]-[Suffix]
e.g.,  PT  -  2001  -  A
       (Pressure Transmitter, Loop 2001, unit A)
```

For equipment (pumps, vessels, packages), tags often follow:
```
[Equipment Type]-[System Number]-[Item Number]
e.g.,  P  -  5001  A/B  (Pumps in CI system)
```

### Multi-platform numbering (KMDD convention)

Where a single project covers multiple platforms, the tag numbering procedure must distinguish which platform each item belongs to:

**KMDD project — KDP-OOO-00-PS-G-0003 Rev B2:**
- **"01"** embedded in item number = **KM-WHP** equipment
- **"02"** embedded in item number = **DD-WHP** equipment
- Two additional digits in the item number carry the platform code
- Example:
  - `RLR-81-0101` → KM-WHP, Relief Valve, item 01
  - `RLR-81-0201` → DD-WHP, Relief Valve, item 01
- This allows all instruments and equipment across both platforms to share one numbering space while remaining unique and platform-identifiable

### Why confirmation matters
- Equipment tags propagate into ALL engineering deliverables: P&IDs, datasheets, MEL, instrument index, cable schedules, hazardous area classifications
- Tags issued before COMPANY confirmation may need mass revision — impacts schedule and introduces error risk
- COMPANY (or Owner's Engineer) must formally confirm the tag procedure before IFR/IFA deliverables are issued

### Common tag document types
| Document | Purpose |
|----------|---------|
| **Equipment Tagging & Numbering Procedure** | Defines the format, platform codes, and numbering rules |
| **Master Equipment List (MEL)** | Complete list of all tagged equipment items; IDC milestone |
| **Instrument Index** | All instrument tags with service description, P&ID reference, loop number |
| **Tag List** | Package-specific list of tags; submitted by vendors in TBC for compliance confirmation |

## Connections

- [[KMDD Project]] — confirmed KDP-OOO-00-PS-G-0003 Rev B2 for dual-platform tag numbering
- [[KMDD Equipment Tagging Procedure Confirmed 15Jun26]] — COMPANY confirmation 15-Jun-2026
- [[KMDD Master Equipment List IDC 15Jun26]] — MEL issued for IDC using confirmed tag convention
- [[Technical Bid Clarification Process]] — vendors submit Tag Lists during TBC to confirm tag-by-tag compliance

## Source References

- [[KMDD Equipment Tagging Procedure Confirmed 15Jun26]] — PVEP-KM confirmed "01"=KM-WHP, "02"=DD-WHP per KDP-OOO-00-PS-G-0003 Rev B2 (2026-06-15)
