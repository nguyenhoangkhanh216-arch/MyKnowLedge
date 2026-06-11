# Multi-Source Batch Ingest Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Implement the `ingest new` batch workflow from `docs/superpowers/specs/2026-06-11-multi-source-ingest-design.md` — rewrite the CLAUDE.md INGEST section and bootstrap `ingest-manifest.md`.

**Architecture:** No code. The wiki agent executes the workflow; this plan changes the workflow definition (`CLAUDE.md`) and creates the tracking file (`ingest-manifest.md`). Conversion tools (markitdown, email_extractor.py) are upstream and untouched.

**Tech Stack:** Markdown, PowerShell (file listing only), git.

**Repo note:** The repo has unrelated staged changes. Every commit in this plan MUST use pathspec-limited commits (`git commit -o -m "<msg>" -- <paths>`) so only this plan's files are committed. Embedded double quotes in `-m` break PowerShell 5.1 argument passing — keep commit messages quote-free.

---

### Task 1: Rewrite CLAUDE.md INGEST section

**Files:**
- Modify: `E:\My Knowledge\CLAUDE.md`

- [ ] **Step 1: Read CLAUDE.md in full**

Read `E:\My Knowledge\CLAUDE.md`. All edits below use exact anchor text from it; if any anchor fails to match, re-check the file rather than guessing.

- [ ] **Step 2: Update the directory structure diagram**

Edit — old_string:

```
├── CLAUDE.md          ← this file — read first every session
├── index.md           ← content catalog: every wiki page, one-line summary, link
├── log.md             ← append-only timeline: ingests, queries, lint passes
│
├── raw\               ← IMMUTABLE — never modify anything here
│   ├── articles\      ← web-clipped markdown files (user drops files here)
│   ├── assets\        ← locally downloaded images
│   └── emails\
│       └── KMDD\      ← KMDD email markdown files (mirrored by email_extractor.py)
```

new_string:

```
├── CLAUDE.md            ← this file — read first every session
├── index.md             ← content catalog: every wiki page, one-line summary, link
├── log.md               ← append-only timeline: ingests, queries, lint passes
├── ingest-manifest.md   ← one line per processed raw file; batch ingest diffs against it
│
├── raw\               ← IMMUTABLE — never modify anything here
│   ├── articles\      ← web-clipped markdown files (user drops files here)
│   ├── assets\        ← locally downloaded images
│   ├── documents\     ← markitdown-converted documents, one subfolder per project (KMDD\, LDV\, …)
│   └── emails\        ← email markdown mirrored by email_extractor.py, one subfolder per project
│       └── KMDD\
```

- [ ] **Step 3: Add manifest rule to the Rules list**

Edit — old_string:

```
8. **File synthesis answers** — if a query produces a comparison, analysis, or new connection worth keeping, offer to save it as `wiki\synthesis\<title>.md`.
```

new_string:

```
8. **File synthesis answers** — if a query produces a comparison, analysis, or new connection worth keeping, offer to save it as `wiki\synthesis\<title>.md`.
9. **Every ingest writes the manifest** — every raw file processed by any ingest (single or batch) gets one line in `ingest-manifest.md`. A raw file with no manifest line is "new". Never remove manifest lines.
```

- [ ] **Step 4: Add Package Page conventions after the Page Body section**

Edit — old_string:

```
### Naming Conventions
```

new_string:

````
### Package Pages (entity subtype)

One page per procurement package in `wiki\entities\`, named `<PROJECT>-<DIS>-<NNN> <Package Name>` (e.g., `KMDD-MEC-006 Chemical Injection Package`). Frontmatter `type: entity`. These are the primary landing pages for routine procurement emails. Required sections in addition to the standard body:

```markdown
## Current Status
One line + date, e.g.: TBC#3 Rev.C issued to PVDT/FHE/VHI, responses due 12-Jun | 2026-06-10

## Timeline
- 2026-06-04 — TBC#2 Rev.C responses received from VHI, PVDT
- 2026-06-10 — TBC#3 Rev.C issued to all 3 bidders
(append-only, oldest first)

## Vendors
- VHI — active bidder, responded TBC#2 Rev.C
- PVD Tech — active bidder, BCM held 09-Jun

## Open Items
- [ ] 2026-06-10 — Methanol pump skid width 1200mm max vs 1300mm proposed — awaiting bidder response
- [x] ~~2026-06-04 — IRCD 24VDC power constraint~~ — resolved 04-Jun: IRCD changed remote → manual
```

Create a package page the first time a package accumulates knowledge worth a page; until then its facts may live on the project entity page.

### Naming Conventions
````

- [ ] **Step 5: Rename the single-file INGEST section and add the manifest step**

Edit — old_string:

```
### INGEST

