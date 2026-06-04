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
