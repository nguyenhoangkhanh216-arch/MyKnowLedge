# Doc2Wiki — Plan 1: Foundation Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the Doc2Wiki foundation — project config loader, all four document converters, and wiki I/O — as a working CLI tool testable without any UI.

**Architecture:** Pure Python modules in `E:\Doc2Wiki\`. Each converter takes a file path and returns a `ConversionResult` dataclass. The `dispatcher.py` routes by file extension. `wiki\` modules handle reading the wiki state and writing output. No UI code in this plan.

**Tech Stack:** Python 3.11+, python-docx, PyMuPDF (fitz), pytesseract, Pillow, openpyxl, python-pptx, pytest

---

### Task 1: Project Setup and Dependencies

**Files:**
- Create: `E:\Doc2Wiki\requirements.txt`
- Create: `E:\Doc2Wiki\tests\__init__.py`
- Create: `E:\Doc2Wiki\converters\__init__.py`
- Create: `E:\Doc2Wiki\wiki\__init__.py`

- [ ] **Step 1: Create the Doc2Wiki folder structure**

```powershell
New-Item -ItemType Directory -Force "E:\Doc2Wiki\config"
New-Item -ItemType Directory -Force "E:\Doc2Wiki\converters"
New-Item -ItemType Directory -Force "E:\Doc2Wiki\wiki"
New-Item -ItemType Directory -Force "E:\Doc2Wiki\ui"
New-Item -ItemType Directory -Force "E:\Doc2Wiki\tests"
New-Item -ItemType File -Force "E:\Doc2Wiki\converters\__init__.py"
New-Item -ItemType File -Force "E:\Doc2Wiki\wiki\__init__.py"
New-Item -ItemType File -Force "E:\Doc2Wiki\tests\__init__.py"
```

- [ ] **Step 2: Create requirements.txt**

Create `E:\Doc2Wiki\requirements.txt`:

```
PyQt6>=6.6.0
python-docx>=1.1.0
PyMuPDF>=1.23.0
pytesseract>=0.3.10
Pillow>=10.0.0
openpyxl>=3.1.0
python-pptx>=0.6.23
pytest>=8.0.0
```

- [ ] **Step 3: Install dependencies**

```powershell
cd "E:\Doc2Wiki"
pip install -r requirements.txt
```

Expected: all packages install without errors. Note: Tesseract OCR binary must also be installed separately from https://github.com/UB-Mannheim/tesseract/wiki — download and install, then ensure `tesseract` is in PATH.

- [ ] **Step 4: Verify installations**

```powershell
python -c "import docx; import fitz; import openpyxl; import pptx; print('All converters OK')"
```

Expected output: `All converters OK`

- [ ] **Step 5: Commit**

```powershell
cd "E:\Doc2Wiki"
git init
git add .
git commit -m "chore: initial project structure and dependencies"
```

---

### Task 2: ConversionResult Dataclass

**Files:**
- Create: `E:\Doc2Wiki\converters\base.py`
- Create: `E:\Doc2Wiki\tests\test_base.py`

- [ ] **Step 1: Write the failing test**

Create `E:\Doc2Wiki\tests\test_base.py`:

```python
from converters.base import ConversionResult

def test_conversion_result_defaults():
    result = ConversionResult(markdown="# Hello", title="Hello")
    assert result.markdown == "# Hello"
    assert result.title == "Hello"
    assert result.doc_number is None
    assert result.project_id is None
    assert result.warnings == []
    assert result.assets == {}

def test_conversion_result_with_warning():
    result = ConversionResult(
        markdown="text",
        title="Doc",
        warnings=["OCR used"]
    )
    assert "OCR used" in result.warnings

def test_conversion_result_is_ocr():
    result = ConversionResult(markdown="text", title="Doc", warnings=["OCR used — formatting may be approximate"])
    assert result.is_ocr is True

def test_conversion_result_not_ocr():
    result = ConversionResult(markdown="text", title="Doc")
    assert result.is_ocr is False
```

- [ ] **Step 2: Run test to verify it fails**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_base.py -v
```

Expected: FAIL with `ModuleNotFoundError: No module named 'converters'`

- [ ] **Step 3: Implement ConversionResult**

Create `E:\Doc2Wiki\converters\base.py`:

```python
from dataclasses import dataclass, field

@dataclass
class ConversionResult:
    markdown: str
    title: str
    doc_number: str | None = None
    project_id: str | None = None
    warnings: list[str] = field(default_factory=list)
    assets: dict[str, bytes] = field(default_factory=dict)

    @property
    def is_ocr(self) -> bool:
        return any("OCR used" in w for w in self.warnings)
```

