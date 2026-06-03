---
title: "Chemical Injection System Design"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 3
---

## Summary

Offshore wellhead platforms inject multiple chemicals into produced fluids to prevent flow assurance problems: hydrates, wax/paraffin deposition, scale, and corrosion. Each chemical has a specific dosing rate, injection point, and injection mode (continuous vs. batch). Design basis comes from fluid properties (composition, pour point, WAT, water chemistry) and chemical supplier recommendations — the FEED values are often conservative and get refined in Detail Engineering with input from actual chemical suppliers.

## Key Points

### The four main injection chemicals:

| Chemical | Purpose | Typical injection point | Mode |
|---|---|---|---|
| Methanol | Hydrate inhibition during cold start-up | Downstream choke (or flowline) | Batch / intermittent during start-up |
| PPD (Pour Point Depressant / Wax Inhibitor) | Prevent wax deposition | Downstream choke | Continuous |
| Scale Inhibitor (SI) | Prevent mineral scale in produced water | **Upstream choke** (better mixing) | Continuous |
| Corrosion Inhibitor (CI) | Protect pipeline wall from CO₂/H₂S corrosion | Various (topside + pipeline) | Continuous or batch |

### Dosing rate basis:
- PPD/Wax Inhibitor: expressed as **ppmv based on oil rate** (e.g., 300–500 ppmv)
- Scale Inhibitor: expressed as **ppmv based on total liquid rate** (e.g., 25–40 ppmv)
- Corrosion Inhibitor: expressed as **L/day** or **L/MMscf** depending on application
- Methanol: expressed as **L/h** pump capacity, sized for minimum start-up flow rate through choke

### Injection point matters:
- Scale Inhibitor upstream of choke: better mixing with produced water before it flashes; avoids scale precipitation in choke body
- PPD/Methanol downstream of choke: injected after the pressure drop where wax/hydrate risk is highest
- CI at pipeline inlet and topside: different doses for Top of Line (TOL) vs Bottom of Line (BOL) corrosion

### Design process — FEED to DE:
1. FEED sets conservative go-by values for dosing rates
2. DE verifies against chemical supplier recommendations (Baker Hughes, ROMEX, etc.)
3. If supplier rates differ from FEED, issue TQ to COMPANY for formal confirmation
4. Chemical supplier selection happens later (during operations) — DE uses preliminary supplier data for sizing
5. Final confirmation of dosing rate tied to chemical supplier selection and field trial data

### Power constraint for methanol pumps:
- Methanol pumps are plunger-type (simplex or triplex)
- Motor power must fit within EDG (Diesel Electric Generator) load list
- Triplex preferred: 3 plungers → lower peak power per plunger, DOL starter sufficient
- Simplex at high capacity requires soft starter or VFD → higher electrical complexity

### KMDD confirmed values (May-2026):
- PPD: **500 ppmv** oil rate (↑ from FEED 300; Baker Hughes recommended 300–500)
- SI: **40 ppmv** total liquid rate, **upstream choke** (rate kept; injection point moved)
- CI: **50 L/d** base case DD-WHP; **130 L/d** optional (covering commingled KM+DD flow)
- Methanol: **KM 507.8 L/h** (30% start-up), **DD 560.8 L/h** (50% start-up) — triplex, 7.5 kW DOL

## Connections

- [[Methanol Injection Hydrate Inhibition]] — detailed breakdown of methanol pump sizing constraints and KMDD upgrade
- [[KMDD Chemical Dosing Rate Decisions]] — meeting decisions and TQs for all four chemicals on KMDD
- [[KMDD Pipeline Corrosion Baker Hughes]] — pipeline corrosion data and Baker Hughes engagement for CI
- [[KMDD MEC-006 Chemical Injection Package Status]] — procurement status; vendor landscape for methanol pump
- [[Flow Assurance Offshore Pipeline]] — flow assurance context: hydrates, wax, corrosion all part of FA scope

## Source References

- [[KMDD Chemical Dosing Rate Decisions]] — final dosing rates confirmed in 13-May-2026 meeting
- [[KMDD Pipeline Corrosion Baker Hughes]] — CI design basis from Baker Hughes engagement
- [[KMDD Methanol Pump Capacity Upgrade]] — methanol pump sizing study with EDG power constraint
