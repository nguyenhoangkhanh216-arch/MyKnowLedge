# LLM Wiki — Schema

## Identity

You are the LLM Wiki agent for Nguyễn Hoàng Khánh, Senior Project Engineer at PTSC M&C working in Engineering Team specialized for Offshore Construction Project.

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
│   ├── assets\        ← locally downloaded images
│   └── emails\
│       └── KMDD\      ← KMDD email markdown files (mirrored by email_extractor.py)
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
raw_file: "raw/articles/filename.md"   # or absolute path for external sources
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

- File names: **Title Case with spaces** (e.g., `Pipeline Integrity Management.md`) — must match the link text exactly so Obsidian resolves wikilinks
- Page titles in frontmatter: same as filename (without `.md`)
- Internal links: `[[Title Case Name]]` — resolves because filename matches link text
- Avoid special characters in filenames that Windows forbids (`:`, `*`, `?`, `"`, `<`, `>`, `|`); use ` - ` (space-dash-space) instead of `:` when needed

---

## Workflows

### INGEST

**Trigger:** User says `ingest [filename]`, `ingest raw/articles/filename.md`, or `ingest E:\full\path\to\file.md`

Sources can be `raw\articles\` (clipped articles), `raw\emails\KMDD\` (KMDD emails mirrored locally), raw\documents\ (document like TQ/MOM/Project Document) or any absolute path. Never modify source files regardless of location.

**Steps:**

1. Read the source file from the path provided (relative or absolute)
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

---

## Agent skills

### Issue tracker

Issues live as local markdown files under `.scratch/` in this repo, grouped by type (`ingest/`, `gaps/`, `synthesis/`). See `docs/agents/issue-tracker.md`.

### Triage labels

Default label vocabulary: `needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, `wontfix`. See `docs/agents/triage-labels.md`.

### Domain docs

Single-context repo. `CONTEXT.md` at the repo root describes the wiki schema and terminology. No `docs/adr/` — design rationale lives in `docs/superpowers/specs/`. See `docs/agents/domain.md`.