- [ ] **Step 4: Run test to verify it passes**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_base.py -v
```

Expected: 4 PASSED

- [ ] **Step 5: Commit**

```powershell
git add converters/base.py tests/test_base.py
git commit -m "feat: add ConversionResult dataclass"
```

---

### Task 3: Project Config Loader

**Files:**
- Create: `E:\Doc2Wiki\config\projects.json`
- Create: `E:\Doc2Wiki\wiki\project_config.py`
- Create: `E:\Doc2Wiki\tests\test_project_config.py`

- [ ] **Step 1: Create projects.json with KMDD pre-configured**

Create `E:\Doc2Wiki\config\projects.json`:

```json
{
  "KMDD": {
    "name": "KMDD — KM-WHP & DD-WHP",
    "output_folder": "E:\\My Knowledge\\raw\\documents\\KMDD",
    "detect_keywords": ["KMDD", "KDP", "KM-WHP", "DD-WHP"],
    "doc_number_pattern": "KDP-{platform}-{discipline}-{doctype}-{series}-{seq}-{rev}",
    "separator": "-",
    "platforms": {
      "KMA": "KM-WHP",
      "DDA": "DD-WHP",
      "OOO": "Common"
    },
    "disciplines": {
      "03": "Process",
      "04": "Piping",
      "05": "Mechanical",
      "06": "Electrical",
      "07": "Instrumentation",
      "08": "Safety",
      "09": "Structural"
    },
    "doc_types": {
      "DS": {"label": "Datasheet", "tier": 2},
      "DW": {"label": "P&ID", "tier": 3},
      "TQ": {"label": "Tech Query", "tier": 1},
      "TQR": {"label": "Tech Query Response", "tier": 1},
      "RP": {"label": "Report", "tier": 2},
      "TBE": {"label": "Tech Bid Evaluation", "tier": 1},
      "MOM": {"label": "Minutes of Meeting", "tier": 1},
      "SP": {"label": "Specification", "tier": 3},
      "CA": {"label": "Calculation", "tier": 3}
    },
    "revision_pattern": "D[0-9]+"
  },
  "LDV-A-PP": {
    "name": "LDV — A-PP Construction & Commissioning",
    "output_folder": "E:\\My Knowledge\\raw\\documents\\LDV-A-PP",
    "detect_keywords": ["LDV", "LDVA"],
    "doc_number_pattern": "LDV-{discipline}-{doctype}-{seq}-{rev}",
    "separator": "-",
    "platforms": {},
    "disciplines": {
      "PRO": "Process",
      "PIP": "Piping",
      "MEC": "Mechanical",
      "ELE": "Electrical",
      "INS": "Instrumentation"
    },
    "doc_types": {
      "DS": {"label": "Datasheet", "tier": 2},
      "TQ": {"label": "Tech Query", "tier": 1},
      "RP": {"label": "Report", "tier": 2},
      "MOM": {"label": "Minutes of Meeting", "tier": 1}
    },
    "revision_pattern": "Rev\\.[A-Z]|[A-Z][0-9]?"
  },
  "NLQ": {
    "name": "NLQ — New Living Quarters Bidding",
    "output_folder": "E:\\My Knowledge\\raw\\documents\\NLQ",
    "detect_keywords": ["NLQ", "RUYA", "New LQ"],
    "doc_number_pattern": "NLQ-{discipline}-{seq}-{rev}",
    "separator": "-",
    "platforms": {},
    "disciplines": {
      "MEC": "Mechanical",
      "ELE": "Electrical",
      "INS": "Instrumentation",
      "STR": "Structural"
    },
    "doc_types": {
      "TBE": {"label": "Tech Bid Evaluation", "tier": 1},
      "DS": {"label": "Datasheet", "tier": 2},
      "TQ": {"label": "Tech Query", "tier": 1}
    },
    "revision_pattern": "[A-Z][0-9]?"
  }
}
```

- [ ] **Step 2: Write the failing tests**

Create `E:\Doc2Wiki\tests\test_project_config.py`:

```python
import json
from pathlib import Path
import pytest
from wiki.project_config import load_projects, detect_project, parse_doc_number, get_doc_tier

CONFIG_PATH = Path(__file__).parent.parent / "config" / "projects.json"

@pytest.fixture
def projects():
    return load_projects(CONFIG_PATH)

def test_load_projects_returns_dict(projects):
    assert isinstance(projects, dict)
    assert "KMDD" in projects
    assert "LDV-A-PP" in projects

def test_load_projects_kmdd_has_required_fields(projects):
    kmdd = projects["KMDD"]
    assert "name" in kmdd
    assert "output_folder" in kmdd
    assert "detect_keywords" in kmdd
    assert "doc_types" in kmdd

def test_detect_project_by_filename(projects):
    assert detect_project("KDP-DDA-03-DS-B-0005-D0.pdf", projects) == "KMDD"
    assert detect_project("LDV-PRO-DS-0001-A.docx", projects) == "LDV-A-PP"
    assert detect_project("random_document.pdf", projects) is None

def test_detect_project_case_insensitive(projects):
    assert detect_project("kmdd_meeting_minutes.docx", projects) == "KMDD"

def test_parse_doc_number_kmdd_full(projects):
    result = parse_doc_number("KDP-DDA-03-DS-B-0005-D0", projects["KMDD"])
    assert result["platform"] == "DD-WHP"
    assert result["discipline"] == "Process"
    assert result["doctype"] == "DS"
    assert result["rev"] == "D0"

def test_parse_doc_number_no_match_returns_raw(projects):
    result = parse_doc_number("SOME-UNKNOWN-FORMAT", projects["KMDD"])
    assert result == {"raw": "SOME-UNKNOWN-FORMAT"}

def test_get_doc_tier_tier1(projects):
    assert get_doc_tier("TQ", projects["KMDD"]) == 1

def test_get_doc_tier_tier3(projects):
    assert get_doc_tier("DW", projects["KMDD"]) == 3

def test_get_doc_tier_unknown_returns_2(projects):
    assert get_doc_tier("XYZ", projects["KMDD"]) == 2
```

- [ ] **Step 3: Run tests to verify they fail**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_project_config.py -v
```

Expected: FAIL with `ModuleNotFoundError: No module named 'wiki.project_config'`

- [ ] **Step 4: Implement project_config.py**

Create `E:\Doc2Wiki\wiki\project_config.py`:

```python
import json
import re
from pathlib import Path


def load_projects(config_path: Path) -> dict:
    with open(config_path, encoding="utf-8") as f:
        return json.load(f)


def detect_project(filename: str, projects: dict) -> str | None:
    filename_lower = filename.lower()
    for project_id, config in projects.items():
        for keyword in config.get("detect_keywords", []):
            if keyword.lower() in filename_lower:
                return project_id
    return None


def parse_doc_number(doc_number: str, project: dict) -> dict:
    pattern = project.get("doc_number_pattern", "")
    sep = project.get("separator", "-")

    # Convert template like "KDP-{platform}-{discipline}-{doctype}-{series}-{seq}-{rev}"
    # to a named-group regex
    placeholder_names = re.findall(r"\{(\w+)\}", pattern)
    if not placeholder_names:
        return {"raw": doc_number}

    regex_pattern = re.escape(pattern)
    for name in placeholder_names:
        regex_pattern = regex_pattern.replace(rf"\{{{name}\}}", f"(?P<{name}>[^{re.escape(sep)}]+)")

    match = re.fullmatch(regex_pattern, doc_number)
    if not match:
        return {"raw": doc_number}

    result = match.groupdict()

    # Resolve codes to labels
    platforms = project.get("platforms", {})
    disciplines = project.get("disciplines", {})

    if "platform" in result and result["platform"] in platforms:
        result["platform"] = platforms[result["platform"]]
    if "discipline" in result and result["discipline"] in disciplines:
        result["discipline"] = disciplines[result["discipline"]]

    return result


def get_doc_tier(doctype_code: str, project: dict) -> int:
    doc_types = project.get("doc_types", {})
    entry = doc_types.get(doctype_code)
    if entry is None:
        return 2  # default: Tier 2 if unknown
    return entry.get("tier", 2)
```

