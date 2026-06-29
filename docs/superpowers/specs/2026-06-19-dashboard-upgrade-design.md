# KMDD Dashboard Upgrade — Design Spec
**Date:** 2026-06-19  
**Status:** Approved  
**Scope:** Three independent additions to `E:\KMDD Reports\dashboard\`

---

## Overview

Three features added to the existing single-file HTML/CSS/JS dashboard (Flask/FastAPI backend, SQLite, SSE):

1. **URL State Persistence** — tab + filters survive page refresh; package modal is deep-linkable
2. **TBC Status Tab** — 6th tab reading curated wiki notes from `E:\My Knowledge\wiki\sources\`
3. **Package Detail Modal** — full milestone timeline for one package, triggered from any RFQ code in the dashboard

All changes maintain the existing design system: navy/gold palette, Fraunces + Plus Jakarta Sans, inline SVG icons, no emojis, single-file HTML structure.

---

## Feature 1 — URL State Persistence

### Hash format
```
#tab=overdue&q=PIP&disc=PIP,STR&ms=TBE+Approval
#pkg=KMD-PIP-001
```

- `tab` — active tab id (overdue, upcoming, packages, weekly, kanban, tbc)
- `q` — search input value
- `disc` — comma-separated selected discipline codes
- `ms` — pipe-separated (`|`) selected milestone names, URL-encoded (pipe used instead of comma because milestone names may contain commas, e.g. "Bids Due/ Bid Opening")
- `pkg` — RFQ code when package modal is open (mutually exclusive with tab/filter params)

### Behaviour
- Every tab switch and filter change calls `replaceHashState()` — uses `history.replaceState` so no history entries are created for filter changes
- Package modal open calls `history.pushState` — one history entry, so browser Back closes the modal
- On `DOMContentLoaded`: call `readHashState()` which parses the hash and restores tab, search, discipline selection, and milestone selection before first render
- `window.addEventListener('hashchange', ...)` handles browser Back/Forward
- On modal close: if `document.referrer` hash had a `pkg=` param (direct link), restore to `#tab=overdue`; otherwise pop the history entry (Back) restores the previous tab+filter hash automatically

### Implementation scope
- New JS functions: `replaceHashState()`, `readHashState()`, `parseHash()`, `serializeHash()`
- Modify: `switchTab()`, `applyFilters()`, `openPackageModal()`, `closePackageModal()`
- No backend changes

---

## Feature 2 — TBC Status Tab

### Data source
`E:\My Knowledge\wiki\sources\` — markdown files with frontmatter.

A file qualifies as a TBC note if its `tags:` frontmatter array contains `"tbc"` (case-insensitive).

### New backend endpoint: `GET /api/wiki-tbc`
- Scans `E:\My Knowledge\wiki\sources\` on every call (no cache)
- For each `.md` file with `tbc` in tags:
  - Parse frontmatter: `title`, `package` (optional), `updated`, `created`
  - Extract `## Summary` section text
  - Extract `## Key Points` section as raw markdown (rendered to HTML on frontend)
  - Skip files with no `package:` field
- Returns JSON array sorted by `updated` descending:
```json
[
  {
    "title": "KMDD TBC - Structural Packages",
    "package": "KMD-STR-001",
    "updated": "2026-06-19",
    "created": "2026-06-15",
    "summary": "...",
    "key_points_md": "- **Point 1:** Detail\n- **Point 2:** Detail"
  }
]
```
- If folder doesn't exist or no qualifying files: returns `[]`

### Wiki note format (convention, not enforced by server)
```yaml
---
title: "KMDD TBC - [Package Name]"
type: source
tags: [work, tbc]
package: KMD-XXX-001
created: YYYY-MM-DD
updated: YYYY-MM-DD
---

## Summary
One paragraph summary of TBC status for this package.

## Key Points
- **Point 1:** Detail
- **Point 2:** Detail
```

### Tab UI
- 6th tab button: label "TBC", mail icon (same SVG style as existing tabs)
- Data fetched lazily on first tab activation, re-fetched on each subsequent activation
- Search bar filters cards by: `title` + `package` + `summary` text (case-insensitive)
- No KPI strip

### Card layout (one card per wiki note)
```
┌─────────────────────────────────────────────────────┐
│ [Title]                               Updated: date  │
│ Package: KMD-XXX-001 → [Open package link / plain]  │
│                                                      │
│ Summary text here...                                 │
│                                                      │
│ ▾ Key Points  (toggle — hidden if no Key Points)    │
│   • Point 1                                          │
│   • Point 2                                          │
└─────────────────────────────────────────────────────┘
```
- "→ Open package" is a clickable link if `package` value matches an RFQ in `allData.packages`; plain text if not
- Key Points section: not rendered at all if note has no `## Key Points` section
- Empty state (no notes): clean message "No TBC notes found." — no instructions
- Hash: `#tab=tbc&q=<search>` persisted per Feature 1 rules

---

## Feature 3 — Package Detail Modal + Deep-link

