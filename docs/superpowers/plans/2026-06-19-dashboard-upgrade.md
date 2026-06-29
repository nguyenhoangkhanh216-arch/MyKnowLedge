# KMDD Dashboard Upgrade Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add URL state persistence, a wiki-sourced TBC Status tab, and a package detail modal with deep-link to the KMDD Procurement Dashboard.

**Architecture:** Three independent features, all contained in two files: `server.py` (two new endpoints) and `dashboard.html` (new JS/CSS/HTML). Wiki parsing logic is extracted to a standalone `wiki_parser.py` module so it can be unit-tested without the FastAPI server's side effects on import.

**Tech Stack:** Python 3.13 / FastAPI / SQLite / pandas — vanilla JS / HTML/CSS — pytest / starlette TestClient

## Global Constraints

- Single-file HTML: all CSS in `<style>` in `<head>`, all JS in one `<script>` at the bottom of `dashboard.html`
- No emojis — inline SVG only (Lucide style, 2px stroke, `stroke-linecap="round"`, `stroke-linejoin="round"`)
- Design tokens: use `var(--navy)`, `var(--gold)`, `var(--red)`, `var(--green)`, `var(--orange)`, `var(--blue)`, `var(--text-soft)`, `var(--border)`, `var(--cream)`, `var(--paper)`, `var(--shadow-sm)`, `var(--r)`, `var(--r-sm)`, `var(--font-ui)`, `var(--font-display)` — never hardcode colours that have tokens
- Wiki sources path: `E:\My Knowledge\wiki\sources`
- Dashboard files: `E:\KMDD Reports\dashboard\dashboard.html`, `E:\KMDD Reports\dashboard\server.py`
- Tests: `E:\KMDD Reports\dashboard\tests\`
- Run server: `cd "E:\KMDD Reports\dashboard" && python server.py` (port 8766)
- Run tests: `cd "E:\KMDD Reports\dashboard" && pytest tests/ -v`

---

## File Map

| File | Action | Responsibility |
|------|--------|----------------|
| `wiki_parser.py` | Create | Parse markdown wiki notes — no FastAPI, no side effects |
| `tests/__init__.py` | Create | Empty — makes tests/ a package |
| `tests/test_wiki_parser.py` | Create | Unit tests for wiki_parser.py |
| `server.py` | Modify | Add `GET /api/wiki-tbc` and `GET /api/package/{rfq_no}` |
| `dashboard.html` | Modify | URL state JS, TBC tab, package detail modal |

---

## Task 1: wiki_parser.py — wiki note parsing module

**Files:**
- Create: `E:\KMDD Reports\dashboard\wiki_parser.py`
- Create: `E:\KMDD Reports\dashboard\tests\__init__.py`
- Create: `E:\KMDD Reports\dashboard\tests\test_wiki_parser.py`

**Interfaces:**
- Produces: `load_tbc_notes(sources_path: Path) -> list[dict]` — called by server.py's `/api/wiki-tbc` handler
- Each dict: `{ title: str, package: str, updated: str, created: str, summary: str, key_points_md: str | None }`

- [ ] **Step 1: Create empty test package**

Create `E:\KMDD Reports\dashboard\tests\__init__.py` — empty file.

- [ ] **Step 2: Write failing tests**

Create `E:\KMDD Reports\dashboard\tests\test_wiki_parser.py`:

```python
import sys
import textwrap
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent.parent))
from wiki_parser import parse_wiki_note, load_tbc_notes

NOTE_FULL = textwrap.dedent("""\
    ---
    title: "KMDD TBC - Piping Packages"
    type: source
    tags: [work, tbc]
    package: KMD-PIP-001
    created: 2026-06-15
    updated: 2026-06-19
    ---

    ## Summary
    Bid clarification round 2 completed.

    ## Key Points
    - **Point 1:** Vendor responded
    - **Point 2:** Awaiting PTSC review
""")

NOTE_NO_TBC_TAG = textwrap.dedent("""\
    ---
    title: "KMDD Some Note"
    type: source
    tags: [work]
    package: KMD-PIP-001
    created: 2026-06-15
    updated: 2026-06-19
    ---

    ## Summary
    Not a TBC note.
""")

NOTE_NO_PACKAGE = textwrap.dedent("""\
    ---
    title: "KMDD TBC - General"
    type: source
    tags: [work, tbc]
    created: 2026-06-15
    updated: 2026-06-19
    ---

    ## Summary
    Has tbc tag but no package field.
""")

NOTE_NO_KEY_POINTS = textwrap.dedent("""\
    ---
    title: "KMDD TBC - Summary Only"
    type: source
    tags: [tbc]
    package: KMD-STR-001
    created: 2026-06-15
    updated: 2026-06-18
    ---

    ## Summary
    Summary only, no key points section.
""")

NOTE_OLDER = textwrap.dedent("""\
    ---
    title: "KMDD TBC - Older Note"
    type: source
    tags: [tbc]
    package: KMD-ELE-001
    created: 2026-06-10
    updated: 2026-06-10
    ---

    ## Summary
    Older note.
""")


def _write(tmp_path, name, content):
    p = tmp_path / name
    p.write_text(content, encoding="utf-8")
    return p


