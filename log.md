# Wiki Log

---

## [2026-06-03] init | Wiki initialized
Schema created. Directory structure scaffolded. 0 sources ingested.

## [2026-06-03] ingest | LLM Wiki: A Pattern for Personal Knowledge Bases
Summary: LLM Wiki pattern — PKM architecture where LLM maintains persistent interlinked wiki instead of re-deriving at query time. Covers three-layer architecture (raw/wiki/schema), ingest/query/lint operations, Memex lineage. Pages touched: [[LLM Wiki Pattern]], [[Personal Knowledge Management]], [[Obsidian]], [[Vannevar Bush Memex]].
Flags: none.

## [2026-06-03] ingest | KMDD Process Engineering — 6 emails (folder scan, round 1)
Summary: Extracted process engineering knowledge from 6 KMDD email threads (Mar–Apr 2026). Created 6 source pages, 1 entity page (KMDD Project), 5 concept pages. Key findings: DD-WHP Export Launcher requires LTCS material upgrade (CS→LTCS) due to manual depressuring scenario not in FEED; methanol pump capacity insufficient for COMPANY's cold start-up target; FEED Verification 30-day deadline commercially critical (09-May-2026). Pages touched: [[KMDD Project]], [[Low Temperature Depressuring Design]], [[Methanol Injection Hydrate Inhibition]], [[FEED Verification EPCI Contract]], [[Piping Pressure Temperature Rating]], [[Open Drain System Design]].
Flags: DD-WHP Export Launcher material upgrade is a significant open engineering action item with cost and schedule impact — not yet resolved as of 29-Apr-2026.

## [2026-06-03] lint | Health check
Orphans: 0. Broken links: 14 (all [[sources/...]] path-prefixed links) — fixed by removing prefix. Missing pages: 1 (Piping Layout Design Offshore) — created. Naming convention fixed: all 22 wiki files renamed from kebab-case to Title Case with spaces; CLAUDE.md updated. Suggested additions: none outstanding.

## [2026-06-03] ingest | KMDD Engineering — technical scan rounds 3 & 4 (HIPPS, chemicals, HAZOP)
Summary: Read 10 high-signal emails from KMDD main/EMT/TBC folders. Created 7 source pages + 1 concept page. Key findings: (1) HIPPS d/s design pressure confirmed 133 barg; (2) All chemical dosing rates finalized — PPD 500 ppmv, SI 40 ppmv u/s choke, methanol massively upgraded to 507.8/560.8 L/h triplex pumps (only PVD Tech compliant); (3) HAZOP Items 1/2/9: PSV-1931A/B removal proposed, HIPPS bleed-off line retained; (4) FEED Verification returned RC2 by PVEP-KM — response meeting 05-Jun-2026; (5) Open drain tank presentation to CPY due 05-Jun-2026. Pages touched: [[KMDD Project]], [[Methanol Injection Hydrate Inhibition]], [[HIPPS Overpressure Protection]], [[FEED Verification EPCI Contract]].
Flags: Two live action items TODAY/TOMORROW — Open drain tank presentation and FEED Verification CRS meeting both on 05-Jun-2026.

## [2026-06-03] lint | Health check
Orphans: 0. Missing pages: 0. Contradictions: 0. Suggested additions: 1 — Chemical Injection System Design concept (referenced on 4+ pages, no dedicated page yet).

## [2026-06-03] ingest | KMDD Engineering — EMT/NIPI/TBC emails (round 2)
Summary: Extracted knowledge from EMT and NIPI subfolders (Apr–Jun 2026). Created 3 source pages, 2 concept pages. Key findings: (1) All three material changes confirmed — GRE→CuNi 90/10 (firewater), HDG→SS316 (freshwater), B8M→A320+ZnNi bolts — TQR with COMPANY as of Jun-2026; (2) KMDD pipelines have very high uninhibited corrosion rates (11–19 mm/y); Baker Hughes engaged for CI chemical treatment; (3) FA steady state finalized by NIPI; transient IFR target 23-Jun-2026. Pages touched: [[KMDD Project]], [[Offshore Piping Material Selection]], [[Flow Assurance Offshore Pipeline]].
Flags: CuNi stagnation concern (seawater must not sit >6-9 months) resolved — fire ring main routing confirmed to avoid stagnant sections as of 03-Jun-2026.

## [2026-06-04] ingest | KMDD Daily Email Digest — 03 Jun 2026 (substantive emails)
Summary: Ingested 7 substantive email threads from KMDD inbox (Jun 3). Focused on technical issues and procurement crises, skipping routine TBC back-and-forth. Key findings: (1) MEC-007 critical — only 1/5 bidders (TTE) acceptable; 4 bidders effectively failing; (2) WHCP/ICSS blocked — Vietsovpetro's XNCĐ cannot submit vendor data due to missing document code template and DCC contact; (3) INS-004 Yoshitake threatening to withdraw — manufacturer spec compliance dispute; (4) INS-002 major scope change — HIPPS leakage PSVs moved to Base Scope, 4 new PSVs, bidder response due 15:45 Jun 4; (5) Open drain tank presentation for CPY due Jun 5 with ALARP sizing argument; (6) MEC-006 IRCD 24VDC power constraint raised; (7) MEC-003 Bao Nghi ✅ closed. Pages created: 7 source pages. Pages updated: [[Chemical Injection System Design]], [[HIPPS Overpressure Protection]], [[Open Drain System Design]], [[KMDD Project]].
Flags: INS-002 HIPPS PSV response deadline TODAY (15:45 Jun 4) — immediate action required. MEC-007 at risk with only 1 acceptable bidder.