- [ ] **Step 5: Run tests to verify they pass**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_project_config.py -v
```

Expected: 9 PASSED

- [ ] **Step 6: Commit**

```powershell
git add config/projects.json wiki/project_config.py tests/test_project_config.py
git commit -m "feat: project config loader with KMDD/LDV/NLQ pre-configured"
```

---

### Task 4: Word Converter

**Files:**
- Create: `E:\Doc2Wiki\converters\word_converter.py`
- Create: `E:\Doc2Wiki\tests\test_word_converter.py`
- Create: `E:\Doc2Wiki\tests\fixtures\sample.docx` (created by test setup)

- [ ] **Step 1: Write the failing tests**

Create `E:\Doc2Wiki\tests\test_word_converter.py`:

```python
import io
from pathlib import Path
import pytest
from docx import Document
from docx.shared import Pt
from converters.word_converter import convert_word
from converters.base import ConversionResult


def make_docx(content: list[tuple]) -> Path:
    """Create a temp docx. content = list of (style, text) tuples."""
    doc = Document()
    tmp = Path("E:/Doc2Wiki/tests/fixtures/temp_test.docx")
    tmp.parent.mkdir(parents=True, exist_ok=True)
    for style, text in content:
        if style == "body":
            doc.add_paragraph(text)
        elif style == "h1":
            doc.add_heading(text, level=1)
        elif style == "h2":
            doc.add_heading(text, level=2)
        elif style == "table":
            rows, cols = text
            t = doc.add_table(rows=rows, cols=cols)
            for i, row in enumerate(t.rows):
                for j, cell in enumerate(row.cells):
                    cell.text = f"R{i}C{j}"
    doc.save(tmp)
    return tmp


def test_convert_word_returns_result():
    path = make_docx([("body", "Hello world")])
    result = convert_word(path)
    assert isinstance(result, ConversionResult)


def test_convert_word_extracts_body_text():
    path = make_docx([("body", "Hello world")])
    result = convert_word(path)
    assert "Hello world" in result.markdown


def test_convert_word_extracts_headings():
    path = make_docx([("h1", "Main Title"), ("h2", "Sub Section"), ("body", "content")])
    result = convert_word(path)
    assert "# Main Title" in result.markdown
    assert "## Sub Section" in result.markdown


def test_convert_word_title_from_first_heading():
    path = make_docx([("h1", "Document Title"), ("body", "body text")])
    result = convert_word(path)
    assert result.title == "Document Title"


def test_convert_word_title_fallback_to_filename():
    path = make_docx([("body", "no heading here")])
    result = convert_word(path)
    assert result.title == path.stem


def test_convert_word_table_becomes_markdown_table():
    path = make_docx([("table", (2, 3))])
    result = convert_word(path)
    assert "|" in result.markdown
    assert "R0C0" in result.markdown


def test_convert_word_no_warnings():
    path = make_docx([("body", "simple text")])
    result = convert_word(path)
    assert result.warnings == []
```

- [ ] **Step 2: Run tests to verify they fail**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_word_converter.py -v
```

Expected: FAIL with `ModuleNotFoundError: No module named 'converters.word_converter'`

- [ ] **Step 3: Implement word_converter.py**

Create `E:\Doc2Wiki\converters\word_converter.py`:

```python
from pathlib import Path
from docx import Document
from docx.oxml.ns import qn
from converters.base import ConversionResult


def convert_word(file_path: Path) -> ConversionResult:
    doc = Document(str(file_path))
    lines: list[str] = []
    title: str | None = None
    assets: dict[str, bytes] = {}
    image_counter = 0

    for block in doc.element.body:
        tag = block.tag.split("}")[-1] if "}" in block.tag else block.tag

        if tag == "p":
            para = _element_to_para(doc, block)
            if para is None:
                continue
            style, text = para
            if not text.strip():
                continue
            if style == "h1":
                if title is None:
                    title = text
                lines.append(f"# {text}")
            elif style == "h2":
                lines.append(f"## {text}")
            elif style == "h3":
                lines.append(f"### {text}")
            elif style == "bullet":
                lines.append(f"- {text}")
            else:
                lines.append(text)

        elif tag == "tbl":
            table_md = _table_to_markdown(block, doc)
            if table_md:
                lines.append("")
                lines.extend(table_md)
                lines.append("")

    markdown = "\n\n".join(line for line in lines if line is not None)
    return ConversionResult(
        markdown=markdown,
        title=title or file_path.stem,
        assets=assets,
    )


def _element_to_para(doc, elem) -> tuple[str, str] | None:
    try:
        from docx.text.paragraph import Paragraph
        para = Paragraph(elem, doc)
        text = para.text.strip()
        if not text:
            return None
        style_name = para.style.name if para.style else ""
        if "Heading 1" in style_name:
            return ("h1", text)
        elif "Heading 2" in style_name:
            return ("h2", text)
        elif "Heading 3" in style_name:
            return ("h3", text)
        elif "List" in style_name or any(r.text.startswith("•") for r in para.runs):
            return ("bullet", text)
        return ("body", text)
    except Exception:
        return None


def _table_to_markdown(tbl_elem, doc) -> list[str]:
    from docx.table import Table
    try:
        table = Table(tbl_elem, doc)
        rows = [[cell.text.strip() for cell in row.cells] for row in table.rows]
        if not rows:
            return []
        header = "| " + " | ".join(rows[0]) + " |"
        separator = "| " + " | ".join(["---"] * len(rows[0])) + " |"
        data_rows = ["| " + " | ".join(row) + " |" for row in rows[1:]]
        return [header, separator] + data_rows
    except Exception:
        return []
```

- [ ] **Step 4: Run tests to verify they pass**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_word_converter.py -v
```

Expected: 7 PASSED

- [ ] **Step 5: Commit**

```powershell
git add converters/word_converter.py tests/test_word_converter.py
git commit -m "feat: Word (.docx) to markdown converter"
```

---

### Task 5: PDF Converter

**Files:**
- Create: `E:\Doc2Wiki\converters\pdf_converter.py`
- Create: `E:\Doc2Wiki\tests\test_pdf_converter.py`

- [ ] **Step 1: Write the failing tests**

Create `E:\Doc2Wiki\tests\test_pdf_converter.py`:

```python
import fitz
from pathlib import Path
import pytest
from converters.pdf_converter import convert_pdf
from converters.base import ConversionResult


def make_text_pdf(text: str, title: str = "Test Doc") -> Path:
    """Create a simple searchable PDF with given text."""
    doc = fitz.open()
    page = doc.new_page()
    page.insert_text((72, 72), title, fontsize=18)
    page.insert_text((72, 120), text, fontsize=11)
    path = Path("E:/Doc2Wiki/tests/fixtures/temp_test.pdf")
    path.parent.mkdir(parents=True, exist_ok=True)
    doc.save(str(path))
    doc.close()
    return path