def test_parse_full_note(tmp_path):
    p = _write(tmp_path, "tbc.md", NOTE_FULL)
    result = parse_wiki_note(p)
    assert result is not None
    assert result["title"] == "KMDD TBC - Piping Packages"
    assert result["package"] == "KMD-PIP-001"
    assert result["updated"] == "2026-06-19"
    assert result["created"] == "2026-06-15"
    assert result["summary"] == "Bid clarification round 2 completed."
    assert "**Point 1:**" in result["key_points_md"]


def test_non_tbc_tag_returns_none(tmp_path):
    p = _write(tmp_path, "other.md", NOTE_NO_TBC_TAG)
    assert parse_wiki_note(p) is None


def test_no_package_field_returns_none(tmp_path):
    p = _write(tmp_path, "no_pkg.md", NOTE_NO_PACKAGE)
    assert parse_wiki_note(p) is None


def test_no_key_points_section(tmp_path):
    p = _write(tmp_path, "no_kp.md", NOTE_NO_KEY_POINTS)
    result = parse_wiki_note(p)
    assert result is not None
    assert result["key_points_md"] is None
    assert result["summary"] == "Summary only, no key points section."


def test_load_tbc_notes_sorted_by_updated_desc(tmp_path):
    _write(tmp_path, "older.md", NOTE_OLDER)        # updated 2026-06-10
    _write(tmp_path, "no_kp.md", NOTE_NO_KEY_POINTS)  # updated 2026-06-18
    _write(tmp_path, "full.md", NOTE_FULL)           # updated 2026-06-19
    notes = load_tbc_notes(tmp_path)
    assert len(notes) == 3
    assert notes[0]["updated"] == "2026-06-19"
    assert notes[1]["updated"] == "2026-06-18"
    assert notes[2]["updated"] == "2026-06-10"


def test_load_tbc_notes_skips_non_tbc(tmp_path):
    _write(tmp_path, "tbc.md", NOTE_FULL)
    _write(tmp_path, "other.md", NOTE_NO_TBC_TAG)
    notes = load_tbc_notes(tmp_path)
    assert len(notes) == 1
    assert notes[0]["package"] == "KMD-PIP-001"


def test_load_tbc_notes_missing_folder():
    notes = load_tbc_notes(Path(r"C:\this\does\not\exist"))
    assert notes == []


def test_load_tbc_notes_empty_folder(tmp_path):
    notes = load_tbc_notes(tmp_path)
    assert notes == []
```

- [ ] **Step 3: Run tests — confirm they all fail with ImportError**

```
cd "E:\KMDD Reports\dashboard"
pytest tests/test_wiki_parser.py -v
```

Expected: `ImportError: No module named 'wiki_parser'`

- [ ] **Step 4: Implement wiki_parser.py**

Create `E:\KMDD Reports\dashboard\wiki_parser.py`:

```python
import re
from pathlib import Path

WIKI_SOURCES_PATH = Path(r"E:\My Knowledge\wiki\sources")


def _fm_scalar(fm: str, key: str) -> str | None:
    m = re.search(rf'^{key}:\s*"?([^"\n]+)"?\s*$', fm, re.MULTILINE)
    return m.group(1).strip() if m else None


def _fm_tags(fm: str) -> list[str]:
    m = re.search(r'^tags:\s*\[([^\]]*)\]', fm, re.MULTILINE)
    if not m:
        return []
    return [t.strip().strip('"\'') for t in m.group(1).split(',') if t.strip()]


def _extract_section(body: str, heading: str) -> str | None:
    m = re.search(
        rf'##\s+{re.escape(heading)}\s*\n(.*?)(?=\n##\s|\Z)',
        body,
        re.DOTALL,
    )
    return m.group(1).strip() if m else None


def parse_wiki_note(path: Path) -> dict | None:
    """Return parsed TBC note dict, or None if file doesn't qualify."""
    try:
        text = path.read_text(encoding='utf-8')
    except Exception:
        return None

    fm_match = re.match(r'^---\n(.*?)\n---\n', text, re.DOTALL)
    if not fm_match:
        return None

    fm = fm_match.group(1)
    tags = _fm_tags(fm)
    if 'tbc' not in [t.lower() for t in tags]:
        return None

    package = _fm_scalar(fm, 'package')
    if not package:
        return None

    body = text[fm_match.end():]
    return {
        'title': _fm_scalar(fm, 'title') or path.stem,
        'package': package,
        'updated': _fm_scalar(fm, 'updated') or '',
        'created': _fm_scalar(fm, 'created') or '',
        'summary': _extract_section(body, 'Summary') or '',
        'key_points_md': _extract_section(body, 'Key Points'),
    }


def load_tbc_notes(sources_path: Path = WIKI_SOURCES_PATH) -> list[dict]:
    """Load all TBC wiki notes sorted by updated date descending."""
    if not sources_path.exists():
        return []
    notes = [n for p in sources_path.glob('*.md') if (n := parse_wiki_note(p))]
    notes.sort(key=lambda n: n['updated'], reverse=True)
    return notes
```

- [ ] **Step 5: Run tests — confirm all pass**

```
cd "E:\KMDD Reports\dashboard"
pytest tests/test_wiki_parser.py -v
```

Expected: 8 tests PASSED

- [ ] **Step 6: Commit**

```
cd "E:\KMDD Reports\dashboard"
git add wiki_parser.py tests/__init__.py tests/test_wiki_parser.py
git commit -m "feat: add wiki_parser module for TBC note loading"
```

---

## Task 2: GET /api/wiki-tbc endpoint

**Files:**
- Modify: `E:\KMDD Reports\dashboard\server.py` (add import + endpoint near the `# ── TBC STATUS` section at line 1281)

