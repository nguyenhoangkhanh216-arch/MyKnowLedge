# Multi-Source Batch Ingest — Design Spec

_Created: 2026-06-11_

## Overview

A batch ingest workflow (`ingest new`) for the LLM Wiki that processes markdown from two source streams — emails mirrored by `email_extractor.py` into `raw\emails\<project>\`, and documents converted with markitdown into `raw\documents\<project>\`. The workflow is **entity-centric**: sources feed a small set of living wiki pages (packages, concepts, entities) rather than producing one summary page per file.

This replaces the per-file-only INGEST workflow in `CLAUDE.md` for batch use. Single-file `ingest <path>` remains unchanged.

The earlier Doc2Wiki PyQt6 app design (`2026-06-03-doc2wiki-design.md`) is superseded on the conversion side: document conversion is now done with markitdown; this spec covers everything downstream of conversion.

---

## Core Principle

The wiki's value is what QUERY can answer. Durable assets, in priority order:

1. **Package pages** (`wiki\entities\`) — one per procurement package, e.g. `KMDD-MEC-006 Chemical Injection Package`. Fixed sections:
   - **Current Status** — one line + date, e.g. `TBC#3 Rev.B issued to VHI, awaiting response | 2026-06-04`
   - **Timeline** — append-only dated bullets, oldest first
   - **Vendors** — bidders/suppliers involved, with current standing
   - **Open Items** — pending questions/actions; marked resolved with date when answered
   - **Connections**, **Source References** — per existing page conventions
2. **Concept pages** — technical topics (hydrate inhibition, firewater design pressure, …)
3. **Entity pages** — vendors, companies, standards, people
4. **Source pages** — evidence records, created only for documents and *significant* emails

Routine emails update living pages directly and do **not** get source pages.

---

## Batch Pipeline (`ingest new`)

### 1. Discover

- Glob `raw\emails\**\*.md` and `raw\documents\**\*.md` separately (never rely on git status — it truncates).
- Diff against `ingest-manifest.md` (wiki root). Files not in the manifest are the work list.
- Source type = top folder (`emails` / `documents`). Project = subfolder (`KMDD`, `LDV`, …).

### 2. Sort

Process oldest first (by filename date prefix for emails, frontmatter `created` for documents) so statuses and timelines build chronologically.

### 3. Collapse threads and duplicates

- Same filename appearing in a project root and a mirror subfolder (`Technical Bid Clarification\`, `DCC\`, `DocPro\`, `VSP\`) = one file. Process once; record all paths in the manifest.
- Group emails by normalized subject (strip `RE`, `FW`, `Re`, emoji prefixes, trailing whitespace). Process each thread once using the latest email — earlier replies are quoted inside it. All thread members get manifest lines.

### 4. Triage and route

| Class | Test | Action |
|---|---|---|
| **Document** | from `raw\documents\` | Full source page + update related package/concept/entity pages. `doc_number` type code drives weight: TQ / TQR / MOM / TBE = high-value. |
| **Significant email** | decision made, TQ answered, new technical topic, vendor selected/rejected | Source page + update living pages. |
| **Routine email** | TBC thread reply, transmittal, status nudge, meeting logistics | No source page. Update package page: Current Status, Timeline bullet, Open Items as applicable. |
| **Noise** | 🌅/🌆 digest emails, duplicates, thread members superseded by a later reply | Skip. Manifest line only. |

When in doubt between routine and significant, prefer routine — a fact can always be promoted to a source page later; page sprawl cannot be easily undone.

### 5. Open Items tracking

- A file containing a pending question or awaited response ("please advise", TQ issued, TBC awaiting reply) → add a dated bullet under Open Items on the relevant package/concept page.
- A later file that answers it → mark the item resolved with date and a one-line outcome. Do not delete resolved items; strike or move to a Resolved subsection.

### 6. Record

- **Manifest** (`ingest-manifest.md`): one line per file regardless of disposition:
  `- raw/emails/KMDD/2026-06-04 - ....md | 2026-06-11 | routine → [[KMDD-MEC-006 Chemical Injection Package]]`
  Dispositions: `source-page`, `routine`, `skipped-digest`, `skipped-duplicate`, `skipped-superseded`, `error`.
- **log.md**: one consolidated entry per batch (not per file):

```
## [YYYY-MM-DD] ingest | Batch — N files
Documents: a (source pages). Emails: b significant, c routine, d skipped.
Pages created: [[...]]. Pages updated: [[...]].
Flags: [none | contradictions, notable decisions]
```

- **index.md**: add new pages, update touched-page summaries and the `_Last updated_` header.

### 7. Report

"Ingested N files: X source pages, Y living-page updates, Z skipped. Flags: …" — flag contradictions with existing wiki claims and any decision worth the user's attention.

---

## Error Handling

- File unreadable or empty → manifest line with disposition `error`, listed in the batch report; never blocks the rest of the batch.
- A file matching no known project → process under a generic project bucket and flag in the report.
- Manifest missing (first run) → create it; treat all currently-wikified raw files as a bootstrap question for the user rather than re-ingesting blindly.

## Out of Scope

- Package status board synthesis page (deferred by user decision)
- Any conversion tooling (markitdown and email_extractor.py are upstream, as-is)
- Automation/scheduling of `ingest new` — user-triggered only
- Changes to QUERY or LINT workflows

## Implementation Surface

1. `CLAUDE.md` — rewrite the INGEST section: keep single-file flow, add the batch pipeline above, add package-page section conventions.
2. `ingest-manifest.md` — new file at wiki root, bootstrap with already-ingested raw files.
3. No code. The agent executes the workflow; markitdown and email_extractor.py are unchanged.
