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