## [2026-06-04] lint | Health check
Orphans: 0. Contradictions: 0. Missing pages: 0. Broken links: 11 — all in 7 new source pages created today; all used [[sources/...]] prefix in Source References (same pattern fixed in 2026-06-03 lint). Also removed self-referencing links. Fixed all 11 in-place. Suggested additions: 1 — "Technical Bid Clarification Process" concept (referenced implicitly across 10+ KMDD procurement source pages, no dedicated page).

## [2026-06-04] lint | Health check
Orphans: 0. Broken links: 0. Contradictions: 0. Stale claims: 0. Fixed: (1) duplicate [[KMDD Project]] and [[FEED Verification EPCI Contract]] links in KMDD INS-004 Yoshitake Deviation Dispute — replaced Source References with non-duplicate targets; (2) Technical Bid Clarification Process had only 1 inbound link — added back-links from KMDD MEC-007, KMDD MEC-003, KMDD INS-002, KMDD INS-004 (now 5 inbound links). Suggested additions: none.

## [2026-06-04] synthesis | Technical Bid Clarification Process
Summary: Created concept page synthesizing TBC/TBE procurement workflow from 10 KMDD source pages. Covers full sequence (RFQ→TBO→TBC→BCM→TBE→PO), document forms (T3/T5/T8/T9/KTR/ITP/VDRL), CA CAT C requirements, bidder tracking statuses, and 5 common failure patterns. Pages touched: [[KMDD Project]], index.md.

## [2026-06-04] ingest | KDP-OOO-03-TQ-X-0001-(P) - Request Information for Firewater Design Pressure - Final
Project: KMDD. Doc: KDP-OOO-03-TQ-X-0001-(P) - Request Information for Firewater Design Pressure - Final. Links added: [[Technical Bid Clarification Process]], [[KMDD Project]], [[KMDD Material Optimization Decisions]], [[KMDD WHCP ICSS VSP Vendor Data Bottleneck]], [[Chemical Injection System Design]].

## [2026-06-04] ingest | KDP-OOO-03-TQ-X-0001-(P) - Request Information for Firewater Design Pressure - Final
Project: KMDD. Doc: KDP-OOO-03-TQ-X-0001-(P) - Request Information for Firewater Design Pressure - Final. Links added: [[Technical Bid Clarification Process]], [[KMDD Project]], [[KMDD Material Optimization Decisions]], [[KMDD WHCP ICSS VSP Vendor Data Bottleneck]], [[Chemical Injection System Design]].

## [2026-06-04] ingest | MCB-0005-10AA-G-A16-0010_A1 TQR-OT network system installation_Ksigned
Doc: MCB-0005-10AA-G-A16-0010_A1 TQR-OT network system installation_Ksigned. Links added: [[Technical Bid Clarification Process]], [[Offshore Piping Material Selection]], [[KMDD Project]], [[Chemical Injection System Design]], [[KMDD Material Optimization Decisions]].

## [2026-06-04] ingest | MCB-0005-10AA-G-A16-0010_A1 TQR-OT network system installation_Ksigned
Doc: MCB-0005-10AA-G-A16-0010_A1 TQR-OT network system installation_Ksigned. Links added: [[Technical Bid Clarification Process]], [[Offshore Piping Material Selection]], [[KMDD Project]], [[Chemical Injection System Design]], [[KMDD Material Optimization Decisions]].

## [2026-06-04] ingest | KDP-OOO-03-TQ-X-0001-(P) - Request Information for Firewater Design Pressure - Final
Project: KMDD. Doc: KDP-OOO-03-TQ-X-0001-(P) - Request Information for Firewater Design Pressure - Final. Links added: [[Technical Bid Clarification Process]], [[KMDD Project]], [[KMDD Material Optimization Decisions]], [[KMDD WHCP ICSS VSP Vendor Data Bottleneck]], [[Chemical Injection System Design]].

## [2026-06-04] ingest | MCB-0005-10AA-G-A16-0010_A1 TQR-OT network system installation_Ksigned
Project: LDV. Doc: MCB-0005-10AA-G-A16-0010_A1 TQR-OT network system installation_Ksigned. Links added: [[Technical Bid Clarification Process]], [[Offshore Piping Material Selection]], [[KMDD Project]], [[Chemical Injection System Design]], [[KMDD Material Optimization Decisions]].

## [2026-06-04] ingest | KMDD Firewater Design Pressure TQ
Summary: TQ KDP-OOO-03-TQ-X-0001-(P) — first Safety TQ on KMDD; 16 barg / 6" 150# firewater design pressure needs verification against PVD III Rig; COMPANY response due 15-Jun-2026. Pages created: [[KMDD Firewater Design Pressure TQ]], [[Offshore Firewater System Design]], [[Technical Query Process]]. Pages updated: [[KMDD Project]].
Flags: none — no contradiction with existing wiki pages; two duplicate/stale index entries for this raw document cleaned up.