**Interfaces:**
- Consumes: `wiki_parser.load_tbc_notes()` → `list[dict]`
- Produces: `GET /api/wiki-tbc` returns JSON array of TBC note dicts

- [ ] **Step 1: Add import to server.py**

Find the imports block at the top of `server.py` (around line 45 where `from reporter import report_status` is). Add immediately after it:

```python
from wiki_parser import load_tbc_notes
```

- [ ] **Step 2: Add endpoint**

Find the `# ── TBC STATUS` section at line 1281. Replace the existing `@app.get("/api/tbc")` block (lines 1283–1295) with these two endpoints — keep the old one and add the new one below it:

```python
@app.get("/api/wiki-tbc")
async def get_wiki_tbc():
    """Return TBC notes from wiki sources folder, sorted by updated date desc."""
    return load_tbc_notes()
```

- [ ] **Step 3: Verify endpoint manually**

Start the server, then in a browser or curl:

```
curl http://127.0.0.1:8766/api/wiki-tbc
```

Expected with no TBC notes yet: `[]`

Create a test file `E:\My Knowledge\wiki\sources\TEST-TBC.md`:
```markdown
---
title: "TEST TBC Note"
type: source
tags: [tbc]
package: TEST-001
created: 2026-06-19
updated: 2026-06-19
---

## Summary
This is a test.
```

Hit the endpoint again — expected: one-item array. Delete the test file after verifying.

- [ ] **Step 4: Commit**

```
cd "E:\KMDD Reports\dashboard"
git add server.py
git commit -m "feat: add GET /api/wiki-tbc endpoint"
```

---

## Task 3: GET /api/package/{rfq_no} endpoint

**Files:**
- Modify: `E:\KMDD Reports\dashboard\server.py` (add `load_package_detail` function and endpoint)

**Interfaces:**
- Consumes: existing `_read_excel_cached()`, `_iter_packages()`, `_to_date()`, `_resolve_forecast()`, `get_milestone_cols()`, `get_forecast_overrides_map()`
- Produces: `GET /api/package/{rfq_no}` returns `{ rfq_no, package, buyer, cat, milestones: [...] }` or HTTP 404

- [ ] **Step 1: Add load_package_detail function to server.py**

Add this function after `load_kanban_data()` (around line 920), before the `# ── SSE` section:

```python
def load_package_detail(rfq_no: str) -> dict | None:
    """Return full milestone breakdown for one package, or None if not found."""
    df = _read_excel_cached()
    if df is None:
        return None

    today = date.today()
    milestone_cols = get_milestone_cols(df)
    fc_overrides = get_forecast_overrides_map()

    for _, plan_row, forecast_row, actual_row, r, package_name, buyer, cat in _iter_packages(df):
        if r != rfq_no:
            continue
        milestones = []
        for col in milestone_cols:
            if col not in df.columns:
                continue
            planned = _to_date(plan_row.get(col))
            if planned is None:
                continue
            actual = _to_date(actual_row[col]) if actual_row is not None else None
            excel_fc = _to_date(forecast_row[col]) if forecast_row is not None else None
            override_str = fc_overrides.get((rfq_no, col))
            forecast, fc_source = _resolve_forecast(excel_fc, override_str)

            if actual:
                status = 'done'
                days_diff = None
            else:
                days_diff = (planned - today).days
                if days_diff < 0:
                    status = 'overdue'
                elif days_diff <= 14:
                    status = 'upcoming'
                else:
                    status = 'on-track'

            milestones.append({
                'name': col,
                'planned_date': planned.isoformat(),
                'forecast_date': forecast.isoformat() if forecast else None,
                'forecast_source': fc_source,
                'actual_date': actual.isoformat() if actual else None,
                'status': status,
                'days_diff': days_diff,
            })

        return {
            'rfq_no': rfq_no,
            'package': package_name,
            'buyer': buyer,
            'cat': cat,
            'milestones': milestones,
        }
    return None
```

- [ ] **Step 2: Add the FastAPI endpoint**

Add directly after `load_package_detail`, still before the `# ── SSE` section:

```python
@app.get("/api/package/{rfq_no}")
async def get_package_detail(rfq_no: str, request: Request):
    data = load_package_detail(rfq_no)
    if data is None:
        raise HTTPException(status_code=404, detail="Package not found")
    return data
```

- [ ] **Step 3: Verify endpoint manually**

Restart the server. Find any RFQ code from the dashboard (e.g. from the Overdue tab). Then:

```
curl http://127.0.0.1:8766/api/package/KMD-PIP-001
```

Expected: JSON object with `rfq_no`, `package`, `buyer`, `cat`, and `milestones` array where each item has `name`, `planned_date`, `forecast_date`, `forecast_source`, `actual_date`, `status`, `days_diff`.

For a non-existent RFQ:
```
curl http://127.0.0.1:8766/api/package/DOES-NOT-EXIST
```
Expected: HTTP 404 `{"detail":"Package not found"}`

- [ ] **Step 4: Commit**

```
cd "E:\KMDD Reports\dashboard"
git add server.py
git commit -m "feat: add GET /api/package/{rfq_no} endpoint"
```

---

## Task 4: URL state persistence (dashboard.html)

**Files:**
- Modify: `E:\KMDD Reports\dashboard\dashboard.html`

