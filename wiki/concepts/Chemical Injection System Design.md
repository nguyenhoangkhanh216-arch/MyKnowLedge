---
title: "Chemical Injection System Design"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-16
sources: 10
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

### KMDD confirmed values (VSP accepted 08-Jun-2026):
- PPD: **500 ppmv** oil rate (↑ from FEED 300; Baker Hughes PAO82004 product)
- SI: **40 ppmv** total liquid rate, **upstream choke** (rate kept; injection point moved upstream of choke)
- CI: **80 L/d KM-WHP**, **130 L/d DD-WHP** (↑ from FEED 50 L/d; confirmed final, not optional; product CRO28022AP)
- Methanol: **KM 507.8 L/h** (30% start-up), **DD 560 L/h** (50% start-up) — triplex, 7.5 kW DOL; ×10 increase from FEED

### V-Jet Pigging (new scope, 08-Jun-2026):
- Design updated to accommodate both Double and Single Pig concept (V-Jet)
- Results in slightly longer pig launcher than conventional design
- Both pig concepts confirmed by VSP 08-Jun
- VSP requested PMC to clarify operational/maintenance procedures comparing Single vs Double Pig before final selection — Client (PVEP-KM) and Operator (HML) to make final call

### Formal acceptance chain (08-Jun-2026):
- **VSP NIPI** (Trương Minh Đức, 09:42): supported PMC/VSP proposal
- **VSP** (Vo Viet Hai, 09:27 + 11:05): accepted all dosing rates; no technical objection
- **PVEP-KM** (Nguyen Khac Hung, 10:36): formally accepted per letter Ref. 158-2026/DEV/PVEP-KM (05-Jun-2026); directed VSP to submit CIS design for review/approval
- **Final alignment meeting**: 09-Jun-2026, 8:00AM, Room 901 VSP OCD Office (called by Nguyen Dinh Manh, PTSC)

### BCM with PVDT (09-Jun-2026):
- **Meeting:** BCM held between PTSC and PVDT (vendor) on 09-Jun-2026 for MEC-006 Chemical Injection Package
- **Confirmed:** In-line configuration for part of the CIS system
- **Open items:** Combined flow routing and piping line routing clarifications still unresolved
- **Action items (PVDT):** (1) Review detailed drawings/text and verify motor information; (2) Create adapter for motor coupling
- **Electrical Load List sent:** Utility list + PVDT and POS electrical load lists sent separately to Lê Phú Cường on same day

### Combined CIS + MeOH Skid (post-FEED, 08-Jun-2026):
- CPY (PVEP-KM) requested combining Chemical Injection Skid and Methanol Injection Skid into a single common skid
- Rationale: reduced footprint, single lift, simpler operations; also weight reduction
- BCM#2 held 08-Jun: both POS and DKE confirmed feasible
- Requires: revised layout, maintenance access, CoG calculation, lifting analysis, updated GAD
- Response deadline: **12-Jun-2026**

## Connections

- [[Methanol Injection Hydrate Inhibition]] — detailed breakdown of methanol pump sizing constraints and KMDD upgrade
- [[KMDD Chemical Dosing Rate Decisions]] — meeting decisions and TQs for all four chemicals on KMDD
- [[KMDD Pipeline Corrosion Baker Hughes]] — pipeline corrosion data and Baker Hughes engagement for CI
- [[KMDD MEC-006 Chemical Injection Package Status]] — procurement status; vendor landscape for methanol pump
- [[Flow Assurance Offshore Pipeline]] — flow assurance context: hydrates, wax, corrosion all part of FA scope

### IRCD design evolution (KMDD Jun-2026):

**Power supply (resolved 04-Jun):**
- IRCD initially specified as remote, 24VDC, 80W/unit; 6 units per platform = 480W total — exceeded platform 24VDC system capacity
- Resolved 04-Jun MOM-005: IRCD changed to **manual type** (eliminates 24VDC demand)

**Fail-safe philosophy conflict (open 15-Jun):**
- DKE TBC#2 Rev.D: IRCD = **fail-closed** (valve closes on power loss → injection stops)
- PVDT TBC#2 Rev.C: IRCD = **fail-last-position** (valve holds last position on power loss → injection continues at last rate)
- For **continuous injection** chemicals (CI, PPD, SI): fail-last-position is more appropriate — fail-closed interrupts injection during power events, creating corrosion/scale/wax risk
- For **batch injection** (methanol during start-up): fail-closed is more acceptable
- Resolution: Hoàng (PTSC) tasked Khoa (Corrosion/Chemical) to clarify correct philosophy and issue question to both DKE and PVDT — pending as of 15-Jun-2026

### Nitrogen system PCV design (new items 04-Jun-2026):
- **PCV set pressure in Nitrogen Bottle Racks (item 2.22):** PMC proposed revised upstream pressure for sizing PCVs in Nitrogen Supply Headers — awaiting CPY approval
- **Design flowrate for N2 system PCVs (item 2.23):** PMC to propose practical purging rate / pressurization rate for CPY review
- **N2 supply to methanol tote tank T-5381 (HAZOP item 6/13):** Still open — CPY requires a solution to prevent nitrogen loss when no operator is on platform; 2×100% PCVs with staggered setpoints proposed for remote startup mode

## Source References

- [[KMDD Chemical Dosing Rate Decisions]] — final dosing rates confirmed in 13-May-2026 meeting
- [[KMDD Pipeline Corrosion Baker Hughes]] — CI design basis from Baker Hughes engagement
- [[KMDD Methanol Pump Capacity Upgrade]] — methanol pump sizing study with EDG power constraint
- [[KMDD MEC-006 IRCD Power Supply Issue]] — 24VDC capacity constraint identified Jun-2026
- [[KMDD External Process Weekly Meeting MOM-009]] — nitrogen PCV items 2.22/2.23; N2 methanol tote HAZOP item
- [[KMDD Chemical Dosing Rate Finalization]] — VSP accepted all dosing rates 08-Jun-2026; CI 130 L/d DD confirmed; V-Jet pigging approved
- [[KMDD MEC-006 BCM2 Results 08Jun26]] — combined CIS+MeOH skid decision; Triplex pump confirmed; 12-Jun-2026 deadline
- [[KMDD MEC-006 BCM PVDT 09Jun26]] — BCM with PVDT 09-Jun: in-line config confirmed; motor adapter action; electrical load list sent
- [[KMDD TBC Snapshot 10Jun26]] — TBC#3 Rev.C issued to all 3 bidders (PVDT, FHE, VHI); deadline 12-Jun; Methanol Pump Skid width constraint (max 1200mm) introduced
- [[KMDD MEC-006 IRCD Fail-Safe Dispute 15Jun26]] — DKE fail-closed vs PVDT fail-last-position; conflict with continuous injection requirement; pending resolution 15-Jun-2026
