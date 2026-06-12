# Doc2Wiki — Design Spec
_Created: 2026-06-03_

## Overview

A Windows desktop application (PyQt6) that converts engineering documents (Word, PDF, Excel, PowerPoint) to Markdown and saves them into the wiki at `E:\My Knowledge`. The app is project-aware, wiki-connected, and provides intelligent ingestion advice — not just a converter.

---

## Key Requirements

- **Formats:** `.docx`, `.pdf` (text + OCR fallback), `.xlsx`, `.pptx`
- **Interaction:** Drag-and-drop onto the app window + file browser
- **Tabs:** Single File (preview + save) and Batch (multi-file processing)
- **Projects:** Config file (`projects.json`) + in-app project editor
- **Intelligence:** Auto-detects project, document type, tier badge, suggests wiki links
- **Wiki connection:** Reads `index.md`, `log.md`, wiki pages — writes output + appends to `log.md`
- **No Task Monitor integration**

---

## Application Layout

```
┌─────────────────────────────────────────────────────────┐
│  Doc2Wiki                                    [⚙ Projects] _ □ X │
├──────────────────────────────────────────────────────────┤
│  [ Single File ]  [ Batch ]                              │
├────────────────────────┬─────────────────────────────────┤
│                        │                                 │
│   DROP ZONE / FILE     │   MARKDOWN PREVIEW              │
│   INFO + ANALYSIS      │                                 │
│   (left ~40%)          │   (right ~60%)                  │
│                        │                                 │
├────────────────────────┴─────────────────────────────────┤
│  Project: [KMDD ▼]  Output: E:\My Knowledge\raw\docs\KMDD\  [Change...] │
│                              [ Save to Wiki ✓ ]          │
└──────────────────────────────────────────────────────────┘
```

### Single File Tab
1. User drags a file onto the left panel (or clicks "Browse")
2. App auto-detects project, parses document number, runs analysis
3. Left panel shows: file info, tier badge, analysis panel (recommendations, warnings, suggested links)
4. Right panel shows: full markdown preview
5. User reviews → clicks "Save to Wiki" → file saved, log updated

### Batch Tab
- Left panel: file list with drag-to-add support; each row shows filename + tier badge + status icon (pending / converting / ✓ saved / ✗ error)
- Right panel: clicking a row shows its markdown preview
- Bottom: "Convert All" button processes all files sequentially
- Progress bar shows overall progress

---

## Analysis Panel (left panel content)

Shown for every loaded file:

```
📄 KDP-OOO-03-TQ-B-0003-D0.pdf
   Project: KMDD | Type: Technical Query | Rev: D0

🔴 Tier 1 — Add now
   TQs are high-value. Official questions to COMPANY.

💡 Suggested wiki links:
   → [[KMDD Chemical Dosing Rate Decisions]]
   → [[Methanol Injection Hydrate Inhibition]]
   [Add to Connections ▼]

⚠️  Open item detected:
   "COMPANY please review and advise..."
   TQR may not exist yet — check before saving.

ℹ️  Parsed document number:
   Platform: Common | Discipline: Process
   Type: TQ | Seq: 0003 | Rev: D0
```

**Tier badges:**
- 🔴 Tier 1 — TQ, TQR, TBE, MOM, BCM → "Add now"
- 🟡 Tier 2 — Datasheet, Screening, HAZOP findings → "Add if relevant"
- ⚪ Tier 3 — Calculation, full spec, drawing → "Reference only"

Tier is determined by `doc_types` in project config mapping to tier values.

---

## Project Configuration

### projects.json structure

```json
{
  "KMDD": {
    "name": "KMDD — KM-WHP & DD-WHP",
    "output_folder": "E:\\My Knowledge\\raw\\documents\\KMDD",
    "detect_keywords": ["KMDD", "KDP", "KM-WHP", "DD-WHP"],
    "doc_number_pattern": "KDP-{platform}-{discipline}-{doctype}-{series}-{seq}-{rev}",
    "separator": "-",
    "platforms": {"KMA": "KM-WHP", "DDA": "DD-WHP", "OOO": "Common"},
    "disciplines": {"03": "Process", "04": "Piping", "05": "Mechanical", "06": "Electrical", "07": "Instrumentation", "08": "Safety"},
    "doc_types": {
      "DS": {"label": "Datasheet", "tier": 2},
      "DW": {"label": "P&ID", "tier": 3},
      "TQ": {"label": "Tech Query", "tier": 1},
      "RP": {"label": "Report", "tier": 2},
      "TBE": {"label": "Tech Bid Evaluation", "tier": 1},
      "MOM": {"label": "Minutes of Meeting", "tier": 1}
    },
    "revision_pattern": "D[0-9]+"
  }
}
```

