---
title: "Methanol Injection Hydrate Inhibition"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-10
sources: 5
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
- **High-pressure wellhead injection pump P-5345 (KM-WHP, TQ-B-0003 approved 01-Jun-2026):**
  - Type: Reciprocating simplex double; Capacity: 50 LPH; MOP: 195.4 barg; Design pressure: 232 barg (piping class 153410X)
  - API 20% margin requires 234.5 barg; 232 barg achieves only 18.73% — approved for intermittent service with PSV + PZAHH safeguards
  - N2 blanket on tote T-5341 at 0.1 barg; tank 2.0 m³ gross / 1.71 m³ working (~30 min per well at 50 LPH)

## Connections

- [[Low Temperature Depressuring Design]] — related low-temperature scenario (depressuring vs. start-up cooling — different mechanisms, both affect material and equipment selection)
- [[KMDD Project]] — methanol pump upgrade now confirmed; was one of the four critical FEED findings
- [[KMDD Choke Valve PDS and Methanol Pump Sizing]] — original FEED pump capacity constraints
- [[KMDD Methanol Pump Capacity Upgrade]] — detailed pump sizing study with EDG power constraint analysis
- [[KMDD Chemical Dosing Rate Decisions]] — methanol TQ issued in same meeting as other chemical decisions

### TQR status (✅ resolved 08-Jun-2026):
- VSP (Vo Viet Hai) formally accepted methanol rate: **KM 507.8 L/h**, **DD 560 L/h** (triplex, 7.5 kW DOL) on 08-Jun-2026
- PVEP-KM (Nguyen Khac Hung) formally accepted per letter Ref. 158-2026/DEV/PVEP-KM (05-Jun-2026)
- Final alignment meeting held: 09-Jun-2026, Room 901 VSP OCD Office
- Design basis CLOSED: triplex pump, DOL starter, 30% (KM) and 50% (DD) start-up rates confirmed; no further TQ required

## Source References

- [[KMDD Choke Valve PDS and Methanol Pump Sizing]] — original FEED constraints
- [[KMDD Methanol Pump Capacity Upgrade]] — full calculation and vendor comparison
- [[KMDD Chemical Dosing Rate Decisions]] — formal confirmation meeting and TQ issuance
- [[KMDD External Process Weekly Meeting MOM-009]] — TQR still pending 04-Jun; awaiting discipline inputs
- [[KMDD Methanol Pump Design Pressure TQ]] — TQ-B-0003; P-5345 simplex double specs; 232 barg design pressure approved 01-Jun-2026
