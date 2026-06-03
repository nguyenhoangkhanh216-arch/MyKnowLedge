# LLM Wiki — Design Spec
_Created: 2026-06-03_

## Overview

A personal second brain built as a persistent, compounding wiki maintained entirely by Claude Code. The human curates sources and asks questions; the LLM writes, cross-references, and maintains all wiki pages. Built on Obsidian at `E:\My Knowledge`.

**Domain:** Unified — work/professional (procurement engineering, oil & gas), technology/software, and science/engineering.

**Primary source type:** Web articles clipped via Obsidian Web Clipper.

**Ingest style:** Hands-off by default. Claude flags contradictions or especially significant findings without waiting to be asked.

---

## Directory Structure

```
E:\My Knowledge\
├── CLAUDE.md          ← schema: rules, workflows, conventions (LLM reads this first)
├── index.md           ← content catalog: every wiki page, one-line summary, link
├── log.md             ← append-only timeline: ingests, queries, lint passes
│
├── raw\               ← immutable sources (user writes; LLM reads, never modifies)
│   ├── articles\      ← web-clipped markdown files from Obsidian Web Clipper
│   └── assets\        ← locally downloaded images
│
└── wiki\              ← LLM-maintained knowledge (LLM writes; user reads)
    ├── sources\       ← one summary page per raw article
    ├── concepts\      ← topic/idea pages (what something is and how it works)
    ├── entities\      ← named things: companies, tools, standards, people
    └── synthesis\     ← cross-source analysis, comparisons, insights
```

**Concept vs entity distinction:** A concept page explains *what something is and how it works* (e.g., "Pipeline Integrity Management"). An entity page profiles a *specific named thing* (e.g., a vendor, a software tool, a standard like ISO 13628).

---

## Page Conventions

### Frontmatter (all pages)

```yaml
---
title: "Page Title"
type: concept | entity | source | synthesis
tags: [work, tech, science]   # one or more; use all that apply
created: YYYY-MM-DD
updated: YYYY-MM-DD
sources: N                     # number of raw articles informing this page
---
```

Source pages additionally include:
```yaml
raw_file: "raw/articles/filename.md"
```

### Page body (all types)

```markdown
## Summary
2–4 sentence overview.

## Key Points
- Bulleted facts, findings, or properties

## Connections
- [[Related Concept]] — one line on how they relate
- [[Entity Name]] — one line on relevance

## Source References
- [[sources/Article Title]] — what this source contributed
```

---

## Workflows

### Ingest
Trigger: `ingest [filename]` or `ingest raw/articles/filename.md`

1. Read the article from `raw/articles/`
2. Write `wiki/sources/<article-title>.md`
3. For each key concept or entity: update existing page if present, create if not
4. Update `index.md` — add source entry, update touched pages
5. Append to `log.md`: `## [YYYY-MM-DD] ingest | Article Title`
6. Flag to user if: a claim contradicts an existing wiki page, or the article is unusually significant

### Query
Trigger: any question asked in conversation

1. Read `index.md` to identify relevant pages
2. Read those pages
3. Synthesize answer with `[[page]]` citations inline
4. If the answer is worth keeping (comparison, analysis, new connection), offer to file as `wiki/synthesis/<title>.md`

### Lint
Trigger: `lint`

Scan the full wiki and report:
- Orphan pages (no inbound links)
- Contradictions between pages
- Concepts mentioned on multiple pages but lacking their own page
- Stale claims (detectable from source dates)
- Suggested questions to investigate or sources to find

---

## index.md Format

```markdown
# Wiki Index
_Last updated: YYYY-MM-DD | Sources: N | Wiki pages: N_

## Sources
- [Article Title](wiki/sources/title.md) — one-line summary | YYYY-MM-DD

## Concepts
- [Concept Name](wiki/concepts/name.md) — one-line summary | N sources

## Entities
- [Entity Name](wiki/entities/name.md) — one-line summary | N sources

## Synthesis
- [Synthesis Title](wiki/synthesis/title.md) — one-line summary | YYYY-MM-DD
```

---

## log.md Format

Append-only. Newest entries at the bottom. Each entry header follows the pattern:
`## [YYYY-MM-DD] <type> | <title>`

Types: `init`, `ingest`, `query`, `lint`

PowerShell to view last 5 entries:
```powershell
Select-String "^\#\# \[" log.md | Select-Object -Last 5
```

---

## Out of Scope

- PDF or document ingestion (not the primary source type)
- Email integration (handled separately in `E:\MyVault`)
- Search tooling (index.md is sufficient at current scale)
- Marp slide generation (not needed)
- Git version control (not configured at this stage)