### In-App Project Editor (⚙ Projects screen)

Four-step wizard for adding a new project:

**Step 1 — Basic Info**
- Project ID, display name, output folder (with Browse button)
- Detect keywords (comma-separated)
- Validation: warns on keyword overlap with existing projects

**Step 2 — Document Number Format**
- Template string with `{placeholders}` (e.g., `KDP-{platform}-{discipline}-{doctype}-{series}-{seq}-{rev}`)
- Live test field: paste a real document number → see parsed components immediately
- Separator character (default: `-`)

**Step 3 — Code Tables**
- Discipline codes: table with `Code | Label` rows, `[+ Add]` button
- Document types: table with `Code | Label | Tier` rows, `[+ Add]` button
- Revision pattern: regex field with examples

**Step 4 — Save**
- Preview of the generated JSON entry
- `[Save Project]` writes to `projects.json`
- KMDD is pre-configured as a working reference

---

## Conversion Engine

### Per-format converters

| Format | Library | Output |
|---|---|---|
| `.docx` | `python-docx` | Headings, paragraphs, tables, bold/italic, lists. Images → `assets\`. |
| `.pdf` (text) | `PyMuPDF` (fitz) | Text with heading detection by font size. Tables as markdown tables. |
| `.pdf` (scanned) | `PyMuPDF` + `pytesseract` | OCR plain text. Warning banner added to preview. |
| `.xlsx` | `openpyxl` | Each sheet → `## Sheet Name` + markdown table. Empty sheets skipped. |
| `.pptx` | `python-pptx` | Each slide → `## Slide N` + title + bullets. |

### Auto-generated frontmatter

```yaml
---
title: "Document Title"
type: tq | tqr | tbe | mom | datasheet | document
project: KMDD
platform: DD-WHP          # if parsed
discipline: Process       # if parsed
doc_number: KDP-DDA-03-DS-B-0005
revision: D0
doc_source: "original_filename.pdf"
created: 2026-06-03
tags: [work]
---
```

If document number does not match any project pattern, `doc_number` is stored as a plain string.

---

## Wiki Connection

### Reads (on app startup + on each file load)
- `E:\My Knowledge\index.md` — all page titles and summaries for link suggestion
- `E:\My Knowledge\log.md` — last entry date, duplicate detection
- `E:\My Knowledge\wiki\**\*.md` — full content scan for keyword matching

### Link suggestion algorithm
1. Extract significant terms from converted markdown (package names, document numbers, chemical names, tag numbers, person names)
2. Match against all wiki page titles in `index.md`
3. Scan wiki page bodies for the same terms
4. Return ranked list of suggested `[[links]]` sorted by match count

### Writes (on Save to Wiki)
1. Saves markdown file to `output_folder` from project config
2. Appends entry to `log.md`:
   ```
   ## [YYYY-MM-DD] ingest | Document Title
   Type: TQ | Project: KMDD | Rev: D0. Links added: [[Page A]], [[Page B]].
   ```
3. Offers to add entry to `index.md` (optional, user confirms)

---

## Architecture

```
E:\Doc2Wiki\
├── main.py                  ← entry point, launches PyQt6 window
├── config\
│   └── projects.json        ← project definitions
├── converters\
│   ├── word_converter.py
│   ├── pdf_converter.py     ← auto-detects text vs scanned
│   ├── excel_converter.py
│   └── pptx_converter.py
├── wiki\
│   ├── index_reader.py      ← reads index.md, log.md, wiki pages
│   ├── link_suggester.py    ← keyword matching → suggested links
│   └── doc_saver.py         ← writes output, updates log.md
└── ui\
    ├── main_window.py       ← main window, toolbar, tabs
    ├── single_tab.py        ← single file tab
    ├── batch_tab.py         ← batch processing tab
    ├── preview_pane.py      ← markdown preview panel
    └── project_editor.py   ← ⚙ Projects screen (4-step wizard)
```

---

## Dependencies

```
PyQt6              ← UI framework
python-docx        ← Word conversion
PyMuPDF            ← PDF conversion
pytesseract        ← OCR fallback for scanned PDFs
Pillow             ← image handling (required by pytesseract)
openpyxl           ← Excel conversion
python-pptx        ← PowerPoint conversion
```

Tesseract OCR must be installed separately on Windows (https://github.com/UB-Mannheim/tesseract/wiki).

---

## Out of Scope

- Cloud sync or remote access
- Editing the converted markdown inside the app (use Obsidian for that)
- P&ID / drawing conversion (visual content)
- Direct Outlook integration (handled by email_extractor.py)
- Auto-push to GitHub (handled separately)