**Trigger:** User says `ingest [filename]`, `ingest raw/articles/filename.md`, or `ingest E:\full\path\to\file.md`
```

new_string:

```
### INGEST (single file)

**Trigger:** User says `ingest [filename]`, `ingest raw/articles/filename.md`, or `ingest E:\full\path\to\file.md`
```

Then edit — old_string:

```
8. Report back: "Ingested. Pages created/updated: [list]. Flags: [none or description]."
```

new_string:

```
8. Append one line to `ingest-manifest.md` (see ingest-manifest.md Maintenance)
9. Report back: "Ingested. Pages created/updated: [list]. Flags: [none or description]."
```

- [ ] **Step 6: Insert the INGEST NEW (batch) section before QUERY**

Edit — old_string:

```
### QUERY

**Trigger:** Any question asked in conversation.
```

new_string:

````
### INGEST NEW (batch)

**Trigger:** User says `ingest new`

**Core principle:** entity-centric, not source-centric. Sources feed living pages (package pages, concepts, entities); only documents and *significant* emails get source pages of their own.

**Steps:**

1. **Discover** — Glob `raw\emails\**\*.md` and `raw\documents\**\*.md` separately (never rely on git status — it truncates). Diff against `ingest-manifest.md`: any file with no manifest line is new. Source type = top folder (`emails`/`documents`); project = subfolder (`KMDD`, `LDV`, …).
2. **Sort** — Process oldest first: emails by `YYYY-MM-DD` filename prefix, documents by frontmatter `created` date.
3. **Collapse threads and duplicates:**
   - Same filename in a project root and a mirror subfolder (`Technical Bid Clarification\`, `DCC\`, `DocPro\`, `VSP\`) = one file. Process once; write a manifest line for every path.
   - Group emails by normalized subject (strip `RE`/`Re`/`FW`/`Fw`, emoji prefixes, extra spaces). Process each thread once using its latest email — earlier replies are quoted inside it; earlier members get disposition `skipped-superseded`.
4. **Triage and route each file:**

   | Class | Test | Action |
   |---|---|---|
   | Document | from `raw\documents\` | Full source page + update related package/concept/entity pages. TQ/TQR/MOM/TBE document types are high-value. |
   | Significant email | decision made, TQ answered, new technical topic, vendor selected/rejected | Source page + living-page updates |
   | Routine email | TBC thread reply, transmittal, status nudge, meeting logistics | No source page. Update the package page: Current Status, Timeline bullet, Open Items as applicable |
   | Noise | 🌅/🌆 digest emails, duplicates, superseded thread members | Skip; manifest line only |

   When in doubt between routine and significant, choose routine — a fact can be promoted to a source page later; page sprawl cannot easily be undone.
5. **Open Items tracking** — a file containing a pending question or awaited response ("please advise", TQ issued, TBC awaiting reply) → add a dated bullet under Open Items on the relevant package/concept page. A later file that answers it → mark resolved with date and a one-line outcome (strike through; do not delete).
6. **Record** — one manifest line per file regardless of disposition; ONE consolidated `log.md` entry per batch (never per file):

```
## [YYYY-MM-DD] ingest | Batch — N files
Documents: a (source pages). Emails: b significant, c routine, d skipped.
Pages created: [[...]]. Pages updated: [[...]].
Flags: [none | contradictions, notable decisions]
```

7. Update `index.md` as usual. Report back: "Ingested N files: X source pages, Y living-page updates, Z skipped. Flags: …" — flag contradictions with existing wiki claims and decisions worth the user's attention.

**Error handling:** unreadable or empty file → manifest line with disposition `error`, listed in the report; never blocks the rest of the batch. File matching no known project → process under a generic bucket and flag in the report.

### QUERY

**Trigger:** Any question asked in conversation.
````

- [ ] **Step 7: Add ingest-manifest.md Maintenance section after log.md Maintenance**

Edit — old_string:

```
## Domain Tags Reference
```

new_string:

````
## ingest-manifest.md Maintenance

Tracks every processed raw file. Batch discovery diffs the raw glob against this file. One line per raw file path:

```
- raw/emails/KMDD/2026-06-04 - RE KMDD - Open drain tank options.md | 2026-06-11 | routine → [[KMDD Project]]
```

Format: `- <path relative to E:\My Knowledge, forward slashes> | <ingest date YYYY-MM-DD> | <disposition>[ → [[target page]]]`

Dispositions: `source-page`, `routine`, `skipped-digest`, `skipped-duplicate`, `skipped-superseded`, `error`, `bootstrap` (file was already wikified before the manifest existed).

Append only. Never remove or rewrite lines. Both single-file and batch ingest append here.

---

## Domain Tags Reference
````

- [ ] **Step 8: Verify the edits**

Run: `Grep pattern "INGEST NEW" path "E:\My Knowledge\CLAUDE.md" output_mode content`
Expected: the `### INGEST NEW (batch)` heading and the trigger line.

