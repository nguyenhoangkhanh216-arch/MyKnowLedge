# NLQ ITB Knowledge Base — Design Spec
_2026-06-16_

## Problem

19 ITB documents (mixed PDF/Word/Excel, converted to markdown via markitdown) for the NLQ EPCIC 10 bidding project — North Oil Company, Al Shaheen Oil Field, Qatar. Tender deadline: ~2 months. Core pain: requirements are buried across documents and hard to find fast during proposal writing.

## Solution

Extend the existing LLM Wiki to ingest all ITB documents. Requirements become queryable in natural language with exact source citations. The wiki's concept pages (one per discipline/work package) act as the live requirements register — no separate Excel needed.

## Folder Structure

```
E:\My Knowledge\
└── raw\documents\NLQ\          ← all ITB docs converted via markitdown (IMMUTABLE)
    ├── 01. EPCIC 10 - ITT Rev H.md
    ├── EPCIC 10 - EXHIBIT A Rev A.md
    ├── EPCIC 10 - EXHIBIT A App A1 Rev B.md
    ├── EPCIC 10 - EXHIBIT A App A2 Rev B.md
    ├── EPCIC 10 - EXHIBIT A App A3 Rev A.md
    ├── EPCIC 10 - EXHIBIT A App A4 Rev A.md
    ├── EPCIC 10 - EXHIBIT A App A5 Rev A.md
    ├── EPCIC 10 - EXHIBIT A App A6 Rev A.md
    ├── EPCIC 10 - EXHIBIT A App A7 Rev B.md
    ├── EPCIC 10 - EXHIBIT A App A8 Rev B.md
    ├── EPCIC 10 - EXHIBIT A App A9 Rev A.md
    ├── EPCIC 10 - EXHIBIT A App A10 Rev A.md
    ├── EPCIC 10 - EXHIBIT A App A11 Rev B.md
    ├── EPCIC 10 - EXHIBIT E Rev D.md
    ├── EPCIC 10-EXHIBIT E App E1 Rev C.md
    ├── EPCIC 10-EXHIBIT E App E2 Rev C.md
    ├── EPCIC 10 - EXHIBIT E App E3 Rev B.md
    ├── EPCIC 10-EXHIBIT E App E4 Rev B.md
    └── EPCIC 10 - EXHIBIT N Rev A.md
```

**Revision rule:** Only the latest revision of each document is kept in the folder. Superseded revisions are deleted (git history preserves them). When a new revision arrives: delete old rev, convert new rev with markitdown, drop in folder, re-ingest.

## Wiki Source Pages

One source page per document:

```
wiki/sources/NLQ - ITT.md
wiki/sources/NLQ - Exhibit A Scope of Work.md
wiki/sources/NLQ - Exhibit A App A1 Detailed Engineering.md
wiki/sources/NLQ - Exhibit A App A2 Document Requirements.md
wiki/sources/NLQ - Exhibit A App A3 Project Review.md
wiki/sources/NLQ - Exhibit A App A4 Regulatory Compliance.md
wiki/sources/NLQ - Exhibit A App A5.md
wiki/sources/NLQ - Exhibit A App A6.md
wiki/sources/NLQ - Exhibit A App A7.md
wiki/sources/NLQ - Exhibit A App A8.md
wiki/sources/NLQ - Exhibit A App A9.md
wiki/sources/NLQ - Exhibit A App A10.md
wiki/sources/NLQ - Exhibit A App A11.md
wiki/sources/NLQ - Exhibit E Design Dossier.md
wiki/sources/NLQ - Exhibit E App E1 Technical Documents.md
wiki/sources/NLQ - Exhibit E App E2 Brownfield Integration.md
wiki/sources/NLQ - Exhibit E App E3.md
wiki/sources/NLQ - Exhibit E App E4.md
wiki/sources/NLQ - Exhibit N ICV.md
```

## Wiki Concept Pages (25 total)

### Engineering discipline pages (from App A1)
```
wiki/concepts/NLQ Safety Engineering Requirements.md
wiki/concepts/NLQ Process Engineering Requirements.md
wiki/concepts/NLQ Mechanical Engineering Requirements.md
wiki/concepts/NLQ HVAC Requirements.md
wiki/concepts/NLQ Piping and Layout Requirements.md
wiki/concepts/NLQ Structural Engineering Requirements.md
wiki/concepts/NLQ Electrical Engineering Requirements.md
wiki/concepts/NLQ Instrumentation and ICSS Requirements.md
wiki/concepts/NLQ Corrosion Management Requirements.md
wiki/concepts/NLQ Architectural Requirements.md
wiki/concepts/NLQ Hook-Up Requirements.md
wiki/concepts/NLQ Software and Tools Requirements.md
```

### Cross-cutting work package pages
```
wiki/concepts/NLQ Project Management Requirements.md
wiki/concepts/NLQ HSE Requirements.md
wiki/concepts/NLQ Procurement Requirements.md
wiki/concepts/NLQ Construction and Installation Requirements.md
wiki/concepts/NLQ Commissioning Requirements.md
wiki/concepts/NLQ Quality Requirements.md
wiki/concepts/NLQ Commercial and Tender Requirements.md
wiki/concepts/NLQ Document Requirements.md
wiki/concepts/NLQ Project Review Requirements.md
wiki/concepts/NLQ Regulatory Compliance Requirements.md
wiki/concepts/NLQ In-Country Value Requirements.md
wiki/concepts/NLQ Design Basis.md
wiki/concepts/NLQ Brownfield Integration.md
```

## Key Points Format (Citation Rule)

Every Key Point must include the exact section reference:

> **[Requirement text]** — Exhibit A App A1, §2.2

Never just the requirement text alone. Section number is mandatory for proposal traceability.

## Cross-Discipline Requirements

When a requirement applies to multiple disciplines (e.g., fireproofing affects Safety, Structural, and Piping), copy the Key Point to **all relevant concept pages** with the same citation. Do not use cross-references alone — each concept page must be self-contained.

## Contradiction Handling

If two ITB documents make conflicting claims on the same topic, flag it in the ingest log entry:

```
Flags: CONTRADICTION — Exhibit A §X.X says [A]; Exhibit E §Y.Y says [B]. Check order of precedence (ITT §Z).
```

The user raises this as a clarification question to the client before submission.

## Ingest Order

1. ITT — sets overall scope, definitions, order of precedence
2. Exhibit A main + App A1 through A11 (in order)
3. Exhibit E main + App E1 through E4 (in order)
4. Exhibit N

## First Ingest

Batch command: `ingest raw/documents/NLQ/`

Processes all 19 documents in the order above. Single log entry at the end summarising all pages created and any flags raised.

## Adding Documents Later

- **New document:** convert → drop into `raw\documents\NLQ\` → `ingest raw/documents/NLQ/filename.md`
- **Revised document:** delete old rev from folder → convert new rev → drop in → `ingest raw/documents/NLQ/new-filename.md`

## Query Workflow

1. Ask in natural language: _"What is the design life requirement?"_
2. Claude reads `index.md` → identifies relevant concept pages → reads them → answers with citation: _"25 years (Exhibit A App A1, §2.1)"_
3. Raw files are never accessed directly after initial ingest

## What This Is Not

- Not a compliance matrix — tracking which proposal sections address which requirements is a later synthesis page, after proposal drafting begins.
- Not a team coordination tool — single-user workflow for now.
