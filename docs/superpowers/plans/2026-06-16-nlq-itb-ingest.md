# NLQ ITB Knowledge Base Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Ingest all 19 NLQ EPCIC 10 ITB documents into the LLM Wiki, creating 19 source pages and 25 concept pages queryable with exact section citations.

**Architecture:** Update CLAUDE.md to encode NLQ-specific ingest rules (citation format, contradiction flagging, cross-discipline copy), then ingest documents in order: ITT → Exhibit A (main + A1–A11) → Exhibit E (main + E1–E4) → Exhibit N. Each ingest builds concept pages cumulatively.

**Tech Stack:** LLM Wiki agent (CLAUDE.md), markdown files in `raw/documents/NLQ/`, wiki pages in `wiki/sources/` and `wiki/concepts/`.

---

## File Map

**Files to modify:**
- `CLAUDE.md` — add batch ingest, citation rule, contradiction flag format, cross-discipline copy rule
- `index.md` — new NLQ section (Sources × 19, Concepts × 25)
- `log.md` — ingest entries appended

**Files to create (19 source pages):**
- `wiki/sources/NLQ - ITT.md`
- `wiki/sources/NLQ - Exhibit A Scope of Work.md`
- `wiki/sources/NLQ - Exhibit A App A1 Detailed Engineering.md`
- `wiki/sources/NLQ - Exhibit A App A2 Document Requirements.md`
- `wiki/sources/NLQ - Exhibit A App A3 Project Review.md`
- `wiki/sources/NLQ - Exhibit A App A4 Regulatory Compliance.md`
- `wiki/sources/NLQ - Exhibit A App A5.md`
- `wiki/sources/NLQ - Exhibit A App A6.md`
- `wiki/sources/NLQ - Exhibit A App A7.md`
- `wiki/sources/NLQ - Exhibit A App A8.md`
- `wiki/sources/NLQ - Exhibit A App A9.md`
- `wiki/sources/NLQ - Exhibit A App A10.md`
- `wiki/sources/NLQ - Exhibit A App A11.md`
- `wiki/sources/NLQ - Exhibit E Design Dossier.md`
- `wiki/sources/NLQ - Exhibit E App E1 Technical Documents.md`
- `wiki/sources/NLQ - Exhibit E App E2 Brownfield Integration.md`
- `wiki/sources/NLQ - Exhibit E App E3.md`
- `wiki/sources/NLQ - Exhibit E App E4.md`
- `wiki/sources/NLQ - Exhibit N ICV.md`

**Files to create (25 concept pages):**

Engineering disciplines:
- `wiki/concepts/NLQ Safety Engineering Requirements.md`
- `wiki/concepts/NLQ Process Engineering Requirements.md`
- `wiki/concepts/NLQ Mechanical Engineering Requirements.md`
- `wiki/concepts/NLQ HVAC Requirements.md`
- `wiki/concepts/NLQ Piping and Layout Requirements.md`
- `wiki/concepts/NLQ Structural Engineering Requirements.md`
- `wiki/concepts/NLQ Electrical Engineering Requirements.md`
- `wiki/concepts/NLQ Instrumentation and ICSS Requirements.md`
- `wiki/concepts/NLQ Corrosion Management Requirements.md`
- `wiki/concepts/NLQ Architectural Requirements.md`
- `wiki/concepts/NLQ Hook-Up Requirements.md`
- `wiki/concepts/NLQ Software and Tools Requirements.md`

Cross-cutting:
- `wiki/concepts/NLQ Project Management Requirements.md`
- `wiki/concepts/NLQ HSE Requirements.md`
- `wiki/concepts/NLQ Procurement Requirements.md`
- `wiki/concepts/NLQ Construction and Installation Requirements.md`
- `wiki/concepts/NLQ Commissioning Requirements.md`
- `wiki/concepts/NLQ Quality Requirements.md`
- `wiki/concepts/NLQ Commercial and Tender Requirements.md`
- `wiki/concepts/NLQ Document Requirements.md`
- `wiki/concepts/NLQ Project Review Requirements.md`
- `wiki/concepts/NLQ Regulatory Compliance Requirements.md`
- `wiki/concepts/NLQ In-Country Value Requirements.md`
- `wiki/concepts/NLQ Design Basis.md`
- `wiki/concepts/NLQ Brownfield Integration.md`

---

## Task 1: Update CLAUDE.md with NLQ Ingest Rules

**Files:**
- Modify: `CLAUDE.md`

- [ ] **Step 1: Add batch directory ingest to the INGEST trigger**

In `CLAUDE.md`, find the INGEST trigger line and extend it:

