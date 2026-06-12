# Issue tracker: Local Markdown

Issues for this repo live as markdown files under `.scratch/`, grouped by type.

## Structure

- `.scratch/ingest/<slug>.md` — raw files waiting to be wikified
- `.scratch/gaps/<slug>.md` — concepts needing a wiki page
- `.scratch/synthesis/<slug>.md` — analysis or comparison requests

## Conventions

- Each issue is a single file; no sub-directories per issue
- Triage state is recorded as a `Status:` line near the top of each file (see `triage-labels.md`)
- Comments and updates append to the bottom under a `## Notes` heading

## When a skill says "publish to the issue tracker"

Create a new file under the appropriate type folder (`.scratch/ingest/`, `.scratch/gaps/`, or `.scratch/synthesis/`), creating the directory if needed.

## When a skill says "fetch the relevant ticket"

Read the file at the referenced path.