Run: `Grep pattern "ingest-manifest" path "E:\My Knowledge\CLAUDE.md" output_mode count`
Expected: count ≥ 5 (diagram, rule 9, single-file step 8, batch steps, maintenance section).

Read the full Workflows section once and confirm the section order is: INGEST (single file) → INGEST NEW (batch) → QUERY → LINT, with no duplicated or orphaned text from the edits.

- [ ] **Step 9: Commit**

```powershell
git commit -o -m 'Rewrite INGEST workflow: add batch ingest-new, package pages, manifest' -- CLAUDE.md
```

Expected: 1 file changed, only CLAUDE.md.

---

### Task 2: Bootstrap ingest-manifest.md

**Files:**
- Create: `E:\My Knowledge\ingest-manifest.md`

- [ ] **Step 1: List all raw email and document files**

```powershell
Get-ChildItem "E:\My Knowledge\raw\emails","E:\My Knowledge\raw\documents" -Recurse -Filter *.md | ForEach-Object { $_.FullName.Substring("E:\My Knowledge\".Length) -replace '\\','/' } | Sort-Object
```

Expected: full list of raw file paths with forward slashes (roughly 150–250 lines).

- [ ] **Step 2: Split the list into bootstrap vs pending**

Per `log.md` (read in this session): batch ingests covered all raw emails dated `2026-06-10` and earlier, and all raw documents currently in `raw\documents\` (each document filename appears in a log entry). Therefore:

- **Bootstrap** (already wikified): every email whose filename date prefix is `2026-06-10` or earlier, and every document whose filename appears in a `log.md` ingest entry (Grep each document filename's distinctive part — e.g. doc number — against `E:\My Knowledge\log.md` to confirm).
- **Pending** (not yet ingested): emails dated `2026-06-11` or later, and any document with no `log.md` match.

Do NOT write pending files into the manifest — absence from the manifest is what marks them as new for the first `ingest new` run.

- [ ] **Step 3: Write ingest-manifest.md**

Write `E:\My Knowledge\ingest-manifest.md` with this header followed by one line per bootstrap file:

```markdown
# Ingest Manifest

One line per processed raw file: `- <path> | <ingest date> | <disposition>[ → [[target page]]]`
Append only — see CLAUDE.md "ingest-manifest.md Maintenance".

---

- raw/documents/KMDD/KDP-DDA-03-RP-X-0001-D0 DD-WHP Hazard Identification (HAZID) Study Report.md | 2026-06-11 | bootstrap
- raw/emails/KMDD/2026-06-03 - KMDD - Open drain tank options.md | 2026-06-11 | bootstrap
... (every bootstrap file from Step 2, sorted, disposition exactly `bootstrap`)
```

- [ ] **Step 4: Verify counts**

```powershell
(Select-String '^- raw/' "E:\My Knowledge\ingest-manifest.md").Count
```

Expected: equals the bootstrap count from Step 2 (raw file total minus pending count). Spot-check 3 lines for correct `path | date | bootstrap` format.

- [ ] **Step 5: Commit**

```powershell
git commit -o -m 'Bootstrap ingest-manifest.md with already-wikified raw files' -- ingest-manifest.md
```

Expected: 1 file changed, only ingest-manifest.md.

---

### Task 3: Log the workflow change and report pending files

**Files:**
- Modify: `E:\My Knowledge\log.md` (append only)

- [ ] **Step 1: Append log entry**

Append to the bottom of `E:\My Knowledge\log.md` (never edit earlier entries):

```markdown
## [2026-06-11] init | Batch ingest workflow v2
Multi-source batch ingest adopted (spec: docs/superpowers/specs/2026-06-11-multi-source-ingest-design.md). CLAUDE.md INGEST rewritten — entity-centric triage, package pages, thread collapsing. ingest-manifest.md bootstrapped with N pre-existing raw files; M files left pending for first ingest new run.
```

Replace N and M with the actual counts from Task 2.

- [ ] **Step 2: Commit**

```powershell
git commit -o -m 'Log batch ingest workflow v2 adoption' -- log.md
```

Expected: 1 file changed, only log.md.

- [ ] **Step 3: Report to user**

Tell the user: bootstrap count, the list of pending files (if any), and that saying `ingest new` will process them under the new workflow.