```markdown
**Trigger:** User says `ingest [filename]`, `ingest raw/articles/filename.md`, `ingest E:\full\path\to\file.md`, or `ingest raw/documents/NLQ/` (directory — processes all .md files in ingest order)

**Batch directory ingest order for `raw/documents/NLQ/`:**
1. `01. EPCIC 10 - ITT Rev H.md`
2. `EPCIC 10 - EXHIBIT A Rev A.md`
3. `EPCIC 10 - EXHIBIT A App A1 Rev B.md`
4. `EPCIC 10 - EXHIBIT A App A2 Rev B.md`
5. `EPCIC 10 - EXHIBIT A App A3 Rev A.md`
6. `EPCIC 10 - EXHIBIT A App A4 Rev A.md`
7. `EPCIC 10 - EXHIBIT A App A5 Rev A.md`
8. `EPCIC 10 - EXHIBIT A App A6 Rev A.md`
9. `EPCIC 10 - EXHIBIT A App A7 Rev B.md`
10. `EPCIC 10 - EXHIBIT A App A8 Rev B.md`
11. `EPCIC 10 - EXHIBIT A App A9 Rev A.md`
12. `EPCIC 10 - EXHIBIT A App A10 Rev A.md`
13. `EPCIC 10 - EXHIBIT A App A11 Rev B.md`
14. `EPCIC 10 - EXHIBIT E Rev D.md`
15. `EPCIC 10-EXHIBIT E App E1 Rev C.md`
16. `EPCIC 10-EXHIBIT E App E2 Rev C.md`
17. `EPCIC 10 - EXHIBIT E App E3 Rev B.md`
18. `EPCIC 10-EXHIBIT E App E4 Rev B.md`
19. `EPCIC 10 - EXHIBIT N Rev A.md`

Process each file sequentially using standard INGEST steps. Append a single combined log entry at the end.
```

- [ ] **Step 2: Add citation format rule to the Rules section**

After Rule 6 in `CLAUDE.md`, add Rule 6a:

```markdown
6a. **NLQ citation format** — every Key Point on an NLQ concept page must end with a citation in this exact format:
    `— Exhibit A App A1, §2.2`
    Never write a Key Point without a section reference. The section number is mandatory for proposal traceability.
```

- [ ] **Step 3: Add cross-discipline copy rule**

After Rule 6a, add Rule 6b:

```markdown
6b. **NLQ cross-discipline copy** — if a requirement from an NLQ document applies to multiple disciplines (e.g., a fireproofing requirement affects Safety, Structural, and Piping), copy the identical Key Point (with the same citation) to every relevant concept page. Do not use cross-references alone — each concept page must be self-contained.
```

- [ ] **Step 4: Add contradiction flag format to the INGEST log template**

In the `log.md` entry template in CLAUDE.md, update the Flags line:

```markdown
Flags: [none | for NLQ contradictions use: CONTRADICTION — [Doc A] §X.X says [claim A]; [Doc B] §Y.Y says [claim B]. Raise as clarification to client.]
```

- [ ] **Step 5: Commit**

```bash
git add CLAUDE.md
git commit -m "feat: add NLQ ingest rules to CLAUDE.md (citation format, batch ingest, contradiction flagging)"
```

---

## Task 2: Ingest ITT

**Files:**
- Read: `raw/documents/NLQ/01. EPCIC 10 - ITT Rev H.md`
- Create: `wiki/sources/NLQ - ITT.md`
- Create/update: `wiki/concepts/NLQ Commercial and Tender Requirements.md`, `wiki/concepts/NLQ Quality Requirements.md`, `wiki/concepts/NLQ HSE Requirements.md`, and any other concept pages triggered by ITT content
- Modify: `index.md`, `log.md`

- [ ] **Step 1: Run ingest**

```
ingest raw/documents/NLQ/01. EPCIC 10 - ITT Rev H.md
```

- [ ] **Step 2: Verify source page created**

Check `wiki/sources/NLQ - ITT.md` exists with:
- Correct YAML frontmatter (`type: source`, `raw_file` pointing to the ITT)
- Summary covering: EPCIC 10, North Oil Company, Al Shaheen Oil Field, Qatar
- Key Points listing major ITT sections (tender timeline, submission requirements, evaluation criteria)
- At least 2 `[[NLQ ...]]` wikilinks in Connections

- [ ] **Step 3: Verify concept pages have section citations**

