---
title: "Chemical Injection System Design"
type: concept
tags: [work, science]
created: 2026-06-03
updated: 2026-06-29
sources: 21
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

**Power supply (resolved 04-Jun, partially reopened 18-Jun):**
- IRCD initially specified as remote, 24VDC, 80W/unit; 6 units per platform = 480W total — exceeded platform 24VDC system capacity
- Resolved 04-Jun MOM-005: IRCD changed to **manual type** (eliminates 24VDC demand)
- **18-Jun update (PVEP-KM P&IDs issued 16-Jun):** New CI P&IDs show **PPD Pump IRCD must be remote (24VDC)** for remote pump control; SI Pump IRCD is local only. This partially reverts the 04-Jun resolution — PPD pump IRCD needs 24VDC power supply. IRCD loads are NOT yet in the platform load list. Electrical team (Biển/Cường) must confirm and update load list. — [[KMDD SHWT Load Increase 18Jun26]]

**Fail-safe philosophy conflict (open 15–16-Jun):**
- DKE TBC#2 Rev.D: IRCD = **fail-closed** (valve closes on power loss → injection stops)
- PVDT TBC#2 Rev.C: IRCD = **fail-last-position** (valve holds last position on power loss → injection continues at last rate)
- For **continuous injection** chemicals (CI, PPD, SI): fail-last-position is more appropriate — fail-closed interrupts injection during power events, creating corrosion/scale/wax risk
- For **batch injection** (methanol during start-up): fail-closed is more acceptable
- Resolution: Hoàng (PTSC) tasked Khoa (Corrosion/Chemical) to clarify correct philosophy and issue question to both DKE and PVDT — still open as of 16-Jun-2026

### MEC-006 TBC#3 Rev.C closure (16-Jun-2026):
- **FHE:** Submitted TBC#3 Rev.C on 16-Jun; PTSC internal review due 18-Jun 11:30
- **VHI:** Submitted TBC#3 Rev.C on 16-Jun; PTSC internal review due 18-Jun 11:30
- **POS:** Submitted TBC#1 Rev.B + TBC#3 Rev.C on 16-Jun; PTSC internal review due 18-Jun 11:30
- **DKE:** Submitted TBC#3 Rev.B at 15:58 on 18-Jun (6d late; deadline 12-Jun); GAD Rev.D = Exakta pump (Nexa/Triplex series, API 674)
- **PVDT:** TBC#2 Rev.C awaiting PTSC reply
- **Next step:** PTSC internal team to review all 3 TBC#3 Rev.C responses by 18-Jun 11:30 — approaching TBE stage for MEC-006

### P&ID Rev.E0 undistributed updates (23-Jun-2026):

**Alert raised by:** Bùi Lê Lương (Mechanical), 08:52 23-Jun — P&ID Rev.E0 contains major design changes not yet distributed to MEC-006 bidders:

- **Change 1 — All CI systems (PPD, SI, CI):** A PCV return loop has been added to all chemical injection circuits, with many isolation valves and PCVs. This is a significant addition to every CI sub-system P&ID.
- **Change 2 — Methanol injection:** Sizing of ALL DBB (Double Block and Bleed) valves has been changed throughout the methanol injection skid.
- **Status:** Not distributed to bidders as of 23-Jun. If bidders have designed to the previous P&ID revision, their technical proposals may be non-compliant with Rev.E0 — a TBC amendment or errata wave may be required before TBE can be completed.

### MEC-006 TBC status and cost impact (23-Jun-2026):

- **PVDT:** TBC#1 Rev.B + TBC#2 Rev.D + TBC#3 Rev.D all awaiting PTSC response; PVDT requested deadline extension to EOD 24-Jun (original PTSC deadline was 11:30 AM 23-Jun)
- **DKE:** TBC#3 Rev.B submitted 23-Jun
- **Cost impact lists:** Sent to Commercial (Tran Thi Khanh Ngan) by Nguyễn Sử Trần Hoàng on 23-Jun for three bidders: PVDT, DKE, POS — used for CBE commercial assessment

### PPD pump design pressure — optional upstream case (24-Jun-2026):
- **Base case:** PPD inject downstream of choke; pump design pressure = 232 barg (same as methanol pump)
- **Optional case (PPD u/s choke):** Requires pump design pressure of **265 barg** — forces pump model change
- **Motor power impact:** +0.37–0.55 kW increase per pump (P-5325 A/B and P-5365 A/B)
- **Hoàng's proposal:** Reduce requirement from 265 to 240 barg to avoid model change
- **Lương's guidance:** Do NOT issue to bidders yet — optional u/s choke case will only be evaluated after TBC#3 responses + GA drawings reviewed, to check layout and tank volume feasibility
- **Electrical load list:** Optional u/s choke load only considered for future expansion if needed