**What changes:**
1. Add 6 new JS functions after the `escA` utility at line 2459
2. Modify `switchTab()` at line 1138 to accept `noHash` param and call `replaceHashState`
3. Modify `applyFilters()` at line 1171 to call `replaceHashState` at the end
4. Modify `loadData()` at line 1067 to call `readHashState()` after `populateMilestoneFilter()`
5. Add `popstate` listener for modal close (modal functions added in Task 5)
6. Add `_preModalHash` global

- [ ] **Step 1: Add URL state globals and functions**

Find the line `function escH(s) {` at line 2458. Insert the following block immediately before it:

```javascript
// ── URL STATE ─────────────────────────────────────────────────────
let _preModalHash = null;

function _parseHash() {
  const raw = location.hash.slice(1);
  if (!raw) return {};
  return Object.fromEntries(
    raw.split('&').map(p => p.split('=').map(decodeURIComponent))
  );
}

function _serializeHash(params) {
  const parts = Object.entries(params)
    .filter(([, v]) => v !== '' && v != null)
    .map(([k, v]) => `${encodeURIComponent(k)}=${encodeURIComponent(v)}`);
  return parts.length ? '#' + parts.join('&') : '#';
}

function _currentHashParams() {
  const params = { tab: activeTab };
  const q = document.getElementById('searchInput')?.value || '';
  if (q) params.q = q;
  const disc = [...selectedDiscs].join(',');
  if (disc) params.disc = disc;
  const ms = [...selectedMs].join('|');
  if (ms) params.ms = ms;
  return params;
}

function replaceHashState(params) {
  history.replaceState(null, '', _serializeHash(params));
}

function readHashState() {
  const p = _parseHash();
  if (p.pkg) { openPackageModal(p.pkg); return; }
  if (p.tab) {
    const btn = document.querySelector(`.tab-btn[data-tab="${p.tab}"]`);
    if (btn) switchTab(p.tab, btn, true);
  }
  if (p.q) {
    const si = document.getElementById('searchInput');
    if (si) { si.value = p.q; }
  }
  if (p.disc) selectedDiscs = new Set(p.disc.split(',').filter(Boolean));
  if (p.ms)   selectedMs   = new Set(p.ms.split('|').filter(Boolean));
  if (p.disc || p.ms) { updateMsBtn('disc'); updateMsBtn('ms'); applyFilters(); }
}

window.addEventListener('popstate', () => {
  const p = _parseHash();
  if (!p.pkg) {
    const modal = document.getElementById('packageModal');
    if (modal) modal.style.display = 'none';
    _preModalHash = null;
  }
});
```

- [ ] **Step 2: Add data-tab attributes to all 5 existing tab buttons**

Find the tabs-bar HTML (around line 765). Add `data-tab="overdue"` to the first button, etc.:

```html
<button class="tab-btn active" data-tab="overdue" onclick="switchTab('overdue',this)">
```
```html
<button class="tab-btn" data-tab="upcoming" onclick="switchTab('upcoming',this)">
```
```html
<button class="tab-btn" data-tab="packages" onclick="switchTab('packages',this)">
```
```html
<button class="tab-btn" data-tab="weekly" onclick="switchTab('weekly',this)">
```
```html
<button class="tab-btn" data-tab="kanban" onclick="switchTab('kanban',this)">
```

- [ ] **Step 3: Modify switchTab() to accept noHash and call replaceHashState**

Find `function switchTab(name, btn) {` at line 1138. Replace the entire function:

```javascript
function switchTab(name, btn, noHash) {
  activeTab = name;
  document.querySelectorAll('.tab-panel').forEach(p => p.classList.remove('active'));
  document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
  document.getElementById('panel-' + name).classList.add('active');
  btn.classList.add('active');
  const showMainFilter = ['overdue','upcoming','packages'].includes(name);
  document.getElementById('mainFilterBar').style.display = showMainFilter ? 'flex' : 'none';
  if (name !== 'overdue') { selectedDiscs.clear(); selectedMs.clear(); updateMsBtn('disc'); updateMsBtn('ms'); }
  if (name === 'weekly' && !document.getElementById('weekPicker').value) initWeekPicker();
  if (name === 'weekly' && !_burndownData) loadBurndown();
  if (name === 'kanban') loadKanban();
  if (name === 'tbc') loadTbcTab();
  if (showMainFilter) applyFilters();
  if (!noHash) replaceHashState(_currentHashParams());
}
```

- [ ] **Step 4: Modify applyFilters() to persist hash**

Find `function applyFilters() {` at line 1171. Add `replaceHashState(_currentHashParams());` as the very last line of the function body, just before the closing `}`.

To locate the exact insertion point, find the end of `applyFilters` — it ends around line 1204 just before `function renderAll()`. The last statement inside `applyFilters` renders something. Add after it:

```javascript
  replaceHashState(_currentHashParams());
```

- [ ] **Step 5: Call readHashState after data loads**

Find `loadData()` at line 1067. After `populateMilestoneFilter();` (line 1076), add:

```javascript
    readHashState();
```

- [ ] **Step 6: Verify URL state manually in browser**

Open `http://127.0.0.1:8766`. Check that:
1. URL becomes `#tab=overdue` on load
2. Clicking "Upcoming" tab changes URL to `#tab=upcoming`
3. Typing in search changes URL to `#tab=upcoming&q=PIP` (or whichever tab)
4. Refreshing the page restores the tab and search query
5. Browser Back after switching tabs returns to the previous tab

