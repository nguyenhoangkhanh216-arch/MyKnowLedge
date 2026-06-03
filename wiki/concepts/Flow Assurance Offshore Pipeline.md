---
title: "Flow Assurance Offshore Pipeline"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 1
---

## Summary

Flow Assurance (FA) is the discipline ensuring that hydrocarbon fluids flow reliably from reservoir to processing facility throughout the field life, without flow-impeding problems such as hydrate formation, wax deposition, corrosion, slugging, or low temperature issues. In offshore EPCI projects, FA studies are typically performed by the FEED contractor (or subcontractor) and must be updated for detail engineering with finalized production profiles.

## Key Points

- **Key FA threats in subsea/offshore pipelines:**
  - Hydrate formation (at high pressure + low temperature) — primary concern for deepwater
  - Wax deposition (below WAT — Wax Appearance Temperature)
  - Scale deposition (from produced water mineral precipitation)
  - Corrosion (TOL and BOL — Top/Bottom of Line; CO₂ corrosion especially in wet gas)
  - Slugging (hydrodynamic or severe riser slugging)
  - Low temperature (depressuring, cold start-up, seabed cooling)

- **Study types:**
  - **Steady State (SS):** Maximum flow rates, operating pressures and temperatures, chemical injection requirements, line sizing
  - **Transient analysis:** Start-up, shutdown, pigging, ramp-up; more severe thermal and pressure conditions than steady state

- **Key fluid characterization inputs:**
  - Production profile (Gas in MMscfd, Condensate/Oil in bpd, Water in bpd)
  - Fluid composition (CO₂%, H₂S%, C1-C10+, wax content)
  - Pour Point Temperature (PPT), WAT
  - Produced water chemistry (for scaling risk)
  - Operating pressure and temperature profiles

- **Simulation tool:** HYSYS (steady state and transient), OLGA (transient — industry standard)

- **KMDD FA specifics (as of May 2026):**
  - Performer: NIPI (VSP subcontractor)
  - Uninhibited corrosion: 11–19 mm/y → requires chemical inhibition
  - Pour point: 29°C, WAT: 39°C (dead oil)
  - Pipeline: 20" subsea, KM→DD (~7 km) and DD→BK-C (26 km)
  - Steady state finalized; transient report IFR: 23-Jun-2026

- **Common FEED-to-DE gap:** Production profiles are updated after FEED; FA results need re-running. Input data freeze discipline is critical to avoid cascading schedule delays.

## Connections

- [[KMDD Flow Assurance Study Status]] — KMDD case: FA study timeline, cases, and input data challenges
- [[KMDD Pipeline Corrosion Baker Hughes]] — FA steady state results feed directly into corrosion risk assessment
- [[Low Temperature Depressuring Design]] — FA transient results inform low-temperature design cases
- [[Methanol Injection Hydrate Inhibition]] — methanol dosing rate comes from hydrate formation risk assessment (part of FA scope)

## Source References

- [[KMDD Flow Assurance Study Status]] — KMDD FA study status, schedule, and cases
- [[KMDD Pipeline Corrosion Baker Hughes]] — KMDD pipeline fluid properties and corrosion rates