## [2026-06-04] ingest | KMDD TBC Status Jun 3 + Process Engineering Weekly Jun 2
Summary: Batch ingest of KMDD email archive (2026-06-03). 47 TBC emails + 20 DCC + 18 DocPro scanned; 2 high-value source pages created from morning/EOD TBC reports and process weekly meeting. Key findings: 21 packages tracked; INS-006 Choke Valves stale 20d with no external TBC sent; Open Drain Tank OIW issue CLOSED (CPY agreed 10% FEED basis); new open issue: Closed Drain Pump NPSHa unachievable; SIPROD P&ID split required; TQ register expanded to 7 TQs. Pages created: [[KMDD TBC Status Jun 3]], [[KMDD Process Engineering Weekly Jun 2]]. Pages updated: [[KMDD Project]], [[KMDD Open Drain Tank Oil-in-Water Content]], [[Technical Query Process]].
Flags: CONTRADICTION RESOLVED — prior wiki stated PTSC proposing 1000 ppmv for open drain tank OIW; actual resolution (02-Jun) was CPY kept FEED 10% basis after bidder confirmed no concern. Open Drain Tank source page updated.

## [2026-06-04] ingest | KMDD Open Drain Tank Sizing Presentation Jun 5 (actual slides)
Summary: 4 presentation slides showing vendor tank sizing comparison: 10% HC vs 1000 ppmv. FEED tank (1800×1300×1200 mm) is undersized for its own 10% HC inlet — all bidders need 3050–3600 mm length. At 1000 ppmv, DKE/AECC and PPS match FEED footprint. Operating weight ~2× heavier at 10% HC — structural review required. Change Order basis identified. Pages updated: [[KMDD Open Drain Tank Sizing Presentation Jun 5]], [[Open Drain System Design]].
Flags: Previous source description was inaccurate (said "ALARP + 2-slide"); actual content is 4-slide vendor comparison. Corrected.

## [2026-06-04] ingest | KMDD MEC Weekly Meeting MOM-005
Summary: Mechanical Weekly Meeting #05 (04-Jun-2026). Key decisions: IRCD to change from remote → manual (resolves 24VDC constraint); CD vessel upgraded to 16mm; 3 successful PV bidders; Spray-PIG confirmed (919mm); Teflon gasket for high-CO2 Pig Trap; semi-open impeller accepted; A1 refrigerant for HVAC; CPY deeply concerned about Open Drain Tank 15 ppm FAT warranty. CA categories established for all 9 MEC packages. Pages created: [[KMDD MEC Weekly Meeting MOM-005]]. Pages updated: [[KMDD MEC-006 IRCD Power Supply Issue]], [[KMDD Project]], [[Open Drain System Design]].
Flags: none.

## [2026-06-04] lint | Health check
Orphans: 0. Contradictions: 0. Missing pages: 0. Stale claims: 2 (FEED Verification EPCI Contract missing link to Return Comments — fixed; Methanol Injection Hydrate Inhibition missing Jun-04 MEC-006 status — minor, not fixed). Weakly connected (1 inbound link only): KMDD HVAC Instrumentation Shelter Heat Load, KMDD FEED Verification Return Comments, KMDD WHCP ICSS VSP Vendor Data Bottleneck. Suggested additions: [[PVEP-KM]] (entity — referenced on every KMDD page, no entity page), [[Baker Hughes]] (entity — 3+ pages), [[SIPROD]] (concept — 3+ pages, drives firewater/safety design decisions).

## [2026-06-04] ingest | 2026-06-04 new raw emails (40 emails) + 3 raw documents
Summary: Batch ingest of 40 new KMDD emails (2026-06-04) + raw documents (LDV TQ, MEC MOM-005, Firewater TQ). 7 new source pages created; 2 new concept/entity pages created; 4 existing pages updated. Key findings: SIL Classification IFR submitted by Risktec (official issue 05-Jun); Safety Studies contract pending BOD signature (CBE done); 30% Model Review close-out sent to CPY (weekly until 60% review); FEED Verification Report returned Code 2 by VSP — CPY meeting 09-Jun; AECC responded MEC-001 TBC Rev.A2 (feedback due Jun 5); MEC-004 IFR TBE and MEC-007 IFR TBE both assigned 04-Jun; LDV-A project first ingested (OT Network TQ, high priority, cost impact). Pages created: [[KMDD TBC Status Jun 4]], [[KMDD SIL Classification IFR Jun 4]], [[KMDD Safety Studies Contract Pending]], [[KMDD 30% Model Review Close-Out]], [[KMDD FEED Verification Code 2 Return]], [[KMDD MEC-001 TBC Rev A2 AECC and Jun 4 MEC Actions]], [[LDV-A OT Network TQ]], [[SIL Classification]], [[LDV-A Project]]. Pages updated: [[KMDD Project]] (sources 27→35), [[FEED Verification EPCI Contract]], [[Technical Query Process]], [[Technical Bid Clarification Process]].
Flags: none.

