---
title: "Methanol Injection Hydrate Inhibition"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 3
---

## Summary

Methanol (or MEG) is injected upstream of choke valves during well start-up to prevent hydrate formation. Hydrates form when gas contacts liquid water at low temperature and high pressure — exactly the conditions downstream of a choke during cold start-up. The methanol injection rate must be high enough to shift the hydrate formation curve below the flowing conditions, but is constrained by pump capacity, available power (DEG load), and the choke valve's minimum controllable flowrate.

## Key Points

- **Why methanol at start-up:** During cold well start-up, gas flowing through the choke expands rapidly (Joule-Thomson cooling) → temperature drops below hydrate formation temperature → risk of hydrate plugging downstream pipework
- **Design basis:** Methanol pump must supply enough methanol to inhibit hydrates for the range of start-up flowrates achievable through the choke
- **Choke valve constraint:** If methanol pump capacity is low, the minimum choke opening (minimum well flowrate) during start-up must also be very low, restricting production ramp-up
- **KMDD specific values — FEED (original):**
  - KM-WHP: 50 L/h → start-up limited to ~3% of normal flow
  - DD-WHP: 31.3 L/h → start-up limited to ~3% of normal flow
- **KMDD specific values — DE confirmed (May-2026):**
  - KM-WHP: **507.8 L/h** (triplex pump, 7.5 kW DOL motor, 30% start-up rate)
  - DD-WHP: **560.8 L/h** (triplex pump, 7.5 kW DOL motor, 50% start-up rate)
  - TQ issued: KDP-OOO-03-TQ-B-0004 for COMPANY confirmation
- **Pump type selection:** Triplex preferred over simplex because triplex achieves required capacity at 7.5 kW (within EDG limit), vs. simplex which needs 15–18.5 kW; only PVD Tech offers compliant triplex pump among bidders
- **Pump technology:** Plunger-type variable-stroke pumps; triplex = 3 plungers → smoother flow, lower peak power vs. simplex
- **Alternative:** N2 pressurization of flowlines before well start-up (prevents hydrate by excluding water) — uses ~8 bottle racks (16 bottles/rack @ 200 barg) per start-up; operationally inconvenient
- **Power constraint:** Max 18 kW motor per DEG electrical load list; triplex at 7.5 kW is well within limit

## Connections

- [[Low Temperature Depressuring Design]] — related low-temperature scenario (depressuring vs. start-up cooling — different mechanisms, both affect material and equipment selection)
- [[KMDD Project]] — methanol pump upgrade now confirmed; was one of the four critical FEED findings
- [[KMDD Choke Valve PDS and Methanol Pump Sizing]] — original FEED pump capacity constraints
- [[KMDD Methanol Pump Capacity Upgrade]] — detailed pump sizing study with EDG power constraint analysis
- [[KMDD Chemical Dosing Rate Decisions]] — methanol TQ issued in same meeting as other chemical decisions

## Source References

- [[KMDD Choke Valve PDS and Methanol Pump Sizing]] — original FEED constraints
- [[KMDD Methanol Pump Capacity Upgrade]] — full calculation and vendor comparison
- [[KMDD Chemical Dosing Rate Decisions]] — formal confirmation meeting and TQ issuance
