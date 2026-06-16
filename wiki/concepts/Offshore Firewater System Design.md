---
title: "Offshore Firewater System Design"
type: concept
tags: [work, science]
created: 2026-06-04
updated: 2026-06-14
sources: 4
---

## Summary

Offshore wellhead platform firewater systems protect personnel and equipment during fire events and during Simultaneous Production and Drilling (SIPROD) operations. The ring main is kept dry under normal conditions and is filled on demand. The design pressure must be verified against the Drilling Rig's own firewater system to ensure compatibility at the tie-in connection.

## Key Points

- **Ring main is DRY during routine/normal operation** — filled on demand; reduces internal corrosion and simplifies routine maintenance
- **Sizing basis:** Maximum firewater demand from simultaneous operation of all fire monitors (KMDD: 3 monitors × 120 m³/hr)
- **Operating pressure at monitors:** 3.5 barg typical (KMDD); **Design pressure:** 16 barg (KMDD FEED basis — subject to verification against PVD III Rig)
- **Firewater supply sources (KMDD priority during drilling/SIPROD):**
  1. Drilling Rig firewater system — Main Deck tie-in (DN150, 6" 150#); primary source during SIPROD
  2. Marine Supply Vessel — Boat Landing East tie-in (Cellar Deck, DN150); secondary/backup
- **SIPROD critical dependency:** Rig is the firewater source during drilling — platform design pressure must match or be achievable from rig system; if rig pressure is insufficient a booster pump is added on the rig (not on the WHP)
- **Tie-in connections:** 6" 150# flanges at Drilling Rig and Marine Vessel connection points (KMDD FEED basis; under verification via TQ KDP-OOO-03-TQ-X-0001-(P))
- **Design basis rig:** Must be defined early in detailed engineering — KMDD uses PV Drilling III Jack-Up as basis per MOA DEV/2026/06 (13-Mar-2026)
- **Control valves:** Motor-operated XV valves at ring main tie-in points; normally closed; opened during SIPROD operation
- **Monitor orientation:** Locked pointing toward wellbay areas / escape routes to rig (safety design requirement)
- **Firewater piping material (KMDD):** Changed from GRE → CuNi 90/10 (confirmed May-2026, TQR issued to VSP) — see [[Offshore Piping Material Selection]]
- **CuNi stagnation constraint:** CuNi must not retain seawater stagnant >6–9 months (pinhole corrosion risk). CPY (PVEP-KM Le Van Dong) raised this concern on the KMDD TQR. PTSC response: routing design already avoids stagnant sections; short presentation provided 04-Jun-2026; **concern CLOSED 12-Jun-2026** — PVEP-KM Le Van Dong formally accepted the re-routing
- **CPY acceptance conditions (12-Jun-2026):** (1) Fabrication and installation must comply with design requirements to prevent stagnant water; (2) Pipe stress analysis must account for **sagging** of the piping system
- **TQR process friction (KMDD):** PTSC issued the GRE→CuNi TQR without prior draft review with CPY Sr. Piping Engineer; CPY required this consultation process for future TQRs
- **Flange design note:** 150# flange rating limits the system to ~16 barg design pressure; if rig system operates at higher pressure, flange upgrade may be required

## Connections

- [[KMDD Project]] — TQ KDP-OOO-03-TQ-X-0001-(P) raised Jun-2026 to verify 16 barg design pressure against PVD III Rig; response due 15-Jun-2026
- [[Offshore Piping Material Selection]] — firewater piping material changed GRE → CuNi 90/10 on KMDD; material selection affects ring main corrosion management
- [[Technical Query Process]] — firewater design pressure is an open TQ to COMPANY pending design basis confirmation
- [[HIPPS Overpressure Protection]] — both systems define platform design pressure envelope; HIPPS governs process side, firewater governs safety utility side

## Source References

- [[KMDD Firewater Design Pressure TQ]] — TQ KDP-OOO-03-TQ-X-0001-(P); P&ID data for both WHPs; MOA on PVD III rig basis; first Safety TQ on the KMDD project
- [[KMDD CuNi Firewater Material Justification]] — TQR with CPY stagnation concern; PTSC routing response; process friction on TQR draft review
- [[KMDD HAZOP Close-out CPY Feedback]] — Item 7: firewater ring main flowrate/pressure to be added to P&ID after TQ KDP-OOO-03-TQ-X-0001-(P) response
- [[KMDD CuNi Firewater Stagnation Accepted 13Jun26]] — ✅ CLOSED 12-Jun: CPY accepted re-routing; sagging pipe stress requirement added
