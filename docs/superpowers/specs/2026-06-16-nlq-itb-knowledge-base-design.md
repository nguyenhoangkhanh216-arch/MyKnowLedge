# NLQ ITB Knowledge Base — Design Spec
_2026-06-16_

## Problem

20–50 mixed-format ITB documents (PDF/Word/Excel) for the NLQ EPCIC 10 bidding project (North Oil Company, Al Shaheen Oil Field, Qatar). The core pain: requirements are buried across documents and hard to find fast during proposal writing.

## Solution

Extend the existing LLM Wiki to ingest all ITB documents. Requirements become queryable in natural language. The wiki's concept pages (one per discipline/work package) double as the requirements register — no separate Excel needed.

## Folder Structure

```
E:\My Knowledge\
└── raw\documents\NLQ\          ← all ITB docs converted via markitdown (IMMUTABLE)
    ├── 01. EPCIC 10 - ITT Rev H.md
    ├── EPCIC 10 - EXHIBIT A Rev A.md
    ├── EPCIC 10 - EXHIBIT A App A1 Rev B.md   ← latest rev per appendix only
    ├── ...
    ├── EPCIC 10 - EXHIBIT E Rev D.md
    ├── EPCIC 10 - EXHIBIT E App E1 Rev C.md
    ├── ...
    └── EPCIC 10 - EXHIBIT N Rev A.md
```

## Wiki Source Pages

One source page per document, named after the document (latest revision only):

```
wiki/sources/NLQ - ITT.md
wiki/sources/NLQ - Exhibit A Scope of Work.md
wiki/sources/NLQ - Exhibit A App A1.md
...
wiki/sources/NLQ - Exhibit A App A11.md
wiki/sources/NLQ - Exhibit E Design Dossier.md
wiki/sources/NLQ - Exhibit E App E1.md
...
wiki/sources/NLQ - Exhibit E App E4.md
wiki/sources/NLQ - Exhibit N.md
```

## Wiki Concept Pages (Requirements Register)

One concept page per work package / discipline. Key Points = extracted requirements with source citations.

```
wiki/concepts/NLQ Project Management Requirements.md
wiki/concepts/NLQ HSE Requirements.md
wiki/concepts/NLQ Engineering Requirements.md
wiki/concepts/NLQ Procurement Requirements.md
wiki/concepts/NLQ Construction & Installation Requirements.md
wiki/concepts/NLQ Commissioning Requirements.md
wiki/concepts/NLQ Quality Requirements.md
wiki/concepts/NLQ Commercial & Tender Requirements.md
wiki/concepts/NLQ Design Basis.md
```

## Ingest Order

1. ITT first — sets overall scope context
2. Exhibit A (main + appendices, latest rev per appendix)
3. Exhibit E (main + appendices, latest rev per appendix)
4. Exhibit N

## Revision Handling

- Only the latest revision of each document is ingested
- Earlier revisions stay in `raw\documents\NLQ\` as archive, never ingested
- When a new revision arrives: convert → drop into folder → re-ingest that file
- Wiki updates the source page in place; concept pages updated; change logged

## Query Workflow

1. Ask in natural language: _"What does the ITB say about accommodation capacity?"_
2. Claude reads `index.md` → identifies relevant concept pages → reads them → answers with `[[source]]` citations
3. Raw files are never accessed directly after initial ingest

## Adding Documents Later

- New doc: convert with markitdown → drop into `raw\documents\NLQ\` → `ingest raw/documents/NLQ/filename.md`
- Revised doc: same process → wiki updates in place

## What This Is Not

- Not a formal compliance matrix (rows = requirements, columns = proposal sections). That can be built later as a synthesis page if needed.
- Not a team coordination tool — single-user workflow for now.
