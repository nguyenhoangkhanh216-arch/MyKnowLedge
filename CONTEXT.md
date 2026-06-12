# Context: LLM Wiki — Personal Knowledge Base

## Purpose

This repo is a personal, compounding knowledge base maintained by an LLM agent. The user ingests source material (emails, articles, documents); the agent extracts and structures the knowledge into wiki pages.

## Glossary

| Term | Definition |
|------|------------|
| **raw** | Immutable source files — never modified. Lives under `raw/`. |
| **ingest** | The act of reading a raw file and creating/updating wiki pages from it. |
| **wiki page** | An LLM-maintained page under `wiki/` — one of: source, concept, entity, synthesis. |
| **source page** | Summary of a single raw file. Lives in `wiki/sources/`. |
| **concept page** | Explains what something is. Lives in `wiki/concepts/`. |
| **entity page** | Describes a named thing (company, tool, standard, person). Lives in `wiki/entities/`. |
| **synthesis page** | Cross-source analysis or comparison. Lives in `wiki/synthesis/`. |
| **lint** | A health check pass over all wiki pages — finds orphans, missing links, contradictions. |

## Design rationale

Past design decisions live in `docs/superpowers/specs/`. Read them before proposing structural changes to the wiki schema or ingest workflow.