- [ ] **Step 7: Commit**

```
cd "E:\KMDD Reports\dashboard"
git add dashboard.html
git commit -m "feat: URL state persistence — tab and filter state in hash"
```

---

## Task 5: Package detail modal (dashboard.html)

**Files:**
- Modify: `E:\KMDD Reports\dashboard\dashboard.html`

**What changes:**
1. Add CSS styles for the modal and timeline
2. Add modal HTML element
3. Add `openPackageModal`, `closePackageModal`, `renderPackageModal`, `renderMsNode` JS functions
4. Add `data-pkg-rfq` attributes to RFQ codes in overdue table, upcoming table, package cards, kanban cards
5. Handle `data-pkg-rfq` click in the existing `document.addEventListener('click', ...)` block

- [ ] **Step 1: Add modal CSS**

Find the closing `</style>` tag in `<head>`. Add the following block immediately before it:

```css
/* ── PACKAGE MODAL ───────────────────────────────────────────────── */
#packageModal {
  position: fixed; inset: 0;
  background: rgba(8,16,36,.6); z-index: 200;
  display: none; align-items: center; justify-content: center;
  backdrop-filter: blur(6px);
}
.pkg-modal-box {
  background: var(--paper); border-radius: var(--r-lg);
  width: 880px; max-width: 95vw; max-height: 88vh;
  overflow: hidden; display: flex; flex-direction: column;
  box-shadow: var(--shadow-lg); border: 1px solid var(--border);
}
.pkg-modal-head {
  padding: 22px 24px 14px; border-bottom: 1px solid var(--divider); flex-shrink: 0;
}
.pkg-modal-body { padding: 20px 24px; overflow-y: auto; flex: 1; }
.pkg-progress-bar-track {
  height: 6px; background: var(--border); border-radius: 3px; overflow: hidden; margin-top: 4px;
}
.pkg-progress-bar-fill {
  height: 100%; background: var(--green); border-radius: 3px; transition: width .3s;
}
/* Timeline */
.pkg-timeline { overflow-x: auto; padding-bottom: 8px; }
.pkg-timeline-track {
  display: flex; align-items: flex-start;
  min-width: max-content; padding: 36px 24px 28px; position: relative;
}
.pkg-timeline-track::before {
  content: ''; position: absolute;
  top: 68px; left: 24px; right: 24px; height: 2px;
  background: var(--border-2);
}
.pkg-ms-node {
  display: flex; flex-direction: column; align-items: center;
  width: 108px; flex-shrink: 0; position: relative; z-index: 1;
}
.pkg-ms-name {
  font-size: 10px; color: var(--text-soft); text-align: center;
  height: 30px; display: flex; align-items: flex-end; margin-bottom: 4px;
  word-break: break-word; line-height: 1.3; padding: 0 4px;
}
.pkg-ms-circle {
  width: 22px; height: 22px; border-radius: 50%;
  border: 2px solid var(--border-2); background: var(--paper);
  display: flex; align-items: center; justify-content: center; flex-shrink: 0;
}
.pkg-ms-circle.done     { background: var(--green);  border-color: var(--green);  }
.pkg-ms-circle.overdue  { background: var(--red);    border-color: var(--red);    }
.pkg-ms-circle.upcoming { background: var(--orange); border-color: var(--orange); }
.pkg-ms-circle.on-track { background: var(--paper);  border-color: var(--navy-2); }
.pkg-ms-bottom { margin-top: 5px; text-align: center; min-height: 28px; }
.pkg-ms-actual  { font-size: 10px; color: var(--green);  font-weight: 600; }
.pkg-ms-overdue { font-size: 10px; color: var(--red);    font-weight: 600; }
.pkg-ms-fc      { font-size: 10px; color: var(--gold);   font-style: italic; margin-top: 2px; }
.pkg-ms-pending { font-size: 10px; color: var(--text-faint); }
```

- [ ] **Step 2: Add modal HTML**

Find `<!-- TABS -->` in the HTML (around line 763). Add the following block immediately before it (after the `</div>` that closes the KPI row section):

```html
<!-- PACKAGE DETAIL MODAL -->
<div id="packageModal" onclick="if(event.target===this)closePackageModal()">
  <div class="pkg-modal-box">
    <div class="pkg-modal-head" id="pkgModalHead"></div>
    <div class="pkg-modal-body" id="pkgModalBody"></div>
  </div>
</div>
```

- [ ] **Step 3: Add package modal JS functions**

Find the `// ── URL STATE` block added in Task 4. Add the following block immediately after the `window.addEventListener('popstate', ...)` listener and before `function escH`:

```javascript
// ── PACKAGE MODAL ─────────────────────────────────────────────────
const PKG_CHECK = `<svg width="10" height="10" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><polyline points="20 6 9 17 4 12"/></svg>`;

async function openPackageModal(rfqNo) {
  _preModalHash = _parseHash().pkg ? null : (location.hash || '#tab=overdue');
  history.pushState(null, '', `#pkg=${encodeURIComponent(rfqNo)}`);
  const modal = document.getElementById('packageModal');
  modal.style.display = 'flex';
  document.getElementById('pkgModalHead').innerHTML =
    '<div style="color:var(--text-soft);font-size:13px">Loading…</div>';
  document.getElementById('pkgModalBody').innerHTML = '';
  try {
    const res = await fetch(`/api/package/${encodeURIComponent(rfqNo)}`);
    if (!res.ok) {
      modal.style.display = 'none';
      history.back();
      showToast('Package not found');
      return;
    }
    renderPackageModal(await res.json());
  } catch(e) {
    modal.style.display = 'none';
    history.back();
    showToast('Failed to load package');
  }
}