def test_convert_pdf_returns_result():
    path = make_text_pdf("Hello world")
    result = convert_pdf(path)
    assert isinstance(result, ConversionResult)


def test_convert_pdf_extracts_text():
    path = make_text_pdf("Hello world")
    result = convert_pdf(path)
    assert "Hello world" in result.markdown


def test_convert_pdf_extracts_title():
    path = make_text_pdf("Body text", title="My Document Title")
    result = convert_pdf(path)
    assert result.title == "My Document Title"


def test_convert_pdf_title_fallback_to_filename():
    path = make_text_pdf("no large text here")
    # Make a PDF with uniform font size so no heading is detected
    doc = fitz.open()
    page = doc.new_page()
    page.insert_text((72, 72), "uniform size text", fontsize=11)
    path2 = Path("E:/Doc2Wiki/tests/fixtures/temp_uniform.pdf")
    doc.save(str(path2))
    doc.close()
    result = convert_pdf(path2)
    assert result.title == path2.stem


def test_convert_pdf_no_warnings_for_text_pdf():
    path = make_text_pdf("Hello world")
    result = convert_pdf(path)
    assert result.warnings == []


def test_convert_pdf_scanned_adds_ocr_warning(monkeypatch):
    """Simulate a scanned PDF by patching text extraction to return empty."""
    import converters.pdf_converter as module

    def mock_extract_text(path):
        return ""  # simulates no text layer

    monkeypatch.setattr(module, "_extract_text_layer", mock_extract_text)
    monkeypatch.setattr(module, "_ocr_pdf", lambda path: "OCR extracted text")

    path = make_text_pdf("content")  # content doesn't matter, text is mocked
    result = convert_pdf(path)
    assert result.is_ocr is True
    assert "OCR extracted text" in result.markdown
```

- [ ] **Step 2: Run tests to verify they fail**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_pdf_converter.py -v
```

Expected: FAIL with `ModuleNotFoundError: No module named 'converters.pdf_converter'`

- [ ] **Step 3: Implement pdf_converter.py**

Create `E:\Doc2Wiki\converters\pdf_converter.py`:

```python
from pathlib import Path
import fitz
from converters.base import ConversionResult

_OCR_THRESHOLD = 50  # chars per page below this → treat as scanned


def convert_pdf(file_path: Path) -> ConversionResult:
    text = _extract_text_layer(file_path)
    page_count = _get_page_count(file_path)
    avg_chars = len(text) / max(page_count, 1)

    if avg_chars < _OCR_THRESHOLD:
        ocr_text = _ocr_pdf(file_path)
        return ConversionResult(
            markdown=ocr_text,
            title=file_path.stem,
            warnings=["OCR used — formatting may be approximate"],
        )

    markdown, title = _text_to_markdown(text, file_path.stem)
    return ConversionResult(markdown=markdown, title=title)


def _get_page_count(file_path: Path) -> int:
    doc = fitz.open(str(file_path))
    count = doc.page_count
    doc.close()
    return count


def _extract_text_layer(file_path: Path) -> str:
    doc = fitz.open(str(file_path))
    pages_text = []
    for page in doc:
        pages_text.append(page.get_text("text"))
    doc.close()
    return "\n".join(pages_text)


def _text_to_markdown(raw_text: str, filename_stem: str) -> tuple[str, str]:
    """Convert raw PDF text to markdown, detecting headings by line position/length."""
    doc = fitz.open()  # dummy; we re-open for font size detection
    # Simple heuristic: lines shorter than 80 chars that appear alone → headings
    # For proper heading detection we need font sizes — use a simplified approach
    lines = raw_text.split("\n")
    md_lines = []
    title: str | None = None

    for line in lines:
        stripped = line.strip()
        if not stripped:
            continue
        # Heuristic: short standalone lines (< 60 chars) are likely headings
        if len(stripped) < 60 and stripped == stripped.upper() and len(stripped) > 3:
            if title is None:
                title = stripped.title()
            md_lines.append(f"## {stripped.title()}")
        else:
            md_lines.append(stripped)

    return "\n\n".join(md_lines), title or filename_stem


def _extract_text_with_fonts(file_path: Path) -> tuple[str, str | None]:
    """More accurate extraction using font sizes for heading detection."""
    doc = fitz.open(str(file_path))
    md_lines = []
    title: str | None = None
    font_sizes = []

    for page in doc:
        blocks = page.get_text("dict")["blocks"]
        for block in blocks:
            if block.get("type") != 0:
                continue
            for line in block.get("lines", []):
                for span in line.get("spans", []):
                    size = span.get("size", 11)
                    text = span.get("text", "").strip()
                    if text:
                        font_sizes.append(size)

    if not font_sizes:
        doc.close()
        return _text_to_markdown(doc.get_page_text(0), file_path.stem)

    avg_size = sum(font_sizes) / len(font_sizes)
    doc.seek(0)

    for page in doc:
        blocks = page.get_text("dict")["blocks"]
        for block in blocks:
            if block.get("type") != 0:
                continue
            for line in block.get("lines", []):
                line_text = " ".join(
                    span.get("text", "") for span in line.get("spans", [])
                ).strip()
                if not line_text:
                    continue
                max_size = max(
                    (span.get("size", 11) for span in line.get("spans", [])),
                    default=11,
                )
                if max_size > avg_size * 1.3:
                    if title is None:
                        title = line_text
                    md_lines.append(f"# {line_text}")
                elif max_size > avg_size * 1.15:
                    md_lines.append(f"## {line_text}")
                else:
                    md_lines.append(line_text)

    doc.close()
    return "\n\n".join(md_lines), title or file_path.stem


def _ocr_pdf(file_path: Path) -> str:
    try:
        import pytesseract
        from PIL import Image
        import io

        doc = fitz.open(str(file_path))
        all_text = []
        for page in doc:
            mat = fitz.Matrix(2, 2)  # 2x zoom for better OCR quality
            pix = page.get_pixmap(matrix=mat)
            img = Image.open(io.BytesIO(pix.tobytes("png")))
            text = pytesseract.image_to_string(img)
            all_text.append(text)
        doc.close()
        return "\n\n".join(all_text)
    except ImportError:
        return "[OCR unavailable — pytesseract or Tesseract not installed]"
    except Exception as e:
        return f"[OCR failed: {e}]"
```