### New backend endpoint: `GET /api/package/{rfq_no}`
Reads from the Excel cache. Returns full milestone breakdown for one package:
```json
{
  "rfq_no": "KMD-PIP-001",
  "package": "Seawater Piping System",
  "buyer": "Nguyen Van A",
  "cat": 1,
  "milestones": [
    {
      "name": "Bids Due/ Bid Opening",
      "planned_date": "2026-01-15",
      "forecast_date": "2026-01-20",
      "forecast_source": "override",
      "actual_date": "2026-01-18",
      "status": "done",
      "days_diff": null
    },
    {
      "name": "TBE submission",
      "planned_date": "2026-03-01",
      "forecast_date": "2026-03-15",
      "forecast_source": "excel",
      "actual_date": null,
      "status": "overdue",
      "days_diff": -14
    }
  ]
}
```

**Forecast resolution:** Uses existing `_resolve_forecast()` helper — checks `forecast_overrides` DB first, falls back to Excel FORECAST row.

**Status values:**
- `done` — actual_date is not null
- `overdue` — no actual_date, planned_date < today (days_diff is negative)
- `upcoming` — no actual_date, days_diff is 0–14
- `on-track` — no actual_date, days_diff > 14

**If RFQ not found:** Returns HTTP 404. Frontend shows a toast "Package not found" and does not open the modal.

### Trigger
Every RFQ code rendered anywhere in the dashboard becomes a clickable element:
- Overdue table — RFQ cell
- Upcoming table — RFQ cell  
- Package cards — RFQ code chip
- Kanban cards — RFQ code chip
- TBC tab — "→ Open package" link

All call `openPackageModal(rfq_no)`.

### Modal structure
```
┌──────────────────────────────────────────────────────────┐
│ [Disc badge] Package Name                           [✕]  │
│ KMD-PIP-001 · [Buyer chip]                               │
│ ─────────────────────────────────────────────────────── │
│ Progress: ████████░░░░  5 of 9 milestones completed      │
│                                                          │
│ ← scroll →  [timeline]                                   │
│                                                          │
│  ●────────●────────●────────○────────○  ...             │
│  Bid Due  TBE Sub  TBE Appr  MTO      CBE               │
│                                                          │
└──────────────────────────────────────────────────────────┘
```

**Timeline node states:**
- Done: filled green circle + checkmark; actual date below node
- Overdue: filled red circle; "Xd overdue" badge below; planned date above
- Upcoming (≤14d): filled orange circle; planned date above; forecast date below in gold italic (if different)
- On-track: empty navy circle; planned date above; forecast date below in gold italic (if different)

**Timeline layout:**
- Horizontal track, milestones in Excel column order (left to right)
- Overflows horizontally with scroll — all nodes on one line
- Planned date shown above the connecting line
- Forecast date (if differs from planned) shown below in gold italic
- Actual date shown below for done nodes

**Modal behaviour:**
- Opens centered, backdrop overlay with `backdrop-filter: blur(6px)`
- Close: ✕ button, click outside overlay, or Escape key
- Keyboard trap not required (small internal tool)
- No live status, no critical flag toggle — dates only

### URL deep-link
- `openPackageModal()` calls `history.pushState(null, '', '#pkg=RFQ_NO')`
- `closePackageModal()` calls `history.back()` — restores previous hash
- On `DOMContentLoaded`: if hash contains `pkg=`, call `openPackageModal()` after data loads
- If navigated directly to `#pkg=...` (no prior history): on close, `replaceHashState({tab:'overdue'})` 

---

## Implementation Notes

### Files changed
- `dashboard.html` — all frontend changes (CSS + HTML + JS)
- `server.py` — two new endpoints: `GET /api/wiki-tbc`, `GET /api/package/{rfq_no}`

### No new dependencies
- Markdown parsing in Python: use `re` (stdlib) to extract frontmatter and sections — no `markdown` or `python-markdown` package needed
- Key Points → HTML: simple regex conversion of `- **x:** y` lines to `<ul><li>` — no external markdown library on frontend either

### Markdown parser scope (server-side)
Parses only:
1. YAML frontmatter block (between `---` delimiters)
2. `## Summary` section text (everything until next `##` or EOF)
3. `## Key Points` section raw text (same boundary rule)

Does not parse other sections. If `## Summary` or `## Key Points` is absent, returns `null` for that field.

### Key Points HTML conversion (frontend)
Simple client-side conversion applied to `key_points_html` field:
- Lines starting with `- ` → `<li>` items wrapped in `<ul>`
- `**text**` → `<strong>text</strong>`
- Nested bullets (starting with `  - `) → nested `<ul>`
- No full markdown parser — only these three patterns needed

---

## Out of Scope
- Live status per milestone in modal
- Critical flag display or toggle in modal
- `raw_file` path shown in TBC cards
- TBC KPI strip
- Notes without `package:` frontmatter shown in TBC tab
- Mobile/responsive layout changes
- Notification emails or browser push for newly overdue items
