---
title: "Cold Vent Design"
type: concept
tags: [work, science]
created: 2026-06-14
updated: 2026-06-14
sources: 1
---

## Summary

Cold vent systems on offshore platforms discharge gas from controlled depressuring or emergency blowdown directly to atmosphere via a vent boom (elevated pipe stack). The "cold" designation refers to the potential for extremely low discharge temperatures caused by Joule-Thomson cooling as high-pressure gas expands rapidly through the system. Design requirements cover structural support, temperature monitoring, and access provisions for instrumentation maintenance.

## Key Points

### Why "Cold" Vent

- During depressuring or blowdown, high-pressure gas expands rapidly through control valves and piping, cooling via Joule-Thomson effect
- Outlet temperatures can drop well below 0°C, potentially causing brittle fracture in standard carbon steel (requiring LTCS or austenitic materials in the cold zone)
- Temperature monitoring at the vent boom tip detects extreme cold discharge conditions, enabling alarms or operator response

### Vent Boom Structural Design

- Vent boom is an elevated pipe (typically 15–25m long) that discharges away from the platform deck to avoid impingement of flammable/toxic gas
- Supporting structure must handle static weight + wind load + thermal movement (contraction during cold discharge)
- Weight shedding strategy on KMDD: vent boom installed **offshore** (as a separate lift post-load-out) to save topside weight during load-out crane lift
- KMDD vent boom: 21.5m length; access stairway + landing = 6.5 MT additional structural weight

### Temperature Monitoring Design (INS Scope)

- **Thermowell/thermal element** mounted on the vent boom piping to continuously monitor discharge temperature
- Design decisions required: mounting configuration (flange, weld-in, spring-loaded), sensor position along the boom (how far from the header tip), cable routing to the instrument junction box
- Element must be **removable** for maintenance — requires structural access stairway at installation point (STR scope)
- Cable routing must account for thermal cycling and mechanical vibration from wind-induced vent boom oscillation

### Access Provisions (STR Scope)

- Structural stairway + landing designed at the thermowell location on the vent boom
- Provides safe access for maintenance crew to pull/replace the removable thermal element
- Must comply with platform walkway design criteria (non-slip grating, handrail height, stairway angle)

### Relationship to LTCS / Low Temperature Design

- The thermowell measures actual process temperature; design temperature of the cold vent piping must account for worst-case Joule-Thomson cooling
- Cold vent piping downstream of the depressuring valve is typically specified as LTCS (Low Temperature Carbon Steel, rated to −46°C) or SS316 to avoid brittle fracture
- See [[Low Temperature Depressuring Design]] for the full design envelope

## Connections

- [[Low Temperature Depressuring Design]] — same Joule-Thomson cooling physics; cold vent is the discharge point after controlled blowdown
- [[Topside Weight Management]] — vent boom installation strategy (offshore lift) affects topside weight budget; stairway adds 6.5 MT
- [[KMDD Project]] — KMDD cold vent temperature monitoring design (DD-WHP vent boom, Apr–Jun 2026)
- [[HIPPS Overpressure Protection]] — HIPPS blowdown path may discharge through cold vent; temperature at vent reflects blowdown severity

## Source References

- [[KMDD Cold Vent Temperature Monitoring]] — INS thermowell config + STR stairway design for DD-WHP vent boom (2026-06-14)