- [ ] **Step 4: Run tests to verify they pass**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_pdf_converter.py -v
```

Expected: 6 PASSED

- [ ] **Step 5: Commit**

```powershell
git add converters/pdf_converter.py tests/test_pdf_converter.py
git commit -m "feat: PDF to markdown converter with OCR fallback"
```

---

### Task 6: Excel Converter

**Files:**
- Create: `E:\Doc2Wiki\converters\excel_converter.py`
- Create: `E:\Doc2Wiki\tests\test_excel_converter.py`

- [ ] **Step 1: Write the failing tests**

Create `E:\Doc2Wiki\tests\test_excel_converter.py`:

```python
from pathlib import Path
import openpyxl
import pytest
from converters.excel_converter import convert_excel
from converters.base import ConversionResult


def make_xlsx(sheets: dict) -> Path:
    """sheets = {sheet_name: [[row1col1, row1col2], [row2col1, ...]]}"""
    wb = openpyxl.Workbook()
    wb.remove(wb.active)
    for name, rows in sheets.items():
        ws = wb.create_sheet(name)
        for row in rows:
            ws.append(row)
    path = Path("E:/Doc2Wiki/tests/fixtures/temp_test.xlsx")
    path.parent.mkdir(parents=True, exist_ok=True)
    wb.save(str(path))
    return path


def test_convert_excel_returns_result():
    path = make_xlsx({"Sheet1": [["A", "B"], ["1", "2"]]})
    result = convert_excel(path)
    assert isinstance(result, ConversionResult)


def test_convert_excel_sheet_becomes_section():
    path = make_xlsx({"TBE Summary": [["Bidder", "Result"], ["DKE", "Accepted"]]})
    result = convert_excel(path)
    assert "## TBE Summary" in result.markdown


def test_convert_excel_data_becomes_table():
    path = make_xlsx({"Data": [["Name", "Value"], ["Pressure", "92 barg"]]})
    result = convert_excel(path)
    assert "| Name | Value |" in result.markdown
    assert "| Pressure | 92 barg |" in result.markdown


def test_convert_excel_separator_row_added():
    path = make_xlsx({"Data": [["H1", "H2"], ["D1", "D2"]]})
    result = convert_excel(path)
    assert "| --- | --- |" in result.markdown


def test_convert_excel_empty_sheet_skipped():
    path = make_xlsx({"Full": [["A", "B"], ["1", "2"]], "Empty": []})
    result = convert_excel(path)
    assert "## Full" in result.markdown
    assert "## Empty" not in result.markdown


def test_convert_excel_title_is_filename():
    path = make_xlsx({"Sheet1": [["A", "B"]]})
    result = convert_excel(path)
    assert result.title == path.stem


def test_convert_excel_multiple_sheets():
    path = make_xlsx({
        "Summary": [["Item", "Status"], ["Export Launcher", "Open"]],
        "Details": [["Doc", "Rev"], ["KDP-001", "D0"]]
    })
    result = convert_excel(path)
    assert "## Summary" in result.markdown
    assert "## Details" in result.markdown
```

- [ ] **Step 2: Run tests to verify they fail**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_excel_converter.py -v
```

Expected: FAIL with `ModuleNotFoundError: No module named 'converters.excel_converter'`

- [ ] **Step 3: Implement excel_converter.py**

Create `E:\Doc2Wiki\converters\excel_converter.py`:

```python
from pathlib import Path
import openpyxl
from converters.base import ConversionResult


def convert_excel(file_path: Path) -> ConversionResult:
    wb = openpyxl.load_workbook(str(file_path), data_only=True)
    sections: list[str] = []

    for sheet_name in wb.sheetnames:
        ws = wb[sheet_name]
        rows = [
            [str(cell.value) if cell.value is not None else "" for cell in row]
            for row in ws.iter_rows()
        ]
        # Skip empty sheets
        non_empty = [r for r in rows if any(c.strip() for c in r)]
        if not non_empty:
            continue

        sections.append(f"## {sheet_name}")
        sections.append(_rows_to_markdown_table(non_empty))

    markdown = "\n\n".join(sections)
    return ConversionResult(markdown=markdown, title=file_path.stem)


def _rows_to_markdown_table(rows: list[list[str]]) -> str:
    if not rows:
        return ""
    col_count = max(len(r) for r in rows)
    # Pad rows to equal length
    padded = [r + [""] * (col_count - len(r)) for r in rows]

    header = "| " + " | ".join(padded[0]) + " |"
    separator = "| " + " | ".join(["---"] * col_count) + " |"
    data_rows = ["| " + " | ".join(row) + " |" for row in padded[1:]]

    return "\n".join([header, separator] + data_rows)
```

- [ ] **Step 4: Run tests to verify they pass**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_excel_converter.py -v
```

Expected: 7 PASSED

- [ ] **Step 5: Commit**

```powershell
git add converters/excel_converter.py tests/test_excel_converter.py
git commit -m "feat: Excel (.xlsx) to markdown converter"
```

---

### Task 7: PowerPoint Converter

**Files:**
- Create: `E:\Doc2Wiki\converters\pptx_converter.py`
- Create: `E:\Doc2Wiki\tests\test_pptx_converter.py`

- [ ] **Step 1: Write the failing tests**

Create `E:\Doc2Wiki\tests\test_pptx_converter.py`:

```python
from pathlib import Path
from pptx import Presentation
from pptx.util import Inches
import pytest
from converters.pptx_converter import convert_pptx
from converters.base import ConversionResult


def make_pptx(slides: list[dict]) -> Path:
    """slides = [{"title": "...", "bullets": ["...", "..."]}]"""
    prs = Presentation()
    layout = prs.slide_layouts[1]  # title + content layout
    for slide_data in slides:
        slide = prs.slides.add_slide(layout)
        slide.shapes.title.text = slide_data.get("title", "")
        body = slide.placeholders[1]
        tf = body.text_frame
        tf.clear()
        for i, bullet in enumerate(slide_data.get("bullets", [])):
            if i == 0:
                tf.paragraphs[0].text = bullet
            else:
                p = tf.add_paragraph()
                p.text = bullet
    path = Path("E:/Doc2Wiki/tests/fixtures/temp_test.pptx")
    path.parent.mkdir(parents=True, exist_ok=True)
    prs.save(str(path))
    return path


def test_convert_pptx_returns_result():
    path = make_pptx([{"title": "Slide 1", "bullets": ["Content"]}])
    result = convert_pptx(path)
    assert isinstance(result, ConversionResult)


def test_convert_pptx_slide_title_becomes_heading():
    path = make_pptx([{"title": "KMDD HAZOP Summary", "bullets": []}])
    result = convert_pptx(path)
    assert "## Slide 1: KMDD HAZOP Summary" in result.markdown


