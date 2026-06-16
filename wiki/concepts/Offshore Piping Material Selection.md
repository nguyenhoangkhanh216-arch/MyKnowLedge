---
title: "Offshore Piping Material Selection"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-14
sources: 4
---

## Summary

Offshore topsides piping material selection balances corrosion resistance, mechanical strength, fabrication practicality, procurement risk, and lifecycle cost. FEED material selections are sometimes conservative or impractical for EPC execution — changes are common in the transition from FEED to Detail Engineering, but require formal TQR approval from the client.

## Key Points

### Key Standards
- **ISO 21457** — Material selection for oil & gas (covers seawater, fresh water, firewater, process fluids)
- **Norsok M-001** — Offshore material selection (Norway standard, widely adopted)
- **Norsok P-001** — Process design (includes velocity limits for different materials)
- **ASME B16.5 / B16.34** — Pressure-temperature ratings by material class

### Common Material Systems

**Seawater/Firewater piping:**
- GRE (Glass Reinforced Epoxy): lightweight, non-conductive; disadvantages: UV degradation, specialized fabrication/repair, single-source procurement risk
- CuNi 90/10: corrosion-resistant, strong, easy to weld; disadvantage: must not stagnate seawater >6–9 months (pinhole risk); velocity limit: 3 m/s continuous, 10 m/s intermittent per Norsok P-001

**Fresh water piping:**
- CS Galvanized (HDG): low cost; disadvantages: zinc leaching/de-zincification, complex re-galvanizing repair offshore, not suitable for eyewash/clean service
- Stainless Steel 316: hygienic, no re-galvanizing, easier fabrication; higher upfront cost; weight benefit vs. HDG

**Bolting for Duplex/CRA pipe classes:**
- SS B8M (per FEED): lower allowable stress (138 MPa), no galvanic concern; higher cost
- CS A320 + ZnNi + PTFE topcoat: higher allowable stress (172 MPa), better flange leak safety margin; requires non-metallic washers/sleeves to prevent galvanic contact with DSS/SS flanges
- PTFE function: friction/galling resistance only — NOT corrosion protection; do not specify PTFE thickness in specs (vendor to advise)

### Technical Comparison: GRE vs CuNi 90/10 (from KMDD TQR, Apr-2026)

| Factor | GRE | CuNi 90/10 |
|---|---|---|
| Corrosion | UV degradation risk despite cert | Must drain if stagnant >6–9 months; intermittent service OK |
| Stress/sizing | Lower allowable stress → larger pipe | Higher allowable → smaller, more compact |
| Procurement | Specialized suppliers; single-source risk | Widely available; no procurement risk |
| Constructability | Costly training/certification offshore | Conventional welding; no special tools |
| Maintenance | Complex repair (offshore vendor mobilization) | Weld repair; long service life; periodic inspection |
| Weight impact | Light | +0.2 MT per platform (KMDD) |
| **Verdict** | — | **CuNi preferred for EPCI: lower risk, better constructability, lower lifecycle risk** |

### Technical Comparison: CS Galvanized vs SS 316 (from KMDD TQR, Apr-2026)

| Factor | CS Galvanized | SS 316 |
|---|---|---|
| Corrosion | Zinc leaching/de-zincification; not suitable for eyewash | No rust; preferred for clean/eyewash service |
| Procurement | Generally available; repair requires re-galvanizing | Stable supply; standardized grade available |
| Constructability | Complex repair (re-galvanizing); flanged splits for galvanizing → weight increase | Straightforward welding; no post-galvanizing |
| Weight impact | — | -0.6 MT per platform (KMDD) |
| **Verdict** | — | **SS 316 preferred for fresh water: superior cleanliness, lower maintenance** |

### Material Change Process in EPCI
1. Contractor identifies practical concern with FEED material (procurement risk, fabrication constraint, corrosion performance)
2. Internal justification prepared: comparison table covering corrosion, stress/sizing, procurement, constructability, operation, maintenance
3. TQR (Technical Query Response) submitted to COMPANY via DCC
4. COMPANY reviews and approves (typically at discipline/engineering review level)
5. Material Selection Report (MSR) updated; P&IDs and piping specs revised in next document revision

### KMDD Decisions (2026)
- Seawater/Firewater: **GRE → CuNi 90/10** (approved May-2026; stagnation concern raised 25-May → **CLOSED 12-Jun-2026** after re-routing accepted by PVEP-KM Le Van Dong; pipe stress to account for sagging)
- Fresh water: **CS Galvanized → SS 316** (approved May-2026)
- Duplex class bolts: **SS B8M → CS A320 + ZnNi + PTFE** (confirmed April-2026)

## Connections

- [[KMDD Material Optimization Decisions]] — KMDD-specific case for all three decisions
- [[Piping Pressure Temperature Rating]] — material choice affects P-T rating limits
- [[KMDD Project]] — material changes are resolved engineering decisions with cost and schedule impacts

## Source References

- [[KMDD Material Optimization Decisions]] — detailed justification tables for all three KMDD material changes
- [[KMDD CuNi Firewater Material Justification]] — full TQR history; CPY stagnation concern; routing design response; process friction on TQR draft review
- [[KMDD CuNi Firewater Stagnation Accepted 13Jun26]] — ✅ CLOSED 12-Jun: PVEP-KM formally accepted re-routing; sagging stress requirement added

