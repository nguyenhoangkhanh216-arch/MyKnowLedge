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

## [2026-06-11] ingest | Batch — 2 files
Documents: 2 (source pages). Emails: 0 significant, 0 routine, 0 skipped.
Pages created: [[LDV-A E&I Cable Tagging Deviation Request]], [[LDV-A TI Weekly MOM-062 10Jun26]]. Pages updated: [[LDV-A Project]] (sources 2→4; added T&I campaign status, CB9 barge confirmation, flare boom COG discrepancy, new personnel: Ta Van Minh, Ha Manh Cuong, Le Dinh Hung, HMC team), index.md (Sources 76→78, Wiki pages 97→99).
Flags: SIGNIFICANT — offshore T&I campaign less than 1 month away (10-Jun-2026); flare boom COG discrepancy >1m is an open engineering risk; Deviation Request DEV MCB-0005-11AA-G-B16-0001 awaiting MOC approval for 28 E&I punch items on 8 vendor skids. Hook conflict (PreToolUse block-raw-reads.ps1) blocked reads during ingest — resolved by removing hook from settings.local.json.

## [2026-06-12] ingest | Batch — 74 files
Documents: 3 (2 source pages + 1 routine reference). Emails: 0 significant, 0 routine, 71 skipped (encoding duplicates: en-dash/hyphen variants + emoji/??  variants of already-bootstrapped files).
Pages created: [[NDUM Early Detail Engineering KOM]], [[KMDD MEC-004 NTT BCM1 TBC Response]], [[NDUM Project]], [[KMDD-MEC-004 EODD Pump and Centrifugal Pump]]. Pages updated: [[KMDD Project]] (sources 74→75; MEC-004 NTT BCM#1 status added).
Flags: SIGNIFICANT — new project NDUM (Nam Du-U Minh, Jadestone Energy / PTSC M&C) entered wiki for first time; EDE KOM 03-Jun-2026; flexible riser TR IFR deadline 15-Jun-2026. KMDD-MEC-004 NTT excluded EODD pumps (centrifugal pumps only).

## [2026-06-12] ingest | Batch — 158 files (continuation)
Documents: 1 source page (KMDD EEP Rev A0). Emails: 0 significant, 27 routine (TBC issuances, DCC transmittals, DEG handling, MEC-004 urgent clarification, subcontract finalization), 130 skipped (digest/automated reports, encoding duplicates of bootstrapped files, superseded thread members).
Pages created: [[KMDD Engineering Execution Plan Rev A0]], [[KMDD-MEC-006 Chemical Injection Package]]. Pages updated: [[KMDD Project]] (sources 75→76; subcontract terms, EEP status, MEC-004/006 TBC status, DCC transmittals), [[KMDD-MEC-004 EODD Pump and Centrifugal Pump]] (sources 1→2; 4 bidders: NTT/TK/TTE/KLE; CPY rejected TK models; TBC#01 Rev.C issued 11-Jun deadline 13-Jun).
Flags: SIGNIFICANT — PTSC M&C ↔ VSP subcontract finalized: 30m warranty from RFSA, NO grace period, RFSA hard deadline 12-Jul-2027; RFLO 30-Jun-2027. CPY rejected Thai Khuong pump models for MEC-004 (BEP non-compliance). EEP Rev A0 under VSP comment review 12-Jun-26 (meeting same day). VHI TBC#2 Rev.C response for MEC-006 due 13-Jun-26.

## [2026-06-12] ingest | Batch — continuation (missing entity pages + INS-001)
Documents: 0 new. Emails: 0 new. Remediation: rebuilt 2 entity pages that were logged as created in prior 12-Jun batches but were never written to disk, and created 1 new entity page.
Pages created: [[KMDD-MEC-004 EODD Pump and Centrifugal Pump]] (rebuilt, sources: 3), [[KMDD-MEC-006 Chemical Injection Package]] (rebuilt, sources: 5), [[KMDD-INS-001 Actuated On-Off Valves and MOVs]] (new; MTO issued 04-Jun via KDP-IMO-E-0057). Pages updated: [[KMDD Project]] (INS-001 added to Key packages list), index.md (Wiki pages 105→108; MEC-004 source count 2→3; MEC-006 corrected 1→5, 4→5 bidders; INS-001 entry added).
Flags: Investigation confirmed MEC-004 and MEC-006 entity files were absent on disk despite prior log entries claiming creation — write operations from those sessions did not persist.

## [2026-06-12] lint | Health check
Orphans: 1 (fixed). Contradictions: 0. Missing pages: 0 (1 apparent spurious link in Obsidian.md is inside backticks — harmless). Malformed links: 4 files had path-prefixed wikilinks (fixed). Index count errors corrected.
Actions taken: (1) Fixed orphan [[KMDD-INS-001 Actuated On-Off Valves and MOVs]] — added wikilink from KMDD Project Key Packages line. (2) Fixed malformed path-prefixed links in KMDD MEC-004 NTT BCM1 TBC Response.md (entities/, concepts/ prefixes), NDUM Early Detail Engineering KOM.md (entities/, concepts/ prefixes), NDUM Project.md (sources/ prefix). (3) Corrected index.md header: Sources 81→82, Wiki pages 108→107.
Suggested additions: [[Topside Weight Management]] — appears in 6+ sources (Topside Weight Shedding Study, Topside Weight Shedding Design Actioned, Engineering Progress COD 29May26, EMT Action Items 10Jun26, 30% Jacket 3D Model Review 11Jun26, KMDD Project) but no concept page exists.

## [2026-06-12] synthesis | Topside Weight Management
Created concept page [[Topside Weight Management]] — crane lift capacity vs factored topside weight; WCR metrics; KMDD DD-WHP +92.1 MT overrun; 5 weight shedding measures actioned 10-Jun-2026; discipline impacts table; procurement change order consequences. Pages updated: index.md (Wiki pages 107→108; new concept entry).

## [2026-06-13] ingest | KMDD TBC Snapshot 11Jun26, KMDD Telecom ICSS Ship Collision Scope Dispute, KMDD DE CONS AFC Drawing Schedule Jun11, NDUM JSE Communication Matrix
Summary: 4 new source pages from Jun 11–12 emails and raw documents. (1) TBC snapshot: 9 stale packages at morning 11-Jun, worst INS-005 at 27d; MEC-004 TBC#01 Rev.C issued same day. (2) Telecom/ICSS/Ship Collision: VSP raised two contract-scope disputes on 11-Jun — Ship Collision exclusion documentation missing + Telecom/ICSS SoW/SoS review; creates PMC contractual risk. (3) DE-CONS AFC conflict: CONS requested 25-Jun primary steel drawings; DE can only commit Jul-Aug due to weight shedding design changes; fabrication sequence impact unresolved. (4) NDUM JSE communication matrix: 7 JSE contacts formalized 04-Jun-2026; Laybourne=TO for engineering, Falconer=TO for TBC. Pages touched: [[KMDD Project]] (sources 76→79; new sections for Telecom/ICSS dispute + AFC conflict + 11-Jun TBC snapshot), [[NDUM Project]] (sources 1→2), [[Topside Weight Management]] (sources 6→7; decision sequence updated with AFC impact note), [[KMDD-MEC-004 EODD Pump and Centrifugal Pump]] (sources 3→4). index.md updated: Sources 82→86, Wiki pages 108→112.
Flags: none.

## [2026-06-13] ingest | KMDD INS-002 PRV TBC2 Rev.C Wave 12Jun26, KMDD MEC-006 POS TBC1 Rev.B 12Jun26
Summary: 2 new source pages + 1 new entity from 7 Jun-12 emails (6 unique files; two ATA files are same thread). (1) INS-002 PRV TBC#2 Rev.C issued simultaneously to all 5 bidders 12-Jun 07:21-07:24 (KLE, TTE, Thanh An, An Phu, ATA); deadline COB 15-Jun-26; notable technical flag: An Phu's Italian foundry (Technical Srl) raised ferrite spec dispute — 45-55% requirement contradicts low-temp toughness, requesting CPY clarification. (2) MEC-006 POS TBC#1 Rev.B issued 12-Jun 07:10; deadline 13-Jun 11:30 AM. New entity [[KMDD-INS-002 Pressure Relief Valves]] created (4 sources). EDMS overdue reminder for Khánh captured in KMDD Project entity. Pages touched: [[KMDD Project]] (sources 79→82), [[KMDD-MEC-006 Chemical Injection Package]] (sources 5→6), [[KMDD-INS-002 Pressure Relief Valves]] (new). index.md updated: Sources 86→88, Wiki pages 112→115.
Flags: none.

## [2026-06-13] lint | Health check
Orphans: 0. Contradictions: 0. Missing pages: 2 (fixed). Stale claims: 1 low-severity flag. Suggested additions: 2.
Fixed: (1) [[KMDD MEC-006 POS TBC1 Rev.B 12Jun26]] line 29 — broken link `[[KMDD MEC-006 BCM Results 08Jun26]]` corrected to `[[KMDD MEC-006 BCM2 Results 08Jun26]]` (dropped "2" from "BCM2"). (2) [[KMDD Engineering Execution Plan Rev A0]] line 32 — malformed path-prefixed link `[[concepts/Technical Query Process]]` corrected to `[[Technical Query Process]]`.
Stale claims (low): [[KMDD-INS-001 Actuated On-Off Valves and MOVs]] has not been touched since creation 2026-06-12; update when new INS-001 TBC events are ingested.
Suggested additions: (1) [[PVEP-KM]] entity page — appears as "COMPANY", "CPY", "PVEP-KM" throughout 80+ KMDD pages; no entity page exists; would consolidate role (field owner), key contacts, organizational relationship to VSP/PTSC M&C. (2) [[VSP]] entity page — "VSP" (Vietsovpetro/OCD/NIPI) appears throughout KMDD pages as Owner's Engineer and jacket/pipeline subcontractor; no entity page exists.

## [2026-06-14] ingest | 13 Jun 2026 KMDD emails (10 substantive)
Summary: 32 emails from 13-Jun-2026 processed; 10 substantive (22 routine/skipped: DCC transmittals TRM-00247 to TRM-00255, weekly report reminder, EDMS overdue, TBC response receipt confirmations). Key findings: (1) CuNi firewater stagnation concern CLOSED 12-Jun — PVEP-KM Le Van Dong accepted re-routing; pipe stress sagging requirement added. (2) Telecom/ICSS scope meeting held 12-Jun — technical direction agreed (proceed per DE); SoW/SoS commercial alignment still open between VSP and PMC procurement teams; Ship Collision deferred to separate email. (3) SOG Safety Studies KOM confirmed 22-Jun-2026 08:00–11:30 AM; SOG to review FEED Assumption Register in advance. (4) 60% Model Review Workshop target 06-Jul-2026; preparation meeting held 13-Jun 09:00 Room 3.16. (5) PTSC-VSP Subcontract: LD RFSA (12-Jul-27 NO GRACE) still open; Exhibits 3 and 8 pending; CPY document template review sent 13-Jun. (6) ELE-001 solar panel support scope confirmed as Option 2 (bidder designs, PTSC fabricates). (7) Cold vent temperature monitoring DD-WHP: INS to design; STR access way for thermal element. (8) HVAC MEC-009 HCP power: MOTEC more complete; ELE reviewing for load assessment. (9) MEC-006 painting matrix re-review issued to Corrosion team. (10) CONS confirmed grating clip design executable (13-Jun); ~100 AFC drawings schedule gap persists.
Pages created: [[KMDD CuNi Firewater Stagnation Accepted 13Jun26]], [[KMDD Telecom ICSS Scope Meeting 12Jun26]], [[KMDD 60% Model Review Preparation 13Jun26]], [[KMDD Cold Vent Temperature Monitoring 13Jun26]], [[KMDD Safety Studies SOG KOM 22Jun26]], [[KMDD Subcontract Finalization Status Jun26]], [[KMDD ELE001 Solar Panel Support Scope 13Jun26]], [[KMDD HVAC MEC009 HCP Power Bidders 13Jun26]], [[KMDD MEC006 Painting Matrix Review 13Jun26]], [[KMDD Grating Clip CONS Confirmed 13Jun26]].
Pages updated: [[KMDD Project]] (sources 82→92), [[KMDD-MEC-006 Chemical Injection Package]] (sources 6→7), [[Offshore Firewater System Design]] (sources 3→4; stagnation CLOSED note + sagging requirement), [[Offshore Piping Material Selection]] (sources 3→4; KMDD Decisions updated with stagnation resolution), [[KMDD Telecom ICSS Ship Collision Scope Dispute]] (meeting outcome summary added). index.md updated: Sources 88→98, Wiki pages 115→125.
Flags: SIGNIFICANT — (1) CuNi stagnation CLOSED removes the last open PVEP-KM objection to material change; pipe stress team must now formally account for sagging load. (2) Subcontract LD milestone 12-Jul-2027 with NO GRACE remains a key commercial risk for PTSC M&C — schedule tightness given DE completion 05-Nov-2026 and construction ramp-up. (3) SOG KOM 22-Jun is the last checkpoint before Safety Studies formal commencement — inputs from FEED Assumption Register must be ready. (4) 60% Model Review 06-Jul is 3 weeks away — discipline leads flagged at preparation meeting.

## [2026-06-14] lint | Health check
Orphans: 0. Contradictions: 0. Missing pages: 0. Duplicate files: 3 deleted. Pre-compaction pages not in index: 6 added.
Fixed: (1) Deleted duplicate source `KMDD Cold Vent Temperature Monitoring 13Jun26.md` — same raw file as pre-compaction `KMDD Cold Vent Temperature Monitoring.md` (pre-compaction version has more detail: Piping MTO scope by Trần Đức Trung, exact timeline). (2) Deleted duplicate source `KMDD 60% Model Review Preparation 13Jun26.md` — same raw file as pre-compaction `KMDD 60% Model Review Workshop Jul6.md`. (3) Deleted empty URL-encoded artifact `KMDD ELE-008 E%26I Miscellaneous Earthing TBC Status.md`. (4) Updated `KMDD Project.md` source refs and body to point to correct pre-compaction page names for Cold Vent and 60% Review; added 3 missing source refs (Ship Collision Resolution, MEC-006 TBC3, TBC Snapshot 13Jun26). (5) Added cross-links between `KMDD Telecom ICSS Scope Meeting 12Jun26.md` and `KMDD Telecom ICSS Ship Collision Resolution 12Jun26.md` (complementary pages from same meeting, different source emails). (6) Updated `KMDD Telecom ICSS Ship Collision Scope Dispute.md` to reference both meeting outcome pages. (7) Added 6 pre-compaction pages to index: `KMDD Telecom ICSS Ship Collision Resolution 12Jun26`, `KMDD MEC-006 TBC3 Bidder Response 12Jun26`, `KMDD 60% Model Review Workshop Jul6`, `KMDD TBC Snapshot 13Jun26`, `KMDD Cold Vent Temperature Monitoring`, `Cold Vent Design` (concept). (8) Updated `KMDD-MEC-006 Chemical Injection Package.md` with TBC3 detail (PVDT 0.25 kW CI pump, motor power dispute, POS extension to 16-Jun). (9) index.md header corrected: Sources 98→101, Wiki pages 125→129.
Suggested additions (carry-forward + new): (1) [[PVEP-KM]] entity — cited 80+ pages; (2) [[VSP]] entity — cited throughout KMDD pages; (3) [[Change Order in EPCI]] — cited in 4+ pages; (4) [[Baker Hughes]] entity — cited in 3+ pages; (5) [[SOG]] entity — now cited in Safety Studies KOM and KMDD Project pages.

## [2026-06-15] lint | Health check
Orphans: 0. Contradictions: 0. Missing pages: 1 (fixed). Stale claims: 3. Suggested additions: 6 (carry-forward + new).
Fixed: (1) [[KMDD Project]] line 162 — broken link `[[KMDD 60% Model Review Preparation 13Jun26]]` corrected to `[[KMDD 60% Model Review Workshop Jul6]]`; the 06-14 lint deleted the duplicate file but the body text was not updated at the time.
Spurious (not fixed): `[[double bracket]]` in [[Obsidian]] — reference to a user test note about Obsidian wikilink syntax; harmless, no fix needed.
Stale claims: (1) [[SIL Classification]] (updated 2026-06-10, 3 src) — [[KMDD Safety Studies SOG KOM 22Jun26]] (2026-06-14) confirms SOG as consultant, KOM 22-Jun, FEED Assumption Register pre-read required; should be 4th source. (2) [[Chemical Injection System Design]] (updated 2026-06-10, 9 src) — [[KMDD MEC-006 TBC3 Bidder Response 12Jun26]] and [[KMDD MEC006 Painting Matrix Review 13Jun26]] not yet reflected; entity page [[KMDD-MEC-006 Chemical Injection Package]] is up to date at 2026-06-15 so impact is low. (3) [[FEED Verification EPCI Contract]] (updated 2026-06-04, 3 src) — [[KMDD Subcontract Finalization Status Jun26]] (2026-06-14) adds real-world LD/warranty terms tied to FEED deliverable acceptance; merits a 4th source reference.
Suggested additions (carry-forward + new): (1) [[PVEP-KM]] entity — cited 80+ pages; (2) [[VSP]] entity — cited throughout KMDD pages; (3) [[Change Order in EPCI]] concept — cited in 12 wiki pages, user has root-level note on topic; (4) [[Baker Hughes]] entity — cited 3+ pages; (5) [[SOG]] entity — confirmed in Safety Studies KOM; (6) [[HAZID HAZOP Process]] concept (NEW) — HAZID/HAZOP methodology appears in 27 wiki pages across 4 dedicated source pages (KM-WHP/DD-WHP HAZID/HAZOP reports + SoW); no concept page exists explaining methodology.

## [2026-06-16] ingest | KMDD Emails — 15 Jun 2026
Summary: Ingested 9 substantive emails from 15-Jun-2026. Key events: (1) INS-002 TBC#2 Rev.C deadline met — all 5 bidders (Thanh An 12:34, TTE 15:16, An Phu 20:19 + KLE/ATA) responded; An Phu ferrite spec dispute ongoing (Italian foundry challenges 45-55%, NORSOK-M-630 argues ~40-42%). (2) MEC-006 IRCD fail-safe conflict — DKE fail-closed vs PVDT fail-last-position; continuous injection design requires resolution; Hoàng→Khoa for clarification. (3) 3rd Party Studies KOM formal invitation for 22-Jun 08:00–11:30, Room 1.07, SOG chairs. (4) MEL issued for IDC on both platforms (KDP-KMA/DDA-03-LI-M-0001-D0). (5) Equipment tagging confirmed by PVEP-KM: "01"=KM-WHP, "02"=DD-WHP per KDP-OOO-00-PS-G-0003 Rev B2. (6) VDRL submitted to VSP for Crane/HIPPS/DEG free-issue packages. (7) WHCP/ICSS EDMS review setup in progress — Nam forwarded package assignment matrix; VSP docs already received. (8) Well slot swap action confirmed — DD-WHP D3→D1, KM-WHP D2/D3 conductor tag swap.
Pages created: [[KMDD TBC Snapshot 15Jun26]], [[KMDD Well Slot Swap DD-WHP Jun26]], [[KMDD INS-002 PRV TBC2 RevC Responses 15Jun26]], [[KMDD 3rd Party Studies KOM Invitation 15Jun26]], [[KMDD Master Equipment List IDC 15Jun26]], [[KMDD Free Issue VDRL Submission 15Jun26]], [[KMDD WHCP ICSS EDMS Review Setup 15Jun26]], [[KMDD MEC-006 IRCD Fail-Safe Dispute 15Jun26]], [[KMDD Equipment Tagging Procedure Confirmed 15Jun26]], [[Equipment Tagging and Numbering]] (new concept).
Pages updated: [[KMDD-INS-002 Pressure Relief Valves]] (sources 5→6), [[KMDD-MEC-006 Chemical Injection Package]] (sources 8→9), [[KMDD Project]] (sources 94→103, added 15-Jun procurement section), [[Technical Bid Clarification Process]] (sources 11→12), [[Chemical Injection System Design]] (sources 9→10, added IRCD fail-safe section).
Index: Sources 103→112, Wiki pages 131→142.
Flags: none.

## [2026-06-16] lint | Health check
Orphans: 0. Contradictions: 0. Missing pages: 0. Stale claims: 2 (carry-forward). Suggested additions: 6 (carry-forward).
Checked: all 10 new/updated pages from today's 15-Jun ingest; all wikilinks resolve to existing files; all new source pages have ≥1 inbound link from KMDD Project entity or peer pages.
Stale claims (carry-forward, not yet fixed): (1) [[SIL Classification]] (updated 2026-06-10, 3 src) — 3rd Party Studies KOM on 22-Jun-2026 will review SIL; [[KMDD 3rd Party Studies KOM Invitation 15Jun26]] adds SOG as assigned consultant; merits 4th source reference. (2) [[FEED Verification EPCI Contract]] (updated 2026-06-04, 3 src) — [[KMDD Subcontract Finalization Status Jun26]] documents real-world LD (12-Jul-2027 NO GRACE) and warranty (30m RFSA) terms; merits 4th source reference.
Suggested additions (carry-forward): (1) [[PVEP-KM]] entity — cited 80+ pages, highest-priority missing entity; (2) [[VSP]] entity — cited throughout KMDD pages; (3) [[Change Order in EPCI]] concept — cited 15+ wiki pages, user has root-level note; (4) [[Baker Hughes]] entity — cited 3+ pages; (5) [[SOG]] entity — confirmed in Safety Studies KOM; (6) [[HAZID HAZOP Process]] concept — 27+ wiki pages across 4 dedicated source pages, no standalone concept explaining the methodology.
