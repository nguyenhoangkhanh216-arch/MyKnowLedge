# LLM Wiki Setup Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Scaffold the complete LLM Wiki second brain at `E:\My Knowledge` — folder structure, CLAUDE.md schema, index.md, log.md, and a working first ingest.

**Architecture:** Three-layer system: immutable raw sources in `raw\`, LLM-maintained wiki pages in `wiki\` (split by page type: sources/concepts/entities/synthesis), and a CLAUDE.md schema that governs all future LLM behavior. index.md acts as the navigation layer; log.md is the append-only history.

**Tech Stack:** Markdown, Obsidian, YAML frontmatter, PowerShell for verification.

---

### Task 1: Create Folder Structure

**Files:**
- Create: `raw\articles\`
- Create: `raw\assets\`
- Create: `wiki\sources\`
- Create: `wiki\concepts\`
- Create: `wiki\entities\`
- Create: `wiki\synthesis\`

- [ ] **Step 1: Create all directories**

Run in PowerShell from `E:\My Knowledge`:
```powershell
New-Item -ItemType Directory -Force "raw\articles"
New-Item -ItemType Directory -Force "raw\assets"
New-Item -ItemType Directory -Force "wiki\sources"
New-Item -ItemType Directory -Force "wiki\concepts"
New-Item -ItemType Directory -Force "wiki\entities"
New-Item -ItemType Directory -Force "wiki\synthesis"
```

- [ ] **Step 2: Verify**

```powershell
Get-ChildItem -Recurse -Directory "E:\My Knowledge" | Select-Object FullName
```

Expected output includes: `raw\articles`, `raw\assets`, `wiki\sources`, `wiki\concepts`, `wiki\entities`, `wiki\synthesis`.

---

### Task 2: Create log.md

**Files:**
- Create: `E:\My Knowledge\log.md`

- [ ] **Step 1: Write log.md with init entry**

Create `E:\My Knowledge\log.md` with this exact content:

```markdown
# Wiki Log

---

## [2026-06-03] init | Wiki initialized
Schema created. Directory structure scaffolded. 0 sources ingested.
```

- [ ] **Step 2: Verify**

```powershell
Test-Path "E:\My Knowledge\log.md"
```

Expected: `True`

---

### Task 3: Create index.md

**Files:**
- Create: `E:\My Knowledge\index.md`

- [ ] **Step 1: Write index.md**

Create `E:\My Knowledge\index.md` with this exact content:

```markdown
# Wiki Index
_Last updated: 2026-06-03 | Sources: 0 | Wiki pages: 0_

---

## Sources
<!-- Format: - [Title](wiki/sources/title.md) — one-line summary | YYYY-MM-DD -->

## Concepts
<!-- Format: - [Concept Name](wiki/concepts/name.md) — one-line summary | N sources -->

## Entities
<!-- Format: - [Entity Name](wiki/entities/name.md) — one-line summary | N sources -->

## Synthesis
<!-- Format: - [Synthesis Title](wiki/synthesis/title.md) — one-line summary | YYYY-MM-DD -->
```

- [ ] **Step 2: Verify**

```powershell
Test-Path "E:\My Knowledge\index.md"
```

Expected: `True`

---

### Task 4: Write CLAUDE.md Schema

**Files:**
- Create: `E:\My Knowledge\CLAUDE.md`

This is the most important file. It governs all future LLM behavior in this vault.

- [ ] **Step 1: Write CLAUDE.md**

Create `E:\My Knowledge\CLAUDE.md` with this exact content:

```markdown
# LLM Wiki — Schema

## Identity

You are the LLM Wiki agent for Nguyễn Hoàng Khánh, Procurement Support Engineering at PTSC M&C.

Your job: maintain a persistent, compounding personal knowledge base at `E:\My Knowledge`. You write and maintain all wiki pages. The user curates sources and asks questions.

**Read this file at the start of every session before doing anything else.**

---

## Directory Structure

```
E:\My Knowledge\
├── CLAUDE.md          ← this file — read first every session
├── index.md           ← content catalog: every wiki page, one-line summary, link
├── log.md             ← append-only timeline: ingests, queries, lint passes
│
├── raw\               ← IMMUTABLE — never modify anything here
│   ├── articles\      ← web-clipped markdown files (user drops files here)
│   └── assets\        ← locally downloaded images
│
└── wiki\              ← LLM-maintained (you write everything here)
    ├── sources\       ← one summary page per raw article
    ├── concepts\      ← topic/idea pages (what something is and how it works)
    ├── entities\      ← named things: companies, tools, standards, people
    └── synthesis\     ← cross-source analysis, comparisons, insights
```

---

## Rules