Open `wiki/concepts/NLQ Commercial and Tender Requirements.md`. Every Key Point must end with `— ITT, §X.X`. Example of correct format:
```
- Tender submission deadline per CFT Timeline — ITT, §4
- Technical submission must include HSE Qualifications/Exceptions Template (Attachment 8) — ITT, §8.2
```
If any Key Point lacks `§X.X`, the ingest did not follow the citation rule — re-run with explicit instruction to add section numbers.

- [ ] **Step 4: Commit**

```bash
git add wiki/sources/ wiki/concepts/ index.md log.md
git commit -m "ingest: NLQ ITT — source page + initial concept pages"
```

---

## Task 3: Ingest Exhibit A Scope of Work + App A1 Detailed Engineering

**Files:**
- Read: `raw/documents/NLQ/EPCIC 10 - EXHIBIT A Rev A.md`, `EPCIC 10 - EXHIBIT A App A1 Rev B.md`
- Create: `wiki/sources/NLQ - Exhibit A Scope of Work.md`, `wiki/sources/NLQ - Exhibit A App A1 Detailed Engineering.md`
- Create: all 12 engineering discipline concept pages (Safety, Process, Mechanical, HVAC, Piping, Structural, Electrical, Instrumentation, Corrosion, Architectural, Hook-Up, Software)
- Create/update: `wiki/concepts/NLQ Project Management Requirements.md`, `wiki/concepts/NLQ Procurement Requirements.md`, `wiki/concepts/NLQ Construction and Installation Requirements.md`, `wiki/concepts/NLQ Commissioning Requirements.md`
- Modify: `index.md`, `log.md`

- [ ] **Step 1: Ingest Exhibit A main**

```
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A Rev A.md
```

- [ ] **Step 2: Ingest App A1 (Detailed Engineering)**

```
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A1 Rev B.md
```

This is the richest document. It must create or update all 12 engineering discipline concept pages. Each page must have Key Points with citations in the form `— Exhibit A App A1, §2.X`.

- [ ] **Step 3: Verify all 12 engineering concept pages exist**

Run:
```
Glob wiki/concepts/NLQ*.md
```
Expected to see all 12 discipline pages created. If any are missing, the ingest did not extract that discipline's section — re-run the ingest for App A1 with explicit instruction to cover all sections 2.2 through 2.12.

- [ ] **Step 4: Verify cross-discipline copy rule applied**

Check `wiki/concepts/NLQ Safety Engineering Requirements.md` Key Points. If any requirement also appears in the source under Structural or Piping context (e.g., fireproofing), that same Key Point must appear on `wiki/concepts/NLQ Structural Engineering Requirements.md` and `wiki/concepts/NLQ Piping and Layout Requirements.md` too.

- [ ] **Step 5: Verify Software and Tools page**

Check `wiki/concepts/NLQ Software and Tools Requirements.md` has Key Points extracted from App A1 §3 (Approved Company Software), with citations `— Exhibit A App A1, §3`.

- [ ] **Step 6: Commit**

```bash
git add wiki/sources/ wiki/concepts/ index.md log.md
git commit -m "ingest: NLQ Exhibit A + App A1 — 12 engineering discipline concept pages"
```

---

## Task 4: Ingest Exhibit A Appendices A2 through A11

**Files:**
- Read: App A2 through A11 (one at a time)
- Create: source pages for each
- Create/update: `wiki/concepts/NLQ Document Requirements.md`, `wiki/concepts/NLQ Project Review Requirements.md`, `wiki/concepts/NLQ Regulatory Compliance Requirements.md`, plus updates to existing engineering discipline pages from any additional requirements found
- Modify: `index.md`, `log.md`

- [ ] **Step 1: Ingest App A2 (Document Requirements)**

```
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A2 Rev B.md
```

Verify `wiki/concepts/NLQ Document Requirements.md` created with Key Points listing minimum required deliverables per discipline, each cited as `— Exhibit A App A2, §X`.

- [ ] **Step 2: Ingest App A3 (Project Review)**

```
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A3 Rev A.md
```

Verify `wiki/concepts/NLQ Project Review Requirements.md` created.

- [ ] **Step 3: Ingest App A4 (Regulatory Compliance)**

```
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A4 Rev A.md
```

Verify `wiki/concepts/NLQ Regulatory Compliance Requirements.md` created with Qatar regulatory requirements cited as `— Exhibit A App A4, §X`.

- [ ] **Step 4: Ingest App A5 through A11**

Run in sequence:
```
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A5 Rev A.md
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A6 Rev A.md
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A7 Rev B.md
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A8 Rev B.md
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A9 Rev A.md
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A10 Rev A.md
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT A App A11 Rev B.md
```

For each: verify source page created, relevant concept pages updated, log entry appended.