function closePackageModal() {
  if (_preModalHash === null) {
    history.replaceState(null, '', '#tab=overdue');
    document.getElementById('packageModal').style.display = 'none';
  } else {
    history.back();
  }
}

function renderPackageModal(pkg) {
  const done  = pkg.milestones.filter(m => m.status === 'done').length;
  const total = pkg.milestones.length;
  const pct   = total > 0 ? Math.round(done / total * 100) : 0;
  document.getElementById('pkgModalHead').innerHTML = `
    <div style="display:flex;align-items:flex-start;justify-content:space-between;gap:12px">
      <div>
        <div style="display:flex;align-items:center;gap:8px;margin-bottom:5px">
          ${discBadge(pkg.rfq_no)}
          <span style="font-size:11px;color:var(--text-soft);font-weight:600">${escH(pkg.rfq_no)}</span>
          ${pkg.buyer && pkg.buyer !== '—' ? buyerChip(pkg.buyer) : ''}
        </div>
        <div style="font-size:17px;font-weight:700;color:var(--text);line-height:1.2">${escH(pkg.package)}</div>
      </div>
      <button class="modal-close" onclick="closePackageModal()">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>
      </button>
    </div>
    <div style="margin-top:12px">
      <div style="display:flex;justify-content:space-between;margin-bottom:4px">
        <span style="font-size:11px;font-weight:600;color:var(--text-soft)">${done} of ${total} milestones completed</span>
        <span style="font-size:11px;font-weight:700;color:var(--navy)">${pct}%</span>
      </div>
      <div class="pkg-progress-bar-track">
        <div class="pkg-progress-bar-fill" style="width:${pct}%"></div>
      </div>
    </div>`;
  document.getElementById('pkgModalBody').innerHTML =
    `<div class="pkg-timeline"><div class="pkg-timeline-track">${pkg.milestones.map(renderMsNode).join('')}</div></div>`;
}