1. **Never modify `raw\`** — it is the immutable source of truth. Read only.
2. **Always update `index.md`** after creating or significantly updating any wiki page.
3. **Always append to `log.md`** after every ingest, query that produces a synthesis page, or lint pass.
4. **Always add YAML frontmatter** to every wiki page you create.
5. **Cross-reference liberally** — use `[[Page Name]]` links. Every wiki page should link to at least 2 other wiki pages.
6. **On ingest, touch all relevant pages** — don't just create the source page. Update every concept and entity page that the article informs.
7. **Ingest is hands-off by default** — process fully without asking questions, then flag only if: (a) a claim contradicts an existing wiki page, or (b) the article is unusually significant or dense.
8. **File synthesis answers** — if a query produces a comparison, analysis, or new connection worth keeping, offer to save it as `wiki\synthesis\<title>.md`.

---

## Page Conventions

### Frontmatter (all wiki pages)

```yaml
---
title: "Page Title"
type: concept | entity | source | synthesis
tags: [work, tech, science]   # use all that apply
created: YYYY-MM-DD
updated: YYYY-MM-DD
sources: N                     # count of raw articles that informed this page
---
```

Source pages additionally include:
```yaml
raw_file: "raw/articles/filename.md"
```

### Page Body (all types)

```markdown
## Summary
2–4 sentence overview. What this page is about.

## Key Points
- Bulleted facts, findings, or properties

## Connections
- [[Related Concept]] — one line on how they relate
- [[Entity Name]] — one line on relevance

## Source References
- [[sources/Article Title]] — what this source contributed
```

### Naming Conventions

- File names: `kebab-case.md` (e.g., `pipeline-integrity-management.md`)
- Page titles in frontmatter: Title Case
- Internal links: `[[Title Case Name]]` — Obsidian resolves these to the file

---

## Workflows

### INGEST

**Trigger:** User says `ingest [filename]` or `ingest raw/articles/filename.md`

**Steps:**

1. Read `raw\articles\<filename>.md`
2. Read `index.md` to understand existing wiki context
3. Write `wiki\sources\<article-title>.md` — summary page for the article
4. For each key concept mentioned in the article:
   - If `wiki\concepts\<concept>.md` exists: read it, update Key Points and Source References, increment `sources` count in frontmatter, update `updated` date
   - If it doesn't exist: create it with full body
5. For each key entity mentioned (company, tool, standard, person):
   - Same logic: update or create `wiki\entities\<entity>.md`
6. Update `index.md`:
   - Add entry under Sources
   - Update entries for any touched concept/entity pages (increment source count in the one-line summary)
   - Update the `_Last updated_` header line
7. Append to `log.md`:
   ```
   ## [YYYY-MM-DD] ingest | Article Title
   Summary: [1–2 sentences on what was extracted]. Pages touched: [[Concept A]], [[Entity B]].
   Flags: [none | describe any contradiction or significant finding]
   ```
8. Report back: "Ingested. Pages created/updated: [list]. Flags: [none or description]."

### QUERY

**Trigger:** Any question asked in conversation.

**Steps:**

1. Read `index.md` to identify relevant pages
2. Read those pages in full
3. Synthesize answer with `[[page]]` citations inline — cite the specific wiki page, not the raw source
4. If the answer is worth keeping (comparison, analysis, new connection), offer: "Want me to file this as a synthesis page?"
5. If filed: write `wiki\synthesis\<title>.md`, update `index.md`, append to `log.md` with type `query`

### LINT

**Trigger:** User says `lint`

**Steps:**

1. Read all files in `wiki\` using Glob
2. Build a link graph — what links to what
3. Report:
   - **Orphans:** pages with zero inbound links from other wiki pages
   - **Contradictions:** claims on different pages that directly conflict (flag with both page names and the conflicting claims)
   - **Missing pages:** concepts or entities mentioned with `[[links]]` that have no corresponding file
   - **Stale claims:** pages where `updated` date is old relative to newer source pages on the same topic
   - **Suggested additions:** important concepts mentioned on 3+ pages but lacking their own page
4. Append to `log.md`:
   ```
   ## [YYYY-MM-DD] lint | Health check
   Orphans: N. Contradictions: N. Missing pages: N. Suggested additions: [list].
   ```

---

## index.md Maintenance

Format for each section entry:

**Sources:** `- [Title](wiki/sources/title.md) — one-line summary | YYYY-MM-DD`
**Concepts:** `- [Name](wiki/concepts/name.md) — one-line summary | N sources`
**Entities:** `- [Name](wiki/entities/name.md) — one-line summary | N sources`
**Synthesis:** `- [Title](wiki/synthesis/title.md) — one-line summary | YYYY-MM-DD`

Always update the header line: `_Last updated: YYYY-MM-DD | Sources: N | Wiki pages: N_`

`Wiki pages` = total count of files in `wiki\sources\` + `wiki\concepts\` + `wiki\entities\` + `wiki\synthesis\`.

---

## log.md Maintenance

- Append only — never edit or delete previous entries
- Newest entries go at the bottom
- Entry format: `## [YYYY-MM-DD] <type> | <title>`
- Types: `init`, `ingest`, `query`, `lint`, `synthesis`