def test_convert_pptx_bullets_become_list_items():
    path = make_pptx([{"title": "Items", "bullets": ["Point A", "Point B"]}])
    result = convert_pptx(path)
    assert "- Point A" in result.markdown
    assert "- Point B" in result.markdown


def test_convert_pptx_title_from_first_slide():
    path = make_pptx([{"title": "Project Overview", "bullets": []}])
    result = convert_pptx(path)
    assert result.title == "Project Overview"


def test_convert_pptx_multiple_slides():
    path = make_pptx([
        {"title": "Intro", "bullets": ["Background"]},
        {"title": "Findings", "bullets": ["Finding 1", "Finding 2"]}
    ])
    result = convert_pptx(path)
    assert "## Slide 1: Intro" in result.markdown
    assert "## Slide 2: Findings" in result.markdown
```

- [ ] **Step 2: Run tests to verify they fail**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_pptx_converter.py -v
```

Expected: FAIL with `ModuleNotFoundError: No module named 'converters.pptx_converter'`

- [ ] **Step 3: Implement pptx_converter.py**

Create `E:\Doc2Wiki\converters\pptx_converter.py`:

```python
from pathlib import Path
from pptx import Presentation
from pptx.util import PP_ALIGN
from converters.base import ConversionResult


def convert_pptx(file_path: Path) -> ConversionResult:
    prs = Presentation(str(file_path))
    sections: list[str] = []
    title: str | None = None

    for i, slide in enumerate(prs.slides, start=1):
        slide_title = _get_slide_title(slide)
        if slide_title and title is None:
            title = slide_title

        heading = f"## Slide {i}: {slide_title}" if slide_title else f"## Slide {i}"
        sections.append(heading)

        bullets = _get_slide_bullets(slide)
        if bullets:
            sections.extend(f"- {b}" for b in bullets)

    markdown = "\n\n".join(sections)
    return ConversionResult(markdown=markdown, title=title or file_path.stem)


def _get_slide_title(slide) -> str | None:
    if slide.shapes.title and slide.shapes.title.text.strip():
        return slide.shapes.title.text.strip()
    return None


def _get_slide_bullets(slide) -> list[str]:
    bullets = []
    for shape in slide.shapes:
        if not shape.has_text_frame:
            continue
        if shape == slide.shapes.title:
            continue
        for para in shape.text_frame.paragraphs:
            text = para.text.strip()
            if text:
                bullets.append(text)
    return bullets
```

- [ ] **Step 4: Run tests to verify they pass**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_pptx_converter.py -v
```

Expected: 5 PASSED

- [ ] **Step 5: Commit**

```powershell
git add converters/pptx_converter.py tests/test_pptx_converter.py
git commit -m "feat: PowerPoint (.pptx) to markdown converter"
```

---

### Task 8: Dispatcher

**Files:**
- Create: `E:\Doc2Wiki\converters\dispatcher.py`
- Create: `E:\Doc2Wiki\tests\test_dispatcher.py`

- [ ] **Step 1: Write the failing tests**

Create `E:\Doc2Wiki\tests\test_dispatcher.py`:

```python
from pathlib import Path
import pytest
from converters.dispatcher import convert_file, UnsupportedFormatError


def test_dispatch_docx(tmp_path):
    from docx import Document
    path = tmp_path / "test.docx"
    doc = Document()
    doc.add_paragraph("Hello")
    doc.save(str(path))
    result = convert_file(path)
    assert "Hello" in result.markdown


def test_dispatch_unsupported_raises():
    with pytest.raises(UnsupportedFormatError):
        convert_file(Path("drawing.dwg"))


def test_dispatch_case_insensitive(tmp_path):
    from docx import Document
    path = tmp_path / "test.DOCX"
    doc = Document()
    doc.add_paragraph("caps")
    doc.save(str(path))
    result = convert_file(path)
    assert "caps" in result.markdown
```

- [ ] **Step 2: Run tests to verify they fail**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_dispatcher.py -v
```

Expected: FAIL with `ModuleNotFoundError: No module named 'converters.dispatcher'`

- [ ] **Step 3: Implement dispatcher.py**

Create `E:\Doc2Wiki\converters\dispatcher.py`:

```python
from pathlib import Path
from converters.base import ConversionResult


class UnsupportedFormatError(Exception):
    pass


_SUPPORTED = {".docx", ".pdf", ".xlsx", ".pptx"}


def convert_file(file_path: Path) -> ConversionResult:
    suffix = file_path.suffix.lower()
    if suffix not in _SUPPORTED:
        raise UnsupportedFormatError(
            f"Unsupported format '{suffix}'. Supported: {', '.join(sorted(_SUPPORTED))}"
        )
    if suffix == ".docx":
        from converters.word_converter import convert_word
        return convert_word(file_path)
    elif suffix == ".pdf":
        from converters.pdf_converter import convert_pdf
        return convert_pdf(file_path)
    elif suffix == ".xlsx":
        from converters.excel_converter import convert_excel
        return convert_excel(file_path)
    elif suffix == ".pptx":
        from converters.pptx_converter import convert_pptx
        return convert_pptx(file_path)
```

- [ ] **Step 4: Run tests to verify they pass**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_dispatcher.py -v
```

Expected: 3 PASSED

- [ ] **Step 5: Commit**

```powershell
git add converters/dispatcher.py tests/test_dispatcher.py
git commit -m "feat: file format dispatcher"
```

---

### Task 9: Wiki Index Reader

**Files:**
- Create: `E:\Doc2Wiki\wiki\index_reader.py`
- Create: `E:\Doc2Wiki\tests\test_index_reader.py`

- [ ] **Step 1: Write the failing tests**

Create `E:\Doc2Wiki\tests\test_index_reader.py`:

```python
import textwrap
from pathlib import Path
import pytest
from wiki.index_reader import WikiIndex, load_wiki_index


@pytest.fixture
def wiki_root(tmp_path):
    index = tmp_path / "index.md"
    index.write_text(textwrap.dedent("""
        # Wiki Index
        _Last updated: 2026-06-03 | Sources: 10 | Wiki pages: 32_

        ## Sources
        - [KMDD FEED Punch List](wiki/sources/KMDD FEED Punch List Key Findings.md) — four critical FEED findings | 2026-06-03

        ## Concepts
        - [Methanol Injection](wiki/concepts/Methanol Injection Hydrate Inhibition.md) — methanol pump sizing | 3 sources
    """), encoding="utf-8")

    log = tmp_path / "log.md"
    log.write_text(textwrap.dedent("""
        # Wiki Log
        ## [2026-06-01] ingest | Doc A
        Summary: first doc.
        ## [2026-06-03] ingest | Doc B
        Summary: latest doc.
    """), encoding="utf-8")

    return tmp_path