function renderMsNode(ms) {
  const shortName = ms.name.length > 16 ? ms.name.slice(0, 15) + '…' : ms.name;
  let bottomHtml = '';
  if (ms.status === 'done') {
    bottomHtml = `<div class="pkg-ms-bottom"><div class="pkg-ms-actual">${fmtDate(ms.actual_date)}</div></div>`;
  } else if (ms.status === 'overdue') {
    const d = Math.abs(ms.days_diff);
    bottomHtml = `<div class="pkg-ms-bottom"><div class="pkg-ms-overdue">${d}d overdue</div>${ms.forecast_date && ms.forecast_date !== ms.planned_date ? `<div class="pkg-ms-fc">fc: ${fmtDate(ms.forecast_date)}</div>` : ''}</div>`;
  } else {
    bottomHtml = ms.forecast_date && ms.forecast_date !== ms.planned_date
      ? `<div class="pkg-ms-bottom"><div class="pkg-ms-fc">fc: ${fmtDate(ms.forecast_date)}</div></div>`
      : `<div class="pkg-ms-bottom"><div class="pkg-ms-pending">Pending</div></div>`;
  }
  return `<div class="pkg-ms-node">
    <div class="pkg-ms-name" title="${escA(ms.name)}">${escH(shortName)}</div>
    <div class="pkg-ms-circle ${ms.status}">${ms.status === 'done' ? PKG_CHECK : ''}</div>
    ${bottomHtml}
  </div>`;
}
```

- [ ] **Step 4: Wire Escape key to close package modal**

Find the existing `document.addEventListener('keydown', ...)` block at line 2535. Add a check for the package modal:

```javascript
document.addEventListener('keydown', e => {
  if (e.key === 'Escape') {
    if (document.getElementById('packageModal').style.display === 'flex') { closePackageModal(); return; }
    if (document.getElementById('fcModal').classList.contains('open')) { closeFcModal(); return; }
    if (document.getElementById('lsModal').classList.contains('open')) closeLsModal();
  }
});
```

- [ ] **Step 5: Add data-pkg-rfq to RFQ codes in overdue table**

Find `renderOverdueTable` (around line 1218). Locate where `i.rfq_no` is rendered in a table cell. Add `data-pkg-rfq` attribute so the delegated click handler can pick it up. The RFQ cell will look like:

```javascript
<td><span class="rfq-link" data-pkg-rfq="${escA(i.rfq_no)}">${escH(i.rfq_no)}</span></td>
```

Find the existing RFQ rendering in `renderOverdueTable` and wrap it with the span. Do the same for `renderUpcomingTable`.

- [ ] **Step 6: Add rfq-link CSS**

In the `<style>` block, add near the table styles:

```css
.rfq-link { cursor: pointer; color: var(--navy-2); font-weight: 600; text-decoration: underline; text-decoration-color: var(--border-2); text-underline-offset: 2px; }
.rfq-link:hover { color: var(--gold); }
```

- [ ] **Step 7: Wire click delegation for data-pkg-rfq**

Find the `document.addEventListener('click', ...)` block at line 2524. Add handling for `data-pkg-rfq` as the first check:

```javascript
document.addEventListener('click', e => {
  const pkgEl = e.target.closest('[data-pkg-rfq]');
  if (pkgEl) { e.stopPropagation(); openPackageModal(pkgEl.dataset.pkgRfq); return; }
  const critEl = e.target.closest('[data-crit]');
  // ... rest unchanged ...
```

- [ ] **Step 8: Verify modal manually in browser**

1. Open the Overdue tab — click an RFQ code — modal opens showing that package's milestone timeline
2. Timeline shows green circles for done milestones, red for overdue, orange for upcoming, empty navy for on-track
3. Forecast date appears in gold italic below node when it differs from planned
4. Close with ✕ button → returns to overdue tab
5. Close with Escape key → same
6. Click outside modal backdrop → closes
7. Navigate to `http://127.0.0.1:8766/#pkg=KMD-PIP-001` directly → modal opens; pressing Back → goes to overdue tab
8. Non-existent RFQ `http://127.0.0.1:8766/#pkg=FAKE-999` → toast "Package not found", stays on overdue tab

- [ ] **Step 9: Commit**

```
cd "E:\KMDD Reports\dashboard"
git add dashboard.html
git commit -m "feat: package detail modal with milestone timeline and deep-link"
```

---

## Task 6: TBC Status Tab (dashboard.html)

**Files:**
- Modify: `E:\KMDD Reports\dashboard\dashboard.html`

**What changes:**
1. Add TBC tab button (6th tab) with `data-tab="tbc"`
2. Add `#panel-tbc` tab panel HTML
3. Add TBC CSS styles
4. Add `loadTbcTab`, `renderTbcCards`, `buildTbcCard`, `mdToHtml`, `mdInline`, `toggleTbcKp` JS functions

- [ ] **Step 1: Add TBC tab button**

Find the closing `</div>` of the `.tabs-bar` (after the Kanban button, around line 784). Add the TBC button before it:

```html
    <button class="tab-btn" data-tab="tbc" onclick="switchTab('tbc',this)">
      <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg>
      TBC
    </button>
```

- [ ] **Step 2: Add TBC tab panel HTML**

Find the last `</div>` that closes the final tab panel (the Kanban panel, which ends before `</div>` of `.main`). Add the TBC panel after it:

```html
  <!-- TBC STATUS TAB -->
  <div class="tab-panel" id="panel-tbc">
    <div class="tbc-search-bar">
      <div class="search-wrap">
        <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg>
        <input type="text" class="search-input" id="tbcSearch" placeholder="Search by package or keyword…" oninput="applyTbcSearch()">
      </div>
      <span class="filter-count" id="tbcCount"></span>
    </div>
    <div id="tbcCards"></div>
  </div>
```

- [ ] **Step 3: Add TBC CSS**

In the `<style>` block, add before `</style>`:

```css
/* ── TBC TAB ─────────────────────────────────────────────────────── */
.tbc-search-bar { display: flex; gap: 8px; margin-bottom: 16px; align-items: center; }
.tbc-card {
  background: var(--paper); border: 1px solid var(--border);
  border-radius: var(--r); padding: 18px 20px; margin-bottom: 10px;
  box-shadow: var(--shadow-xs);
}
.tbc-card-top {
  display: flex; justify-content: space-between; align-items: flex-start; gap: 12px; margin-bottom: 6px;
}
.tbc-card-title { font-size: 14px; font-weight: 700; color: var(--text); line-height: 1.3; }
.tbc-card-updated { font-size: 11px; color: var(--text-faint); flex-shrink: 0; }
.tbc-card-pkg { margin-bottom: 8px; }
.tbc-pkg-link {
  font-size: 11.5px; font-weight: 600; color: var(--navy-2);
  cursor: pointer; text-decoration: underline; text-decoration-color: var(--border-2);
  text-underline-offset: 2px;
}
.tbc-pkg-link:hover { color: var(--gold); }
.tbc-card-summary { font-size: 13px; color: var(--text-mid); line-height: 1.55; margin-bottom: 10px; }
.tbc-kp-toggle {
  background: none; border: none; cursor: pointer;
  font-size: 11.5px; font-weight: 600; color: var(--text-soft);
  padding: 0; font-family: var(--font-ui);
}
.tbc-kp-toggle:hover { color: var(--navy); }
.tbc-kp-body {
  margin-top: 8px; padding: 12px 14px;
  background: var(--cream); border-radius: var(--r-sm);
  font-size: 12.5px; line-height: 1.6; color: var(--text-mid);
}
.tbc-kp-body ul { padding-left: 18px; }
.tbc-kp-body li { margin-bottom: 3px; }
```

- [ ] **Step 4: Add TBC JS functions**

Find the `// ── PACKAGE MODAL` block added in Task 5. Add the following block immediately after it (before `// ── URL STATE` or before `function escH`):

```javascript
// ── TBC STATUS TAB ────────────────────────────────────────────────
let _tbcNotes = [];
let _tbcCardIdx = 0;

async function loadTbcTab() {
  const container = document.getElementById('tbcCards');
  if (!container) return;
  container.innerHTML = '<div style="color:var(--text-soft);font-size:13px;padding:20px 0">Loading…</div>';
  try {
    const res = await fetch('/api/wiki-tbc');
    _tbcNotes = await res.json();
    renderTbcCards(_tbcNotes);
  } catch(e) {
    container.innerHTML = '<div style="color:var(--red);font-size:13px;padding:20px 0">Failed to load TBC notes.</div>';
  }
}

function applyTbcSearch() {
  const q = (document.getElementById('tbcSearch')?.value || '').toLowerCase();
  const filtered = q
    ? _tbcNotes.filter(n =>
        (n.title || '').toLowerCase().includes(q) ||
        (n.package || '').toLowerCase().includes(q) ||
        (n.summary || '').toLowerCase().includes(q))
    : _tbcNotes;
  renderTbcCards(filtered);
  replaceHashState({ tab: 'tbc', q });
}

function renderTbcCards(notes) {
  _tbcCardIdx = 0;
  const container = document.getElementById('tbcCards');
  if (!container) return;
  document.getElementById('tbcCount').textContent = notes.length
    ? `${notes.length} note${notes.length !== 1 ? 's' : ''}`
    : '';
  container.innerHTML = notes.length
    ? notes.map(buildTbcCard).join('')
    : '<div class="empty-state">No TBC notes found.</div>';
}

function buildTbcCard(n) {
  const idx = _tbcCardIdx++;
  const kpId = `tbc-kp-${idx}`;
  const hasMatch = allData?.packages?.some(p => p.rfq_no === n.package);
  const pkgHtml = n.package
    ? (hasMatch
        ? `<span class="tbc-pkg-link" data-pkg-rfq="${escA(n.package)}">${escH(n.package)} →</span>`
        : `<span style="color:var(--text-faint);font-size:11.5px">${escH(n.package)}</span>`)
    : '';
  const kpHtml = n.key_points_md ? mdToHtml(n.key_points_md) : null;
  const kpBlock = kpHtml
    ? `<button class="tbc-kp-toggle" onclick="toggleTbcKp('${kpId}')">▾ Key Points</button>
       <div id="${kpId}" class="tbc-kp-body" style="display:none">${kpHtml}</div>`
    : '';
  return `<div class="tbc-card">
    <div class="tbc-card-top">
      <div class="tbc-card-title">${escH(n.title)}</div>
      <div class="tbc-card-updated">Updated: ${escH(n.updated)}</div>
    </div>
    ${pkgHtml ? `<div class="tbc-card-pkg">${pkgHtml}</div>` : ''}
    <div class="tbc-card-summary">${escH(n.summary)}</div>
    ${kpBlock}
  </div>`;
}

function mdToHtml(md) {
  let html = '<ul>';
  let inNested = false;
  for (const line of md.split('\n')) {
    if (/^  - /.test(line)) {
      if (!inNested) { html += '<ul>'; inNested = true; }
      html += `<li>${mdInline(line.slice(4))}</li>`;
    } else if (/^- /.test(line)) {
      if (inNested) { html += '</ul>'; inNested = false; }
      html += `<li>${mdInline(line.slice(2))}</li>`;
    }
  }
  if (inNested) html += '</ul>';
  html += '</ul>';
  return html;
}

function mdInline(text) {
  const e = text.replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;');
  return e.replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>');
}

function toggleTbcKp(id) {
  const el = document.getElementById(id);
  if (el) el.style.display = el.style.display === 'none' ? 'block' : 'none';
}
```

- [ ] **Step 5: Verify TBC tab end-to-end**

1. Create a real wiki TBC note at `E:\My Knowledge\wiki\sources\KMDD TBC - Test.md`:
```markdown
---
title: "KMDD TBC - Test Package"
type: source
tags: [work, tbc]
package: KMD-PIP-001
created: 2026-06-19
updated: 2026-06-19
---

## Summary
Test TBC note for verification.

## Key Points
- **Point 1:** First key point
- **Point 2:** Second key point with **nested bold**
```
2. Click the TBC tab in the dashboard — card appears
3. "→ Open package" link appears if KMD-PIP-001 exists in Excel — clicking it opens the package modal
4. "▾ Key Points" toggle expands/collapses
5. Search for "Test" — filters to the card; clear — shows all
6. URL updates to `#tab=tbc` (and `#tab=tbc&q=Test` when searching)
7. Refresh page with `#tab=tbc` in URL — dashboard opens on TBC tab
8. Edit `updated:` date in the note — re-click TBC tab — card reflects new date
9. Delete test note after verifying

- [ ] **Step 6: Commit**

```
cd "E:\KMDD Reports\dashboard"
git add dashboard.html
git commit -m "feat: TBC status tab reading wiki notes from knowledge folder"
```

---

## Self-Review

**Spec coverage:**
- ✅ URL state: tab, search, disc (comma), ms (pipe), `replaceState` everywhere, modal `pushState`
- ✅ Direct `#pkg=...` load → opens modal; close → `#tab=overdue`
- ✅ `GET /api/wiki-tbc` reads from wiki folder on every call, sorted by `updated` desc
- ✅ TBC notes detected by `tbc` tag; notes without `package:` skipped
- ✅ TBC tab: search by title+package+summary; empty state "No TBC notes found."
- ✅ Key Points rendered as HTML; absent Key Points → no toggle
- ✅ Package link disabled (plain text) when RFQ not in Excel data
- ✅ `GET /api/package/{rfq_no}` uses `_resolve_forecast()` (override first, Excel fallback)
- ✅ Modal: 404 → toast "Package not found", no modal open
- ✅ Modal: horizontal scroll timeline, planned above line, forecast below in gold, actual in green
- ✅ Modal: Escape closes, click outside closes, ✕ closes
- ✅ No live status or critical flag in modal
- ✅ `raw_file` not shown in TBC cards
- ✅ No KPI strip on TBC tab