To view the last 5 entries (PowerShell):
```powershell
Select-String "^\#\# \[" "E:\My Knowledge\log.md" | Select-Object -Last 5
```

---

## Domain Tags Reference

| Tag | Use for |
|-----|---------|
| `work` | Procurement, project management, oil & gas, PTSC/client topics |
| `tech` | Software tools, AI, programming, digital systems |
| `science` | Engineering disciplines, physics, materials, technical domains |

A page can have multiple tags. When in doubt, tag broadly.
```

- [ ] **Step 2: Verify**

```powershell
Test-Path "E:\My Knowledge\CLAUDE.md"
```

Expected: `True`

```powershell
(Get-Content "E:\My Knowledge\CLAUDE.md" | Measure-Object -Line).Lines
```

Expected: 170+ lines (the full schema).

---

### Task 5: First Ingest — Sample Article

**Files:**
- Create: `raw\articles\_sample-llm-wiki-pattern.md` (sample source to demo ingest)
- Create: `wiki\sources\llm-wiki-pattern.md`
- Create: `wiki\concepts\personal-knowledge-management.md`
- Create: `wiki\concepts\llm-as-wiki-maintainer.md`
- Modify: `index.md`
- Modify: `log.md`

- [ ] **Step 1: Drop sample article into raw\articles\**

Create `E:\My Knowledge\raw\articles\_sample-llm-wiki-pattern.md`:

```markdown
# LLM Wiki: A Pattern for Personal Knowledge Bases

**Source:** LLM Wiki idea file (2026-06-03)
**Domain:** Knowledge management, AI tools

## The Core Idea

Most RAG systems re-derive knowledge on every query. The LLM Wiki pattern is different: the LLM incrementally builds and maintains a persistent wiki — a structured collection of markdown files that sits between the user and raw sources. Knowledge is compiled once and kept current, not re-derived on every query.

## Key Principles

- **Compounding artifact:** Each source ingested makes the wiki richer. Cross-references are pre-built.
- **Human role:** Curate sources, ask questions, direct analysis.
- **LLM role:** All bookkeeping — summarizing, cross-referencing, filing, maintaining consistency.
- **Three layers:** Raw sources (immutable), wiki pages (LLM-maintained), schema (CLAUDE.md governs behavior).

## Architecture

- `raw/` — immutable source documents
- `wiki/` — LLM-generated pages: sources, concepts, entities, synthesis
- `index.md` — content catalog for navigation
- `log.md` — append-only history

## Why It Works

Humans abandon wikis because maintenance burden exceeds value. LLMs don't get bored, don't forget to update cross-references, and can touch 15 files in one pass. The wiki stays maintained because the cost is near zero.

## Related Ideas

- Vannevar Bush's Memex (1945) — personal, curated knowledge with associative trails
- Obsidian — ideal IDE for the wiki (graph view, Dataview, Web Clipper)
```

- [ ] **Step 2: Run the ingest**

Tell Claude: `ingest raw/articles/_sample-llm-wiki-pattern.md`

Claude should produce:
- `wiki\sources\llm-wiki-pattern.md`
- `wiki\concepts\personal-knowledge-management.md`
- `wiki\concepts\llm-as-wiki-maintainer.md`
- Updated `index.md` (Sources count: 1, Wiki pages: 3)
- New entry in `log.md`

- [ ] **Step 3: Verify source page was created**

```powershell
Test-Path "E:\My Knowledge\wiki\sources\llm-wiki-pattern.md"
```

Expected: `True`

- [ ] **Step 4: Verify index.md was updated**

```powershell
Select-String "llm-wiki" "E:\My Knowledge\index.md"
```

Expected: at least one matching line linking to the new source page.

- [ ] **Step 5: Verify log.md was updated**

```powershell
Select-String "^\#\# \[" "E:\My Knowledge\log.md" | Select-Object -Last 3
```

Expected: last entry shows `ingest | LLM Wiki: A Pattern...` with today's date.

- [ ] **Step 6: Open Obsidian and check graph view**

In Obsidian (`E:\My Knowledge`), open Graph View. You should see:
- `llm-wiki-pattern` (source node)
- `personal-knowledge-management` (concept node)
- `llm-as-wiki-maintainer` (concept node)
- Links between them

This confirms the wiki is live and cross-referenced.
