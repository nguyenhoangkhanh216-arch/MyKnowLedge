---
title: "KMDD Choke Valve PDS and Methanol Pump Sizing"
type: source
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 1
raw_file: "E:\\MyVault\\Emails\\KMDD\\2026-03-30 - RE KMDD - PDS for Choke Valves - IFR.md"
---

## Summary

Process team issued the official IFR choke valve process datasheets for both KM-WHP and DD-WHP. The key open issue is minimum flowrate during cold well start-up, which directly drives methanol injection pump sizing. Current pump capacities are too small to allow anything above ~3% of normal well flow during start-up — COMPANY wants to increase both pump capacity and start-up flowrate, but capacity is constrained by DEG electrical load.

## Key Points

- **Documents issued (IFR):**
  - KDP-DDA-03-DS-B-0005-D0 — DD-WHP Process Datasheet for Choke Valve
  - KDP-KMA-03-DS-B-0005-D0 — KM-WHP Process Datasheet for Choke Valve
- **Current methanol pump capacities:** KM-WHP 50 L/h, DD-WHP 31.3 L/h
- **Problem:** At these capacities, allowable well flow during cold start-up = ~3% of normal → too restrictive for COMPANY operations
- **COMPANY position:** Wants to increase both pump capacity and start-up flowrate; verbally estimates ~600 L/h achievable given DEG electrical load limits
- **Pump constraint:** Methanol injection pumps are plunger-type with adjustable stroke; vendor usually rates at ~90% stroke, so increasing capacity requires a new pump model, not just adjustment
- **Sizing approach (PTSC proposed):** Forward approach — determine acceptable % choke valve opening for sizing, use FEED flow assurance data to estimate warm-up time, then derive required methanol rate → agree with COMPANY on optimized value
- **MEC team note:** "Forward approach" (COMPANY defines requirement → PTSC meets it) is the right method; "reverse approach" is vague and unworkable
- **Next step:** INS team to check minimum flowrate of choke valve for cold start-up case and define minimum methanol pump capacity required

## Connections

- [[Methanol Injection Hydrate Inhibition]] — this email is the key source for KMDD methanol pump sizing constraints
- [[KMDD Project]] — pump capacity is one of the critical FEED verification items
- [[KMDD FEED Punch List Key Findings]] — methanol pump cold start-up issue is explicitly listed as FEED finding #3

## Source References

- This page IS the source summary — raw email at `E:\MyVault\Emails\KMDD\2026-03-30 - RE KMDD - PDS for Choke Valves - IFR.md`
