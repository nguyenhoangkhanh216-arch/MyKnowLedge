---
title: "LLM Wiki: A Pattern for Personal Knowledge Bases"
type: source
tags: [tech]
created: 2026-06-03
updated: 2026-06-03
sources: 1
raw_file: "raw/articles/_sample-llm-wiki-pattern.md"
---

## Summary

Describes the LLM Wiki pattern: instead of re-deriving knowledge at query time (RAG), the LLM incrementally builds and maintains a persistent, interlinked wiki of markdown files. Knowledge compounds over time — each ingested source enriches existing pages, cross-references are pre-built, and contradictions are flagged as they arise.

## Key Points

- **Core distinction from RAG:** RAG rediscovers knowledge on every query; LLM Wiki compiles it once and keeps it current.
- **Human role:** Curate sources, direct analysis, ask questions.
- **LLM role:** All bookkeeping — summarizing, cross-referencing, filing, maintaining consistency across pages.
- **Three layers:** Raw sources (immutable), wiki pages (LLM-maintained), schema/CLAUDE.md (governs behavior).
- **Three operations:** Ingest (add a source), Query (ask a question), Lint (health-check the wiki).
- **Compounding value:** A single source can touch 10-15 wiki pages. The wiki gets richer with every ingest.
- **Why maintenance works:** Humans abandon wikis because maintenance burden exceeds value. LLMs don't get bored and can touch 15 files in one pass.

## Connections

- [[Personal Knowledge Management]] — LLM Wiki is a specific implementation approach within the broader PKM field
- [[LLM Wiki Pattern]] — detailed concept page on the pattern itself
- [[Obsidian]] — recommended IDE for browsing the wiki; graph view, Dataview, Web Clipper
- [[Vannevar Bush Memex]] — 1945 precursor idea; same vision of associative personal knowledge trails

## Source References

- This page IS the source summary — raw file at `raw/articles/_sample-llm-wiki-pattern.md`
