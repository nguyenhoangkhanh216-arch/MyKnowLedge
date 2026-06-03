---
title: "Obsidian"
type: entity
tags: [tech]
created: 2026-06-03
updated: 2026-06-03
sources: 1
---

## Summary

Obsidian is a local-first markdown note-taking application built around bidirectional links and a graph view. It stores all notes as plain `.md` files in a local vault directory, making it ideal as the browsing interface for an LLM-maintained wiki — the LLM edits files directly, and Obsidian renders the results in real time.

## Key Points

- **Local vault:** All notes are plain markdown files on disk — LLM can read and write them directly with file tools.
- **Graph view:** Visual map of all pages and their links — shows wiki shape, hubs, and orphans at a glance.
- **Bidirectional links:** `[[Page Name]]` syntax creates links; Obsidian tracks inbound links automatically.
- **Web Clipper:** Browser extension that converts web articles to markdown — primary source ingestion method.
- **Dataview plugin:** Runs queries over YAML frontmatter — enables dynamic tables from page metadata (type, tags, source counts).
- **Marp plugin:** Renders markdown as slide decks — useful for generating presentations from wiki content.
- **LLM Wiki role:** Obsidian is the IDE; the LLM is the programmer; the wiki is the codebase.

## Connections

- [[LLM Wiki Pattern]] — Obsidian is the recommended browsing layer for the LLM Wiki architecture
- [[Personal Knowledge Management]] — widely used PKM tool; the LLM Wiki pattern leverages its file-based storage model

## Source References

- [[LLM Wiki - A Pattern for Personal Knowledge Bases]] — recommended Obsidian as wiki IDE; mentioned Web Clipper, graph view, Dataview, Marp