## [2026-06-04] ingest | new (2026-06-04 batch — 40+ emails)
Summary: Ingested 40 new KMDD raw emails (2026-06-04). 4 new source pages created: KMDD HAZOP Close-out CPY Feedback, KMDD CuNi Firewater Material Justification, KMDD Engineering Progress COD 29May26, KMDD PIP-008 Access Fittings Resubmission. Pages updated: [[HIPPS Overpressure Protection]] (CPY agreed in principle PSV removal, PSV downstream HIPPS; calculation/mark-up required), [[Offshore Firewater System Design]] (CuNi stagnation concern; routing solution; TQR issued to VSP), [[Offshore Piping Material Selection]] (added full GRE/CuNi and CS Galv/SS comparison tables), [[KMDD Project]] (engineering progress: DD topside +92.1MT over crane limit; load-out 15-Jun; 45 TR / 35 TBC/TBE; HAZOP close-out CPY feedback; MEC-003 Rev.D; MEC-009 TBC#1 Rev.A3; ELE-008 TBC#2; PIP-008 resubmission due 07-Jun). Low-value emails (DCC transmittals, SAF MOM transmittal shell, INS-001 IMO routing) not separately sourced.
Flags: none.

## [2026-06-04] ingest | KMDD External Process Weekly Meeting MOM-009 (04Jun26)
Summary: External Process Weekly MOM No. 08 (week 09), 04-Jun-2026. Key findings: methanol TQR still not raised (awaiting discipline inputs; CPY meeting 08-Jun); two new nitrogen PCV items opened (2.22 set pressure, 2.23 design flowrate for N2 Bottle Rack PCVs); stand pipe on purging line confirmed adequate (CLOSED); 6 process deliverables overdue; HIPPS Dynamic Simulation Study planned IFA next week. Pages created: [[KMDD External Process Weekly Meeting MOM-009]]. Pages updated: [[Methanol Injection Hydrate Inhibition]], [[Chemical Injection System Design]], [[KMDD Project]] (sources 39→40).
Flags: none.

## [2026-06-05] ingest | new (2026-06-05 batch)
Summary: Ingested 1 new KMDD email (2026-06-05) + 2 new raw documents. New files found by globbing raw/emails/ and raw/documents/ separately (per corrected procedure). Sources created: [[PMP CAPM Memory Sheets]] (EVM formulas, CPM, quality, HR theories, risk, 49 PMBOK processes), [[PTSC M&C Digital Transformation Survey Engineering Dept]] (FPT EA consulting; Engineering Dept scope documentation). KMDD entity updated: MEC-002 PVD Tech new open point (Teflon gasket location on JEONJIN Clamp Ring QOC drawing not shown). Low-value: MEC-002 email folded into KMDD entity update only. Pages updated: [[KMDD Project]] (sources 40→41).
Flags: none.

## [2026-06-05] lint | Health check
Orphans: 2 (PMP CAPM Memory Sheets, PTSC M&C Digital Transformation Survey — both just created; fixed by adding inbound links). Contradictions: 0. Missing pages: 1 false positive ([[Page Name]] inside backticks in Obsidian.md — not a real link). Stale claims: 1 — KMDD Flow Assurance Study Status said "pending input" but input freeze was agreed 29-May-2026 per Engineering Progress COD 29May26; corrected. Suggested additions (no page yet): [[PVEP-KM]] (35 mentions), [[VSP]] (53 mentions), [[NIPI]] (28 mentions), [[Baker Hughes]] (21 mentions — empty root file exists), [[SIPROD]] (19 mentions). All five flagged in previous lint; still outstanding.

## [2026-06-05] lint | Health check
Orphans: 1 (wiki/sources/PTSC M%26C Digital Transformation Survey Engineering Dept.md — URL-encoded duplicate of PTSC M&C version; zero inbound links; should be deleted). Contradictions: 0. Missing pages: 0. Stale claims: 2 — (1) KMDD Project entity Source References still says "PTSC proposing 1000 ppmv" for OIW dispute, which was CLOSED 02-Jun (CPY kept 10% HC; entity body at line 97 is correct, only one-liner is stale); (2) KMDD FEED Verification Return Comments source says CPY meeting "05-Jun-2026" but meeting was rescheduled to 09-Jun per KMDD FEED Verification Code 2 Return. Stale source counts (index.md understated): Open Drain System Design (1→5+), SIL Classification (1→3), HIPPS Overpressure Protection (3→7+), Chemical Injection System Design (5→9+), Methanol Injection Hydrate Inhibition (4→7+), Offshore Firewater System Design (3→5+). Suggested additions still outstanding: [[PVEP-KM]], [[VSP]], [[NIPI]], [[Baker Hughes]], [[SIPROD]] (all from previous lint). New suggestion: [[HAZOP Process]] (referenced substantively on 6+ pages: KMDD HAZOP Items, KMDD HAZOP Close-out, Safety Studies, SIL Classification, HIPPS Overpressure Protection, Technical Bid Clarification Process).

## [2026-06-05] ingest | KDP-OOO-03-TQ-B-0003-(P)-D0 TQ for Design Pressure of Methanol Injection Pump_KM Comment
Project: KMDD. Doc: KDP-OOO-03-TQ-B-0003-(P)-D0 TQ for Design Pressure of Methanol Injection Pump_KM Comment. Links added: [[KMDD Project]], [[KMDD External Process Weekly Meeting MOM-009]], [[Chemical Injection System Design]], [[KMDD MEC Weekly Meeting MOM-005]], [[Methanol Injection Hydrate Inhibition]].

## [2026-06-05] ingest | KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report
Project: KMDD. Doc: KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[Offshore Firewater System Design]], [[KMDD External Process Weekly Meeting MOM-009]].

## [2026-06-05] ingest | KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report
Project: KMDD. Doc: KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[Offshore Firewater System Design]], [[KMDD External Process Weekly Meeting MOM-009]].

## [2026-06-05] ingest | KDP-DDA-03-RP-X-0003-D0 DD-WHP Hazard and Operability (HAZOP) Study Report
Project: KMDD. Doc: KDP-DDA-03-RP-X-0003-D0 DD-WHP Hazard and Operability (HAZOP) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[KMDD External Process Weekly Meeting MOM-009]], [[Technical Query Process]].

