---
title: "LLM Wiki Pattern"
type: concept
tags: [tech]
created: 2026-06-03
updated: 2026-06-03
sources: 1
---

## Summary

The LLM Wiki Pattern is an architecture for personal knowledge bases where an LLM incrementally builds and maintains a structured wiki of markdown files. Unlike RAG systems that re-derive knowledge on every query, the LLM compiles knowledge once and keeps it current — updating pages, maintaining cross-references, and flagging contradictions as new sources arrive.

## Key Points

- **Three layers:**
  1. **Raw sources** — immutable source documents (articles, PDFs); LLM reads but never modifies
  2. **Wiki** — LLM-maintained markdown pages: sources, concepts, entities, synthesis
  3. **Schema** — CLAUDE.md defines conventions and workflows; co-evolved by human and LLM
- **Three operations:**
  - **Ingest:** Drop a source → LLM extracts, summarizes, cross-references across 10-15 pages
  - **Query:** Ask a question → LLM reads index, synthesizes answer with citations, optionally files result
  - **Lint:** Periodic health check → orphans, contradictions, missing pages, suggested additions
- **Navigation:** `index.md` (content catalog) + `log.md` (append-only history) let the LLM orient quickly each session
- **Compounding value:** Good answers get filed as synthesis pages — explorations accumulate like ingested sources
- **Scale:** index.md-based navigation works well up to ~100 sources, ~hundreds of pages

## Connections

- [[Personal Knowledge Management]] — LLM Wiki is a specific PKM approach where LLM handles all maintenance
- [[Obsidian]] — the recommended IDE: graph view shows wiki shape, Dataview queries frontmatter, Web Clipper feeds raw articles
- [[Vannevar Bush Memex]] — 1945 ancestor: private, curated, associative knowledge — LLM solves the maintenance problem Bush couldn't

## Source References

- [[LLM Wiki - A Pattern for Personal Knowledge Bases]] — primary source describing this pattern
