# Domain Docs

How the engineering skills should consume this repo's domain documentation.

## Before exploring, read these

- **`CONTEXT.md`** at the repo root — describes the wiki schema, terminology, and glossary

No `docs/adr/` exists in this repo. Design rationale and past architectural decisions live in `docs/superpowers/specs/` — read those files before proposing structural changes to the wiki schema or ingest workflow.

## File structure

Single-context repo:

```
/
├── CONTEXT.md
├── docs/superpowers/specs/   ← design rationale (replaces docs/adr/)
└── wiki/
```

## Use the glossary's vocabulary

When your output names a domain concept (in an issue title, a proposal, a test name), use the term as defined in `CONTEXT.md`. Don't drift to synonyms the glossary explicitly avoids.

If the concept you need isn't in the glossary yet, that's a signal — either you're inventing language the project doesn't use (reconsider) or there's a real gap worth adding.