- [ ] **Step 5: Commit**

```bash
git add wiki/sources/ wiki/concepts/ index.md log.md
git commit -m "ingest: NLQ Exhibit A App A2-A11 — document, review, regulatory concept pages"
```

---

## Task 5: Ingest Exhibit E (Design Dossier + Appendices)

**Files:**
- Read: Exhibit E Rev D, App E1–E4
- Create: source pages for each
- Create/update: `wiki/concepts/NLQ Design Basis.md`, `wiki/concepts/NLQ Brownfield Integration.md`, updates to engineering discipline pages if design dossier adds requirements
- Modify: `index.md`, `log.md`

- [ ] **Step 1: Ingest Exhibit E main (Design Dossier)**

```
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT E Rev D.md
```

Verify `wiki/concepts/NLQ Design Basis.md` created. Check for contradictions with Exhibit A requirements — any contradiction must appear in the log Flags as: `CONTRADICTION — Exhibit A §X says [A]; Exhibit E §Y says [B].`

- [ ] **Step 2: Ingest App E1 (Technical Documents list)**

```
ingest raw/documents/NLQ/EPCIC 10-EXHIBIT E App E1 Rev C.md
```

Verify source page created. Key Points should list the technical documents provided by the client as design basis.

- [ ] **Step 3: Ingest App E2 (Brownfield Integration)**

```
ingest raw/documents/NLQ/EPCIC 10-EXHIBIT E App E2 Rev C.md
```

Verify `wiki/concepts/NLQ Brownfield Integration.md` created with requirements for integrating NLQ with existing Al-Shaheen facilities, cited as `— Exhibit E App E2, §X`.

- [ ] **Step 4: Ingest App E3 and E4**

```
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT E App E3 Rev B.md
ingest raw/documents/NLQ/EPCIC 10-EXHIBIT E App E4 Rev B.md
```

- [ ] **Step 5: Commit**

```bash
git add wiki/sources/ wiki/concepts/ index.md log.md
git commit -m "ingest: NLQ Exhibit E + App E1-E4 — design basis and brownfield integration"
```

---

## Task 6: Ingest Exhibit N (ICV)

**Files:**
- Read: `EPCIC 10 - EXHIBIT N Rev A.md`
- Create: `wiki/sources/NLQ - Exhibit N ICV.md`
- Create: `wiki/concepts/NLQ In-Country Value Requirements.md`
- Modify: `index.md`, `log.md`

- [ ] **Step 1: Ingest Exhibit N**

```
ingest raw/documents/NLQ/EPCIC 10 - EXHIBIT N Rev A.md
```

- [ ] **Step 2: Verify ICV concept page**

Check `wiki/concepts/NLQ In-Country Value Requirements.md` exists with Key Points covering Qatar ICV requirements, cited as `— Exhibit N, §X`.

- [ ] **Step 3: Commit**

```bash
git add wiki/sources/ wiki/concepts/ index.md log.md
git commit -m "ingest: NLQ Exhibit N — ICV requirements"
```

---

## Task 7: Final Verification

- [ ] **Step 1: Count source and concept pages**

Run Glob on `wiki/sources/NLQ*.md` — expect 19 files.
Run Glob on `wiki/concepts/NLQ*.md` — expect 25 files.

If counts are off, check `index.md` NLQ section to identify which pages are missing, then re-ingest the relevant document.

- [ ] **Step 2: Run three test queries to verify citation format**

Query 1:
```
What is the design life requirement for the NLQ project?
```
Expected: answer includes a number (years) + citation with `§` reference.

Query 2:
```
What are the AVEVA software requirements?
```
Expected: answer cites `NLQ Software and Tools Requirements` with `§3` from Exhibit A App A1.

Query 3:
```
What Hook-Up requirements does the ITB specify?
```
Expected: answer cites `NLQ Hook-Up Requirements` with `§2.12` from Exhibit A App A1.

If any answer lacks a `§` section citation, identify which concept page is missing citations and update it manually following the format: `**[Requirement text]** — [Document], §X.X`

- [ ] **Step 3: Check log.md for any contradiction flags**

```powershell
Select-String "CONTRADICTION" "E:\My Knowledge\log.md"
```

Review any flagged contradictions. These are clarification questions to raise with North Oil Company before tender submission.

- [ ] **Step 4: Run lint**

```
lint
```

Expected: 0 orphans among NLQ pages (all concept pages link to at least 2 other pages), 0 missing link targets.

- [ ] **Step 5: Final commit**

```bash
git add .
git commit -m "feat: NLQ ITB knowledge base complete — 19 source pages, 25 concept pages"
```