## [2026-06-05] ingest | KDP-KMA-03-RP-X-0003-D0 KM-WHP Hazard and Operability (HAZOP) Study Report
Project: KMDD. Doc: KDP-KMA-03-RP-X-0003-D0 KM-WHP Hazard and Operability (HAZOP) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[KMDD External Process Weekly Meeting MOM-009]], [[Technical Query Process]].

## [2026-06-05] ingest | KDP-OOO-03-SW-X-0004-E0 KM-WHP & DD-WHP Scope of Work for HAZID, HAZOP & SIL Classification
Project: KMDD. Doc: KDP-OOO-03-SW-X-0004-E0 KM-WHP & DD-WHP Scope of Work for HAZID, HAZOP & SIL Classification. Links added: [[KMDD Project]], [[Technical Bid Clarification Process]], [[Chemical Injection System Design]], [[KMDD MEC Weekly Meeting MOM-005]], [[Technical Query Process]].

## [2026-06-05] ingest | KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report
Project: KMDD. Doc: KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[Offshore Firewater System Design]], [[KMDD External Process Weekly Meeting MOM-009]].

## [2026-06-05] ingest | KDP-DDA-03-RP-X-0003-D0 DD-WHP Hazard and Operability (HAZOP) Study Report
Project: KMDD. Doc: KDP-DDA-03-RP-X-0003-D0 DD-WHP Hazard and Operability (HAZOP) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[KMDD External Process Weekly Meeting MOM-009]], [[Technical Query Process]].

## [2026-06-05] ingest | KDP-KMA-03-RP-X-0003-D0 KM-WHP Hazard and Operability (HAZOP) Study Report
Project: KMDD. Doc: KDP-KMA-03-RP-X-0003-D0 KM-WHP Hazard and Operability (HAZOP) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[KMDD External Process Weekly Meeting MOM-009]], [[Technical Query Process]].

## [2026-06-05] ingest | KDP-OOO-03-SW-X-0004-E0 KM-WHP & DD-WHP Scope of Work for HAZID, HAZOP & SIL Classification
Project: KMDD. Doc: KDP-OOO-03-SW-X-0004-E0 KM-WHP & DD-WHP Scope of Work for HAZID, HAZOP & SIL Classification. Links added: [[KMDD Project]], [[Technical Bid Clarification Process]], [[Chemical Injection System Design]], [[KMDD MEC Weekly Meeting MOM-005]], [[Technical Query Process]].

## [2026-06-05] ingest | KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report
Project: KMDD. Doc: KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[Offshore Firewater System Design]], [[KMDD External Process Weekly Meeting MOM-009]].

## [2026-06-05] ingest | KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report
Project: KMDD. Doc: KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[Offshore Firewater System Design]], [[KMDD External Process Weekly Meeting MOM-009]].

## [2026-06-05] ingest | KDP-DDA-03-RP-X-0003-D0 DD-WHP Hazard and Operability (HAZOP) Study Report
Project: KMDD. Doc: KDP-DDA-03-RP-X-0003-D0 DD-WHP Hazard and Operability (HAZOP) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[KMDD External Process Weekly Meeting MOM-009]], [[Technical Query Process]].

## [2026-06-05] ingest | KDP-KMA-03-RP-X-0003-D0 KM-WHP Hazard and Operability (HAZOP) Study Report
Project: KMDD. Doc: KDP-KMA-03-RP-X-0003-D0 KM-WHP Hazard and Operability (HAZOP) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[KMDD External Process Weekly Meeting MOM-009]], [[Technical Query Process]].

## [2026-06-05] ingest | KDP-OOO-03-SW-X-0004-E0 KM-WHP & DD-WHP Scope of Work for HAZID, HAZOP & SIL Classification
Project: KMDD. Doc: KDP-OOO-03-SW-X-0004-E0 KM-WHP & DD-WHP Scope of Work for HAZID, HAZOP & SIL Classification. Links added: [[KMDD Project]], [[Technical Bid Clarification Process]], [[Chemical Injection System Design]], [[KMDD MEC Weekly Meeting MOM-005]], [[Technical Query Process]].

## [2026-06-05] ingest | KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report
Project: KMDD. Doc: KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[Offshore Firewater System Design]], [[KMDD External Process Weekly Meeting MOM-009]].

## [2026-06-05] ingest | KDP-DDA-03-RP-X-0003-D0 DD-WHP Hazard and Operability (HAZOP) Study Report
Project: KMDD. Doc: KDP-DDA-03-RP-X-0003-D0 DD-WHP Hazard and Operability (HAZOP) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[KMDD External Process Weekly Meeting MOM-009]], [[Technical Query Process]].

## [2026-06-05] ingest | KDP-KMA-03-RP-X-0001-D0 KM-WHP Hazard Identification (HAZID) Study Report
Project: KMDD. Doc: KDP-KMA-03-RP-X-0001-D0 KM-WHP Hazard Identification (HAZID) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[Offshore Firewater System Design]], [[KMDD External Process Weekly Meeting MOM-009]].

## [2026-06-05] ingest | KDP-KMA-03-RP-X-0003-D0 KM-WHP Hazard and Operability (HAZOP) Study Report
Project: KMDD. Doc: KDP-KMA-03-RP-X-0003-D0 KM-WHP Hazard and Operability (HAZOP) Study Report. Links added: [[KMDD Project]], [[KMDD MEC Weekly Meeting MOM-005]], [[Chemical Injection System Design]], [[KMDD External Process Weekly Meeting MOM-009]], [[Technical Query Process]].