def test_load_wiki_index_returns_object(wiki_root):
    idx = load_wiki_index(wiki_root)
    assert isinstance(idx, WikiIndex)


def test_wiki_index_page_titles(wiki_root):
    idx = load_wiki_index(wiki_root)
    assert "KMDD FEED Punch List Key Findings" in idx.page_titles
    assert "Methanol Injection Hydrate Inhibition" in idx.page_titles


def test_wiki_index_last_ingest_date(wiki_root):
    idx = load_wiki_index(wiki_root)
    assert idx.last_ingest_date == "2026-06-03"


def test_wiki_index_is_already_ingested_true(wiki_root):
    idx = load_wiki_index(wiki_root)
    assert idx.is_already_ingested("Doc B") is True


def test_wiki_index_is_already_ingested_false(wiki_root):
    idx = load_wiki_index(wiki_root)
    assert idx.is_already_ingested("Brand New Doc") is False


def test_wiki_index_find_matching_pages(wiki_root):
    idx = load_wiki_index(wiki_root)
    matches = idx.find_matching_pages("methanol pump sizing constraints")
    assert any("Methanol" in m for m in matches)
```

- [ ] **Step 2: Run tests to verify they fail**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_index_reader.py -v
```

Expected: FAIL with `ModuleNotFoundError: No module named 'wiki.index_reader'`

- [ ] **Step 3: Implement index_reader.py**

Create `E:\Doc2Wiki\wiki\index_reader.py`:

```python
import re
from dataclasses import dataclass, field
from pathlib import Path


@dataclass
class WikiIndex:
    page_titles: list[str] = field(default_factory=list)
    page_summaries: dict[str, str] = field(default_factory=dict)
    last_ingest_date: str | None = None
    ingested_titles: set[str] = field(default_factory=set)

    def is_already_ingested(self, title: str) -> bool:
        return title.lower() in {t.lower() for t in self.ingested_titles}

    def find_matching_pages(self, text: str, min_matches: int = 1) -> list[str]:
        text_lower = text.lower()
        matches = []
        for title in self.page_titles:
            # Check if any word from the title (3+ chars) appears in the text
            words = [w for w in re.split(r"\W+", title) if len(w) >= 3]
            hits = sum(1 for w in words if w.lower() in text_lower)
            if hits >= min_matches:
                matches.append(title)
        return sorted(matches, key=lambda t: sum(
            1 for w in re.split(r"\W+", t) if len(w) >= 3 and w.lower() in text_lower
        ), reverse=True)


def load_wiki_index(wiki_root: Path) -> WikiIndex:
    index = WikiIndex()

    index_path = wiki_root / "index.md"
    if index_path.exists():
        _parse_index_file(index_path, index)

    log_path = wiki_root / "log.md"
    if log_path.exists():
        _parse_log_file(log_path, index)

    return index


def _parse_index_file(path: Path, index: WikiIndex) -> None:
    text = path.read_text(encoding="utf-8")
    # Extract page titles from markdown links: [Title](path)
    for match in re.finditer(r"\[([^\]]+)\]\([^)]+\)", text):
        title = match.group(1).strip()
        if title:
            index.page_titles.append(title)
    # Extract summaries: - [Title](path) — summary text
    for match in re.finditer(r"\[([^\]]+)\]\([^)]+\)\s*—\s*([^\n|]+)", text):
        title = match.group(1).strip()
        summary = match.group(2).strip()
        index.page_summaries[title] = summary


def _parse_log_file(path: Path, index: WikiIndex) -> None:
    text = path.read_text(encoding="utf-8")
    # Find all log entry dates and titles: ## [YYYY-MM-DD] type | Title
    entries = re.findall(r"^## \[(\d{4}-\d{2}-\d{2})\] \w+ \| (.+)$", text, re.MULTILINE)
    if entries:
        index.last_ingest_date = max(e[0] for e in entries)
        index.ingested_titles = {e[1].strip() for e in entries}
```

- [ ] **Step 4: Run tests to verify they pass**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_index_reader.py -v
```

Expected: 6 PASSED

- [ ] **Step 5: Commit**

```powershell
git add wiki/index_reader.py tests/test_index_reader.py
git commit -m "feat: wiki index reader — loads page titles, summaries, log"
```

---

### Task 10: Doc Saver

**Files:**
- Create: `E:\Doc2Wiki\wiki\doc_saver.py`
- Create: `E:\Doc2Wiki\tests\test_doc_saver.py`

- [ ] **Step 1: Write the failing tests**

Create `E:\Doc2Wiki\tests\test_doc_saver.py`:

```python
import textwrap
from pathlib import Path
from datetime import date
import pytest
from converters.base import ConversionResult
from wiki.doc_saver import save_to_wiki, SaveResult


@pytest.fixture
def output_dir(tmp_path):
    d = tmp_path / "raw" / "documents" / "KMDD"
    d.mkdir(parents=True)
    return d


@pytest.fixture
def log_path(tmp_path):
    p = tmp_path / "log.md"
    p.write_text("# Wiki Log\n\n---\n", encoding="utf-8")
    return p


@pytest.fixture
def sample_result():
    return ConversionResult(
        markdown="---\ntitle: Test Doc\n---\n\n# Test Doc\n\nContent here.",
        title="Test Doc",
        doc_number="KDP-OOO-03-TQ-B-0001",
        project_id="KMDD",
    )


def test_save_creates_file(output_dir, log_path, sample_result):
    result = save_to_wiki(sample_result, output_dir, log_path, "test_doc.md")
    assert isinstance(result, SaveResult)
    assert (output_dir / "test_doc.md").exists()


def test_save_file_content_matches(output_dir, log_path, sample_result):
    save_to_wiki(sample_result, output_dir, log_path, "test_doc.md")
    content = (output_dir / "test_doc.md").read_text(encoding="utf-8")
    assert "Content here." in content


def test_save_appends_to_log(output_dir, log_path, sample_result):
    save_to_wiki(sample_result, output_dir, log_path, "test_doc.md")
    log_content = log_path.read_text(encoding="utf-8")
    assert "ingest" in log_content
    assert "Test Doc" in log_content


def test_save_log_entry_has_date(output_dir, log_path, sample_result):
    save_to_wiki(sample_result, output_dir, log_path, "test_doc.md")
    log_content = log_path.read_text(encoding="utf-8")
    today = date.today().strftime("%Y-%m-%d")
    assert today in log_content