### MEC-006 active bidder updates (24-Jun-2026):
- **PVDT:** Submitted TBC#3 Rev.D at 17:38 on 24-Jun — 1 day late vs 23-Jun 11:30 AM deadline
- **VHI:** Committed to revise GAD from Simplex to Triplex pump (GAD showed Simplex despite TBC saying Triplex); proposed skid 9500×2000×2800mm — exceeds PTSC width/length limit of 7400×2000×3500mm; tank dimensions confirmed correct
- **POS:** Submitted TBC#3 Rev.C Update#1 with Pump Data Sheet, P&ID Rev.F, Utility Consumption Calculation — resolving PTSC concern about missing pump manufacturer info
- **Cost impact:** PVDT/PVD Tech cost impact comments forwarded to Engineering (Hoàng) for review before client submission

### MEC-006 bidder updates 25-Jun-2026:
- **POS:** Submitted further update to TBC#3 Rev.C (Update#2) on 25-Jun — addressing PTSC note that methanol pump manufacturer data was still missing from previous submission; PTSC internal review due 11:30 AM 26-Jun
- **PVDT:** Submitted comprehensive bundle on 25-Jun: TBC#1 Rev.B + TBC#2 Rev.D + TBC#3 Rev.D + marked-up P&IDs; PTSC internal review due 11:30 AM 26-Jun
- **PTSC P&ID policy established:** PTSC responded formally to PVDT's marked-up P&IDs: "will not confirm your proposal P&ID(s) in this stage, it will be reviewed during execution phase" — vendor P&ID proposals are deferred to post-PO detail engineering, not confirmed at TBC stage

### MEC-006 overall status as of 26-Jun-2026:
- TBE overdue 15 days (per procurement dashboard)
- CBE milestone due 28-Jun-2026 (per procurement dashboard)
- All 5 bidders have now submitted across multiple TBC rounds; PTSC internal review pending for POS and PVDT latest submissions

### POS TBC#2 Rev.B update (27-Jun-2026):
- **POS (Tran Duc Dung)** submitted TBC#2 Rev.B Update on 27-Jun 08:29 — file covers items IN24, IN25, IN26
- Hoàng distributed to discipline team at 10:20 (Saturday)
- **Nguyen Anh Khoa (Corrosion/Chemical)** reviewed and returned comments by 14:28 same day
- Demonstrates continued weekend work to drive MEC-006 toward CBE closure

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
- [[KMDD TBC Snapshot 16Jun26]] — FHE/VHI/POS submitted TBC#3 Rev.C on 16-Jun; PTSC review due 18-Jun; IRCD still open
- [[KMDD SHWT Load Increase 18Jun26]] — PVEP-KM P&IDs 16-Jun confirm PPD pump IRCD must be remote (24VDC); SI pump local only; IRCD loads missing from load list (2026-06-19)
- [[KMDD SHWT Load Increase 20Jun26]] — CI package confirmed as 11% of total SHWT +32% overrun; meeting 22-Jun-2026 to discuss solutions (2026-06-21)
- [[KMDD MEC-006 Chemical Injection PID Update 23Jun26]] — P&ID Rev.E0 undistributed: PCV return loop added to all CI systems; all DBB valve sizing changed for MeOH injection (2026-06-24)
- [[KMDD MEC-006 Cost Impact Lists 23Jun26]] — cost impact lists for PVDT/DKE/POS sent to Commercial 23-Jun; CBE assessment stage (2026-06-24)
- [[KMDD MEC-006 Chemical Injection 24Jun26]] — PVDT TBC#3 Rev.D 1d late; VHI GAD Simplex→Triplex to revise; POS pump datasheet submitted; PVDT cost impact to client (2026-06-25)
- [[KMDD Chemical Dosing Rate PPD Pump Design Pressure 24Jun26]] — PPD pump 265 barg design pressure concern for optional u/s choke case; not issued to bidders pending TBC#3 review (2026-06-25)
- [[KMDD MEC-006 POS TBC3 RevC Update 25Jun26]] — POS submitted further pump manufacturer data; PTSC review 26-Jun 11:30 AM (2026-06-27)
- [[KMDD MEC-006 PVDT All TBC Responses 25Jun26]] — PVDT submitted TBC#1 Rev.B + TBC#2 Rev.D + TBC#3 Rev.D + marked-up P&IDs; PTSC review 26-Jun 11:30 AM (2026-06-27)
- [[KMDD MEC-006 PTSC PID Non-Confirmation 25Jun26]] — PTSC will not confirm vendor P&ID proposals in TBC stage; execution phase only (2026-06-27)
- [[KMDD MEC-006 POS TBC2 RevB 27Jun26]] — POS submitted TBC#2 Rev.B items IN24/25/26 on 27-Jun; Khoa reviewed same day (2026-06-29)