## [2026-06-05] ingest | KDP-OOO-03-SW-X-0004-E0 KM-WHP & DD-WHP Scope of Work for HAZID, HAZOP & SIL Classification
Project: KMDD. Doc: KDP-OOO-03-SW-X-0004-E0 KM-WHP & DD-WHP Scope of Work for HAZID, HAZOP & SIL Classification. Links added: [[KMDD Project]], [[Technical Bid Clarification Process]], [[Chemical Injection System Design]], [[KMDD MEC Weekly Meeting MOM-005]], [[Technical Query Process]].

## [2026-06-05] ingest | KMDD TBC EOD Jun 4
EOD TBC snapshot 04-Jun-2026. Key finding: INS-002 PRVs moved from stale to active (ATA + An Phu Tech responded TBC#2 by 15:45 deadline); stale count 7→6. MEC-003 at TBC#01 Rev.D (both Bao Nghi and Toan Thang). Pages touched: [[KMDD TBC EOD Jun 4]] (new), [[KMDD Project]] (procurement section updated). Flags: none.

## [2026-06-09] ingest | New raw files — Jun 4 emails + documents (batch)
62 new raw files (emails dated 2026-06-04 + 3 new document files). Most content was already captured in prior session from MyVault sources. New information extracted:
1. **KMDD MEC-007 CO2 Nitrogen** updated: Federal Fire Engineering submitted Forms T1–T8 on 04-Jun (10d late). Technical concern: CO2 pressure drop through PCV causes line/valve freezing (Joule-Thomson effect, dry ice risk). FFE needs isometric drawings to evaluate RO plate vs nozzle discharge.
2. **KMDD ELE-008 E&I Misc & Earthing** created as new source: 5 bidders (MT Corp, SECONS, ESOG, Hui Min/Duprex, TAKA) at TBC#2 Rev.B; SECONS missing instrument MTO; TAKA cooperative.
3. **Technical Bid Clarification Process** concept updated: added cryogenic CO2 freezing failure pattern + MTO incompleteness failure pattern; added ELE-008 to source references; sources: 10→11.
Pages created: [[KMDD ELE-008 E&I Miscellaneous Earthing TBC Status]].
Pages updated: [[KMDD MEC-007 CO2 Nitrogen Bidder Evaluation Crisis]], [[Technical Bid Clarification Process]].
Flags: The Firewater TQ Final document, Weekly MEC MOM-005, LDV OT Network TQ, and FEED Verification CRS files were already fully ingested in prior session. DCC/DocPro transmittals and SAF MOM cover email (no body) skipped as administrative.

## [2026-06-09] ingest | KMDD Emails — 08 Jun 2026
Summary: Processed ~15 email files dated 08-Jun-2026. Key findings: (1) topside weight shedding study completed (DD +92.1MT / KM +30MT overrun, 4 measures proposed, VSP meeting held 08-Jun afternoon; study only — base case continues); (2) chemical dosing rates accepted by VSP on 08-Jun (PPD 500ppmv, CI 130 L/d DD confirmed not optional, MeOH 507.8/560 L/h — design basis CLOSED); (3) MEC-006 BCM#2 combined CIS+MeOH skid confirmed feasible by POS and DKE; Triplex pump confirmed; respond by 12-Jun-2026; (4) 60 overdue procurement milestones / 30 packages / 19 critical; 47 open / 28 overdue PMC interface items; PIP/MEC/PRO 100% overdue; (5) INS-009 Z-3420 critical turndown non-compliance: required 611:1 vs V-Cone capability 28:1; (6) INS-002 KLE submitted TBC#2 Rev.B at 22:32; MEC-008 MS Time (Malaysia) still non-responsive. Pages created: [[KMDD TBC Snapshot 08Jun26]], [[KMDD Procurement Status 06Jun26]], [[KMDD Weekly Interface Status 08Jun26]], [[KMDD Topside Weight Shedding Study]], [[KMDD Chemical Dosing Rate Finalization]], [[KMDD MEC-006 BCM2 Results 08Jun26]], [[KMDD INS-009 Allocation Flowmeter TBC Status]]. Pages updated: [[KMDD Project]], [[Chemical Injection System Design]], [[KMDD MEC-002 Pig Launcher PVD Tech TBC Status]], [[index.md]].
Flags: none.

## [2026-06-09] ingest | LDV-B Early Engineering Scope of Work (MCB-0001-10AA-G-A17-0011 Rev B2)
Summary: Ingested LDV-B Early Engineering SOW (29-page document). LDV-B is an unmanned WHP on Block 15-1/05 Lac Da Vang; Murphy Oil as COMPANY; LDV-A DE (PTSC M&C) as analogue. Key findings: (1) unmanned concept — solar/wind power, fusible plug fire detection, DC electric hydraulic ICSS; (2) target lift weight ≤ 1,000 MT for both jacket and topside; (3) Early Engineering scope = ITB compilation + ±10% cost estimate + HYSYS/SACS/PDMS engineering across all disciplines; (4) LDV-B goes online 20–24 months after LDV-A First Oil (Q4 2026 target). Pages created: [[LDV-B Early Engineering Scope of Work]], [[LDV-B Project]]. Pages updated: [[LDV-A Project]] (added LDV-B sibling link).
Flags: none.

## [2026-06-09] ingest | LDV-Early Engineering SOW 260109 - to PMC
Project: LDV-A-PP. Doc: LDV-Early Engineering SOW 260109 - to PMC. Links added: [[KMDD Project]], [[Technical Bid Clarification Process]], [[Chemical Injection System Design]], [[KMDD MEC Weekly Meeting MOM-005]], [[KMDD Scope of Work HAZID HAZOP SIL]].

## [2026-06-09] ingest | RE [Ext] RE KMDD - Chemical Dosing Rate (PPD, SI, CI) & V-Jet Pigging Concept (update pass)
Summary: Re-read thread from .msg file. Core ingest already done in prior session. New details extracted from the 16:16 follow-on email (Nguyen Dinh Manh calling final alignment meeting): (1) Trương Minh Đức (VSP NIPI) confirmed support 09:42; (2) Nguyen Khac Hung (PVEP-KM) formally accepted 10:36 per letter 158-2026/DEV/PVEP-KM dated 05-Jun-2026; (3) Vo Viet Hai reiterated no technical objection 11:05, requested Single/Double Pig O&M procedure clarification before final selection; (4) Final alignment meeting called for 09-Jun-2026, 8:00AM, Room 901 VSP OCD Office. Pages touched: [[KMDD Chemical Dosing Rate Finalization]], [[Chemical Injection System Design]].
Flags: none.

## [2026-06-10] ingest | KMDD Emails — 09 Jun 2026
Summary: Processed 12 email files dated 09-Jun-2026. Key findings: (1) TBC EOD snapshot: 12 stale / 10 active; INS-009 escalated to TBC#4 (unusual); INS-004 moved to active; INS-002 TTE responded; ELE-008 TAKA submitted T7/T5; (2) Procurement overall: 53 packages, 60 overdue milestones, 20 critical; MEC-001 "Under CPY Review"; 38 milestones due in next 7 days; (3) Interface status (Tue auto-report): 47 open / 30 overdue (up from 28 Monday); PIP 10/10, MEC 6/6 fully overdue; CI dosing rate interface item overdue since Mar-2026; (4) HAZID-HAZOP-SIL Milestone #2: Risktec (Andrea Tria) submitted completion certificate + IVC-RISKTEC-LS-001 (PM-signed 09-Jun); requesting 20% payment approval; (5) MEC-005 Tank TBC#1 Rev.C issued to PPS/DKE/AECC (deadline 12-Jun): DKE nozzle N4 too low (oil/sludge risk — dip pipe + 150mm clearance required ≤ Weir Plate), arrangement discrepancy, no maintenance access at coalescer; (6) MEC-009 HVAC: Dynac responded TBC#1 Rev.A3 on 09-Jun; TBE Approval due 15-Jun; (7) MEC-006 BCM with PVDT 09-Jun: in-line configuration confirmed; routing/flow open; motor coupling adapter action on PVDT; electrical load lists sent; (8) CA Category finalized: Col E = "Vendor 3rd party (PTSC scope)"; yellow items still under review; distributed for IDC check. Pages created: [[KMDD TBC Snapshot 09Jun26]], [[KMDD Procurement Status 09Jun26]], [[KMDD Weekly Interface Status 09Jun26]], [[KMDD Hazid Hazop SIL Milestone 2]], [[KMDD MEC-005 Tank TBC Rev C]], [[KMDD MEC-009 HVAC Dynac TBC]], [[KMDD MEC-006 BCM PVDT 09Jun26]]. Pages updated: [[KMDD Project]] (sources 57→64), [[Chemical Injection System Design]] (sources 7→8), [[SIL Classification]] (sources 2→3), [[index.md]].
Flags: none.

## [2026-06-10] ingest | KMDD Emails — 10 Jun 2026
Summary: Processed ~70 email files dated 10-Jun-2026 (KMDD main + TBC + DCC + DocPro + NIPI subfolders). Key findings: (1) **Topside weight shedding officially actioned** — Nguyễn Văn Tây directed all teams to implement in design and procurement: cantilever deck cut (~31.8MT Part 2), vent boom, solar panel relocation, MEC item COG shift, 30MT counterweight; previously study-only, now official; (2) **MEC-006 TBC#3 Rev.C to all 3 bidders** (PVDT, FHE, VHI) with deadline 12-Jun; new Methanol Pump Skid width constraint (max 1200mm vs 1300mm proposed); (3) **Jacket 30% 3D model review (NIPI)** 11-Jun at NIPI office Vung Tau — STR/Tin/EMT in person, PVEP-KM confirmed; (4) **EMT action items assigned** — Khánh (EMDR, TBE monitoring, WHCP chase, EEP 12-Jun), Nam (shop drawings IDC 15-Jun/IFR 21-Jun, MOM), Mạnh (Order Prec. 11-Jun, FV 13-Jun, CI CO impact 20-Jun), Tây (weight shedding ASAP, 60% KOM Sat); (5) **ELE-002 BCM scheduled** — SE-Pharos 11-Jun 2pm, MT Corp-Pharos 12-Jun 8am, Motec-Orga 12-Jun 10am; MOTEC silent 15+ days (risk of disqualification); (6) **MEC-007 Federal Fire missing TBC#1 Rev.B** — despite TBC#2 response received 05-Jun; reminder sent; FFE raised CO2 pipe freezing risk (pressure drop causing choking); (7) **PIP-002 Rev.D3** issued to APDS (deadline 11-Jun); (8) **MEC-009 HCP power request** sent to DYNAC + MOTEC for electrical load assessment; (9) TBC snapshot morning: 12 stale / 10 active (no change overnight); (10) Multiple DCC transmittals (KDP-VSP-PMC-T-00119/00120/00121; KDP-PMC-VSP-TRM-00243) and DocPro submissions from PVEP-KM to VSP processed but skipped (administrative, no new technical content).
Pages created: [[KMDD TBC Snapshot 10Jun26]], [[KMDD EMT Action Items 10Jun26]], [[KMDD Topside Weight Shedding Design Actioned]], [[KMDD 30% Jacket 3D Model Review 11Jun26]], [[KMDD MEC-009 HCP Power Request]], [[KMDD ELE-002 Navigational Aids BCM Scheduling]], [[KMDD MEC-007 Federal Fire Missing TBC]], [[KMDD PIP-002 TBC Rev.D3 APDS]].
Pages updated: [[KMDD Project]] (sources 64→73), [[Chemical Injection System Design]] (sources 8→9), [[index.md]].
Flags: Weight shedding is now a design decision — not a study. This affects procurement scope (structural, ELE, piping offshore HUC items). CI Change Order impact collection deadline 20-Jun is a hard date. ELE-002 MOTEC disqualification risk is real — 15+ day silence.

## [2026-06-10] lint | Health check
Orphans: 0. Contradictions: 1 (fixed). Missing pages: 0. Stale claims: 3 (fixed). Suggested additions: 3.
Fixed: (1) [[Methanol Injection Hydrate Inhibition]] TQR status section updated — was still showing 08-Jun meeting as future; VSP/PVEP-KM acceptance now recorded; updated date to 2026-06-10. (2) [[Technical Query Process]] two draft TQs for PPD/SI and methanol rate marked superseded by VSP direct acceptance 08-Jun; updated date to 2026-06-10. (3) index.md source counts corrected: Methanol Injection (4→5), FEED Verification (1→3), Open Drain System Design (1→3); also fixed [[Open Drain System Design]] frontmatter (sources: 4→3 — only 3 source refs listed).
Suggested additions: [[HAZOP HAZID Methodology]] (cited in 4 concept pages: HIPPS Overpressure Protection, SIL Classification, Chemical Injection System Design, Offshore Firewater System Design); [[Change Order in EPCI]] (cited in FEED Verification EPCI Contract, Open Drain System Design, Technical Query Process, KMDD Project); [[Baker Hughes]] entity (cited in Chemical Injection System Design, Flow Assurance Offshore Pipeline, KMDD Project).

## [2026-06-11] ingest | LDV-B Status Emails (6 emails, LDV-B folder)
Summary: Ingested 6 emails from E:\MyVault\Emails\LDV-B\ covering Jan-2026 → Jun-2026. Key finding: PTSC M&C was added to "LDVB - DE" Microsoft 365 group on 09-Jun-2026, signalling contract award and DE team formation. Procurement Plan updated to 10-Jun-26 with preliminary ROS dates from Deputy PM. Pages created: [[LDV-B Bidding Benchmark Preparation]], [[LDV-B Contract Award and Procurement Plan Jun 2026]]. Pages updated: [[LDV-B Project]] (sources 1→3, added current status block).
Flags: none.

## [2026-06-11] lint | Health check
Orphans: 0. Contradictions: 0. Broken links fixed: 1 — malformed self-reference [[sources/KMDD Procurement Status 09Jun26]] in KMDD Procurement Status 09Jun26.md (path-prefixed link that would not resolve; replaced with prose reference to [[KMDD Project]]). Note: [[double bracket]] in Obsidian.md is a code-span example, not a real link. Stale pages: 1 — [[LDV-A Project]] (updated 2026-06-09) does not yet reference LDV-B DE team formation (low severity; LDV-B status lives on its own entity). Missing pages: 0 new. Suggested additions (carry-forward from Jun-10): [[HAZOP HAZID Methodology]] (4 concept pages), [[Change Order in EPCI]] (4 pages), [[Baker Hughes]] entity (3 pages).

## [2026-06-11] init | Batch ingest workflow v2
Multi-source batch ingest adopted (spec: docs/superpowers/specs/2026-06-11-multi-source-ingest-design.md). CLAUDE.md INGEST rewritten — entity-centric triage, package pages, thread collapsing. ingest-manifest.md bootstrapped with 605 pre-existing raw files; 1 file left pending for first ingest new run (raw/documents/KMDD/VSP-PVEPKM-MOM-DE-G.md).

## [2026-06-11] ingest | Batch — 1 file
Documents: 1 (source page). Emails: 0 significant, 0 routine, 0 skipped.
Pages created: [[KMDD EPCI Engineering Weekly Meeting Week 8]]. Pages updated: [[KMDD Project]] (sources 73→74), [[Technical Query Process]] (sources 4→5; TQ register expanded to 11+ entries), index.md.
Flags: SIGNIFICANT — well slot relocation (DD D3→D1 + cushion well, KM → D2/D3) confirmed by PVEP-KM with Change Order for additional conductor installation incoming; PFP/firewall A0 dispute open between PMC and CPY; NIPI proposing milestone re-baseline (AFC all JK+PL deliverables 18-Aug → 15-Sep).