def test_save_returns_output_path(output_dir, log_path, sample_result):
    result = save_to_wiki(sample_result, output_dir, log_path, "test_doc.md")
    assert result.output_path == output_dir / "test_doc.md"


def test_save_does_not_overwrite_existing(output_dir, log_path, sample_result):
    existing = output_dir / "test_doc.md"
    existing.write_text("ORIGINAL", encoding="utf-8")
    result = save_to_wiki(sample_result, output_dir, log_path, "test_doc.md")
    assert result.skipped is True
    assert existing.read_text(encoding="utf-8") == "ORIGINAL"
```

- [ ] **Step 2: Run tests to verify they fail**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_doc_saver.py -v
```

Expected: FAIL with `ModuleNotFoundError: No module named 'wiki.doc_saver'`

- [ ] **Step 3: Implement doc_saver.py**

Create `E:\Doc2Wiki\wiki\doc_saver.py`:

```python
from dataclasses import dataclass
from datetime import date
from pathlib import Path
from converters.base import ConversionResult


@dataclass
class SaveResult:
    output_path: Path
    skipped: bool = False


def save_to_wiki(
    result: ConversionResult,
    output_dir: Path,
    log_path: Path,
    filename: str,
) -> SaveResult:
    output_dir.mkdir(parents=True, exist_ok=True)
    output_path = output_dir / filename

    if output_path.exists():
        return SaveResult(output_path=output_path, skipped=True)

    output_path.write_text(result.markdown, encoding="utf-8")
    _append_log_entry(log_path, result)

    return SaveResult(output_path=output_path, skipped=False)


def _append_log_entry(log_path: Path, result: ConversionResult) -> None:
    today = date.today().strftime("%Y-%m-%d")
    doc_info = f"Doc: {result.doc_number} | Project: {result.project_id}" if result.doc_number else ""
    entry = (
        f"\n## [{today}] ingest | {result.title}\n"
        f"{doc_info}\n"
    )
    with open(log_path, "a", encoding="utf-8") as f:
        f.write(entry)
```

- [ ] **Step 4: Run tests to verify they pass**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/test_doc_saver.py -v
```

Expected: 6 PASSED

- [ ] **Step 5: Commit**

```powershell
git add wiki/doc_saver.py tests/test_doc_saver.py
git commit -m "feat: wiki doc saver — writes markdown, appends to log"
```

---

### Task 11: Full Test Suite + CLI Smoke Test

**Files:**
- Create: `E:\Doc2Wiki\cli.py`

- [ ] **Step 1: Run all tests together**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/ -v --tb=short
```

Expected: All tests PASS. Fix any failures before continuing.

- [ ] **Step 2: Create a minimal CLI for smoke testing**

Create `E:\Doc2Wiki\cli.py`:

```python
"""
cli.py — Command-line interface for Doc2Wiki (smoke test / headless use)

Usage:
  python cli.py <file_path> [--project KMDD] [--output E:\My Knowledge\raw\documents\KMDD]
"""
import argparse
import sys
from pathlib import Path

from converters.dispatcher import convert_file, UnsupportedFormatError
from wiki.project_config import load_projects, detect_project, parse_doc_number, get_doc_tier
from wiki.doc_saver import save_to_wiki

CONFIG_PATH = Path(__file__).parent / "config" / "projects.json"
WIKI_ROOT = Path(r"E:\My Knowledge")
LOG_PATH = WIKI_ROOT / "log.md"


def main():
    parser = argparse.ArgumentParser(description="Convert a document to wiki markdown.")
    parser.add_argument("file", help="Path to the document to convert")
    parser.add_argument("--project", help="Override project ID (e.g. KMDD)")
    parser.add_argument("--output", help="Override output folder")
    parser.add_argument("--dry-run", action="store_true", help="Print markdown without saving")
    args = parser.parse_args()

    file_path = Path(args.file)
    if not file_path.exists():
        print(f"ERROR: File not found: {file_path}")
        sys.exit(1)

    projects = load_projects(CONFIG_PATH)
    project_id = args.project or detect_project(file_path.name, projects)
    project = projects.get(project_id) if project_id else None

    print(f"Converting: {file_path.name}")
    print(f"Project:    {project_id or 'None detected'}")

    try:
        result = convert_file(file_path)
    except UnsupportedFormatError as e:
        print(f"ERROR: {e}")
        sys.exit(1)

    if result.project_id is None and project_id:
        result.project_id = project_id

    tier = get_doc_tier(result.doc_number.split("-")[3] if result.doc_number and "-" in (result.doc_number or "") else "", project or {}) if project else 2
    tier_label = {1: "🔴 Tier 1 — Add now", 2: "🟡 Tier 2 — Add if relevant", 3: "⚪ Tier 3 — Reference only"}.get(tier, "🟡 Tier 2")
    print(f"Tier:       {tier_label}")
    print(f"Title:      {result.title}")
    if result.warnings:
        for w in result.warnings:
            print(f"WARNING:    {w}")

    if args.dry_run:
        print("\n--- MARKDOWN PREVIEW ---")
        print(result.markdown[:2000])
        if len(result.markdown) > 2000:
            print(f"... [{len(result.markdown) - 2000} more chars]")
        return

    output_dir = Path(args.output) if args.output else Path(project["output_folder"]) if project else Path(r"E:\My Knowledge\raw\documents\misc")
    filename = file_path.stem + ".md"

    save_result = save_to_wiki(result, output_dir, LOG_PATH, filename)
    if save_result.skipped:
        print(f"SKIPPED:    {save_result.output_path} already exists")
    else:
        print(f"SAVED:      {save_result.output_path}")


if __name__ == "__main__":
    main()
```

- [ ] **Step 3: Smoke test with a real file**

```powershell
cd "E:\Doc2Wiki"
python cli.py "E:\MyVault\Emails\KMDD\2026-03-27 - RE KMDD - Pressure-Temperature rating for SS lines.md" --dry-run
```

Expected: Prints tier badge, title, and first 2000 chars of markdown without errors.

- [ ] **Step 4: Commit**

```powershell
git add cli.py
git commit -m "feat: CLI for headless conversion and smoke testing"
```

---

### Task 12: Final integration test

- [ ] **Step 1: Run complete test suite**

```powershell
cd "E:\Doc2Wiki"
python -m pytest tests/ -v
```

Expected: All 38+ tests PASS.

- [ ] **Step 2: Commit final state**

```powershell
git add .
git commit -m "chore: Plan 1 complete — foundation layer tested and working"
```
